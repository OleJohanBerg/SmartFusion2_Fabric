new_project \
         -name {Fabric_Top} \
         -location {C:\Creative-Eval-Board-master\SmartFusion2_Fabric\designer\Fabric_Top\Fabric_Top_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2S025} \
         -name {M2S025}
enable_device \
         -name {M2S025} \
         -enable {TRUE}
save_project
close_project
