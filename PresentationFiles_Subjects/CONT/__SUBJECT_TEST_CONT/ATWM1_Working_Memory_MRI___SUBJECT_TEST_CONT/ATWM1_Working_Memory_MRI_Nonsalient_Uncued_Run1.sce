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
    6    11   292   292   399   125  9543  2992 12342      fixation_cross    gabor_106 gabor_154 gabor_127 gabor_071    gabor_106_alt gabor_154_alt gabor_127 gabor_071      "1_1_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_106_154_127_071_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_127_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_127_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   19    25   292   292   399   125 11543  2992 14342      fixation_cross    gabor_087 gabor_165 gabor_035 gabor_146    gabor_087 gabor_165_alt gabor_035_alt gabor_146      "1_2_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_087_165_035_146_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_008_framed    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_008_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   34    39   292   292   399   125  9543  2992 12342      fixation_cross    gabor_150 gabor_117 gabor_074 gabor_036    gabor_150 gabor_117 gabor_074_alt gabor_036_alt      "1_3_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_150_117_074_036_target_position_1_2_retrieval_position_1"      gabor_150_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_150_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   47    52   292   292   399   125  9543  2992 14342      fixation_cross    gabor_117 gabor_135 gabor_087 gabor_060    gabor_117_alt gabor_135_alt gabor_087 gabor_060      "1_4_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_117_135_087_060_target_position_3_4_retrieval_position_1"      gabor_117_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_117_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   61    67   292   292   399   125 11543  2992 12342      fixation_cross    gabor_092 gabor_109 gabor_050 gabor_172    gabor_092 gabor_109 gabor_050_alt gabor_172_alt      "1_5_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_092_109_050_172_target_position_1_2_retrieval_position_1"     gabor_140_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_140_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   75    81   292   292   399   125 11543  2992 14342      fixation_cross    gabor_027 gabor_176 gabor_112 gabor_090    gabor_027_alt gabor_176_alt gabor_112 gabor_090      "1_6_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_027_176_112_090_target_position_3_4_retrieval_position_3"     gabor_circ gabor_circ gabor_065_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_065_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   90    95   292   292   399   125  9543  2992 14342      fixation_cross    gabor_111 gabor_135 gabor_005 gabor_069    gabor_111 gabor_135 gabor_005_alt gabor_069_alt      "1_7_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_111_135_005_069_target_position_1_2_retrieval_position_1"      gabor_111_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_111_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  104   110   292   292   399   125 11543  2992 12342      fixation_cross    gabor_179 gabor_138 gabor_053 gabor_068    gabor_179_alt gabor_138 gabor_053 gabor_068_alt      "1_8_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_179_138_053_068_target_position_2_3_retrieval_position_3"     gabor_circ gabor_circ gabor_100_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_100_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  118   123   292   292   399   125  9543  2992 14342      fixation_cross    gabor_093 gabor_130 gabor_004 gabor_166    gabor_093 gabor_130_alt gabor_004 gabor_166_alt      "1_9_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_093_130_004_166_target_position_1_3_retrieval_position_1"      gabor_045_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_045_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  132   138   292   292   399   125 11543  2992 14342      fixation_cross    gabor_048 gabor_097 gabor_113 gabor_178    gabor_048_alt gabor_097 gabor_113_alt gabor_178     "1_10_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_048_097_113_178_target_position_2_4_retrieval_position_3"     gabor_circ gabor_circ gabor_113_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_113_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  147   152   292   292   399   125  9543  2992 12342      fixation_cross    gabor_115 gabor_053 gabor_097 gabor_068    gabor_115_alt gabor_053 gabor_097_alt gabor_068     "1_11_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_115_053_097_068_target_position_2_4_retrieval_position_2"      gabor_circ gabor_053_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_053_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  160   166   292   292   399   125 11543  2992 12342      fixation_cross    gabor_068 gabor_119 gabor_093 gabor_011    gabor_068 gabor_119_alt gabor_093_alt gabor_011     "1_12_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_068_119_093_011_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_011_framed    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_011_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  174   180   292   292   399   125 11543  2992 14342      fixation_cross    gabor_001 gabor_033 gabor_068 gabor_088    gabor_001_alt gabor_033_alt gabor_068 gabor_088     "1_13_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_001_033_068_088_target_position_3_4_retrieval_position_1"     gabor_140_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_140_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  189   194   292   292   399   125  9543  2992 12342      fixation_cross    gabor_039 gabor_105 gabor_148 gabor_022    gabor_039_alt gabor_105 gabor_148 gabor_022_alt     "1_14_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_039_105_148_022_target_position_2_3_retrieval_position_2"      gabor_circ gabor_059_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_059_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_035 gabor_087 gabor_051 gabor_176    gabor_035 gabor_087_alt gabor_051 gabor_176_alt     "1_15_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_035_087_051_176_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_051_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_051_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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