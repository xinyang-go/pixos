from cmsis_svd import SVDParser
from cmsis_svd.model import SVDPeripheral, SVDAccessType
from argparse import ArgumentParser
import re


def args():
    parser = ArgumentParser()
    parser.add_argument("file", help="path to svd file")
    return parser.parse_args()


def format_desc(desc: str):
    return re.sub(r"\s+", " ", desc).strip()


def parse_peripheral(p: SVDPeripheral):
    name = p.name.strip()
    base_addr = p.base_address
    print(f"pub const {name} = struct {{")
    # interrupts
    print(f"pub const IRQ = struct {{")
    for it in p.interrupts if p.interrupts is not None else []:
        desc = format_desc(it.description if it.description is not None else "")
        name = it.name.strip()
        print(f"/// {desc}")
        print(f"pub const {name} = {it.value};")
    print(f"}};")
    # registers
    for reg in p.registers:
        name = reg.name.strip()
        desc = format_desc(reg.description if reg.description is not None else "")
        print(f"/// {desc}")
        if reg.access == SVDAccessType.READ_WRITE:
            reg_type = "reg.RW"
        elif reg.access == SVDAccessType.READ_ONLY:
            reg_type = "reg.RO"
        elif reg.access == SVDAccessType.WRITE_ONLY:
            reg_type = "reg.WO"
        elif reg.access is None:
            reg_type = "reg.RW"
        else:
            assert False, f"""
            unknown access: {reg.access} 
            peripheral = {p.name}
            reg = {name}
            """
        print(f"pub const {name} = {reg_type}(packed struct(u{reg.size}) {{")
        bit = 0
        reserve = 0
        for field in sorted(reg.fields, key=lambda f: f.bit_offset):
            offset, width = field.bit_offset, field.bit_width
            if bit != offset:
                print(f"/// Reserved [{bit}:{offset-1}]")
                print(f"_{reserve}: u{offset - bit} = undefined,")
                reserve += 1
            reset_value = (reg.reset_value >> offset) & ((1 << width) - 1)
            name = field.name.strip()
            desc = format_desc(field.description if field.description is not None else "")
            print(f"/// {desc} [{offset}:{offset + width - 1}]")
            print(f"{field.name}: u{width} = 0x{reset_value:X},")
            bit = offset + width
        if bit != p.size:
            print(f"/// Reserved [{bit}:{p.size-1}]")
            print(f"_{reserve}: u{p.size - bit} = undefined,")
        print(f"}}).init(0x{base_addr + reg.address_offset:X});")
    print(f"}};")
    print()


def main():
    opt = args()
    device = SVDParser.for_xml_file(opt.file).get_device()
    print('//! Auto generate from tools/svd.py')
    print()
    print('const reg = @import("pixos").reg;')
    print()
    for peripheral in device.peripherals:
        parse_peripheral(peripheral)


if __name__ == "__main__":
    main()
