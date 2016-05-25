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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_174 gabor_069 gabor_009 gabor_092    gabor_174_alt gabor_069_alt gabor_009 gabor_092      "1_1_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_174_069_009_092_target_position_1_2_retrieval_position_2"        gabor_circ gabor_069_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_069_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   20    26   292   292   399   125 11543  2992 14342      fixation_cross    gabor_046 gabor_028 gabor_095 gabor_074    gabor_046 gabor_028_alt gabor_095_alt gabor_074      "1_2_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_046_028_095_074_target_position_2_3_retrieval_position_2"        gabor_circ gabor_163_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_163_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   35    40   292   292   399   125  9543  2992 12342      fixation_cross    gabor_016 gabor_131 gabor_154 gabor_102    gabor_016_alt gabor_131 gabor_154_alt gabor_102      "1_3_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_016_131_154_102_target_position_1_3_retrieval_position_1"         gabor_016_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_016_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   48    54   292   292   399   125 11543  2992 12342      fixation_cross    gabor_067 gabor_106 gabor_150 gabor_034    gabor_067_alt gabor_106 gabor_150 gabor_034_alt      "1_4_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_067_106_150_034_target_position_1_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_034_framed    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_034_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   62    67   292   292   399   125  9543  2992 14342      fixation_cross    gabor_176 gabor_052 gabor_125 gabor_015    gabor_176 gabor_052 gabor_125_alt gabor_015_alt      "1_5_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_176_052_125_015_target_position_3_4_retrieval_position_2"         gabor_circ gabor_100_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_100_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   76    81   292   292   399   125  9543  2992 12342      fixation_cross    gabor_125 gabor_162 gabor_008 gabor_083    gabor_125_alt gabor_162 gabor_008_alt gabor_083      "1_6_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_125_162_008_083_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_008_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_008_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   89    94   292   292   399   125  9543  2992 14342      fixation_cross    gabor_039 gabor_178 gabor_100 gabor_072    gabor_039 gabor_178_alt gabor_100 gabor_072_alt      "1_7_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_039_178_100_072_target_position_2_4_retrieval_position_2"         gabor_circ gabor_128_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_128_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  103   109   292   292   399   125 11543  2992 14342      fixation_cross    gabor_146 gabor_171 gabor_037 gabor_012    gabor_146 gabor_171_alt gabor_037 gabor_012_alt      "1_8_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_146_171_037_012_target_position_2_4_retrieval_position_3"        gabor_circ gabor_circ gabor_037_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_037_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  118   123   292   292   399   125  9543  2992 14342      fixation_cross    gabor_071 gabor_180 gabor_156 gabor_005    gabor_071_alt gabor_180 gabor_156 gabor_005_alt      "1_9_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_071_180_156_005_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_005_framed    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_005_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  132   137   292   292   399   125  9543  2992 12342      fixation_cross    gabor_027 gabor_141 gabor_012 gabor_162    gabor_027_alt gabor_141_alt gabor_012 gabor_162     "1_10_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_027_141_012_162_target_position_1_2_retrieval_position_1"         gabor_073_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_073_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  145   151   292   292   399   125 11543  2992 14342      fixation_cross    gabor_118 gabor_039 gabor_073 gabor_153    gabor_118 gabor_039_alt gabor_073_alt gabor_153     "1_11_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_118_039_073_153_target_position_2_3_retrieval_position_2"        gabor_circ gabor_089_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_089_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  160   166   292   292   399   125 11543  2992 14342      fixation_cross    gabor_115 gabor_090 gabor_034 gabor_145    gabor_115 gabor_090_alt gabor_034_alt gabor_145     "1_12_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_115_090_034_145_target_position_2_3_retrieval_position_3"        gabor_circ gabor_circ gabor_169_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_169_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  175   180   292   292   399   125  9543  2992 12342      fixation_cross    gabor_118 gabor_148 gabor_090 gabor_063    gabor_118_alt gabor_148_alt gabor_090 gabor_063     "1_13_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_118_148_090_063_target_position_1_2_retrieval_position_2"         gabor_circ gabor_148_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_148_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  188   194   292   292   399   125 11543  2992 14342      fixation_cross    gabor_169 gabor_024 gabor_091 gabor_140    gabor_169_alt gabor_024 gabor_091_alt gabor_140     "1_14_Encoding_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_169_024_091_140_target_position_1_3_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_140_framed    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P5_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_140_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  203   208   292   292   399   125  9543  2992 12342      fixation_cross    gabor_091 gabor_172 gabor_058 gabor_036    gabor_091 gabor_172_alt gabor_058_alt gabor_036     "1_15_Encoding_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_091_172_058_036_target_position_2_3_retrieval_position_3"         gabor_circ gabor_circ gabor_010_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P5_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_010_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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