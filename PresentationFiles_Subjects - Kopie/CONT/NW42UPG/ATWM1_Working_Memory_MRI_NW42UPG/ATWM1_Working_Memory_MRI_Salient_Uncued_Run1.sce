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
    6    11   292   292   399   125  9543  2992 12342      fixation_cross    gabor_178 gabor_019 gabor_163 gabor_136    gabor_178 gabor_019_alt gabor_163 gabor_136_alt      "1_1_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_178_019_163_136_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_089_framed    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_089_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   19    24   292   292   399   125  9543  2992 14342      fixation_cross    gabor_011 gabor_141 gabor_028 gabor_160    gabor_011_alt gabor_141 gabor_028_alt gabor_160      "1_2_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_011_141_028_160_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_028_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_028_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   33    38   292   292   399   125  9543  2992 14342      fixation_cross    gabor_098 gabor_165 gabor_011 gabor_031    gabor_098_alt gabor_165_alt gabor_011 gabor_031      "1_3_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_098_165_011_031_target_position_1_2_retrieval_position_2"         gabor_circ gabor_165_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_165_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   47    52   292   292   399   125  9543  2992 12342      fixation_cross    gabor_141 gabor_070 gabor_051 gabor_027    gabor_141_alt gabor_070_alt gabor_051 gabor_027      "1_4_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_141_070_051_027_target_position_1_2_retrieval_position_2"         gabor_circ gabor_070_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_070_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   60    66   292   292   399   125 11543  2992 14342      fixation_cross    gabor_043 gabor_018 gabor_104 gabor_129    gabor_043_alt gabor_018_alt gabor_104 gabor_129      "1_5_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_043_018_104_129_target_position_1_2_retrieval_position_3"        gabor_circ gabor_circ gabor_104_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_104_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   75    81   292   292   399   125 11543  2992 14342      fixation_cross    gabor_068 gabor_019 gabor_178 gabor_131    gabor_068 gabor_019_alt gabor_178_alt gabor_131      "1_6_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_068_019_178_131_target_position_2_3_retrieval_position_2"        gabor_circ gabor_156_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_156_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   90    96   292   292   399   125 11543  2992 14342      fixation_cross    gabor_172 gabor_113 gabor_066 gabor_131    gabor_172_alt gabor_113 gabor_066 gabor_131_alt      "1_7_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_172_113_066_131_target_position_1_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_084_framed    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_084_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  105   111   292   292   399   125 11543  2992 14342      fixation_cross    gabor_027 gabor_110 gabor_043 gabor_178    gabor_027_alt gabor_110 gabor_043_alt gabor_178      "1_8_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_027_110_043_178_target_position_1_3_retrieval_position_3"        gabor_circ gabor_circ gabor_043_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_043_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  120   126   292   292   399   125 11543  2992 12342      fixation_cross    gabor_021 gabor_147 gabor_058 gabor_038    gabor_021_alt gabor_147_alt gabor_058 gabor_038      "1_9_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_021_147_058_038_target_position_1_2_retrieval_position_2"        gabor_circ gabor_100_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_100_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  134   139   292   292   399   125  9543  2992 14342      fixation_cross    gabor_111 gabor_163 gabor_040 gabor_057    gabor_111 gabor_163_alt gabor_040 gabor_057_alt     "1_10_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_111_163_040_057_target_position_2_4_retrieval_position_3"         gabor_circ gabor_circ gabor_040_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_040_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  148   154   292   292   399   125 11543  2992 12342      fixation_cross    gabor_042 gabor_124 gabor_150 gabor_106    gabor_042_alt gabor_124 gabor_150 gabor_106_alt     "1_11_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_042_124_150_106_target_position_1_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_061_framed    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_061_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  162   167   292   292   399   125  9543  2992 14342      fixation_cross    gabor_171 gabor_022 gabor_101 gabor_138    gabor_171_alt gabor_022 gabor_101 gabor_138_alt     "1_12_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_171_022_101_138_target_position_1_4_retrieval_position_3"         gabor_circ gabor_circ gabor_052_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_052_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  176   181   292   292   399   125  9543  2992 12342      fixation_cross    gabor_018 gabor_049 gabor_106 gabor_033    gabor_018 gabor_049_alt gabor_106 gabor_033_alt     "1_13_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_018_049_106_033_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_033_framed    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_033_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  189   194   292   292   399   125  9543  2992 12342      fixation_cross    gabor_169 gabor_002 gabor_034 gabor_113    gabor_169 gabor_002 gabor_034_alt gabor_113_alt     "1_14_Encoding_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_169_002_034_113_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_034_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P6_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_034_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_028 gabor_093 gabor_072 gabor_157    gabor_028 gabor_093_alt gabor_072_alt gabor_157     "1_15_Encoding_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_028_093_072_157_target_position_2_3_retrieval_position_3"        gabor_circ gabor_circ gabor_118_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P6_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_118_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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