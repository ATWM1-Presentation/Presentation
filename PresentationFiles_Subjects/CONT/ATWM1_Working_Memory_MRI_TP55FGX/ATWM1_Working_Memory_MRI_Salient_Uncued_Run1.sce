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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_009 gabor_067 gabor_051 gabor_089    gabor_009 gabor_067 gabor_051_alt gabor_089_alt      "1_1_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_009_067_051_089_target_position_3_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_089_framed    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_089_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    26   292   292   399   125 11543  2992 12342      fixation_cross    gabor_157 gabor_069 gabor_048 gabor_084    gabor_157 gabor_069_alt gabor_048 gabor_084_alt      "1_2_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_157_069_048_084_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_133_framed    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_133_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   34    40   292   292   399   125 11543  2992 14342      fixation_cross    gabor_060 gabor_095 gabor_080 gabor_007    gabor_060 gabor_095 gabor_080_alt gabor_007_alt      "1_3_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_060_095_080_007_target_position_3_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_007_framed    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_007_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   49    54   292   292   399   125  9543  2992 14342      fixation_cross    gabor_105 gabor_024 gabor_064 gabor_180    gabor_105 gabor_024_alt gabor_064 gabor_180_alt      "1_4_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_105_024_064_180_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_041_framed    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_041_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   63    68   292   292   399   125  9543  2992 14342      fixation_cross    gabor_055 gabor_094 gabor_142 gabor_177    gabor_055_alt gabor_094 gabor_142_alt gabor_177      "1_5_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_055_094_142_177_target_position_1_3_retrieval_position_1"         gabor_006_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_006_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   77    83   292   292   399   125 11543  2992 14342      fixation_cross    gabor_080 gabor_158 gabor_142 gabor_112    gabor_080_alt gabor_158 gabor_142 gabor_112_alt      "1_6_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_080_158_142_112_target_position_1_4_retrieval_position_3"        gabor_circ gabor_circ gabor_142_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_142_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   92    97   292   292   399   125  9543  2992 12342      fixation_cross    gabor_086 gabor_161 gabor_014 gabor_130    gabor_086_alt gabor_161_alt gabor_014 gabor_130      "1_7_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_086_161_014_130_target_position_1_2_retrieval_position_1"         gabor_086_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_086_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  105   110   292   292   399   125  9543  2992 12342      fixation_cross    gabor_061 gabor_100 gabor_022 gabor_179    gabor_061_alt gabor_100 gabor_022 gabor_179_alt      "1_8_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_061_100_022_179_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_179_framed    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_179_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  118   123   292   292   399   125  9543  2992 14342      fixation_cross    gabor_179 gabor_027 gabor_163 gabor_106    gabor_179_alt gabor_027 gabor_163 gabor_106_alt      "1_9_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_179_027_163_106_target_position_1_4_retrieval_position_1"         gabor_133_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_133_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  132   137   292   292   399   125  9543  2992 12342      fixation_cross    gabor_076 gabor_161 gabor_142 gabor_111    gabor_076 gabor_161_alt gabor_142_alt gabor_111     "1_10_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_076_161_142_111_target_position_2_3_retrieval_position_1"         gabor_076_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_076_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  145   151   292   292   399   125 11543  2992 14342      fixation_cross    gabor_048 gabor_015 gabor_173 gabor_088    gabor_048_alt gabor_015 gabor_173_alt gabor_088     "1_11_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_048_015_173_088_target_position_1_3_retrieval_position_3"        gabor_circ gabor_circ gabor_128_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_128_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  160   165   292   292   399   125  9543  2992 14342      fixation_cross    gabor_093 gabor_065 gabor_155 gabor_109    gabor_093_alt gabor_065 gabor_155 gabor_109_alt     "1_12_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_093_065_155_109_target_position_1_4_retrieval_position_1"         gabor_093_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_093_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  174   179   292   292   399   125  9543  2992 12342      fixation_cross    gabor_040 gabor_006 gabor_055 gabor_114    gabor_040_alt gabor_006 gabor_055 gabor_114_alt     "1_13_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_040_006_055_114_target_position_1_4_retrieval_position_1"         gabor_090_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_090_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  187   193   292   292   399   125 11543  2992 14342      fixation_cross    gabor_005 gabor_131 gabor_148 gabor_066    gabor_005 gabor_131_alt gabor_148_alt gabor_066     "1_14_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_005_131_148_066_target_position_2_3_retrieval_position_2"        gabor_circ gabor_131_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_131_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_146 gabor_065 gabor_081 gabor_007    gabor_146 gabor_065_alt gabor_081_alt gabor_007     "1_15_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_146_065_081_007_target_position_2_3_retrieval_position_1"        gabor_097_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_097_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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