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
    6    12   292   292   399   125 11543  2992 14342      fixation_cross    gabor_153 gabor_084 gabor_019 gabor_174    gabor_153 gabor_084 gabor_019_alt gabor_174_alt      "1_1_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_153_084_019_174_target_position_3_4_retrieval_position_3"        gabor_circ gabor_circ gabor_064_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_064_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   21    26   292   292   399   125  9543  2992 14342      fixation_cross    gabor_137 gabor_049 gabor_154 gabor_101    gabor_137 gabor_049_alt gabor_154_alt gabor_101      "1_2_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_137_049_154_101_target_position_2_3_retrieval_position_3"         gabor_circ gabor_circ gabor_154_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_154_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   35    41   292   292   399   125 11543  2992 12342      fixation_cross    gabor_039 gabor_145 gabor_103 gabor_013    gabor_039 gabor_145_alt gabor_103 gabor_013_alt      "1_3_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_039_145_103_013_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_061_framed    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_061_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   49    54   292   292   399   125  9543  2992 14342      fixation_cross    gabor_167 gabor_149 gabor_121 gabor_011    gabor_167_alt gabor_149_alt gabor_121 gabor_011      "1_4_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_167_149_121_011_target_position_1_2_retrieval_position_1"         gabor_167_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_167_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   63    69   292   292   399   125 11543  2992 12342      fixation_cross    gabor_001 gabor_045 gabor_180 gabor_090    gabor_001_alt gabor_045 gabor_180_alt gabor_090      "1_5_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_001_045_180_090_target_position_1_3_retrieval_position_3"        gabor_circ gabor_circ gabor_135_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_135_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   77    82   292   292   399   125  9543  2992 14342      fixation_cross    gabor_136 gabor_023 gabor_158 gabor_112    gabor_136_alt gabor_023 gabor_158_alt gabor_112      "1_6_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_136_023_158_112_target_position_1_3_retrieval_position_1"         gabor_001_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_001_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   91    97   292   292   399   125 11543  2992 14342      fixation_cross    gabor_073 gabor_002 gabor_179 gabor_044    gabor_073 gabor_002_alt gabor_179 gabor_044_alt      "1_7_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_073_002_179_044_target_position_2_4_retrieval_position_1"        gabor_073_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_073_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  106   111   292   292   399   125  9543  2992 14342      fixation_cross    gabor_020 gabor_003 gabor_066 gabor_093    gabor_020 gabor_003_alt gabor_066 gabor_093_alt      "1_8_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_020_003_066_093_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_138_framed    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_138_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  120   125   292   292   399   125  9543  2992 12342      fixation_cross    gabor_114 gabor_045 gabor_029 gabor_094    gabor_114 gabor_045_alt gabor_029 gabor_094_alt      "1_9_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_114_045_029_094_target_position_2_4_retrieval_position_1"         gabor_114_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_114_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  133   138   292   292   399   125  9543  2992 14342      fixation_cross    gabor_104 gabor_178 gabor_132 gabor_072    gabor_104_alt gabor_178 gabor_132 gabor_072_alt     "1_10_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_104_178_132_072_target_position_1_4_retrieval_position_1"         gabor_104_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_104_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  147   152   292   292   399   125  9543  2992 12342      fixation_cross    gabor_173 gabor_091 gabor_041 gabor_011    gabor_173_alt gabor_091 gabor_041_alt gabor_011     "1_11_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_173_091_041_011_target_position_1_3_retrieval_position_1"         gabor_128_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_128_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  160   166   292   292   399   125 11543  2992 14342      fixation_cross    gabor_079 gabor_113 gabor_005 gabor_147    gabor_079_alt gabor_113 gabor_005_alt gabor_147     "1_12_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_079_113_005_147_target_position_1_3_retrieval_position_2"        gabor_circ gabor_163_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_163_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  175   180   292   292   399   125  9543  2992 12342      fixation_cross    gabor_027 gabor_101 gabor_174 gabor_116    gabor_027_alt gabor_101_alt gabor_174 gabor_116     "1_13_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_027_101_174_116_target_position_1_2_retrieval_position_2"         gabor_circ gabor_101_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_101_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   194   292   292   399   125 11543  2992 12342      fixation_cross    gabor_087 gabor_123 gabor_147 gabor_013    gabor_087 gabor_123_alt gabor_147 gabor_013_alt     "1_14_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_087_123_147_013_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_013_framed    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_013_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_085 gabor_136 gabor_118 gabor_174    gabor_085 gabor_136 gabor_118_alt gabor_174_alt     "1_15_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_085_136_118_174_target_position_3_4_retrieval_position_3"        gabor_circ gabor_circ gabor_118_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_118_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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