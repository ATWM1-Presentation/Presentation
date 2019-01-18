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
    6    12   292   292   399   125 11543  2992 14342      fixation_cross    gabor_017 gabor_160 gabor_045 gabor_129    gabor_017 gabor_160_alt gabor_045_alt gabor_129      "1_1_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_017_160_045_129_target_position_2_3_retrieval_position_3"        gabor_circ gabor_circ gabor_094_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_094_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   21    26   292   292   399   125  9543  2992 12342      fixation_cross    gabor_034 gabor_120 gabor_058 gabor_003    gabor_034_alt gabor_120_alt gabor_058 gabor_003      "1_2_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_034_120_058_003_target_position_1_2_retrieval_position_1"         gabor_034_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_034_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   34    40   292   292   399   125 11543  2992 14342      fixation_cross    gabor_155 gabor_129 gabor_008 gabor_023    gabor_155 gabor_129_alt gabor_008 gabor_023_alt      "1_3_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_155_129_008_023_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_023_framed    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_023_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   49    54   292   292   399   125  9543  2992 14342      fixation_cross    gabor_107 gabor_138 gabor_064 gabor_085    gabor_107_alt gabor_138_alt gabor_064 gabor_085      "1_4_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_107_138_064_085_target_position_1_2_retrieval_position_3"         gabor_circ gabor_circ gabor_064_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_064_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   63    68   292   292   399   125  9543  2992 14342      fixation_cross    gabor_044 gabor_084 gabor_099 gabor_168    gabor_044_alt gabor_084 gabor_099 gabor_168_alt      "1_5_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_044_084_099_168_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_168_framed    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_168_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   77    82   292   292   399   125  9543  2992 14342      fixation_cross    gabor_066 gabor_102 gabor_025 gabor_082    gabor_066_alt gabor_102_alt gabor_025 gabor_082      "1_6_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_066_102_025_082_target_position_1_2_retrieval_position_2"         gabor_circ gabor_102_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_102_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   91    96   292   292   399   125  9543  2992 14342      fixation_cross    gabor_022 gabor_048 gabor_069 gabor_131    gabor_022 gabor_048 gabor_069_alt gabor_131_alt      "1_7_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_022_048_069_131_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_178_framed    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_178_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  105   111   292   292   399   125 11543  2992 12342      fixation_cross    gabor_064 gabor_134 gabor_153 gabor_090    gabor_064_alt gabor_134 gabor_153 gabor_090_alt      "1_8_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_064_134_153_090_target_position_1_4_retrieval_position_3"        gabor_circ gabor_circ gabor_153_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_153_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  119   124   292   292   399   125  9543  2992 14342      fixation_cross    gabor_053 gabor_119 gabor_141 gabor_180    gabor_053 gabor_119_alt gabor_141 gabor_180_alt      "1_9_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_053_119_141_180_target_position_2_4_retrieval_position_2"         gabor_circ gabor_164_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_164_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  133   138   292   292   399   125  9543  2992 12342      fixation_cross    gabor_023 gabor_130 gabor_065 gabor_043    gabor_023 gabor_130_alt gabor_065 gabor_043_alt     "1_10_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_023_130_065_043_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_043_framed    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_043_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  146   152   292   292   399   125 11543  2992 12342      fixation_cross    gabor_095 gabor_007 gabor_035 gabor_112    gabor_095_alt gabor_007_alt gabor_035 gabor_112     "1_11_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_095_007_035_112_target_position_1_2_retrieval_position_1"        gabor_095_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_095_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  160   166   292   292   399   125 11543  2992 14342      fixation_cross    gabor_011 gabor_167 gabor_119 gabor_151    gabor_011 gabor_167_alt gabor_119 gabor_151_alt     "1_12_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_011_167_119_151_target_position_2_4_retrieval_position_2"        gabor_circ gabor_029_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_029_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  175   180   292   292   399   125  9543  2992 12342      fixation_cross    gabor_155 gabor_180 gabor_072 gabor_125    gabor_155_alt gabor_180 gabor_072 gabor_125_alt     "1_13_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_155_180_072_125_target_position_1_4_retrieval_position_1"         gabor_107_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_107_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  188   194   292   292   399   125 11543  2992 12342      fixation_cross    gabor_179 gabor_003 gabor_109 gabor_025    gabor_179_alt gabor_003 gabor_109 gabor_025_alt     "1_14_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_179_003_109_025_target_position_1_4_retrieval_position_3"        gabor_circ gabor_circ gabor_156_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_156_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_027 gabor_053 gabor_072 gabor_138    gabor_027_alt gabor_053_alt gabor_072 gabor_138     "1_15_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_027_053_072_138_target_position_1_2_retrieval_position_2"        gabor_circ gabor_008_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_008_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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