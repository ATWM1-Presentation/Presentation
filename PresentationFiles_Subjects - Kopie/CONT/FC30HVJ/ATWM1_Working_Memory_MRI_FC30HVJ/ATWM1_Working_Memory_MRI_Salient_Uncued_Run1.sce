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
    6    11   292   292   399   125  9543  2992 12342      fixation_cross    gabor_002 gabor_126 gabor_070 gabor_152    gabor_002 gabor_126_alt gabor_070_alt gabor_152      "1_1_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_002_126_070_152_target_position_2_3_retrieval_position_3"         gabor_circ gabor_circ gabor_070_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_070_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   19    25   292   292   399   125 11543  2992 12342      fixation_cross    gabor_049 gabor_137 gabor_158 gabor_081    gabor_049 gabor_137_alt gabor_158_alt gabor_081      "1_2_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_049_137_158_081_target_position_2_3_retrieval_position_2"        gabor_circ gabor_137_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_137_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   33    39   292   292   399   125 11543  2992 12342      fixation_cross    gabor_090 gabor_132 gabor_053 gabor_074    gabor_090 gabor_132_alt gabor_053_alt gabor_074      "1_3_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_090_132_053_074_target_position_2_3_retrieval_position_2"        gabor_circ gabor_132_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_132_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   47    52   292   292   399   125  9543  2992 12342      fixation_cross    gabor_147 gabor_004 gabor_035 gabor_073    gabor_147 gabor_004_alt gabor_035_alt gabor_073      "1_4_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_147_004_035_073_target_position_2_3_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_073_framed    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_073_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   60    66   292   292   399   125 11543  2992 12342      fixation_cross    gabor_141 gabor_062 gabor_124 gabor_080    gabor_141_alt gabor_062 gabor_124 gabor_080_alt      "1_5_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_141_062_124_080_target_position_1_4_retrieval_position_1"        gabor_141_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_141_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   74    80   292   292   399   125 11543  2992 14342      fixation_cross    gabor_002 gabor_140 gabor_022 gabor_070    gabor_002_alt gabor_140_alt gabor_022 gabor_070      "1_6_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_002_140_022_070_target_position_1_2_retrieval_position_2"        gabor_circ gabor_091_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_091_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   89    94   292   292   399   125  9543  2992 14342      fixation_cross    gabor_023 gabor_128 gabor_040 gabor_090    gabor_023_alt gabor_128 gabor_040_alt gabor_090      "1_7_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_023_128_040_090_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_040_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_040_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  103   109   292   292   399   125 11543  2992 14342      fixation_cross    gabor_007 gabor_070 gabor_141 gabor_022    gabor_007 gabor_070_alt gabor_141_alt gabor_022      "1_8_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_007_070_141_022_target_position_2_3_retrieval_position_3"        gabor_circ gabor_circ gabor_095_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_095_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  118   123   292   292   399   125  9543  2992 12342      fixation_cross    gabor_084 gabor_055 gabor_120 gabor_099    gabor_084 gabor_055 gabor_120_alt gabor_099_alt      "1_9_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_084_055_120_099_target_position_3_4_retrieval_position_2"         gabor_circ gabor_055_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_055_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  131   137   292   292   399   125 11543  2992 14342      fixation_cross    gabor_177 gabor_035 gabor_052 gabor_068    gabor_177 gabor_035_alt gabor_052 gabor_068_alt     "1_10_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_177_035_052_068_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_118_framed    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_118_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  146   151   292   292   399   125  9543  2992 14342      fixation_cross    gabor_043 gabor_097 gabor_161 gabor_028    gabor_043 gabor_097 gabor_161_alt gabor_028_alt     "1_11_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_043_097_161_028_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_076_framed    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_076_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  160   165   292   292   399   125  9543  2992 14342      fixation_cross    gabor_090 gabor_024 gabor_108 gabor_151    gabor_090 gabor_024_alt gabor_108 gabor_151_alt     "1_12_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_090_024_108_151_target_position_2_4_retrieval_position_2"         gabor_circ gabor_024_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_024_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  174   180   292   292   399   125 11543  2992 12342      fixation_cross    gabor_134 gabor_149 gabor_112 gabor_070    gabor_134 gabor_149_alt gabor_112 gabor_070_alt     "1_13_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_134_149_112_070_target_position_2_4_retrieval_position_1"        gabor_088_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_088_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  188   193   292   292   399   125  9543  2992 14342      fixation_cross    gabor_082 gabor_116 gabor_049 gabor_098    gabor_082_alt gabor_116_alt gabor_049 gabor_098     "1_14_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_082_116_049_098_target_position_1_2_retrieval_position_2"         gabor_circ gabor_162_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_162_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_079 gabor_095 gabor_128 gabor_112    gabor_079 gabor_095_alt gabor_128 gabor_112_alt     "1_15_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_079_095_128_112_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_158_framed    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_158_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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