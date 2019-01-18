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
    6    12   292   292   399   125 11543  2992 14342      fixation_cross    gabor_016 gabor_048 gabor_090 gabor_066    gabor_016 gabor_048_alt gabor_090_alt gabor_066      "1_1_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_016_048_090_066_target_position_1_4_retrieval_position_1"     gabor_016_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_016_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   21    26   292   292   399   125  9543  2992 14342      fixation_cross    gabor_129 gabor_006 gabor_093 gabor_170    gabor_129 gabor_006_alt gabor_093 gabor_170_alt      "1_2_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_129_006_093_170_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_048_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_048_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   35    40   292   292   399   125  9543  2992 12342      fixation_cross    gabor_015 gabor_095 gabor_067 gabor_175    gabor_015 gabor_095_alt gabor_067_alt gabor_175      "1_3_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_015_095_067_175_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_130_framed    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_130_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   48    53   292   292   399   125  9543  2992 14342      fixation_cross    gabor_056 gabor_161 gabor_139 gabor_078    gabor_056_alt gabor_161 gabor_139_alt gabor_078      "1_4_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_056_161_139_078_target_position_2_4_retrieval_position_3"      gabor_circ gabor_circ gabor_139_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_139_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   62    68   292   292   399   125 11543  2992 14342      fixation_cross    gabor_172 gabor_137 gabor_016 gabor_156    gabor_172_alt gabor_137 gabor_016 gabor_156_alt      "1_5_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_172_137_016_156_target_position_2_3_retrieval_position_3"     gabor_circ gabor_circ gabor_066_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_066_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   77    82   292   292   399   125  9543  2992 12342      fixation_cross    gabor_010 gabor_160 gabor_138 gabor_033    gabor_010_alt gabor_160 gabor_138_alt gabor_033      "1_6_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_010_160_138_033_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_079_framed    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_079_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   90    96   292   292   399   125 11543  2992 12342      fixation_cross    gabor_064 gabor_011 gabor_133 gabor_177    gabor_064_alt gabor_011 gabor_133 gabor_177_alt      "1_7_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_064_011_133_177_target_position_2_3_retrieval_position_3"     gabor_circ gabor_circ gabor_133_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_133_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  104   109   292   292   399   125  9543  2992 14342      fixation_cross    gabor_040 gabor_079 gabor_018 gabor_156    gabor_040_alt gabor_079 gabor_018_alt gabor_156      "1_8_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_040_079_018_156_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_156_framed    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_156_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  118   123   292   292   399   125  9543  2992 14342      fixation_cross    gabor_032 gabor_152 gabor_088 gabor_013    gabor_032_alt gabor_152 gabor_088 gabor_013_alt      "1_9_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_032_152_088_013_target_position_2_3_retrieval_position_1"      gabor_172_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_172_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  132   138   292   292   399   125 11543  2992 14342      fixation_cross    gabor_004 gabor_065 gabor_170 gabor_114    gabor_004 gabor_065_alt gabor_170 gabor_114_alt     "1_10_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_004_065_170_114_target_position_1_3_retrieval_position_1"     gabor_004_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_004_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  147   153   292   292   399   125 11543  2992 12342      fixation_cross    gabor_003 gabor_071 gabor_132 gabor_027    gabor_003 gabor_071 gabor_132_alt gabor_027_alt     "1_11_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_003_071_132_027_target_position_1_2_retrieval_position_2"     gabor_circ gabor_116_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_116_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  161   166   292   292   399   125  9543  2992 14342      fixation_cross    gabor_006 gabor_090 gabor_115 gabor_058    gabor_006_alt gabor_090 gabor_115_alt gabor_058     "1_12_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_006_090_115_058_target_position_2_4_retrieval_position_1"      gabor_006_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_006_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  175   180   292   292   399   125  9543  2992 12342      fixation_cross    gabor_064 gabor_123 gabor_081 gabor_138    gabor_064 gabor_123_alt gabor_081_alt gabor_138     "1_13_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_064_123_081_138_target_position_1_4_retrieval_position_1"      gabor_016_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_016_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  188   194   292   292   399   125 11543  2992 12342      fixation_cross    gabor_172 gabor_091 gabor_052 gabor_109    gabor_172_alt gabor_091 gabor_052_alt gabor_109     "1_14_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_172_091_052_109_target_position_2_4_retrieval_position_2"     gabor_circ gabor_091_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_091_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_053 gabor_137 gabor_097 gabor_032    gabor_053 gabor_137_alt gabor_097_alt gabor_032     "1_15_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_053_137_097_032_target_position_1_4_retrieval_position_1"     gabor_053_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_053_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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