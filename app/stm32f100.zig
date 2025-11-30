//! Auto generate from tools/svd.py

const reg = @import("pixos").reg;

pub const FSMC = struct {
    pub const IRQ = struct {
        /// FSMC global interrupt
        pub const FSMC = 48;
    };
    /// SRAM/NOR-Flash chip-select control register 1
    pub const BCR1 = reg.RW(packed struct(u32) {
        /// MBKEN [0:0]
        MBKEN: u1 = 0x0,
        /// MUXEN [1:1]
        MUXEN: u1 = 0x0,
        /// MTYP [2:3]
        MTYP: u2 = 0x0,
        /// MWID [4:5]
        MWID: u2 = 0x1,
        /// FACCEN [6:6]
        FACCEN: u1 = 0x1,
        /// Reserved [7:7]
        _0: u1 = undefined,
        /// BURSTEN [8:8]
        BURSTEN: u1 = 0x0,
        /// WAITPOL [9:9]
        WAITPOL: u1 = 0x0,
        /// Reserved [10:10]
        _1: u1 = undefined,
        /// WAITCFG [11:11]
        WAITCFG: u1 = 0x0,
        /// WREN [12:12]
        WREN: u1 = 0x1,
        /// WAITEN [13:13]
        WAITEN: u1 = 0x1,
        /// EXTMOD [14:14]
        EXTMOD: u1 = 0x0,
        /// ASYNCWAIT [15:15]
        ASYNCWAIT: u1 = 0x0,
        /// Reserved [16:18]
        _2: u3 = undefined,
        /// CBURSTRW [19:19]
        CBURSTRW: u1 = 0x0,
        /// Reserved [20:31]
        _3: u12 = undefined,
    }).init(0xA0000000);
    /// SRAM/NOR-Flash chip-select timing register 1
    pub const BTR1 = reg.RW(packed struct(u32) {
        /// ADDSET [0:3]
        ADDSET: u4 = 0xF,
        /// ADDHLD [4:7]
        ADDHLD: u4 = 0xF,
        /// DATAST [8:15]
        DATAST: u8 = 0xFF,
        /// BUSTURN [16:19]
        BUSTURN: u4 = 0xF,
        /// CLKDIV [20:23]
        CLKDIV: u4 = 0xF,
        /// DATLAT [24:27]
        DATLAT: u4 = 0xF,
        /// ACCMOD [28:29]
        ACCMOD: u2 = 0x3,
        /// Reserved [30:31]
        _0: u2 = undefined,
    }).init(0xA0000004);
    /// SRAM/NOR-Flash chip-select control register 2
    pub const BCR2 = reg.RW(packed struct(u32) {
        /// MBKEN [0:0]
        MBKEN: u1 = 0x0,
        /// MUXEN [1:1]
        MUXEN: u1 = 0x0,
        /// MTYP [2:3]
        MTYP: u2 = 0x0,
        /// MWID [4:5]
        MWID: u2 = 0x1,
        /// FACCEN [6:6]
        FACCEN: u1 = 0x1,
        /// Reserved [7:7]
        _0: u1 = undefined,
        /// BURSTEN [8:8]
        BURSTEN: u1 = 0x0,
        /// WAITPOL [9:9]
        WAITPOL: u1 = 0x0,
        /// WRAPMOD [10:10]
        WRAPMOD: u1 = 0x0,
        /// WAITCFG [11:11]
        WAITCFG: u1 = 0x0,
        /// WREN [12:12]
        WREN: u1 = 0x1,
        /// WAITEN [13:13]
        WAITEN: u1 = 0x1,
        /// EXTMOD [14:14]
        EXTMOD: u1 = 0x0,
        /// ASYNCWAIT [15:15]
        ASYNCWAIT: u1 = 0x0,
        /// Reserved [16:18]
        _1: u3 = undefined,
        /// CBURSTRW [19:19]
        CBURSTRW: u1 = 0x0,
        /// Reserved [20:31]
        _2: u12 = undefined,
    }).init(0xA0000008);
    /// SRAM/NOR-Flash chip-select timing register 2
    pub const BTR2 = reg.RW(packed struct(u32) {
        /// ADDSET [0:3]
        ADDSET: u4 = 0xF,
        /// ADDHLD [4:7]
        ADDHLD: u4 = 0xF,
        /// DATAST [8:15]
        DATAST: u8 = 0xFF,
        /// BUSTURN [16:19]
        BUSTURN: u4 = 0xF,
        /// CLKDIV [20:23]
        CLKDIV: u4 = 0xF,
        /// DATLAT [24:27]
        DATLAT: u4 = 0xF,
        /// ACCMOD [28:29]
        ACCMOD: u2 = 0x3,
        /// Reserved [30:31]
        _0: u2 = undefined,
    }).init(0xA000000C);
    /// SRAM/NOR-Flash chip-select control register 3
    pub const BCR3 = reg.RW(packed struct(u32) {
        /// MBKEN [0:0]
        MBKEN: u1 = 0x0,
        /// MUXEN [1:1]
        MUXEN: u1 = 0x0,
        /// MTYP [2:3]
        MTYP: u2 = 0x0,
        /// MWID [4:5]
        MWID: u2 = 0x1,
        /// FACCEN [6:6]
        FACCEN: u1 = 0x1,
        /// Reserved [7:7]
        _0: u1 = undefined,
        /// BURSTEN [8:8]
        BURSTEN: u1 = 0x0,
        /// WAITPOL [9:9]
        WAITPOL: u1 = 0x0,
        /// WRAPMOD [10:10]
        WRAPMOD: u1 = 0x0,
        /// WAITCFG [11:11]
        WAITCFG: u1 = 0x0,
        /// WREN [12:12]
        WREN: u1 = 0x1,
        /// WAITEN [13:13]
        WAITEN: u1 = 0x1,
        /// EXTMOD [14:14]
        EXTMOD: u1 = 0x0,
        /// ASYNCWAIT [15:15]
        ASYNCWAIT: u1 = 0x0,
        /// Reserved [16:18]
        _1: u3 = undefined,
        /// CBURSTRW [19:19]
        CBURSTRW: u1 = 0x0,
        /// Reserved [20:31]
        _2: u12 = undefined,
    }).init(0xA0000010);
    /// SRAM/NOR-Flash chip-select timing register 3
    pub const BTR3 = reg.RW(packed struct(u32) {
        /// ADDSET [0:3]
        ADDSET: u4 = 0xF,
        /// ADDHLD [4:7]
        ADDHLD: u4 = 0xF,
        /// DATAST [8:15]
        DATAST: u8 = 0xFF,
        /// BUSTURN [16:19]
        BUSTURN: u4 = 0xF,
        /// CLKDIV [20:23]
        CLKDIV: u4 = 0xF,
        /// DATLAT [24:27]
        DATLAT: u4 = 0xF,
        /// ACCMOD [28:29]
        ACCMOD: u2 = 0x3,
        /// Reserved [30:31]
        _0: u2 = undefined,
    }).init(0xA0000014);
    /// SRAM/NOR-Flash chip-select control register 4
    pub const BCR4 = reg.RW(packed struct(u32) {
        /// MBKEN [0:0]
        MBKEN: u1 = 0x0,
        /// MUXEN [1:1]
        MUXEN: u1 = 0x0,
        /// MTYP [2:3]
        MTYP: u2 = 0x0,
        /// MWID [4:5]
        MWID: u2 = 0x1,
        /// FACCEN [6:6]
        FACCEN: u1 = 0x1,
        /// Reserved [7:7]
        _0: u1 = undefined,
        /// BURSTEN [8:8]
        BURSTEN: u1 = 0x0,
        /// WAITPOL [9:9]
        WAITPOL: u1 = 0x0,
        /// WRAPMOD [10:10]
        WRAPMOD: u1 = 0x0,
        /// WAITCFG [11:11]
        WAITCFG: u1 = 0x0,
        /// WREN [12:12]
        WREN: u1 = 0x1,
        /// WAITEN [13:13]
        WAITEN: u1 = 0x1,
        /// EXTMOD [14:14]
        EXTMOD: u1 = 0x0,
        /// ASYNCWAIT [15:15]
        ASYNCWAIT: u1 = 0x0,
        /// Reserved [16:18]
        _1: u3 = undefined,
        /// CBURSTRW [19:19]
        CBURSTRW: u1 = 0x0,
        /// Reserved [20:31]
        _2: u12 = undefined,
    }).init(0xA0000018);
    /// SRAM/NOR-Flash chip-select timing register 4
    pub const BTR4 = reg.RW(packed struct(u32) {
        /// ADDSET [0:3]
        ADDSET: u4 = 0xF,
        /// ADDHLD [4:7]
        ADDHLD: u4 = 0xF,
        /// DATAST [8:15]
        DATAST: u8 = 0xFF,
        /// BUSTURN [16:19]
        BUSTURN: u4 = 0xF,
        /// CLKDIV [20:23]
        CLKDIV: u4 = 0xF,
        /// DATLAT [24:27]
        DATLAT: u4 = 0xF,
        /// ACCMOD [28:29]
        ACCMOD: u2 = 0x3,
        /// Reserved [30:31]
        _0: u2 = undefined,
    }).init(0xA000001C);
    /// SRAM/NOR-Flash write timing registers 1
    pub const BWTR1 = reg.RW(packed struct(u32) {
        /// ADDSET [0:3]
        ADDSET: u4 = 0xF,
        /// ADDHLD [4:7]
        ADDHLD: u4 = 0xF,
        /// DATAST [8:15]
        DATAST: u8 = 0xFF,
        /// Reserved [16:19]
        _0: u4 = undefined,
        /// CLKDIV [20:23]
        CLKDIV: u4 = 0xF,
        /// DATLAT [24:27]
        DATLAT: u4 = 0xF,
        /// ACCMOD [28:29]
        ACCMOD: u2 = 0x0,
        /// Reserved [30:31]
        _1: u2 = undefined,
    }).init(0xA0000104);
    /// SRAM/NOR-Flash write timing registers 2
    pub const BWTR2 = reg.RW(packed struct(u32) {
        /// ADDSET [0:3]
        ADDSET: u4 = 0xF,
        /// ADDHLD [4:7]
        ADDHLD: u4 = 0xF,
        /// DATAST [8:15]
        DATAST: u8 = 0xFF,
        /// Reserved [16:19]
        _0: u4 = undefined,
        /// CLKDIV [20:23]
        CLKDIV: u4 = 0xF,
        /// DATLAT [24:27]
        DATLAT: u4 = 0xF,
        /// ACCMOD [28:29]
        ACCMOD: u2 = 0x0,
        /// Reserved [30:31]
        _1: u2 = undefined,
    }).init(0xA000010C);
    /// SRAM/NOR-Flash write timing registers 3
    pub const BWTR3 = reg.RW(packed struct(u32) {
        /// ADDSET [0:3]
        ADDSET: u4 = 0xF,
        /// ADDHLD [4:7]
        ADDHLD: u4 = 0xF,
        /// DATAST [8:15]
        DATAST: u8 = 0xFF,
        /// Reserved [16:19]
        _0: u4 = undefined,
        /// CLKDIV [20:23]
        CLKDIV: u4 = 0xF,
        /// DATLAT [24:27]
        DATLAT: u4 = 0xF,
        /// ACCMOD [28:29]
        ACCMOD: u2 = 0x0,
        /// Reserved [30:31]
        _1: u2 = undefined,
    }).init(0xA0000114);
    /// SRAM/NOR-Flash write timing registers 4
    pub const BWTR4 = reg.RW(packed struct(u32) {
        /// ADDSET [0:3]
        ADDSET: u4 = 0xF,
        /// ADDHLD [4:7]
        ADDHLD: u4 = 0xF,
        /// DATAST [8:15]
        DATAST: u8 = 0xFF,
        /// Reserved [16:19]
        _0: u4 = undefined,
        /// CLKDIV [20:23]
        CLKDIV: u4 = 0xF,
        /// DATLAT [24:27]
        DATLAT: u4 = 0xF,
        /// ACCMOD [28:29]
        ACCMOD: u2 = 0x0,
        /// Reserved [30:31]
        _1: u2 = undefined,
    }).init(0xA000011C);
};

pub const PWR = struct {
    pub const IRQ = struct {
        /// PVD through EXTI line detection interrupt
        pub const PVD = 1;
    };
    /// Power control register (PWR_CR)
    pub const CR = reg.RW(packed struct(u32) {
        /// Low Power Deep Sleep [0:0]
        LPDS: u1 = 0x0,
        /// Power Down Deep Sleep [1:1]
        PDDS: u1 = 0x0,
        /// Clear Wake-up Flag [2:2]
        CWUF: u1 = 0x0,
        /// Clear STANDBY Flag [3:3]
        CSBF: u1 = 0x0,
        /// Power Voltage Detector Enable [4:4]
        PVDE: u1 = 0x0,
        /// PVD Level Selection [5:7]
        PLS: u3 = 0x0,
        /// Disable Backup Domain write protection [8:8]
        DBP: u1 = 0x0,
        /// Reserved [9:31]
        _0: u23 = undefined,
    }).init(0x40007000);
    /// Power control register (PWR_CR)
    pub const CSR = reg.RW(packed struct(u32) {
        /// Wake-Up Flag [0:0]
        WUF: u1 = 0x0,
        /// STANDBY Flag [1:1]
        SBF: u1 = 0x0,
        /// PVD Output [2:2]
        PVDO: u1 = 0x0,
        /// Reserved [3:7]
        _0: u5 = undefined,
        /// Enable WKUP pin [8:8]
        EWUP: u1 = 0x0,
        /// Reserved [9:31]
        _1: u23 = undefined,
    }).init(0x40007004);
};

pub const RCC = struct {
    pub const IRQ = struct {
        /// RCC global interrupt
        pub const RCC = 5;
    };
    /// Clock control register
    pub const CR = reg.RW(packed struct(u32) {
        /// Internal High Speed clock enable [0:0]
        HSION: u1 = 0x1,
        /// Internal High Speed clock ready flag [1:1]
        HSIRDY: u1 = 0x1,
        /// Reserved [2:2]
        _0: u1 = undefined,
        /// Internal High Speed clock trimming [3:7]
        HSITRIM: u5 = 0x10,
        /// Internal High Speed clock Calibration [8:15]
        HSICAL: u8 = 0x0,
        /// External High Speed clock enable [16:16]
        HSEON: u1 = 0x0,
        /// External High Speed clock ready flag [17:17]
        HSERDY: u1 = 0x0,
        /// External High Speed clock Bypass [18:18]
        HSEBYP: u1 = 0x0,
        /// Clock Security System enable [19:19]
        CSSON: u1 = 0x0,
        /// Reserved [20:23]
        _1: u4 = undefined,
        /// PLL enable [24:24]
        PLLON: u1 = 0x0,
        /// PLL clock ready flag [25:25]
        PLLRDY: u1 = 0x0,
        /// Reserved [26:31]
        _2: u6 = undefined,
    }).init(0x40021000);
    /// Clock configuration register (RCC_CFGR)
    pub const CFGR = reg.RW(packed struct(u32) {
        /// System clock Switch [0:1]
        SW: u2 = 0x0,
        /// System Clock Switch Status [2:3]
        SWS: u2 = 0x0,
        /// AHB prescaler [4:7]
        HPRE: u4 = 0x0,
        /// APB Low speed prescaler (APB1) [8:10]
        PPRE1: u3 = 0x0,
        /// APB High speed prescaler (APB2) [11:13]
        PPRE2: u3 = 0x0,
        /// ADC prescaler [14:15]
        ADCPRE: u2 = 0x0,
        /// PLL entry clock source [16:16]
        PLLSRC: u1 = 0x0,
        /// HSE divider for PLL entry [17:17]
        PLLXTPRE: u1 = 0x0,
        /// PLL Multiplication Factor [18:21]
        PLLMUL: u4 = 0x0,
        /// Reserved [22:23]
        _0: u2 = undefined,
        /// Microcontroller clock output [24:26]
        MCO: u3 = 0x0,
        /// Reserved [27:31]
        _1: u5 = undefined,
    }).init(0x40021004);
    /// Clock interrupt register (RCC_CIR)
    pub const CIR = reg.RW(packed struct(u32) {
        /// LSI Ready Interrupt flag [0:0]
        LSIRDYF: u1 = 0x0,
        /// LSE Ready Interrupt flag [1:1]
        LSERDYF: u1 = 0x0,
        /// HSI Ready Interrupt flag [2:2]
        HSIRDYF: u1 = 0x0,
        /// HSE Ready Interrupt flag [3:3]
        HSERDYF: u1 = 0x0,
        /// PLL Ready Interrupt flag [4:4]
        PLLRDYF: u1 = 0x0,
        /// Reserved [5:6]
        _0: u2 = undefined,
        /// Clock Security System Interrupt flag [7:7]
        CSSF: u1 = 0x0,
        /// LSI Ready Interrupt Enable [8:8]
        LSIRDYIE: u1 = 0x0,
        /// LSE Ready Interrupt Enable [9:9]
        LSERDYIE: u1 = 0x0,
        /// HSI Ready Interrupt Enable [10:10]
        HSIRDYIE: u1 = 0x0,
        /// HSE Ready Interrupt Enable [11:11]
        HSERDYIE: u1 = 0x0,
        /// PLL Ready Interrupt Enable [12:12]
        PLLRDYIE: u1 = 0x0,
        /// Reserved [13:15]
        _1: u3 = undefined,
        /// LSI Ready Interrupt Clear [16:16]
        LSIRDYC: u1 = 0x0,
        /// LSE Ready Interrupt Clear [17:17]
        LSERDYC: u1 = 0x0,
        /// HSI Ready Interrupt Clear [18:18]
        HSIRDYC: u1 = 0x0,
        /// HSE Ready Interrupt Clear [19:19]
        HSERDYC: u1 = 0x0,
        /// PLL Ready Interrupt Clear [20:20]
        PLLRDYC: u1 = 0x0,
        /// Reserved [21:22]
        _2: u2 = undefined,
        /// Clock security system interrupt clear [23:23]
        CSSC: u1 = 0x0,
        /// Reserved [24:31]
        _3: u8 = undefined,
    }).init(0x40021008);
    /// APB2 peripheral reset register (RCC_APB2RSTR)
    pub const APB2RSTR = reg.RW(packed struct(u32) {
        /// Alternate function I/O reset [0:0]
        AFIORST: u1 = 0x0,
        /// Reserved [1:1]
        _0: u1 = undefined,
        /// IO port A reset [2:2]
        IOPARST: u1 = 0x0,
        /// IO port B reset [3:3]
        IOPBRST: u1 = 0x0,
        /// IO port C reset [4:4]
        IOPCRST: u1 = 0x0,
        /// IO port D reset [5:5]
        IOPDRST: u1 = 0x0,
        /// IO port E reset [6:6]
        IOPERST: u1 = 0x0,
        /// IO port F reset [7:7]
        IOPFRST: u1 = 0x0,
        /// IO port G reset [8:8]
        IOPGRST: u1 = 0x0,
        /// ADC 1 interface reset [9:9]
        ADC1RST: u1 = 0x0,
        /// Reserved [10:10]
        _1: u1 = undefined,
        /// TIM1 timer reset [11:11]
        TIM1RST: u1 = 0x0,
        /// SPI 1 reset [12:12]
        SPI1RST: u1 = 0x0,
        /// Reserved [13:13]
        _2: u1 = undefined,
        /// USART1 reset [14:14]
        USART1RST: u1 = 0x0,
        /// Reserved [15:15]
        _3: u1 = undefined,
        /// TIM15 timer reset [16:16]
        TIM15RST: u1 = 0x0,
        /// TIM16 timer reset [17:17]
        TIM16RST: u1 = 0x0,
        /// TIM17 timer reset [18:18]
        TIM17RST: u1 = 0x0,
        /// Reserved [19:31]
        _4: u13 = undefined,
    }).init(0x4002100C);
    /// APB1 peripheral reset register (RCC_APB1RSTR)
    pub const APB1RSTR = reg.RW(packed struct(u32) {
        /// Timer 2 reset [0:0]
        TIM2RST: u1 = 0x0,
        /// Timer 3 reset [1:1]
        TIM3RST: u1 = 0x0,
        /// Timer 4 reset [2:2]
        TIM4RST: u1 = 0x0,
        /// Timer 5 reset [3:3]
        TIM5RST: u1 = 0x0,
        /// Timer 6 reset [4:4]
        TIM6RST: u1 = 0x0,
        /// Timer 7 reset [5:5]
        TIM7RST: u1 = 0x0,
        /// Timer 12 reset [6:6]
        TIM12RST: u1 = 0x0,
        /// Timer 13 reset [7:7]
        TIM13RST: u1 = 0x0,
        /// Timer 14 reset [8:8]
        TIM14RST: u1 = 0x0,
        /// Reserved [9:10]
        _0: u2 = undefined,
        /// Window watchdog reset [11:11]
        WWDGRST: u1 = 0x0,
        /// Reserved [12:13]
        _1: u2 = undefined,
        /// SPI2 reset [14:14]
        SPI2RST: u1 = 0x0,
        /// SPI3 reset [15:15]
        SPI3RST: u1 = 0x0,
        /// Reserved [16:16]
        _2: u1 = undefined,
        /// USART 2 reset [17:17]
        USART2RST: u1 = 0x0,
        /// USART 3 reset [18:18]
        USART3RST: u1 = 0x0,
        /// USART 4 reset [19:19]
        USART4RST: u1 = 0x0,
        /// USART 5 reset [20:20]
        USART5RST: u1 = 0x0,
        /// I2C1 reset [21:21]
        I2C1RST: u1 = 0x0,
        /// I2C2 reset [22:22]
        I2C2RST: u1 = 0x0,
        /// Reserved [23:26]
        _3: u4 = undefined,
        /// Backup interface reset [27:27]
        BKPRST: u1 = 0x0,
        /// Power interface reset [28:28]
        PWRRST: u1 = 0x0,
        /// DAC interface reset [29:29]
        DACRST: u1 = 0x0,
        /// CEC reset [30:30]
        CECRST: u1 = 0x0,
        /// Reserved [31:31]
        _4: u1 = undefined,
    }).init(0x40021010);
    /// AHB Peripheral Clock enable register (RCC_AHBENR)
    pub const AHBENR = reg.RW(packed struct(u32) {
        /// DMA1 clock enable [0:0]
        DMA1EN: u1 = 0x0,
        /// DMA2 clock enable [1:1]
        DMA2EN: u1 = 0x0,
        /// SRAM interface clock enable [2:2]
        SRAMEN: u1 = 0x1,
        /// Reserved [3:3]
        _0: u1 = undefined,
        /// FLITF clock enable [4:4]
        FLITFEN: u1 = 0x1,
        /// Reserved [5:5]
        _1: u1 = undefined,
        /// CRC clock enable [6:6]
        CRCEN: u1 = 0x0,
        /// Reserved [7:7]
        _2: u1 = undefined,
        /// FSMC clock enable [8:8]
        FSMCEN: u1 = 0x0,
        /// Reserved [9:31]
        _3: u23 = undefined,
    }).init(0x40021014);
    /// APB2 peripheral clock enable register (RCC_APB2ENR)
    pub const APB2ENR = reg.RW(packed struct(u32) {
        /// Alternate function I/O clock enable [0:0]
        AFIOEN: u1 = 0x0,
        /// Reserved [1:1]
        _0: u1 = undefined,
        /// I/O port A clock enable [2:2]
        IOPAEN: u1 = 0x0,
        /// I/O port B clock enable [3:3]
        IOPBEN: u1 = 0x0,
        /// I/O port C clock enable [4:4]
        IOPCEN: u1 = 0x0,
        /// I/O port D clock enable [5:5]
        IOPDEN: u1 = 0x0,
        /// I/O port E clock enable [6:6]
        IOPEEN: u1 = 0x0,
        /// I/O port F clock enable [7:7]
        IOPFEN: u1 = 0x0,
        /// I/O port G clock enable [8:8]
        IOPGEN: u1 = 0x0,
        /// ADC 1 interface clock enable [9:9]
        ADC1EN: u1 = 0x0,
        /// Reserved [10:10]
        _1: u1 = undefined,
        /// TIM1 Timer clock enable [11:11]
        TIM1EN: u1 = 0x0,
        /// SPI 1 clock enable [12:12]
        SPI1EN: u1 = 0x0,
        /// Reserved [13:13]
        _2: u1 = undefined,
        /// USART1 clock enable [14:14]
        USART1EN: u1 = 0x0,
        /// Reserved [15:15]
        _3: u1 = undefined,
        /// TIM15 Timer clock enable [16:16]
        TIM15EN: u1 = 0x0,
        /// TIM16 Timer clock enable [17:17]
        TIM16EN: u1 = 0x0,
        /// TIM17 Timer clock enable [18:18]
        TIM17EN: u1 = 0x0,
        /// Reserved [19:31]
        _4: u13 = undefined,
    }).init(0x40021018);
    /// APB1 peripheral clock enable register (RCC_APB1ENR)
    pub const APB1ENR = reg.RW(packed struct(u32) {
        /// Timer 2 clock enable [0:0]
        TIM2EN: u1 = 0x0,
        /// Timer 3 clock enable [1:1]
        TIM3EN: u1 = 0x0,
        /// Timer 4 clock enable [2:2]
        TIM4EN: u1 = 0x0,
        /// Timer 5 clock enable [3:3]
        TIM5EN: u1 = 0x0,
        /// Timer 6 clock enable [4:4]
        TIM6EN: u1 = 0x0,
        /// Timer 7 clock enable [5:5]
        TIM7EN: u1 = 0x0,
        /// Timer 12 clock enable [6:6]
        TIM12EN: u1 = 0x0,
        /// Timer 13 clock enable [7:7]
        TIM13EN: u1 = 0x0,
        /// Timer 14 clock enable [8:8]
        TIM14EN: u1 = 0x0,
        /// Reserved [9:10]
        _0: u2 = undefined,
        /// Window watchdog clock enable [11:11]
        WWDGEN: u1 = 0x0,
        /// Reserved [12:13]
        _1: u2 = undefined,
        /// SPI 2 clock enable [14:14]
        SPI2EN: u1 = 0x0,
        /// SPI 3 clock enable [15:15]
        SPI3EN: u1 = 0x0,
        /// Reserved [16:16]
        _2: u1 = undefined,
        /// USART 2 clock enable [17:17]
        USART2EN: u1 = 0x0,
        /// USART 3 clock enable [18:18]
        USART3EN: u1 = 0x0,
        /// UART 4 clock enable [19:19]
        UART4EN: u1 = 0x0,
        /// UART 5 clock enable [20:20]
        UART5EN: u1 = 0x0,
        /// I2C 1 clock enable [21:21]
        I2C1EN: u1 = 0x0,
        /// I2C 2 clock enable [22:22]
        I2C2EN: u1 = 0x0,
        /// Reserved [23:26]
        _3: u4 = undefined,
        /// Backup interface clock enable [27:27]
        BKPEN: u1 = 0x0,
        /// Power interface clock enable [28:28]
        PWREN: u1 = 0x0,
        /// DAC interface clock enable [29:29]
        DACEN: u1 = 0x0,
        /// CEC clock enable [30:30]
        CECEN: u1 = 0x0,
        /// Reserved [31:31]
        _4: u1 = undefined,
    }).init(0x4002101C);
    /// Backup domain control register (RCC_BDCR)
    pub const BDCR = reg.RW(packed struct(u32) {
        /// External Low Speed oscillator enable [0:0]
        LSEON: u1 = 0x0,
        /// External Low Speed oscillator ready [1:1]
        LSERDY: u1 = 0x0,
        /// External Low Speed oscillator bypass [2:2]
        LSEBYP: u1 = 0x0,
        /// Reserved [3:7]
        _0: u5 = undefined,
        /// RTC clock source selection [8:9]
        RTCSEL: u2 = 0x0,
        /// Reserved [10:14]
        _1: u5 = undefined,
        /// RTC clock enable [15:15]
        RTCEN: u1 = 0x0,
        /// Backup domain software reset [16:16]
        BDRST: u1 = 0x0,
        /// Reserved [17:31]
        _2: u15 = undefined,
    }).init(0x40021020);
    /// Control/status register (RCC_CSR)
    pub const CSR = reg.RW(packed struct(u32) {
        /// Internal low speed oscillator enable [0:0]
        LSION: u1 = 0x0,
        /// Internal low speed oscillator ready [1:1]
        LSIRDY: u1 = 0x0,
        /// Reserved [2:23]
        _0: u22 = undefined,
        /// Remove reset flag [24:24]
        RMVF: u1 = 0x0,
        /// Reserved [25:25]
        _1: u1 = undefined,
        /// PIN reset flag [26:26]
        PINRSTF: u1 = 0x1,
        /// POR/PDR reset flag [27:27]
        PORRSTF: u1 = 0x1,
        /// Software reset flag [28:28]
        SFTRSTF: u1 = 0x0,
        /// Independent watchdog reset flag [29:29]
        IWDGRSTF: u1 = 0x0,
        /// Window watchdog reset flag [30:30]
        WWDGRSTF: u1 = 0x0,
        /// Low-power reset flag [31:31]
        LPWRRSTF: u1 = 0x0,
    }).init(0x40021024);
    /// Clock configuration register 2
    pub const CFGR2 = reg.RW(packed struct(u32) {
        /// PREDIV1 division factor [0:3]
        PREDIV1: u4 = 0x0,
        /// Reserved [4:31]
        _0: u28 = undefined,
    }).init(0x4002102C);
};

pub const GPIOA = struct {
    pub const IRQ = struct {};
    /// Port configuration register low (GPIOn_CRL)
    pub const CRL = reg.RW(packed struct(u32) {
        /// Port n.0 mode bits [0:1]
        MODE0: u2 = 0x0,
        /// Port n.0 configuration bits [2:3]
        CNF0: u2 = 0x1,
        /// Port n.1 mode bits [4:5]
        MODE1: u2 = 0x0,
        /// Port n.1 configuration bits [6:7]
        CNF1: u2 = 0x1,
        /// Port n.2 mode bits [8:9]
        MODE2: u2 = 0x0,
        /// Port n.2 configuration bits [10:11]
        CNF2: u2 = 0x1,
        /// Port n.3 mode bits [12:13]
        MODE3: u2 = 0x0,
        /// Port n.3 configuration bits [14:15]
        CNF3: u2 = 0x1,
        /// Port n.4 mode bits [16:17]
        MODE4: u2 = 0x0,
        /// Port n.4 configuration bits [18:19]
        CNF4: u2 = 0x1,
        /// Port n.5 mode bits [20:21]
        MODE5: u2 = 0x0,
        /// Port n.5 configuration bits [22:23]
        CNF5: u2 = 0x1,
        /// Port n.6 mode bits [24:25]
        MODE6: u2 = 0x0,
        /// Port n.6 configuration bits [26:27]
        CNF6: u2 = 0x1,
        /// Port n.7 mode bits [28:29]
        MODE7: u2 = 0x0,
        /// Port n.7 configuration bits [30:31]
        CNF7: u2 = 0x1,
    }).init(0x40010800);
    /// Port configuration register high (GPIOn_CRL)
    pub const CRH = reg.RW(packed struct(u32) {
        /// Port n.8 mode bits [0:1]
        MODE8: u2 = 0x0,
        /// Port n.8 configuration bits [2:3]
        CNF8: u2 = 0x1,
        /// Port n.9 mode bits [4:5]
        MODE9: u2 = 0x0,
        /// Port n.9 configuration bits [6:7]
        CNF9: u2 = 0x1,
        /// Port n.10 mode bits [8:9]
        MODE10: u2 = 0x0,
        /// Port n.10 configuration bits [10:11]
        CNF10: u2 = 0x1,
        /// Port n.11 mode bits [12:13]
        MODE11: u2 = 0x0,
        /// Port n.11 configuration bits [14:15]
        CNF11: u2 = 0x1,
        /// Port n.12 mode bits [16:17]
        MODE12: u2 = 0x0,
        /// Port n.12 configuration bits [18:19]
        CNF12: u2 = 0x1,
        /// Port n.13 mode bits [20:21]
        MODE13: u2 = 0x0,
        /// Port n.13 configuration bits [22:23]
        CNF13: u2 = 0x1,
        /// Port n.14 mode bits [24:25]
        MODE14: u2 = 0x0,
        /// Port n.14 configuration bits [26:27]
        CNF14: u2 = 0x1,
        /// Port n.15 mode bits [28:29]
        MODE15: u2 = 0x0,
        /// Port n.15 configuration bits [30:31]
        CNF15: u2 = 0x1,
    }).init(0x40010804);
    /// Port input data register (GPIOn_IDR)
    pub const IDR = reg.RO(packed struct(u32) {
        /// Port input data [0:0]
        IDR0: u1 = 0x0,
        /// Port input data [1:1]
        IDR1: u1 = 0x0,
        /// Port input data [2:2]
        IDR2: u1 = 0x0,
        /// Port input data [3:3]
        IDR3: u1 = 0x0,
        /// Port input data [4:4]
        IDR4: u1 = 0x0,
        /// Port input data [5:5]
        IDR5: u1 = 0x0,
        /// Port input data [6:6]
        IDR6: u1 = 0x0,
        /// Port input data [7:7]
        IDR7: u1 = 0x0,
        /// Port input data [8:8]
        IDR8: u1 = 0x0,
        /// Port input data [9:9]
        IDR9: u1 = 0x0,
        /// Port input data [10:10]
        IDR10: u1 = 0x0,
        /// Port input data [11:11]
        IDR11: u1 = 0x0,
        /// Port input data [12:12]
        IDR12: u1 = 0x0,
        /// Port input data [13:13]
        IDR13: u1 = 0x0,
        /// Port input data [14:14]
        IDR14: u1 = 0x0,
        /// Port input data [15:15]
        IDR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40010808);
    /// Port output data register (GPIOn_ODR)
    pub const ODR = reg.RW(packed struct(u32) {
        /// Port output data [0:0]
        ODR0: u1 = 0x0,
        /// Port output data [1:1]
        ODR1: u1 = 0x0,
        /// Port output data [2:2]
        ODR2: u1 = 0x0,
        /// Port output data [3:3]
        ODR3: u1 = 0x0,
        /// Port output data [4:4]
        ODR4: u1 = 0x0,
        /// Port output data [5:5]
        ODR5: u1 = 0x0,
        /// Port output data [6:6]
        ODR6: u1 = 0x0,
        /// Port output data [7:7]
        ODR7: u1 = 0x0,
        /// Port output data [8:8]
        ODR8: u1 = 0x0,
        /// Port output data [9:9]
        ODR9: u1 = 0x0,
        /// Port output data [10:10]
        ODR10: u1 = 0x0,
        /// Port output data [11:11]
        ODR11: u1 = 0x0,
        /// Port output data [12:12]
        ODR12: u1 = 0x0,
        /// Port output data [13:13]
        ODR13: u1 = 0x0,
        /// Port output data [14:14]
        ODR14: u1 = 0x0,
        /// Port output data [15:15]
        ODR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4001080C);
    /// Port bit set/reset register (GPIOn_BSRR)
    pub const BSRR = reg.WO(packed struct(u32) {
        /// Set bit 0 [0:0]
        BS0: u1 = 0x0,
        /// Set bit 1 [1:1]
        BS1: u1 = 0x0,
        /// Set bit 1 [2:2]
        BS2: u1 = 0x0,
        /// Set bit 3 [3:3]
        BS3: u1 = 0x0,
        /// Set bit 4 [4:4]
        BS4: u1 = 0x0,
        /// Set bit 5 [5:5]
        BS5: u1 = 0x0,
        /// Set bit 6 [6:6]
        BS6: u1 = 0x0,
        /// Set bit 7 [7:7]
        BS7: u1 = 0x0,
        /// Set bit 8 [8:8]
        BS8: u1 = 0x0,
        /// Set bit 9 [9:9]
        BS9: u1 = 0x0,
        /// Set bit 10 [10:10]
        BS10: u1 = 0x0,
        /// Set bit 11 [11:11]
        BS11: u1 = 0x0,
        /// Set bit 12 [12:12]
        BS12: u1 = 0x0,
        /// Set bit 13 [13:13]
        BS13: u1 = 0x0,
        /// Set bit 14 [14:14]
        BS14: u1 = 0x0,
        /// Set bit 15 [15:15]
        BS15: u1 = 0x0,
        /// Reset bit 0 [16:16]
        BR0: u1 = 0x0,
        /// Reset bit 1 [17:17]
        BR1: u1 = 0x0,
        /// Reset bit 2 [18:18]
        BR2: u1 = 0x0,
        /// Reset bit 3 [19:19]
        BR3: u1 = 0x0,
        /// Reset bit 4 [20:20]
        BR4: u1 = 0x0,
        /// Reset bit 5 [21:21]
        BR5: u1 = 0x0,
        /// Reset bit 6 [22:22]
        BR6: u1 = 0x0,
        /// Reset bit 7 [23:23]
        BR7: u1 = 0x0,
        /// Reset bit 8 [24:24]
        BR8: u1 = 0x0,
        /// Reset bit 9 [25:25]
        BR9: u1 = 0x0,
        /// Reset bit 10 [26:26]
        BR10: u1 = 0x0,
        /// Reset bit 11 [27:27]
        BR11: u1 = 0x0,
        /// Reset bit 12 [28:28]
        BR12: u1 = 0x0,
        /// Reset bit 13 [29:29]
        BR13: u1 = 0x0,
        /// Reset bit 14 [30:30]
        BR14: u1 = 0x0,
        /// Reset bit 15 [31:31]
        BR15: u1 = 0x0,
    }).init(0x40010810);
    /// Port bit reset register (GPIOn_BRR)
    pub const BRR = reg.WO(packed struct(u32) {
        /// Reset bit 0 [0:0]
        BR0: u1 = 0x0,
        /// Reset bit 1 [1:1]
        BR1: u1 = 0x0,
        /// Reset bit 1 [2:2]
        BR2: u1 = 0x0,
        /// Reset bit 3 [3:3]
        BR3: u1 = 0x0,
        /// Reset bit 4 [4:4]
        BR4: u1 = 0x0,
        /// Reset bit 5 [5:5]
        BR5: u1 = 0x0,
        /// Reset bit 6 [6:6]
        BR6: u1 = 0x0,
        /// Reset bit 7 [7:7]
        BR7: u1 = 0x0,
        /// Reset bit 8 [8:8]
        BR8: u1 = 0x0,
        /// Reset bit 9 [9:9]
        BR9: u1 = 0x0,
        /// Reset bit 10 [10:10]
        BR10: u1 = 0x0,
        /// Reset bit 11 [11:11]
        BR11: u1 = 0x0,
        /// Reset bit 12 [12:12]
        BR12: u1 = 0x0,
        /// Reset bit 13 [13:13]
        BR13: u1 = 0x0,
        /// Reset bit 14 [14:14]
        BR14: u1 = 0x0,
        /// Reset bit 15 [15:15]
        BR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40010814);
    /// Port configuration lock register
    pub const LCKR = reg.RW(packed struct(u32) {
        /// Port A Lock bit 0 [0:0]
        LCK0: u1 = 0x0,
        /// Port A Lock bit 1 [1:1]
        LCK1: u1 = 0x0,
        /// Port A Lock bit 2 [2:2]
        LCK2: u1 = 0x0,
        /// Port A Lock bit 3 [3:3]
        LCK3: u1 = 0x0,
        /// Port A Lock bit 4 [4:4]
        LCK4: u1 = 0x0,
        /// Port A Lock bit 5 [5:5]
        LCK5: u1 = 0x0,
        /// Port A Lock bit 6 [6:6]
        LCK6: u1 = 0x0,
        /// Port A Lock bit 7 [7:7]
        LCK7: u1 = 0x0,
        /// Port A Lock bit 8 [8:8]
        LCK8: u1 = 0x0,
        /// Port A Lock bit 9 [9:9]
        LCK9: u1 = 0x0,
        /// Port A Lock bit 10 [10:10]
        LCK10: u1 = 0x0,
        /// Port A Lock bit 11 [11:11]
        LCK11: u1 = 0x0,
        /// Port A Lock bit 12 [12:12]
        LCK12: u1 = 0x0,
        /// Port A Lock bit 13 [13:13]
        LCK13: u1 = 0x0,
        /// Port A Lock bit 14 [14:14]
        LCK14: u1 = 0x0,
        /// Port A Lock bit 15 [15:15]
        LCK15: u1 = 0x0,
        /// Lock key [16:16]
        LCKK: u1 = 0x0,
        /// Reserved [17:31]
        _0: u15 = undefined,
    }).init(0x40010818);
};

pub const GPIOB = struct {
    pub const IRQ = struct {};
    /// Port configuration register low (GPIOn_CRL)
    pub const CRL = reg.RW(packed struct(u32) {
        /// Port n.0 mode bits [0:1]
        MODE0: u2 = 0x0,
        /// Port n.0 configuration bits [2:3]
        CNF0: u2 = 0x1,
        /// Port n.1 mode bits [4:5]
        MODE1: u2 = 0x0,
        /// Port n.1 configuration bits [6:7]
        CNF1: u2 = 0x1,
        /// Port n.2 mode bits [8:9]
        MODE2: u2 = 0x0,
        /// Port n.2 configuration bits [10:11]
        CNF2: u2 = 0x1,
        /// Port n.3 mode bits [12:13]
        MODE3: u2 = 0x0,
        /// Port n.3 configuration bits [14:15]
        CNF3: u2 = 0x1,
        /// Port n.4 mode bits [16:17]
        MODE4: u2 = 0x0,
        /// Port n.4 configuration bits [18:19]
        CNF4: u2 = 0x1,
        /// Port n.5 mode bits [20:21]
        MODE5: u2 = 0x0,
        /// Port n.5 configuration bits [22:23]
        CNF5: u2 = 0x1,
        /// Port n.6 mode bits [24:25]
        MODE6: u2 = 0x0,
        /// Port n.6 configuration bits [26:27]
        CNF6: u2 = 0x1,
        /// Port n.7 mode bits [28:29]
        MODE7: u2 = 0x0,
        /// Port n.7 configuration bits [30:31]
        CNF7: u2 = 0x1,
    }).init(0x40010C00);
    /// Port configuration register high (GPIOn_CRL)
    pub const CRH = reg.RW(packed struct(u32) {
        /// Port n.8 mode bits [0:1]
        MODE8: u2 = 0x0,
        /// Port n.8 configuration bits [2:3]
        CNF8: u2 = 0x1,
        /// Port n.9 mode bits [4:5]
        MODE9: u2 = 0x0,
        /// Port n.9 configuration bits [6:7]
        CNF9: u2 = 0x1,
        /// Port n.10 mode bits [8:9]
        MODE10: u2 = 0x0,
        /// Port n.10 configuration bits [10:11]
        CNF10: u2 = 0x1,
        /// Port n.11 mode bits [12:13]
        MODE11: u2 = 0x0,
        /// Port n.11 configuration bits [14:15]
        CNF11: u2 = 0x1,
        /// Port n.12 mode bits [16:17]
        MODE12: u2 = 0x0,
        /// Port n.12 configuration bits [18:19]
        CNF12: u2 = 0x1,
        /// Port n.13 mode bits [20:21]
        MODE13: u2 = 0x0,
        /// Port n.13 configuration bits [22:23]
        CNF13: u2 = 0x1,
        /// Port n.14 mode bits [24:25]
        MODE14: u2 = 0x0,
        /// Port n.14 configuration bits [26:27]
        CNF14: u2 = 0x1,
        /// Port n.15 mode bits [28:29]
        MODE15: u2 = 0x0,
        /// Port n.15 configuration bits [30:31]
        CNF15: u2 = 0x1,
    }).init(0x40010C04);
    /// Port input data register (GPIOn_IDR)
    pub const IDR = reg.RO(packed struct(u32) {
        /// Port input data [0:0]
        IDR0: u1 = 0x0,
        /// Port input data [1:1]
        IDR1: u1 = 0x0,
        /// Port input data [2:2]
        IDR2: u1 = 0x0,
        /// Port input data [3:3]
        IDR3: u1 = 0x0,
        /// Port input data [4:4]
        IDR4: u1 = 0x0,
        /// Port input data [5:5]
        IDR5: u1 = 0x0,
        /// Port input data [6:6]
        IDR6: u1 = 0x0,
        /// Port input data [7:7]
        IDR7: u1 = 0x0,
        /// Port input data [8:8]
        IDR8: u1 = 0x0,
        /// Port input data [9:9]
        IDR9: u1 = 0x0,
        /// Port input data [10:10]
        IDR10: u1 = 0x0,
        /// Port input data [11:11]
        IDR11: u1 = 0x0,
        /// Port input data [12:12]
        IDR12: u1 = 0x0,
        /// Port input data [13:13]
        IDR13: u1 = 0x0,
        /// Port input data [14:14]
        IDR14: u1 = 0x0,
        /// Port input data [15:15]
        IDR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40010C08);
    /// Port output data register (GPIOn_ODR)
    pub const ODR = reg.RW(packed struct(u32) {
        /// Port output data [0:0]
        ODR0: u1 = 0x0,
        /// Port output data [1:1]
        ODR1: u1 = 0x0,
        /// Port output data [2:2]
        ODR2: u1 = 0x0,
        /// Port output data [3:3]
        ODR3: u1 = 0x0,
        /// Port output data [4:4]
        ODR4: u1 = 0x0,
        /// Port output data [5:5]
        ODR5: u1 = 0x0,
        /// Port output data [6:6]
        ODR6: u1 = 0x0,
        /// Port output data [7:7]
        ODR7: u1 = 0x0,
        /// Port output data [8:8]
        ODR8: u1 = 0x0,
        /// Port output data [9:9]
        ODR9: u1 = 0x0,
        /// Port output data [10:10]
        ODR10: u1 = 0x0,
        /// Port output data [11:11]
        ODR11: u1 = 0x0,
        /// Port output data [12:12]
        ODR12: u1 = 0x0,
        /// Port output data [13:13]
        ODR13: u1 = 0x0,
        /// Port output data [14:14]
        ODR14: u1 = 0x0,
        /// Port output data [15:15]
        ODR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40010C0C);
    /// Port bit set/reset register (GPIOn_BSRR)
    pub const BSRR = reg.WO(packed struct(u32) {
        /// Set bit 0 [0:0]
        BS0: u1 = 0x0,
        /// Set bit 1 [1:1]
        BS1: u1 = 0x0,
        /// Set bit 1 [2:2]
        BS2: u1 = 0x0,
        /// Set bit 3 [3:3]
        BS3: u1 = 0x0,
        /// Set bit 4 [4:4]
        BS4: u1 = 0x0,
        /// Set bit 5 [5:5]
        BS5: u1 = 0x0,
        /// Set bit 6 [6:6]
        BS6: u1 = 0x0,
        /// Set bit 7 [7:7]
        BS7: u1 = 0x0,
        /// Set bit 8 [8:8]
        BS8: u1 = 0x0,
        /// Set bit 9 [9:9]
        BS9: u1 = 0x0,
        /// Set bit 10 [10:10]
        BS10: u1 = 0x0,
        /// Set bit 11 [11:11]
        BS11: u1 = 0x0,
        /// Set bit 12 [12:12]
        BS12: u1 = 0x0,
        /// Set bit 13 [13:13]
        BS13: u1 = 0x0,
        /// Set bit 14 [14:14]
        BS14: u1 = 0x0,
        /// Set bit 15 [15:15]
        BS15: u1 = 0x0,
        /// Reset bit 0 [16:16]
        BR0: u1 = 0x0,
        /// Reset bit 1 [17:17]
        BR1: u1 = 0x0,
        /// Reset bit 2 [18:18]
        BR2: u1 = 0x0,
        /// Reset bit 3 [19:19]
        BR3: u1 = 0x0,
        /// Reset bit 4 [20:20]
        BR4: u1 = 0x0,
        /// Reset bit 5 [21:21]
        BR5: u1 = 0x0,
        /// Reset bit 6 [22:22]
        BR6: u1 = 0x0,
        /// Reset bit 7 [23:23]
        BR7: u1 = 0x0,
        /// Reset bit 8 [24:24]
        BR8: u1 = 0x0,
        /// Reset bit 9 [25:25]
        BR9: u1 = 0x0,
        /// Reset bit 10 [26:26]
        BR10: u1 = 0x0,
        /// Reset bit 11 [27:27]
        BR11: u1 = 0x0,
        /// Reset bit 12 [28:28]
        BR12: u1 = 0x0,
        /// Reset bit 13 [29:29]
        BR13: u1 = 0x0,
        /// Reset bit 14 [30:30]
        BR14: u1 = 0x0,
        /// Reset bit 15 [31:31]
        BR15: u1 = 0x0,
    }).init(0x40010C10);
    /// Port bit reset register (GPIOn_BRR)
    pub const BRR = reg.WO(packed struct(u32) {
        /// Reset bit 0 [0:0]
        BR0: u1 = 0x0,
        /// Reset bit 1 [1:1]
        BR1: u1 = 0x0,
        /// Reset bit 1 [2:2]
        BR2: u1 = 0x0,
        /// Reset bit 3 [3:3]
        BR3: u1 = 0x0,
        /// Reset bit 4 [4:4]
        BR4: u1 = 0x0,
        /// Reset bit 5 [5:5]
        BR5: u1 = 0x0,
        /// Reset bit 6 [6:6]
        BR6: u1 = 0x0,
        /// Reset bit 7 [7:7]
        BR7: u1 = 0x0,
        /// Reset bit 8 [8:8]
        BR8: u1 = 0x0,
        /// Reset bit 9 [9:9]
        BR9: u1 = 0x0,
        /// Reset bit 10 [10:10]
        BR10: u1 = 0x0,
        /// Reset bit 11 [11:11]
        BR11: u1 = 0x0,
        /// Reset bit 12 [12:12]
        BR12: u1 = 0x0,
        /// Reset bit 13 [13:13]
        BR13: u1 = 0x0,
        /// Reset bit 14 [14:14]
        BR14: u1 = 0x0,
        /// Reset bit 15 [15:15]
        BR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40010C14);
    /// Port configuration lock register
    pub const LCKR = reg.RW(packed struct(u32) {
        /// Port A Lock bit 0 [0:0]
        LCK0: u1 = 0x0,
        /// Port A Lock bit 1 [1:1]
        LCK1: u1 = 0x0,
        /// Port A Lock bit 2 [2:2]
        LCK2: u1 = 0x0,
        /// Port A Lock bit 3 [3:3]
        LCK3: u1 = 0x0,
        /// Port A Lock bit 4 [4:4]
        LCK4: u1 = 0x0,
        /// Port A Lock bit 5 [5:5]
        LCK5: u1 = 0x0,
        /// Port A Lock bit 6 [6:6]
        LCK6: u1 = 0x0,
        /// Port A Lock bit 7 [7:7]
        LCK7: u1 = 0x0,
        /// Port A Lock bit 8 [8:8]
        LCK8: u1 = 0x0,
        /// Port A Lock bit 9 [9:9]
        LCK9: u1 = 0x0,
        /// Port A Lock bit 10 [10:10]
        LCK10: u1 = 0x0,
        /// Port A Lock bit 11 [11:11]
        LCK11: u1 = 0x0,
        /// Port A Lock bit 12 [12:12]
        LCK12: u1 = 0x0,
        /// Port A Lock bit 13 [13:13]
        LCK13: u1 = 0x0,
        /// Port A Lock bit 14 [14:14]
        LCK14: u1 = 0x0,
        /// Port A Lock bit 15 [15:15]
        LCK15: u1 = 0x0,
        /// Lock key [16:16]
        LCKK: u1 = 0x0,
        /// Reserved [17:31]
        _0: u15 = undefined,
    }).init(0x40010C18);
};

pub const GPIOC = struct {
    pub const IRQ = struct {};
    /// Port configuration register low (GPIOn_CRL)
    pub const CRL = reg.RW(packed struct(u32) {
        /// Port n.0 mode bits [0:1]
        MODE0: u2 = 0x0,
        /// Port n.0 configuration bits [2:3]
        CNF0: u2 = 0x1,
        /// Port n.1 mode bits [4:5]
        MODE1: u2 = 0x0,
        /// Port n.1 configuration bits [6:7]
        CNF1: u2 = 0x1,
        /// Port n.2 mode bits [8:9]
        MODE2: u2 = 0x0,
        /// Port n.2 configuration bits [10:11]
        CNF2: u2 = 0x1,
        /// Port n.3 mode bits [12:13]
        MODE3: u2 = 0x0,
        /// Port n.3 configuration bits [14:15]
        CNF3: u2 = 0x1,
        /// Port n.4 mode bits [16:17]
        MODE4: u2 = 0x0,
        /// Port n.4 configuration bits [18:19]
        CNF4: u2 = 0x1,
        /// Port n.5 mode bits [20:21]
        MODE5: u2 = 0x0,
        /// Port n.5 configuration bits [22:23]
        CNF5: u2 = 0x1,
        /// Port n.6 mode bits [24:25]
        MODE6: u2 = 0x0,
        /// Port n.6 configuration bits [26:27]
        CNF6: u2 = 0x1,
        /// Port n.7 mode bits [28:29]
        MODE7: u2 = 0x0,
        /// Port n.7 configuration bits [30:31]
        CNF7: u2 = 0x1,
    }).init(0x40011000);
    /// Port configuration register high (GPIOn_CRL)
    pub const CRH = reg.RW(packed struct(u32) {
        /// Port n.8 mode bits [0:1]
        MODE8: u2 = 0x0,
        /// Port n.8 configuration bits [2:3]
        CNF8: u2 = 0x1,
        /// Port n.9 mode bits [4:5]
        MODE9: u2 = 0x0,
        /// Port n.9 configuration bits [6:7]
        CNF9: u2 = 0x1,
        /// Port n.10 mode bits [8:9]
        MODE10: u2 = 0x0,
        /// Port n.10 configuration bits [10:11]
        CNF10: u2 = 0x1,
        /// Port n.11 mode bits [12:13]
        MODE11: u2 = 0x0,
        /// Port n.11 configuration bits [14:15]
        CNF11: u2 = 0x1,
        /// Port n.12 mode bits [16:17]
        MODE12: u2 = 0x0,
        /// Port n.12 configuration bits [18:19]
        CNF12: u2 = 0x1,
        /// Port n.13 mode bits [20:21]
        MODE13: u2 = 0x0,
        /// Port n.13 configuration bits [22:23]
        CNF13: u2 = 0x1,
        /// Port n.14 mode bits [24:25]
        MODE14: u2 = 0x0,
        /// Port n.14 configuration bits [26:27]
        CNF14: u2 = 0x1,
        /// Port n.15 mode bits [28:29]
        MODE15: u2 = 0x0,
        /// Port n.15 configuration bits [30:31]
        CNF15: u2 = 0x1,
    }).init(0x40011004);
    /// Port input data register (GPIOn_IDR)
    pub const IDR = reg.RO(packed struct(u32) {
        /// Port input data [0:0]
        IDR0: u1 = 0x0,
        /// Port input data [1:1]
        IDR1: u1 = 0x0,
        /// Port input data [2:2]
        IDR2: u1 = 0x0,
        /// Port input data [3:3]
        IDR3: u1 = 0x0,
        /// Port input data [4:4]
        IDR4: u1 = 0x0,
        /// Port input data [5:5]
        IDR5: u1 = 0x0,
        /// Port input data [6:6]
        IDR6: u1 = 0x0,
        /// Port input data [7:7]
        IDR7: u1 = 0x0,
        /// Port input data [8:8]
        IDR8: u1 = 0x0,
        /// Port input data [9:9]
        IDR9: u1 = 0x0,
        /// Port input data [10:10]
        IDR10: u1 = 0x0,
        /// Port input data [11:11]
        IDR11: u1 = 0x0,
        /// Port input data [12:12]
        IDR12: u1 = 0x0,
        /// Port input data [13:13]
        IDR13: u1 = 0x0,
        /// Port input data [14:14]
        IDR14: u1 = 0x0,
        /// Port input data [15:15]
        IDR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40011008);
    /// Port output data register (GPIOn_ODR)
    pub const ODR = reg.RW(packed struct(u32) {
        /// Port output data [0:0]
        ODR0: u1 = 0x0,
        /// Port output data [1:1]
        ODR1: u1 = 0x0,
        /// Port output data [2:2]
        ODR2: u1 = 0x0,
        /// Port output data [3:3]
        ODR3: u1 = 0x0,
        /// Port output data [4:4]
        ODR4: u1 = 0x0,
        /// Port output data [5:5]
        ODR5: u1 = 0x0,
        /// Port output data [6:6]
        ODR6: u1 = 0x0,
        /// Port output data [7:7]
        ODR7: u1 = 0x0,
        /// Port output data [8:8]
        ODR8: u1 = 0x0,
        /// Port output data [9:9]
        ODR9: u1 = 0x0,
        /// Port output data [10:10]
        ODR10: u1 = 0x0,
        /// Port output data [11:11]
        ODR11: u1 = 0x0,
        /// Port output data [12:12]
        ODR12: u1 = 0x0,
        /// Port output data [13:13]
        ODR13: u1 = 0x0,
        /// Port output data [14:14]
        ODR14: u1 = 0x0,
        /// Port output data [15:15]
        ODR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4001100C);
    /// Port bit set/reset register (GPIOn_BSRR)
    pub const BSRR = reg.WO(packed struct(u32) {
        /// Set bit 0 [0:0]
        BS0: u1 = 0x0,
        /// Set bit 1 [1:1]
        BS1: u1 = 0x0,
        /// Set bit 1 [2:2]
        BS2: u1 = 0x0,
        /// Set bit 3 [3:3]
        BS3: u1 = 0x0,
        /// Set bit 4 [4:4]
        BS4: u1 = 0x0,
        /// Set bit 5 [5:5]
        BS5: u1 = 0x0,
        /// Set bit 6 [6:6]
        BS6: u1 = 0x0,
        /// Set bit 7 [7:7]
        BS7: u1 = 0x0,
        /// Set bit 8 [8:8]
        BS8: u1 = 0x0,
        /// Set bit 9 [9:9]
        BS9: u1 = 0x0,
        /// Set bit 10 [10:10]
        BS10: u1 = 0x0,
        /// Set bit 11 [11:11]
        BS11: u1 = 0x0,
        /// Set bit 12 [12:12]
        BS12: u1 = 0x0,
        /// Set bit 13 [13:13]
        BS13: u1 = 0x0,
        /// Set bit 14 [14:14]
        BS14: u1 = 0x0,
        /// Set bit 15 [15:15]
        BS15: u1 = 0x0,
        /// Reset bit 0 [16:16]
        BR0: u1 = 0x0,
        /// Reset bit 1 [17:17]
        BR1: u1 = 0x0,
        /// Reset bit 2 [18:18]
        BR2: u1 = 0x0,
        /// Reset bit 3 [19:19]
        BR3: u1 = 0x0,
        /// Reset bit 4 [20:20]
        BR4: u1 = 0x0,
        /// Reset bit 5 [21:21]
        BR5: u1 = 0x0,
        /// Reset bit 6 [22:22]
        BR6: u1 = 0x0,
        /// Reset bit 7 [23:23]
        BR7: u1 = 0x0,
        /// Reset bit 8 [24:24]
        BR8: u1 = 0x0,
        /// Reset bit 9 [25:25]
        BR9: u1 = 0x0,
        /// Reset bit 10 [26:26]
        BR10: u1 = 0x0,
        /// Reset bit 11 [27:27]
        BR11: u1 = 0x0,
        /// Reset bit 12 [28:28]
        BR12: u1 = 0x0,
        /// Reset bit 13 [29:29]
        BR13: u1 = 0x0,
        /// Reset bit 14 [30:30]
        BR14: u1 = 0x0,
        /// Reset bit 15 [31:31]
        BR15: u1 = 0x0,
    }).init(0x40011010);
    /// Port bit reset register (GPIOn_BRR)
    pub const BRR = reg.WO(packed struct(u32) {
        /// Reset bit 0 [0:0]
        BR0: u1 = 0x0,
        /// Reset bit 1 [1:1]
        BR1: u1 = 0x0,
        /// Reset bit 1 [2:2]
        BR2: u1 = 0x0,
        /// Reset bit 3 [3:3]
        BR3: u1 = 0x0,
        /// Reset bit 4 [4:4]
        BR4: u1 = 0x0,
        /// Reset bit 5 [5:5]
        BR5: u1 = 0x0,
        /// Reset bit 6 [6:6]
        BR6: u1 = 0x0,
        /// Reset bit 7 [7:7]
        BR7: u1 = 0x0,
        /// Reset bit 8 [8:8]
        BR8: u1 = 0x0,
        /// Reset bit 9 [9:9]
        BR9: u1 = 0x0,
        /// Reset bit 10 [10:10]
        BR10: u1 = 0x0,
        /// Reset bit 11 [11:11]
        BR11: u1 = 0x0,
        /// Reset bit 12 [12:12]
        BR12: u1 = 0x0,
        /// Reset bit 13 [13:13]
        BR13: u1 = 0x0,
        /// Reset bit 14 [14:14]
        BR14: u1 = 0x0,
        /// Reset bit 15 [15:15]
        BR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40011014);
    /// Port configuration lock register
    pub const LCKR = reg.RW(packed struct(u32) {
        /// Port A Lock bit 0 [0:0]
        LCK0: u1 = 0x0,
        /// Port A Lock bit 1 [1:1]
        LCK1: u1 = 0x0,
        /// Port A Lock bit 2 [2:2]
        LCK2: u1 = 0x0,
        /// Port A Lock bit 3 [3:3]
        LCK3: u1 = 0x0,
        /// Port A Lock bit 4 [4:4]
        LCK4: u1 = 0x0,
        /// Port A Lock bit 5 [5:5]
        LCK5: u1 = 0x0,
        /// Port A Lock bit 6 [6:6]
        LCK6: u1 = 0x0,
        /// Port A Lock bit 7 [7:7]
        LCK7: u1 = 0x0,
        /// Port A Lock bit 8 [8:8]
        LCK8: u1 = 0x0,
        /// Port A Lock bit 9 [9:9]
        LCK9: u1 = 0x0,
        /// Port A Lock bit 10 [10:10]
        LCK10: u1 = 0x0,
        /// Port A Lock bit 11 [11:11]
        LCK11: u1 = 0x0,
        /// Port A Lock bit 12 [12:12]
        LCK12: u1 = 0x0,
        /// Port A Lock bit 13 [13:13]
        LCK13: u1 = 0x0,
        /// Port A Lock bit 14 [14:14]
        LCK14: u1 = 0x0,
        /// Port A Lock bit 15 [15:15]
        LCK15: u1 = 0x0,
        /// Lock key [16:16]
        LCKK: u1 = 0x0,
        /// Reserved [17:31]
        _0: u15 = undefined,
    }).init(0x40011018);
};

pub const GPIOD = struct {
    pub const IRQ = struct {};
    /// Port configuration register low (GPIOn_CRL)
    pub const CRL = reg.RW(packed struct(u32) {
        /// Port n.0 mode bits [0:1]
        MODE0: u2 = 0x0,
        /// Port n.0 configuration bits [2:3]
        CNF0: u2 = 0x1,
        /// Port n.1 mode bits [4:5]
        MODE1: u2 = 0x0,
        /// Port n.1 configuration bits [6:7]
        CNF1: u2 = 0x1,
        /// Port n.2 mode bits [8:9]
        MODE2: u2 = 0x0,
        /// Port n.2 configuration bits [10:11]
        CNF2: u2 = 0x1,
        /// Port n.3 mode bits [12:13]
        MODE3: u2 = 0x0,
        /// Port n.3 configuration bits [14:15]
        CNF3: u2 = 0x1,
        /// Port n.4 mode bits [16:17]
        MODE4: u2 = 0x0,
        /// Port n.4 configuration bits [18:19]
        CNF4: u2 = 0x1,
        /// Port n.5 mode bits [20:21]
        MODE5: u2 = 0x0,
        /// Port n.5 configuration bits [22:23]
        CNF5: u2 = 0x1,
        /// Port n.6 mode bits [24:25]
        MODE6: u2 = 0x0,
        /// Port n.6 configuration bits [26:27]
        CNF6: u2 = 0x1,
        /// Port n.7 mode bits [28:29]
        MODE7: u2 = 0x0,
        /// Port n.7 configuration bits [30:31]
        CNF7: u2 = 0x1,
    }).init(0x40011400);
    /// Port configuration register high (GPIOn_CRL)
    pub const CRH = reg.RW(packed struct(u32) {
        /// Port n.8 mode bits [0:1]
        MODE8: u2 = 0x0,
        /// Port n.8 configuration bits [2:3]
        CNF8: u2 = 0x1,
        /// Port n.9 mode bits [4:5]
        MODE9: u2 = 0x0,
        /// Port n.9 configuration bits [6:7]
        CNF9: u2 = 0x1,
        /// Port n.10 mode bits [8:9]
        MODE10: u2 = 0x0,
        /// Port n.10 configuration bits [10:11]
        CNF10: u2 = 0x1,
        /// Port n.11 mode bits [12:13]
        MODE11: u2 = 0x0,
        /// Port n.11 configuration bits [14:15]
        CNF11: u2 = 0x1,
        /// Port n.12 mode bits [16:17]
        MODE12: u2 = 0x0,
        /// Port n.12 configuration bits [18:19]
        CNF12: u2 = 0x1,
        /// Port n.13 mode bits [20:21]
        MODE13: u2 = 0x0,
        /// Port n.13 configuration bits [22:23]
        CNF13: u2 = 0x1,
        /// Port n.14 mode bits [24:25]
        MODE14: u2 = 0x0,
        /// Port n.14 configuration bits [26:27]
        CNF14: u2 = 0x1,
        /// Port n.15 mode bits [28:29]
        MODE15: u2 = 0x0,
        /// Port n.15 configuration bits [30:31]
        CNF15: u2 = 0x1,
    }).init(0x40011404);
    /// Port input data register (GPIOn_IDR)
    pub const IDR = reg.RO(packed struct(u32) {
        /// Port input data [0:0]
        IDR0: u1 = 0x0,
        /// Port input data [1:1]
        IDR1: u1 = 0x0,
        /// Port input data [2:2]
        IDR2: u1 = 0x0,
        /// Port input data [3:3]
        IDR3: u1 = 0x0,
        /// Port input data [4:4]
        IDR4: u1 = 0x0,
        /// Port input data [5:5]
        IDR5: u1 = 0x0,
        /// Port input data [6:6]
        IDR6: u1 = 0x0,
        /// Port input data [7:7]
        IDR7: u1 = 0x0,
        /// Port input data [8:8]
        IDR8: u1 = 0x0,
        /// Port input data [9:9]
        IDR9: u1 = 0x0,
        /// Port input data [10:10]
        IDR10: u1 = 0x0,
        /// Port input data [11:11]
        IDR11: u1 = 0x0,
        /// Port input data [12:12]
        IDR12: u1 = 0x0,
        /// Port input data [13:13]
        IDR13: u1 = 0x0,
        /// Port input data [14:14]
        IDR14: u1 = 0x0,
        /// Port input data [15:15]
        IDR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40011408);
    /// Port output data register (GPIOn_ODR)
    pub const ODR = reg.RW(packed struct(u32) {
        /// Port output data [0:0]
        ODR0: u1 = 0x0,
        /// Port output data [1:1]
        ODR1: u1 = 0x0,
        /// Port output data [2:2]
        ODR2: u1 = 0x0,
        /// Port output data [3:3]
        ODR3: u1 = 0x0,
        /// Port output data [4:4]
        ODR4: u1 = 0x0,
        /// Port output data [5:5]
        ODR5: u1 = 0x0,
        /// Port output data [6:6]
        ODR6: u1 = 0x0,
        /// Port output data [7:7]
        ODR7: u1 = 0x0,
        /// Port output data [8:8]
        ODR8: u1 = 0x0,
        /// Port output data [9:9]
        ODR9: u1 = 0x0,
        /// Port output data [10:10]
        ODR10: u1 = 0x0,
        /// Port output data [11:11]
        ODR11: u1 = 0x0,
        /// Port output data [12:12]
        ODR12: u1 = 0x0,
        /// Port output data [13:13]
        ODR13: u1 = 0x0,
        /// Port output data [14:14]
        ODR14: u1 = 0x0,
        /// Port output data [15:15]
        ODR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4001140C);
    /// Port bit set/reset register (GPIOn_BSRR)
    pub const BSRR = reg.WO(packed struct(u32) {
        /// Set bit 0 [0:0]
        BS0: u1 = 0x0,
        /// Set bit 1 [1:1]
        BS1: u1 = 0x0,
        /// Set bit 1 [2:2]
        BS2: u1 = 0x0,
        /// Set bit 3 [3:3]
        BS3: u1 = 0x0,
        /// Set bit 4 [4:4]
        BS4: u1 = 0x0,
        /// Set bit 5 [5:5]
        BS5: u1 = 0x0,
        /// Set bit 6 [6:6]
        BS6: u1 = 0x0,
        /// Set bit 7 [7:7]
        BS7: u1 = 0x0,
        /// Set bit 8 [8:8]
        BS8: u1 = 0x0,
        /// Set bit 9 [9:9]
        BS9: u1 = 0x0,
        /// Set bit 10 [10:10]
        BS10: u1 = 0x0,
        /// Set bit 11 [11:11]
        BS11: u1 = 0x0,
        /// Set bit 12 [12:12]
        BS12: u1 = 0x0,
        /// Set bit 13 [13:13]
        BS13: u1 = 0x0,
        /// Set bit 14 [14:14]
        BS14: u1 = 0x0,
        /// Set bit 15 [15:15]
        BS15: u1 = 0x0,
        /// Reset bit 0 [16:16]
        BR0: u1 = 0x0,
        /// Reset bit 1 [17:17]
        BR1: u1 = 0x0,
        /// Reset bit 2 [18:18]
        BR2: u1 = 0x0,
        /// Reset bit 3 [19:19]
        BR3: u1 = 0x0,
        /// Reset bit 4 [20:20]
        BR4: u1 = 0x0,
        /// Reset bit 5 [21:21]
        BR5: u1 = 0x0,
        /// Reset bit 6 [22:22]
        BR6: u1 = 0x0,
        /// Reset bit 7 [23:23]
        BR7: u1 = 0x0,
        /// Reset bit 8 [24:24]
        BR8: u1 = 0x0,
        /// Reset bit 9 [25:25]
        BR9: u1 = 0x0,
        /// Reset bit 10 [26:26]
        BR10: u1 = 0x0,
        /// Reset bit 11 [27:27]
        BR11: u1 = 0x0,
        /// Reset bit 12 [28:28]
        BR12: u1 = 0x0,
        /// Reset bit 13 [29:29]
        BR13: u1 = 0x0,
        /// Reset bit 14 [30:30]
        BR14: u1 = 0x0,
        /// Reset bit 15 [31:31]
        BR15: u1 = 0x0,
    }).init(0x40011410);
    /// Port bit reset register (GPIOn_BRR)
    pub const BRR = reg.WO(packed struct(u32) {
        /// Reset bit 0 [0:0]
        BR0: u1 = 0x0,
        /// Reset bit 1 [1:1]
        BR1: u1 = 0x0,
        /// Reset bit 1 [2:2]
        BR2: u1 = 0x0,
        /// Reset bit 3 [3:3]
        BR3: u1 = 0x0,
        /// Reset bit 4 [4:4]
        BR4: u1 = 0x0,
        /// Reset bit 5 [5:5]
        BR5: u1 = 0x0,
        /// Reset bit 6 [6:6]
        BR6: u1 = 0x0,
        /// Reset bit 7 [7:7]
        BR7: u1 = 0x0,
        /// Reset bit 8 [8:8]
        BR8: u1 = 0x0,
        /// Reset bit 9 [9:9]
        BR9: u1 = 0x0,
        /// Reset bit 10 [10:10]
        BR10: u1 = 0x0,
        /// Reset bit 11 [11:11]
        BR11: u1 = 0x0,
        /// Reset bit 12 [12:12]
        BR12: u1 = 0x0,
        /// Reset bit 13 [13:13]
        BR13: u1 = 0x0,
        /// Reset bit 14 [14:14]
        BR14: u1 = 0x0,
        /// Reset bit 15 [15:15]
        BR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40011414);
    /// Port configuration lock register
    pub const LCKR = reg.RW(packed struct(u32) {
        /// Port A Lock bit 0 [0:0]
        LCK0: u1 = 0x0,
        /// Port A Lock bit 1 [1:1]
        LCK1: u1 = 0x0,
        /// Port A Lock bit 2 [2:2]
        LCK2: u1 = 0x0,
        /// Port A Lock bit 3 [3:3]
        LCK3: u1 = 0x0,
        /// Port A Lock bit 4 [4:4]
        LCK4: u1 = 0x0,
        /// Port A Lock bit 5 [5:5]
        LCK5: u1 = 0x0,
        /// Port A Lock bit 6 [6:6]
        LCK6: u1 = 0x0,
        /// Port A Lock bit 7 [7:7]
        LCK7: u1 = 0x0,
        /// Port A Lock bit 8 [8:8]
        LCK8: u1 = 0x0,
        /// Port A Lock bit 9 [9:9]
        LCK9: u1 = 0x0,
        /// Port A Lock bit 10 [10:10]
        LCK10: u1 = 0x0,
        /// Port A Lock bit 11 [11:11]
        LCK11: u1 = 0x0,
        /// Port A Lock bit 12 [12:12]
        LCK12: u1 = 0x0,
        /// Port A Lock bit 13 [13:13]
        LCK13: u1 = 0x0,
        /// Port A Lock bit 14 [14:14]
        LCK14: u1 = 0x0,
        /// Port A Lock bit 15 [15:15]
        LCK15: u1 = 0x0,
        /// Lock key [16:16]
        LCKK: u1 = 0x0,
        /// Reserved [17:31]
        _0: u15 = undefined,
    }).init(0x40011418);
};

pub const GPIOE = struct {
    pub const IRQ = struct {};
    /// Port configuration register low (GPIOn_CRL)
    pub const CRL = reg.RW(packed struct(u32) {
        /// Port n.0 mode bits [0:1]
        MODE0: u2 = 0x0,
        /// Port n.0 configuration bits [2:3]
        CNF0: u2 = 0x1,
        /// Port n.1 mode bits [4:5]
        MODE1: u2 = 0x0,
        /// Port n.1 configuration bits [6:7]
        CNF1: u2 = 0x1,
        /// Port n.2 mode bits [8:9]
        MODE2: u2 = 0x0,
        /// Port n.2 configuration bits [10:11]
        CNF2: u2 = 0x1,
        /// Port n.3 mode bits [12:13]
        MODE3: u2 = 0x0,
        /// Port n.3 configuration bits [14:15]
        CNF3: u2 = 0x1,
        /// Port n.4 mode bits [16:17]
        MODE4: u2 = 0x0,
        /// Port n.4 configuration bits [18:19]
        CNF4: u2 = 0x1,
        /// Port n.5 mode bits [20:21]
        MODE5: u2 = 0x0,
        /// Port n.5 configuration bits [22:23]
        CNF5: u2 = 0x1,
        /// Port n.6 mode bits [24:25]
        MODE6: u2 = 0x0,
        /// Port n.6 configuration bits [26:27]
        CNF6: u2 = 0x1,
        /// Port n.7 mode bits [28:29]
        MODE7: u2 = 0x0,
        /// Port n.7 configuration bits [30:31]
        CNF7: u2 = 0x1,
    }).init(0x40011800);
    /// Port configuration register high (GPIOn_CRL)
    pub const CRH = reg.RW(packed struct(u32) {
        /// Port n.8 mode bits [0:1]
        MODE8: u2 = 0x0,
        /// Port n.8 configuration bits [2:3]
        CNF8: u2 = 0x1,
        /// Port n.9 mode bits [4:5]
        MODE9: u2 = 0x0,
        /// Port n.9 configuration bits [6:7]
        CNF9: u2 = 0x1,
        /// Port n.10 mode bits [8:9]
        MODE10: u2 = 0x0,
        /// Port n.10 configuration bits [10:11]
        CNF10: u2 = 0x1,
        /// Port n.11 mode bits [12:13]
        MODE11: u2 = 0x0,
        /// Port n.11 configuration bits [14:15]
        CNF11: u2 = 0x1,
        /// Port n.12 mode bits [16:17]
        MODE12: u2 = 0x0,
        /// Port n.12 configuration bits [18:19]
        CNF12: u2 = 0x1,
        /// Port n.13 mode bits [20:21]
        MODE13: u2 = 0x0,
        /// Port n.13 configuration bits [22:23]
        CNF13: u2 = 0x1,
        /// Port n.14 mode bits [24:25]
        MODE14: u2 = 0x0,
        /// Port n.14 configuration bits [26:27]
        CNF14: u2 = 0x1,
        /// Port n.15 mode bits [28:29]
        MODE15: u2 = 0x0,
        /// Port n.15 configuration bits [30:31]
        CNF15: u2 = 0x1,
    }).init(0x40011804);
    /// Port input data register (GPIOn_IDR)
    pub const IDR = reg.RO(packed struct(u32) {
        /// Port input data [0:0]
        IDR0: u1 = 0x0,
        /// Port input data [1:1]
        IDR1: u1 = 0x0,
        /// Port input data [2:2]
        IDR2: u1 = 0x0,
        /// Port input data [3:3]
        IDR3: u1 = 0x0,
        /// Port input data [4:4]
        IDR4: u1 = 0x0,
        /// Port input data [5:5]
        IDR5: u1 = 0x0,
        /// Port input data [6:6]
        IDR6: u1 = 0x0,
        /// Port input data [7:7]
        IDR7: u1 = 0x0,
        /// Port input data [8:8]
        IDR8: u1 = 0x0,
        /// Port input data [9:9]
        IDR9: u1 = 0x0,
        /// Port input data [10:10]
        IDR10: u1 = 0x0,
        /// Port input data [11:11]
        IDR11: u1 = 0x0,
        /// Port input data [12:12]
        IDR12: u1 = 0x0,
        /// Port input data [13:13]
        IDR13: u1 = 0x0,
        /// Port input data [14:14]
        IDR14: u1 = 0x0,
        /// Port input data [15:15]
        IDR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40011808);
    /// Port output data register (GPIOn_ODR)
    pub const ODR = reg.RW(packed struct(u32) {
        /// Port output data [0:0]
        ODR0: u1 = 0x0,
        /// Port output data [1:1]
        ODR1: u1 = 0x0,
        /// Port output data [2:2]
        ODR2: u1 = 0x0,
        /// Port output data [3:3]
        ODR3: u1 = 0x0,
        /// Port output data [4:4]
        ODR4: u1 = 0x0,
        /// Port output data [5:5]
        ODR5: u1 = 0x0,
        /// Port output data [6:6]
        ODR6: u1 = 0x0,
        /// Port output data [7:7]
        ODR7: u1 = 0x0,
        /// Port output data [8:8]
        ODR8: u1 = 0x0,
        /// Port output data [9:9]
        ODR9: u1 = 0x0,
        /// Port output data [10:10]
        ODR10: u1 = 0x0,
        /// Port output data [11:11]
        ODR11: u1 = 0x0,
        /// Port output data [12:12]
        ODR12: u1 = 0x0,
        /// Port output data [13:13]
        ODR13: u1 = 0x0,
        /// Port output data [14:14]
        ODR14: u1 = 0x0,
        /// Port output data [15:15]
        ODR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4001180C);
    /// Port bit set/reset register (GPIOn_BSRR)
    pub const BSRR = reg.WO(packed struct(u32) {
        /// Set bit 0 [0:0]
        BS0: u1 = 0x0,
        /// Set bit 1 [1:1]
        BS1: u1 = 0x0,
        /// Set bit 1 [2:2]
        BS2: u1 = 0x0,
        /// Set bit 3 [3:3]
        BS3: u1 = 0x0,
        /// Set bit 4 [4:4]
        BS4: u1 = 0x0,
        /// Set bit 5 [5:5]
        BS5: u1 = 0x0,
        /// Set bit 6 [6:6]
        BS6: u1 = 0x0,
        /// Set bit 7 [7:7]
        BS7: u1 = 0x0,
        /// Set bit 8 [8:8]
        BS8: u1 = 0x0,
        /// Set bit 9 [9:9]
        BS9: u1 = 0x0,
        /// Set bit 10 [10:10]
        BS10: u1 = 0x0,
        /// Set bit 11 [11:11]
        BS11: u1 = 0x0,
        /// Set bit 12 [12:12]
        BS12: u1 = 0x0,
        /// Set bit 13 [13:13]
        BS13: u1 = 0x0,
        /// Set bit 14 [14:14]
        BS14: u1 = 0x0,
        /// Set bit 15 [15:15]
        BS15: u1 = 0x0,
        /// Reset bit 0 [16:16]
        BR0: u1 = 0x0,
        /// Reset bit 1 [17:17]
        BR1: u1 = 0x0,
        /// Reset bit 2 [18:18]
        BR2: u1 = 0x0,
        /// Reset bit 3 [19:19]
        BR3: u1 = 0x0,
        /// Reset bit 4 [20:20]
        BR4: u1 = 0x0,
        /// Reset bit 5 [21:21]
        BR5: u1 = 0x0,
        /// Reset bit 6 [22:22]
        BR6: u1 = 0x0,
        /// Reset bit 7 [23:23]
        BR7: u1 = 0x0,
        /// Reset bit 8 [24:24]
        BR8: u1 = 0x0,
        /// Reset bit 9 [25:25]
        BR9: u1 = 0x0,
        /// Reset bit 10 [26:26]
        BR10: u1 = 0x0,
        /// Reset bit 11 [27:27]
        BR11: u1 = 0x0,
        /// Reset bit 12 [28:28]
        BR12: u1 = 0x0,
        /// Reset bit 13 [29:29]
        BR13: u1 = 0x0,
        /// Reset bit 14 [30:30]
        BR14: u1 = 0x0,
        /// Reset bit 15 [31:31]
        BR15: u1 = 0x0,
    }).init(0x40011810);
    /// Port bit reset register (GPIOn_BRR)
    pub const BRR = reg.WO(packed struct(u32) {
        /// Reset bit 0 [0:0]
        BR0: u1 = 0x0,
        /// Reset bit 1 [1:1]
        BR1: u1 = 0x0,
        /// Reset bit 1 [2:2]
        BR2: u1 = 0x0,
        /// Reset bit 3 [3:3]
        BR3: u1 = 0x0,
        /// Reset bit 4 [4:4]
        BR4: u1 = 0x0,
        /// Reset bit 5 [5:5]
        BR5: u1 = 0x0,
        /// Reset bit 6 [6:6]
        BR6: u1 = 0x0,
        /// Reset bit 7 [7:7]
        BR7: u1 = 0x0,
        /// Reset bit 8 [8:8]
        BR8: u1 = 0x0,
        /// Reset bit 9 [9:9]
        BR9: u1 = 0x0,
        /// Reset bit 10 [10:10]
        BR10: u1 = 0x0,
        /// Reset bit 11 [11:11]
        BR11: u1 = 0x0,
        /// Reset bit 12 [12:12]
        BR12: u1 = 0x0,
        /// Reset bit 13 [13:13]
        BR13: u1 = 0x0,
        /// Reset bit 14 [14:14]
        BR14: u1 = 0x0,
        /// Reset bit 15 [15:15]
        BR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40011814);
    /// Port configuration lock register
    pub const LCKR = reg.RW(packed struct(u32) {
        /// Port A Lock bit 0 [0:0]
        LCK0: u1 = 0x0,
        /// Port A Lock bit 1 [1:1]
        LCK1: u1 = 0x0,
        /// Port A Lock bit 2 [2:2]
        LCK2: u1 = 0x0,
        /// Port A Lock bit 3 [3:3]
        LCK3: u1 = 0x0,
        /// Port A Lock bit 4 [4:4]
        LCK4: u1 = 0x0,
        /// Port A Lock bit 5 [5:5]
        LCK5: u1 = 0x0,
        /// Port A Lock bit 6 [6:6]
        LCK6: u1 = 0x0,
        /// Port A Lock bit 7 [7:7]
        LCK7: u1 = 0x0,
        /// Port A Lock bit 8 [8:8]
        LCK8: u1 = 0x0,
        /// Port A Lock bit 9 [9:9]
        LCK9: u1 = 0x0,
        /// Port A Lock bit 10 [10:10]
        LCK10: u1 = 0x0,
        /// Port A Lock bit 11 [11:11]
        LCK11: u1 = 0x0,
        /// Port A Lock bit 12 [12:12]
        LCK12: u1 = 0x0,
        /// Port A Lock bit 13 [13:13]
        LCK13: u1 = 0x0,
        /// Port A Lock bit 14 [14:14]
        LCK14: u1 = 0x0,
        /// Port A Lock bit 15 [15:15]
        LCK15: u1 = 0x0,
        /// Lock key [16:16]
        LCKK: u1 = 0x0,
        /// Reserved [17:31]
        _0: u15 = undefined,
    }).init(0x40011818);
};

pub const GPIOF = struct {
    pub const IRQ = struct {};
    /// Port configuration register low (GPIOn_CRL)
    pub const CRL = reg.RW(packed struct(u32) {
        /// Port n.0 mode bits [0:1]
        MODE0: u2 = 0x0,
        /// Port n.0 configuration bits [2:3]
        CNF0: u2 = 0x1,
        /// Port n.1 mode bits [4:5]
        MODE1: u2 = 0x0,
        /// Port n.1 configuration bits [6:7]
        CNF1: u2 = 0x1,
        /// Port n.2 mode bits [8:9]
        MODE2: u2 = 0x0,
        /// Port n.2 configuration bits [10:11]
        CNF2: u2 = 0x1,
        /// Port n.3 mode bits [12:13]
        MODE3: u2 = 0x0,
        /// Port n.3 configuration bits [14:15]
        CNF3: u2 = 0x1,
        /// Port n.4 mode bits [16:17]
        MODE4: u2 = 0x0,
        /// Port n.4 configuration bits [18:19]
        CNF4: u2 = 0x1,
        /// Port n.5 mode bits [20:21]
        MODE5: u2 = 0x0,
        /// Port n.5 configuration bits [22:23]
        CNF5: u2 = 0x1,
        /// Port n.6 mode bits [24:25]
        MODE6: u2 = 0x0,
        /// Port n.6 configuration bits [26:27]
        CNF6: u2 = 0x1,
        /// Port n.7 mode bits [28:29]
        MODE7: u2 = 0x0,
        /// Port n.7 configuration bits [30:31]
        CNF7: u2 = 0x1,
    }).init(0x40011C00);
    /// Port configuration register high (GPIOn_CRL)
    pub const CRH = reg.RW(packed struct(u32) {
        /// Port n.8 mode bits [0:1]
        MODE8: u2 = 0x0,
        /// Port n.8 configuration bits [2:3]
        CNF8: u2 = 0x1,
        /// Port n.9 mode bits [4:5]
        MODE9: u2 = 0x0,
        /// Port n.9 configuration bits [6:7]
        CNF9: u2 = 0x1,
        /// Port n.10 mode bits [8:9]
        MODE10: u2 = 0x0,
        /// Port n.10 configuration bits [10:11]
        CNF10: u2 = 0x1,
        /// Port n.11 mode bits [12:13]
        MODE11: u2 = 0x0,
        /// Port n.11 configuration bits [14:15]
        CNF11: u2 = 0x1,
        /// Port n.12 mode bits [16:17]
        MODE12: u2 = 0x0,
        /// Port n.12 configuration bits [18:19]
        CNF12: u2 = 0x1,
        /// Port n.13 mode bits [20:21]
        MODE13: u2 = 0x0,
        /// Port n.13 configuration bits [22:23]
        CNF13: u2 = 0x1,
        /// Port n.14 mode bits [24:25]
        MODE14: u2 = 0x0,
        /// Port n.14 configuration bits [26:27]
        CNF14: u2 = 0x1,
        /// Port n.15 mode bits [28:29]
        MODE15: u2 = 0x0,
        /// Port n.15 configuration bits [30:31]
        CNF15: u2 = 0x1,
    }).init(0x40011C04);
    /// Port input data register (GPIOn_IDR)
    pub const IDR = reg.RO(packed struct(u32) {
        /// Port input data [0:0]
        IDR0: u1 = 0x0,
        /// Port input data [1:1]
        IDR1: u1 = 0x0,
        /// Port input data [2:2]
        IDR2: u1 = 0x0,
        /// Port input data [3:3]
        IDR3: u1 = 0x0,
        /// Port input data [4:4]
        IDR4: u1 = 0x0,
        /// Port input data [5:5]
        IDR5: u1 = 0x0,
        /// Port input data [6:6]
        IDR6: u1 = 0x0,
        /// Port input data [7:7]
        IDR7: u1 = 0x0,
        /// Port input data [8:8]
        IDR8: u1 = 0x0,
        /// Port input data [9:9]
        IDR9: u1 = 0x0,
        /// Port input data [10:10]
        IDR10: u1 = 0x0,
        /// Port input data [11:11]
        IDR11: u1 = 0x0,
        /// Port input data [12:12]
        IDR12: u1 = 0x0,
        /// Port input data [13:13]
        IDR13: u1 = 0x0,
        /// Port input data [14:14]
        IDR14: u1 = 0x0,
        /// Port input data [15:15]
        IDR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40011C08);
    /// Port output data register (GPIOn_ODR)
    pub const ODR = reg.RW(packed struct(u32) {
        /// Port output data [0:0]
        ODR0: u1 = 0x0,
        /// Port output data [1:1]
        ODR1: u1 = 0x0,
        /// Port output data [2:2]
        ODR2: u1 = 0x0,
        /// Port output data [3:3]
        ODR3: u1 = 0x0,
        /// Port output data [4:4]
        ODR4: u1 = 0x0,
        /// Port output data [5:5]
        ODR5: u1 = 0x0,
        /// Port output data [6:6]
        ODR6: u1 = 0x0,
        /// Port output data [7:7]
        ODR7: u1 = 0x0,
        /// Port output data [8:8]
        ODR8: u1 = 0x0,
        /// Port output data [9:9]
        ODR9: u1 = 0x0,
        /// Port output data [10:10]
        ODR10: u1 = 0x0,
        /// Port output data [11:11]
        ODR11: u1 = 0x0,
        /// Port output data [12:12]
        ODR12: u1 = 0x0,
        /// Port output data [13:13]
        ODR13: u1 = 0x0,
        /// Port output data [14:14]
        ODR14: u1 = 0x0,
        /// Port output data [15:15]
        ODR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40011C0C);
    /// Port bit set/reset register (GPIOn_BSRR)
    pub const BSRR = reg.WO(packed struct(u32) {
        /// Set bit 0 [0:0]
        BS0: u1 = 0x0,
        /// Set bit 1 [1:1]
        BS1: u1 = 0x0,
        /// Set bit 1 [2:2]
        BS2: u1 = 0x0,
        /// Set bit 3 [3:3]
        BS3: u1 = 0x0,
        /// Set bit 4 [4:4]
        BS4: u1 = 0x0,
        /// Set bit 5 [5:5]
        BS5: u1 = 0x0,
        /// Set bit 6 [6:6]
        BS6: u1 = 0x0,
        /// Set bit 7 [7:7]
        BS7: u1 = 0x0,
        /// Set bit 8 [8:8]
        BS8: u1 = 0x0,
        /// Set bit 9 [9:9]
        BS9: u1 = 0x0,
        /// Set bit 10 [10:10]
        BS10: u1 = 0x0,
        /// Set bit 11 [11:11]
        BS11: u1 = 0x0,
        /// Set bit 12 [12:12]
        BS12: u1 = 0x0,
        /// Set bit 13 [13:13]
        BS13: u1 = 0x0,
        /// Set bit 14 [14:14]
        BS14: u1 = 0x0,
        /// Set bit 15 [15:15]
        BS15: u1 = 0x0,
        /// Reset bit 0 [16:16]
        BR0: u1 = 0x0,
        /// Reset bit 1 [17:17]
        BR1: u1 = 0x0,
        /// Reset bit 2 [18:18]
        BR2: u1 = 0x0,
        /// Reset bit 3 [19:19]
        BR3: u1 = 0x0,
        /// Reset bit 4 [20:20]
        BR4: u1 = 0x0,
        /// Reset bit 5 [21:21]
        BR5: u1 = 0x0,
        /// Reset bit 6 [22:22]
        BR6: u1 = 0x0,
        /// Reset bit 7 [23:23]
        BR7: u1 = 0x0,
        /// Reset bit 8 [24:24]
        BR8: u1 = 0x0,
        /// Reset bit 9 [25:25]
        BR9: u1 = 0x0,
        /// Reset bit 10 [26:26]
        BR10: u1 = 0x0,
        /// Reset bit 11 [27:27]
        BR11: u1 = 0x0,
        /// Reset bit 12 [28:28]
        BR12: u1 = 0x0,
        /// Reset bit 13 [29:29]
        BR13: u1 = 0x0,
        /// Reset bit 14 [30:30]
        BR14: u1 = 0x0,
        /// Reset bit 15 [31:31]
        BR15: u1 = 0x0,
    }).init(0x40011C10);
    /// Port bit reset register (GPIOn_BRR)
    pub const BRR = reg.WO(packed struct(u32) {
        /// Reset bit 0 [0:0]
        BR0: u1 = 0x0,
        /// Reset bit 1 [1:1]
        BR1: u1 = 0x0,
        /// Reset bit 1 [2:2]
        BR2: u1 = 0x0,
        /// Reset bit 3 [3:3]
        BR3: u1 = 0x0,
        /// Reset bit 4 [4:4]
        BR4: u1 = 0x0,
        /// Reset bit 5 [5:5]
        BR5: u1 = 0x0,
        /// Reset bit 6 [6:6]
        BR6: u1 = 0x0,
        /// Reset bit 7 [7:7]
        BR7: u1 = 0x0,
        /// Reset bit 8 [8:8]
        BR8: u1 = 0x0,
        /// Reset bit 9 [9:9]
        BR9: u1 = 0x0,
        /// Reset bit 10 [10:10]
        BR10: u1 = 0x0,
        /// Reset bit 11 [11:11]
        BR11: u1 = 0x0,
        /// Reset bit 12 [12:12]
        BR12: u1 = 0x0,
        /// Reset bit 13 [13:13]
        BR13: u1 = 0x0,
        /// Reset bit 14 [14:14]
        BR14: u1 = 0x0,
        /// Reset bit 15 [15:15]
        BR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40011C14);
    /// Port configuration lock register
    pub const LCKR = reg.RW(packed struct(u32) {
        /// Port A Lock bit 0 [0:0]
        LCK0: u1 = 0x0,
        /// Port A Lock bit 1 [1:1]
        LCK1: u1 = 0x0,
        /// Port A Lock bit 2 [2:2]
        LCK2: u1 = 0x0,
        /// Port A Lock bit 3 [3:3]
        LCK3: u1 = 0x0,
        /// Port A Lock bit 4 [4:4]
        LCK4: u1 = 0x0,
        /// Port A Lock bit 5 [5:5]
        LCK5: u1 = 0x0,
        /// Port A Lock bit 6 [6:6]
        LCK6: u1 = 0x0,
        /// Port A Lock bit 7 [7:7]
        LCK7: u1 = 0x0,
        /// Port A Lock bit 8 [8:8]
        LCK8: u1 = 0x0,
        /// Port A Lock bit 9 [9:9]
        LCK9: u1 = 0x0,
        /// Port A Lock bit 10 [10:10]
        LCK10: u1 = 0x0,
        /// Port A Lock bit 11 [11:11]
        LCK11: u1 = 0x0,
        /// Port A Lock bit 12 [12:12]
        LCK12: u1 = 0x0,
        /// Port A Lock bit 13 [13:13]
        LCK13: u1 = 0x0,
        /// Port A Lock bit 14 [14:14]
        LCK14: u1 = 0x0,
        /// Port A Lock bit 15 [15:15]
        LCK15: u1 = 0x0,
        /// Lock key [16:16]
        LCKK: u1 = 0x0,
        /// Reserved [17:31]
        _0: u15 = undefined,
    }).init(0x40011C18);
};

pub const GPIOG = struct {
    pub const IRQ = struct {};
    /// Port configuration register low (GPIOn_CRL)
    pub const CRL = reg.RW(packed struct(u32) {
        /// Port n.0 mode bits [0:1]
        MODE0: u2 = 0x0,
        /// Port n.0 configuration bits [2:3]
        CNF0: u2 = 0x1,
        /// Port n.1 mode bits [4:5]
        MODE1: u2 = 0x0,
        /// Port n.1 configuration bits [6:7]
        CNF1: u2 = 0x1,
        /// Port n.2 mode bits [8:9]
        MODE2: u2 = 0x0,
        /// Port n.2 configuration bits [10:11]
        CNF2: u2 = 0x1,
        /// Port n.3 mode bits [12:13]
        MODE3: u2 = 0x0,
        /// Port n.3 configuration bits [14:15]
        CNF3: u2 = 0x1,
        /// Port n.4 mode bits [16:17]
        MODE4: u2 = 0x0,
        /// Port n.4 configuration bits [18:19]
        CNF4: u2 = 0x1,
        /// Port n.5 mode bits [20:21]
        MODE5: u2 = 0x0,
        /// Port n.5 configuration bits [22:23]
        CNF5: u2 = 0x1,
        /// Port n.6 mode bits [24:25]
        MODE6: u2 = 0x0,
        /// Port n.6 configuration bits [26:27]
        CNF6: u2 = 0x1,
        /// Port n.7 mode bits [28:29]
        MODE7: u2 = 0x0,
        /// Port n.7 configuration bits [30:31]
        CNF7: u2 = 0x1,
    }).init(0x40012000);
    /// Port configuration register high (GPIOn_CRL)
    pub const CRH = reg.RW(packed struct(u32) {
        /// Port n.8 mode bits [0:1]
        MODE8: u2 = 0x0,
        /// Port n.8 configuration bits [2:3]
        CNF8: u2 = 0x1,
        /// Port n.9 mode bits [4:5]
        MODE9: u2 = 0x0,
        /// Port n.9 configuration bits [6:7]
        CNF9: u2 = 0x1,
        /// Port n.10 mode bits [8:9]
        MODE10: u2 = 0x0,
        /// Port n.10 configuration bits [10:11]
        CNF10: u2 = 0x1,
        /// Port n.11 mode bits [12:13]
        MODE11: u2 = 0x0,
        /// Port n.11 configuration bits [14:15]
        CNF11: u2 = 0x1,
        /// Port n.12 mode bits [16:17]
        MODE12: u2 = 0x0,
        /// Port n.12 configuration bits [18:19]
        CNF12: u2 = 0x1,
        /// Port n.13 mode bits [20:21]
        MODE13: u2 = 0x0,
        /// Port n.13 configuration bits [22:23]
        CNF13: u2 = 0x1,
        /// Port n.14 mode bits [24:25]
        MODE14: u2 = 0x0,
        /// Port n.14 configuration bits [26:27]
        CNF14: u2 = 0x1,
        /// Port n.15 mode bits [28:29]
        MODE15: u2 = 0x0,
        /// Port n.15 configuration bits [30:31]
        CNF15: u2 = 0x1,
    }).init(0x40012004);
    /// Port input data register (GPIOn_IDR)
    pub const IDR = reg.RO(packed struct(u32) {
        /// Port input data [0:0]
        IDR0: u1 = 0x0,
        /// Port input data [1:1]
        IDR1: u1 = 0x0,
        /// Port input data [2:2]
        IDR2: u1 = 0x0,
        /// Port input data [3:3]
        IDR3: u1 = 0x0,
        /// Port input data [4:4]
        IDR4: u1 = 0x0,
        /// Port input data [5:5]
        IDR5: u1 = 0x0,
        /// Port input data [6:6]
        IDR6: u1 = 0x0,
        /// Port input data [7:7]
        IDR7: u1 = 0x0,
        /// Port input data [8:8]
        IDR8: u1 = 0x0,
        /// Port input data [9:9]
        IDR9: u1 = 0x0,
        /// Port input data [10:10]
        IDR10: u1 = 0x0,
        /// Port input data [11:11]
        IDR11: u1 = 0x0,
        /// Port input data [12:12]
        IDR12: u1 = 0x0,
        /// Port input data [13:13]
        IDR13: u1 = 0x0,
        /// Port input data [14:14]
        IDR14: u1 = 0x0,
        /// Port input data [15:15]
        IDR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40012008);
    /// Port output data register (GPIOn_ODR)
    pub const ODR = reg.RW(packed struct(u32) {
        /// Port output data [0:0]
        ODR0: u1 = 0x0,
        /// Port output data [1:1]
        ODR1: u1 = 0x0,
        /// Port output data [2:2]
        ODR2: u1 = 0x0,
        /// Port output data [3:3]
        ODR3: u1 = 0x0,
        /// Port output data [4:4]
        ODR4: u1 = 0x0,
        /// Port output data [5:5]
        ODR5: u1 = 0x0,
        /// Port output data [6:6]
        ODR6: u1 = 0x0,
        /// Port output data [7:7]
        ODR7: u1 = 0x0,
        /// Port output data [8:8]
        ODR8: u1 = 0x0,
        /// Port output data [9:9]
        ODR9: u1 = 0x0,
        /// Port output data [10:10]
        ODR10: u1 = 0x0,
        /// Port output data [11:11]
        ODR11: u1 = 0x0,
        /// Port output data [12:12]
        ODR12: u1 = 0x0,
        /// Port output data [13:13]
        ODR13: u1 = 0x0,
        /// Port output data [14:14]
        ODR14: u1 = 0x0,
        /// Port output data [15:15]
        ODR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4001200C);
    /// Port bit set/reset register (GPIOn_BSRR)
    pub const BSRR = reg.WO(packed struct(u32) {
        /// Set bit 0 [0:0]
        BS0: u1 = 0x0,
        /// Set bit 1 [1:1]
        BS1: u1 = 0x0,
        /// Set bit 1 [2:2]
        BS2: u1 = 0x0,
        /// Set bit 3 [3:3]
        BS3: u1 = 0x0,
        /// Set bit 4 [4:4]
        BS4: u1 = 0x0,
        /// Set bit 5 [5:5]
        BS5: u1 = 0x0,
        /// Set bit 6 [6:6]
        BS6: u1 = 0x0,
        /// Set bit 7 [7:7]
        BS7: u1 = 0x0,
        /// Set bit 8 [8:8]
        BS8: u1 = 0x0,
        /// Set bit 9 [9:9]
        BS9: u1 = 0x0,
        /// Set bit 10 [10:10]
        BS10: u1 = 0x0,
        /// Set bit 11 [11:11]
        BS11: u1 = 0x0,
        /// Set bit 12 [12:12]
        BS12: u1 = 0x0,
        /// Set bit 13 [13:13]
        BS13: u1 = 0x0,
        /// Set bit 14 [14:14]
        BS14: u1 = 0x0,
        /// Set bit 15 [15:15]
        BS15: u1 = 0x0,
        /// Reset bit 0 [16:16]
        BR0: u1 = 0x0,
        /// Reset bit 1 [17:17]
        BR1: u1 = 0x0,
        /// Reset bit 2 [18:18]
        BR2: u1 = 0x0,
        /// Reset bit 3 [19:19]
        BR3: u1 = 0x0,
        /// Reset bit 4 [20:20]
        BR4: u1 = 0x0,
        /// Reset bit 5 [21:21]
        BR5: u1 = 0x0,
        /// Reset bit 6 [22:22]
        BR6: u1 = 0x0,
        /// Reset bit 7 [23:23]
        BR7: u1 = 0x0,
        /// Reset bit 8 [24:24]
        BR8: u1 = 0x0,
        /// Reset bit 9 [25:25]
        BR9: u1 = 0x0,
        /// Reset bit 10 [26:26]
        BR10: u1 = 0x0,
        /// Reset bit 11 [27:27]
        BR11: u1 = 0x0,
        /// Reset bit 12 [28:28]
        BR12: u1 = 0x0,
        /// Reset bit 13 [29:29]
        BR13: u1 = 0x0,
        /// Reset bit 14 [30:30]
        BR14: u1 = 0x0,
        /// Reset bit 15 [31:31]
        BR15: u1 = 0x0,
    }).init(0x40012010);
    /// Port bit reset register (GPIOn_BRR)
    pub const BRR = reg.WO(packed struct(u32) {
        /// Reset bit 0 [0:0]
        BR0: u1 = 0x0,
        /// Reset bit 1 [1:1]
        BR1: u1 = 0x0,
        /// Reset bit 1 [2:2]
        BR2: u1 = 0x0,
        /// Reset bit 3 [3:3]
        BR3: u1 = 0x0,
        /// Reset bit 4 [4:4]
        BR4: u1 = 0x0,
        /// Reset bit 5 [5:5]
        BR5: u1 = 0x0,
        /// Reset bit 6 [6:6]
        BR6: u1 = 0x0,
        /// Reset bit 7 [7:7]
        BR7: u1 = 0x0,
        /// Reset bit 8 [8:8]
        BR8: u1 = 0x0,
        /// Reset bit 9 [9:9]
        BR9: u1 = 0x0,
        /// Reset bit 10 [10:10]
        BR10: u1 = 0x0,
        /// Reset bit 11 [11:11]
        BR11: u1 = 0x0,
        /// Reset bit 12 [12:12]
        BR12: u1 = 0x0,
        /// Reset bit 13 [13:13]
        BR13: u1 = 0x0,
        /// Reset bit 14 [14:14]
        BR14: u1 = 0x0,
        /// Reset bit 15 [15:15]
        BR15: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40012014);
    /// Port configuration lock register
    pub const LCKR = reg.RW(packed struct(u32) {
        /// Port A Lock bit 0 [0:0]
        LCK0: u1 = 0x0,
        /// Port A Lock bit 1 [1:1]
        LCK1: u1 = 0x0,
        /// Port A Lock bit 2 [2:2]
        LCK2: u1 = 0x0,
        /// Port A Lock bit 3 [3:3]
        LCK3: u1 = 0x0,
        /// Port A Lock bit 4 [4:4]
        LCK4: u1 = 0x0,
        /// Port A Lock bit 5 [5:5]
        LCK5: u1 = 0x0,
        /// Port A Lock bit 6 [6:6]
        LCK6: u1 = 0x0,
        /// Port A Lock bit 7 [7:7]
        LCK7: u1 = 0x0,
        /// Port A Lock bit 8 [8:8]
        LCK8: u1 = 0x0,
        /// Port A Lock bit 9 [9:9]
        LCK9: u1 = 0x0,
        /// Port A Lock bit 10 [10:10]
        LCK10: u1 = 0x0,
        /// Port A Lock bit 11 [11:11]
        LCK11: u1 = 0x0,
        /// Port A Lock bit 12 [12:12]
        LCK12: u1 = 0x0,
        /// Port A Lock bit 13 [13:13]
        LCK13: u1 = 0x0,
        /// Port A Lock bit 14 [14:14]
        LCK14: u1 = 0x0,
        /// Port A Lock bit 15 [15:15]
        LCK15: u1 = 0x0,
        /// Lock key [16:16]
        LCKK: u1 = 0x0,
        /// Reserved [17:31]
        _0: u15 = undefined,
    }).init(0x40012018);
};

pub const AFIO = struct {
    pub const IRQ = struct {};
    /// Event Control Register (AFIO_EVCR)
    pub const EVCR = reg.RW(packed struct(u32) {
        /// Pin selection [0:3]
        PIN: u4 = 0x0,
        /// Port selection [4:6]
        PORT: u3 = 0x0,
        /// Event Output Enable [7:7]
        EVOE: u1 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x40010000);
    /// AF remap and debug I/O configuration register (AFIO_MAPR)
    pub const MAPR = reg.RW(packed struct(u32) {
        /// SPI1 remapping [0:0]
        SPI1_REMAP: u1 = 0x0,
        /// I2C1 remapping [1:1]
        I2C1_REMAP: u1 = 0x0,
        /// USART1 remapping [2:2]
        USART1_REMAP: u1 = 0x0,
        /// USART2 remapping [3:3]
        USART2_REMAP: u1 = 0x0,
        /// USART3 remapping [4:5]
        USART3_REMAP: u2 = 0x0,
        /// TIM1 remapping [6:7]
        TIM1_REMAP: u2 = 0x0,
        /// TIM2 remapping [8:9]
        TIM2_REMAP: u2 = 0x0,
        /// TIM3 remapping [10:11]
        TIM3_REMAP: u2 = 0x0,
        /// TIM4 remapping [12:12]
        TIM4_REMAP: u1 = 0x0,
        /// Reserved [13:14]
        _0: u2 = undefined,
        /// Port D0/Port D1 mapping on OSCIN/OSCOUT [15:15]
        PD01_REMAP: u1 = 0x0,
        /// Set and cleared by software [16:16]
        TIM5CH4_IREMAP: u1 = 0x0,
        /// Reserved [17:23]
        _1: u7 = undefined,
        /// Serial wire JTAG configuration [24:26]
        SWJ_CFG: u3 = 0x0,
        /// Reserved [27:31]
        _2: u5 = undefined,
    }).init(0x40010004);
    /// External interrupt configuration register 1 (AFIO_EXTICR1)
    pub const EXTICR1 = reg.RW(packed struct(u32) {
        /// EXTI0 configuration [0:3]
        EXTI0: u4 = 0x0,
        /// EXTI1 configuration [4:7]
        EXTI1: u4 = 0x0,
        /// EXTI2 configuration [8:11]
        EXTI2: u4 = 0x0,
        /// EXTI3 configuration [12:15]
        EXTI3: u4 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40010008);
    /// External interrupt configuration register 2 (AFIO_EXTICR2)
    pub const EXTICR2 = reg.RW(packed struct(u32) {
        /// EXTI4 configuration [0:3]
        EXTI4: u4 = 0x0,
        /// EXTI5 configuration [4:7]
        EXTI5: u4 = 0x0,
        /// EXTI6 configuration [8:11]
        EXTI6: u4 = 0x0,
        /// EXTI7 configuration [12:15]
        EXTI7: u4 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4001000C);
    /// External interrupt configuration register 3 (AFIO_EXTICR3)
    pub const EXTICR3 = reg.RW(packed struct(u32) {
        /// EXTI8 configuration [0:3]
        EXTI8: u4 = 0x0,
        /// EXTI9 configuration [4:7]
        EXTI9: u4 = 0x0,
        /// EXTI10 configuration [8:11]
        EXTI10: u4 = 0x0,
        /// EXTI11 configuration [12:15]
        EXTI11: u4 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40010010);
    /// External interrupt configuration register 4 (AFIO_EXTICR4)
    pub const EXTICR4 = reg.RW(packed struct(u32) {
        /// EXTI12 configuration [0:3]
        EXTI12: u4 = 0x0,
        /// EXTI13 configuration [4:7]
        EXTI13: u4 = 0x0,
        /// EXTI14 configuration [8:11]
        EXTI14: u4 = 0x0,
        /// EXTI15 configuration [12:15]
        EXTI15: u4 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40010014);
    /// AF remap and debug I/O configuration register
    pub const MAPR2 = reg.RW(packed struct(u32) {
        /// TIM15 remapping [0:0]
        TIM15_REMAP: u1 = 0x0,
        /// TIM16 remapping [1:1]
        TIM16_REMAP: u1 = 0x0,
        /// TIM17 remapping [2:2]
        TIM17_REMAP: u1 = 0x0,
        /// CEC remapping [3:3]
        CEC_REMAP: u1 = 0x0,
        /// TIM1 DMA remapping [4:4]
        TIM1_DMA_REMAP: u1 = 0x0,
        /// Reserved [5:7]
        _0: u3 = undefined,
        /// TIM13 remapping [8:8]
        TIM13_REMAP: u1 = 0x0,
        /// TIM14 remapping [9:9]
        TIM14_REMAP: u1 = 0x0,
        /// NADV connect/disconnect [10:10]
        FSMC_NADV: u1 = 0x0,
        /// TIM67_DAC DMA remapping [11:11]
        TIM67_DAC_DMA_REMAP: u1 = 0x0,
        /// TIM12 remapping [12:12]
        TIM12_REMAP: u1 = 0x0,
        /// Miscellaneous features remapping [13:13]
        MISC_REMAP: u1 = 0x0,
        /// Reserved [14:31]
        _1: u18 = undefined,
    }).init(0x4001001C);
};

pub const EXTI = struct {
    pub const IRQ = struct {
        /// Tamper and TimeStamp through EXTI line interrupts
        pub const TAMPER_STAMP = 2;
        /// EXTI Line0 interrupt
        pub const EXTI0 = 6;
        /// EXTI Line1 interrupt
        pub const EXTI1 = 7;
        /// EXTI Line2 interrupt
        pub const EXTI2 = 8;
        /// EXTI Line3 interrupt
        pub const EXTI3 = 9;
        /// EXTI Line4 interrupt
        pub const EXTI4 = 10;
        /// EXTI Line[9:5] interrupts
        pub const EXTI9_5 = 23;
        /// EXTI Line[15:10] interrupts
        pub const EXTI15_10 = 40;
    };
    /// Interrupt mask register (EXTI_IMR)
    pub const IMR = reg.RW(packed struct(u32) {
        /// Interrupt Mask on line 0 [0:0]
        MR0: u1 = 0x0,
        /// Interrupt Mask on line 1 [1:1]
        MR1: u1 = 0x0,
        /// Interrupt Mask on line 2 [2:2]
        MR2: u1 = 0x0,
        /// Interrupt Mask on line 3 [3:3]
        MR3: u1 = 0x0,
        /// Interrupt Mask on line 4 [4:4]
        MR4: u1 = 0x0,
        /// Interrupt Mask on line 5 [5:5]
        MR5: u1 = 0x0,
        /// Interrupt Mask on line 6 [6:6]
        MR6: u1 = 0x0,
        /// Interrupt Mask on line 7 [7:7]
        MR7: u1 = 0x0,
        /// Interrupt Mask on line 8 [8:8]
        MR8: u1 = 0x0,
        /// Interrupt Mask on line 9 [9:9]
        MR9: u1 = 0x0,
        /// Interrupt Mask on line 10 [10:10]
        MR10: u1 = 0x0,
        /// Interrupt Mask on line 11 [11:11]
        MR11: u1 = 0x0,
        /// Interrupt Mask on line 12 [12:12]
        MR12: u1 = 0x0,
        /// Interrupt Mask on line 13 [13:13]
        MR13: u1 = 0x0,
        /// Interrupt Mask on line 14 [14:14]
        MR14: u1 = 0x0,
        /// Interrupt Mask on line 15 [15:15]
        MR15: u1 = 0x0,
        /// Interrupt Mask on line 16 [16:16]
        MR16: u1 = 0x0,
        /// Interrupt Mask on line 17 [17:17]
        MR17: u1 = 0x0,
        /// Reserved [18:31]
        _0: u14 = undefined,
    }).init(0x40010400);
    /// Event mask register (EXTI_EMR)
    pub const EMR = reg.RW(packed struct(u32) {
        /// Event Mask on line 0 [0:0]
        MR0: u1 = 0x0,
        /// Event Mask on line 1 [1:1]
        MR1: u1 = 0x0,
        /// Event Mask on line 2 [2:2]
        MR2: u1 = 0x0,
        /// Event Mask on line 3 [3:3]
        MR3: u1 = 0x0,
        /// Event Mask on line 4 [4:4]
        MR4: u1 = 0x0,
        /// Event Mask on line 5 [5:5]
        MR5: u1 = 0x0,
        /// Event Mask on line 6 [6:6]
        MR6: u1 = 0x0,
        /// Event Mask on line 7 [7:7]
        MR7: u1 = 0x0,
        /// Event Mask on line 8 [8:8]
        MR8: u1 = 0x0,
        /// Event Mask on line 9 [9:9]
        MR9: u1 = 0x0,
        /// Event Mask on line 10 [10:10]
        MR10: u1 = 0x0,
        /// Event Mask on line 11 [11:11]
        MR11: u1 = 0x0,
        /// Event Mask on line 12 [12:12]
        MR12: u1 = 0x0,
        /// Event Mask on line 13 [13:13]
        MR13: u1 = 0x0,
        /// Event Mask on line 14 [14:14]
        MR14: u1 = 0x0,
        /// Event Mask on line 15 [15:15]
        MR15: u1 = 0x0,
        /// Event Mask on line 16 [16:16]
        MR16: u1 = 0x0,
        /// Event Mask on line 17 [17:17]
        MR17: u1 = 0x0,
        /// Reserved [18:31]
        _0: u14 = undefined,
    }).init(0x40010404);
    /// Rising Trigger selection register (EXTI_RTSR)
    pub const RTSR = reg.RW(packed struct(u32) {
        /// Rising trigger event configuration of line 0 [0:0]
        TR0: u1 = 0x0,
        /// Rising trigger event configuration of line 1 [1:1]
        TR1: u1 = 0x0,
        /// Rising trigger event configuration of line 2 [2:2]
        TR2: u1 = 0x0,
        /// Rising trigger event configuration of line 3 [3:3]
        TR3: u1 = 0x0,
        /// Rising trigger event configuration of line 4 [4:4]
        TR4: u1 = 0x0,
        /// Rising trigger event configuration of line 5 [5:5]
        TR5: u1 = 0x0,
        /// Rising trigger event configuration of line 6 [6:6]
        TR6: u1 = 0x0,
        /// Rising trigger event configuration of line 7 [7:7]
        TR7: u1 = 0x0,
        /// Rising trigger event configuration of line 8 [8:8]
        TR8: u1 = 0x0,
        /// Rising trigger event configuration of line 9 [9:9]
        TR9: u1 = 0x0,
        /// Rising trigger event configuration of line 10 [10:10]
        TR10: u1 = 0x0,
        /// Rising trigger event configuration of line 11 [11:11]
        TR11: u1 = 0x0,
        /// Rising trigger event configuration of line 12 [12:12]
        TR12: u1 = 0x0,
        /// Rising trigger event configuration of line 13 [13:13]
        TR13: u1 = 0x0,
        /// Rising trigger event configuration of line 14 [14:14]
        TR14: u1 = 0x0,
        /// Rising trigger event configuration of line 15 [15:15]
        TR15: u1 = 0x0,
        /// Rising trigger event configuration of line 16 [16:16]
        TR16: u1 = 0x0,
        /// Rising trigger event configuration of line 17 [17:17]
        TR17: u1 = 0x0,
        /// Reserved [18:31]
        _0: u14 = undefined,
    }).init(0x40010408);
    /// Falling Trigger selection register (EXTI_FTSR)
    pub const FTSR = reg.RW(packed struct(u32) {
        /// Falling trigger event configuration of line 0 [0:0]
        TR0: u1 = 0x0,
        /// Falling trigger event configuration of line 1 [1:1]
        TR1: u1 = 0x0,
        /// Falling trigger event configuration of line 2 [2:2]
        TR2: u1 = 0x0,
        /// Falling trigger event configuration of line 3 [3:3]
        TR3: u1 = 0x0,
        /// Falling trigger event configuration of line 4 [4:4]
        TR4: u1 = 0x0,
        /// Falling trigger event configuration of line 5 [5:5]
        TR5: u1 = 0x0,
        /// Falling trigger event configuration of line 6 [6:6]
        TR6: u1 = 0x0,
        /// Falling trigger event configuration of line 7 [7:7]
        TR7: u1 = 0x0,
        /// Falling trigger event configuration of line 8 [8:8]
        TR8: u1 = 0x0,
        /// Falling trigger event configuration of line 9 [9:9]
        TR9: u1 = 0x0,
        /// Falling trigger event configuration of line 10 [10:10]
        TR10: u1 = 0x0,
        /// Falling trigger event configuration of line 11 [11:11]
        TR11: u1 = 0x0,
        /// Falling trigger event configuration of line 12 [12:12]
        TR12: u1 = 0x0,
        /// Falling trigger event configuration of line 13 [13:13]
        TR13: u1 = 0x0,
        /// Falling trigger event configuration of line 14 [14:14]
        TR14: u1 = 0x0,
        /// Falling trigger event configuration of line 15 [15:15]
        TR15: u1 = 0x0,
        /// Falling trigger event configuration of line 16 [16:16]
        TR16: u1 = 0x0,
        /// Falling trigger event configuration of line 17 [17:17]
        TR17: u1 = 0x0,
        /// Reserved [18:31]
        _0: u14 = undefined,
    }).init(0x4001040C);
    /// Software interrupt event register (EXTI_SWIER)
    pub const SWIER = reg.RW(packed struct(u32) {
        /// Software Interrupt on line 0 [0:0]
        SWIER0: u1 = 0x0,
        /// Software Interrupt on line 1 [1:1]
        SWIER1: u1 = 0x0,
        /// Software Interrupt on line 2 [2:2]
        SWIER2: u1 = 0x0,
        /// Software Interrupt on line 3 [3:3]
        SWIER3: u1 = 0x0,
        /// Software Interrupt on line 4 [4:4]
        SWIER4: u1 = 0x0,
        /// Software Interrupt on line 5 [5:5]
        SWIER5: u1 = 0x0,
        /// Software Interrupt on line 6 [6:6]
        SWIER6: u1 = 0x0,
        /// Software Interrupt on line 7 [7:7]
        SWIER7: u1 = 0x0,
        /// Software Interrupt on line 8 [8:8]
        SWIER8: u1 = 0x0,
        /// Software Interrupt on line 9 [9:9]
        SWIER9: u1 = 0x0,
        /// Software Interrupt on line 10 [10:10]
        SWIER10: u1 = 0x0,
        /// Software Interrupt on line 11 [11:11]
        SWIER11: u1 = 0x0,
        /// Software Interrupt on line 12 [12:12]
        SWIER12: u1 = 0x0,
        /// Software Interrupt on line 13 [13:13]
        SWIER13: u1 = 0x0,
        /// Software Interrupt on line 14 [14:14]
        SWIER14: u1 = 0x0,
        /// Software Interrupt on line 15 [15:15]
        SWIER15: u1 = 0x0,
        /// Software Interrupt on line 16 [16:16]
        SWIER16: u1 = 0x0,
        /// Software Interrupt on line 17 [17:17]
        SWIER17: u1 = 0x0,
        /// Reserved [18:31]
        _0: u14 = undefined,
    }).init(0x40010410);
    /// Pending register (EXTI_PR)
    pub const PR = reg.RW(packed struct(u32) {
        /// Pending bit 0 [0:0]
        PR0: u1 = 0x0,
        /// Pending bit 1 [1:1]
        PR1: u1 = 0x0,
        /// Pending bit 2 [2:2]
        PR2: u1 = 0x0,
        /// Pending bit 3 [3:3]
        PR3: u1 = 0x0,
        /// Pending bit 4 [4:4]
        PR4: u1 = 0x0,
        /// Pending bit 5 [5:5]
        PR5: u1 = 0x0,
        /// Pending bit 6 [6:6]
        PR6: u1 = 0x0,
        /// Pending bit 7 [7:7]
        PR7: u1 = 0x0,
        /// Pending bit 8 [8:8]
        PR8: u1 = 0x0,
        /// Pending bit 9 [9:9]
        PR9: u1 = 0x0,
        /// Pending bit 10 [10:10]
        PR10: u1 = 0x0,
        /// Pending bit 11 [11:11]
        PR11: u1 = 0x0,
        /// Pending bit 12 [12:12]
        PR12: u1 = 0x0,
        /// Pending bit 13 [13:13]
        PR13: u1 = 0x0,
        /// Pending bit 14 [14:14]
        PR14: u1 = 0x0,
        /// Pending bit 15 [15:15]
        PR15: u1 = 0x0,
        /// Pending bit 16 [16:16]
        PR16: u1 = 0x0,
        /// Pending bit 17 [17:17]
        PR17: u1 = 0x0,
        /// Reserved [18:31]
        _0: u14 = undefined,
    }).init(0x40010414);
};

pub const DMA1 = struct {
    pub const IRQ = struct {
        /// DMA1 Channel1 global interrupt
        pub const DMA1_Channel1 = 11;
        /// DMA1 Channel2 global interrupt
        pub const DMA1_Channel2 = 12;
        /// DMA1 Channel3 global interrupt
        pub const DMA1_Channel3 = 13;
        /// DMA1 Channel4 global interrupt
        pub const DMA1_Channel4 = 14;
        /// DMA1 Channel5 global interrupt
        pub const DMA1_Channel5 = 15;
        /// DMA1 Channel6 global interrupt
        pub const DMA1_Channel6 = 16;
        /// DMA1 Channel7 global interrupt
        pub const DMA1_Channel7 = 17;
    };
    /// DMA interrupt status register (DMA_ISR)
    pub const ISR = reg.RO(packed struct(u32) {
        /// Channel 1 Global interrupt flag [0:0]
        GIF1: u1 = 0x0,
        /// Channel 1 Transfer Complete flag [1:1]
        TCIF1: u1 = 0x0,
        /// Channel 1 Half Transfer Complete flag [2:2]
        HTIF1: u1 = 0x0,
        /// Channel 1 Transfer Error flag [3:3]
        TEIF1: u1 = 0x0,
        /// Channel 2 Global interrupt flag [4:4]
        GIF2: u1 = 0x0,
        /// Channel 2 Transfer Complete flag [5:5]
        TCIF2: u1 = 0x0,
        /// Channel 2 Half Transfer Complete flag [6:6]
        HTIF2: u1 = 0x0,
        /// Channel 2 Transfer Error flag [7:7]
        TEIF2: u1 = 0x0,
        /// Channel 3 Global interrupt flag [8:8]
        GIF3: u1 = 0x0,
        /// Channel 3 Transfer Complete flag [9:9]
        TCIF3: u1 = 0x0,
        /// Channel 3 Half Transfer Complete flag [10:10]
        HTIF3: u1 = 0x0,
        /// Channel 3 Transfer Error flag [11:11]
        TEIF3: u1 = 0x0,
        /// Channel 4 Global interrupt flag [12:12]
        GIF4: u1 = 0x0,
        /// Channel 4 Transfer Complete flag [13:13]
        TCIF4: u1 = 0x0,
        /// Channel 4 Half Transfer Complete flag [14:14]
        HTIF4: u1 = 0x0,
        /// Channel 4 Transfer Error flag [15:15]
        TEIF4: u1 = 0x0,
        /// Channel 5 Global interrupt flag [16:16]
        GIF5: u1 = 0x0,
        /// Channel 5 Transfer Complete flag [17:17]
        TCIF5: u1 = 0x0,
        /// Channel 5 Half Transfer Complete flag [18:18]
        HTIF5: u1 = 0x0,
        /// Channel 5 Transfer Error flag [19:19]
        TEIF5: u1 = 0x0,
        /// Channel 6 Global interrupt flag [20:20]
        GIF6: u1 = 0x0,
        /// Channel 6 Transfer Complete flag [21:21]
        TCIF6: u1 = 0x0,
        /// Channel 6 Half Transfer Complete flag [22:22]
        HTIF6: u1 = 0x0,
        /// Channel 6 Transfer Error flag [23:23]
        TEIF6: u1 = 0x0,
        /// Channel 7 Global interrupt flag [24:24]
        GIF7: u1 = 0x0,
        /// Channel 7 Transfer Complete flag [25:25]
        TCIF7: u1 = 0x0,
        /// Channel 7 Half Transfer Complete flag [26:26]
        HTIF7: u1 = 0x0,
        /// Channel 7 Transfer Error flag [27:27]
        TEIF7: u1 = 0x0,
        /// Reserved [28:31]
        _0: u4 = undefined,
    }).init(0x40020000);
    /// DMA interrupt flag clear register (DMA_IFCR)
    pub const IFCR = reg.WO(packed struct(u32) {
        /// Channel 1 Global interrupt clear [0:0]
        CGIF1: u1 = 0x0,
        /// Channel 1 Transfer Complete clear [1:1]
        CTCIF1: u1 = 0x0,
        /// Channel 1 Half Transfer clear [2:2]
        CHTIF1: u1 = 0x0,
        /// Channel 1 Transfer Error clear [3:3]
        CTEIF1: u1 = 0x0,
        /// Channel 2 Global interrupt clear [4:4]
        CGIF2: u1 = 0x0,
        /// Channel 2 Transfer Complete clear [5:5]
        CTCIF2: u1 = 0x0,
        /// Channel 2 Half Transfer clear [6:6]
        CHTIF2: u1 = 0x0,
        /// Channel 2 Transfer Error clear [7:7]
        CTEIF2: u1 = 0x0,
        /// Channel 3 Global interrupt clear [8:8]
        CGIF3: u1 = 0x0,
        /// Channel 3 Transfer Complete clear [9:9]
        CTCIF3: u1 = 0x0,
        /// Channel 3 Half Transfer clear [10:10]
        CHTIF3: u1 = 0x0,
        /// Channel 3 Transfer Error clear [11:11]
        CTEIF3: u1 = 0x0,
        /// Channel 4 Global interrupt clear [12:12]
        CGIF4: u1 = 0x0,
        /// Channel 4 Transfer Complete clear [13:13]
        CTCIF4: u1 = 0x0,
        /// Channel 4 Half Transfer clear [14:14]
        CHTIF4: u1 = 0x0,
        /// Channel 4 Transfer Error clear [15:15]
        CTEIF4: u1 = 0x0,
        /// Channel 5 Global interrupt clear [16:16]
        CGIF5: u1 = 0x0,
        /// Channel 5 Transfer Complete clear [17:17]
        CTCIF5: u1 = 0x0,
        /// Channel 5 Half Transfer clear [18:18]
        CHTIF5: u1 = 0x0,
        /// Channel 5 Transfer Error clear [19:19]
        CTEIF5: u1 = 0x0,
        /// Channel 6 Global interrupt clear [20:20]
        CGIF6: u1 = 0x0,
        /// Channel 6 Transfer Complete clear [21:21]
        CTCIF6: u1 = 0x0,
        /// Channel 6 Half Transfer clear [22:22]
        CHTIF6: u1 = 0x0,
        /// Channel 6 Transfer Error clear [23:23]
        CTEIF6: u1 = 0x0,
        /// Channel 7 Global interrupt clear [24:24]
        CGIF7: u1 = 0x0,
        /// Channel 7 Transfer Complete clear [25:25]
        CTCIF7: u1 = 0x0,
        /// Channel 7 Half Transfer clear [26:26]
        CHTIF7: u1 = 0x0,
        /// Channel 7 Transfer Error clear [27:27]
        CTEIF7: u1 = 0x0,
        /// Reserved [28:31]
        _0: u4 = undefined,
    }).init(0x40020004);
    /// DMA channel configuration register (DMA_CCR)
    pub const CCR1 = reg.RW(packed struct(u32) {
        /// Channel enable [0:0]
        EN: u1 = 0x0,
        /// Transfer complete interrupt enable [1:1]
        TCIE: u1 = 0x0,
        /// Half Transfer interrupt enable [2:2]
        HTIE: u1 = 0x0,
        /// Transfer error interrupt enable [3:3]
        TEIE: u1 = 0x0,
        /// Data transfer direction [4:4]
        DIR: u1 = 0x0,
        /// Circular mode [5:5]
        CIRC: u1 = 0x0,
        /// Peripheral increment mode [6:6]
        PINC: u1 = 0x0,
        /// Memory increment mode [7:7]
        MINC: u1 = 0x0,
        /// Peripheral size [8:9]
        PSIZE: u2 = 0x0,
        /// Memory size [10:11]
        MSIZE: u2 = 0x0,
        /// Channel Priority level [12:13]
        PL: u2 = 0x0,
        /// Memory to memory mode [14:14]
        MEM2MEM: u1 = 0x0,
        /// Reserved [15:31]
        _0: u17 = undefined,
    }).init(0x40020008);
    /// DMA channel 1 number of data register
    pub const CNDTR1 = reg.RW(packed struct(u32) {
        /// Number of data to transfer [0:15]
        NDT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4002000C);
    /// DMA channel 1 peripheral address register
    pub const CPAR1 = reg.RW(packed struct(u32) {
        /// Peripheral address [0:31]
        PA: u32 = 0x0,
    }).init(0x40020010);
    /// DMA channel 1 memory address register
    pub const CMAR1 = reg.RW(packed struct(u32) {
        /// Memory address [0:31]
        MA: u32 = 0x0,
    }).init(0x40020014);
    /// DMA channel configuration register (DMA_CCR)
    pub const CCR2 = reg.RW(packed struct(u32) {
        /// Channel enable [0:0]
        EN: u1 = 0x0,
        /// Transfer complete interrupt enable [1:1]
        TCIE: u1 = 0x0,
        /// Half Transfer interrupt enable [2:2]
        HTIE: u1 = 0x0,
        /// Transfer error interrupt enable [3:3]
        TEIE: u1 = 0x0,
        /// Data transfer direction [4:4]
        DIR: u1 = 0x0,
        /// Circular mode [5:5]
        CIRC: u1 = 0x0,
        /// Peripheral increment mode [6:6]
        PINC: u1 = 0x0,
        /// Memory increment mode [7:7]
        MINC: u1 = 0x0,
        /// Peripheral size [8:9]
        PSIZE: u2 = 0x0,
        /// Memory size [10:11]
        MSIZE: u2 = 0x0,
        /// Channel Priority level [12:13]
        PL: u2 = 0x0,
        /// Memory to memory mode [14:14]
        MEM2MEM: u1 = 0x0,
        /// Reserved [15:31]
        _0: u17 = undefined,
    }).init(0x4002001C);
    /// DMA channel 2 number of data register
    pub const CNDTR2 = reg.RW(packed struct(u32) {
        /// Number of data to transfer [0:15]
        NDT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40020020);
    /// DMA channel 2 peripheral address register
    pub const CPAR2 = reg.RW(packed struct(u32) {
        /// Peripheral address [0:31]
        PA: u32 = 0x0,
    }).init(0x40020024);
    /// DMA channel 2 memory address register
    pub const CMAR2 = reg.RW(packed struct(u32) {
        /// Memory address [0:31]
        MA: u32 = 0x0,
    }).init(0x40020028);
    /// DMA channel configuration register (DMA_CCR)
    pub const CCR3 = reg.RW(packed struct(u32) {
        /// Channel enable [0:0]
        EN: u1 = 0x0,
        /// Transfer complete interrupt enable [1:1]
        TCIE: u1 = 0x0,
        /// Half Transfer interrupt enable [2:2]
        HTIE: u1 = 0x0,
        /// Transfer error interrupt enable [3:3]
        TEIE: u1 = 0x0,
        /// Data transfer direction [4:4]
        DIR: u1 = 0x0,
        /// Circular mode [5:5]
        CIRC: u1 = 0x0,
        /// Peripheral increment mode [6:6]
        PINC: u1 = 0x0,
        /// Memory increment mode [7:7]
        MINC: u1 = 0x0,
        /// Peripheral size [8:9]
        PSIZE: u2 = 0x0,
        /// Memory size [10:11]
        MSIZE: u2 = 0x0,
        /// Channel Priority level [12:13]
        PL: u2 = 0x0,
        /// Memory to memory mode [14:14]
        MEM2MEM: u1 = 0x0,
        /// Reserved [15:31]
        _0: u17 = undefined,
    }).init(0x40020030);
    /// DMA channel 3 number of data register
    pub const CNDTR3 = reg.RW(packed struct(u32) {
        /// Number of data to transfer [0:15]
        NDT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40020034);
    /// DMA channel 3 peripheral address register
    pub const CPAR3 = reg.RW(packed struct(u32) {
        /// Peripheral address [0:31]
        PA: u32 = 0x0,
    }).init(0x40020038);
    /// DMA channel 3 memory address register
    pub const CMAR3 = reg.RW(packed struct(u32) {
        /// Memory address [0:31]
        MA: u32 = 0x0,
    }).init(0x4002003C);
    /// DMA channel configuration register (DMA_CCR)
    pub const CCR4 = reg.RW(packed struct(u32) {
        /// Channel enable [0:0]
        EN: u1 = 0x0,
        /// Transfer complete interrupt enable [1:1]
        TCIE: u1 = 0x0,
        /// Half Transfer interrupt enable [2:2]
        HTIE: u1 = 0x0,
        /// Transfer error interrupt enable [3:3]
        TEIE: u1 = 0x0,
        /// Data transfer direction [4:4]
        DIR: u1 = 0x0,
        /// Circular mode [5:5]
        CIRC: u1 = 0x0,
        /// Peripheral increment mode [6:6]
        PINC: u1 = 0x0,
        /// Memory increment mode [7:7]
        MINC: u1 = 0x0,
        /// Peripheral size [8:9]
        PSIZE: u2 = 0x0,
        /// Memory size [10:11]
        MSIZE: u2 = 0x0,
        /// Channel Priority level [12:13]
        PL: u2 = 0x0,
        /// Memory to memory mode [14:14]
        MEM2MEM: u1 = 0x0,
        /// Reserved [15:31]
        _0: u17 = undefined,
    }).init(0x40020044);
    /// DMA channel 4 number of data register
    pub const CNDTR4 = reg.RW(packed struct(u32) {
        /// Number of data to transfer [0:15]
        NDT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40020048);
    /// DMA channel 4 peripheral address register
    pub const CPAR4 = reg.RW(packed struct(u32) {
        /// Peripheral address [0:31]
        PA: u32 = 0x0,
    }).init(0x4002004C);
    /// DMA channel 4 memory address register
    pub const CMAR4 = reg.RW(packed struct(u32) {
        /// Memory address [0:31]
        MA: u32 = 0x0,
    }).init(0x40020050);
    /// DMA channel configuration register (DMA_CCR)
    pub const CCR5 = reg.RW(packed struct(u32) {
        /// Channel enable [0:0]
        EN: u1 = 0x0,
        /// Transfer complete interrupt enable [1:1]
        TCIE: u1 = 0x0,
        /// Half Transfer interrupt enable [2:2]
        HTIE: u1 = 0x0,
        /// Transfer error interrupt enable [3:3]
        TEIE: u1 = 0x0,
        /// Data transfer direction [4:4]
        DIR: u1 = 0x0,
        /// Circular mode [5:5]
        CIRC: u1 = 0x0,
        /// Peripheral increment mode [6:6]
        PINC: u1 = 0x0,
        /// Memory increment mode [7:7]
        MINC: u1 = 0x0,
        /// Peripheral size [8:9]
        PSIZE: u2 = 0x0,
        /// Memory size [10:11]
        MSIZE: u2 = 0x0,
        /// Channel Priority level [12:13]
        PL: u2 = 0x0,
        /// Memory to memory mode [14:14]
        MEM2MEM: u1 = 0x0,
        /// Reserved [15:31]
        _0: u17 = undefined,
    }).init(0x40020058);
    /// DMA channel 5 number of data register
    pub const CNDTR5 = reg.RW(packed struct(u32) {
        /// Number of data to transfer [0:15]
        NDT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4002005C);
    /// DMA channel 5 peripheral address register
    pub const CPAR5 = reg.RW(packed struct(u32) {
        /// Peripheral address [0:31]
        PA: u32 = 0x0,
    }).init(0x40020060);
    /// DMA channel 5 memory address register
    pub const CMAR5 = reg.RW(packed struct(u32) {
        /// Memory address [0:31]
        MA: u32 = 0x0,
    }).init(0x40020064);
    /// DMA channel configuration register (DMA_CCR)
    pub const CCR6 = reg.RW(packed struct(u32) {
        /// Channel enable [0:0]
        EN: u1 = 0x0,
        /// Transfer complete interrupt enable [1:1]
        TCIE: u1 = 0x0,
        /// Half Transfer interrupt enable [2:2]
        HTIE: u1 = 0x0,
        /// Transfer error interrupt enable [3:3]
        TEIE: u1 = 0x0,
        /// Data transfer direction [4:4]
        DIR: u1 = 0x0,
        /// Circular mode [5:5]
        CIRC: u1 = 0x0,
        /// Peripheral increment mode [6:6]
        PINC: u1 = 0x0,
        /// Memory increment mode [7:7]
        MINC: u1 = 0x0,
        /// Peripheral size [8:9]
        PSIZE: u2 = 0x0,
        /// Memory size [10:11]
        MSIZE: u2 = 0x0,
        /// Channel Priority level [12:13]
        PL: u2 = 0x0,
        /// Memory to memory mode [14:14]
        MEM2MEM: u1 = 0x0,
        /// Reserved [15:31]
        _0: u17 = undefined,
    }).init(0x4002006C);
    /// DMA channel 6 number of data register
    pub const CNDTR6 = reg.RW(packed struct(u32) {
        /// Number of data to transfer [0:15]
        NDT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40020070);
    /// DMA channel 6 peripheral address register
    pub const CPAR6 = reg.RW(packed struct(u32) {
        /// Peripheral address [0:31]
        PA: u32 = 0x0,
    }).init(0x40020074);
    /// DMA channel 6 memory address register
    pub const CMAR6 = reg.RW(packed struct(u32) {
        /// Memory address [0:31]
        MA: u32 = 0x0,
    }).init(0x40020078);
    /// DMA channel configuration register (DMA_CCR)
    pub const CCR7 = reg.RW(packed struct(u32) {
        /// Channel enable [0:0]
        EN: u1 = 0x0,
        /// Transfer complete interrupt enable [1:1]
        TCIE: u1 = 0x0,
        /// Half Transfer interrupt enable [2:2]
        HTIE: u1 = 0x0,
        /// Transfer error interrupt enable [3:3]
        TEIE: u1 = 0x0,
        /// Data transfer direction [4:4]
        DIR: u1 = 0x0,
        /// Circular mode [5:5]
        CIRC: u1 = 0x0,
        /// Peripheral increment mode [6:6]
        PINC: u1 = 0x0,
        /// Memory increment mode [7:7]
        MINC: u1 = 0x0,
        /// Peripheral size [8:9]
        PSIZE: u2 = 0x0,
        /// Memory size [10:11]
        MSIZE: u2 = 0x0,
        /// Channel Priority level [12:13]
        PL: u2 = 0x0,
        /// Memory to memory mode [14:14]
        MEM2MEM: u1 = 0x0,
        /// Reserved [15:31]
        _0: u17 = undefined,
    }).init(0x40020080);
    /// DMA channel 7 number of data register
    pub const CNDTR7 = reg.RW(packed struct(u32) {
        /// Number of data to transfer [0:15]
        NDT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40020084);
    /// DMA channel 7 peripheral address register
    pub const CPAR7 = reg.RW(packed struct(u32) {
        /// Peripheral address [0:31]
        PA: u32 = 0x0,
    }).init(0x40020088);
    /// DMA channel 7 memory address register
    pub const CMAR7 = reg.RW(packed struct(u32) {
        /// Memory address [0:31]
        MA: u32 = 0x0,
    }).init(0x4002008C);
};

pub const DMA2 = struct {
    pub const IRQ = struct {
        /// DMA2 Channel1 global interrupt
        pub const DMA2_Channel1 = 56;
        /// DMA2 Channel2 global interrupt
        pub const DMA2_Channel2 = 57;
        /// DMA2 Channel3 global interrupt
        pub const DMA2_Channel3 = 58;
        /// DMA2 Channel4 and DMA2 Channel5 global interrupt
        pub const DMA2_Channel4_5 = 59;
    };
    /// DMA interrupt status register (DMA_ISR)
    pub const ISR = reg.RO(packed struct(u32) {
        /// Channel 1 Global interrupt flag [0:0]
        GIF1: u1 = 0x0,
        /// Channel 1 Transfer Complete flag [1:1]
        TCIF1: u1 = 0x0,
        /// Channel 1 Half Transfer Complete flag [2:2]
        HTIF1: u1 = 0x0,
        /// Channel 1 Transfer Error flag [3:3]
        TEIF1: u1 = 0x0,
        /// Channel 2 Global interrupt flag [4:4]
        GIF2: u1 = 0x0,
        /// Channel 2 Transfer Complete flag [5:5]
        TCIF2: u1 = 0x0,
        /// Channel 2 Half Transfer Complete flag [6:6]
        HTIF2: u1 = 0x0,
        /// Channel 2 Transfer Error flag [7:7]
        TEIF2: u1 = 0x0,
        /// Channel 3 Global interrupt flag [8:8]
        GIF3: u1 = 0x0,
        /// Channel 3 Transfer Complete flag [9:9]
        TCIF3: u1 = 0x0,
        /// Channel 3 Half Transfer Complete flag [10:10]
        HTIF3: u1 = 0x0,
        /// Channel 3 Transfer Error flag [11:11]
        TEIF3: u1 = 0x0,
        /// Channel 4 Global interrupt flag [12:12]
        GIF4: u1 = 0x0,
        /// Channel 4 Transfer Complete flag [13:13]
        TCIF4: u1 = 0x0,
        /// Channel 4 Half Transfer Complete flag [14:14]
        HTIF4: u1 = 0x0,
        /// Channel 4 Transfer Error flag [15:15]
        TEIF4: u1 = 0x0,
        /// Channel 5 Global interrupt flag [16:16]
        GIF5: u1 = 0x0,
        /// Channel 5 Transfer Complete flag [17:17]
        TCIF5: u1 = 0x0,
        /// Channel 5 Half Transfer Complete flag [18:18]
        HTIF5: u1 = 0x0,
        /// Channel 5 Transfer Error flag [19:19]
        TEIF5: u1 = 0x0,
        /// Channel 6 Global interrupt flag [20:20]
        GIF6: u1 = 0x0,
        /// Channel 6 Transfer Complete flag [21:21]
        TCIF6: u1 = 0x0,
        /// Channel 6 Half Transfer Complete flag [22:22]
        HTIF6: u1 = 0x0,
        /// Channel 6 Transfer Error flag [23:23]
        TEIF6: u1 = 0x0,
        /// Channel 7 Global interrupt flag [24:24]
        GIF7: u1 = 0x0,
        /// Channel 7 Transfer Complete flag [25:25]
        TCIF7: u1 = 0x0,
        /// Channel 7 Half Transfer Complete flag [26:26]
        HTIF7: u1 = 0x0,
        /// Channel 7 Transfer Error flag [27:27]
        TEIF7: u1 = 0x0,
        /// Reserved [28:31]
        _0: u4 = undefined,
    }).init(0x40020400);
    /// DMA interrupt flag clear register (DMA_IFCR)
    pub const IFCR = reg.WO(packed struct(u32) {
        /// Channel 1 Global interrupt clear [0:0]
        CGIF1: u1 = 0x0,
        /// Channel 1 Transfer Complete clear [1:1]
        CTCIF1: u1 = 0x0,
        /// Channel 1 Half Transfer clear [2:2]
        CHTIF1: u1 = 0x0,
        /// Channel 1 Transfer Error clear [3:3]
        CTEIF1: u1 = 0x0,
        /// Channel 2 Global interrupt clear [4:4]
        CGIF2: u1 = 0x0,
        /// Channel 2 Transfer Complete clear [5:5]
        CTCIF2: u1 = 0x0,
        /// Channel 2 Half Transfer clear [6:6]
        CHTIF2: u1 = 0x0,
        /// Channel 2 Transfer Error clear [7:7]
        CTEIF2: u1 = 0x0,
        /// Channel 3 Global interrupt clear [8:8]
        CGIF3: u1 = 0x0,
        /// Channel 3 Transfer Complete clear [9:9]
        CTCIF3: u1 = 0x0,
        /// Channel 3 Half Transfer clear [10:10]
        CHTIF3: u1 = 0x0,
        /// Channel 3 Transfer Error clear [11:11]
        CTEIF3: u1 = 0x0,
        /// Channel 4 Global interrupt clear [12:12]
        CGIF4: u1 = 0x0,
        /// Channel 4 Transfer Complete clear [13:13]
        CTCIF4: u1 = 0x0,
        /// Channel 4 Half Transfer clear [14:14]
        CHTIF4: u1 = 0x0,
        /// Channel 4 Transfer Error clear [15:15]
        CTEIF4: u1 = 0x0,
        /// Channel 5 Global interrupt clear [16:16]
        CGIF5: u1 = 0x0,
        /// Channel 5 Transfer Complete clear [17:17]
        CTCIF5: u1 = 0x0,
        /// Channel 5 Half Transfer clear [18:18]
        CHTIF5: u1 = 0x0,
        /// Channel 5 Transfer Error clear [19:19]
        CTEIF5: u1 = 0x0,
        /// Channel 6 Global interrupt clear [20:20]
        CGIF6: u1 = 0x0,
        /// Channel 6 Transfer Complete clear [21:21]
        CTCIF6: u1 = 0x0,
        /// Channel 6 Half Transfer clear [22:22]
        CHTIF6: u1 = 0x0,
        /// Channel 6 Transfer Error clear [23:23]
        CTEIF6: u1 = 0x0,
        /// Channel 7 Global interrupt clear [24:24]
        CGIF7: u1 = 0x0,
        /// Channel 7 Transfer Complete clear [25:25]
        CTCIF7: u1 = 0x0,
        /// Channel 7 Half Transfer clear [26:26]
        CHTIF7: u1 = 0x0,
        /// Channel 7 Transfer Error clear [27:27]
        CTEIF7: u1 = 0x0,
        /// Reserved [28:31]
        _0: u4 = undefined,
    }).init(0x40020404);
    /// DMA channel configuration register (DMA_CCR)
    pub const CCR1 = reg.RW(packed struct(u32) {
        /// Channel enable [0:0]
        EN: u1 = 0x0,
        /// Transfer complete interrupt enable [1:1]
        TCIE: u1 = 0x0,
        /// Half Transfer interrupt enable [2:2]
        HTIE: u1 = 0x0,
        /// Transfer error interrupt enable [3:3]
        TEIE: u1 = 0x0,
        /// Data transfer direction [4:4]
        DIR: u1 = 0x0,
        /// Circular mode [5:5]
        CIRC: u1 = 0x0,
        /// Peripheral increment mode [6:6]
        PINC: u1 = 0x0,
        /// Memory increment mode [7:7]
        MINC: u1 = 0x0,
        /// Peripheral size [8:9]
        PSIZE: u2 = 0x0,
        /// Memory size [10:11]
        MSIZE: u2 = 0x0,
        /// Channel Priority level [12:13]
        PL: u2 = 0x0,
        /// Memory to memory mode [14:14]
        MEM2MEM: u1 = 0x0,
        /// Reserved [15:31]
        _0: u17 = undefined,
    }).init(0x40020408);
    /// DMA channel 1 number of data register
    pub const CNDTR1 = reg.RW(packed struct(u32) {
        /// Number of data to transfer [0:15]
        NDT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4002040C);
    /// DMA channel 1 peripheral address register
    pub const CPAR1 = reg.RW(packed struct(u32) {
        /// Peripheral address [0:31]
        PA: u32 = 0x0,
    }).init(0x40020410);
    /// DMA channel 1 memory address register
    pub const CMAR1 = reg.RW(packed struct(u32) {
        /// Memory address [0:31]
        MA: u32 = 0x0,
    }).init(0x40020414);
    /// DMA channel configuration register (DMA_CCR)
    pub const CCR2 = reg.RW(packed struct(u32) {
        /// Channel enable [0:0]
        EN: u1 = 0x0,
        /// Transfer complete interrupt enable [1:1]
        TCIE: u1 = 0x0,
        /// Half Transfer interrupt enable [2:2]
        HTIE: u1 = 0x0,
        /// Transfer error interrupt enable [3:3]
        TEIE: u1 = 0x0,
        /// Data transfer direction [4:4]
        DIR: u1 = 0x0,
        /// Circular mode [5:5]
        CIRC: u1 = 0x0,
        /// Peripheral increment mode [6:6]
        PINC: u1 = 0x0,
        /// Memory increment mode [7:7]
        MINC: u1 = 0x0,
        /// Peripheral size [8:9]
        PSIZE: u2 = 0x0,
        /// Memory size [10:11]
        MSIZE: u2 = 0x0,
        /// Channel Priority level [12:13]
        PL: u2 = 0x0,
        /// Memory to memory mode [14:14]
        MEM2MEM: u1 = 0x0,
        /// Reserved [15:31]
        _0: u17 = undefined,
    }).init(0x4002041C);
    /// DMA channel 2 number of data register
    pub const CNDTR2 = reg.RW(packed struct(u32) {
        /// Number of data to transfer [0:15]
        NDT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40020420);
    /// DMA channel 2 peripheral address register
    pub const CPAR2 = reg.RW(packed struct(u32) {
        /// Peripheral address [0:31]
        PA: u32 = 0x0,
    }).init(0x40020424);
    /// DMA channel 2 memory address register
    pub const CMAR2 = reg.RW(packed struct(u32) {
        /// Memory address [0:31]
        MA: u32 = 0x0,
    }).init(0x40020428);
    /// DMA channel configuration register (DMA_CCR)
    pub const CCR3 = reg.RW(packed struct(u32) {
        /// Channel enable [0:0]
        EN: u1 = 0x0,
        /// Transfer complete interrupt enable [1:1]
        TCIE: u1 = 0x0,
        /// Half Transfer interrupt enable [2:2]
        HTIE: u1 = 0x0,
        /// Transfer error interrupt enable [3:3]
        TEIE: u1 = 0x0,
        /// Data transfer direction [4:4]
        DIR: u1 = 0x0,
        /// Circular mode [5:5]
        CIRC: u1 = 0x0,
        /// Peripheral increment mode [6:6]
        PINC: u1 = 0x0,
        /// Memory increment mode [7:7]
        MINC: u1 = 0x0,
        /// Peripheral size [8:9]
        PSIZE: u2 = 0x0,
        /// Memory size [10:11]
        MSIZE: u2 = 0x0,
        /// Channel Priority level [12:13]
        PL: u2 = 0x0,
        /// Memory to memory mode [14:14]
        MEM2MEM: u1 = 0x0,
        /// Reserved [15:31]
        _0: u17 = undefined,
    }).init(0x40020430);
    /// DMA channel 3 number of data register
    pub const CNDTR3 = reg.RW(packed struct(u32) {
        /// Number of data to transfer [0:15]
        NDT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40020434);
    /// DMA channel 3 peripheral address register
    pub const CPAR3 = reg.RW(packed struct(u32) {
        /// Peripheral address [0:31]
        PA: u32 = 0x0,
    }).init(0x40020438);
    /// DMA channel 3 memory address register
    pub const CMAR3 = reg.RW(packed struct(u32) {
        /// Memory address [0:31]
        MA: u32 = 0x0,
    }).init(0x4002043C);
    /// DMA channel configuration register (DMA_CCR)
    pub const CCR4 = reg.RW(packed struct(u32) {
        /// Channel enable [0:0]
        EN: u1 = 0x0,
        /// Transfer complete interrupt enable [1:1]
        TCIE: u1 = 0x0,
        /// Half Transfer interrupt enable [2:2]
        HTIE: u1 = 0x0,
        /// Transfer error interrupt enable [3:3]
        TEIE: u1 = 0x0,
        /// Data transfer direction [4:4]
        DIR: u1 = 0x0,
        /// Circular mode [5:5]
        CIRC: u1 = 0x0,
        /// Peripheral increment mode [6:6]
        PINC: u1 = 0x0,
        /// Memory increment mode [7:7]
        MINC: u1 = 0x0,
        /// Peripheral size [8:9]
        PSIZE: u2 = 0x0,
        /// Memory size [10:11]
        MSIZE: u2 = 0x0,
        /// Channel Priority level [12:13]
        PL: u2 = 0x0,
        /// Memory to memory mode [14:14]
        MEM2MEM: u1 = 0x0,
        /// Reserved [15:31]
        _0: u17 = undefined,
    }).init(0x40020444);
    /// DMA channel 4 number of data register
    pub const CNDTR4 = reg.RW(packed struct(u32) {
        /// Number of data to transfer [0:15]
        NDT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40020448);
    /// DMA channel 4 peripheral address register
    pub const CPAR4 = reg.RW(packed struct(u32) {
        /// Peripheral address [0:31]
        PA: u32 = 0x0,
    }).init(0x4002044C);
    /// DMA channel 4 memory address register
    pub const CMAR4 = reg.RW(packed struct(u32) {
        /// Memory address [0:31]
        MA: u32 = 0x0,
    }).init(0x40020450);
    /// DMA channel configuration register (DMA_CCR)
    pub const CCR5 = reg.RW(packed struct(u32) {
        /// Channel enable [0:0]
        EN: u1 = 0x0,
        /// Transfer complete interrupt enable [1:1]
        TCIE: u1 = 0x0,
        /// Half Transfer interrupt enable [2:2]
        HTIE: u1 = 0x0,
        /// Transfer error interrupt enable [3:3]
        TEIE: u1 = 0x0,
        /// Data transfer direction [4:4]
        DIR: u1 = 0x0,
        /// Circular mode [5:5]
        CIRC: u1 = 0x0,
        /// Peripheral increment mode [6:6]
        PINC: u1 = 0x0,
        /// Memory increment mode [7:7]
        MINC: u1 = 0x0,
        /// Peripheral size [8:9]
        PSIZE: u2 = 0x0,
        /// Memory size [10:11]
        MSIZE: u2 = 0x0,
        /// Channel Priority level [12:13]
        PL: u2 = 0x0,
        /// Memory to memory mode [14:14]
        MEM2MEM: u1 = 0x0,
        /// Reserved [15:31]
        _0: u17 = undefined,
    }).init(0x40020458);
    /// DMA channel 5 number of data register
    pub const CNDTR5 = reg.RW(packed struct(u32) {
        /// Number of data to transfer [0:15]
        NDT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4002045C);
    /// DMA channel 5 peripheral address register
    pub const CPAR5 = reg.RW(packed struct(u32) {
        /// Peripheral address [0:31]
        PA: u32 = 0x0,
    }).init(0x40020460);
    /// DMA channel 5 memory address register
    pub const CMAR5 = reg.RW(packed struct(u32) {
        /// Memory address [0:31]
        MA: u32 = 0x0,
    }).init(0x40020464);
    /// DMA channel configuration register (DMA_CCR)
    pub const CCR6 = reg.RW(packed struct(u32) {
        /// Channel enable [0:0]
        EN: u1 = 0x0,
        /// Transfer complete interrupt enable [1:1]
        TCIE: u1 = 0x0,
        /// Half Transfer interrupt enable [2:2]
        HTIE: u1 = 0x0,
        /// Transfer error interrupt enable [3:3]
        TEIE: u1 = 0x0,
        /// Data transfer direction [4:4]
        DIR: u1 = 0x0,
        /// Circular mode [5:5]
        CIRC: u1 = 0x0,
        /// Peripheral increment mode [6:6]
        PINC: u1 = 0x0,
        /// Memory increment mode [7:7]
        MINC: u1 = 0x0,
        /// Peripheral size [8:9]
        PSIZE: u2 = 0x0,
        /// Memory size [10:11]
        MSIZE: u2 = 0x0,
        /// Channel Priority level [12:13]
        PL: u2 = 0x0,
        /// Memory to memory mode [14:14]
        MEM2MEM: u1 = 0x0,
        /// Reserved [15:31]
        _0: u17 = undefined,
    }).init(0x4002046C);
    /// DMA channel 6 number of data register
    pub const CNDTR6 = reg.RW(packed struct(u32) {
        /// Number of data to transfer [0:15]
        NDT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40020470);
    /// DMA channel 6 peripheral address register
    pub const CPAR6 = reg.RW(packed struct(u32) {
        /// Peripheral address [0:31]
        PA: u32 = 0x0,
    }).init(0x40020474);
    /// DMA channel 6 memory address register
    pub const CMAR6 = reg.RW(packed struct(u32) {
        /// Memory address [0:31]
        MA: u32 = 0x0,
    }).init(0x40020478);
    /// DMA channel configuration register (DMA_CCR)
    pub const CCR7 = reg.RW(packed struct(u32) {
        /// Channel enable [0:0]
        EN: u1 = 0x0,
        /// Transfer complete interrupt enable [1:1]
        TCIE: u1 = 0x0,
        /// Half Transfer interrupt enable [2:2]
        HTIE: u1 = 0x0,
        /// Transfer error interrupt enable [3:3]
        TEIE: u1 = 0x0,
        /// Data transfer direction [4:4]
        DIR: u1 = 0x0,
        /// Circular mode [5:5]
        CIRC: u1 = 0x0,
        /// Peripheral increment mode [6:6]
        PINC: u1 = 0x0,
        /// Memory increment mode [7:7]
        MINC: u1 = 0x0,
        /// Peripheral size [8:9]
        PSIZE: u2 = 0x0,
        /// Memory size [10:11]
        MSIZE: u2 = 0x0,
        /// Channel Priority level [12:13]
        PL: u2 = 0x0,
        /// Memory to memory mode [14:14]
        MEM2MEM: u1 = 0x0,
        /// Reserved [15:31]
        _0: u17 = undefined,
    }).init(0x40020480);
    /// DMA channel 7 number of data register
    pub const CNDTR7 = reg.RW(packed struct(u32) {
        /// Number of data to transfer [0:15]
        NDT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40020484);
    /// DMA channel 7 peripheral address register
    pub const CPAR7 = reg.RW(packed struct(u32) {
        /// Peripheral address [0:31]
        PA: u32 = 0x0,
    }).init(0x40020488);
    /// DMA channel 7 memory address register
    pub const CMAR7 = reg.RW(packed struct(u32) {
        /// Memory address [0:31]
        MA: u32 = 0x0,
    }).init(0x4002048C);
};

pub const RTC = struct {
    pub const IRQ = struct {
        /// RTC Wakeup through EXTI line interrupt
        pub const RTC_WKUP = 3;
        /// RTC Alarms through EXTI line interrupt
        pub const RTCAlarm = 41;
    };
    /// RTC Control Register High
    pub const CRH = reg.RW(packed struct(u32) {
        /// Second interrupt Enable [0:0]
        SECIE: u1 = 0x0,
        /// Alarm interrupt Enable [1:1]
        ALRIE: u1 = 0x0,
        /// Overflow interrupt Enable [2:2]
        OWIE: u1 = 0x0,
        /// Reserved [3:31]
        _0: u29 = undefined,
    }).init(0x40002800);
    /// RTC Control Register Low
    pub const CRL = reg.RW(packed struct(u32) {
        /// Second Flag [0:0]
        SECF: u1 = 0x0,
        /// Alarm Flag [1:1]
        ALRF: u1 = 0x0,
        /// Overflow Flag [2:2]
        OWF: u1 = 0x0,
        /// Registers Synchronized Flag [3:3]
        RSF: u1 = 0x0,
        /// Configuration Flag [4:4]
        CNF: u1 = 0x0,
        /// RTC operation OFF [5:5]
        RTOFF: u1 = 0x1,
        /// Reserved [6:31]
        _0: u26 = undefined,
    }).init(0x40002804);
    /// RTC Prescaler Load Register High
    pub const PRLH = reg.WO(packed struct(u32) {
        /// RTC Prescaler Load Register High [0:3]
        PRLH: u4 = 0x0,
        /// Reserved [4:31]
        _0: u28 = undefined,
    }).init(0x40002808);
    /// RTC Prescaler Load Register Low
    pub const PRLL = reg.WO(packed struct(u32) {
        /// RTC Prescaler Divider Register Low [0:15]
        PRLL: u16 = 0x8000,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000280C);
    /// RTC Prescaler Divider Register High
    pub const DIVH = reg.RO(packed struct(u32) {
        /// RTC prescaler divider register high [0:3]
        DIVH: u4 = 0x0,
        /// Reserved [4:31]
        _0: u28 = undefined,
    }).init(0x40002810);
    /// RTC Prescaler Divider Register Low
    pub const DIVL = reg.RO(packed struct(u32) {
        /// RTC prescaler divider register Low [0:15]
        DIVL: u16 = 0x8000,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40002814);
    /// RTC Counter Register High
    pub const CNTH = reg.RW(packed struct(u32) {
        /// RTC counter register high [0:15]
        CNTH: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40002818);
    /// RTC Counter Register Low
    pub const CNTL = reg.RW(packed struct(u32) {
        /// RTC counter register Low [0:15]
        CNTL: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000281C);
    /// RTC Alarm Register High
    pub const ALRH = reg.WO(packed struct(u32) {
        /// RTC alarm register high [0:15]
        ALRH: u16 = 0xFFFF,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40002820);
    /// RTC Alarm Register Low
    pub const ALRL = reg.WO(packed struct(u32) {
        /// RTC alarm register low [0:15]
        ALRL: u16 = 0xFFFF,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40002824);
};

pub const BKP = struct {
    pub const IRQ = struct {};
    /// Backup data register (BKP_DR)
    pub const DR1 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D1: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C04);
    /// Backup data register (BKP_DR)
    pub const DR2 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D2: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C08);
    /// Backup data register (BKP_DR)
    pub const DR3 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D3: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C0C);
    /// Backup data register (BKP_DR)
    pub const DR4 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D4: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C10);
    /// Backup data register (BKP_DR)
    pub const DR5 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D5: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C14);
    /// Backup data register (BKP_DR)
    pub const DR6 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D6: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C18);
    /// Backup data register (BKP_DR)
    pub const DR7 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D7: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C1C);
    /// Backup data register (BKP_DR)
    pub const DR8 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D8: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C20);
    /// Backup data register (BKP_DR)
    pub const DR9 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D9: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C24);
    /// Backup data register (BKP_DR)
    pub const DR10 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D10: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C28);
    /// Backup data register (BKP_DR)
    pub const DR11 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        DR11: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C40);
    /// Backup data register (BKP_DR)
    pub const DR12 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        DR12: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C44);
    /// Backup data register (BKP_DR)
    pub const DR13 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        DR13: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C48);
    /// Backup data register (BKP_DR)
    pub const DR14 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D14: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C4C);
    /// Backup data register (BKP_DR)
    pub const DR15 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D15: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C50);
    /// Backup data register (BKP_DR)
    pub const DR16 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D16: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C54);
    /// Backup data register (BKP_DR)
    pub const DR17 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D17: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C58);
    /// Backup data register (BKP_DR)
    pub const DR18 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D18: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C5C);
    /// Backup data register (BKP_DR)
    pub const DR19 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D19: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C60);
    /// Backup data register (BKP_DR)
    pub const DR20 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D20: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C64);
    /// Backup data register (BKP_DR)
    pub const DR21 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D21: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C68);
    /// Backup data register (BKP_DR)
    pub const DR22 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D22: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C6C);
    /// Backup data register (BKP_DR)
    pub const DR23 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D23: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C70);
    /// Backup data register (BKP_DR)
    pub const DR24 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D24: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C74);
    /// Backup data register (BKP_DR)
    pub const DR25 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D25: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C78);
    /// Backup data register (BKP_DR)
    pub const DR26 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D26: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C7C);
    /// Backup data register (BKP_DR)
    pub const DR27 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D27: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C80);
    /// Backup data register (BKP_DR)
    pub const DR28 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D28: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C84);
    /// Backup data register (BKP_DR)
    pub const DR29 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D29: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C88);
    /// Backup data register (BKP_DR)
    pub const DR30 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D30: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C8C);
    /// Backup data register (BKP_DR)
    pub const DR31 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D31: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C90);
    /// Backup data register (BKP_DR)
    pub const DR32 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D32: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C94);
    /// Backup data register (BKP_DR)
    pub const DR33 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D33: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C98);
    /// Backup data register (BKP_DR)
    pub const DR34 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D34: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006C9C);
    /// Backup data register (BKP_DR)
    pub const DR35 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D35: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006CA0);
    /// Backup data register (BKP_DR)
    pub const DR36 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D36: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006CA4);
    /// Backup data register (BKP_DR)
    pub const DR37 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D37: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006CA8);
    /// Backup data register (BKP_DR)
    pub const DR38 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D38: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006CAC);
    /// Backup data register (BKP_DR)
    pub const DR39 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D39: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006CB0);
    /// Backup data register (BKP_DR)
    pub const DR40 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D40: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006CB4);
    /// Backup data register (BKP_DR)
    pub const DR41 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D41: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006CB8);
    /// Backup data register (BKP_DR)
    pub const DR42 = reg.RW(packed struct(u32) {
        /// Backup data [0:15]
        D42: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40006CBC);
    /// RTC clock calibration register (BKP_RTCCR)
    pub const RTCCR = reg.RW(packed struct(u32) {
        /// Calibration value [0:6]
        CAL: u7 = 0x0,
        /// Calibration Clock Output [7:7]
        CCO: u1 = 0x0,
        /// Alarm or second output enable [8:8]
        ASOE: u1 = 0x0,
        /// Alarm or second output selection [9:9]
        ASOS: u1 = 0x0,
        /// Reserved [10:31]
        _0: u22 = undefined,
    }).init(0x40006C2C);
    /// Backup control register (BKP_CR)
    pub const CR = reg.RW(packed struct(u32) {
        /// Tamper pin enable [0:0]
        TPE: u1 = 0x0,
        /// Tamper pin active level [1:1]
        TPAL: u1 = 0x0,
        /// Reserved [2:31]
        _0: u30 = undefined,
    }).init(0x40006C30);
    /// BKP_CSR control/status register (BKP_CSR)
    pub const CSR = reg.RW(packed struct(u32) {
        /// Clear Tamper event [0:0]
        CTE: u1 = 0x0,
        /// Clear Tamper Interrupt [1:1]
        CTI: u1 = 0x0,
        /// Tamper Pin interrupt enable [2:2]
        TPIE: u1 = 0x0,
        /// Reserved [3:7]
        _0: u5 = undefined,
        /// Tamper Event Flag [8:8]
        TEF: u1 = 0x0,
        /// Tamper Interrupt Flag [9:9]
        TIF: u1 = 0x0,
        /// Reserved [10:31]
        _1: u22 = undefined,
    }).init(0x40006C34);
};

pub const IWDG = struct {
    pub const IRQ = struct {};
    /// Key register (IWDG_KR)
    pub const KR = reg.WO(packed struct(u32) {
        /// Key value [0:15]
        KEY: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40003000);
    /// Prescaler register (IWDG_PR)
    pub const PR = reg.RW(packed struct(u32) {
        /// Prescaler divider [0:2]
        PR: u3 = 0x0,
        /// Reserved [3:31]
        _0: u29 = undefined,
    }).init(0x40003004);
    /// Reload register (IWDG_RLR)
    pub const RLR = reg.RW(packed struct(u32) {
        /// Watchdog counter reload value [0:11]
        RL: u12 = 0xFFF,
        /// Reserved [12:31]
        _0: u20 = undefined,
    }).init(0x40003008);
    /// Status register (IWDG_SR)
    pub const SR = reg.RO(packed struct(u32) {
        /// Watchdog prescaler value update [0:0]
        PVU: u1 = 0x0,
        /// Watchdog counter reload value update [1:1]
        RVU: u1 = 0x0,
        /// Reserved [2:31]
        _0: u30 = undefined,
    }).init(0x4000300C);
};

pub const WWDG = struct {
    pub const IRQ = struct {
        /// Window Watchdog interrupt
        pub const WWDG = 0;
    };
    /// Control register (WWDG_CR)
    pub const CR = reg.RW(packed struct(u32) {
        /// 7-bit counter (MSB to LSB) [0:6]
        T: u7 = 0x7F,
        /// Activation bit [7:7]
        WDGA: u1 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x40002C00);
    /// Configuration register (WWDG_CFR)
    pub const CFR = reg.RW(packed struct(u32) {
        /// 7-bit window value [0:6]
        W: u7 = 0x7F,
        /// Timer Base [7:8]
        WDGTB: u2 = 0x0,
        /// Early Wakeup Interrupt [9:9]
        EWI: u1 = 0x0,
        /// Reserved [10:31]
        _0: u22 = undefined,
    }).init(0x40002C04);
    /// Status register (WWDG_SR)
    pub const SR = reg.RW(packed struct(u32) {
        /// Early Wakeup Interrupt [0:0]
        EWI: u1 = 0x0,
        /// Reserved [1:31]
        _0: u31 = undefined,
    }).init(0x40002C08);
};

pub const TIM1 = struct {
    pub const IRQ = struct {
        /// TIM1 Break interrupt and TIM15 global interrupt
        pub const TIM1_BRK_TIM15 = 24;
        /// TIM1 Update interrupt and TIM16 global interrupt
        pub const TIM1_UP_TIM16 = 25;
        /// TIM1 Trigger and Commutation interrupts and TIM17 global interrupt
        pub const TIM1_TRG_COM_TIM17 = 26;
        /// TIM1 Capture Compare interrupt
        pub const TIM1_CC = 27;
    };
    /// control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Counter enable [0:0]
        CEN: u1 = 0x0,
        /// Update disable [1:1]
        UDIS: u1 = 0x0,
        /// Update request source [2:2]
        URS: u1 = 0x0,
        /// One-pulse mode [3:3]
        OPM: u1 = 0x0,
        /// Direction [4:4]
        DIR: u1 = 0x0,
        /// Center-aligned mode selection [5:6]
        CMS: u2 = 0x0,
        /// Auto-reload preload enable [7:7]
        ARPE: u1 = 0x0,
        /// Clock division [8:9]
        CKD: u2 = 0x0,
        /// Reserved [10:31]
        _0: u22 = undefined,
    }).init(0x40012C00);
    /// control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Capture/compare preloaded control [0:0]
        CCPC: u1 = 0x0,
        /// Reserved [1:1]
        _0: u1 = undefined,
        /// Capture/compare control update selection [2:2]
        CCUS: u1 = 0x0,
        /// Capture/compare DMA selection [3:3]
        CCDS: u1 = 0x0,
        /// Master mode selection [4:6]
        MMS: u3 = 0x0,
        /// TI1 selection [7:7]
        TI1S: u1 = 0x0,
        /// Output Idle state 1 [8:8]
        OIS1: u1 = 0x0,
        /// Output Idle state 1 [9:9]
        OIS1N: u1 = 0x0,
        /// Output Idle state 2 [10:10]
        OIS2: u1 = 0x0,
        /// Output Idle state 2 [11:11]
        OIS2N: u1 = 0x0,
        /// Output Idle state 3 [12:12]
        OIS3: u1 = 0x0,
        /// Output Idle state 3 [13:13]
        OIS3N: u1 = 0x0,
        /// Output Idle state 4 [14:14]
        OIS4: u1 = 0x0,
        /// Reserved [15:31]
        _1: u17 = undefined,
    }).init(0x40012C04);
    /// slave mode control register
    pub const SMCR = reg.RW(packed struct(u32) {
        /// Slave mode selection [0:2]
        SMS: u3 = 0x0,
        /// Reserved [3:3]
        _0: u1 = undefined,
        /// Trigger selection [4:6]
        TS: u3 = 0x0,
        /// Master/Slave mode [7:7]
        MSM: u1 = 0x0,
        /// External trigger filter [8:11]
        ETF: u4 = 0x0,
        /// External trigger prescaler [12:13]
        ETPS: u2 = 0x0,
        /// External clock enable [14:14]
        ECE: u1 = 0x0,
        /// External trigger polarity [15:15]
        ETP: u1 = 0x0,
        /// Reserved [16:31]
        _1: u16 = undefined,
    }).init(0x40012C08);
    /// DMA/Interrupt enable register
    pub const DIER = reg.RW(packed struct(u32) {
        /// Update interrupt enable [0:0]
        UIE: u1 = 0x0,
        /// Capture/Compare 1 interrupt enable [1:1]
        CC1IE: u1 = 0x0,
        /// Capture/Compare 2 interrupt enable [2:2]
        CC2IE: u1 = 0x0,
        /// Capture/Compare 3 interrupt enable [3:3]
        CC3IE: u1 = 0x0,
        /// Capture/Compare 4 interrupt enable [4:4]
        CC4IE: u1 = 0x0,
        /// COM interrupt enable [5:5]
        COMIE: u1 = 0x0,
        /// Trigger interrupt enable [6:6]
        TIE: u1 = 0x0,
        /// Break interrupt enable [7:7]
        BIE: u1 = 0x0,
        /// Update DMA request enable [8:8]
        UDE: u1 = 0x0,
        /// Capture/Compare 1 DMA request enable [9:9]
        CC1DE: u1 = 0x0,
        /// Capture/Compare 2 DMA request enable [10:10]
        CC2DE: u1 = 0x0,
        /// Capture/Compare 3 DMA request enable [11:11]
        CC3DE: u1 = 0x0,
        /// Capture/Compare 4 DMA request enable [12:12]
        CC4DE: u1 = 0x0,
        /// COM DMA request enable [13:13]
        COMDE: u1 = 0x0,
        /// Trigger DMA request enable [14:14]
        TDE: u1 = 0x0,
        /// Reserved [15:31]
        _0: u17 = undefined,
    }).init(0x40012C0C);
    /// status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Update interrupt flag [0:0]
        UIF: u1 = 0x0,
        /// Capture/compare 1 interrupt flag [1:1]
        CC1IF: u1 = 0x0,
        /// Capture/Compare 2 interrupt flag [2:2]
        CC2IF: u1 = 0x0,
        /// Capture/Compare 3 interrupt flag [3:3]
        CC3IF: u1 = 0x0,
        /// Capture/Compare 4 interrupt flag [4:4]
        CC4IF: u1 = 0x0,
        /// COM interrupt flag [5:5]
        COMIF: u1 = 0x0,
        /// Trigger interrupt flag [6:6]
        TIF: u1 = 0x0,
        /// Break interrupt flag [7:7]
        BIF: u1 = 0x0,
        /// Reserved [8:8]
        _0: u1 = undefined,
        /// Capture/Compare 1 overcapture flag [9:9]
        CC1OF: u1 = 0x0,
        /// Capture/compare 2 overcapture flag [10:10]
        CC2OF: u1 = 0x0,
        /// Capture/Compare 3 overcapture flag [11:11]
        CC3OF: u1 = 0x0,
        /// Capture/Compare 4 overcapture flag [12:12]
        CC4OF: u1 = 0x0,
        /// Reserved [13:31]
        _1: u19 = undefined,
    }).init(0x40012C10);
    /// event generation register
    pub const EGR = reg.WO(packed struct(u32) {
        /// Update generation [0:0]
        UG: u1 = 0x0,
        /// Capture/compare 1 generation [1:1]
        CC1G: u1 = 0x0,
        /// Capture/compare 2 generation [2:2]
        CC2G: u1 = 0x0,
        /// Capture/compare 3 generation [3:3]
        CC3G: u1 = 0x0,
        /// Capture/compare 4 generation [4:4]
        CC4G: u1 = 0x0,
        /// Capture/Compare control update generation [5:5]
        COMG: u1 = 0x0,
        /// Trigger generation [6:6]
        TG: u1 = 0x0,
        /// Break generation [7:7]
        BG: u1 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x40012C14);
    /// capture/compare mode register (output mode)
    pub const CCMR1_Output = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Output Compare 1 fast enable [2:2]
        OC1FE: u1 = 0x0,
        /// Output Compare 1 preload enable [3:3]
        OC1PE: u1 = 0x0,
        /// Output Compare 1 mode [4:6]
        OC1M: u3 = 0x0,
        /// Output Compare 1 clear enable [7:7]
        OC1CE: u1 = 0x0,
        /// Capture/Compare 2 selection [8:9]
        CC2S: u2 = 0x0,
        /// Output Compare 2 fast enable [10:10]
        OC2FE: u1 = 0x0,
        /// Output Compare 2 preload enable [11:11]
        OC2PE: u1 = 0x0,
        /// Output Compare 2 mode [12:14]
        OC2M: u3 = 0x0,
        /// Output Compare 2 clear enable [15:15]
        OC2CE: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40012C18);
    /// capture/compare mode register 1 (input mode)
    pub const CCMR1_Input = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Input capture 1 prescaler [2:3]
        ICPCS: u2 = 0x0,
        /// Input capture 1 filter [4:7]
        IC1F: u4 = 0x0,
        /// Capture/Compare 2 selection [8:9]
        CC2S: u2 = 0x0,
        /// Input capture 2 prescaler [10:11]
        IC2PCS: u2 = 0x0,
        /// Reserved [12:14]
        _0: u3 = undefined,
        /// Input capture 2 filter [15:18]
        IC2F: u4 = 0x0,
        /// Reserved [19:31]
        _1: u13 = undefined,
    }).init(0x40012C18);
    /// capture/compare mode register (output mode)
    pub const CCMR2_Output = reg.RW(packed struct(u32) {
        /// Capture/Compare 3 selection [0:1]
        CC3S: u2 = 0x0,
        /// Output compare 3 fast enable [2:2]
        OC3FE: u1 = 0x0,
        /// Output compare 3 preload enable [3:3]
        OC3PE: u1 = 0x0,
        /// Output compare 3 mode [4:6]
        OC3M: u3 = 0x0,
        /// Output compare 3 clear enable [7:7]
        OC3CE: u1 = 0x0,
        /// Capture/Compare 4 selection [8:9]
        CC4S: u2 = 0x0,
        /// Output compare 4 fast enable [10:10]
        OC4FE: u1 = 0x0,
        /// Output compare 4 preload enable [11:11]
        OC4PE: u1 = 0x0,
        /// Output compare 4 mode [12:14]
        OC4M: u3 = 0x0,
        /// Output compare 4 clear enable [15:15]
        OC4CE: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40012C1C);
    /// capture/compare mode register 2 (input mode)
    pub const CCMR2_Input = reg.RW(packed struct(u32) {
        /// Capture/compare 3 selection [0:1]
        CC3S: u2 = 0x0,
        /// Input capture 3 prescaler [2:3]
        IC3PSC: u2 = 0x0,
        /// Input capture 3 filter [4:7]
        IC3F: u4 = 0x0,
        /// Capture/Compare 4 selection [8:9]
        CC4S: u2 = 0x0,
        /// Input capture 4 prescaler [10:11]
        IC4PSC: u2 = 0x0,
        /// Reserved [12:14]
        _0: u3 = undefined,
        /// Input capture 4 filter [15:18]
        IC4F: u4 = 0x0,
        /// Reserved [19:31]
        _1: u13 = undefined,
    }).init(0x40012C1C);
    /// capture/compare enable register
    pub const CCER = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 output enable [0:0]
        CC1E: u1 = 0x0,
        /// Capture/Compare 1 output Polarity [1:1]
        CC1P: u1 = 0x0,
        /// Capture/Compare 1 complementary output enable [2:2]
        CC1NE: u1 = 0x0,
        /// Capture/Compare 1 output Polarity [3:3]
        CC1NP: u1 = 0x0,
        /// Capture/Compare 2 output enable [4:4]
        CC2E: u1 = 0x0,
        /// Capture/Compare 2 output Polarity [5:5]
        CC2P: u1 = 0x0,
        /// Capture/Compare 2 complementary output enable [6:6]
        CC2NE: u1 = 0x0,
        /// Capture/Compare 2 output Polarity [7:7]
        CC2NP: u1 = 0x0,
        /// Capture/Compare 3 output enable [8:8]
        CC3E: u1 = 0x0,
        /// Capture/Compare 3 output Polarity [9:9]
        CC3P: u1 = 0x0,
        /// Capture/Compare 3 complementary output enable [10:10]
        CC3NE: u1 = 0x0,
        /// Capture/Compare 3 output Polarity [11:11]
        CC3NP: u1 = 0x0,
        /// Capture/Compare 4 output enable [12:12]
        CC4E: u1 = 0x0,
        /// Capture/Compare 3 output Polarity [13:13]
        CC4P: u1 = 0x0,
        /// Reserved [14:31]
        _0: u18 = undefined,
    }).init(0x40012C20);
    /// counter
    pub const CNT = reg.RW(packed struct(u32) {
        /// counter value [0:15]
        CNT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40012C24);
    /// prescaler
    pub const PSC = reg.RW(packed struct(u32) {
        /// Prescaler value [0:15]
        PSC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40012C28);
    /// auto-reload register
    pub const ARR = reg.RW(packed struct(u32) {
        /// Auto-reload value [0:15]
        ARR: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40012C2C);
    /// capture/compare register 1
    pub const CCR1 = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 value [0:15]
        CCR1: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40012C34);
    /// capture/compare register 2
    pub const CCR2 = reg.RW(packed struct(u32) {
        /// Capture/Compare 2 value [0:15]
        CCR2: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40012C38);
    /// capture/compare register 3
    pub const CCR3 = reg.RW(packed struct(u32) {
        /// Capture/Compare value [0:15]
        CCR3: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40012C3C);
    /// capture/compare register 4
    pub const CCR4 = reg.RW(packed struct(u32) {
        /// Capture/Compare value [0:15]
        CCR4: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40012C40);
    /// DMA control register
    pub const DCR = reg.RW(packed struct(u32) {
        /// DMA base address [0:4]
        DBA: u5 = 0x0,
        /// Reserved [5:7]
        _0: u3 = undefined,
        /// DMA burst length [8:12]
        DBL: u5 = 0x0,
        /// Reserved [13:31]
        _1: u19 = undefined,
    }).init(0x40012C48);
    /// DMA address for full transfer
    pub const DMAR = reg.RW(packed struct(u32) {
        /// DMA register for burst accesses [0:15]
        DMAB: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40012C4C);
    /// repetition counter register
    pub const RCR = reg.RW(packed struct(u32) {
        /// Repetition counter value [0:7]
        REP: u8 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x40012C30);
    /// break and dead-time register
    pub const BDTR = reg.RW(packed struct(u32) {
        /// Dead-time generator setup [0:7]
        DTG: u8 = 0x0,
        /// Lock configuration [8:9]
        LOCK: u2 = 0x0,
        /// Off-state selection for Idle mode [10:10]
        OSSI: u1 = 0x0,
        /// Off-state selection for Run mode [11:11]
        OSSR: u1 = 0x0,
        /// Break enable [12:12]
        BKE: u1 = 0x0,
        /// Break polarity [13:13]
        BKP: u1 = 0x0,
        /// Automatic output enable [14:14]
        AOE: u1 = 0x0,
        /// Main output enable [15:15]
        MOE: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40012C44);
};

pub const TIM2 = struct {
    pub const IRQ = struct {
        /// TIM2 global interrupt
        pub const TIM2 = 28;
    };
    /// control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Counter enable [0:0]
        CEN: u1 = 0x0,
        /// Update disable [1:1]
        UDIS: u1 = 0x0,
        /// Update request source [2:2]
        URS: u1 = 0x0,
        /// One-pulse mode [3:3]
        OPM: u1 = 0x0,
        /// Direction [4:4]
        DIR: u1 = 0x0,
        /// Center-aligned mode selection [5:6]
        CMS: u2 = 0x0,
        /// Auto-reload preload enable [7:7]
        ARPE: u1 = 0x0,
        /// Clock division [8:9]
        CKD: u2 = 0x0,
        /// Reserved [10:31]
        _0: u22 = undefined,
    }).init(0x40000000);
    /// control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Reserved [0:2]
        _0: u3 = undefined,
        /// Capture/compare DMA selection [3:3]
        CCDS: u1 = 0x0,
        /// Master mode selection [4:6]
        MMS: u3 = 0x0,
        /// TI1 selection [7:7]
        TI1S: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40000004);
    /// slave mode control register
    pub const SMCR = reg.RW(packed struct(u32) {
        /// Slave mode selection [0:2]
        SMS: u3 = 0x0,
        /// OCREF clear selection [3:3]
        OCCS: u1 = 0x0,
        /// Trigger selection [4:6]
        TS: u3 = 0x0,
        /// Master/Slave mode [7:7]
        MSM: u1 = 0x0,
        /// External trigger filter [8:11]
        ETF: u4 = 0x0,
        /// External trigger prescaler [12:13]
        ETPS: u2 = 0x0,
        /// External clock enable [14:14]
        ECE: u1 = 0x0,
        /// External trigger polarity [15:15]
        ETP: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000008);
    /// DMA/Interrupt enable register
    pub const DIER = reg.RW(packed struct(u32) {
        /// Update interrupt enable [0:0]
        UIE: u1 = 0x0,
        /// Capture/Compare 1 interrupt enable [1:1]
        CC1IE: u1 = 0x0,
        /// Capture/Compare 2 interrupt enable [2:2]
        CC2IE: u1 = 0x0,
        /// Capture/Compare 3 interrupt enable [3:3]
        CC3IE: u1 = 0x0,
        /// Capture/Compare 4 interrupt enable [4:4]
        CC4IE: u1 = 0x0,
        /// Reserved [5:5]
        _0: u1 = undefined,
        /// Trigger interrupt enable [6:6]
        TIE: u1 = 0x0,
        /// Reserved [7:7]
        _1: u1 = undefined,
        /// Update DMA request enable [8:8]
        UDE: u1 = 0x0,
        /// Capture/Compare 1 DMA request enable [9:9]
        CC1DE: u1 = 0x0,
        /// Capture/Compare 2 DMA request enable [10:10]
        CC2DE: u1 = 0x0,
        /// Capture/Compare 3 DMA request enable [11:11]
        CC3DE: u1 = 0x0,
        /// Capture/Compare 4 DMA request enable [12:12]
        CC4DE: u1 = 0x0,
        /// Reserved [13:13]
        _2: u1 = undefined,
        /// Trigger DMA request enable [14:14]
        TDE: u1 = 0x0,
        /// Reserved [15:31]
        _3: u17 = undefined,
    }).init(0x4000000C);
    /// status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Update interrupt flag [0:0]
        UIF: u1 = 0x0,
        /// Capture/compare 1 interrupt flag [1:1]
        CC1IF: u1 = 0x0,
        /// Capture/Compare 2 interrupt flag [2:2]
        CC2IF: u1 = 0x0,
        /// Capture/Compare 3 interrupt flag [3:3]
        CC3IF: u1 = 0x0,
        /// Capture/Compare 4 interrupt flag [4:4]
        CC4IF: u1 = 0x0,
        /// Reserved [5:5]
        _0: u1 = undefined,
        /// Trigger interrupt flag [6:6]
        TIF: u1 = 0x0,
        /// Reserved [7:8]
        _1: u2 = undefined,
        /// Capture/Compare 1 overcapture flag [9:9]
        CC1OF: u1 = 0x0,
        /// Capture/compare 2 overcapture flag [10:10]
        CC2OF: u1 = 0x0,
        /// Capture/Compare 3 overcapture flag [11:11]
        CC3OF: u1 = 0x0,
        /// Capture/Compare 4 overcapture flag [12:12]
        CC4OF: u1 = 0x0,
        /// Reserved [13:31]
        _2: u19 = undefined,
    }).init(0x40000010);
    /// event generation register
    pub const EGR = reg.WO(packed struct(u32) {
        /// Update generation [0:0]
        UG: u1 = 0x0,
        /// Capture/compare 1 generation [1:1]
        CC1G: u1 = 0x0,
        /// Capture/compare 2 generation [2:2]
        CC2G: u1 = 0x0,
        /// Capture/compare 3 generation [3:3]
        CC3G: u1 = 0x0,
        /// Capture/compare 4 generation [4:4]
        CC4G: u1 = 0x0,
        /// Reserved [5:5]
        _0: u1 = undefined,
        /// Trigger generation [6:6]
        TG: u1 = 0x0,
        /// Reserved [7:31]
        _1: u25 = undefined,
    }).init(0x40000014);
    /// capture/compare mode register 1 (output mode)
    pub const CCMR1_Output = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Output compare 1 fast enable [2:2]
        OC1FE: u1 = 0x0,
        /// Output compare 1 preload enable [3:3]
        OC1PE: u1 = 0x0,
        /// Output compare 1 mode [4:6]
        OC1M: u3 = 0x0,
        /// Output compare 1 clear enable [7:7]
        OC1CE: u1 = 0x0,
        /// Capture/Compare 2 selection [8:9]
        CC2S: u2 = 0x0,
        /// Output compare 2 fast enable [10:10]
        OC2FE: u1 = 0x0,
        /// Output compare 2 preload enable [11:11]
        OC2PE: u1 = 0x0,
        /// Output compare 2 mode [12:14]
        OC2M: u3 = 0x0,
        /// Output compare 2 clear enable [15:15]
        OC2CE: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000018);
    /// capture/compare mode register 1 (input mode)
    pub const CCMR1_Input = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Input capture 1 prescaler [2:3]
        IC1PSC: u2 = 0x0,
        /// Input capture 1 filter [4:7]
        IC1F: u4 = 0x0,
        /// Capture/compare 2 selection [8:9]
        CC2S: u2 = 0x0,
        /// Input capture 2 prescaler [10:11]
        IC2PSC: u2 = 0x0,
        /// Input capture 2 filter [12:15]
        IC2F: u4 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000018);
    /// capture/compare mode register 2 (output mode)
    pub const CCMR2_Output = reg.RW(packed struct(u32) {
        /// Capture/Compare 3 selection [0:1]
        CC3S: u2 = 0x0,
        /// Output compare 3 fast enable [2:2]
        OC3FE: u1 = 0x0,
        /// Output compare 3 preload enable [3:3]
        OC3PE: u1 = 0x0,
        /// Output compare 3 mode [4:6]
        OC3M: u3 = 0x0,
        /// Output compare 3 clear enable [7:7]
        OC3CE: u1 = 0x0,
        /// Capture/Compare 4 selection [8:9]
        CC4S: u2 = 0x0,
        /// Output compare 4 fast enable [10:10]
        OC4FE: u1 = 0x0,
        /// Output compare 4 preload enable [11:11]
        OC4PE: u1 = 0x0,
        /// Output compare 4 mode [12:14]
        OC4M: u3 = 0x0,
        /// Output compare 4 clear enable [15:15]
        OC4CE: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000001C);
    /// capture/compare mode register 2 (input mode)
    pub const CCMR2_Input = reg.RW(packed struct(u32) {
        /// Capture/Compare 3 selection [0:1]
        CC3S: u2 = 0x0,
        /// Input capture 3 prescaler [2:3]
        IC3PSC: u2 = 0x0,
        /// Input capture 3 filter [4:7]
        IC3F: u4 = 0x0,
        /// Capture/Compare 4 selection [8:9]
        CC4S: u2 = 0x0,
        /// Input capture 4 prescaler [10:11]
        IC4PSC: u2 = 0x0,
        /// Input capture 4 filter [12:15]
        IC4F: u4 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000001C);
    /// capture/compare enable register
    pub const CCER = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 output enable [0:0]
        CC1E: u1 = 0x0,
        /// Capture/Compare 1 output Polarity [1:1]
        CC1P: u1 = 0x0,
        /// Reserved [2:3]
        _0: u2 = undefined,
        /// Capture/Compare 2 output enable [4:4]
        CC2E: u1 = 0x0,
        /// Capture/Compare 2 output Polarity [5:5]
        CC2P: u1 = 0x0,
        /// Reserved [6:7]
        _1: u2 = undefined,
        /// Capture/Compare 3 output enable [8:8]
        CC3E: u1 = 0x0,
        /// Capture/Compare 3 output Polarity [9:9]
        CC3P: u1 = 0x0,
        /// Reserved [10:11]
        _2: u2 = undefined,
        /// Capture/Compare 4 output enable [12:12]
        CC4E: u1 = 0x0,
        /// Capture/Compare 3 output Polarity [13:13]
        CC4P: u1 = 0x0,
        /// Reserved [14:31]
        _3: u18 = undefined,
    }).init(0x40000020);
    /// counter
    pub const CNT = reg.RW(packed struct(u32) {
        /// counter value [0:15]
        CNT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000024);
    /// prescaler
    pub const PSC = reg.RW(packed struct(u32) {
        /// Prescaler value [0:15]
        PSC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000028);
    /// auto-reload register
    pub const ARR = reg.RW(packed struct(u32) {
        /// Auto-reload value [0:15]
        ARR: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000002C);
    /// capture/compare register 1
    pub const CCR1 = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 value [0:15]
        CCR1: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000034);
    /// capture/compare register 2
    pub const CCR2 = reg.RW(packed struct(u32) {
        /// Capture/Compare 2 value [0:15]
        CCR2: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000038);
    /// capture/compare register 3
    pub const CCR3 = reg.RW(packed struct(u32) {
        /// Capture/Compare value [0:15]
        CCR3: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000003C);
    /// capture/compare register 4
    pub const CCR4 = reg.RW(packed struct(u32) {
        /// Capture/Compare value [0:15]
        CCR4: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000040);
    /// DMA control register
    pub const DCR = reg.RW(packed struct(u32) {
        /// DMA base address [0:4]
        DBA: u5 = 0x0,
        /// Reserved [5:7]
        _0: u3 = undefined,
        /// DMA burst length [8:12]
        DBL: u5 = 0x0,
        /// Reserved [13:31]
        _1: u19 = undefined,
    }).init(0x40000048);
    /// DMA address for full transfer
    pub const DMAR = reg.RW(packed struct(u32) {
        /// DMA register for burst accesses [0:15]
        DMAB: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000004C);
};

pub const TIM3 = struct {
    pub const IRQ = struct {
        /// TIM3 global interrupt
        pub const TIM3 = 29;
    };
    /// control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Counter enable [0:0]
        CEN: u1 = 0x0,
        /// Update disable [1:1]
        UDIS: u1 = 0x0,
        /// Update request source [2:2]
        URS: u1 = 0x0,
        /// One-pulse mode [3:3]
        OPM: u1 = 0x0,
        /// Direction [4:4]
        DIR: u1 = 0x0,
        /// Center-aligned mode selection [5:6]
        CMS: u2 = 0x0,
        /// Auto-reload preload enable [7:7]
        ARPE: u1 = 0x0,
        /// Clock division [8:9]
        CKD: u2 = 0x0,
        /// Reserved [10:31]
        _0: u22 = undefined,
    }).init(0x40000400);
    /// control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Reserved [0:2]
        _0: u3 = undefined,
        /// Capture/compare DMA selection [3:3]
        CCDS: u1 = 0x0,
        /// Master mode selection [4:6]
        MMS: u3 = 0x0,
        /// TI1 selection [7:7]
        TI1S: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40000404);
    /// slave mode control register
    pub const SMCR = reg.RW(packed struct(u32) {
        /// Slave mode selection [0:2]
        SMS: u3 = 0x0,
        /// OCREF clear selection [3:3]
        OCCS: u1 = 0x0,
        /// Trigger selection [4:6]
        TS: u3 = 0x0,
        /// Master/Slave mode [7:7]
        MSM: u1 = 0x0,
        /// External trigger filter [8:11]
        ETF: u4 = 0x0,
        /// External trigger prescaler [12:13]
        ETPS: u2 = 0x0,
        /// External clock enable [14:14]
        ECE: u1 = 0x0,
        /// External trigger polarity [15:15]
        ETP: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000408);
    /// DMA/Interrupt enable register
    pub const DIER = reg.RW(packed struct(u32) {
        /// Update interrupt enable [0:0]
        UIE: u1 = 0x0,
        /// Capture/Compare 1 interrupt enable [1:1]
        CC1IE: u1 = 0x0,
        /// Capture/Compare 2 interrupt enable [2:2]
        CC2IE: u1 = 0x0,
        /// Capture/Compare 3 interrupt enable [3:3]
        CC3IE: u1 = 0x0,
        /// Capture/Compare 4 interrupt enable [4:4]
        CC4IE: u1 = 0x0,
        /// Reserved [5:5]
        _0: u1 = undefined,
        /// Trigger interrupt enable [6:6]
        TIE: u1 = 0x0,
        /// Reserved [7:7]
        _1: u1 = undefined,
        /// Update DMA request enable [8:8]
        UDE: u1 = 0x0,
        /// Capture/Compare 1 DMA request enable [9:9]
        CC1DE: u1 = 0x0,
        /// Capture/Compare 2 DMA request enable [10:10]
        CC2DE: u1 = 0x0,
        /// Capture/Compare 3 DMA request enable [11:11]
        CC3DE: u1 = 0x0,
        /// Capture/Compare 4 DMA request enable [12:12]
        CC4DE: u1 = 0x0,
        /// Reserved [13:13]
        _2: u1 = undefined,
        /// Trigger DMA request enable [14:14]
        TDE: u1 = 0x0,
        /// Reserved [15:31]
        _3: u17 = undefined,
    }).init(0x4000040C);
    /// status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Update interrupt flag [0:0]
        UIF: u1 = 0x0,
        /// Capture/compare 1 interrupt flag [1:1]
        CC1IF: u1 = 0x0,
        /// Capture/Compare 2 interrupt flag [2:2]
        CC2IF: u1 = 0x0,
        /// Capture/Compare 3 interrupt flag [3:3]
        CC3IF: u1 = 0x0,
        /// Capture/Compare 4 interrupt flag [4:4]
        CC4IF: u1 = 0x0,
        /// Reserved [5:5]
        _0: u1 = undefined,
        /// Trigger interrupt flag [6:6]
        TIF: u1 = 0x0,
        /// Reserved [7:8]
        _1: u2 = undefined,
        /// Capture/Compare 1 overcapture flag [9:9]
        CC1OF: u1 = 0x0,
        /// Capture/compare 2 overcapture flag [10:10]
        CC2OF: u1 = 0x0,
        /// Capture/Compare 3 overcapture flag [11:11]
        CC3OF: u1 = 0x0,
        /// Capture/Compare 4 overcapture flag [12:12]
        CC4OF: u1 = 0x0,
        /// Reserved [13:31]
        _2: u19 = undefined,
    }).init(0x40000410);
    /// event generation register
    pub const EGR = reg.WO(packed struct(u32) {
        /// Update generation [0:0]
        UG: u1 = 0x0,
        /// Capture/compare 1 generation [1:1]
        CC1G: u1 = 0x0,
        /// Capture/compare 2 generation [2:2]
        CC2G: u1 = 0x0,
        /// Capture/compare 3 generation [3:3]
        CC3G: u1 = 0x0,
        /// Capture/compare 4 generation [4:4]
        CC4G: u1 = 0x0,
        /// Reserved [5:5]
        _0: u1 = undefined,
        /// Trigger generation [6:6]
        TG: u1 = 0x0,
        /// Reserved [7:31]
        _1: u25 = undefined,
    }).init(0x40000414);
    /// capture/compare mode register 1 (output mode)
    pub const CCMR1_Output = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Output compare 1 fast enable [2:2]
        OC1FE: u1 = 0x0,
        /// Output compare 1 preload enable [3:3]
        OC1PE: u1 = 0x0,
        /// Output compare 1 mode [4:6]
        OC1M: u3 = 0x0,
        /// Output compare 1 clear enable [7:7]
        OC1CE: u1 = 0x0,
        /// Capture/Compare 2 selection [8:9]
        CC2S: u2 = 0x0,
        /// Output compare 2 fast enable [10:10]
        OC2FE: u1 = 0x0,
        /// Output compare 2 preload enable [11:11]
        OC2PE: u1 = 0x0,
        /// Output compare 2 mode [12:14]
        OC2M: u3 = 0x0,
        /// Output compare 2 clear enable [15:15]
        OC2CE: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000418);
    /// capture/compare mode register 1 (input mode)
    pub const CCMR1_Input = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Input capture 1 prescaler [2:3]
        IC1PSC: u2 = 0x0,
        /// Input capture 1 filter [4:7]
        IC1F: u4 = 0x0,
        /// Capture/compare 2 selection [8:9]
        CC2S: u2 = 0x0,
        /// Input capture 2 prescaler [10:11]
        IC2PSC: u2 = 0x0,
        /// Input capture 2 filter [12:15]
        IC2F: u4 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000418);
    /// capture/compare mode register 2 (output mode)
    pub const CCMR2_Output = reg.RW(packed struct(u32) {
        /// Capture/Compare 3 selection [0:1]
        CC3S: u2 = 0x0,
        /// Output compare 3 fast enable [2:2]
        OC3FE: u1 = 0x0,
        /// Output compare 3 preload enable [3:3]
        OC3PE: u1 = 0x0,
        /// Output compare 3 mode [4:6]
        OC3M: u3 = 0x0,
        /// Output compare 3 clear enable [7:7]
        OC3CE: u1 = 0x0,
        /// Capture/Compare 4 selection [8:9]
        CC4S: u2 = 0x0,
        /// Output compare 4 fast enable [10:10]
        OC4FE: u1 = 0x0,
        /// Output compare 4 preload enable [11:11]
        OC4PE: u1 = 0x0,
        /// Output compare 4 mode [12:14]
        OC4M: u3 = 0x0,
        /// Output compare 4 clear enable [15:15]
        OC4CE: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000041C);
    /// capture/compare mode register 2 (input mode)
    pub const CCMR2_Input = reg.RW(packed struct(u32) {
        /// Capture/Compare 3 selection [0:1]
        CC3S: u2 = 0x0,
        /// Input capture 3 prescaler [2:3]
        IC3PSC: u2 = 0x0,
        /// Input capture 3 filter [4:7]
        IC3F: u4 = 0x0,
        /// Capture/Compare 4 selection [8:9]
        CC4S: u2 = 0x0,
        /// Input capture 4 prescaler [10:11]
        IC4PSC: u2 = 0x0,
        /// Input capture 4 filter [12:15]
        IC4F: u4 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000041C);
    /// capture/compare enable register
    pub const CCER = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 output enable [0:0]
        CC1E: u1 = 0x0,
        /// Capture/Compare 1 output Polarity [1:1]
        CC1P: u1 = 0x0,
        /// Reserved [2:3]
        _0: u2 = undefined,
        /// Capture/Compare 2 output enable [4:4]
        CC2E: u1 = 0x0,
        /// Capture/Compare 2 output Polarity [5:5]
        CC2P: u1 = 0x0,
        /// Reserved [6:7]
        _1: u2 = undefined,
        /// Capture/Compare 3 output enable [8:8]
        CC3E: u1 = 0x0,
        /// Capture/Compare 3 output Polarity [9:9]
        CC3P: u1 = 0x0,
        /// Reserved [10:11]
        _2: u2 = undefined,
        /// Capture/Compare 4 output enable [12:12]
        CC4E: u1 = 0x0,
        /// Capture/Compare 3 output Polarity [13:13]
        CC4P: u1 = 0x0,
        /// Reserved [14:31]
        _3: u18 = undefined,
    }).init(0x40000420);
    /// counter
    pub const CNT = reg.RW(packed struct(u32) {
        /// counter value [0:15]
        CNT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000424);
    /// prescaler
    pub const PSC = reg.RW(packed struct(u32) {
        /// Prescaler value [0:15]
        PSC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000428);
    /// auto-reload register
    pub const ARR = reg.RW(packed struct(u32) {
        /// Auto-reload value [0:15]
        ARR: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000042C);
    /// capture/compare register 1
    pub const CCR1 = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 value [0:15]
        CCR1: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000434);
    /// capture/compare register 2
    pub const CCR2 = reg.RW(packed struct(u32) {
        /// Capture/Compare 2 value [0:15]
        CCR2: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000438);
    /// capture/compare register 3
    pub const CCR3 = reg.RW(packed struct(u32) {
        /// Capture/Compare value [0:15]
        CCR3: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000043C);
    /// capture/compare register 4
    pub const CCR4 = reg.RW(packed struct(u32) {
        /// Capture/Compare value [0:15]
        CCR4: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000440);
    /// DMA control register
    pub const DCR = reg.RW(packed struct(u32) {
        /// DMA base address [0:4]
        DBA: u5 = 0x0,
        /// Reserved [5:7]
        _0: u3 = undefined,
        /// DMA burst length [8:12]
        DBL: u5 = 0x0,
        /// Reserved [13:31]
        _1: u19 = undefined,
    }).init(0x40000448);
    /// DMA address for full transfer
    pub const DMAR = reg.RW(packed struct(u32) {
        /// DMA register for burst accesses [0:15]
        DMAB: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000044C);
};

pub const TIM4 = struct {
    pub const IRQ = struct {
        /// TIM4 global interrupt
        pub const TIM4 = 30;
    };
    /// control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Counter enable [0:0]
        CEN: u1 = 0x0,
        /// Update disable [1:1]
        UDIS: u1 = 0x0,
        /// Update request source [2:2]
        URS: u1 = 0x0,
        /// One-pulse mode [3:3]
        OPM: u1 = 0x0,
        /// Direction [4:4]
        DIR: u1 = 0x0,
        /// Center-aligned mode selection [5:6]
        CMS: u2 = 0x0,
        /// Auto-reload preload enable [7:7]
        ARPE: u1 = 0x0,
        /// Clock division [8:9]
        CKD: u2 = 0x0,
        /// Reserved [10:31]
        _0: u22 = undefined,
    }).init(0x40000800);
    /// control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Reserved [0:2]
        _0: u3 = undefined,
        /// Capture/compare DMA selection [3:3]
        CCDS: u1 = 0x0,
        /// Master mode selection [4:6]
        MMS: u3 = 0x0,
        /// TI1 selection [7:7]
        TI1S: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40000804);
    /// slave mode control register
    pub const SMCR = reg.RW(packed struct(u32) {
        /// Slave mode selection [0:2]
        SMS: u3 = 0x0,
        /// OCREF clear selection [3:3]
        OCCS: u1 = 0x0,
        /// Trigger selection [4:6]
        TS: u3 = 0x0,
        /// Master/Slave mode [7:7]
        MSM: u1 = 0x0,
        /// External trigger filter [8:11]
        ETF: u4 = 0x0,
        /// External trigger prescaler [12:13]
        ETPS: u2 = 0x0,
        /// External clock enable [14:14]
        ECE: u1 = 0x0,
        /// External trigger polarity [15:15]
        ETP: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000808);
    /// DMA/Interrupt enable register
    pub const DIER = reg.RW(packed struct(u32) {
        /// Update interrupt enable [0:0]
        UIE: u1 = 0x0,
        /// Capture/Compare 1 interrupt enable [1:1]
        CC1IE: u1 = 0x0,
        /// Capture/Compare 2 interrupt enable [2:2]
        CC2IE: u1 = 0x0,
        /// Capture/Compare 3 interrupt enable [3:3]
        CC3IE: u1 = 0x0,
        /// Capture/Compare 4 interrupt enable [4:4]
        CC4IE: u1 = 0x0,
        /// Reserved [5:5]
        _0: u1 = undefined,
        /// Trigger interrupt enable [6:6]
        TIE: u1 = 0x0,
        /// Reserved [7:7]
        _1: u1 = undefined,
        /// Update DMA request enable [8:8]
        UDE: u1 = 0x0,
        /// Capture/Compare 1 DMA request enable [9:9]
        CC1DE: u1 = 0x0,
        /// Capture/Compare 2 DMA request enable [10:10]
        CC2DE: u1 = 0x0,
        /// Capture/Compare 3 DMA request enable [11:11]
        CC3DE: u1 = 0x0,
        /// Capture/Compare 4 DMA request enable [12:12]
        CC4DE: u1 = 0x0,
        /// Reserved [13:13]
        _2: u1 = undefined,
        /// Trigger DMA request enable [14:14]
        TDE: u1 = 0x0,
        /// Reserved [15:31]
        _3: u17 = undefined,
    }).init(0x4000080C);
    /// status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Update interrupt flag [0:0]
        UIF: u1 = 0x0,
        /// Capture/compare 1 interrupt flag [1:1]
        CC1IF: u1 = 0x0,
        /// Capture/Compare 2 interrupt flag [2:2]
        CC2IF: u1 = 0x0,
        /// Capture/Compare 3 interrupt flag [3:3]
        CC3IF: u1 = 0x0,
        /// Capture/Compare 4 interrupt flag [4:4]
        CC4IF: u1 = 0x0,
        /// Reserved [5:5]
        _0: u1 = undefined,
        /// Trigger interrupt flag [6:6]
        TIF: u1 = 0x0,
        /// Reserved [7:8]
        _1: u2 = undefined,
        /// Capture/Compare 1 overcapture flag [9:9]
        CC1OF: u1 = 0x0,
        /// Capture/compare 2 overcapture flag [10:10]
        CC2OF: u1 = 0x0,
        /// Capture/Compare 3 overcapture flag [11:11]
        CC3OF: u1 = 0x0,
        /// Capture/Compare 4 overcapture flag [12:12]
        CC4OF: u1 = 0x0,
        /// Reserved [13:31]
        _2: u19 = undefined,
    }).init(0x40000810);
    /// event generation register
    pub const EGR = reg.WO(packed struct(u32) {
        /// Update generation [0:0]
        UG: u1 = 0x0,
        /// Capture/compare 1 generation [1:1]
        CC1G: u1 = 0x0,
        /// Capture/compare 2 generation [2:2]
        CC2G: u1 = 0x0,
        /// Capture/compare 3 generation [3:3]
        CC3G: u1 = 0x0,
        /// Capture/compare 4 generation [4:4]
        CC4G: u1 = 0x0,
        /// Reserved [5:5]
        _0: u1 = undefined,
        /// Trigger generation [6:6]
        TG: u1 = 0x0,
        /// Reserved [7:31]
        _1: u25 = undefined,
    }).init(0x40000814);
    /// capture/compare mode register 1 (output mode)
    pub const CCMR1_Output = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Output compare 1 fast enable [2:2]
        OC1FE: u1 = 0x0,
        /// Output compare 1 preload enable [3:3]
        OC1PE: u1 = 0x0,
        /// Output compare 1 mode [4:6]
        OC1M: u3 = 0x0,
        /// Output compare 1 clear enable [7:7]
        OC1CE: u1 = 0x0,
        /// Capture/Compare 2 selection [8:9]
        CC2S: u2 = 0x0,
        /// Output compare 2 fast enable [10:10]
        OC2FE: u1 = 0x0,
        /// Output compare 2 preload enable [11:11]
        OC2PE: u1 = 0x0,
        /// Output compare 2 mode [12:14]
        OC2M: u3 = 0x0,
        /// Output compare 2 clear enable [15:15]
        OC2CE: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000818);
    /// capture/compare mode register 1 (input mode)
    pub const CCMR1_Input = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Input capture 1 prescaler [2:3]
        IC1PSC: u2 = 0x0,
        /// Input capture 1 filter [4:7]
        IC1F: u4 = 0x0,
        /// Capture/compare 2 selection [8:9]
        CC2S: u2 = 0x0,
        /// Input capture 2 prescaler [10:11]
        IC2PSC: u2 = 0x0,
        /// Input capture 2 filter [12:15]
        IC2F: u4 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000818);
    /// capture/compare mode register 2 (output mode)
    pub const CCMR2_Output = reg.RW(packed struct(u32) {
        /// Capture/Compare 3 selection [0:1]
        CC3S: u2 = 0x0,
        /// Output compare 3 fast enable [2:2]
        OC3FE: u1 = 0x0,
        /// Output compare 3 preload enable [3:3]
        OC3PE: u1 = 0x0,
        /// Output compare 3 mode [4:6]
        OC3M: u3 = 0x0,
        /// Output compare 3 clear enable [7:7]
        OC3CE: u1 = 0x0,
        /// Capture/Compare 4 selection [8:9]
        CC4S: u2 = 0x0,
        /// Output compare 4 fast enable [10:10]
        OC4FE: u1 = 0x0,
        /// Output compare 4 preload enable [11:11]
        OC4PE: u1 = 0x0,
        /// Output compare 4 mode [12:14]
        OC4M: u3 = 0x0,
        /// Output compare 4 clear enable [15:15]
        OC4CE: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000081C);
    /// capture/compare mode register 2 (input mode)
    pub const CCMR2_Input = reg.RW(packed struct(u32) {
        /// Capture/Compare 3 selection [0:1]
        CC3S: u2 = 0x0,
        /// Input capture 3 prescaler [2:3]
        IC3PSC: u2 = 0x0,
        /// Input capture 3 filter [4:7]
        IC3F: u4 = 0x0,
        /// Capture/Compare 4 selection [8:9]
        CC4S: u2 = 0x0,
        /// Input capture 4 prescaler [10:11]
        IC4PSC: u2 = 0x0,
        /// Input capture 4 filter [12:15]
        IC4F: u4 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000081C);
    /// capture/compare enable register
    pub const CCER = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 output enable [0:0]
        CC1E: u1 = 0x0,
        /// Capture/Compare 1 output Polarity [1:1]
        CC1P: u1 = 0x0,
        /// Reserved [2:3]
        _0: u2 = undefined,
        /// Capture/Compare 2 output enable [4:4]
        CC2E: u1 = 0x0,
        /// Capture/Compare 2 output Polarity [5:5]
        CC2P: u1 = 0x0,
        /// Reserved [6:7]
        _1: u2 = undefined,
        /// Capture/Compare 3 output enable [8:8]
        CC3E: u1 = 0x0,
        /// Capture/Compare 3 output Polarity [9:9]
        CC3P: u1 = 0x0,
        /// Reserved [10:11]
        _2: u2 = undefined,
        /// Capture/Compare 4 output enable [12:12]
        CC4E: u1 = 0x0,
        /// Capture/Compare 3 output Polarity [13:13]
        CC4P: u1 = 0x0,
        /// Reserved [14:31]
        _3: u18 = undefined,
    }).init(0x40000820);
    /// counter
    pub const CNT = reg.RW(packed struct(u32) {
        /// counter value [0:15]
        CNT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000824);
    /// prescaler
    pub const PSC = reg.RW(packed struct(u32) {
        /// Prescaler value [0:15]
        PSC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000828);
    /// auto-reload register
    pub const ARR = reg.RW(packed struct(u32) {
        /// Auto-reload value [0:15]
        ARR: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000082C);
    /// capture/compare register 1
    pub const CCR1 = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 value [0:15]
        CCR1: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000834);
    /// capture/compare register 2
    pub const CCR2 = reg.RW(packed struct(u32) {
        /// Capture/Compare 2 value [0:15]
        CCR2: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000838);
    /// capture/compare register 3
    pub const CCR3 = reg.RW(packed struct(u32) {
        /// Capture/Compare value [0:15]
        CCR3: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000083C);
    /// capture/compare register 4
    pub const CCR4 = reg.RW(packed struct(u32) {
        /// Capture/Compare value [0:15]
        CCR4: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000840);
    /// DMA control register
    pub const DCR = reg.RW(packed struct(u32) {
        /// DMA base address [0:4]
        DBA: u5 = 0x0,
        /// Reserved [5:7]
        _0: u3 = undefined,
        /// DMA burst length [8:12]
        DBL: u5 = 0x0,
        /// Reserved [13:31]
        _1: u19 = undefined,
    }).init(0x40000848);
    /// DMA address for full transfer
    pub const DMAR = reg.RW(packed struct(u32) {
        /// DMA register for burst accesses [0:15]
        DMAB: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000084C);
};

pub const TIM5 = struct {
    pub const IRQ = struct {
        /// TIM5 global interrupt
        pub const TIM5 = 50;
    };
    /// control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Counter enable [0:0]
        CEN: u1 = 0x0,
        /// Update disable [1:1]
        UDIS: u1 = 0x0,
        /// Update request source [2:2]
        URS: u1 = 0x0,
        /// One-pulse mode [3:3]
        OPM: u1 = 0x0,
        /// Direction [4:4]
        DIR: u1 = 0x0,
        /// Center-aligned mode selection [5:6]
        CMS: u2 = 0x0,
        /// Auto-reload preload enable [7:7]
        ARPE: u1 = 0x0,
        /// Clock division [8:9]
        CKD: u2 = 0x0,
        /// Reserved [10:31]
        _0: u22 = undefined,
    }).init(0x40000C00);
    /// control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Reserved [0:2]
        _0: u3 = undefined,
        /// Capture/compare DMA selection [3:3]
        CCDS: u1 = 0x0,
        /// Master mode selection [4:6]
        MMS: u3 = 0x0,
        /// TI1 selection [7:7]
        TI1S: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40000C04);
    /// slave mode control register
    pub const SMCR = reg.RW(packed struct(u32) {
        /// Slave mode selection [0:2]
        SMS: u3 = 0x0,
        /// OCREF clear selection [3:3]
        OCCS: u1 = 0x0,
        /// Trigger selection [4:6]
        TS: u3 = 0x0,
        /// Master/Slave mode [7:7]
        MSM: u1 = 0x0,
        /// External trigger filter [8:11]
        ETF: u4 = 0x0,
        /// External trigger prescaler [12:13]
        ETPS: u2 = 0x0,
        /// External clock enable [14:14]
        ECE: u1 = 0x0,
        /// External trigger polarity [15:15]
        ETP: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000C08);
    /// DMA/Interrupt enable register
    pub const DIER = reg.RW(packed struct(u32) {
        /// Update interrupt enable [0:0]
        UIE: u1 = 0x0,
        /// Capture/Compare 1 interrupt enable [1:1]
        CC1IE: u1 = 0x0,
        /// Capture/Compare 2 interrupt enable [2:2]
        CC2IE: u1 = 0x0,
        /// Capture/Compare 3 interrupt enable [3:3]
        CC3IE: u1 = 0x0,
        /// Capture/Compare 4 interrupt enable [4:4]
        CC4IE: u1 = 0x0,
        /// Reserved [5:5]
        _0: u1 = undefined,
        /// Trigger interrupt enable [6:6]
        TIE: u1 = 0x0,
        /// Reserved [7:7]
        _1: u1 = undefined,
        /// Update DMA request enable [8:8]
        UDE: u1 = 0x0,
        /// Capture/Compare 1 DMA request enable [9:9]
        CC1DE: u1 = 0x0,
        /// Capture/Compare 2 DMA request enable [10:10]
        CC2DE: u1 = 0x0,
        /// Capture/Compare 3 DMA request enable [11:11]
        CC3DE: u1 = 0x0,
        /// Capture/Compare 4 DMA request enable [12:12]
        CC4DE: u1 = 0x0,
        /// Reserved [13:13]
        _2: u1 = undefined,
        /// Trigger DMA request enable [14:14]
        TDE: u1 = 0x0,
        /// Reserved [15:31]
        _3: u17 = undefined,
    }).init(0x40000C0C);
    /// status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Update interrupt flag [0:0]
        UIF: u1 = 0x0,
        /// Capture/compare 1 interrupt flag [1:1]
        CC1IF: u1 = 0x0,
        /// Capture/Compare 2 interrupt flag [2:2]
        CC2IF: u1 = 0x0,
        /// Capture/Compare 3 interrupt flag [3:3]
        CC3IF: u1 = 0x0,
        /// Capture/Compare 4 interrupt flag [4:4]
        CC4IF: u1 = 0x0,
        /// Reserved [5:5]
        _0: u1 = undefined,
        /// Trigger interrupt flag [6:6]
        TIF: u1 = 0x0,
        /// Reserved [7:8]
        _1: u2 = undefined,
        /// Capture/Compare 1 overcapture flag [9:9]
        CC1OF: u1 = 0x0,
        /// Capture/compare 2 overcapture flag [10:10]
        CC2OF: u1 = 0x0,
        /// Capture/Compare 3 overcapture flag [11:11]
        CC3OF: u1 = 0x0,
        /// Capture/Compare 4 overcapture flag [12:12]
        CC4OF: u1 = 0x0,
        /// Reserved [13:31]
        _2: u19 = undefined,
    }).init(0x40000C10);
    /// event generation register
    pub const EGR = reg.WO(packed struct(u32) {
        /// Update generation [0:0]
        UG: u1 = 0x0,
        /// Capture/compare 1 generation [1:1]
        CC1G: u1 = 0x0,
        /// Capture/compare 2 generation [2:2]
        CC2G: u1 = 0x0,
        /// Capture/compare 3 generation [3:3]
        CC3G: u1 = 0x0,
        /// Capture/compare 4 generation [4:4]
        CC4G: u1 = 0x0,
        /// Reserved [5:5]
        _0: u1 = undefined,
        /// Trigger generation [6:6]
        TG: u1 = 0x0,
        /// Reserved [7:31]
        _1: u25 = undefined,
    }).init(0x40000C14);
    /// capture/compare mode register 1 (output mode)
    pub const CCMR1_Output = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Output compare 1 fast enable [2:2]
        OC1FE: u1 = 0x0,
        /// Output compare 1 preload enable [3:3]
        OC1PE: u1 = 0x0,
        /// Output compare 1 mode [4:6]
        OC1M: u3 = 0x0,
        /// Output compare 1 clear enable [7:7]
        OC1CE: u1 = 0x0,
        /// Capture/Compare 2 selection [8:9]
        CC2S: u2 = 0x0,
        /// Output compare 2 fast enable [10:10]
        OC2FE: u1 = 0x0,
        /// Output compare 2 preload enable [11:11]
        OC2PE: u1 = 0x0,
        /// Output compare 2 mode [12:14]
        OC2M: u3 = 0x0,
        /// Output compare 2 clear enable [15:15]
        OC2CE: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000C18);
    /// capture/compare mode register 1 (input mode)
    pub const CCMR1_Input = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Input capture 1 prescaler [2:3]
        IC1PSC: u2 = 0x0,
        /// Input capture 1 filter [4:7]
        IC1F: u4 = 0x0,
        /// Capture/compare 2 selection [8:9]
        CC2S: u2 = 0x0,
        /// Input capture 2 prescaler [10:11]
        IC2PSC: u2 = 0x0,
        /// Input capture 2 filter [12:15]
        IC2F: u4 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000C18);
    /// capture/compare mode register 2 (output mode)
    pub const CCMR2_Output = reg.RW(packed struct(u32) {
        /// Capture/Compare 3 selection [0:1]
        CC3S: u2 = 0x0,
        /// Output compare 3 fast enable [2:2]
        OC3FE: u1 = 0x0,
        /// Output compare 3 preload enable [3:3]
        OC3PE: u1 = 0x0,
        /// Output compare 3 mode [4:6]
        OC3M: u3 = 0x0,
        /// Output compare 3 clear enable [7:7]
        OC3CE: u1 = 0x0,
        /// Capture/Compare 4 selection [8:9]
        CC4S: u2 = 0x0,
        /// Output compare 4 fast enable [10:10]
        OC4FE: u1 = 0x0,
        /// Output compare 4 preload enable [11:11]
        OC4PE: u1 = 0x0,
        /// Output compare 4 mode [12:14]
        OC4M: u3 = 0x0,
        /// Output compare 4 clear enable [15:15]
        OC4CE: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000C1C);
    /// capture/compare mode register 2 (input mode)
    pub const CCMR2_Input = reg.RW(packed struct(u32) {
        /// Capture/Compare 3 selection [0:1]
        CC3S: u2 = 0x0,
        /// Input capture 3 prescaler [2:3]
        IC3PSC: u2 = 0x0,
        /// Input capture 3 filter [4:7]
        IC3F: u4 = 0x0,
        /// Capture/Compare 4 selection [8:9]
        CC4S: u2 = 0x0,
        /// Input capture 4 prescaler [10:11]
        IC4PSC: u2 = 0x0,
        /// Input capture 4 filter [12:15]
        IC4F: u4 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000C1C);
    /// capture/compare enable register
    pub const CCER = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 output enable [0:0]
        CC1E: u1 = 0x0,
        /// Capture/Compare 1 output Polarity [1:1]
        CC1P: u1 = 0x0,
        /// Reserved [2:3]
        _0: u2 = undefined,
        /// Capture/Compare 2 output enable [4:4]
        CC2E: u1 = 0x0,
        /// Capture/Compare 2 output Polarity [5:5]
        CC2P: u1 = 0x0,
        /// Reserved [6:7]
        _1: u2 = undefined,
        /// Capture/Compare 3 output enable [8:8]
        CC3E: u1 = 0x0,
        /// Capture/Compare 3 output Polarity [9:9]
        CC3P: u1 = 0x0,
        /// Reserved [10:11]
        _2: u2 = undefined,
        /// Capture/Compare 4 output enable [12:12]
        CC4E: u1 = 0x0,
        /// Capture/Compare 3 output Polarity [13:13]
        CC4P: u1 = 0x0,
        /// Reserved [14:31]
        _3: u18 = undefined,
    }).init(0x40000C20);
    /// counter
    pub const CNT = reg.RW(packed struct(u32) {
        /// counter value [0:15]
        CNT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000C24);
    /// prescaler
    pub const PSC = reg.RW(packed struct(u32) {
        /// Prescaler value [0:15]
        PSC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000C28);
    /// auto-reload register
    pub const ARR = reg.RW(packed struct(u32) {
        /// Auto-reload value [0:15]
        ARR: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000C2C);
    /// capture/compare register 1
    pub const CCR1 = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 value [0:15]
        CCR1: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000C34);
    /// capture/compare register 2
    pub const CCR2 = reg.RW(packed struct(u32) {
        /// Capture/Compare 2 value [0:15]
        CCR2: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000C38);
    /// capture/compare register 3
    pub const CCR3 = reg.RW(packed struct(u32) {
        /// Capture/Compare value [0:15]
        CCR3: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000C3C);
    /// capture/compare register 4
    pub const CCR4 = reg.RW(packed struct(u32) {
        /// Capture/Compare value [0:15]
        CCR4: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000C40);
    /// DMA control register
    pub const DCR = reg.RW(packed struct(u32) {
        /// DMA base address [0:4]
        DBA: u5 = 0x0,
        /// Reserved [5:7]
        _0: u3 = undefined,
        /// DMA burst length [8:12]
        DBL: u5 = 0x0,
        /// Reserved [13:31]
        _1: u19 = undefined,
    }).init(0x40000C48);
    /// DMA address for full transfer
    pub const DMAR = reg.RW(packed struct(u32) {
        /// DMA register for burst accesses [0:15]
        DMAB: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40000C4C);
};

pub const TIM12 = struct {
    pub const IRQ = struct {
        /// TIM12 global interrupt
        pub const TIM12 = 43;
    };
    /// control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Counter enable [0:0]
        CEN: u1 = 0x0,
        /// Update disable [1:1]
        UDIS: u1 = 0x0,
        /// Update request source [2:2]
        URS: u1 = 0x0,
        /// One-pulse mode [3:3]
        OPM: u1 = 0x0,
        /// Reserved [4:6]
        _0: u3 = undefined,
        /// Auto-reload preload enable [7:7]
        ARPE: u1 = 0x0,
        /// Clock division [8:9]
        CKD: u2 = 0x0,
        /// Reserved [10:31]
        _1: u22 = undefined,
    }).init(0x40001800);
    /// control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Reserved [0:3]
        _0: u4 = undefined,
        /// Master mode selection [4:6]
        MMS: u3 = 0x0,
        /// Reserved [7:31]
        _1: u25 = undefined,
    }).init(0x40001804);
    /// slave mode control register
    pub const SMCR = reg.RW(packed struct(u32) {
        /// Slave mode selection [0:2]
        SMS: u3 = 0x0,
        /// Reserved [3:3]
        _0: u1 = undefined,
        /// Trigger selection [4:6]
        TS: u3 = 0x0,
        /// Master/Slave mode [7:7]
        MSM: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40001808);
    /// DMA/Interrupt enable register
    pub const DIER = reg.RW(packed struct(u32) {
        /// Update interrupt enable [0:0]
        UIE: u1 = 0x0,
        /// Capture/Compare 1 interrupt enable [1:1]
        CC1IE: u1 = 0x0,
        /// Capture/Compare 2 interrupt enable [2:2]
        CC2IE: u1 = 0x0,
        /// Reserved [3:5]
        _0: u3 = undefined,
        /// Trigger interrupt enable [6:6]
        TIE: u1 = 0x0,
        /// Reserved [7:31]
        _1: u25 = undefined,
    }).init(0x4000180C);
    /// status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Update interrupt flag [0:0]
        UIF: u1 = 0x0,
        /// Capture/compare 1 interrupt flag [1:1]
        CC1IF: u1 = 0x0,
        /// Capture/Compare 2 interrupt flag [2:2]
        CC2IF: u1 = 0x0,
        /// Reserved [3:5]
        _0: u3 = undefined,
        /// Trigger interrupt flag [6:6]
        TIF: u1 = 0x0,
        /// Reserved [7:8]
        _1: u2 = undefined,
        /// Capture/Compare 1 overcapture flag [9:9]
        CC1OF: u1 = 0x0,
        /// Capture/compare 2 overcapture flag [10:10]
        CC2OF: u1 = 0x0,
        /// Reserved [11:31]
        _2: u21 = undefined,
    }).init(0x40001810);
    /// event generation register
    pub const EGR = reg.WO(packed struct(u32) {
        /// Update generation [0:0]
        UG: u1 = 0x0,
        /// Capture/compare 1 generation [1:1]
        CC1G: u1 = 0x0,
        /// Capture/compare 2 generation [2:2]
        CC2G: u1 = 0x0,
        /// Reserved [3:5]
        _0: u3 = undefined,
        /// Trigger generation [6:6]
        TG: u1 = 0x0,
        /// Reserved [7:31]
        _1: u25 = undefined,
    }).init(0x40001814);
    /// capture/compare mode register 1 (output mode)
    pub const CCMR1_Output = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Output Compare 1 fast enable [2:2]
        OC1FE: u1 = 0x0,
        /// Output Compare 1 preload enable [3:3]
        OC1PE: u1 = 0x0,
        /// Output Compare 1 mode [4:6]
        OC1M: u3 = 0x0,
        /// Reserved [7:7]
        _0: u1 = undefined,
        /// Capture/Compare 2 selection [8:9]
        CC2S: u2 = 0x0,
        /// Output Compare 2 fast enable [10:10]
        OC2FE: u1 = 0x0,
        /// Output Compare 2 preload enable [11:11]
        OC2PE: u1 = 0x0,
        /// Output Compare 2 mode [12:14]
        OC2M: u3 = 0x0,
        /// Reserved [15:31]
        _1: u17 = undefined,
    }).init(0x40001818);
    /// capture/compare mode register 1 (input mode)
    pub const CCMR1_Input = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Input capture 1 prescaler [2:3]
        IC1PSC: u2 = 0x0,
        /// Input capture 1 filter [4:7]
        IC1F: u4 = 0x0,
        /// Capture/Compare 2 selection [8:9]
        CC2S: u2 = 0x0,
        /// Input capture 2 prescaler [10:11]
        IC2PSC: u2 = 0x0,
        /// Input capture 2 filter [12:14]
        IC2F: u3 = 0x0,
        /// Reserved [15:31]
        _0: u17 = undefined,
    }).init(0x40001818);
    /// capture/compare enable register
    pub const CCER = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 output enable [0:0]
        CC1E: u1 = 0x0,
        /// Capture/Compare 1 output Polarity [1:1]
        CC1P: u1 = 0x0,
        /// Reserved [2:2]
        _0: u1 = undefined,
        /// Capture/Compare 1 output Polarity [3:3]
        CC1NP: u1 = 0x0,
        /// Capture/Compare 2 output enable [4:4]
        CC2E: u1 = 0x0,
        /// Capture/Compare 2 output Polarity [5:5]
        CC2P: u1 = 0x0,
        /// Reserved [6:6]
        _1: u1 = undefined,
        /// Capture/Compare 2 output Polarity [7:7]
        CC2NP: u1 = 0x0,
        /// Reserved [8:31]
        _2: u24 = undefined,
    }).init(0x40001820);
    /// counter
    pub const CNT = reg.RW(packed struct(u32) {
        /// counter value [0:15]
        CNT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40001824);
    /// prescaler
    pub const PSC = reg.RW(packed struct(u32) {
        /// Prescaler value [0:15]
        PSC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40001828);
    /// auto-reload register
    pub const ARR = reg.RW(packed struct(u32) {
        /// Auto-reload value [0:15]
        ARR: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000182C);
    /// capture/compare register 1
    pub const CCR1 = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 value [0:15]
        CCR1: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40001834);
    /// capture/compare register 2
    pub const CCR2 = reg.RW(packed struct(u32) {
        /// Capture/Compare 2 value [0:15]
        CCR2: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40001838);
};

pub const TIM13 = struct {
    pub const IRQ = struct {
        /// TIM13 global interrupt
        pub const TIM13 = 44;
    };
    /// control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Counter enable [0:0]
        CEN: u1 = 0x0,
        /// Update disable [1:1]
        UDIS: u1 = 0x0,
        /// Update request source [2:2]
        URS: u1 = 0x0,
        /// Reserved [3:6]
        _0: u4 = undefined,
        /// Auto-reload preload enable [7:7]
        ARPE: u1 = 0x0,
        /// Clock division [8:9]
        CKD: u2 = 0x0,
        /// Reserved [10:31]
        _1: u22 = undefined,
    }).init(0x40001C00);
    /// DMA/Interrupt enable register
    pub const DIER = reg.RW(packed struct(u32) {
        /// Update interrupt enable [0:0]
        UIE: u1 = 0x0,
        /// Capture/Compare 1 interrupt enable [1:1]
        CC1IE: u1 = 0x0,
        /// Reserved [2:31]
        _0: u30 = undefined,
    }).init(0x40001C0C);
    /// status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Update interrupt flag [0:0]
        UIF: u1 = 0x0,
        /// Capture/compare 1 interrupt flag [1:1]
        CC1IF: u1 = 0x0,
        /// Reserved [2:8]
        _0: u7 = undefined,
        /// Capture/Compare 1 overcapture flag [9:9]
        CC1OF: u1 = 0x0,
        /// Reserved [10:31]
        _1: u22 = undefined,
    }).init(0x40001C10);
    /// event generation register
    pub const EGR = reg.WO(packed struct(u32) {
        /// Update generation [0:0]
        UG: u1 = 0x0,
        /// Capture/compare 1 generation [1:1]
        CC1G: u1 = 0x0,
        /// Reserved [2:31]
        _0: u30 = undefined,
    }).init(0x40001C14);
    /// capture/compare mode register (output mode)
    pub const CCMR1_Output = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Output compare 1 fast enable [2:2]
        OC1FE: u1 = 0x0,
        /// Output Compare 1 preload enable [3:3]
        OC1PE: u1 = 0x0,
        /// Output Compare 1 mode [4:6]
        OC1M: u3 = 0x0,
        /// Reserved [7:31]
        _0: u25 = undefined,
    }).init(0x40001C18);
    /// capture/compare mode register (input mode)
    pub const CCMR1_Input = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Input capture 1 prescaler [2:3]
        IC1PSC: u2 = 0x0,
        /// Input capture 1 filter [4:7]
        IC1F: u4 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x40001C18);
    /// capture/compare enable register
    pub const CCER = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 output enable [0:0]
        CC1E: u1 = 0x0,
        /// Capture/Compare 1 output Polarity [1:1]
        CC1P: u1 = 0x0,
        /// Reserved [2:2]
        _0: u1 = undefined,
        /// Capture/Compare 1 output Polarity [3:3]
        CC1NP: u1 = 0x0,
        /// Reserved [4:31]
        _1: u28 = undefined,
    }).init(0x40001C20);
    /// counter
    pub const CNT = reg.RW(packed struct(u32) {
        /// counter value [0:15]
        CNT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40001C24);
    /// prescaler
    pub const PSC = reg.RW(packed struct(u32) {
        /// Prescaler value [0:15]
        PSC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40001C28);
    /// auto-reload register
    pub const ARR = reg.RW(packed struct(u32) {
        /// Auto-reload value [0:15]
        ARR: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40001C2C);
    /// capture/compare register 1
    pub const CCR1 = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 value [0:15]
        CCR1: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40001C34);
};

pub const TIM14 = struct {
    pub const IRQ = struct {
        /// TIM14 global interrupt
        pub const TIM14 = 45;
    };
    /// control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Counter enable [0:0]
        CEN: u1 = 0x0,
        /// Update disable [1:1]
        UDIS: u1 = 0x0,
        /// Update request source [2:2]
        URS: u1 = 0x0,
        /// Reserved [3:6]
        _0: u4 = undefined,
        /// Auto-reload preload enable [7:7]
        ARPE: u1 = 0x0,
        /// Clock division [8:9]
        CKD: u2 = 0x0,
        /// Reserved [10:31]
        _1: u22 = undefined,
    }).init(0x40002000);
    /// DMA/Interrupt enable register
    pub const DIER = reg.RW(packed struct(u32) {
        /// Update interrupt enable [0:0]
        UIE: u1 = 0x0,
        /// Capture/Compare 1 interrupt enable [1:1]
        CC1IE: u1 = 0x0,
        /// Reserved [2:31]
        _0: u30 = undefined,
    }).init(0x4000200C);
    /// status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Update interrupt flag [0:0]
        UIF: u1 = 0x0,
        /// Capture/compare 1 interrupt flag [1:1]
        CC1IF: u1 = 0x0,
        /// Reserved [2:8]
        _0: u7 = undefined,
        /// Capture/Compare 1 overcapture flag [9:9]
        CC1OF: u1 = 0x0,
        /// Reserved [10:31]
        _1: u22 = undefined,
    }).init(0x40002010);
    /// event generation register
    pub const EGR = reg.WO(packed struct(u32) {
        /// Update generation [0:0]
        UG: u1 = 0x0,
        /// Capture/compare 1 generation [1:1]
        CC1G: u1 = 0x0,
        /// Reserved [2:31]
        _0: u30 = undefined,
    }).init(0x40002014);
    /// capture/compare mode register (output mode)
    pub const CCMR1_Output = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Output compare 1 fast enable [2:2]
        OC1FE: u1 = 0x0,
        /// Output Compare 1 preload enable [3:3]
        OC1PE: u1 = 0x0,
        /// Output Compare 1 mode [4:6]
        OC1M: u3 = 0x0,
        /// Reserved [7:31]
        _0: u25 = undefined,
    }).init(0x40002018);
    /// capture/compare mode register (input mode)
    pub const CCMR1_Input = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Input capture 1 prescaler [2:3]
        IC1PSC: u2 = 0x0,
        /// Input capture 1 filter [4:7]
        IC1F: u4 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x40002018);
    /// capture/compare enable register
    pub const CCER = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 output enable [0:0]
        CC1E: u1 = 0x0,
        /// Capture/Compare 1 output Polarity [1:1]
        CC1P: u1 = 0x0,
        /// Reserved [2:2]
        _0: u1 = undefined,
        /// Capture/Compare 1 output Polarity [3:3]
        CC1NP: u1 = 0x0,
        /// Reserved [4:31]
        _1: u28 = undefined,
    }).init(0x40002020);
    /// counter
    pub const CNT = reg.RW(packed struct(u32) {
        /// counter value [0:15]
        CNT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40002024);
    /// prescaler
    pub const PSC = reg.RW(packed struct(u32) {
        /// Prescaler value [0:15]
        PSC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40002028);
    /// auto-reload register
    pub const ARR = reg.RW(packed struct(u32) {
        /// Auto-reload value [0:15]
        ARR: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000202C);
    /// capture/compare register 1
    pub const CCR1 = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 value [0:15]
        CCR1: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40002034);
};

pub const TIM6 = struct {
    pub const IRQ = struct {
        /// TIM6 global and DAC underrun interrupts
        pub const TIM6_DAC = 54;
    };
    /// control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Counter enable [0:0]
        CEN: u1 = 0x0,
        /// Update disable [1:1]
        UDIS: u1 = 0x0,
        /// Update request source [2:2]
        URS: u1 = 0x0,
        /// One-pulse mode [3:3]
        OPM: u1 = 0x0,
        /// Reserved [4:6]
        _0: u3 = undefined,
        /// Auto-reload preload enable [7:7]
        ARPE: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40001000);
    /// control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Reserved [0:3]
        _0: u4 = undefined,
        /// Master mode selection [4:6]
        MMS: u3 = 0x0,
        /// Reserved [7:31]
        _1: u25 = undefined,
    }).init(0x40001004);
    /// DMA/Interrupt enable register
    pub const DIER = reg.RW(packed struct(u32) {
        /// Update interrupt enable [0:0]
        UIE: u1 = 0x0,
        /// Reserved [1:7]
        _0: u7 = undefined,
        /// Update DMA request enable [8:8]
        UDE: u1 = 0x0,
        /// Reserved [9:31]
        _1: u23 = undefined,
    }).init(0x4000100C);
    /// status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Update interrupt flag [0:0]
        UIF: u1 = 0x0,
        /// Reserved [1:31]
        _0: u31 = undefined,
    }).init(0x40001010);
    /// event generation register
    pub const EGR = reg.WO(packed struct(u32) {
        /// Update generation [0:0]
        UG: u1 = 0x0,
        /// Reserved [1:31]
        _0: u31 = undefined,
    }).init(0x40001014);
    /// counter
    pub const CNT = reg.RW(packed struct(u32) {
        /// Low counter value [0:15]
        CNT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40001024);
    /// prescaler
    pub const PSC = reg.RW(packed struct(u32) {
        /// Prescaler value [0:15]
        PSC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40001028);
    /// auto-reload register
    pub const ARR = reg.RW(packed struct(u32) {
        /// Low Auto-reload value [0:15]
        ARR: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000102C);
};

pub const TIM7 = struct {
    pub const IRQ = struct {
        /// TIM7 global interrupt
        pub const TIM7 = 55;
    };
    /// control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Counter enable [0:0]
        CEN: u1 = 0x0,
        /// Update disable [1:1]
        UDIS: u1 = 0x0,
        /// Update request source [2:2]
        URS: u1 = 0x0,
        /// One-pulse mode [3:3]
        OPM: u1 = 0x0,
        /// Reserved [4:6]
        _0: u3 = undefined,
        /// Auto-reload preload enable [7:7]
        ARPE: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40001400);
    /// control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Reserved [0:3]
        _0: u4 = undefined,
        /// Master mode selection [4:6]
        MMS: u3 = 0x0,
        /// Reserved [7:31]
        _1: u25 = undefined,
    }).init(0x40001404);
    /// DMA/Interrupt enable register
    pub const DIER = reg.RW(packed struct(u32) {
        /// Update interrupt enable [0:0]
        UIE: u1 = 0x0,
        /// Reserved [1:7]
        _0: u7 = undefined,
        /// Update DMA request enable [8:8]
        UDE: u1 = 0x0,
        /// Reserved [9:31]
        _1: u23 = undefined,
    }).init(0x4000140C);
    /// status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Update interrupt flag [0:0]
        UIF: u1 = 0x0,
        /// Reserved [1:31]
        _0: u31 = undefined,
    }).init(0x40001410);
    /// event generation register
    pub const EGR = reg.WO(packed struct(u32) {
        /// Update generation [0:0]
        UG: u1 = 0x0,
        /// Reserved [1:31]
        _0: u31 = undefined,
    }).init(0x40001414);
    /// counter
    pub const CNT = reg.RW(packed struct(u32) {
        /// Low counter value [0:15]
        CNT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40001424);
    /// prescaler
    pub const PSC = reg.RW(packed struct(u32) {
        /// Prescaler value [0:15]
        PSC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40001428);
    /// auto-reload register
    pub const ARR = reg.RW(packed struct(u32) {
        /// Low Auto-reload value [0:15]
        ARR: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000142C);
};

pub const I2C1 = struct {
    pub const IRQ = struct {
        /// I2C1 event interrupt
        pub const I2C1_EV = 31;
        /// I2C1 error interrupt
        pub const I2C1_ER = 32;
    };
    /// Control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Peripheral enable [0:0]
        PE: u1 = 0x0,
        /// SMBus mode [1:1]
        SMBUS: u1 = 0x0,
        /// Reserved [2:2]
        _0: u1 = undefined,
        /// SMBus type [3:3]
        SMBTYPE: u1 = 0x0,
        /// ARP enable [4:4]
        ENARP: u1 = 0x0,
        /// PEC enable [5:5]
        ENPEC: u1 = 0x0,
        /// General call enable [6:6]
        ENGC: u1 = 0x0,
        /// Clock stretching disable (Slave mode) [7:7]
        NOSTRETCH: u1 = 0x0,
        /// Start generation [8:8]
        START: u1 = 0x0,
        /// Stop generation [9:9]
        STOP: u1 = 0x0,
        /// Acknowledge enable [10:10]
        ACK: u1 = 0x0,
        /// Acknowledge/PEC Position (for data reception) [11:11]
        POS: u1 = 0x0,
        /// Packet error checking [12:12]
        PEC: u1 = 0x0,
        /// SMBus alert [13:13]
        ALERT: u1 = 0x0,
        /// Reserved [14:14]
        _1: u1 = undefined,
        /// Software reset [15:15]
        SWRST: u1 = 0x0,
        /// Reserved [16:31]
        _2: u16 = undefined,
    }).init(0x40005400);
    /// Control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Peripheral clock frequency [0:5]
        FREQ: u6 = 0x0,
        /// Reserved [6:7]
        _0: u2 = undefined,
        /// Error interrupt enable [8:8]
        ITERREN: u1 = 0x0,
        /// Event interrupt enable [9:9]
        ITEVTEN: u1 = 0x0,
        /// Buffer interrupt enable [10:10]
        ITBUFEN: u1 = 0x0,
        /// DMA requests enable [11:11]
        DMAEN: u1 = 0x0,
        /// DMA last transfer [12:12]
        LAST: u1 = 0x0,
        /// Reserved [13:31]
        _1: u19 = undefined,
    }).init(0x40005404);
    /// Own address register 1
    pub const OAR1 = reg.RW(packed struct(u32) {
        /// Interface address [0:0]
        ADD0: u1 = 0x0,
        /// Interface address [1:7]
        ADD7: u7 = 0x0,
        /// Interface address [8:9]
        ADD10: u2 = 0x0,
        /// Reserved [10:14]
        _0: u5 = undefined,
        /// Addressing mode (slave mode) [15:15]
        ADDMODE: u1 = 0x0,
        /// Reserved [16:31]
        _1: u16 = undefined,
    }).init(0x40005408);
    /// Own address register 2
    pub const OAR2 = reg.RW(packed struct(u32) {
        /// Dual addressing mode enable [0:0]
        ENDUAL: u1 = 0x0,
        /// Interface address [1:7]
        ADD2: u7 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x4000540C);
    /// Data register
    pub const DR = reg.RW(packed struct(u32) {
        /// 8-bit data register [0:7]
        DR: u8 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x40005410);
    /// Status register 1
    pub const SR1 = reg.RW(packed struct(u32) {
        /// Start bit (Master mode) [0:0]
        SB: u1 = 0x0,
        /// Address sent (master mode)/matched (slave mode) [1:1]
        ADDR: u1 = 0x0,
        /// Byte transfer finished [2:2]
        BTF: u1 = 0x0,
        /// 10-bit header sent (Master mode) [3:3]
        ADD10: u1 = 0x0,
        /// Stop detection (slave mode) [4:4]
        STOPF: u1 = 0x0,
        /// Reserved [5:5]
        _0: u1 = undefined,
        /// Data register not empty (receivers) [6:6]
        RxNE: u1 = 0x0,
        /// Data register empty (transmitters) [7:7]
        TxE: u1 = 0x0,
        /// Bus error [8:8]
        BERR: u1 = 0x0,
        /// Arbitration lost (master mode) [9:9]
        ARLO: u1 = 0x0,
        /// Acknowledge failure [10:10]
        AF: u1 = 0x0,
        /// Overrun/Underrun [11:11]
        OVR: u1 = 0x0,
        /// PEC Error in reception [12:12]
        PECERR: u1 = 0x0,
        /// Reserved [13:13]
        _1: u1 = undefined,
        /// Timeout or Tlow error [14:14]
        TIMEOUT: u1 = 0x0,
        /// SMBus alert [15:15]
        SMBALERT: u1 = 0x0,
        /// Reserved [16:31]
        _2: u16 = undefined,
    }).init(0x40005414);
    /// Status register 2
    pub const SR2 = reg.RO(packed struct(u32) {
        /// Master/slave [0:0]
        MSL: u1 = 0x0,
        /// Bus busy [1:1]
        BUSY: u1 = 0x0,
        /// Transmitter/receiver [2:2]
        TRA: u1 = 0x0,
        /// Reserved [3:3]
        _0: u1 = undefined,
        /// General call address (Slave mode) [4:4]
        GENCALL: u1 = 0x0,
        /// SMBus device default address (Slave mode) [5:5]
        SMBDEFAULT: u1 = 0x0,
        /// SMBus host header (Slave mode) [6:6]
        SMBHOST: u1 = 0x0,
        /// Dual flag (Slave mode) [7:7]
        DUALF: u1 = 0x0,
        /// acket error checking register [8:15]
        PEC: u8 = 0x0,
        /// Reserved [16:31]
        _1: u16 = undefined,
    }).init(0x40005418);
    /// Clock control register
    pub const CCR = reg.RW(packed struct(u32) {
        /// Clock control register in Fast/Standard mode (Master mode) [0:11]
        CCR: u12 = 0x0,
        /// Reserved [12:13]
        _0: u2 = undefined,
        /// Fast mode duty cycle [14:14]
        DUTY: u1 = 0x0,
        /// I2C master mode selection [15:15]
        F_S: u1 = 0x0,
        /// Reserved [16:31]
        _1: u16 = undefined,
    }).init(0x4000541C);
    /// TRISE register
    pub const TRISE = reg.RW(packed struct(u32) {
        /// Maximum rise time in Fast/Standard mode (Master mode) [0:5]
        TRISE: u6 = 0x2,
        /// Reserved [6:31]
        _0: u26 = undefined,
    }).init(0x40005420);
};

pub const I2C2 = struct {
    pub const IRQ = struct {
        /// I2C2 event interrupt
        pub const I2C2_EV = 33;
        /// I2C2 error interrupt
        pub const I2C2_ER = 34;
    };
    /// Control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Peripheral enable [0:0]
        PE: u1 = 0x0,
        /// SMBus mode [1:1]
        SMBUS: u1 = 0x0,
        /// Reserved [2:2]
        _0: u1 = undefined,
        /// SMBus type [3:3]
        SMBTYPE: u1 = 0x0,
        /// ARP enable [4:4]
        ENARP: u1 = 0x0,
        /// PEC enable [5:5]
        ENPEC: u1 = 0x0,
        /// General call enable [6:6]
        ENGC: u1 = 0x0,
        /// Clock stretching disable (Slave mode) [7:7]
        NOSTRETCH: u1 = 0x0,
        /// Start generation [8:8]
        START: u1 = 0x0,
        /// Stop generation [9:9]
        STOP: u1 = 0x0,
        /// Acknowledge enable [10:10]
        ACK: u1 = 0x0,
        /// Acknowledge/PEC Position (for data reception) [11:11]
        POS: u1 = 0x0,
        /// Packet error checking [12:12]
        PEC: u1 = 0x0,
        /// SMBus alert [13:13]
        ALERT: u1 = 0x0,
        /// Reserved [14:14]
        _1: u1 = undefined,
        /// Software reset [15:15]
        SWRST: u1 = 0x0,
        /// Reserved [16:31]
        _2: u16 = undefined,
    }).init(0x40005800);
    /// Control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Peripheral clock frequency [0:5]
        FREQ: u6 = 0x0,
        /// Reserved [6:7]
        _0: u2 = undefined,
        /// Error interrupt enable [8:8]
        ITERREN: u1 = 0x0,
        /// Event interrupt enable [9:9]
        ITEVTEN: u1 = 0x0,
        /// Buffer interrupt enable [10:10]
        ITBUFEN: u1 = 0x0,
        /// DMA requests enable [11:11]
        DMAEN: u1 = 0x0,
        /// DMA last transfer [12:12]
        LAST: u1 = 0x0,
        /// Reserved [13:31]
        _1: u19 = undefined,
    }).init(0x40005804);
    /// Own address register 1
    pub const OAR1 = reg.RW(packed struct(u32) {
        /// Interface address [0:0]
        ADD0: u1 = 0x0,
        /// Interface address [1:7]
        ADD7: u7 = 0x0,
        /// Interface address [8:9]
        ADD10: u2 = 0x0,
        /// Reserved [10:14]
        _0: u5 = undefined,
        /// Addressing mode (slave mode) [15:15]
        ADDMODE: u1 = 0x0,
        /// Reserved [16:31]
        _1: u16 = undefined,
    }).init(0x40005808);
    /// Own address register 2
    pub const OAR2 = reg.RW(packed struct(u32) {
        /// Dual addressing mode enable [0:0]
        ENDUAL: u1 = 0x0,
        /// Interface address [1:7]
        ADD2: u7 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x4000580C);
    /// Data register
    pub const DR = reg.RW(packed struct(u32) {
        /// 8-bit data register [0:7]
        DR: u8 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x40005810);
    /// Status register 1
    pub const SR1 = reg.RW(packed struct(u32) {
        /// Start bit (Master mode) [0:0]
        SB: u1 = 0x0,
        /// Address sent (master mode)/matched (slave mode) [1:1]
        ADDR: u1 = 0x0,
        /// Byte transfer finished [2:2]
        BTF: u1 = 0x0,
        /// 10-bit header sent (Master mode) [3:3]
        ADD10: u1 = 0x0,
        /// Stop detection (slave mode) [4:4]
        STOPF: u1 = 0x0,
        /// Reserved [5:5]
        _0: u1 = undefined,
        /// Data register not empty (receivers) [6:6]
        RxNE: u1 = 0x0,
        /// Data register empty (transmitters) [7:7]
        TxE: u1 = 0x0,
        /// Bus error [8:8]
        BERR: u1 = 0x0,
        /// Arbitration lost (master mode) [9:9]
        ARLO: u1 = 0x0,
        /// Acknowledge failure [10:10]
        AF: u1 = 0x0,
        /// Overrun/Underrun [11:11]
        OVR: u1 = 0x0,
        /// PEC Error in reception [12:12]
        PECERR: u1 = 0x0,
        /// Reserved [13:13]
        _1: u1 = undefined,
        /// Timeout or Tlow error [14:14]
        TIMEOUT: u1 = 0x0,
        /// SMBus alert [15:15]
        SMBALERT: u1 = 0x0,
        /// Reserved [16:31]
        _2: u16 = undefined,
    }).init(0x40005814);
    /// Status register 2
    pub const SR2 = reg.RO(packed struct(u32) {
        /// Master/slave [0:0]
        MSL: u1 = 0x0,
        /// Bus busy [1:1]
        BUSY: u1 = 0x0,
        /// Transmitter/receiver [2:2]
        TRA: u1 = 0x0,
        /// Reserved [3:3]
        _0: u1 = undefined,
        /// General call address (Slave mode) [4:4]
        GENCALL: u1 = 0x0,
        /// SMBus device default address (Slave mode) [5:5]
        SMBDEFAULT: u1 = 0x0,
        /// SMBus host header (Slave mode) [6:6]
        SMBHOST: u1 = 0x0,
        /// Dual flag (Slave mode) [7:7]
        DUALF: u1 = 0x0,
        /// acket error checking register [8:15]
        PEC: u8 = 0x0,
        /// Reserved [16:31]
        _1: u16 = undefined,
    }).init(0x40005818);
    /// Clock control register
    pub const CCR = reg.RW(packed struct(u32) {
        /// Clock control register in Fast/Standard mode (Master mode) [0:11]
        CCR: u12 = 0x0,
        /// Reserved [12:13]
        _0: u2 = undefined,
        /// Fast mode duty cycle [14:14]
        DUTY: u1 = 0x0,
        /// I2C master mode selection [15:15]
        F_S: u1 = 0x0,
        /// Reserved [16:31]
        _1: u16 = undefined,
    }).init(0x4000581C);
    /// TRISE register
    pub const TRISE = reg.RW(packed struct(u32) {
        /// Maximum rise time in Fast/Standard mode (Master mode) [0:5]
        TRISE: u6 = 0x2,
        /// Reserved [6:31]
        _0: u26 = undefined,
    }).init(0x40005820);
};

pub const SPI1 = struct {
    pub const IRQ = struct {
        /// SPI1 global interrupt
        pub const SPI1 = 35;
    };
    /// control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Clock phase [0:0]
        CPHA: u1 = 0x0,
        /// Clock polarity [1:1]
        CPOL: u1 = 0x0,
        /// Master selection [2:2]
        MSTR: u1 = 0x0,
        /// Baud rate control [3:5]
        BR: u3 = 0x0,
        /// SPI enable [6:6]
        SPE: u1 = 0x0,
        /// Frame format [7:7]
        LSBFIRST: u1 = 0x0,
        /// Internal slave select [8:8]
        SSI: u1 = 0x0,
        /// Software slave management [9:9]
        SSM: u1 = 0x0,
        /// Receive only [10:10]
        RXONLY: u1 = 0x0,
        /// Data frame format [11:11]
        DFF: u1 = 0x0,
        /// CRC transfer next [12:12]
        CRCNEXT: u1 = 0x0,
        /// Hardware CRC calculation enable [13:13]
        CRCEN: u1 = 0x0,
        /// Output enable in bidirectional mode [14:14]
        BIDIOE: u1 = 0x0,
        /// Bidirectional data mode enable [15:15]
        BIDIMODE: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40013000);
    /// control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Rx buffer DMA enable [0:0]
        RXDMAEN: u1 = 0x0,
        /// Tx buffer DMA enable [1:1]
        TXDMAEN: u1 = 0x0,
        /// SS output enable [2:2]
        SSOE: u1 = 0x0,
        /// Reserved [3:4]
        _0: u2 = undefined,
        /// Error interrupt enable [5:5]
        ERRIE: u1 = 0x0,
        /// RX buffer not empty interrupt enable [6:6]
        RXNEIE: u1 = 0x0,
        /// Tx buffer empty interrupt enable [7:7]
        TXEIE: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40013004);
    /// status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Receive buffer not empty [0:0]
        RXNE: u1 = 0x0,
        /// Transmit buffer empty [1:1]
        TXE: u1 = 0x1,
        /// Reserved [2:3]
        _0: u2 = undefined,
        /// CRC error flag [4:4]
        CRCERR: u1 = 0x0,
        /// Mode fault [5:5]
        MODF: u1 = 0x0,
        /// Overrun flag [6:6]
        OVR: u1 = 0x0,
        /// Busy flag [7:7]
        BSY: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40013008);
    /// data register
    pub const DR = reg.RW(packed struct(u32) {
        /// Data register [0:15]
        DR: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4001300C);
    /// CRC polynomial register
    pub const CRCPR = reg.RW(packed struct(u32) {
        /// CRC polynomial register [0:15]
        CRCPOLY: u16 = 0x7,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40013010);
    /// RX CRC register
    pub const RXCRCR = reg.RO(packed struct(u32) {
        /// Rx CRC register [0:15]
        RxCRC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40013014);
    /// TX CRC register
    pub const TXCRCR = reg.RO(packed struct(u32) {
        /// Tx CRC register [0:15]
        TxCRC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40013018);
};

pub const SPI2 = struct {
    pub const IRQ = struct {
        /// SPI2 global interrupt
        pub const SPI2 = 36;
    };
    /// control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Clock phase [0:0]
        CPHA: u1 = 0x0,
        /// Clock polarity [1:1]
        CPOL: u1 = 0x0,
        /// Master selection [2:2]
        MSTR: u1 = 0x0,
        /// Baud rate control [3:5]
        BR: u3 = 0x0,
        /// SPI enable [6:6]
        SPE: u1 = 0x0,
        /// Frame format [7:7]
        LSBFIRST: u1 = 0x0,
        /// Internal slave select [8:8]
        SSI: u1 = 0x0,
        /// Software slave management [9:9]
        SSM: u1 = 0x0,
        /// Receive only [10:10]
        RXONLY: u1 = 0x0,
        /// Data frame format [11:11]
        DFF: u1 = 0x0,
        /// CRC transfer next [12:12]
        CRCNEXT: u1 = 0x0,
        /// Hardware CRC calculation enable [13:13]
        CRCEN: u1 = 0x0,
        /// Output enable in bidirectional mode [14:14]
        BIDIOE: u1 = 0x0,
        /// Bidirectional data mode enable [15:15]
        BIDIMODE: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40003800);
    /// control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Rx buffer DMA enable [0:0]
        RXDMAEN: u1 = 0x0,
        /// Tx buffer DMA enable [1:1]
        TXDMAEN: u1 = 0x0,
        /// SS output enable [2:2]
        SSOE: u1 = 0x0,
        /// Reserved [3:4]
        _0: u2 = undefined,
        /// Error interrupt enable [5:5]
        ERRIE: u1 = 0x0,
        /// RX buffer not empty interrupt enable [6:6]
        RXNEIE: u1 = 0x0,
        /// Tx buffer empty interrupt enable [7:7]
        TXEIE: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40003804);
    /// status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Receive buffer not empty [0:0]
        RXNE: u1 = 0x0,
        /// Transmit buffer empty [1:1]
        TXE: u1 = 0x1,
        /// Reserved [2:3]
        _0: u2 = undefined,
        /// CRC error flag [4:4]
        CRCERR: u1 = 0x0,
        /// Mode fault [5:5]
        MODF: u1 = 0x0,
        /// Overrun flag [6:6]
        OVR: u1 = 0x0,
        /// Busy flag [7:7]
        BSY: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40003808);
    /// data register
    pub const DR = reg.RW(packed struct(u32) {
        /// Data register [0:15]
        DR: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4000380C);
    /// CRC polynomial register
    pub const CRCPR = reg.RW(packed struct(u32) {
        /// CRC polynomial register [0:15]
        CRCPOLY: u16 = 0x7,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40003810);
    /// RX CRC register
    pub const RXCRCR = reg.RO(packed struct(u32) {
        /// Rx CRC register [0:15]
        RxCRC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40003814);
    /// TX CRC register
    pub const TXCRCR = reg.RO(packed struct(u32) {
        /// Tx CRC register [0:15]
        TxCRC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40003818);
};

pub const SPI3 = struct {
    pub const IRQ = struct {
        /// SPI3 global interrupt
        pub const SPI3 = 51;
    };
    /// control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Clock phase [0:0]
        CPHA: u1 = 0x0,
        /// Clock polarity [1:1]
        CPOL: u1 = 0x0,
        /// Master selection [2:2]
        MSTR: u1 = 0x0,
        /// Baud rate control [3:5]
        BR: u3 = 0x0,
        /// SPI enable [6:6]
        SPE: u1 = 0x0,
        /// Frame format [7:7]
        LSBFIRST: u1 = 0x0,
        /// Internal slave select [8:8]
        SSI: u1 = 0x0,
        /// Software slave management [9:9]
        SSM: u1 = 0x0,
        /// Receive only [10:10]
        RXONLY: u1 = 0x0,
        /// Data frame format [11:11]
        DFF: u1 = 0x0,
        /// CRC transfer next [12:12]
        CRCNEXT: u1 = 0x0,
        /// Hardware CRC calculation enable [13:13]
        CRCEN: u1 = 0x0,
        /// Output enable in bidirectional mode [14:14]
        BIDIOE: u1 = 0x0,
        /// Bidirectional data mode enable [15:15]
        BIDIMODE: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40003C00);
    /// control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Rx buffer DMA enable [0:0]
        RXDMAEN: u1 = 0x0,
        /// Tx buffer DMA enable [1:1]
        TXDMAEN: u1 = 0x0,
        /// SS output enable [2:2]
        SSOE: u1 = 0x0,
        /// Reserved [3:4]
        _0: u2 = undefined,
        /// Error interrupt enable [5:5]
        ERRIE: u1 = 0x0,
        /// RX buffer not empty interrupt enable [6:6]
        RXNEIE: u1 = 0x0,
        /// Tx buffer empty interrupt enable [7:7]
        TXEIE: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40003C04);
    /// status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Receive buffer not empty [0:0]
        RXNE: u1 = 0x0,
        /// Transmit buffer empty [1:1]
        TXE: u1 = 0x1,
        /// Reserved [2:3]
        _0: u2 = undefined,
        /// CRC error flag [4:4]
        CRCERR: u1 = 0x0,
        /// Mode fault [5:5]
        MODF: u1 = 0x0,
        /// Overrun flag [6:6]
        OVR: u1 = 0x0,
        /// Busy flag [7:7]
        BSY: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40003C08);
    /// data register
    pub const DR = reg.RW(packed struct(u32) {
        /// Data register [0:15]
        DR: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40003C0C);
    /// CRC polynomial register
    pub const CRCPR = reg.RW(packed struct(u32) {
        /// CRC polynomial register [0:15]
        CRCPOLY: u16 = 0x7,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40003C10);
    /// RX CRC register
    pub const RXCRCR = reg.RO(packed struct(u32) {
        /// Rx CRC register [0:15]
        RxCRC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40003C14);
    /// TX CRC register
    pub const TXCRCR = reg.RO(packed struct(u32) {
        /// Tx CRC register [0:15]
        TxCRC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40003C18);
};

pub const USART1 = struct {
    pub const IRQ = struct {
        /// USART1 global interrupt
        pub const USART1 = 37;
    };
    /// Status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Parity error [0:0]
        PE: u1 = 0x0,
        /// Framing error [1:1]
        FE: u1 = 0x0,
        /// Noise error flag [2:2]
        NE: u1 = 0x0,
        /// Overrun error [3:3]
        ORE: u1 = 0x0,
        /// IDLE line detected [4:4]
        IDLE: u1 = 0x0,
        /// Read data register not empty [5:5]
        RXNE: u1 = 0x0,
        /// Transmission complete [6:6]
        TC: u1 = 0x1,
        /// Transmit data register empty [7:7]
        TXE: u1 = 0x1,
        /// LIN break detection flag [8:8]
        LBD: u1 = 0x0,
        /// CTS flag [9:9]
        CTS: u1 = 0x0,
        /// Reserved [10:31]
        _0: u22 = undefined,
    }).init(0x40013800);
    /// Data register
    pub const DR = reg.RW(packed struct(u32) {
        /// Data value [0:8]
        DR: u9 = 0x0,
        /// Reserved [9:31]
        _0: u23 = undefined,
    }).init(0x40013804);
    /// Baud rate register
    pub const BRR = reg.RW(packed struct(u32) {
        /// fraction of USARTDIV [0:3]
        DIV_Fraction: u4 = 0x0,
        /// mantissa of USARTDIV [4:15]
        DIV_Mantissa: u12 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40013808);
    /// Control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Send break [0:0]
        SBK: u1 = 0x0,
        /// Receiver wakeup [1:1]
        RWU: u1 = 0x0,
        /// Receiver enable [2:2]
        RE: u1 = 0x0,
        /// Transmitter enable [3:3]
        TE: u1 = 0x0,
        /// IDLE interrupt enable [4:4]
        IDLEIE: u1 = 0x0,
        /// RXNE interrupt enable [5:5]
        RXNEIE: u1 = 0x0,
        /// Transmission complete interrupt enable [6:6]
        TCIE: u1 = 0x0,
        /// TXE interrupt enable [7:7]
        TXEIE: u1 = 0x0,
        /// PE interrupt enable [8:8]
        PEIE: u1 = 0x0,
        /// Parity selection [9:9]
        PS: u1 = 0x0,
        /// Parity control enable [10:10]
        PCE: u1 = 0x0,
        /// Wakeup method [11:11]
        WAKE: u1 = 0x0,
        /// Word length [12:12]
        M: u1 = 0x0,
        /// USART enable [13:13]
        UE: u1 = 0x0,
        /// Reserved [14:31]
        _0: u18 = undefined,
    }).init(0x4001380C);
    /// Control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Address of the USART node [0:3]
        ADD: u4 = 0x0,
        /// Reserved [4:4]
        _0: u1 = undefined,
        /// lin break detection length [5:5]
        LBDL: u1 = 0x0,
        /// LIN break detection interrupt enable [6:6]
        LBDIE: u1 = 0x0,
        /// Reserved [7:7]
        _1: u1 = undefined,
        /// Last bit clock pulse [8:8]
        LBCL: u1 = 0x0,
        /// Clock phase [9:9]
        CPHA: u1 = 0x0,
        /// Clock polarity [10:10]
        CPOL: u1 = 0x0,
        /// Clock enable [11:11]
        CLKEN: u1 = 0x0,
        /// STOP bits [12:13]
        STOP: u2 = 0x0,
        /// LIN mode enable [14:14]
        LINEN: u1 = 0x0,
        /// Reserved [15:31]
        _2: u17 = undefined,
    }).init(0x40013810);
    /// Control register 3
    pub const CR3 = reg.RW(packed struct(u32) {
        /// Error interrupt enable [0:0]
        EIE: u1 = 0x0,
        /// IrDA mode enable [1:1]
        IREN: u1 = 0x0,
        /// IrDA low-power [2:2]
        IRLP: u1 = 0x0,
        /// Half-duplex selection [3:3]
        HDSEL: u1 = 0x0,
        /// Smartcard NACK enable [4:4]
        NACK: u1 = 0x0,
        /// Smartcard mode enable [5:5]
        SCEN: u1 = 0x0,
        /// DMA enable receiver [6:6]
        DMAR: u1 = 0x0,
        /// DMA enable transmitter [7:7]
        DMAT: u1 = 0x0,
        /// RTS enable [8:8]
        RTSE: u1 = 0x0,
        /// CTS enable [9:9]
        CTSE: u1 = 0x0,
        /// CTS interrupt enable [10:10]
        CTSIE: u1 = 0x0,
        /// Reserved [11:31]
        _0: u21 = undefined,
    }).init(0x40013814);
    /// Guard time and prescaler register
    pub const GTPR = reg.RW(packed struct(u32) {
        /// Prescaler value [0:7]
        PSC: u8 = 0x0,
        /// Guard time value [8:15]
        GT: u8 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40013818);
};

pub const USART2 = struct {
    pub const IRQ = struct {
        /// USART2 global interrupt
        pub const USART2 = 38;
    };
    /// Status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Parity error [0:0]
        PE: u1 = 0x0,
        /// Framing error [1:1]
        FE: u1 = 0x0,
        /// Noise error flag [2:2]
        NE: u1 = 0x0,
        /// Overrun error [3:3]
        ORE: u1 = 0x0,
        /// IDLE line detected [4:4]
        IDLE: u1 = 0x0,
        /// Read data register not empty [5:5]
        RXNE: u1 = 0x0,
        /// Transmission complete [6:6]
        TC: u1 = 0x1,
        /// Transmit data register empty [7:7]
        TXE: u1 = 0x1,
        /// LIN break detection flag [8:8]
        LBD: u1 = 0x0,
        /// CTS flag [9:9]
        CTS: u1 = 0x0,
        /// Reserved [10:31]
        _0: u22 = undefined,
    }).init(0x40004400);
    /// Data register
    pub const DR = reg.RW(packed struct(u32) {
        /// Data value [0:8]
        DR: u9 = 0x0,
        /// Reserved [9:31]
        _0: u23 = undefined,
    }).init(0x40004404);
    /// Baud rate register
    pub const BRR = reg.RW(packed struct(u32) {
        /// fraction of USARTDIV [0:3]
        DIV_Fraction: u4 = 0x0,
        /// mantissa of USARTDIV [4:15]
        DIV_Mantissa: u12 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40004408);
    /// Control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Send break [0:0]
        SBK: u1 = 0x0,
        /// Receiver wakeup [1:1]
        RWU: u1 = 0x0,
        /// Receiver enable [2:2]
        RE: u1 = 0x0,
        /// Transmitter enable [3:3]
        TE: u1 = 0x0,
        /// IDLE interrupt enable [4:4]
        IDLEIE: u1 = 0x0,
        /// RXNE interrupt enable [5:5]
        RXNEIE: u1 = 0x0,
        /// Transmission complete interrupt enable [6:6]
        TCIE: u1 = 0x0,
        /// TXE interrupt enable [7:7]
        TXEIE: u1 = 0x0,
        /// PE interrupt enable [8:8]
        PEIE: u1 = 0x0,
        /// Parity selection [9:9]
        PS: u1 = 0x0,
        /// Parity control enable [10:10]
        PCE: u1 = 0x0,
        /// Wakeup method [11:11]
        WAKE: u1 = 0x0,
        /// Word length [12:12]
        M: u1 = 0x0,
        /// USART enable [13:13]
        UE: u1 = 0x0,
        /// Reserved [14:31]
        _0: u18 = undefined,
    }).init(0x4000440C);
    /// Control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Address of the USART node [0:3]
        ADD: u4 = 0x0,
        /// Reserved [4:4]
        _0: u1 = undefined,
        /// lin break detection length [5:5]
        LBDL: u1 = 0x0,
        /// LIN break detection interrupt enable [6:6]
        LBDIE: u1 = 0x0,
        /// Reserved [7:7]
        _1: u1 = undefined,
        /// Last bit clock pulse [8:8]
        LBCL: u1 = 0x0,
        /// Clock phase [9:9]
        CPHA: u1 = 0x0,
        /// Clock polarity [10:10]
        CPOL: u1 = 0x0,
        /// Clock enable [11:11]
        CLKEN: u1 = 0x0,
        /// STOP bits [12:13]
        STOP: u2 = 0x0,
        /// LIN mode enable [14:14]
        LINEN: u1 = 0x0,
        /// Reserved [15:31]
        _2: u17 = undefined,
    }).init(0x40004410);
    /// Control register 3
    pub const CR3 = reg.RW(packed struct(u32) {
        /// Error interrupt enable [0:0]
        EIE: u1 = 0x0,
        /// IrDA mode enable [1:1]
        IREN: u1 = 0x0,
        /// IrDA low-power [2:2]
        IRLP: u1 = 0x0,
        /// Half-duplex selection [3:3]
        HDSEL: u1 = 0x0,
        /// Smartcard NACK enable [4:4]
        NACK: u1 = 0x0,
        /// Smartcard mode enable [5:5]
        SCEN: u1 = 0x0,
        /// DMA enable receiver [6:6]
        DMAR: u1 = 0x0,
        /// DMA enable transmitter [7:7]
        DMAT: u1 = 0x0,
        /// RTS enable [8:8]
        RTSE: u1 = 0x0,
        /// CTS enable [9:9]
        CTSE: u1 = 0x0,
        /// CTS interrupt enable [10:10]
        CTSIE: u1 = 0x0,
        /// Reserved [11:31]
        _0: u21 = undefined,
    }).init(0x40004414);
    /// Guard time and prescaler register
    pub const GTPR = reg.RW(packed struct(u32) {
        /// Prescaler value [0:7]
        PSC: u8 = 0x0,
        /// Guard time value [8:15]
        GT: u8 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40004418);
};

pub const USART3 = struct {
    pub const IRQ = struct {
        /// USART3 global interrupt
        pub const USART3 = 39;
    };
    /// Status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Parity error [0:0]
        PE: u1 = 0x0,
        /// Framing error [1:1]
        FE: u1 = 0x0,
        /// Noise error flag [2:2]
        NE: u1 = 0x0,
        /// Overrun error [3:3]
        ORE: u1 = 0x0,
        /// IDLE line detected [4:4]
        IDLE: u1 = 0x0,
        /// Read data register not empty [5:5]
        RXNE: u1 = 0x0,
        /// Transmission complete [6:6]
        TC: u1 = 0x1,
        /// Transmit data register empty [7:7]
        TXE: u1 = 0x1,
        /// LIN break detection flag [8:8]
        LBD: u1 = 0x0,
        /// CTS flag [9:9]
        CTS: u1 = 0x0,
        /// Reserved [10:31]
        _0: u22 = undefined,
    }).init(0x40004800);
    /// Data register
    pub const DR = reg.RW(packed struct(u32) {
        /// Data value [0:8]
        DR: u9 = 0x0,
        /// Reserved [9:31]
        _0: u23 = undefined,
    }).init(0x40004804);
    /// Baud rate register
    pub const BRR = reg.RW(packed struct(u32) {
        /// fraction of USARTDIV [0:3]
        DIV_Fraction: u4 = 0x0,
        /// mantissa of USARTDIV [4:15]
        DIV_Mantissa: u12 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40004808);
    /// Control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Send break [0:0]
        SBK: u1 = 0x0,
        /// Receiver wakeup [1:1]
        RWU: u1 = 0x0,
        /// Receiver enable [2:2]
        RE: u1 = 0x0,
        /// Transmitter enable [3:3]
        TE: u1 = 0x0,
        /// IDLE interrupt enable [4:4]
        IDLEIE: u1 = 0x0,
        /// RXNE interrupt enable [5:5]
        RXNEIE: u1 = 0x0,
        /// Transmission complete interrupt enable [6:6]
        TCIE: u1 = 0x0,
        /// TXE interrupt enable [7:7]
        TXEIE: u1 = 0x0,
        /// PE interrupt enable [8:8]
        PEIE: u1 = 0x0,
        /// Parity selection [9:9]
        PS: u1 = 0x0,
        /// Parity control enable [10:10]
        PCE: u1 = 0x0,
        /// Wakeup method [11:11]
        WAKE: u1 = 0x0,
        /// Word length [12:12]
        M: u1 = 0x0,
        /// USART enable [13:13]
        UE: u1 = 0x0,
        /// Reserved [14:31]
        _0: u18 = undefined,
    }).init(0x4000480C);
    /// Control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Address of the USART node [0:3]
        ADD: u4 = 0x0,
        /// Reserved [4:4]
        _0: u1 = undefined,
        /// lin break detection length [5:5]
        LBDL: u1 = 0x0,
        /// LIN break detection interrupt enable [6:6]
        LBDIE: u1 = 0x0,
        /// Reserved [7:7]
        _1: u1 = undefined,
        /// Last bit clock pulse [8:8]
        LBCL: u1 = 0x0,
        /// Clock phase [9:9]
        CPHA: u1 = 0x0,
        /// Clock polarity [10:10]
        CPOL: u1 = 0x0,
        /// Clock enable [11:11]
        CLKEN: u1 = 0x0,
        /// STOP bits [12:13]
        STOP: u2 = 0x0,
        /// LIN mode enable [14:14]
        LINEN: u1 = 0x0,
        /// Reserved [15:31]
        _2: u17 = undefined,
    }).init(0x40004810);
    /// Control register 3
    pub const CR3 = reg.RW(packed struct(u32) {
        /// Error interrupt enable [0:0]
        EIE: u1 = 0x0,
        /// IrDA mode enable [1:1]
        IREN: u1 = 0x0,
        /// IrDA low-power [2:2]
        IRLP: u1 = 0x0,
        /// Half-duplex selection [3:3]
        HDSEL: u1 = 0x0,
        /// Smartcard NACK enable [4:4]
        NACK: u1 = 0x0,
        /// Smartcard mode enable [5:5]
        SCEN: u1 = 0x0,
        /// DMA enable receiver [6:6]
        DMAR: u1 = 0x0,
        /// DMA enable transmitter [7:7]
        DMAT: u1 = 0x0,
        /// RTS enable [8:8]
        RTSE: u1 = 0x0,
        /// CTS enable [9:9]
        CTSE: u1 = 0x0,
        /// CTS interrupt enable [10:10]
        CTSIE: u1 = 0x0,
        /// Reserved [11:31]
        _0: u21 = undefined,
    }).init(0x40004814);
    /// Guard time and prescaler register
    pub const GTPR = reg.RW(packed struct(u32) {
        /// Prescaler value [0:7]
        PSC: u8 = 0x0,
        /// Guard time value [8:15]
        GT: u8 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40004818);
};

pub const ADC1 = struct {
    pub const IRQ = struct {
        /// ADC1 global interrupt
        pub const ADC = 18;
    };
    /// status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Analog watchdog flag [0:0]
        AWD: u1 = 0x0,
        /// Regular channel end of conversion [1:1]
        EOC: u1 = 0x0,
        /// Injected channel end of conversion [2:2]
        JEOC: u1 = 0x0,
        /// Injected channel start flag [3:3]
        JSTRT: u1 = 0x0,
        /// Regular channel start flag [4:4]
        STRT: u1 = 0x0,
        /// Reserved [5:31]
        _0: u27 = undefined,
    }).init(0x40012400);
    /// control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Analog watchdog channel select bits [0:4]
        AWDCH: u5 = 0x0,
        /// Interrupt enable for EOC [5:5]
        EOCIE: u1 = 0x0,
        /// Analog watchdog interrupt enable [6:6]
        AWDIE: u1 = 0x0,
        /// Interrupt enable for injected channels [7:7]
        JEOCIE: u1 = 0x0,
        /// Scan mode [8:8]
        SCAN: u1 = 0x0,
        /// Enable the watchdog on a single channel in scan mode [9:9]
        AWDSGL: u1 = 0x0,
        /// Automatic injected group conversion [10:10]
        JAUTO: u1 = 0x0,
        /// Discontinuous mode on regular channels [11:11]
        DISCEN: u1 = 0x0,
        /// Discontinuous mode on injected channels [12:12]
        JDISCEN: u1 = 0x0,
        /// Discontinuous mode channel count [13:15]
        DISCNUM: u3 = 0x0,
        /// Reserved [16:21]
        _0: u6 = undefined,
        /// Analog watchdog enable on injected channels [22:22]
        JAWDEN: u1 = 0x0,
        /// Analog watchdog enable on regular channels [23:23]
        AWDEN: u1 = 0x0,
        /// Reserved [24:31]
        _1: u8 = undefined,
    }).init(0x40012404);
    /// control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// A/D converter ON / OFF [0:0]
        ADON: u1 = 0x0,
        /// Continuous conversion [1:1]
        CONT: u1 = 0x0,
        /// A/D calibration [2:2]
        CAL: u1 = 0x0,
        /// Reset calibration [3:3]
        RSTCAL: u1 = 0x0,
        /// Reserved [4:7]
        _0: u4 = undefined,
        /// Direct memory access mode [8:8]
        DMA: u1 = 0x0,
        /// Reserved [9:10]
        _1: u2 = undefined,
        /// Data alignment [11:11]
        ALIGN: u1 = 0x0,
        /// External event select for injected group [12:14]
        JEXTSEL: u3 = 0x0,
        /// External trigger conversion mode for injected channels [15:15]
        JEXTTRIG: u1 = 0x0,
        /// Reserved [16:16]
        _2: u1 = undefined,
        /// External event select for regular group [17:19]
        EXTSEL: u3 = 0x0,
        /// External trigger conversion mode for regular channels [20:20]
        EXTTRIG: u1 = 0x0,
        /// Start conversion of injected channels [21:21]
        JSWSTART: u1 = 0x0,
        /// Start conversion of regular channels [22:22]
        SWSTART: u1 = 0x0,
        /// Temperature sensor and VREFINT enable [23:23]
        TSVREFE: u1 = 0x0,
        /// Reserved [24:31]
        _3: u8 = undefined,
    }).init(0x40012408);
    /// sample time register 1
    pub const SMPR1 = reg.RW(packed struct(u32) {
        /// Channel 10 sample time selection [0:2]
        SMP10: u3 = 0x0,
        /// Channel 11 sample time selection [3:5]
        SMP11: u3 = 0x0,
        /// Channel 12 sample time selection [6:8]
        SMP12: u3 = 0x0,
        /// Channel 13 sample time selection [9:11]
        SMP13: u3 = 0x0,
        /// Channel 14 sample time selection [12:14]
        SMP14: u3 = 0x0,
        /// Channel 15 sample time selection [15:17]
        SMP15: u3 = 0x0,
        /// Channel 16 sample time selection [18:20]
        SMP16: u3 = 0x0,
        /// Channel 17 sample time selection [21:23]
        SMP17: u3 = 0x0,
        /// Reserved [24:31]
        _0: u8 = undefined,
    }).init(0x4001240C);
    /// sample time register 2
    pub const SMPR2 = reg.RW(packed struct(u32) {
        /// Channel 0 sample time selection [0:2]
        SMP0: u3 = 0x0,
        /// Channel 1 sample time selection [3:5]
        SMP1: u3 = 0x0,
        /// Channel 2 sample time selection [6:8]
        SMP2: u3 = 0x0,
        /// Channel 3 sample time selection [9:11]
        SMP3: u3 = 0x0,
        /// Channel 4 sample time selection [12:14]
        SMP4: u3 = 0x0,
        /// Channel 5 sample time selection [15:17]
        SMP5: u3 = 0x0,
        /// Channel 6 sample time selection [18:20]
        SMP6: u3 = 0x0,
        /// Channel 7 sample time selection [21:23]
        SMP7: u3 = 0x0,
        /// Channel 8 sample time selection [24:26]
        SMP8: u3 = 0x0,
        /// Channel 9 sample time selection [27:29]
        SMP9: u3 = 0x0,
        /// Reserved [30:31]
        _0: u2 = undefined,
    }).init(0x40012410);
    /// injected channel data offset register x
    pub const JOFR1 = reg.RW(packed struct(u32) {
        /// Data offset for injected channel 1 [0:11]
        JOFFSET1: u12 = 0x0,
        /// Reserved [12:31]
        _0: u20 = undefined,
    }).init(0x40012414);
    /// injected channel data offset register x
    pub const JOFR2 = reg.RW(packed struct(u32) {
        /// Data offset for injected channel 2 [0:11]
        JOFFSET2: u12 = 0x0,
        /// Reserved [12:31]
        _0: u20 = undefined,
    }).init(0x40012418);
    /// injected channel data offset register x
    pub const JOFR3 = reg.RW(packed struct(u32) {
        /// Data offset for injected channel 3 [0:11]
        JOFFSET3: u12 = 0x0,
        /// Reserved [12:31]
        _0: u20 = undefined,
    }).init(0x4001241C);
    /// injected channel data offset register x
    pub const JOFR4 = reg.RW(packed struct(u32) {
        /// Data offset for injected channel 4 [0:11]
        JOFFSET4: u12 = 0x0,
        /// Reserved [12:31]
        _0: u20 = undefined,
    }).init(0x40012420);
    /// watchdog higher threshold register
    pub const HTR = reg.RW(packed struct(u32) {
        /// Analog watchdog higher threshold [0:11]
        HT: u12 = 0xFFF,
        /// Reserved [12:31]
        _0: u20 = undefined,
    }).init(0x40012424);
    /// watchdog lower threshold register
    pub const LTR = reg.RW(packed struct(u32) {
        /// Analog watchdog lower threshold [0:11]
        LT: u12 = 0x0,
        /// Reserved [12:31]
        _0: u20 = undefined,
    }).init(0x40012428);
    /// regular sequence register 1
    pub const SQR1 = reg.RW(packed struct(u32) {
        /// 13th conversion in regular sequence [0:4]
        SQ13: u5 = 0x0,
        /// 14th conversion in regular sequence [5:9]
        SQ14: u5 = 0x0,
        /// 15th conversion in regular sequence [10:14]
        SQ15: u5 = 0x0,
        /// 16th conversion in regular sequence [15:19]
        SQ16: u5 = 0x0,
        /// Regular channel sequence length [20:23]
        L: u4 = 0x0,
        /// Reserved [24:31]
        _0: u8 = undefined,
    }).init(0x4001242C);
    /// regular sequence register 2
    pub const SQR2 = reg.RW(packed struct(u32) {
        /// 7th conversion in regular sequence [0:4]
        SQ7: u5 = 0x0,
        /// 8th conversion in regular sequence [5:9]
        SQ8: u5 = 0x0,
        /// 9th conversion in regular sequence [10:14]
        SQ9: u5 = 0x0,
        /// 10th conversion in regular sequence [15:19]
        SQ10: u5 = 0x0,
        /// 11th conversion in regular sequence [20:24]
        SQ11: u5 = 0x0,
        /// 12th conversion in regular sequence [25:29]
        SQ12: u5 = 0x0,
        /// Reserved [30:31]
        _0: u2 = undefined,
    }).init(0x40012430);
    /// regular sequence register 3
    pub const SQR3 = reg.RW(packed struct(u32) {
        /// 1st conversion in regular sequence [0:4]
        SQ1: u5 = 0x0,
        /// 2nd conversion in regular sequence [5:9]
        SQ2: u5 = 0x0,
        /// 3rd conversion in regular sequence [10:14]
        SQ3: u5 = 0x0,
        /// 4th conversion in regular sequence [15:19]
        SQ4: u5 = 0x0,
        /// 5th conversion in regular sequence [20:24]
        SQ5: u5 = 0x0,
        /// 6th conversion in regular sequence [25:29]
        SQ6: u5 = 0x0,
        /// Reserved [30:31]
        _0: u2 = undefined,
    }).init(0x40012434);
    /// injected sequence register
    pub const JSQR = reg.RW(packed struct(u32) {
        /// 1st conversion in injected sequence [0:4]
        JSQ1: u5 = 0x0,
        /// 2nd conversion in injected sequence [5:9]
        JSQ2: u5 = 0x0,
        /// 3rd conversion in injected sequence [10:14]
        JSQ3: u5 = 0x0,
        /// 4th conversion in injected sequence [15:19]
        JSQ4: u5 = 0x0,
        /// Injected sequence length [20:21]
        JL: u2 = 0x0,
        /// Reserved [22:31]
        _0: u10 = undefined,
    }).init(0x40012438);
    /// injected data register x
    pub const JDR1 = reg.RO(packed struct(u32) {
        /// Injected data [0:15]
        JDATA: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4001243C);
    /// injected data register x
    pub const JDR2 = reg.RO(packed struct(u32) {
        /// Injected data [0:15]
        JDATA: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40012440);
    /// injected data register x
    pub const JDR3 = reg.RO(packed struct(u32) {
        /// Injected data [0:15]
        JDATA: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40012444);
    /// injected data register x
    pub const JDR4 = reg.RO(packed struct(u32) {
        /// Injected data [0:15]
        JDATA: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40012448);
    /// regular data register
    pub const DR = reg.RO(packed struct(u32) {
        /// Regular data [0:15]
        DATA: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4001244C);
};

pub const DAC = struct {
    pub const IRQ = struct {};
    /// Control register (DAC_CR)
    pub const CR = reg.RW(packed struct(u32) {
        /// DAC channel1 enable [0:0]
        EN1: u1 = 0x0,
        /// DAC channel1 output buffer disable [1:1]
        BOFF1: u1 = 0x0,
        /// DAC channel1 trigger enable [2:2]
        TEN1: u1 = 0x0,
        /// DAC channel1 trigger selection [3:5]
        TSEL1: u3 = 0x0,
        /// DAC channel1 noise/triangle wave generation enable [6:7]
        WAVE1: u2 = 0x0,
        /// DAC channel1 mask/amplitude selector [8:11]
        MAMP1: u4 = 0x0,
        /// DAC channel1 DMA enable [12:12]
        DMAEN1: u1 = 0x0,
        /// DAC channel1 DMA underrun interrupt enable [13:13]
        DMAUDRIE1: u1 = 0x0,
        /// Reserved [14:15]
        _0: u2 = undefined,
        /// DAC channel2 enable [16:16]
        EN2: u1 = 0x0,
        /// DAC channel2 output buffer disable [17:17]
        BOFF2: u1 = 0x0,
        /// DAC channel2 trigger enable [18:18]
        TEN2: u1 = 0x0,
        /// DAC channel2 trigger selection [19:21]
        TSEL2: u3 = 0x0,
        /// DAC channel2 noise/triangle wave generation enable [22:23]
        WAVE2: u2 = 0x0,
        /// DAC channel2 mask/amplitude selector [24:27]
        MAMP2: u4 = 0x0,
        /// DAC channel2 DMA enable [28:28]
        DMAEN2: u1 = 0x0,
        /// DAC channel2 DMA underrun interrupt enable [29:29]
        DMAUDRIE2: u1 = 0x0,
        /// Reserved [30:31]
        _1: u2 = undefined,
    }).init(0x40007400);
    /// DAC software trigger register (DAC_SWTRIGR)
    pub const SWTRIGR = reg.WO(packed struct(u32) {
        /// DAC channel1 software trigger [0:0]
        SWTRIG1: u1 = 0x0,
        /// DAC channel2 software trigger [1:1]
        SWTRIG2: u1 = 0x0,
        /// Reserved [2:31]
        _0: u30 = undefined,
    }).init(0x40007404);
    /// DAC channel1 12-bit right-aligned data holding register(DAC_DHR12R1)
    pub const DHR12R1 = reg.RW(packed struct(u32) {
        /// DAC channel1 12-bit right-aligned data [0:11]
        DACC1DHR: u12 = 0x0,
        /// Reserved [12:31]
        _0: u20 = undefined,
    }).init(0x40007408);
    /// DAC channel1 12-bit left aligned data holding register (DAC_DHR12L1)
    pub const DHR12L1 = reg.RW(packed struct(u32) {
        /// Reserved [0:3]
        _0: u4 = undefined,
        /// DAC channel1 12-bit left-aligned data [4:15]
        DACC1DHR: u12 = 0x0,
        /// Reserved [16:31]
        _1: u16 = undefined,
    }).init(0x4000740C);
    /// DAC channel1 8-bit right aligned data holding register (DAC_DHR8R1)
    pub const DHR8R1 = reg.RW(packed struct(u32) {
        /// DAC channel1 8-bit right-aligned data [0:7]
        DACC1DHR: u8 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x40007410);
    /// DAC channel2 12-bit right aligned data holding register (DAC_DHR12R2)
    pub const DHR12R2 = reg.RW(packed struct(u32) {
        /// DAC channel2 12-bit right-aligned data [0:11]
        DACC2DHR: u12 = 0x0,
        /// Reserved [12:31]
        _0: u20 = undefined,
    }).init(0x40007414);
    /// DAC channel2 12-bit left aligned data holding register (DAC_DHR12L2)
    pub const DHR12L2 = reg.RW(packed struct(u32) {
        /// Reserved [0:3]
        _0: u4 = undefined,
        /// DAC channel2 12-bit left-aligned data [4:15]
        DACC2DHR: u12 = 0x0,
        /// Reserved [16:31]
        _1: u16 = undefined,
    }).init(0x40007418);
    /// DAC channel2 8-bit right-aligned data holding register (DAC_DHR8R2)
    pub const DHR8R2 = reg.RW(packed struct(u32) {
        /// DAC channel2 8-bit right-aligned data [0:7]
        DACC2DHR: u8 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x4000741C);
    /// Dual DAC 12-bit right-aligned data holding register (DAC_DHR12RD), Bits 31:28 Reserved, Bits 15:12 Reserved
    pub const DHR12RD = reg.RW(packed struct(u32) {
        /// DAC channel1 12-bit right-aligned data [0:11]
        DACC1DHR: u12 = 0x0,
        /// Reserved [12:15]
        _0: u4 = undefined,
        /// DAC channel2 12-bit right-aligned data [16:27]
        DACC2DHR: u12 = 0x0,
        /// Reserved [28:31]
        _1: u4 = undefined,
    }).init(0x40007420);
    /// DUAL DAC 12-bit left aligned data holding register (DAC_DHR12LD), Bits 19:16 Reserved, Bits 3:0 Reserved
    pub const DHR12LD = reg.RW(packed struct(u32) {
        /// Reserved [0:3]
        _0: u4 = undefined,
        /// DAC channel1 12-bit left-aligned data [4:15]
        DACC1DHR: u12 = 0x0,
        /// Reserved [16:19]
        _1: u4 = undefined,
        /// DAC channel2 12-bit right-aligned data [20:31]
        DACC2DHR: u12 = 0x0,
    }).init(0x40007424);
    /// DUAL DAC 8-bit right aligned data holding register (DAC_DHR8RD), Bits 31:16 Reserved
    pub const DHR8RD = reg.RW(packed struct(u32) {
        /// DAC channel1 8-bit right-aligned data [0:7]
        DACC1DHR: u8 = 0x0,
        /// DAC channel2 8-bit right-aligned data [8:15]
        DACC2DHR: u8 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40007428);
    /// DAC channel1 data output register (DAC_DOR1)
    pub const DOR1 = reg.RO(packed struct(u32) {
        /// DAC channel1 data output [0:11]
        DACC1DOR: u12 = 0x0,
        /// Reserved [12:31]
        _0: u20 = undefined,
    }).init(0x4000742C);
    /// DAC channel2 data output register (DAC_DOR2)
    pub const DOR2 = reg.RO(packed struct(u32) {
        /// DAC channel2 data output [0:11]
        DACC2DOR: u12 = 0x0,
        /// Reserved [12:31]
        _0: u20 = undefined,
    }).init(0x40007430);
    /// DAC status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Reserved [0:12]
        _0: u13 = undefined,
        /// DAC channel1 DMA underrun flag [13:13]
        DMAUDR1: u1 = 0x0,
        /// Reserved [14:28]
        _1: u15 = undefined,
        /// DAC channel2 DMA underrun flag [29:29]
        DMAUDR2: u1 = 0x0,
        /// Reserved [30:31]
        _2: u2 = undefined,
    }).init(0x40007434);
};

pub const DBG = struct {
    pub const IRQ = struct {};
    /// DBGMCU_IDCODE
    pub const IDCODE = reg.RO(packed struct(u32) {
        /// DEV_ID [0:11]
        DEV_ID: u12 = 0x0,
        /// Reserved [12:15]
        _0: u4 = undefined,
        /// REV_ID [16:31]
        REV_ID: u16 = 0x0,
    }).init(0xE0042000);
    /// DBGMCU_CR
    pub const CR = reg.RW(packed struct(u32) {
        /// DBG_SLEEP [0:0]
        DBG_SLEEP: u1 = 0x0,
        /// DBG_STOP [1:1]
        DBG_STOP: u1 = 0x0,
        /// DBG_STANDBY [2:2]
        DBG_STANDBY: u1 = 0x0,
        /// Reserved [3:4]
        _0: u2 = undefined,
        /// TRACE_IOEN [5:5]
        TRACE_IOEN: u1 = 0x0,
        /// TRACE_MODE [6:7]
        TRACE_MODE: u2 = 0x0,
        /// DBG_IWDG_STOP [8:8]
        DBG_IWDG_STOP: u1 = 0x0,
        /// DBG_WWDG_STOP [9:9]
        DBG_WWDG_STOP: u1 = 0x0,
        /// DBG_TIM1_STOP [10:10]
        DBG_TIM1_STOP: u1 = 0x0,
        /// DBG_TIM2_STOP [11:11]
        DBG_TIM2_STOP: u1 = 0x0,
        /// DBG_TIM3_STOP [12:12]
        DBG_TIM3_STOP: u1 = 0x0,
        /// DBG_TIM4_STOP [13:13]
        DBG_TIM4_STOP: u1 = 0x0,
        /// Reserved [14:14]
        _1: u1 = undefined,
        /// DBG_I2C1_SMBUS_TIMEOUT [15:15]
        DBG_I2C1_SMBUS_TIMEOUT: u1 = 0x0,
        /// DBG_I2C2_SMBUS_TIMEOUT [16:16]
        DBG_I2C2_SMBUS_TIMEOUT: u1 = 0x0,
        /// Reserved [17:17]
        _2: u1 = undefined,
        /// DBG_TIM5_STOP [18:18]
        DBG_TIM5_STOP: u1 = 0x0,
        /// DBG_TIM6_STOP [19:19]
        DBG_TIM6_STOP: u1 = 0x0,
        /// DBG_TIM7_STOP [20:20]
        DBG_TIM7_STOP: u1 = 0x0,
        /// Reserved [21:21]
        _3: u1 = undefined,
        /// DBG_TIM15_STOP [22:22]
        DBG_TIM15_STOP: u1 = 0x0,
        /// DBG_TIM16_STOP [23:23]
        DBG_TIM16_STOP: u1 = 0x0,
        /// DBG_TIM17_STOP [24:24]
        DBG_TIM17_STOP: u1 = 0x0,
        /// DBG_TIM12_STOP [25:25]
        DBG_TIM12_STOP: u1 = 0x0,
        /// DBG_TIM13_STOP [26:26]
        DBG_TIM13_STOP: u1 = 0x0,
        /// DBG_TIM14_STOP [27:27]
        DBG_TIM14_STOP: u1 = 0x0,
        /// Reserved [28:31]
        _4: u4 = undefined,
    }).init(0xE0042004);
};

pub const UART4 = struct {
    pub const IRQ = struct {
        /// UART4 global interrupt
        pub const UART4 = 52;
    };
    /// Status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Parity error [0:0]
        PE: u1 = 0x0,
        /// Framing error [1:1]
        FE: u1 = 0x0,
        /// Noise error flag [2:2]
        NE: u1 = 0x0,
        /// Overrun error [3:3]
        ORE: u1 = 0x0,
        /// IDLE line detected [4:4]
        IDLE: u1 = 0x0,
        /// Read data register not empty [5:5]
        RXNE: u1 = 0x0,
        /// Transmission complete [6:6]
        TC: u1 = 0x0,
        /// Transmit data register empty [7:7]
        TXE: u1 = 0x0,
        /// LIN break detection flag [8:8]
        LBD: u1 = 0x0,
        /// Reserved [9:31]
        _0: u23 = undefined,
    }).init(0x40004C00);
    /// Data register
    pub const DR = reg.RW(packed struct(u32) {
        /// DR [0:8]
        DR: u9 = 0x0,
        /// Reserved [9:31]
        _0: u23 = undefined,
    }).init(0x40004C04);
    /// Baud rate register
    pub const BRR = reg.RW(packed struct(u32) {
        /// DIV_Fraction [0:3]
        DIV_Fraction: u4 = 0x0,
        /// DIV_Mantissa [4:15]
        DIV_Mantissa: u12 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40004C08);
    /// Control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Send break [0:0]
        SBK: u1 = 0x0,
        /// Receiver wakeup [1:1]
        RWU: u1 = 0x0,
        /// Receiver enable [2:2]
        RE: u1 = 0x0,
        /// Transmitter enable [3:3]
        TE: u1 = 0x0,
        /// IDLE interrupt enable [4:4]
        IDLEIE: u1 = 0x0,
        /// RXNE interrupt enable [5:5]
        RXNEIE: u1 = 0x0,
        /// Transmission complete interrupt enable [6:6]
        TCIE: u1 = 0x0,
        /// TXE interrupt enable [7:7]
        TXEIE: u1 = 0x0,
        /// PE interrupt enable [8:8]
        PEIE: u1 = 0x0,
        /// Parity selection [9:9]
        PS: u1 = 0x0,
        /// Parity control enable [10:10]
        PCE: u1 = 0x0,
        /// Wakeup method [11:11]
        WAKE: u1 = 0x0,
        /// Word length [12:12]
        M: u1 = 0x0,
        /// USART enable [13:13]
        UE: u1 = 0x0,
        /// Reserved [14:31]
        _0: u18 = undefined,
    }).init(0x40004C0C);
    /// Control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Address of the USART node [0:3]
        ADD: u4 = 0x0,
        /// Reserved [4:4]
        _0: u1 = undefined,
        /// lin break detection length [5:5]
        LBDL: u1 = 0x0,
        /// LIN break detection interrupt enable [6:6]
        LBDIE: u1 = 0x0,
        /// Reserved [7:11]
        _1: u5 = undefined,
        /// STOP bits [12:13]
        STOP: u2 = 0x0,
        /// LIN mode enable [14:14]
        LINEN: u1 = 0x0,
        /// Reserved [15:31]
        _2: u17 = undefined,
    }).init(0x40004C10);
    /// Control register 3
    pub const CR3 = reg.RW(packed struct(u32) {
        /// Error interrupt enable [0:0]
        EIE: u1 = 0x0,
        /// IrDA mode enable [1:1]
        IREN: u1 = 0x0,
        /// IrDA low-power [2:2]
        IRLP: u1 = 0x0,
        /// Half-duplex selection [3:3]
        HDSEL: u1 = 0x0,
        /// Reserved [4:5]
        _0: u2 = undefined,
        /// DMA enable receiver [6:6]
        DMAR: u1 = 0x0,
        /// DMA enable transmitter [7:7]
        DMAT: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40004C14);
};

pub const UART5 = struct {
    pub const IRQ = struct {
        /// UART5 global interrupt
        pub const UART5 = 53;
    };
    /// Status register
    pub const SR = reg.RW(packed struct(u32) {
        /// PE [0:0]
        PE: u1 = 0x0,
        /// FE [1:1]
        FE: u1 = 0x0,
        /// NE [2:2]
        NE: u1 = 0x0,
        /// ORE [3:3]
        ORE: u1 = 0x0,
        /// IDLE [4:4]
        IDLE: u1 = 0x0,
        /// RXNE [5:5]
        RXNE: u1 = 0x0,
        /// TC [6:6]
        TC: u1 = 0x0,
        /// TXE [7:7]
        TXE: u1 = 0x0,
        /// LBD [8:8]
        LBD: u1 = 0x0,
        /// Reserved [9:31]
        _0: u23 = undefined,
    }).init(0x40005000);
    /// Data register
    pub const DR = reg.RW(packed struct(u32) {
        /// DR [0:8]
        DR: u9 = 0x0,
        /// Reserved [9:31]
        _0: u23 = undefined,
    }).init(0x40005004);
    /// Baud rate register
    pub const BRR = reg.RW(packed struct(u32) {
        /// DIV_Fraction [0:3]
        DIV_Fraction: u4 = 0x0,
        /// DIV_Mantissa [4:15]
        DIV_Mantissa: u12 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40005008);
    /// Control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// SBK [0:0]
        SBK: u1 = 0x0,
        /// RWU [1:1]
        RWU: u1 = 0x0,
        /// RE [2:2]
        RE: u1 = 0x0,
        /// TE [3:3]
        TE: u1 = 0x0,
        /// IDLEIE [4:4]
        IDLEIE: u1 = 0x0,
        /// RXNEIE [5:5]
        RXNEIE: u1 = 0x0,
        /// TCIE [6:6]
        TCIE: u1 = 0x0,
        /// TXEIE [7:7]
        TXEIE: u1 = 0x0,
        /// PEIE [8:8]
        PEIE: u1 = 0x0,
        /// PS [9:9]
        PS: u1 = 0x0,
        /// PCE [10:10]
        PCE: u1 = 0x0,
        /// WAKE [11:11]
        WAKE: u1 = 0x0,
        /// M [12:12]
        M: u1 = 0x0,
        /// UE [13:13]
        UE: u1 = 0x0,
        /// Reserved [14:31]
        _0: u18 = undefined,
    }).init(0x4000500C);
    /// Control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// ADD [0:3]
        ADD: u4 = 0x0,
        /// Reserved [4:4]
        _0: u1 = undefined,
        /// LBDL [5:5]
        LBDL: u1 = 0x0,
        /// LBDIE [6:6]
        LBDIE: u1 = 0x0,
        /// Reserved [7:11]
        _1: u5 = undefined,
        /// STOP [12:13]
        STOP: u2 = 0x0,
        /// LINEN [14:14]
        LINEN: u1 = 0x0,
        /// Reserved [15:31]
        _2: u17 = undefined,
    }).init(0x40005010);
    /// Control register 3
    pub const CR3 = reg.RW(packed struct(u32) {
        /// Error interrupt enable [0:0]
        EIE: u1 = 0x0,
        /// IrDA mode enable [1:1]
        IREN: u1 = 0x0,
        /// IrDA low-power [2:2]
        IRLP: u1 = 0x0,
        /// Half-duplex selection [3:3]
        HDSEL: u1 = 0x0,
        /// Reserved [4:6]
        _0: u3 = undefined,
        /// DMA enable transmitter [7:7]
        DMAT: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40005014);
};

pub const CRC = struct {
    pub const IRQ = struct {};
    /// Data register
    pub const DR = reg.RW(packed struct(u32) {
        /// Data Register [0:31]
        DR: u32 = 0xFFFFFFFF,
    }).init(0x40023000);
    /// Independent Data register
    pub const IDR = reg.RW(packed struct(u32) {
        /// Independent Data register [0:7]
        IDR: u8 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x40023004);
    /// Control register
    pub const CR = reg.WO(packed struct(u32) {
        /// Reset bit [0:0]
        RESET: u1 = 0x0,
        /// Reserved [1:31]
        _0: u31 = undefined,
    }).init(0x40023008);
};

pub const FLASH = struct {
    pub const IRQ = struct {
        /// Flash global interrupt
        pub const FLASH = 4;
    };
    /// Flash access control register
    pub const ACR = reg.RW(packed struct(u32) {
        /// Reserved [0:2]
        _0: u3 = undefined,
        /// Flash half cycle access enable [3:3]
        HLFCYA: u1 = 0x0,
        /// Reserved [4:31]
        _1: u28 = undefined,
    }).init(0x40022000);
    /// Flash key register
    pub const KEYR = reg.WO(packed struct(u32) {
        /// FPEC key [0:31]
        KEY: u32 = 0x0,
    }).init(0x40022004);
    /// Flash option key register
    pub const OPTKEYR = reg.WO(packed struct(u32) {
        /// Option byte key [0:31]
        OPTKEY: u32 = 0x0,
    }).init(0x40022008);
    /// Status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Busy [0:0]
        BSY: u1 = 0x0,
        /// Reserved [1:1]
        _0: u1 = undefined,
        /// Programming error [2:2]
        PGERR: u1 = 0x0,
        /// Reserved [3:3]
        _1: u1 = undefined,
        /// Write protection error [4:4]
        WRPRTERR: u1 = 0x0,
        /// End of operation [5:5]
        EOP: u1 = 0x0,
        /// Reserved [6:31]
        _2: u26 = undefined,
    }).init(0x4002200C);
    /// Control register
    pub const CR = reg.RW(packed struct(u32) {
        /// Programming [0:0]
        PG: u1 = 0x0,
        /// Page Erase [1:1]
        PER: u1 = 0x0,
        /// Mass Erase [2:2]
        MER: u1 = 0x0,
        /// Reserved [3:3]
        _0: u1 = undefined,
        /// Option byte programming [4:4]
        OPTPG: u1 = 0x0,
        /// Option byte erase [5:5]
        OPTER: u1 = 0x0,
        /// Start [6:6]
        STRT: u1 = 0x0,
        /// Lock [7:7]
        LOCK: u1 = 0x1,
        /// Reserved [8:8]
        _1: u1 = undefined,
        /// Option bytes write enable [9:9]
        OPTWRE: u1 = 0x0,
        /// Error interrupt enable [10:10]
        ERRIE: u1 = 0x0,
        /// Reserved [11:11]
        _2: u1 = undefined,
        /// End of operation interrupt enable [12:12]
        EOPIE: u1 = 0x0,
        /// Reserved [13:31]
        _3: u19 = undefined,
    }).init(0x40022010);
    /// Flash address register
    pub const AR = reg.WO(packed struct(u32) {
        /// Flash Address [0:31]
        FAR: u32 = 0x0,
    }).init(0x40022014);
    /// Option byte register
    pub const OBR = reg.RO(packed struct(u32) {
        /// Option byte error [0:0]
        OPTERR: u1 = 0x0,
        /// Read protection [1:1]
        RDPRT: u1 = 0x0,
        /// WDG_SW [2:2]
        WDG_SW: u1 = 0x1,
        /// nRST_STOP [3:3]
        nRST_STOP: u1 = 0x1,
        /// nRST_STDBY [4:4]
        nRST_STDBY: u1 = 0x1,
        /// Reserved [5:9]
        _0: u5 = undefined,
        /// Data0 [10:17]
        Data0: u8 = 0xFF,
        /// Data1 [18:25]
        Data1: u8 = 0xFF,
        /// Reserved [26:31]
        _1: u6 = undefined,
    }).init(0x4002201C);
    /// Write protection register
    pub const WRPR = reg.RO(packed struct(u32) {
        /// Write protect [0:31]
        WRP: u32 = 0xFFFFFFFF,
    }).init(0x40022020);
};

pub const TIM15 = struct {
    pub const IRQ = struct {};
    /// control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Counter enable [0:0]
        CEN: u1 = 0x0,
        /// Update disable [1:1]
        UDIS: u1 = 0x0,
        /// Update request source [2:2]
        URS: u1 = 0x0,
        /// One-pulse mode [3:3]
        OPM: u1 = 0x0,
        /// Reserved [4:6]
        _0: u3 = undefined,
        /// Auto-reload preload enable [7:7]
        ARPE: u1 = 0x0,
        /// Clock division [8:9]
        CKD: u2 = 0x0,
        /// Reserved [10:31]
        _1: u22 = undefined,
    }).init(0x40014000);
    /// control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Capture/compare preloaded control [0:0]
        CCPC: u1 = 0x0,
        /// Reserved [1:1]
        _0: u1 = undefined,
        /// Capture/compare control update selection [2:2]
        CCUS: u1 = 0x0,
        /// Capture/compare DMA selection [3:3]
        CCDS: u1 = 0x0,
        /// Master mode selection [4:6]
        MMS: u3 = 0x0,
        /// Reserved [7:7]
        _1: u1 = undefined,
        /// Output Idle state 1 [8:8]
        OIS1: u1 = 0x0,
        /// Output Idle state 1 [9:9]
        OIS1N: u1 = 0x0,
        /// Output Idle state 2 [10:10]
        OIS2: u1 = 0x0,
        /// Reserved [11:31]
        _2: u21 = undefined,
    }).init(0x40014004);
    /// slave mode control register
    pub const SMCR = reg.RW(packed struct(u32) {
        /// Slave mode selection [0:2]
        SMS: u3 = 0x0,
        /// Reserved [3:3]
        _0: u1 = undefined,
        /// Trigger selection [4:6]
        TS: u3 = 0x0,
        /// Master/Slave mode [7:7]
        MSM: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40014008);
    /// DMA/Interrupt enable register
    pub const DIER = reg.RW(packed struct(u32) {
        /// Update interrupt enable [0:0]
        UIE: u1 = 0x0,
        /// Capture/Compare 1 interrupt enable [1:1]
        CC1IE: u1 = 0x0,
        /// Capture/Compare 2 interrupt enable [2:2]
        CC2IE: u1 = 0x0,
        /// Reserved [3:4]
        _0: u2 = undefined,
        /// COM interrupt enable [5:5]
        COMIE: u1 = 0x0,
        /// Trigger interrupt enable [6:6]
        TIE: u1 = 0x0,
        /// Break interrupt enable [7:7]
        BIE: u1 = 0x0,
        /// Update DMA request enable [8:8]
        UDE: u1 = 0x0,
        /// Capture/Compare 1 DMA request enable [9:9]
        CC1DE: u1 = 0x0,
        /// Capture/Compare 2 DMA request enable [10:10]
        CC2DE: u1 = 0x0,
        /// Reserved [11:13]
        _1: u3 = undefined,
        /// Trigger DMA request enable [14:14]
        TDE: u1 = 0x0,
        /// Reserved [15:31]
        _2: u17 = undefined,
    }).init(0x4001400C);
    /// status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Update interrupt flag [0:0]
        UIF: u1 = 0x0,
        /// Capture/compare 1 interrupt flag [1:1]
        CC1IF: u1 = 0x0,
        /// Capture/Compare 2 interrupt flag [2:2]
        CC2IF: u1 = 0x0,
        /// Reserved [3:4]
        _0: u2 = undefined,
        /// COM interrupt flag [5:5]
        COMIF: u1 = 0x0,
        /// Trigger interrupt flag [6:6]
        TIF: u1 = 0x0,
        /// Break interrupt flag [7:7]
        BIF: u1 = 0x0,
        /// Reserved [8:8]
        _1: u1 = undefined,
        /// Capture/Compare 1 overcapture flag [9:9]
        CC1OF: u1 = 0x0,
        /// Capture/compare 2 overcapture flag [10:10]
        CC2OF: u1 = 0x0,
        /// Reserved [11:31]
        _2: u21 = undefined,
    }).init(0x40014010);
    /// event generation register
    pub const EGR = reg.WO(packed struct(u32) {
        /// Update generation [0:0]
        UG: u1 = 0x0,
        /// Capture/compare 1 generation [1:1]
        CC1G: u1 = 0x0,
        /// Capture/compare 2 generation [2:2]
        CC2G: u1 = 0x0,
        /// Reserved [3:4]
        _0: u2 = undefined,
        /// Capture/Compare control update generation [5:5]
        COMG: u1 = 0x0,
        /// Trigger generation [6:6]
        TG: u1 = 0x0,
        /// Break generation [7:7]
        BG: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40014014);
    /// capture/compare mode register (output mode)
    pub const CCMR1_Output = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Output Compare 1 fast enable [2:2]
        OC1FE: u1 = 0x0,
        /// Output Compare 1 preload enable [3:3]
        OC1PE: u1 = 0x0,
        /// Output Compare 1 mode [4:6]
        OC1M: u3 = 0x0,
        /// Reserved [7:7]
        _0: u1 = undefined,
        /// Capture/Compare 2 selection [8:9]
        CC2S: u2 = 0x0,
        /// Output Compare 2 fast enable [10:10]
        OC2FE: u1 = 0x0,
        /// Output Compare 2 preload enable [11:11]
        OC2PE: u1 = 0x0,
        /// Output Compare 2 mode [12:14]
        OC2M: u3 = 0x0,
        /// Reserved [15:31]
        _1: u17 = undefined,
    }).init(0x40014018);
    /// capture/compare mode register 1 (input mode)
    pub const CCMR1_Input = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Input capture 1 prescaler [2:3]
        IC1PSC: u2 = 0x0,
        /// Input capture 1 filter [4:7]
        IC1F: u4 = 0x0,
        /// Capture/Compare 2 selection [8:9]
        CC2S: u2 = 0x0,
        /// Input capture 2 prescaler [10:11]
        IC2PSC: u2 = 0x0,
        /// Input capture 2 filter [12:15]
        IC2F: u4 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40014018);
    /// capture/compare enable register
    pub const CCER = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 output enable [0:0]
        CC1E: u1 = 0x0,
        /// Capture/Compare 1 output Polarity [1:1]
        CC1P: u1 = 0x0,
        /// Capture/Compare 1 complementary output enable [2:2]
        CC1NE: u1 = 0x0,
        /// Capture/Compare 1 output Polarity [3:3]
        CC1NP: u1 = 0x0,
        /// Capture/Compare 2 output enable [4:4]
        CC2E: u1 = 0x0,
        /// Capture/Compare 2 output Polarity [5:5]
        CC2P: u1 = 0x0,
        /// Reserved [6:6]
        _0: u1 = undefined,
        /// Capture/Compare 2 output Polarity [7:7]
        CC2NP: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40014020);
    /// counter
    pub const CNT = reg.RW(packed struct(u32) {
        /// counter value [0:15]
        CNT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40014024);
    /// prescaler
    pub const PSC = reg.RW(packed struct(u32) {
        /// Prescaler value [0:15]
        PSC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40014028);
    /// auto-reload register
    pub const ARR = reg.RW(packed struct(u32) {
        /// Auto-reload value [0:15]
        ARR: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4001402C);
    /// repetition counter register
    pub const RCR = reg.RW(packed struct(u32) {
        /// Repetition counter value [0:7]
        REP: u8 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x40014030);
    /// capture/compare register 1
    pub const CCR1 = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 value [0:15]
        CCR1: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40014034);
    /// capture/compare register 2
    pub const CCR2 = reg.RW(packed struct(u32) {
        /// Capture/Compare 2 value [0:15]
        CCR2: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40014038);
    /// break and dead-time register
    pub const BDTR = reg.RW(packed struct(u32) {
        /// Dead-time generator setup [0:7]
        DTG: u8 = 0x0,
        /// Lock configuration [8:9]
        LOCK: u2 = 0x0,
        /// Off-state selection for Idle mode [10:10]
        OSSI: u1 = 0x0,
        /// Off-state selection for Run mode [11:11]
        OSSR: u1 = 0x0,
        /// Break enable [12:12]
        BKE: u1 = 0x0,
        /// Break polarity [13:13]
        BKP: u1 = 0x0,
        /// Automatic output enable [14:14]
        AOE: u1 = 0x0,
        /// Main output enable [15:15]
        MOE: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40014044);
    /// DMA control register
    pub const DCR = reg.RW(packed struct(u32) {
        /// DMA base address [0:4]
        DBA: u5 = 0x0,
        /// Reserved [5:7]
        _0: u3 = undefined,
        /// DMA burst length [8:12]
        DBL: u5 = 0x0,
        /// Reserved [13:31]
        _1: u19 = undefined,
    }).init(0x40014048);
    /// DMA address for full transfer
    pub const DMAR = reg.RW(packed struct(u32) {
        /// DMA register for burst accesses [0:15]
        DMAB: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4001404C);
};

pub const TIM16 = struct {
    pub const IRQ = struct {};
    /// control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Counter enable [0:0]
        CEN: u1 = 0x0,
        /// Update disable [1:1]
        UDIS: u1 = 0x0,
        /// Update request source [2:2]
        URS: u1 = 0x0,
        /// One-pulse mode [3:3]
        OPM: u1 = 0x0,
        /// Reserved [4:6]
        _0: u3 = undefined,
        /// Auto-reload preload enable [7:7]
        ARPE: u1 = 0x0,
        /// Clock division [8:9]
        CKD: u2 = 0x0,
        /// Reserved [10:31]
        _1: u22 = undefined,
    }).init(0x40014400);
    /// control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Capture/compare preloaded control [0:0]
        CCPC: u1 = 0x0,
        /// Reserved [1:1]
        _0: u1 = undefined,
        /// Capture/compare control update selection [2:2]
        CCUS: u1 = 0x0,
        /// Capture/compare DMA selection [3:3]
        CCDS: u1 = 0x0,
        /// Reserved [4:7]
        _1: u4 = undefined,
        /// Output Idle state 1 [8:8]
        OIS1: u1 = 0x0,
        /// Output Idle state 1 [9:9]
        OIS1N: u1 = 0x0,
        /// Reserved [10:31]
        _2: u22 = undefined,
    }).init(0x40014404);
    /// DMA/Interrupt enable register
    pub const DIER = reg.RW(packed struct(u32) {
        /// Update interrupt enable [0:0]
        UIE: u1 = 0x0,
        /// Capture/Compare 1 interrupt enable [1:1]
        CC1IE: u1 = 0x0,
        /// Reserved [2:4]
        _0: u3 = undefined,
        /// COM interrupt enable [5:5]
        COMIE: u1 = 0x0,
        /// Trigger interrupt enable [6:6]
        TIE: u1 = 0x0,
        /// Break interrupt enable [7:7]
        BIE: u1 = 0x0,
        /// Update DMA request enable [8:8]
        UDE: u1 = 0x0,
        /// Capture/Compare 1 DMA request enable [9:9]
        CC1DE: u1 = 0x0,
        /// Reserved [10:13]
        _1: u4 = undefined,
        /// Trigger DMA request enable [14:14]
        TDE: u1 = 0x0,
        /// Reserved [15:31]
        _2: u17 = undefined,
    }).init(0x4001440C);
    /// status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Update interrupt flag [0:0]
        UIF: u1 = 0x0,
        /// Capture/compare 1 interrupt flag [1:1]
        CC1IF: u1 = 0x0,
        /// Reserved [2:4]
        _0: u3 = undefined,
        /// COM interrupt flag [5:5]
        COMIF: u1 = 0x0,
        /// Trigger interrupt flag [6:6]
        TIF: u1 = 0x0,
        /// Break interrupt flag [7:7]
        BIF: u1 = 0x0,
        /// Reserved [8:8]
        _1: u1 = undefined,
        /// Capture/Compare 1 overcapture flag [9:9]
        CC1OF: u1 = 0x0,
        /// Reserved [10:31]
        _2: u22 = undefined,
    }).init(0x40014410);
    /// event generation register
    pub const EGR = reg.WO(packed struct(u32) {
        /// Update generation [0:0]
        UG: u1 = 0x0,
        /// Capture/compare 1 generation [1:1]
        CC1G: u1 = 0x0,
        /// Reserved [2:4]
        _0: u3 = undefined,
        /// Capture/Compare control update generation [5:5]
        COMG: u1 = 0x0,
        /// Trigger generation [6:6]
        TG: u1 = 0x0,
        /// Break generation [7:7]
        BG: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40014414);
    /// capture/compare mode register (output mode)
    pub const CCMR1_Output = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Output Compare 1 fast enable [2:2]
        OC1FE: u1 = 0x0,
        /// Output Compare 1 preload enable [3:3]
        OC1PE: u1 = 0x0,
        /// Output Compare 1 mode [4:6]
        OC1M: u3 = 0x0,
        /// Reserved [7:31]
        _0: u25 = undefined,
    }).init(0x40014418);
    /// capture/compare mode register 1 (input mode)
    pub const CCMR1_Input = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Input capture 1 prescaler [2:3]
        IC1PSC: u2 = 0x0,
        /// Input capture 1 filter [4:7]
        IC1F: u4 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x40014418);
    /// capture/compare enable register
    pub const CCER = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 output enable [0:0]
        CC1E: u1 = 0x0,
        /// Capture/Compare 1 output Polarity [1:1]
        CC1P: u1 = 0x0,
        /// Capture/Compare 1 complementary output enable [2:2]
        CC1NE: u1 = 0x0,
        /// Capture/Compare 1 output Polarity [3:3]
        CC1NP: u1 = 0x0,
        /// Reserved [4:31]
        _0: u28 = undefined,
    }).init(0x40014420);
    /// counter
    pub const CNT = reg.RW(packed struct(u32) {
        /// counter value [0:15]
        CNT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40014424);
    /// prescaler
    pub const PSC = reg.RW(packed struct(u32) {
        /// Prescaler value [0:15]
        PSC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40014428);
    /// auto-reload register
    pub const ARR = reg.RW(packed struct(u32) {
        /// Auto-reload value [0:15]
        ARR: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4001442C);
    /// repetition counter register
    pub const RCR = reg.RW(packed struct(u32) {
        /// Repetition counter value [0:7]
        REP: u8 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x40014430);
    /// capture/compare register 1
    pub const CCR1 = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 value [0:15]
        CCR1: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40014434);
    /// break and dead-time register
    pub const BDTR = reg.RW(packed struct(u32) {
        /// Dead-time generator setup [0:7]
        DTG: u8 = 0x0,
        /// Lock configuration [8:9]
        LOCK: u2 = 0x0,
        /// Off-state selection for Idle mode [10:10]
        OSSI: u1 = 0x0,
        /// Off-state selection for Run mode [11:11]
        OSSR: u1 = 0x0,
        /// Break enable [12:12]
        BKE: u1 = 0x0,
        /// Break polarity [13:13]
        BKP: u1 = 0x0,
        /// Automatic output enable [14:14]
        AOE: u1 = 0x0,
        /// Main output enable [15:15]
        MOE: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40014444);
    /// DMA control register
    pub const DCR = reg.RW(packed struct(u32) {
        /// DMA base address [0:4]
        DBA: u5 = 0x0,
        /// Reserved [5:7]
        _0: u3 = undefined,
        /// DMA burst length [8:12]
        DBL: u5 = 0x0,
        /// Reserved [13:31]
        _1: u19 = undefined,
    }).init(0x40014448);
    /// DMA address for full transfer
    pub const DMAR = reg.RW(packed struct(u32) {
        /// DMA register for burst accesses [0:15]
        DMAB: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4001444C);
};

pub const TIM17 = struct {
    pub const IRQ = struct {};
    /// control register 1
    pub const CR1 = reg.RW(packed struct(u32) {
        /// Counter enable [0:0]
        CEN: u1 = 0x0,
        /// Update disable [1:1]
        UDIS: u1 = 0x0,
        /// Update request source [2:2]
        URS: u1 = 0x0,
        /// One-pulse mode [3:3]
        OPM: u1 = 0x0,
        /// Reserved [4:6]
        _0: u3 = undefined,
        /// Auto-reload preload enable [7:7]
        ARPE: u1 = 0x0,
        /// Clock division [8:9]
        CKD: u2 = 0x0,
        /// Reserved [10:31]
        _1: u22 = undefined,
    }).init(0x40014800);
    /// control register 2
    pub const CR2 = reg.RW(packed struct(u32) {
        /// Capture/compare preloaded control [0:0]
        CCPC: u1 = 0x0,
        /// Reserved [1:1]
        _0: u1 = undefined,
        /// Capture/compare control update selection [2:2]
        CCUS: u1 = 0x0,
        /// Capture/compare DMA selection [3:3]
        CCDS: u1 = 0x0,
        /// Reserved [4:7]
        _1: u4 = undefined,
        /// Output Idle state 1 [8:8]
        OIS1: u1 = 0x0,
        /// Output Idle state 1 [9:9]
        OIS1N: u1 = 0x0,
        /// Reserved [10:31]
        _2: u22 = undefined,
    }).init(0x40014804);
    /// DMA/Interrupt enable register
    pub const DIER = reg.RW(packed struct(u32) {
        /// Update interrupt enable [0:0]
        UIE: u1 = 0x0,
        /// Capture/Compare 1 interrupt enable [1:1]
        CC1IE: u1 = 0x0,
        /// Reserved [2:4]
        _0: u3 = undefined,
        /// COM interrupt enable [5:5]
        COMIE: u1 = 0x0,
        /// Trigger interrupt enable [6:6]
        TIE: u1 = 0x0,
        /// Break interrupt enable [7:7]
        BIE: u1 = 0x0,
        /// Update DMA request enable [8:8]
        UDE: u1 = 0x0,
        /// Capture/Compare 1 DMA request enable [9:9]
        CC1DE: u1 = 0x0,
        /// Reserved [10:13]
        _1: u4 = undefined,
        /// Trigger DMA request enable [14:14]
        TDE: u1 = 0x0,
        /// Reserved [15:31]
        _2: u17 = undefined,
    }).init(0x4001480C);
    /// status register
    pub const SR = reg.RW(packed struct(u32) {
        /// Update interrupt flag [0:0]
        UIF: u1 = 0x0,
        /// Capture/compare 1 interrupt flag [1:1]
        CC1IF: u1 = 0x0,
        /// Reserved [2:4]
        _0: u3 = undefined,
        /// COM interrupt flag [5:5]
        COMIF: u1 = 0x0,
        /// Trigger interrupt flag [6:6]
        TIF: u1 = 0x0,
        /// Break interrupt flag [7:7]
        BIF: u1 = 0x0,
        /// Reserved [8:8]
        _1: u1 = undefined,
        /// Capture/Compare 1 overcapture flag [9:9]
        CC1OF: u1 = 0x0,
        /// Reserved [10:31]
        _2: u22 = undefined,
    }).init(0x40014810);
    /// event generation register
    pub const EGR = reg.WO(packed struct(u32) {
        /// Update generation [0:0]
        UG: u1 = 0x0,
        /// Capture/compare 1 generation [1:1]
        CC1G: u1 = 0x0,
        /// Reserved [2:4]
        _0: u3 = undefined,
        /// Capture/Compare control update generation [5:5]
        COMG: u1 = 0x0,
        /// Trigger generation [6:6]
        TG: u1 = 0x0,
        /// Break generation [7:7]
        BG: u1 = 0x0,
        /// Reserved [8:31]
        _1: u24 = undefined,
    }).init(0x40014814);
    /// capture/compare mode register (output mode)
    pub const CCMR1_Output = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Output Compare 1 fast enable [2:2]
        OC1FE: u1 = 0x0,
        /// Output Compare 1 preload enable [3:3]
        OC1PE: u1 = 0x0,
        /// Output Compare 1 mode [4:6]
        OC1M: u3 = 0x0,
        /// Reserved [7:31]
        _0: u25 = undefined,
    }).init(0x40014818);
    /// capture/compare mode register 1 (input mode)
    pub const CCMR1_Input = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 selection [0:1]
        CC1S: u2 = 0x0,
        /// Input capture 1 prescaler [2:3]
        IC1PSC: u2 = 0x0,
        /// Input capture 1 filter [4:7]
        IC1F: u4 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x40014818);
    /// capture/compare enable register
    pub const CCER = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 output enable [0:0]
        CC1E: u1 = 0x0,
        /// Capture/Compare 1 output Polarity [1:1]
        CC1P: u1 = 0x0,
        /// Capture/Compare 1 complementary output enable [2:2]
        CC1NE: u1 = 0x0,
        /// Capture/Compare 1 output Polarity [3:3]
        CC1NP: u1 = 0x0,
        /// Reserved [4:31]
        _0: u28 = undefined,
    }).init(0x40014820);
    /// counter
    pub const CNT = reg.RW(packed struct(u32) {
        /// counter value [0:15]
        CNT: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40014824);
    /// prescaler
    pub const PSC = reg.RW(packed struct(u32) {
        /// Prescaler value [0:15]
        PSC: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40014828);
    /// auto-reload register
    pub const ARR = reg.RW(packed struct(u32) {
        /// Auto-reload value [0:15]
        ARR: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4001482C);
    /// repetition counter register
    pub const RCR = reg.RW(packed struct(u32) {
        /// Repetition counter value [0:7]
        REP: u8 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x40014830);
    /// capture/compare register 1
    pub const CCR1 = reg.RW(packed struct(u32) {
        /// Capture/Compare 1 value [0:15]
        CCR1: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40014834);
    /// break and dead-time register
    pub const BDTR = reg.RW(packed struct(u32) {
        /// Dead-time generator setup [0:7]
        DTG: u8 = 0x0,
        /// Lock configuration [8:9]
        LOCK: u2 = 0x0,
        /// Off-state selection for Idle mode [10:10]
        OSSI: u1 = 0x0,
        /// Off-state selection for Run mode [11:11]
        OSSR: u1 = 0x0,
        /// Break enable [12:12]
        BKE: u1 = 0x0,
        /// Break polarity [13:13]
        BKP: u1 = 0x0,
        /// Automatic output enable [14:14]
        AOE: u1 = 0x0,
        /// Main output enable [15:15]
        MOE: u1 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x40014844);
    /// DMA control register
    pub const DCR = reg.RW(packed struct(u32) {
        /// DMA base address [0:4]
        DBA: u5 = 0x0,
        /// Reserved [5:7]
        _0: u3 = undefined,
        /// DMA burst length [8:12]
        DBL: u5 = 0x0,
        /// Reserved [13:31]
        _1: u19 = undefined,
    }).init(0x40014848);
    /// DMA address for full transfer
    pub const DMAR = reg.RW(packed struct(u32) {
        /// DMA register for burst accesses [0:15]
        DMAB: u16 = 0x0,
        /// Reserved [16:31]
        _0: u16 = undefined,
    }).init(0x4001484C);
};

pub const CEC = struct {
    pub const IRQ = struct {
        /// CEC global interrupt
        pub const CEC = 42;
    };
    /// configuration register
    pub const CFGR = reg.RW(packed struct(u32) {
        /// Peripheral enable [0:0]
        PE: u1 = 0x0,
        /// Interrupt enable [1:1]
        IE: u1 = 0x0,
        /// Bit timing error mode [2:2]
        BTEM: u1 = 0x0,
        /// Bit period error mode [3:3]
        BPEM: u1 = 0x0,
        /// Reserved [4:31]
        _0: u28 = undefined,
    }).init(0x40007800);
    /// CEC own address register
    pub const OAR = reg.RW(packed struct(u32) {
        /// Own address [0:3]
        OA: u4 = 0x0,
        /// Reserved [4:31]
        _0: u28 = undefined,
    }).init(0x40007804);
    /// Rx Data Register
    pub const PRES = reg.RW(packed struct(u32) {
        /// CEC Rx Data Register [0:13]
        PRESC: u14 = 0x0,
        /// Reserved [14:31]
        _0: u18 = undefined,
    }).init(0x40007808);
    /// CEC error status register
    pub const ESR = reg.RO(packed struct(u32) {
        /// Bit timing error [0:0]
        BTE: u1 = 0x0,
        /// Bit period error [1:1]
        BPE: u1 = 0x0,
        /// Rx block transfer finished error [2:2]
        RBTFE: u1 = 0x0,
        /// Start bit error [3:3]
        SBE: u1 = 0x0,
        /// Block acknowledge error [4:4]
        ACKE: u1 = 0x0,
        /// Line error [5:5]
        LINE: u1 = 0x0,
        /// Tx block transfer finished error [6:6]
        TBTFE: u1 = 0x0,
        /// Reserved [7:31]
        _0: u25 = undefined,
    }).init(0x4000780C);
    /// CEC control and status register
    pub const CSR = reg.RW(packed struct(u32) {
        /// Tx start of message [0:0]
        TSOM: u1 = 0x0,
        /// Tx end of message [1:1]
        TEOM: u1 = 0x0,
        /// Tx error [2:2]
        TERR: u1 = 0x0,
        /// Tx byte transfer request or block transfer finished [3:3]
        TBTRF: u1 = 0x0,
        /// Rx start of message [4:4]
        RSOM: u1 = 0x0,
        /// Rx end of message [5:5]
        REOM: u1 = 0x0,
        /// Rx error [6:6]
        RERR: u1 = 0x0,
        /// Rx byte/block transfer finished [7:7]
        RBTF: u1 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x40007810);
    /// CEC Tx data register
    pub const TXD = reg.RW(packed struct(u32) {
        /// Tx Data register [0:7]
        TXD: u8 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x40007814);
    /// CEC Rx data register
    pub const RXD = reg.RO(packed struct(u32) {
        /// Rx data [0:7]
        RXD: u8 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0x40007818);
};

pub const NVIC = struct {
    pub const IRQ = struct {};
    /// Interrupt Set-Enable Register
    pub const ISER0 = reg.RW(packed struct(u32) {
        /// SETENA [0:31]
        SETENA: u32 = 0x0,
    }).init(0xE000E100);
    /// Interrupt Set-Enable Register
    pub const ISER1 = reg.RW(packed struct(u32) {
        /// SETENA [0:31]
        SETENA: u32 = 0x0,
    }).init(0xE000E104);
    /// Interrupt Clear-Enable Register
    pub const ICER0 = reg.RW(packed struct(u32) {
        /// CLRENA [0:31]
        CLRENA: u32 = 0x0,
    }).init(0xE000E180);
    /// Interrupt Clear-Enable Register
    pub const ICER1 = reg.RW(packed struct(u32) {
        /// CLRENA [0:31]
        CLRENA: u32 = 0x0,
    }).init(0xE000E184);
    /// Interrupt Set-Pending Register
    pub const ISPR0 = reg.RW(packed struct(u32) {
        /// SETPEND [0:31]
        SETPEND: u32 = 0x0,
    }).init(0xE000E200);
    /// Interrupt Set-Pending Register
    pub const ISPR1 = reg.RW(packed struct(u32) {
        /// SETPEND [0:31]
        SETPEND: u32 = 0x0,
    }).init(0xE000E204);
    /// Interrupt Clear-Pending Register
    pub const ICPR0 = reg.RW(packed struct(u32) {
        /// CLRPEND [0:31]
        CLRPEND: u32 = 0x0,
    }).init(0xE000E280);
    /// Interrupt Clear-Pending Register
    pub const ICPR1 = reg.RW(packed struct(u32) {
        /// CLRPEND [0:31]
        CLRPEND: u32 = 0x0,
    }).init(0xE000E284);
    /// Interrupt Active Bit Register
    pub const IABR0 = reg.RO(packed struct(u32) {
        /// ACTIVE [0:31]
        ACTIVE: u32 = 0x0,
    }).init(0xE000E300);
    /// Interrupt Active Bit Register
    pub const IABR1 = reg.RO(packed struct(u32) {
        /// ACTIVE [0:31]
        ACTIVE: u32 = 0x0,
    }).init(0xE000E304);
    /// Interrupt Priority Register
    pub const IPR0 = reg.RW(packed struct(u32) {
        /// IPR_N0 [0:7]
        IPR_N0: u8 = 0x0,
        /// IPR_N1 [8:15]
        IPR_N1: u8 = 0x0,
        /// IPR_N2 [16:23]
        IPR_N2: u8 = 0x0,
        /// IPR_N3 [24:31]
        IPR_N3: u8 = 0x0,
    }).init(0xE000E400);
    /// Interrupt Priority Register
    pub const IPR1 = reg.RW(packed struct(u32) {
        /// IPR_N0 [0:7]
        IPR_N0: u8 = 0x0,
        /// IPR_N1 [8:15]
        IPR_N1: u8 = 0x0,
        /// IPR_N2 [16:23]
        IPR_N2: u8 = 0x0,
        /// IPR_N3 [24:31]
        IPR_N3: u8 = 0x0,
    }).init(0xE000E404);
    /// Interrupt Priority Register
    pub const IPR2 = reg.RW(packed struct(u32) {
        /// IPR_N0 [0:7]
        IPR_N0: u8 = 0x0,
        /// IPR_N1 [8:15]
        IPR_N1: u8 = 0x0,
        /// IPR_N2 [16:23]
        IPR_N2: u8 = 0x0,
        /// IPR_N3 [24:31]
        IPR_N3: u8 = 0x0,
    }).init(0xE000E408);
    /// Interrupt Priority Register
    pub const IPR3 = reg.RW(packed struct(u32) {
        /// IPR_N0 [0:7]
        IPR_N0: u8 = 0x0,
        /// IPR_N1 [8:15]
        IPR_N1: u8 = 0x0,
        /// IPR_N2 [16:23]
        IPR_N2: u8 = 0x0,
        /// IPR_N3 [24:31]
        IPR_N3: u8 = 0x0,
    }).init(0xE000E40C);
    /// Interrupt Priority Register
    pub const IPR4 = reg.RW(packed struct(u32) {
        /// IPR_N0 [0:7]
        IPR_N0: u8 = 0x0,
        /// IPR_N1 [8:15]
        IPR_N1: u8 = 0x0,
        /// IPR_N2 [16:23]
        IPR_N2: u8 = 0x0,
        /// IPR_N3 [24:31]
        IPR_N3: u8 = 0x0,
    }).init(0xE000E410);
    /// Interrupt Priority Register
    pub const IPR5 = reg.RW(packed struct(u32) {
        /// IPR_N0 [0:7]
        IPR_N0: u8 = 0x0,
        /// IPR_N1 [8:15]
        IPR_N1: u8 = 0x0,
        /// IPR_N2 [16:23]
        IPR_N2: u8 = 0x0,
        /// IPR_N3 [24:31]
        IPR_N3: u8 = 0x0,
    }).init(0xE000E414);
    /// Interrupt Priority Register
    pub const IPR6 = reg.RW(packed struct(u32) {
        /// IPR_N0 [0:7]
        IPR_N0: u8 = 0x0,
        /// IPR_N1 [8:15]
        IPR_N1: u8 = 0x0,
        /// IPR_N2 [16:23]
        IPR_N2: u8 = 0x0,
        /// IPR_N3 [24:31]
        IPR_N3: u8 = 0x0,
    }).init(0xE000E418);
    /// Interrupt Priority Register
    pub const IPR7 = reg.RW(packed struct(u32) {
        /// IPR_N0 [0:7]
        IPR_N0: u8 = 0x0,
        /// IPR_N1 [8:15]
        IPR_N1: u8 = 0x0,
        /// IPR_N2 [16:23]
        IPR_N2: u8 = 0x0,
        /// IPR_N3 [24:31]
        IPR_N3: u8 = 0x0,
    }).init(0xE000E41C);
    /// Interrupt Priority Register
    pub const IPR8 = reg.RW(packed struct(u32) {
        /// IPR_N0 [0:7]
        IPR_N0: u8 = 0x0,
        /// IPR_N1 [8:15]
        IPR_N1: u8 = 0x0,
        /// IPR_N2 [16:23]
        IPR_N2: u8 = 0x0,
        /// IPR_N3 [24:31]
        IPR_N3: u8 = 0x0,
    }).init(0xE000E420);
    /// Interrupt Priority Register
    pub const IPR9 = reg.RW(packed struct(u32) {
        /// IPR_N0 [0:7]
        IPR_N0: u8 = 0x0,
        /// IPR_N1 [8:15]
        IPR_N1: u8 = 0x0,
        /// IPR_N2 [16:23]
        IPR_N2: u8 = 0x0,
        /// IPR_N3 [24:31]
        IPR_N3: u8 = 0x0,
    }).init(0xE000E424);
    /// Interrupt Priority Register
    pub const IPR10 = reg.RW(packed struct(u32) {
        /// IPR_N0 [0:7]
        IPR_N0: u8 = 0x0,
        /// IPR_N1 [8:15]
        IPR_N1: u8 = 0x0,
        /// IPR_N2 [16:23]
        IPR_N2: u8 = 0x0,
        /// IPR_N3 [24:31]
        IPR_N3: u8 = 0x0,
    }).init(0xE000E428);
    /// Interrupt Priority Register
    pub const IPR11 = reg.RW(packed struct(u32) {
        /// IPR_N0 [0:7]
        IPR_N0: u8 = 0x0,
        /// IPR_N1 [8:15]
        IPR_N1: u8 = 0x0,
        /// IPR_N2 [16:23]
        IPR_N2: u8 = 0x0,
        /// IPR_N3 [24:31]
        IPR_N3: u8 = 0x0,
    }).init(0xE000E42C);
    /// Interrupt Priority Register
    pub const IPR12 = reg.RW(packed struct(u32) {
        /// IPR_N0 [0:7]
        IPR_N0: u8 = 0x0,
        /// IPR_N1 [8:15]
        IPR_N1: u8 = 0x0,
        /// IPR_N2 [16:23]
        IPR_N2: u8 = 0x0,
        /// IPR_N3 [24:31]
        IPR_N3: u8 = 0x0,
    }).init(0xE000E430);
    /// Interrupt Priority Register
    pub const IPR13 = reg.RW(packed struct(u32) {
        /// IPR_N0 [0:7]
        IPR_N0: u8 = 0x0,
        /// IPR_N1 [8:15]
        IPR_N1: u8 = 0x0,
        /// IPR_N2 [16:23]
        IPR_N2: u8 = 0x0,
        /// IPR_N3 [24:31]
        IPR_N3: u8 = 0x0,
    }).init(0xE000E434);
    /// Interrupt Priority Register
    pub const IPR14 = reg.RW(packed struct(u32) {
        /// IPR_N0 [0:7]
        IPR_N0: u8 = 0x0,
        /// IPR_N1 [8:15]
        IPR_N1: u8 = 0x0,
        /// IPR_N2 [16:23]
        IPR_N2: u8 = 0x0,
        /// IPR_N3 [24:31]
        IPR_N3: u8 = 0x0,
    }).init(0xE000E438);
};

pub const MPU = struct {
    pub const IRQ = struct {};
    /// MPU type register
    pub const MPU_TYPER = reg.RO(packed struct(u32) {
        /// Separate flag [0:0]
        SEPARATE: u1 = 0x0,
        /// Reserved [1:7]
        _0: u7 = undefined,
        /// Number of MPU data regions [8:15]
        DREGION: u8 = 0x8,
        /// Number of MPU instruction regions [16:23]
        IREGION: u8 = 0x0,
        /// Reserved [24:31]
        _1: u8 = undefined,
    }).init(0xE000ED90);
    /// MPU control register
    pub const MPU_CTRL = reg.RO(packed struct(u32) {
        /// Enables the MPU [0:0]
        ENABLE: u1 = 0x0,
        /// Enables the operation of MPU during hard fault [1:1]
        HFNMIENA: u1 = 0x0,
        /// Enable priviliged software access to default memory map [2:2]
        PRIVDEFENA: u1 = 0x0,
        /// Reserved [3:31]
        _0: u29 = undefined,
    }).init(0xE000ED94);
    /// MPU region number register
    pub const MPU_RNR = reg.RW(packed struct(u32) {
        /// MPU region [0:7]
        REGION: u8 = 0x0,
        /// Reserved [8:31]
        _0: u24 = undefined,
    }).init(0xE000ED98);
    /// MPU region base address register
    pub const MPU_RBAR = reg.RW(packed struct(u32) {
        /// MPU region field [0:3]
        REGION: u4 = 0x0,
        /// MPU region number valid [4:4]
        VALID: u1 = 0x0,
        /// Region base address field [5:31]
        ADDR: u27 = 0x0,
    }).init(0xE000ED9C);
    /// MPU region attribute and size register
    pub const MPU_RASR = reg.RW(packed struct(u32) {
        /// Region enable bit. [0:0]
        ENABLE: u1 = 0x0,
        /// Size of the MPU protection region [1:5]
        SIZE: u5 = 0x0,
        /// Reserved [6:7]
        _0: u2 = undefined,
        /// Subregion disable bits [8:15]
        SRD: u8 = 0x0,
        /// memory attribute [16:16]
        B: u1 = 0x0,
        /// memory attribute [17:17]
        C: u1 = 0x0,
        /// Shareable memory attribute [18:18]
        S: u1 = 0x0,
        /// memory attribute [19:21]
        TEX: u3 = 0x0,
        /// Reserved [22:23]
        _1: u2 = undefined,
        /// Access permission [24:26]
        AP: u3 = 0x0,
        /// Reserved [27:27]
        _2: u1 = undefined,
        /// Instruction access disable bit [28:28]
        XN: u1 = 0x0,
        /// Reserved [29:31]
        _3: u3 = undefined,
    }).init(0xE000EDA0);
};

pub const SCB_ACTRL = struct {
    pub const IRQ = struct {};
    /// Auxiliary control register
    pub const ACTRL = reg.RW(packed struct(u32) {
        /// Reserved [0:1]
        _0: u2 = undefined,
        /// DISFOLD [2:2]
        DISFOLD: u1 = 0x0,
        /// Reserved [3:9]
        _1: u7 = undefined,
        /// FPEXCODIS [10:10]
        FPEXCODIS: u1 = 0x0,
        /// DISRAMODE [11:11]
        DISRAMODE: u1 = 0x0,
        /// DISITMATBFLUSH [12:12]
        DISITMATBFLUSH: u1 = 0x0,
        /// Reserved [13:31]
        _2: u19 = undefined,
    }).init(0xE000E008);
};

pub const NVIC_STIR = struct {
    pub const IRQ = struct {};
    /// Software trigger interrupt register
    pub const STIR = reg.RW(packed struct(u32) {
        /// Software generated interrupt ID [0:8]
        INTID: u9 = 0x0,
        /// Reserved [9:31]
        _0: u23 = undefined,
    }).init(0xE000EF00);
};

pub const SCB = struct {
    pub const IRQ = struct {};
    /// CPUID base register
    pub const CPUID = reg.RO(packed struct(u32) {
        /// Revision number [0:3]
        Revision: u4 = 0x1,
        /// Part number of the processor [4:15]
        PartNo: u12 = 0xC24,
        /// Reads as 0xF [16:19]
        Constant: u4 = 0xF,
        /// Variant number [20:23]
        Variant: u4 = 0x0,
        /// Implementer code [24:31]
        Implementer: u8 = 0x41,
    }).init(0xE000ED00);
    /// Interrupt control and state register
    pub const ICSR = reg.RW(packed struct(u32) {
        /// Active vector [0:8]
        VECTACTIVE: u9 = 0x0,
        /// Reserved [9:10]
        _0: u2 = undefined,
        /// Return to base level [11:11]
        RETTOBASE: u1 = 0x0,
        /// Pending vector [12:18]
        VECTPENDING: u7 = 0x0,
        /// Reserved [19:21]
        _1: u3 = undefined,
        /// Interrupt pending flag [22:22]
        ISRPENDING: u1 = 0x0,
        /// Reserved [23:24]
        _2: u2 = undefined,
        /// SysTick exception clear-pending bit [25:25]
        PENDSTCLR: u1 = 0x0,
        /// SysTick exception set-pending bit [26:26]
        PENDSTSET: u1 = 0x0,
        /// PendSV clear-pending bit [27:27]
        PENDSVCLR: u1 = 0x0,
        /// PendSV set-pending bit [28:28]
        PENDSVSET: u1 = 0x0,
        /// Reserved [29:30]
        _3: u2 = undefined,
        /// NMI set-pending bit. [31:31]
        NMIPENDSET: u1 = 0x0,
    }).init(0xE000ED04);
    /// Vector table offset register
    pub const VTOR = reg.RW(packed struct(u32) {
        /// Reserved [0:8]
        _0: u9 = undefined,
        /// Vector table base offset field [9:29]
        TBLOFF: u21 = 0x0,
        /// Reserved [30:31]
        _1: u2 = undefined,
    }).init(0xE000ED08);
    /// Application interrupt and reset control register
    pub const AIRCR = reg.RW(packed struct(u32) {
        /// VECTRESET [0:0]
        VECTRESET: u1 = 0x0,
        /// VECTCLRACTIVE [1:1]
        VECTCLRACTIVE: u1 = 0x0,
        /// SYSRESETREQ [2:2]
        SYSRESETREQ: u1 = 0x0,
        /// Reserved [3:7]
        _0: u5 = undefined,
        /// PRIGROUP [8:10]
        PRIGROUP: u3 = 0x0,
        /// Reserved [11:14]
        _1: u4 = undefined,
        /// ENDIANESS [15:15]
        ENDIANESS: u1 = 0x0,
        /// Register key [16:31]
        VECTKEYSTAT: u16 = 0x0,
    }).init(0xE000ED0C);
    /// System control register
    pub const SCR = reg.RW(packed struct(u32) {
        /// Reserved [0:0]
        _0: u1 = undefined,
        /// SLEEPONEXIT [1:1]
        SLEEPONEXIT: u1 = 0x0,
        /// SLEEPDEEP [2:2]
        SLEEPDEEP: u1 = 0x0,
        /// Reserved [3:3]
        _1: u1 = undefined,
        /// Send Event on Pending bit [4:4]
        SEVEONPEND: u1 = 0x0,
        /// Reserved [5:31]
        _2: u27 = undefined,
    }).init(0xE000ED10);
    /// Configuration and control register
    pub const CCR = reg.RW(packed struct(u32) {
        /// Configures how the processor enters Thread mode [0:0]
        NONBASETHRDENA: u1 = 0x0,
        /// USERSETMPEND [1:1]
        USERSETMPEND: u1 = 0x0,
        /// Reserved [2:2]
        _0: u1 = undefined,
        /// UNALIGN_ TRP [3:3]
        UNALIGN__TRP: u1 = 0x0,
        /// DIV_0_TRP [4:4]
        DIV_0_TRP: u1 = 0x0,
        /// Reserved [5:7]
        _1: u3 = undefined,
        /// BFHFNMIGN [8:8]
        BFHFNMIGN: u1 = 0x0,
        /// STKALIGN [9:9]
        STKALIGN: u1 = 0x0,
        /// Reserved [10:31]
        _2: u22 = undefined,
    }).init(0xE000ED14);
    /// System handler priority registers
    pub const SHPR1 = reg.RW(packed struct(u32) {
        /// Priority of system handler 4 [0:7]
        PRI_4: u8 = 0x0,
        /// Priority of system handler 5 [8:15]
        PRI_5: u8 = 0x0,
        /// Priority of system handler 6 [16:23]
        PRI_6: u8 = 0x0,
        /// Reserved [24:31]
        _0: u8 = undefined,
    }).init(0xE000ED18);
    /// System handler priority registers
    pub const SHPR2 = reg.RW(packed struct(u32) {
        /// Reserved [0:23]
        _0: u24 = undefined,
        /// Priority of system handler 11 [24:31]
        PRI_11: u8 = 0x0,
    }).init(0xE000ED1C);
    /// System handler priority registers
    pub const SHPR3 = reg.RW(packed struct(u32) {
        /// Reserved [0:15]
        _0: u16 = undefined,
        /// Priority of system handler 14 [16:23]
        PRI_14: u8 = 0x0,
        /// Priority of system handler 15 [24:31]
        PRI_15: u8 = 0x0,
    }).init(0xE000ED20);
    /// System handler control and state register
    pub const SHCRS = reg.RW(packed struct(u32) {
        /// Memory management fault exception active bit [0:0]
        MEMFAULTACT: u1 = 0x0,
        /// Bus fault exception active bit [1:1]
        BUSFAULTACT: u1 = 0x0,
        /// Reserved [2:2]
        _0: u1 = undefined,
        /// Usage fault exception active bit [3:3]
        USGFAULTACT: u1 = 0x0,
        /// Reserved [4:6]
        _1: u3 = undefined,
        /// SVC call active bit [7:7]
        SVCALLACT: u1 = 0x0,
        /// Debug monitor active bit [8:8]
        MONITORACT: u1 = 0x0,
        /// Reserved [9:9]
        _2: u1 = undefined,
        /// PendSV exception active bit [10:10]
        PENDSVACT: u1 = 0x0,
        /// SysTick exception active bit [11:11]
        SYSTICKACT: u1 = 0x0,
        /// Usage fault exception pending bit [12:12]
        USGFAULTPENDED: u1 = 0x0,
        /// Memory management fault exception pending bit [13:13]
        MEMFAULTPENDED: u1 = 0x0,
        /// Bus fault exception pending bit [14:14]
        BUSFAULTPENDED: u1 = 0x0,
        /// SVC call pending bit [15:15]
        SVCALLPENDED: u1 = 0x0,
        /// Memory management fault enable bit [16:16]
        MEMFAULTENA: u1 = 0x0,
        /// Bus fault enable bit [17:17]
        BUSFAULTENA: u1 = 0x0,
        /// Usage fault enable bit [18:18]
        USGFAULTENA: u1 = 0x0,
        /// Reserved [19:31]
        _3: u13 = undefined,
    }).init(0xE000ED24);
    /// Configurable fault status register
    pub const CFSR_UFSR_BFSR_MMFSR = reg.RW(packed struct(u32) {
        /// IACCVIOL [0:0]
        IACCVIOL: u1 = 0x0,
        /// DACCVIOL [1:1]
        DACCVIOL: u1 = 0x0,
        /// Reserved [2:2]
        _0: u1 = undefined,
        /// MUNSTKERR [3:3]
        MUNSTKERR: u1 = 0x0,
        /// MSTKERR [4:4]
        MSTKERR: u1 = 0x0,
        /// MLSPERR [5:5]
        MLSPERR: u1 = 0x0,
        /// Reserved [6:6]
        _1: u1 = undefined,
        /// MMARVALID [7:7]
        MMARVALID: u1 = 0x0,
        /// Instruction bus error [8:8]
        IBUSERR: u1 = 0x0,
        /// Precise data bus error [9:9]
        PRECISERR: u1 = 0x0,
        /// Imprecise data bus error [10:10]
        IMPRECISERR: u1 = 0x0,
        /// Bus fault on unstacking for a return from exception [11:11]
        UNSTKERR: u1 = 0x0,
        /// Bus fault on stacking for exception entry [12:12]
        STKERR: u1 = 0x0,
        /// Bus fault on floating-point lazy state preservation [13:13]
        LSPERR: u1 = 0x0,
        /// Reserved [14:14]
        _2: u1 = undefined,
        /// Bus Fault Address Register (BFAR) valid flag [15:15]
        BFARVALID: u1 = 0x0,
        /// Undefined instruction usage fault [16:16]
        UNDEFINSTR: u1 = 0x0,
        /// Invalid state usage fault [17:17]
        INVSTATE: u1 = 0x0,
        /// Invalid PC load usage fault [18:18]
        INVPC: u1 = 0x0,
        /// No coprocessor usage fault. [19:19]
        NOCP: u1 = 0x0,
        /// Reserved [20:23]
        _3: u4 = undefined,
        /// Unaligned access usage fault [24:24]
        UNALIGNED: u1 = 0x0,
        /// Divide by zero usage fault [25:25]
        DIVBYZERO: u1 = 0x0,
        /// Reserved [26:31]
        _4: u6 = undefined,
    }).init(0xE000ED28);
    /// Hard fault status register
    pub const HFSR = reg.RW(packed struct(u32) {
        /// Reserved [0:0]
        _0: u1 = undefined,
        /// Vector table hard fault [1:1]
        VECTTBL: u1 = 0x0,
        /// Reserved [2:29]
        _1: u28 = undefined,
        /// Forced hard fault [30:30]
        FORCED: u1 = 0x0,
        /// Reserved for Debug use [31:31]
        DEBUG_VT: u1 = 0x0,
    }).init(0xE000ED2C);
    /// Memory management fault address register
    pub const MMFAR = reg.RW(packed struct(u32) {
        /// Memory management fault address [0:31]
        MMFAR: u32 = 0x0,
    }).init(0xE000ED34);
    /// Bus fault address register
    pub const BFAR = reg.RW(packed struct(u32) {
        /// Bus fault address [0:31]
        BFAR: u32 = 0x0,
    }).init(0xE000ED38);
};

pub const STK = struct {
    pub const IRQ = struct {};
    /// SysTick control and status register
    pub const CTRL = reg.RW(packed struct(u32) {
        /// Counter enable [0:0]
        ENABLE: u1 = 0x0,
        /// SysTick exception request enable [1:1]
        TICKINT: u1 = 0x0,
        /// Clock source selection [2:2]
        CLKSOURCE: u1 = 0x0,
        /// Reserved [3:15]
        _0: u13 = undefined,
        /// COUNTFLAG [16:16]
        COUNTFLAG: u1 = 0x0,
        /// Reserved [17:31]
        _1: u15 = undefined,
    }).init(0xE000E010);
    /// SysTick reload value register
    pub const LOAD_ = reg.RW(packed struct(u32) {
        /// RELOAD value [0:23]
        RELOAD: u24 = 0x0,
        /// Reserved [24:31]
        _0: u8 = undefined,
    }).init(0xE000E014);
    /// SysTick current value register
    pub const VAL = reg.RW(packed struct(u32) {
        /// Current counter value [0:23]
        CURRENT: u24 = 0x0,
        /// Reserved [24:31]
        _0: u8 = undefined,
    }).init(0xE000E018);
    /// SysTick calibration value register
    pub const CALIB = reg.RW(packed struct(u32) {
        /// Calibration value [0:23]
        TENMS: u24 = 0x0,
        /// Reserved [24:31]
        _0: u8 = undefined,
    }).init(0xE000E01C);
};
