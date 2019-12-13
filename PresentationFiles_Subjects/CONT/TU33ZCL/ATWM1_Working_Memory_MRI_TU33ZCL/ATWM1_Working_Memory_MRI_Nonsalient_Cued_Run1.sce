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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_174 gabor_091 gabor_014 gabor_152    gabor_174_alt gabor_091_alt gabor_014 gabor_152      "1_1_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_174_091_014_152_target_position_3_4_retrieval_position_3"     gabor_circ gabor_circ gabor_062_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_1_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_062_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    26   292   292   399   125 11543  2992 14342      fixation_cross    gabor_089 gabor_070 gabor_031 gabor_150    gabor_089 gabor_070 gabor_031_alt gabor_150_alt      "1_2_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_089_070_031_150_target_position_1_2_retrieval_position_2"     gabor_circ gabor_070_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_2_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_070_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   35    41   292   292   399   125 11543  2992 12342      fixation_cross    gabor_168 gabor_108 gabor_088 gabor_127    gabor_168_alt gabor_108 gabor_088_alt gabor_127      "1_3_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_168_108_088_127_target_position_2_4_retrieval_position_2"     gabor_circ gabor_058_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_3_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_058_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   49    54   292   292   399   125  9543  2992 14342      fixation_cross    gabor_100 gabor_057 gabor_014 gabor_076    gabor_100 gabor_057_alt gabor_014_alt gabor_076      "1_4_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_100_057_014_076_target_position_1_4_retrieval_position_1"      gabor_100_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_4_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_100_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   63    68   292   292   399   125  9543  2992 14342      fixation_cross    gabor_086 gabor_107 gabor_141 gabor_069    gabor_086 gabor_107_alt gabor_141_alt gabor_069      "1_5_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_086_107_141_069_target_position_1_4_retrieval_position_3"      gabor_circ gabor_circ gabor_141_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_5_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_141_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   77    82   292   292   399   125  9543  2992 14342      fixation_cross    gabor_109 gabor_038 gabor_173 gabor_064    gabor_109_alt gabor_038 gabor_173 gabor_064_alt      "1_6_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_109_038_173_064_target_position_2_3_retrieval_position_2"      gabor_circ gabor_038_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_6_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_038_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   91    97   292   292   399   125 11543  2992 12342      fixation_cross    gabor_077 gabor_033 gabor_108 gabor_165    gabor_077_alt gabor_033 gabor_108 gabor_165_alt      "1_7_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_077_033_108_165_target_position_2_3_retrieval_position_3"     gabor_circ gabor_circ gabor_059_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_7_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_059_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  105   110   292   292   399   125  9543  2992 14342      fixation_cross    gabor_019 gabor_050 gabor_077 gabor_138    gabor_019 gabor_050 gabor_077_alt gabor_138_alt      "1_8_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_019_050_077_138_target_position_1_2_retrieval_position_2"      gabor_circ gabor_003_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_8_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_003_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  119   124   292   292   399   125  9543  2992 12342      fixation_cross    gabor_039 gabor_169 gabor_106 gabor_020    gabor_039 gabor_169_alt gabor_106 gabor_020_alt      "1_9_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_039_169_106_020_target_position_1_3_retrieval_position_1"      gabor_039_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_9_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_039_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  132   137   292   292   399   125  9543  2992 14342      fixation_cross    gabor_115 gabor_134 gabor_074 gabor_100    gabor_115 gabor_134 gabor_074_alt gabor_100_alt     "1_10_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_115_134_074_100_target_position_1_2_retrieval_position_3"      gabor_circ gabor_circ gabor_028_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_10_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_028_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  146   151   292   292   399   125  9543  2992 12342      fixation_cross    gabor_093 gabor_073 gabor_120 gabor_035    gabor_093 gabor_073_alt gabor_120_alt gabor_035     "1_11_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_093_073_120_035_target_position_1_4_retrieval_position_1"      gabor_142_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_11_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_142_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  159   165   292   292   399   125 11543  2992 12342      fixation_cross    gabor_153 gabor_095 gabor_036 gabor_069    gabor_153_alt gabor_095_alt gabor_036 gabor_069     "1_12_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_153_095_036_069_target_position_3_4_retrieval_position_1"     gabor_153_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_12_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_153_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  173   179   292   292   399   125 11543  2992 14342      fixation_cross    gabor_039 gabor_174 gabor_154 gabor_101    gabor_039_alt gabor_174 gabor_154_alt gabor_101     "1_13_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_039_174_154_101_target_position_2_4_retrieval_position_2"     gabor_circ gabor_124_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_13_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_124_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   193   292   292   399   125  9543  2992 14342      fixation_cross    gabor_002 gabor_080 gabor_050 gabor_167    gabor_002 gabor_080 gabor_050_alt gabor_167_alt     "1_14_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_002_080_050_167_target_position_1_2_retrieval_position_1"      gabor_002_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_14_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_002_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_056 gabor_139 gabor_089 gabor_033    gabor_056 gabor_139 gabor_089_alt gabor_033_alt     "1_15_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_056_139_089_033_target_position_1_2_retrieval_position_2"     gabor_circ gabor_139_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_15_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_139_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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