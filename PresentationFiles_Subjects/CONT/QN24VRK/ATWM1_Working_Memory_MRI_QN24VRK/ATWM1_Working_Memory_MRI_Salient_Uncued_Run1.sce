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
    6    11   292   292   399   125  9543  2992 12342      fixation_cross    gabor_045 gabor_073 gabor_019 gabor_152    gabor_045 gabor_073 gabor_019_alt gabor_152_alt      "1_1_Encoding_Working_Memory_MRI_P5_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_045_073_019_152_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_104_framed    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P5_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_104_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   19    25   292   292   399   125 11543  2992 14342      fixation_cross    gabor_005 gabor_140 gabor_156 gabor_020    gabor_005_alt gabor_140 gabor_156 gabor_020_alt      "1_2_Encoding_Working_Memory_MRI_P5_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_005_140_156_020_target_position_1_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_066_framed    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P5_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_066_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   34    39   292   292   399   125  9543  2992 12342      fixation_cross    gabor_116 gabor_045 gabor_074 gabor_094    gabor_116_alt gabor_045_alt gabor_074 gabor_094      "1_3_Encoding_Working_Memory_MRI_P5_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_116_045_074_094_target_position_1_2_retrieval_position_2"         gabor_circ gabor_180_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P5_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_180_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   47    53   292   292   399   125 11543  2992 14342      fixation_cross    gabor_168 gabor_054 gabor_137 gabor_012    gabor_168 gabor_054 gabor_137_alt gabor_012_alt      "1_4_Encoding_Working_Memory_MRI_P5_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_168_054_137_012_target_position_3_4_retrieval_position_3"        gabor_circ gabor_circ gabor_091_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P5_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_091_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   62    67   292   292   399   125  9543  2992 14342      fixation_cross    gabor_081 gabor_166 gabor_122 gabor_051    gabor_081_alt gabor_166 gabor_122 gabor_051_alt      "1_5_Encoding_Working_Memory_MRI_P5_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_081_166_122_051_target_position_1_4_retrieval_position_1"         gabor_081_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P5_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_081_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   76    82   292   292   399   125 11543  2992 14342      fixation_cross    gabor_087 gabor_173 gabor_145 gabor_039    gabor_087_alt gabor_173 gabor_145 gabor_039_alt      "1_6_Encoding_Working_Memory_MRI_P5_RL_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_087_173_145_039_target_position_1_4_retrieval_position_3"        gabor_circ gabor_circ gabor_005_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P5_RL_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_005_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   91    97   292   292   399   125 11543  2992 12342      fixation_cross    gabor_103 gabor_068 gabor_018 gabor_048    gabor_103 gabor_068 gabor_018_alt gabor_048_alt      "1_7_Encoding_Working_Memory_MRI_P5_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_103_068_018_048_target_position_3_4_retrieval_position_3"        gabor_circ gabor_circ gabor_154_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P5_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_154_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  105   111   292   292   399   125 11543  2992 12342      fixation_cross    gabor_173 gabor_018 gabor_065 gabor_046    gabor_173_alt gabor_018_alt gabor_065 gabor_046      "1_8_Encoding_Working_Memory_MRI_P5_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_173_018_065_046_target_position_1_2_retrieval_position_2"        gabor_circ gabor_018_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P5_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_018_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  119   124   292   292   399   125  9543  2992 14342      fixation_cross    gabor_050 gabor_077 gabor_136 gabor_010    gabor_050 gabor_077_alt gabor_136 gabor_010_alt      "1_9_Encoding_Working_Memory_MRI_P5_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_050_077_136_010_target_position_2_4_retrieval_position_1"         gabor_050_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P5_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_050_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  133   138   292   292   399   125  9543  2992 14342      fixation_cross    gabor_072 gabor_003 gabor_092 gabor_027    gabor_072 gabor_003_alt gabor_092 gabor_027_alt     "1_10_Encoding_Working_Memory_MRI_P5_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_072_003_092_027_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_027_framed    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P5_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_027_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  147   152   292   292   399   125  9543  2992 12342      fixation_cross    gabor_175 gabor_114 gabor_069 gabor_038    gabor_175 gabor_114_alt gabor_069 gabor_038_alt     "1_11_Encoding_Working_Memory_MRI_P5_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_175_114_069_038_target_position_2_4_retrieval_position_2"         gabor_circ gabor_114_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P5_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_114_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  160   166   292   292   399   125 11543  2992 12342      fixation_cross    gabor_104 gabor_128 gabor_062 gabor_087    gabor_104_alt gabor_128_alt gabor_062 gabor_087     "1_12_Encoding_Working_Memory_MRI_P5_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_104_128_062_087_target_position_1_2_retrieval_position_1"        gabor_104_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P5_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_104_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  174   180   292   292   399   125 11543  2992 12342      fixation_cross    gabor_080 gabor_023 gabor_160 gabor_044    gabor_080 gabor_023 gabor_160_alt gabor_044_alt     "1_13_Encoding_Working_Memory_MRI_P5_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_080_023_160_044_target_position_3_4_retrieval_position_3"        gabor_circ gabor_circ gabor_112_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P5_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_112_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  188   193   292   292   399   125  9543  2992 14342      fixation_cross    gabor_169 gabor_064 gabor_009 gabor_094    gabor_169_alt gabor_064 gabor_009_alt gabor_094     "1_14_Encoding_Working_Memory_MRI_P5_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_169_064_009_094_target_position_1_3_retrieval_position_1"         gabor_169_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P5_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_169_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_031 gabor_114 gabor_158 gabor_007    gabor_031 gabor_114_alt gabor_158_alt gabor_007     "1_15_Encoding_Working_Memory_MRI_P5_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_031_114_158_007_target_position_2_3_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_007_framed    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P5_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_007_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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