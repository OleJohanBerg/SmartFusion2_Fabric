set_family {SmartFusion2}
read_vhdl -mode vhdl_2008 {C:\Creative-Eval-Board-master\SmartFusion2_Fabric\component\work\FCCC_C0\FCCC_C0_0\FCCC_C0_FCCC_C0_0_FCCC.vhd}
read_vhdl -mode vhdl_2008 {C:\Creative-Eval-Board-master\SmartFusion2_Fabric\component\work\FCCC_C0\FCCC_C0.vhd}
read_vhdl -mode vhdl_2008 {C:\Creative-Eval-Board-master\SmartFusion2_Fabric\hdl\LED_ctrl.vhd}
read_vhdl -mode vhdl_2008 {C:\Creative-Eval-Board-master\SmartFusion2_Fabric\component\work\OSC_C0\OSC_C0_0\OSC_C0_OSC_C0_0_OSC.vhd}
read_vhdl -mode vhdl_2008 {C:\Creative-Eval-Board-master\SmartFusion2_Fabric\component\work\OSC_C0\OSC_C0.vhd}
read_vhdl -mode vhdl_2008 {C:\Creative-Eval-Board-master\SmartFusion2_Fabric\component\work\Fabric_Top\Fabric_Top.vhd}
set_top_level {Fabric_Top}
map_netlist
check_constraints {C:\Creative-Eval-Board-master\SmartFusion2_Fabric\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Creative-Eval-Board-master\SmartFusion2_Fabric\designer\Fabric_Top\synthesis.fdc}
