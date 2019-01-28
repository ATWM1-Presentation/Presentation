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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_119 gabor_058 gabor_013 gabor_099    gabor_119 gabor_058 gabor_013_alt gabor_099_alt      "1_1_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_119_058_013_099_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_099_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_1_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_099_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   20    25   292   292   399   125  9543  2992 12342      fixation_cross    gabor_131 gabor_177 gabor_017 gabor_046    gabor_131 gabor_177 gabor_017_alt gabor_046_alt      "1_2_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_131_177_017_046_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_064_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_2_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_064_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   33    39   292   292   399   125 11543  2992 12342      fixation_cross    gabor_154 gabor_034 gabor_070 gabor_099    gabor_154_alt gabor_034 gabor_070_alt gabor_099      "1_3_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_154_034_070_099_target_position_1_3_retrieval_position_1"        gabor_014_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_3_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_014_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   47    52   292   292   399   125  9543  2992 12342      fixation_cross    gabor_177 gabor_093 gabor_053 gabor_037    gabor_177 gabor_093_alt gabor_053_alt gabor_037      "1_4_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_177_093_053_037_target_position_2_3_retrieval_position_2"         gabor_circ gabor_093_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_4_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_093_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   60    66   292   292   399   125 11543  2992 12342      fixation_cross    gabor_134 gabor_022 gabor_044 gabor_079    gabor_134_alt gabor_022_alt gabor_044 gabor_079      "1_5_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_134_022_044_079_target_position_1_2_retrieval_position_2"        gabor_circ gabor_161_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_5_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_161_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   74    79   292   292   399   125  9543  2992 14342      fixation_cross    gabor_091 gabor_045 gabor_158 gabor_073    gabor_091 gabor_045_alt gabor_158 gabor_073_alt      "1_6_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_091_045_158_073_target_position_2_4_retrieval_position_2"         gabor_circ gabor_180_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_6_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_180_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   88    94   292   292   399   125 11543  2992 12342      fixation_cross    gabor_080 gabor_152 gabor_106 gabor_019    gabor_080 gabor_152_alt gabor_106_alt gabor_019      "1_7_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_080_152_106_019_target_position_2_3_retrieval_position_1"        gabor_080_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_7_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_080_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  102   108   292   292   399   125 11543  2992 12342      fixation_cross    gabor_056 gabor_091 gabor_005 gabor_112    gabor_056 gabor_091 gabor_005_alt gabor_112_alt      "1_8_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_056_091_005_112_target_position_3_4_retrieval_position_3"        gabor_circ gabor_circ gabor_142_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_8_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_142_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  116   121   292   292   399   125  9543  2992 14342      fixation_cross    gabor_006 gabor_047 gabor_172 gabor_128    gabor_006_alt gabor_047_alt gabor_172 gabor_128      "1_9_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_006_047_172_128_target_position_1_2_retrieval_position_2"         gabor_circ gabor_047_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_9_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_047_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  130   135   292   292   399   125  9543  2992 14342      fixation_cross    gabor_042 gabor_060 gabor_130 gabor_168    gabor_042_alt gabor_060 gabor_130 gabor_168_alt     "1_10_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_042_060_130_168_target_position_1_4_retrieval_position_1"         gabor_042_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_10_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_042_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  144   150   292   292   399   125 11543  2992 14342      fixation_cross    gabor_073 gabor_092 gabor_053 gabor_032    gabor_073_alt gabor_092_alt gabor_053 gabor_032     "1_11_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_073_092_053_032_target_position_1_2_retrieval_position_3"        gabor_circ gabor_circ gabor_053_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_11_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_053_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  159   164   292   292   399   125  9543  2992 14342      fixation_cross    gabor_123 gabor_002 gabor_163 gabor_139    gabor_123 gabor_002 gabor_163_alt gabor_139_alt     "1_12_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_123_002_163_139_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_139_framed    blank blank blank blank    fixation_cross_target_position_3_4    "1_12_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_139_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  173   179   292   292   399   125 11543  2992 14342      fixation_cross    gabor_010 gabor_075 gabor_094 gabor_151    gabor_010_alt gabor_075_alt gabor_094 gabor_151     "1_13_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_010_075_094_151_target_position_1_2_retrieval_position_2"        gabor_circ gabor_029_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_13_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_029_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  188   193   292   292   399   125  9543  2992 14342      fixation_cross    gabor_076 gabor_030 gabor_115 gabor_096    gabor_076_alt gabor_030 gabor_115_alt gabor_096     "1_14_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_076_030_115_096_target_position_1_3_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_145_framed    blank blank blank blank    fixation_cross_target_position_1_3    "1_14_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_145_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_056 gabor_138 gabor_003 gabor_071    gabor_056 gabor_138 gabor_003_alt gabor_071_alt     "1_15_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_056_138_003_071_target_position_3_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_071_framed    blank blank blank blank    fixation_cross_target_position_3_4    "1_15_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_071_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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