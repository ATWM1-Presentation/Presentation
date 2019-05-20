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
    6    11   292   292   399   125  9543  2992 12342      fixation_cross    gabor_173 gabor_109 gabor_146 gabor_087    gabor_173_alt gabor_109 gabor_146_alt gabor_087      "1_1_Encoding_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_173_109_146_087_target_position_1_3_retrieval_position_1"         gabor_173_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_173_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   19    24   292   292   399   125  9543  2992 14342      fixation_cross    gabor_044 gabor_126 gabor_084 gabor_154    gabor_044 gabor_126 gabor_084_alt gabor_154_alt      "1_2_Encoding_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_044_126_084_154_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_154_framed    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_154_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   33    39   292   292   399   125 11543  2992 12342      fixation_cross    gabor_081 gabor_100 gabor_018 gabor_038    gabor_081_alt gabor_100 gabor_018_alt gabor_038      "1_3_Encoding_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_081_100_018_038_target_position_1_3_retrieval_position_1"        gabor_126_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_126_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   47    53   292   292   399   125 11543  2992 12342      fixation_cross    gabor_025 gabor_066 gabor_051 gabor_176    gabor_025 gabor_066 gabor_051_alt gabor_176_alt      "1_4_Encoding_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_025_066_051_176_target_position_3_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_176_framed    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_176_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   61    66   292   292   399   125  9543  2992 12342      fixation_cross    gabor_059 gabor_177 gabor_102 gabor_147    gabor_059_alt gabor_177 gabor_102_alt gabor_147      "1_5_Encoding_Working_Memory_MRI_P3_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_059_177_102_147_target_position_1_3_retrieval_position_2"         gabor_circ gabor_177_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P3_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_177_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   74    79   292   292   399   125  9543  2992 14342      fixation_cross    gabor_118 gabor_137 gabor_157 gabor_029    gabor_118_alt gabor_137 gabor_157_alt gabor_029      "1_6_Encoding_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_118_137_157_029_target_position_1_3_retrieval_position_1"         gabor_118_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_118_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   88    94   292   292   399   125 11543  2992 12342      fixation_cross    gabor_047 gabor_109 gabor_083 gabor_134    gabor_047_alt gabor_109 gabor_083 gabor_134_alt      "1_7_Encoding_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_047_109_083_134_target_position_1_4_retrieval_position_1"        gabor_001_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_001_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  102   107   292   292   399   125  9543  2992 14342      fixation_cross    gabor_004 gabor_021 gabor_127 gabor_045    gabor_004_alt gabor_021_alt gabor_127 gabor_045      "1_8_Encoding_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_004_021_127_045_target_position_1_2_retrieval_position_2"         gabor_circ gabor_067_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_067_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  116   121   292   292   399   125  9543  2992 14342      fixation_cross    gabor_138 gabor_007 gabor_048 gabor_065    gabor_138 gabor_007_alt gabor_048_alt gabor_065      "1_9_Encoding_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_138_007_048_065_target_position_2_3_retrieval_position_3"         gabor_circ gabor_circ gabor_048_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_048_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  130   135   292   292   399   125  9543  2992 12342      fixation_cross    gabor_121 gabor_016 gabor_067 gabor_137    gabor_121 gabor_016_alt gabor_067 gabor_137_alt     "1_10_Encoding_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_121_016_067_137_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_137_framed    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P3_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_137_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  143   149   292   292   399   125 11543  2992 14342      fixation_cross    gabor_045 gabor_133 gabor_012 gabor_085    gabor_045_alt gabor_133_alt gabor_012 gabor_085     "1_11_Encoding_Working_Memory_MRI_P3_RL_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_045_133_012_085_target_position_1_2_retrieval_position_3"        gabor_circ gabor_circ gabor_012_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P3_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_012_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  158   164   292   292   399   125 11543  2992 14342      fixation_cross    gabor_161 gabor_025 gabor_132 gabor_101    gabor_161_alt gabor_025_alt gabor_132 gabor_101     "1_12_Encoding_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_161_025_132_101_target_position_1_2_retrieval_position_2"        gabor_circ gabor_071_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_071_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  173   179   292   292   399   125 11543  2992 14342      fixation_cross    gabor_139 gabor_121 gabor_177 gabor_001    gabor_139_alt gabor_121 gabor_177 gabor_001_alt     "1_13_Encoding_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_139_121_177_001_target_position_1_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_049_framed    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_049_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   194   292   292   399   125 11543  2992 12342      fixation_cross    gabor_031 gabor_178 gabor_118 gabor_139    gabor_031_alt gabor_178 gabor_118_alt gabor_139     "1_14_Encoding_Working_Memory_MRI_P3_RL_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_031_178_118_139_target_position_1_3_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_089_framed    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P3_RL_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_089_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_041 gabor_147 gabor_022 gabor_063    gabor_041 gabor_147 gabor_022_alt gabor_063_alt     "1_15_Encoding_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_041_147_022_063_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_109_framed    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P3_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_109_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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