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
    6    12   292   292   399   125 11543  2992 14342      fixation_cross    gabor_176 gabor_067 gabor_045 gabor_005    gabor_176 gabor_067_alt gabor_045 gabor_005_alt      "1_1_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_176_067_045_005_target_position_1_3_retrieval_position_1"     gabor_129_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_129_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   21    26   292   292   399   125  9543  2992 14342      fixation_cross    gabor_144 gabor_055 gabor_003 gabor_035    gabor_144_alt gabor_055 gabor_003_alt gabor_035      "1_2_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_144_055_003_035_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_172_framed    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_172_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   35    40   292   292   399   125  9543  2992 14342      fixation_cross    gabor_014 gabor_059 gabor_098 gabor_079    gabor_014_alt gabor_059_alt gabor_098 gabor_079      "1_3_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_014_059_098_079_target_position_3_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_079_framed    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_079_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   49    55   292   292   399   125 11543  2992 14342      fixation_cross    gabor_068 gabor_118 gabor_179 gabor_052    gabor_068_alt gabor_118 gabor_179_alt gabor_052      "1_4_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_068_118_179_052_target_position_2_4_retrieval_position_3"     gabor_circ gabor_circ gabor_134_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_134_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   64    69   292   292   399   125  9543  2992 12342      fixation_cross    gabor_055 gabor_020 gabor_175 gabor_142    gabor_055 gabor_020_alt gabor_175_alt gabor_142      "1_5_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_055_020_175_142_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_093_framed    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_093_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   77    83   292   292   399   125 11543  2992 12342      fixation_cross    gabor_159 gabor_053 gabor_023 gabor_089    gabor_159_alt gabor_053_alt gabor_023 gabor_089      "1_6_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_159_053_023_089_target_position_3_4_retrieval_position_3"     gabor_circ gabor_circ gabor_023_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_023_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   91    97   292   292   399   125 11543  2992 12342      fixation_cross    gabor_066 gabor_042 gabor_090 gabor_014    gabor_066_alt gabor_042 gabor_090 gabor_014_alt      "1_7_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_066_042_090_014_target_position_2_3_retrieval_position_2"     gabor_circ gabor_177_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_177_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  105   110   292   292   399   125  9543  2992 14342      fixation_cross    gabor_142 gabor_126 gabor_054 gabor_036    gabor_142_alt gabor_126 gabor_054_alt gabor_036      "1_8_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_142_126_054_036_target_position_2_4_retrieval_position_2"      gabor_circ gabor_126_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_126_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  119   124   292   292   399   125  9543  2992 12342      fixation_cross    gabor_088 gabor_020 gabor_055 gabor_139    gabor_088_alt gabor_020 gabor_055_alt gabor_139      "1_9_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_088_020_055_139_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_139_framed    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_139_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  132   137   292   292   399   125  9543  2992 14342      fixation_cross    gabor_037 gabor_163 gabor_095 gabor_180    gabor_037 gabor_163_alt gabor_095_alt gabor_180     "1_10_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_037_163_095_180_target_position_1_4_retrieval_position_2"      gabor_circ gabor_163_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_163_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  146   152   292   292   399   125 11543  2992 12342      fixation_cross    gabor_084 gabor_124 gabor_172 gabor_019    gabor_084_alt gabor_124 gabor_172 gabor_019_alt     "1_11_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_084_124_172_019_target_position_2_3_retrieval_position_3"     gabor_circ gabor_circ gabor_036_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_036_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  160   166   292   292   399   125 11543  2992 12342      fixation_cross    gabor_003 gabor_075 gabor_180 gabor_030    gabor_003 gabor_075_alt gabor_180 gabor_030_alt     "1_12_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_003_075_180_030_target_position_1_3_retrieval_position_1"     gabor_003_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_003_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  174   179   292   292   399   125  9543  2992 14342      fixation_cross    gabor_071 gabor_100 gabor_055 gabor_029    gabor_071_alt gabor_100_alt gabor_055 gabor_029     "1_13_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_071_100_055_029_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_010_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_010_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   194   292   292   399   125 11543  2992 14342      fixation_cross    gabor_109 gabor_153 gabor_025 gabor_170    gabor_109 gabor_153 gabor_025_alt gabor_170_alt     "1_14_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_109_153_025_170_target_position_1_2_retrieval_position_1"     gabor_109_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_109_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  203   208   292   292   399   125  9543  2992 12342      fixation_cross    gabor_022 gabor_131 gabor_098 gabor_077    gabor_022_alt gabor_131 gabor_098 gabor_077_alt     "1_15_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_022_131_098_077_target_position_2_3_retrieval_position_1"      gabor_022_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_022_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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