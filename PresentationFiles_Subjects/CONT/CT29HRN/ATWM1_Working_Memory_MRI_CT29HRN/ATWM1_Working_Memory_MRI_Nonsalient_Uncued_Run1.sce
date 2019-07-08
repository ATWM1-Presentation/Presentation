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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_121 gabor_001 gabor_040 gabor_162    gabor_121 gabor_001 gabor_040_alt gabor_162_alt      "1_1_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_121_001_040_162_target_position_1_2_retrieval_position_1"      gabor_121_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_121_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    26   292   292   399   125 11543  2992 14342      fixation_cross    gabor_127 gabor_066 gabor_088 gabor_014    gabor_127_alt gabor_066 gabor_088 gabor_014_alt      "1_2_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_127_066_088_014_target_position_2_3_retrieval_position_3"     gabor_circ gabor_circ gabor_088_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_088_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   35    41   292   292   399   125 11543  2992 12342      fixation_cross    gabor_038 gabor_023 gabor_098 gabor_179    gabor_038 gabor_023 gabor_098_alt gabor_179_alt      "1_3_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_038_023_098_179_target_position_1_2_retrieval_position_2"     gabor_circ gabor_023_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_023_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   49    55   292   292   399   125 11543  2992 14342      fixation_cross    gabor_040 gabor_102 gabor_025 gabor_065    gabor_040_alt gabor_102 gabor_025_alt gabor_065      "1_4_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_040_102_025_065_target_position_2_4_retrieval_position_2"     gabor_circ gabor_102_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_102_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   64    69   292   292   399   125  9543  2992 12342      fixation_cross    gabor_003 gabor_168 gabor_143 gabor_108    gabor_003_alt gabor_168 gabor_143 gabor_108_alt      "1_5_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_003_168_143_108_target_position_2_3_retrieval_position_2"      gabor_circ gabor_168_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_168_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   77    82   292   292   399   125  9543  2992 12342      fixation_cross    gabor_099 gabor_043 gabor_077 gabor_019    gabor_099 gabor_043_alt gabor_077 gabor_019_alt      "1_6_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_099_043_077_019_target_position_1_3_retrieval_position_1"      gabor_149_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_149_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   90    96   292   292   399   125 11543  2992 14342      fixation_cross    gabor_134 gabor_009 gabor_051 gabor_167    gabor_134 gabor_009 gabor_051_alt gabor_167_alt      "1_7_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_134_009_051_167_target_position_1_2_retrieval_position_3"     gabor_circ gabor_circ gabor_099_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_099_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  105   110   292   292   399   125  9543  2992 12342      fixation_cross    gabor_053 gabor_102 gabor_077 gabor_032    gabor_053 gabor_102_alt gabor_077_alt gabor_032      "1_8_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_053_102_077_032_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_167_framed    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_167_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  118   124   292   292   399   125 11543  2992 14342      fixation_cross    gabor_081 gabor_041 gabor_001 gabor_109    gabor_081_alt gabor_041_alt gabor_001 gabor_109      "1_9_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_081_041_001_109_target_position_3_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_062_framed    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_062_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  133   138   292   292   399   125  9543  2992 12342      fixation_cross    gabor_065 gabor_097 gabor_170 gabor_049    gabor_065_alt gabor_097_alt gabor_170 gabor_049     "1_10_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_065_097_170_049_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_125_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_125_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  146   152   292   292   399   125 11543  2992 14342      fixation_cross    gabor_004 gabor_045 gabor_165 gabor_029    gabor_004 gabor_045 gabor_165_alt gabor_029_alt     "1_11_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_004_045_165_029_target_position_1_2_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_029_framed    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_029_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  161   166   292   292   399   125  9543  2992 14342      fixation_cross    gabor_105 gabor_164 gabor_139 gabor_031    gabor_105_alt gabor_164_alt gabor_139 gabor_031     "1_12_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_105_164_139_031_target_position_3_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_081_framed    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_081_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  175   180   292   292   399   125  9543  2992 12342      fixation_cross    gabor_033 gabor_115 gabor_070 gabor_087    gabor_033 gabor_115_alt gabor_070_alt gabor_087     "1_13_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_033_115_070_087_target_position_1_4_retrieval_position_2"      gabor_circ gabor_115_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_115_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   194   292   292   399   125 11543  2992 14342      fixation_cross    gabor_083 gabor_064 gabor_014 gabor_153    gabor_083 gabor_064 gabor_014_alt gabor_153_alt     "1_14_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_083_064_014_153_target_position_1_2_retrieval_position_1"     gabor_083_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_083_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  203   208   292   292   399   125  9543  2992 12342      fixation_cross    gabor_132 gabor_094 gabor_116 gabor_149    gabor_132 gabor_094_alt gabor_116_alt gabor_149     "1_15_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_132_094_116_149_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_010_framed    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_010_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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