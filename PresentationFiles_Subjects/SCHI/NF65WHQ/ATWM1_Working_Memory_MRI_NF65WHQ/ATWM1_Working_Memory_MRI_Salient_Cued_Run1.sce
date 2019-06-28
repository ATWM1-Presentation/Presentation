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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_085 gabor_003 gabor_127 gabor_149    gabor_085_alt gabor_003 gabor_127 gabor_149_alt      "1_1_Encoding_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_085_003_127_149_target_position_1_4_retrieval_position_1"         gabor_038_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_1_Retrieval_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_038_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    25   292   292   399   125  9543  2992 12342      fixation_cross    gabor_069 gabor_041 gabor_099 gabor_084    gabor_069_alt gabor_041 gabor_099_alt gabor_084      "1_2_Encoding_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_069_041_099_084_target_position_1_3_retrieval_position_1"         gabor_021_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_2_Retrieval_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_021_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   33    38   292   292   399   125  9543  2992 14342      fixation_cross    gabor_113 gabor_096 gabor_044 gabor_071    gabor_113_alt gabor_096 gabor_044_alt gabor_071      "1_3_Encoding_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_113_096_044_071_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_044_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_3_Retrieval_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_044_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   47    52   292   292   399   125  9543  2992 14342      fixation_cross    gabor_116 gabor_142 gabor_058 gabor_076    gabor_116_alt gabor_142 gabor_058 gabor_076_alt      "1_4_Encoding_Working_Memory_MRI_P8_LR_Salient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_116_142_058_076_target_position_1_4_retrieval_position_3"         gabor_circ gabor_circ gabor_008_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_4_Retrieval_Working_Memory_MRI_P8_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_008_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   61    66   292   292   399   125  9543  2992 12342      fixation_cross    gabor_032 gabor_078 gabor_062 gabor_138    gabor_032_alt gabor_078_alt gabor_062 gabor_138      "1_5_Encoding_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_032_078_062_138_target_position_1_2_retrieval_position_1"         gabor_168_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_5_Retrieval_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_168_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   74    79   292   292   399   125  9543  2992 14342      fixation_cross    gabor_097 gabor_007 gabor_079 gabor_159    gabor_097 gabor_007_alt gabor_079 gabor_159_alt      "1_6_Encoding_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_097_007_079_159_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_159_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_6_Retrieval_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_159_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   88    94   292   292   399   125 11543  2992 12342      fixation_cross    gabor_035 gabor_061 gabor_116 gabor_010    gabor_035 gabor_061_alt gabor_116 gabor_010_alt      "1_7_Encoding_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_035_061_116_010_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_145_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_7_Retrieval_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_145_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  102   107   292   292   399   125  9543  2992 12342      fixation_cross    gabor_002 gabor_092 gabor_034 gabor_052    gabor_002 gabor_092 gabor_034_alt gabor_052_alt      "1_8_Encoding_Working_Memory_MRI_P8_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_002_092_034_052_target_position_3_4_retrieval_position_2"         gabor_circ gabor_092_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_8_Retrieval_Working_Memory_MRI_P8_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_092_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  115   121   292   292   399   125 11543  2992 14342      fixation_cross    gabor_076 gabor_096 gabor_142 gabor_118    gabor_076 gabor_096_alt gabor_142_alt gabor_118      "1_9_Encoding_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_076_096_142_118_target_position_2_3_retrieval_position_3"        gabor_circ gabor_circ gabor_142_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_9_Retrieval_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_142_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  130   136   292   292   399   125 11543  2992 14342      fixation_cross    gabor_069 gabor_175 gabor_021 gabor_108    gabor_069 gabor_175_alt gabor_021_alt gabor_108     "1_10_Encoding_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_069_175_021_108_target_position_2_3_retrieval_position_3"        gabor_circ gabor_circ gabor_021_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_10_Retrieval_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_021_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  145   150   292   292   399   125  9543  2992 12342      fixation_cross    gabor_165 gabor_087 gabor_103 gabor_018    gabor_165_alt gabor_087 gabor_103_alt gabor_018     "1_11_Encoding_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_165_087_103_018_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_103_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_11_Retrieval_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_103_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  158   164   292   292   399   125 11543  2992 12342      fixation_cross    gabor_025 gabor_052 gabor_137 gabor_103    gabor_025_alt gabor_052_alt gabor_137 gabor_103     "1_12_Encoding_Working_Memory_MRI_P8_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_025_052_137_103_target_position_1_2_retrieval_position_3"        gabor_circ gabor_circ gabor_137_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_12_Retrieval_Working_Memory_MRI_P8_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_137_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  172   178   292   292   399   125 11543  2992 12342      fixation_cross    gabor_059 gabor_018 gabor_042 gabor_177    gabor_059_alt gabor_018 gabor_042_alt gabor_177     "1_13_Encoding_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_059_018_042_177_target_position_1_3_retrieval_position_1"        gabor_106_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_13_Retrieval_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_106_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  186   192   292   292   399   125 11543  2992 14342      fixation_cross    gabor_066 gabor_009 gabor_043 gabor_083    gabor_066_alt gabor_009_alt gabor_043 gabor_083     "1_14_Encoding_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_066_009_043_083_target_position_1_2_retrieval_position_2"        gabor_circ gabor_149_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_14_Retrieval_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_149_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_091 gabor_180 gabor_159 gabor_018    gabor_091 gabor_180_alt gabor_159_alt gabor_018     "1_15_Encoding_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_091_180_159_018_target_position_2_3_retrieval_position_2"        gabor_circ gabor_180_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_15_Retrieval_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_180_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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