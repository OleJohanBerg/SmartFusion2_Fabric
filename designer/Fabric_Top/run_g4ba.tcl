set_device \
    -family  SmartFusion2 \
    -die     PA4M2500_N \
    -package vf256 \
    -speed   STD \
    -tempr   {COM} \
    -voltr   {COM}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_name Fabric_Top
set_workdir {C:\Creative-Eval-Board-master\SmartFusion2_Fabric\designer\Fabric_Top}
set_filename    {C:\Creative-Eval-Board-master\SmartFusion2_Fabric\designer\Fabric_Top\Fabric_Top_ba}
set_design_state post_layout
set_language VHDL
