# ATWM1 MRI Experiment
                         
scenario = "ATWM1_Working_Memory_MRI_nonsalient_cued_run1";
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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_042 gabor_148 gabor_116 gabor_090    gabor_042 gabor_148 gabor_116_alt gabor_090_alt      "1_1_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_042_148_116_090_target_position_1_2_retrieval_position_2"     gabor_circ gabor_148_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_1_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_148_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    25   292   292   399   125  9543  2992 12342      fixation_cross    gabor_160 gabor_009 gabor_027 gabor_139    gabor_160 gabor_009_alt gabor_027 gabor_139_alt      "1_2_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_160_009_027_139_target_position_1_3_retrieval_position_1"      gabor_115_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_2_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_115_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   33    38   292   292   399   125  9543  2992 14342      fixation_cross    gabor_166 gabor_036 gabor_142 gabor_105    gabor_166 gabor_036 gabor_142_alt gabor_105_alt      "1_3_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_166_036_142_105_target_position_1_2_retrieval_position_1"      gabor_121_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_3_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_121_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   47    52   292   292   399   125  9543  2992 12342      fixation_cross    gabor_068 gabor_022 gabor_173 gabor_133    gabor_068 gabor_022_alt gabor_173 gabor_133_alt      "1_4_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_068_022_173_133_target_position_1_3_retrieval_position_2"      gabor_circ gabor_157_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_4_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_157_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   60    66   292   292   399   125 11543  2992 12342      fixation_cross    gabor_112 gabor_024 gabor_130 gabor_053    gabor_112 gabor_024_alt gabor_130_alt gabor_053      "1_5_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_112_024_130_053_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_053_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_5_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_053_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   74    80   292   292   399   125 11543  2992 14342      fixation_cross    gabor_108 gabor_171 gabor_038 gabor_143    gabor_108 gabor_171_alt gabor_038 gabor_143_alt      "1_6_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_108_171_038_143_target_position_1_3_retrieval_position_1"     gabor_108_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_6_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_108_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   89    95   292   292   399   125 11543  2992 14342      fixation_cross    gabor_166 gabor_137 gabor_099 gabor_026    gabor_166 gabor_137_alt gabor_099_alt gabor_026      "1_7_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_166_137_099_026_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_076_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_7_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_076_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  104   110   292   292   399   125 11543  2992 12342      fixation_cross    gabor_109 gabor_127 gabor_061 gabor_173    gabor_109 gabor_127_alt gabor_061_alt gabor_173      "1_8_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_109_127_061_173_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_173_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_8_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_173_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  118   123   292   292   399   125  9543  2992 12342      fixation_cross    gabor_034 gabor_078 gabor_096 gabor_058    gabor_034_alt gabor_078 gabor_096 gabor_058_alt      "1_9_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_034_078_096_058_target_position_2_3_retrieval_position_2"      gabor_circ gabor_124_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_9_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_124_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  131   136   292   292   399   125  9543  2992 14342      fixation_cross    gabor_138 gabor_061 gabor_118 gabor_028    gabor_138 gabor_061_alt gabor_118 gabor_028_alt     "1_10_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_138_061_118_028_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_168_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_10_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_168_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  145   151   292   292   399   125 11543  2992 12342      fixation_cross    gabor_132 gabor_020 gabor_149 gabor_001    gabor_132_alt gabor_020_alt gabor_149 gabor_001     "1_11_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_132_020_149_001_target_position_3_4_retrieval_position_1"     gabor_132_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_11_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_132_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  159   165   292   292   399   125 11543  2992 14342      fixation_cross    gabor_087 gabor_018 gabor_128 gabor_050    gabor_087_alt gabor_018_alt gabor_128 gabor_050     "1_12_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_087_018_128_050_target_position_3_4_retrieval_position_3"     gabor_circ gabor_circ gabor_128_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_12_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_128_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  174   179   292   292   399   125  9543  2992 14342      fixation_cross    gabor_162 gabor_089 gabor_141 gabor_118    gabor_162 gabor_089_alt gabor_141_alt gabor_118     "1_13_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_162_089_141_118_target_position_1_4_retrieval_position_3"      gabor_circ gabor_circ gabor_141_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_13_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_141_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   193   292   292   399   125  9543  2992 14342      fixation_cross    gabor_171 gabor_013 gabor_131 gabor_153    gabor_171 gabor_013 gabor_131_alt gabor_153_alt     "1_14_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_171_013_131_153_target_position_1_2_retrieval_position_2"      gabor_circ gabor_063_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_14_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_063_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_161 gabor_110 gabor_080 gabor_048    gabor_161_alt gabor_110 gabor_080_alt gabor_048     "1_15_Encoding_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_161_110_080_048_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_048_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_15_Retrieval_Working_Memory_MRI_P8_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_048_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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