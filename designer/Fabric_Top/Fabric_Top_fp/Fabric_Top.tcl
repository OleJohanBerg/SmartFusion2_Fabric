open_project -project {C:\Creative-Eval-Board-master\SmartFusion2_Fabric\designer\Fabric_Top\Fabric_Top_fp\Fabric_Top.pro}
enable_device -name {M2S025} -enable 1
set_programming_file -name {M2S025} -file {C:\Creative-Eval-Board-master\SmartFusion2_Fabric\designer\Fabric_Top\Fabric_Top.ppd}
set_programming_action -action {PROGRAM} -name {M2S025} 
run_selected_actions
set_programming_file -name {M2S025} -no_file
save_project
close_project
