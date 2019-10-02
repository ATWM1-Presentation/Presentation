# ATWM1 MRI Experiment
                         
scenario = "ATWM1_Working_Memory_MRI_salient_uncued_run1";
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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_056 gabor_101 gabor_132 gabor_071    gabor_056 gabor_101_alt gabor_132 gabor_071_alt      "1_1_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_056_101_132_071_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_024_framed    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_024_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    25   292   292   399   125  9543  2992 12342      fixation_cross    gabor_046 gabor_026 gabor_180 gabor_071    gabor_046_alt gabor_026 gabor_180 gabor_071_alt      "1_2_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_046_026_180_071_target_position_1_4_retrieval_position_1"         gabor_092_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_092_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   33    39   292   292   399   125 11543  2992 14342      fixation_cross    gabor_028 gabor_169 gabor_138 gabor_003    gabor_028 gabor_169_alt gabor_138_alt gabor_003      "1_3_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_028_169_138_003_target_position_2_3_retrieval_position_3"        gabor_circ gabor_circ gabor_138_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_138_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   48    53   292   292   399   125  9543  2992 14342      fixation_cross    gabor_151 gabor_045 gabor_087 gabor_010    gabor_151 gabor_045 gabor_087_alt gabor_010_alt      "1_4_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_151_045_087_010_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_087_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_087_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   62    68   292   292   399   125 11543  2992 12342      fixation_cross    gabor_096 gabor_065 gabor_127 gabor_043    gabor_096_alt gabor_065 gabor_127_alt gabor_043      "1_5_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_096_065_127_043_target_position_1_3_retrieval_position_3"        gabor_circ gabor_circ gabor_174_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_174_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   76    82   292   292   399   125 11543  2992 12342      fixation_cross    gabor_167 gabor_029 gabor_088 gabor_054    gabor_167 gabor_029 gabor_088_alt gabor_054_alt      "1_6_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_167_029_088_054_target_position_3_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_054_framed    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_054_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   90    96   292   292   399   125 11543  2992 14342      fixation_cross    gabor_105 gabor_018 gabor_087 gabor_132    gabor_105 gabor_018_alt gabor_087 gabor_132_alt      "1_7_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_105_018_087_132_target_position_2_4_retrieval_position_3"        gabor_circ gabor_circ gabor_042_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_042_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  105   111   292   292   399   125 11543  2992 14342      fixation_cross    gabor_094 gabor_005 gabor_029 gabor_068    gabor_094_alt gabor_005_alt gabor_029 gabor_068      "1_8_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_094_005_029_068_target_position_1_2_retrieval_position_2"        gabor_circ gabor_145_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_145_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  120   125   292   292   399   125  9543  2992 14342      fixation_cross    gabor_167 gabor_001 gabor_048 gabor_084    gabor_167_alt gabor_001 gabor_048_alt gabor_084      "1_9_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_167_001_048_084_target_position_1_3_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_084_framed    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_084_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  134   139   292   292   399   125  9543  2992 12342      fixation_cross    gabor_017 gabor_138 gabor_056 gabor_079    gabor_017 gabor_138_alt gabor_056_alt gabor_079     "1_10_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_017_138_056_079_target_position_2_3_retrieval_position_3"         gabor_circ gabor_circ gabor_056_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_056_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  147   152   292   292   399   125  9543  2992 14342      fixation_cross    gabor_116 gabor_094 gabor_073 gabor_147    gabor_116 gabor_094 gabor_073_alt gabor_147_alt     "1_11_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_116_094_073_147_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_009_framed    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_009_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  161   167   292   292   399   125 11543  2992 12342      fixation_cross    gabor_130 gabor_173 gabor_041 gabor_015    gabor_130 gabor_173 gabor_041_alt gabor_015_alt     "1_12_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_130_173_041_015_target_position_3_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_155_framed    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_155_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  175   180   292   292   399   125  9543  2992 12342      fixation_cross    gabor_179 gabor_158 gabor_102 gabor_019    gabor_179 gabor_158 gabor_102_alt gabor_019_alt     "1_13_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_179_158_102_019_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_102_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_102_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   193   292   292   399   125  9543  2992 14342      fixation_cross    gabor_029 gabor_147 gabor_101 gabor_069    gabor_029 gabor_147_alt gabor_101 gabor_069_alt     "1_14_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_029_147_101_069_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_069_framed    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_069_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_127 gabor_171 gabor_066 gabor_047    gabor_127_alt gabor_171_alt gabor_066 gabor_047     "1_15_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_127_171_066_047_target_position_1_2_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_047_framed    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_047_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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