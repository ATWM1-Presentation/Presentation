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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_122 gabor_083 gabor_059 gabor_041    gabor_122 gabor_083 gabor_059_alt gabor_041_alt      "1_1_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_122_083_059_041_target_position_1_2_retrieval_position_1"      gabor_172_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_172_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    25   292   292   399   125  9543  2992 14342      fixation_cross    gabor_067 gabor_038 gabor_178 gabor_089    gabor_067 gabor_038_alt gabor_178_alt gabor_089      "1_2_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_067_038_178_089_target_position_1_4_retrieval_position_1"      gabor_067_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_067_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   34    39   292   292   399   125  9543  2992 12342      fixation_cross    gabor_125 gabor_086 gabor_142 gabor_011    gabor_125_alt gabor_086 gabor_142 gabor_011_alt      "1_3_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_125_086_142_011_target_position_2_3_retrieval_position_2"      gabor_circ gabor_036_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_036_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   47    52   292   292   399   125  9543  2992 14342      fixation_cross    gabor_093 gabor_138 gabor_053 gabor_025    gabor_093 gabor_138_alt gabor_053 gabor_025_alt      "1_4_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_093_138_053_025_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_053_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_053_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   61    67   292   292   399   125 11543  2992 12342      fixation_cross    gabor_052 gabor_020 gabor_098 gabor_130    gabor_052_alt gabor_020 gabor_098 gabor_130_alt      "1_5_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_052_020_098_130_target_position_2_3_retrieval_position_2"     gabor_circ gabor_068_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_068_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   75    80   292   292   399   125  9543  2992 12342      fixation_cross    gabor_004 gabor_066 gabor_030 gabor_051    gabor_004_alt gabor_066_alt gabor_030 gabor_051      "1_6_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_004_066_030_051_target_position_3_4_retrieval_position_2"      gabor_circ gabor_114_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_114_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   88    94   292   292   399   125 11543  2992 14342      fixation_cross    gabor_157 gabor_047 gabor_022 gabor_075    gabor_157 gabor_047_alt gabor_022_alt gabor_075      "1_7_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_157_047_022_075_target_position_1_4_retrieval_position_1"     gabor_157_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_157_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  103   109   292   292   399   125 11543  2992 14342      fixation_cross    gabor_136 gabor_086 gabor_157 gabor_113    gabor_136 gabor_086_alt gabor_157_alt gabor_113      "1_8_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_136_086_157_113_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_113_framed    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_113_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  118   123   292   292   399   125  9543  2992 14342      fixation_cross    gabor_078 gabor_146 gabor_123 gabor_168    gabor_078_alt gabor_146 gabor_123_alt gabor_168      "1_9_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_078_146_123_168_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_033_framed    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_033_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  132   138   292   292   399   125 11543  2992 12342      fixation_cross    gabor_011 gabor_125 gabor_087 gabor_040    gabor_011_alt gabor_125 gabor_087_alt gabor_040     "1_10_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_011_125_087_040_target_position_2_4_retrieval_position_2"     gabor_circ gabor_172_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_172_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  146   151   292   292   399   125  9543  2992 12342      fixation_cross    gabor_039 gabor_013 gabor_129 gabor_147    gabor_039 gabor_013_alt gabor_129_alt gabor_147     "1_11_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_039_013_129_147_target_position_1_4_retrieval_position_3"      gabor_circ gabor_circ gabor_129_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_129_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  159   164   292   292   399   125  9543  2992 14342      fixation_cross    gabor_032 gabor_143 gabor_166 gabor_103    gabor_032 gabor_143_alt gabor_166 gabor_103_alt     "1_12_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_032_143_166_103_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_166_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_166_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  173   179   292   292   399   125 11543  2992 14342      fixation_cross    gabor_015 gabor_069 gabor_155 gabor_131    gabor_015_alt gabor_069 gabor_155 gabor_131_alt     "1_13_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_015_069_155_131_target_position_2_3_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_131_framed    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_131_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   194   292   292   399   125 11543  2992 12342      fixation_cross    gabor_111 gabor_087 gabor_176 gabor_127    gabor_111 gabor_087_alt gabor_176 gabor_127_alt     "1_14_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_111_087_176_127_target_position_1_3_retrieval_position_3"     gabor_circ gabor_circ gabor_176_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_176_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_154 gabor_073 gabor_104 gabor_035    gabor_154 gabor_073 gabor_104_alt gabor_035_alt     "1_15_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_154_073_104_035_target_position_1_2_retrieval_position_2"     gabor_circ gabor_122_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_122_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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