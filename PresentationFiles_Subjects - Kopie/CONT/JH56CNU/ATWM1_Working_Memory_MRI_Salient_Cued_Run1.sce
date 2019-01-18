# ATWM1 MRI Experiment
                         
scenario = "ATWM1_Working_Memory_MRI_salient_cued_run1";
scenario_type = fMRI; # Fuer Scanner
#scenario_type = fMRI_emulation; # Zum Testen
#scenario_type = trials;
scan_period = 2000; # TR
pulses_per_scan = 1;
pulse_code = 1;
#pulse_width=6;

default_monitor_sounds = false;

active_buttons = 2;
response_matching = simple_matching;
button_codes = 10, 20;
default_font_size = 28;     
default_font  = "Arial"; 
default_background_color = 0 ,0 ,0 ;
#write_codes=true; # for MEG only

begin;	

#Picture definitions   
box { height = 300; width = 300; color = 0, 0, 0;} frame1;
box { height = 290; width = 290; color = 255, 255, 255;} frame2;    
box { height = 30; width = 4; color = 0, 0, 0;} fix1;    
box { height = 4; width = 30; color = 0, 0, 0;} fix2;
box { height = 30; width = 4; color = 255, 0, 0;} fix3;    
box { height = 4; width = 30; color = 255, 0, 0;} fix4;  
box { height = 290; width = 290; color = 128, 128, 128;} background;

TEMPLATE "StimuliDeclaration.tem" {};

trial {
    sound sound_incorrect;
    time = 0;    
    duration = 1;  
} wrong;

trial {
    sound sound_correct;
    time = 0;
    duration = 1;  
} right;

trial {
    sound sound_no_response;
    time = 0;
    duration = 1;
} miss;



