# ATWM1 MRI Experiment
                         
scenario = "ATWM1_Working_Memory_MRI_nonsalient_uncued_run1";
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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_045 gabor_098 gabor_083 gabor_128    gabor_045_alt gabor_098 gabor_083_alt gabor_128      "1_1_Encoding_Working_Memory_MRI_P8_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_045_098_083_128_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_128_framed    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P8_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_128_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    26   292   292   399   125 11543  2992 14342      fixation_cross    gabor_141 gabor_057 gabor_120 gabor_036    gabor_141_alt gabor_057 gabor_120_alt gabor_036      "1_2_Encoding_Working_Memory_MRI_P8_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_141_057_120_036_target_position_2_4_retrieval_position_2"     gabor_circ gabor_104_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P8_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_104_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   35    40   292   292   399   125  9543  2992 12342      fixation_cross    gabor_091 gabor_058 gabor_041 gabor_128    gabor_091 gabor_058_alt gabor_041_alt gabor_128      "1_3_Encoding_Working_Memory_MRI_P8_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_091_058_041_128_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_175_framed    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P8_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_175_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   48    53   292   292   399   125  9543  2992 12342      fixation_cross    gabor_024 gabor_086 gabor_157 gabor_042    gabor_024_alt gabor_086 gabor_157_alt gabor_042      "1_4_Encoding_Working_Memory_MRI_P8_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_024_086_157_042_target_position_2_4_retrieval_position_2"      gabor_circ gabor_086_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P8_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_086_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   61    66   292   292   399   125  9543  2992 14342      fixation_cross    gabor_064 gabor_086 gabor_127 gabor_103    gabor_064_alt gabor_086_alt gabor_127 gabor_103      "1_5_Encoding_Working_Memory_MRI_P8_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_064_086_127_103_target_position_3_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_153_framed    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P8_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_153_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   75    80   292   292   399   125  9543  2992 12342      fixation_cross    gabor_153 gabor_079 gabor_134 gabor_002    gabor_153_alt gabor_079_alt gabor_134 gabor_002      "1_6_Encoding_Working_Memory_MRI_P8_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_153_079_134_002_target_position_3_4_retrieval_position_1"      gabor_153_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P8_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_153_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   88    93   292   292   399   125  9543  2992 14342      fixation_cross    gabor_086 gabor_028 gabor_139 gabor_115    gabor_086_alt gabor_028_alt gabor_139 gabor_115      "1_7_Encoding_Working_Memory_MRI_P8_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_086_028_139_115_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_139_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P8_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_139_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  102   108   292   292   399   125 11543  2992 12342      fixation_cross    gabor_131 gabor_055 gabor_160 gabor_176    gabor_131 gabor_055_alt gabor_160 gabor_176_alt      "1_8_Encoding_Working_Memory_MRI_P8_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_131_055_160_176_target_position_1_3_retrieval_position_3"     gabor_circ gabor_circ gabor_022_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P8_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_022_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  116   122   292   292   399   125 11543  2992 14342      fixation_cross    gabor_094 gabor_065 gabor_005 gabor_150    gabor_094_alt gabor_065 gabor_005_alt gabor_150      "1_9_Encoding_Working_Memory_MRI_P8_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_094_065_005_150_target_position_2_4_retrieval_position_2"     gabor_circ gabor_065_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P8_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_065_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  131   137   292   292   399   125 11543  2992 12342      fixation_cross    gabor_069 gabor_102 gabor_179 gabor_014    gabor_069_alt gabor_102 gabor_179 gabor_014_alt     "1_10_Encoding_Working_Memory_MRI_P8_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_069_102_179_014_target_position_2_3_retrieval_position_3"     gabor_circ gabor_circ gabor_041_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P8_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_041_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  145   151   292   292   399   125 11543  2992 12342      fixation_cross    gabor_167 gabor_080 gabor_141 gabor_023    gabor_167 gabor_080 gabor_141_alt gabor_023_alt     "1_11_Encoding_Working_Memory_MRI_P8_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_167_080_141_023_target_position_1_2_retrieval_position_3"     gabor_circ gabor_circ gabor_141_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P8_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_141_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  159   164   292   292   399   125  9543  2992 14342      fixation_cross    gabor_081 gabor_010 gabor_115 gabor_066    gabor_081 gabor_010_alt gabor_115_alt gabor_066     "1_12_Encoding_Working_Memory_MRI_P8_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_081_010_115_066_target_position_1_4_retrieval_position_1"      gabor_081_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P8_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_081_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  173   179   292   292   399   125 11543  2992 12342      fixation_cross    gabor_113 gabor_089 gabor_023 gabor_067    gabor_113_alt gabor_089 gabor_023_alt gabor_067     "1_13_Encoding_Working_Memory_MRI_P8_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_113_089_023_067_target_position_2_4_retrieval_position_2"     gabor_circ gabor_089_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P8_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_089_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  187   192   292   292   399   125  9543  2992 14342      fixation_cross    gabor_177 gabor_004 gabor_038 gabor_157    gabor_177_alt gabor_004 gabor_038_alt gabor_157     "1_14_Encoding_Working_Memory_MRI_P8_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_177_004_038_157_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_110_framed    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P8_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_110_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_107 gabor_123 gabor_168 gabor_152    gabor_107_alt gabor_123 gabor_168 gabor_152_alt     "1_15_Encoding_Working_Memory_MRI_P8_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_107_123_168_152_target_position_2_3_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_017_framed    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P8_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_017_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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