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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_093 gabor_027 gabor_174 gabor_115    gabor_093 gabor_027 gabor_174_alt gabor_115_alt      "1_1_Encoding_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_093_027_174_115_target_position_3_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_068_framed    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_068_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    26   292   292   399   125 11543  2992 14342      fixation_cross    gabor_044 gabor_078 gabor_008 gabor_122    gabor_044_alt gabor_078 gabor_008 gabor_122_alt      "1_2_Encoding_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_044_078_008_122_target_position_1_4_retrieval_position_1"        gabor_044_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_044_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   35    40   292   292   399   125  9543  2992 12342      fixation_cross    gabor_153 gabor_112 gabor_096 gabor_133    gabor_153 gabor_112 gabor_096_alt gabor_133_alt      "1_3_Encoding_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_153_112_096_133_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_096_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_096_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   48    54   292   292   399   125 11543  2992 12342      fixation_cross    gabor_123 gabor_081 gabor_151 gabor_063    gabor_123_alt gabor_081_alt gabor_151 gabor_063      "1_4_Encoding_Working_Memory_MRI_P8_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_123_081_151_063_target_position_1_2_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_063_framed    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P8_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_063_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   62    67   292   292   399   125  9543  2992 12342      fixation_cross    gabor_116 gabor_045 gabor_177 gabor_071    gabor_116 gabor_045_alt gabor_177_alt gabor_071      "1_5_Encoding_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_116_045_177_071_target_position_2_3_retrieval_position_3"         gabor_circ gabor_circ gabor_177_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_177_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   75    80   292   292   399   125  9543  2992 14342      fixation_cross    gabor_082 gabor_043 gabor_006 gabor_114    gabor_082_alt gabor_043 gabor_006 gabor_114_alt      "1_6_Encoding_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_082_043_006_114_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_114_framed    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_114_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   89    94   292   292   399   125  9543  2992 14342      fixation_cross    gabor_113 gabor_146 gabor_174 gabor_097    gabor_113_alt gabor_146_alt gabor_174 gabor_097      "1_7_Encoding_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_113_146_174_097_target_position_1_2_retrieval_position_2"         gabor_circ gabor_146_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_146_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  103   108   292   292   399   125  9543  2992 12342      fixation_cross    gabor_109 gabor_027 gabor_003 gabor_172    gabor_109_alt gabor_027 gabor_003_alt gabor_172      "1_8_Encoding_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_109_027_003_172_target_position_1_3_retrieval_position_1"         gabor_109_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P8_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_109_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  116   121   292   292   399   125  9543  2992 12342      fixation_cross    gabor_041 gabor_129 gabor_076 gabor_097    gabor_041 gabor_129_alt gabor_076 gabor_097_alt      "1_9_Encoding_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_041_129_076_097_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_147_framed    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_147_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  129   135   292   292   399   125 11543  2992 14342      fixation_cross    gabor_172 gabor_056 gabor_112 gabor_087    gabor_172_alt gabor_056 gabor_112_alt gabor_087     "1_10_Encoding_Working_Memory_MRI_P8_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_172_056_112_087_target_position_1_3_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_087_framed    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P8_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_087_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  144   149   292   292   399   125  9543  2992 14342      fixation_cross    gabor_098 gabor_064 gabor_035 gabor_151    gabor_098 gabor_064_alt gabor_035 gabor_151_alt     "1_11_Encoding_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_098_064_035_151_target_position_2_4_retrieval_position_2"         gabor_circ gabor_017_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_017_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  158   164   292   292   399   125 11543  2992 14342      fixation_cross    gabor_010 gabor_097 gabor_154 gabor_072    gabor_010_alt gabor_097_alt gabor_154 gabor_072     "1_12_Encoding_Working_Memory_MRI_P8_LR_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_010_097_154_072_target_position_1_2_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_027_framed    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P8_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_027_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  173   179   292   292   399   125 11543  2992 14342      fixation_cross    gabor_069 gabor_049 gabor_179 gabor_103    gabor_069_alt gabor_049_alt gabor_179 gabor_103     "1_13_Encoding_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_069_049_179_103_target_position_1_2_retrieval_position_1"        gabor_019_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_019_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   193   292   292   399   125  9543  2992 14342      fixation_cross    gabor_041 gabor_154 gabor_066 gabor_122    gabor_041 gabor_154_alt gabor_066_alt gabor_122     "1_14_Encoding_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_041_154_066_122_target_position_2_3_retrieval_position_3"         gabor_circ gabor_circ gabor_016_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_016_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_102 gabor_024 gabor_138 gabor_178    gabor_102 gabor_024_alt gabor_138_alt gabor_178     "1_15_Encoding_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_102_024_138_178_target_position_2_3_retrieval_position_2"        gabor_circ gabor_161_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P8_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_161_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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