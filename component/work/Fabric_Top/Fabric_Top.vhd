----------------------------------------------------------------------
-- Created by SmartDesign Fri Aug  2 16:15:29 2019
-- Version: v12.1 12.600.0.14
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library smartfusion2;
use smartfusion2.all;
----------------------------------------------------------------------
-- Fabric_Top entity declaration
----------------------------------------------------------------------
entity Fabric_Top is
    -- Port list
    port(
        -- Inputs
        DEVRST_N : in  std_logic;
        PB_SW    : in  std_logic;
        -- Outputs
        LED      : out std_logic_vector(3 downto 0)
        );
end Fabric_Top;
----------------------------------------------------------------------
-- Fabric_Top architecture body
----------------------------------------------------------------------
architecture RTL of Fabric_Top is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- AND2
component AND2
    -- Port list
    port(
        -- Inputs
        A : in  std_logic;
        B : in  std_logic;
        -- Outputs
        Y : out std_logic
        );
end component;
-- FCCC_C0
component FCCC_C0
    -- Port list
    port(
        -- Inputs
        RCOSC_25_50MHZ : in  std_logic;
        -- Outputs
        GL0            : out std_logic;
        LOCK           : out std_logic
        );
end component;
-- LED_ctrl
component LED_ctrl
    -- Port list
    port(
        -- Inputs
        CLK    : in  std_logic;
        PB_SW  : in  std_logic;
        RESETn : in  std_logic;
        -- Outputs
        LED    : out std_logic_vector(3 downto 0)
        );
end component;
-- OSC_C0
component OSC_C0
    -- Port list
    port(
        -- Outputs
        RCOSC_25_50MHZ_CCC : out std_logic
        );
end component;
-- SYSRESET
component SYSRESET
    -- Port list
    port(
        -- Inputs
        DEVRST_N         : in  std_logic;
        -- Outputs
        POWER_ON_RESET_N : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal AND2_0_Y                                        : std_logic;
signal FCCC_0_GL0                                      : std_logic;
signal FCCC_0_LOCK                                     : std_logic;
signal LED_0                                           : std_logic_vector(3 downto 0);
signal OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : std_logic;
signal SYSRESET_0_POWER_ON_RESET_N                     : std_logic;
signal LED_0_net_0                                     : std_logic_vector(3 downto 0);

begin
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 LED_0_net_0     <= LED_0;
 LED(3 downto 0) <= LED_0_net_0;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- AND2_0
AND2_0 : AND2
    port map( 
        -- Inputs
        A => FCCC_0_LOCK,
        B => SYSRESET_0_POWER_ON_RESET_N,
        -- Outputs
        Y => AND2_0_Y 
        );
-- FCCC_0
FCCC_0 : FCCC_C0
    port map( 
        -- Inputs
        RCOSC_25_50MHZ => OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC,
        -- Outputs
        GL0            => FCCC_0_GL0,
        LOCK           => FCCC_0_LOCK 
        );
-- LED_ctrl_0
LED_ctrl_0 : LED_ctrl
    port map( 
        -- Inputs
        CLK    => FCCC_0_GL0,
        RESETn => AND2_0_Y,
        PB_SW  => PB_SW,
        -- Outputs
        LED    => LED_0 
        );
-- OSC_0
OSC_0 : OSC_C0
    port map( 
        -- Outputs
        RCOSC_25_50MHZ_CCC => OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC 
        );
-- SYSRESET_0
SYSRESET_0 : SYSRESET
    port map( 
        -- Inputs
        DEVRST_N         => DEVRST_N,
        -- Outputs
        POWER_ON_RESET_N => SYSRESET_0_POWER_ON_RESET_N 
        );

end RTL;
