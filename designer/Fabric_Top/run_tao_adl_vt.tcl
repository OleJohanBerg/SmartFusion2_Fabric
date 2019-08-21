set_family {SmartFusion2}
read_adl {C:\Creative-Eval-Board-master\SmartFusion2_Fabric\designer\Fabric_Top\Fabric_Top.adl}
read_afl {C:\Creative-Eval-Board-master\SmartFusion2_Fabric\designer\Fabric_Top\Fabric_Top.afl}
map_netlist
check_constraints {C:\Creative-Eval-Board-master\SmartFusion2_Fabric\constraint\timing_sdc_errors.log}
write_sdc -strict -afl {C:\Creative-Eval-Board-master\SmartFusion2_Fabric\designer\Fabric_Top\timing_analysis.sdc}
