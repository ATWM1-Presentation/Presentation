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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_097 gabor_166 gabor_011 gabor_038    gabor_097 gabor_166 gabor_011_alt gabor_038_alt      "1_1_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_097_166_011_038_target_position_1_2_retrieval_position_2"      gabor_circ gabor_166_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_166_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    25   292   292   399   125  9543  2992 12342      fixation_cross    gabor_014 gabor_129 gabor_170 gabor_103    gabor_014_alt gabor_129 gabor_170_alt gabor_103      "1_2_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_014_129_170_103_target_position_2_4_retrieval_position_2"      gabor_circ gabor_084_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_084_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   33    39   292   292   399   125 11543  2992 14342      fixation_cross    gabor_159 gabor_014 gabor_130 gabor_045    gabor_159_alt gabor_014 gabor_130 gabor_045_alt      "1_3_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_159_014_130_045_target_position_2_3_retrieval_position_3"     gabor_circ gabor_circ gabor_130_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_130_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   48    54   292   292   399   125 11543  2992 12342      fixation_cross    gabor_175 gabor_086 gabor_022 gabor_049    gabor_175 gabor_086 gabor_022_alt gabor_049_alt      "1_4_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_175_086_022_049_target_position_1_2_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_002_framed    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_002_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   62    68   292   292   399   125 11543  2992 14342      fixation_cross    gabor_170 gabor_116 gabor_082 gabor_058    gabor_170 gabor_116 gabor_082_alt gabor_058_alt      "1_5_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_170_116_082_058_target_position_1_2_retrieval_position_1"     gabor_170_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_170_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   77    83   292   292   399   125 11543  2992 14342      fixation_cross    gabor_037 gabor_160 gabor_099 gabor_014    gabor_037 gabor_160 gabor_099_alt gabor_014_alt      "1_6_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_037_160_099_014_target_position_1_2_retrieval_position_1"     gabor_083_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_083_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   92    98   292   292   399   125 11543  2992 12342      fixation_cross    gabor_172 gabor_013 gabor_099 gabor_053    gabor_172 gabor_013_alt gabor_099_alt gabor_053      "1_7_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_172_013_099_053_target_position_1_4_retrieval_position_1"     gabor_172_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_172_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  106   111   292   292   399   125  9543  2992 14342      fixation_cross    gabor_094 gabor_038 gabor_175 gabor_013    gabor_094 gabor_038_alt gabor_175 gabor_013_alt      "1_8_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_094_038_175_013_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_128_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_128_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  120   125   292   292   399   125  9543  2992 14342      fixation_cross    gabor_179 gabor_047 gabor_162 gabor_015    gabor_179_alt gabor_047_alt gabor_162 gabor_015      "1_9_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_179_047_162_015_target_position_3_4_retrieval_position_2"      gabor_circ gabor_047_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_047_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  134   139   292   292   399   125  9543  2992 14342      fixation_cross    gabor_039 gabor_174 gabor_061 gabor_123    gabor_039 gabor_174_alt gabor_061 gabor_123_alt     "1_10_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_039_174_061_123_target_position_1_3_retrieval_position_1"      gabor_039_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_039_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  148   153   292   292   399   125  9543  2992 12342      fixation_cross    gabor_022 gabor_158 gabor_042 gabor_007    gabor_022_alt gabor_158_alt gabor_042 gabor_007     "1_11_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_022_158_042_007_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_091_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_091_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  161   166   292   292   399   125  9543  2992 12342      fixation_cross    gabor_034 gabor_111 gabor_074 gabor_053    gabor_034 gabor_111_alt gabor_074_alt gabor_053     "1_12_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_034_111_074_053_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_003_framed    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_003_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  174   179   292   292   399   125  9543  2992 14342      fixation_cross    gabor_171 gabor_011 gabor_062 gabor_090    gabor_171_alt gabor_011_alt gabor_062 gabor_090     "1_13_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_171_011_062_090_target_position_3_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_041_framed    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_041_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   194   292   292   399   125 11543  2992 12342      fixation_cross    gabor_062 gabor_045 gabor_094 gabor_126    gabor_062_alt gabor_045 gabor_094 gabor_126_alt     "1_14_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_062_045_094_126_target_position_2_3_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_126_framed    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_126_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_126 gabor_011 gabor_150 gabor_100    gabor_126_alt gabor_011 gabor_150_alt gabor_100     "1_15_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_126_011_150_100_target_position_2_4_retrieval_position_2"     gabor_circ gabor_011_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_011_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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