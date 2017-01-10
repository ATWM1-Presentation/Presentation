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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_041 gabor_007 gabor_146 gabor_127    gabor_041 gabor_007 gabor_146_alt gabor_127_alt      "1_1_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_041_007_146_127_target_position_1_2_retrieval_position_2"      gabor_circ gabor_007_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_007_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   20    25   292   292   399   125  9543  2992 12342      fixation_cross    gabor_138 gabor_024 gabor_052 gabor_166    gabor_138 gabor_024 gabor_052_alt gabor_166_alt      "1_2_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_138_024_052_166_target_position_1_2_retrieval_position_1"      gabor_001_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_001_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   33    38   292   292   399   125  9543  2992 14342      fixation_cross    gabor_098 gabor_160 gabor_053 gabor_073    gabor_098_alt gabor_160 gabor_053_alt gabor_073      "1_3_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_098_160_053_073_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_073_framed    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_073_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   47    52   292   292   399   125  9543  2992 12342      fixation_cross    gabor_140 gabor_122 gabor_100 gabor_156    gabor_140_alt gabor_122 gabor_100_alt gabor_156      "1_4_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_140_122_100_156_target_position_2_4_retrieval_position_2"      gabor_circ gabor_122_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_122_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   60    65   292   292   399   125  9543  2992 14342      fixation_cross    gabor_060 gabor_143 gabor_024 gabor_098    gabor_060_alt gabor_143 gabor_024 gabor_098_alt      "1_5_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_060_143_024_098_target_position_2_3_retrieval_position_2"      gabor_circ gabor_143_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_143_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   74    80   292   292   399   125 11543  2992 12342      fixation_cross    gabor_025 gabor_154 gabor_043 gabor_131    gabor_025 gabor_154 gabor_043_alt gabor_131_alt      "1_6_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_025_154_043_131_target_position_1_2_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_131_framed    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_131_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   88    94   292   292   399   125 11543  2992 14342      fixation_cross    gabor_169 gabor_013 gabor_055 gabor_039    gabor_169 gabor_013 gabor_055_alt gabor_039_alt      "1_7_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_169_013_055_039_target_position_1_2_retrieval_position_1"     gabor_119_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_119_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  103   109   292   292   399   125 11543  2992 12342      fixation_cross    gabor_034 gabor_064 gabor_092 gabor_144    gabor_034 gabor_064_alt gabor_092_alt gabor_144      "1_8_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_034_064_092_144_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_005_framed    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_005_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  117   122   292   292   399   125  9543  2992 14342      fixation_cross    gabor_083 gabor_171 gabor_019 gabor_058    gabor_083_alt gabor_171 gabor_019_alt gabor_058      "1_9_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_083_171_019_058_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_104_framed    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_104_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  131   137   292   292   399   125 11543  2992 14342      fixation_cross    gabor_082 gabor_098 gabor_171 gabor_013    gabor_082 gabor_098 gabor_171_alt gabor_013_alt     "1_10_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_082_098_171_013_target_position_1_2_retrieval_position_1"     gabor_035_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_035_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  146   151   292   292   399   125  9543  2992 14342      fixation_cross    gabor_061 gabor_032 gabor_080 gabor_145    gabor_061_alt gabor_032 gabor_080 gabor_145_alt     "1_11_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_061_032_080_145_target_position_2_3_retrieval_position_1"      gabor_061_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_061_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  160   166   292   292   399   125 11543  2992 12342      fixation_cross    gabor_118 gabor_030 gabor_095 gabor_152    gabor_118 gabor_030_alt gabor_095 gabor_152_alt     "1_12_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_118_030_095_152_target_position_1_3_retrieval_position_1"     gabor_118_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_118_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  174   180   292   292   399   125 11543  2992 14342      fixation_cross    gabor_134 gabor_070 gabor_089 gabor_021    gabor_134 gabor_070_alt gabor_089_alt gabor_021     "1_13_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_134_070_089_021_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_160_framed    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_160_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  189   194   292   292   399   125  9543  2992 12342      fixation_cross    gabor_049 gabor_165 gabor_099 gabor_075    gabor_049_alt gabor_165_alt gabor_099 gabor_075     "1_14_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_049_165_099_075_target_position_3_4_retrieval_position_2"      gabor_circ gabor_027_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_027_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_120 gabor_052 gabor_092 gabor_073    gabor_120_alt gabor_052 gabor_092_alt gabor_073     "1_15_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_120_052_092_073_target_position_2_4_retrieval_position_2"     gabor_circ gabor_052_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_052_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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