# baselinePre (at the beginning of the session)
trial { 
   picture {
      box frame1; x=0; y=0;
      box frame2; x=0; y=0;
		box background; x=0; y=0;
      bitmap fixation_cross_black; x=0; y=0;
   }default;	
   time = 0;  	
   duration = 9400;
   mri_pulse = 1;
   code = "BaselinePre"; 	 
   #port_code = 1;  
};
       
               
TEMPLATE "ATWM1_Working_Memory_MRI.tem" {
trigger_volume_encoding trigger_volume_retrieval cue_time preparation_time encoding_time single_stimulus_presentation_time delay_time retrieval_time intertrial_interval alerting_cross   stim_enc1 stim_enc2 stim_enc3 stim_enc4 	stim_enc_alt1 stim_enc_alt2 stim_enc_alt3 stim_enc_alt4    trial_code   stim_retr1 stim_retr2 stim_retr3 stim_retr4   stim_cue1 stim_cue2 stim_cue3 stim_cue4 fixationcross_cued     retr_code    the_target_button   posX1 posY1 posX2 posY2 posX3 posY3 posX4 posY4;
    6    11   292   292   399   125  9543  2992 12342      fixation_cross    gabor_150 gabor_120 gabor_097 gabor_030    gabor_150_alt gabor_120 gabor_097 gabor_030_alt      "1_1_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_150_120_097_030_target_position_1_4_retrieval_position_1"         gabor_150_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_1_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_150_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   19    25   292   292   399   125 11543  2992 12342      fixation_cross    gabor_017 gabor_126 gabor_061 gabor_172    gabor_017 gabor_126 gabor_061_alt gabor_172_alt      "1_2_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_017_126_061_172_target_position_3_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_037_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_2_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_037_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   33    39   292   292   399   125 11543  2992 12342      fixation_cross    gabor_044 gabor_160 gabor_029 gabor_082    gabor_044 gabor_160_alt gabor_029_alt gabor_082      "1_3_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_044_160_029_082_target_position_2_3_retrieval_position_2"        gabor_circ gabor_160_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_3_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_160_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   47    53   292   292   399   125 11543  2992 14342      fixation_cross    gabor_172 gabor_083 gabor_121 gabor_066    gabor_172_alt gabor_083_alt gabor_121 gabor_066      "1_4_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_172_083_121_066_target_position_1_2_retrieval_position_2"        gabor_circ gabor_083_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_4_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_083_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   62    67   292   292   399   125  9543  2992 12342      fixation_cross    gabor_041 gabor_168 gabor_127 gabor_020    gabor_041 gabor_168_alt gabor_127 gabor_020_alt      "1_5_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_041_168_127_020_target_position_2_4_retrieval_position_1"         gabor_090_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_5_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_090_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   75    81   292   292   399   125 11543  2992 14342      fixation_cross    gabor_022 gabor_091 gabor_111 gabor_149    gabor_022 gabor_091_alt gabor_111_alt gabor_149      "1_6_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_022_091_111_149_target_position_2_3_retrieval_position_2"        gabor_circ gabor_043_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_6_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_043_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   90    96   292   292   399   125 11543  2992 12342      fixation_cross    gabor_030 gabor_109 gabor_179 gabor_050    gabor_030 gabor_109 gabor_179_alt gabor_050_alt      "1_7_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_030_109_179_050_target_position_3_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_050_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_7_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_050_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  104   109   292   292   399   125  9543  2992 14342      fixation_cross    gabor_091 gabor_059 gabor_138 gabor_031    gabor_091 gabor_059_alt gabor_138_alt gabor_031      "1_8_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_091_059_138_031_target_position_2_3_retrieval_position_3"         gabor_circ gabor_circ gabor_002_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_8_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_002_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  118   124   292   292   399   125 11543  2992 14342      fixation_cross    gabor_106 gabor_023 gabor_177 gabor_148    gabor_106_alt gabor_023 gabor_177 gabor_148_alt      "1_9_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_106_023_177_148_target_position_1_4_retrieval_position_1"        gabor_059_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_9_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_059_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  133   138   292   292   399   125  9543  2992 14342      fixation_cross    gabor_134 gabor_089 gabor_150 gabor_173    gabor_134_alt gabor_089 gabor_150_alt gabor_173     "1_10_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_134_089_150_173_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_150_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_10_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_150_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  147   153   292   292   399   125 11543  2992 12342      fixation_cross    gabor_120 gabor_036 gabor_175 gabor_005    gabor_120_alt gabor_036 gabor_175 gabor_005_alt     "1_11_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_120_036_175_005_target_position_1_4_retrieval_position_2"        gabor_circ gabor_036_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_11_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_036_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  161   166   292   292   399   125  9543  2992 12342      fixation_cross    gabor_091 gabor_116 gabor_076 gabor_142    gabor_091 gabor_116_alt gabor_076_alt gabor_142     "1_12_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_091_116_076_142_target_position_2_3_retrieval_position_2"         gabor_circ gabor_116_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_12_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_116_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  174   179   292   292   399   125  9543  2992 14342      fixation_cross    gabor_176 gabor_004 gabor_062 gabor_035    gabor_176 gabor_004_alt gabor_062_alt gabor_035     "1_13_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_176_004_062_035_target_position_2_3_retrieval_position_2"         gabor_circ gabor_141_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_13_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_141_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  188   193   292   292   399   125  9543  2992 14342      fixation_cross    gabor_172 gabor_130 gabor_019 gabor_155    gabor_172 gabor_130 gabor_019_alt gabor_155_alt     "1_14_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_172_130_019_155_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_109_framed    blank blank blank blank    fixation_cross_target_position_3_4    "1_14_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_109_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_116 gabor_004 gabor_083 gabor_027    gabor_116 gabor_004_alt gabor_083_alt gabor_027     "1_15_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_116_004_083_027_target_position_2_3_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_027_framed    blank blank blank blank    fixation_cross_target_position_2_3    "1_15_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_027_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

};

# baselinePost (at the end of the session)
trial {   
   picture {
      box frame1; x=0; y=0;
      box frame2; x=0; y=0;
		box background; x=0; y=0;
      bitmap fixation_cross_black; x=0; y=0;
      };	
   time = 0;  	
   duration = 20600;  
   code = "BaselinePost"; 	 
   #port_code = 2;  
};  