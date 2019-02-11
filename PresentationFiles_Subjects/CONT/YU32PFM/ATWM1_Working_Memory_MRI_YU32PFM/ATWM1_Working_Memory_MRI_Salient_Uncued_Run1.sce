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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_174 gabor_048 gabor_116 gabor_131    gabor_174 gabor_048_alt gabor_116 gabor_131_alt      "1_1_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_174_048_116_131_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_084_framed    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_084_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    26   292   292   399   125 11543  2992 12342      fixation_cross    gabor_094 gabor_079 gabor_166 gabor_034    gabor_094 gabor_079_alt gabor_166_alt gabor_034      "1_2_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_094_079_166_034_target_position_2_3_retrieval_position_2"        gabor_circ gabor_124_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_124_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   34    40   292   292   399   125 11543  2992 12342      fixation_cross    gabor_052 gabor_179 gabor_023 gabor_089    gabor_052_alt gabor_179 gabor_023_alt gabor_089      "1_3_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_052_179_023_089_target_position_1_3_retrieval_position_3"        gabor_circ gabor_circ gabor_023_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_023_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   48    53   292   292   399   125  9543  2992 14342      fixation_cross    gabor_044 gabor_104 gabor_074 gabor_021    gabor_044 gabor_104_alt gabor_074 gabor_021_alt      "1_4_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_044_104_074_021_target_position_2_4_retrieval_position_2"         gabor_circ gabor_104_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_104_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   62    68   292   292   399   125 11543  2992 14342      fixation_cross    gabor_036 gabor_010 gabor_177 gabor_069    gabor_036_alt gabor_010 gabor_177 gabor_069_alt      "1_5_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_036_010_177_069_target_position_1_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_069_framed    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_069_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   77    82   292   292   399   125  9543  2992 14342      fixation_cross    gabor_115 gabor_091 gabor_002 gabor_035    gabor_115 gabor_091_alt gabor_002_alt gabor_035      "1_6_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_115_091_002_035_target_position_2_3_retrieval_position_1"         gabor_115_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_115_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   91    96   292   292   399   125  9543  2992 12342      fixation_cross    gabor_169 gabor_064 gabor_141 gabor_110    gabor_169_alt gabor_064 gabor_141 gabor_110_alt      "1_7_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_169_064_141_110_target_position_1_4_retrieval_position_1"         gabor_169_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_169_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  104   110   292   292   399   125 11543  2992 14342      fixation_cross    gabor_031 gabor_003 gabor_046 gabor_164    gabor_031_alt gabor_003_alt gabor_046 gabor_164      "1_8_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_031_003_046_164_target_position_1_2_retrieval_position_1"        gabor_031_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_031_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  119   124   292   292   399   125  9543  2992 12342      fixation_cross    gabor_135 gabor_030 gabor_150 gabor_008    gabor_135_alt gabor_030 gabor_150_alt gabor_008      "1_9_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_135_030_150_008_target_position_1_3_retrieval_position_2"         gabor_circ gabor_030_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_030_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  132   137   292   292   399   125  9543  2992 14342      fixation_cross    gabor_143 gabor_090 gabor_112 gabor_176    gabor_143_alt gabor_090_alt gabor_112 gabor_176     "1_10_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_143_090_112_176_target_position_1_2_retrieval_position_1"         gabor_004_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_004_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  146   151   292   292   399   125  9543  2992 12342      fixation_cross    gabor_054 gabor_098 gabor_083 gabor_031    gabor_054_alt gabor_098 gabor_083_alt gabor_031     "1_11_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_054_098_083_031_target_position_1_3_retrieval_position_1"         gabor_054_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_054_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  159   165   292   292   399   125 11543  2992 12342      fixation_cross    gabor_055 gabor_179 gabor_120 gabor_073    gabor_055 gabor_179_alt gabor_120_alt gabor_073     "1_12_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_055_179_120_073_target_position_2_3_retrieval_position_2"        gabor_circ gabor_039_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_039_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  173   178   292   292   399   125  9543  2992 14342      fixation_cross    gabor_154 gabor_179 gabor_098 gabor_126    gabor_154_alt gabor_179 gabor_098_alt gabor_126     "1_13_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_154_179_098_126_target_position_1_3_retrieval_position_1"         gabor_015_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_015_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  187   193   292   292   399   125 11543  2992 14342      fixation_cross    gabor_085 gabor_107 gabor_123 gabor_168    gabor_085 gabor_107_alt gabor_123 gabor_168_alt     "1_14_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_085_107_123_168_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_033_framed    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_033_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_037 gabor_176 gabor_057 gabor_109    gabor_037 gabor_176_alt gabor_057 gabor_109_alt     "1_15_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_037_176_057_109_target_position_2_4_retrieval_position_1"         gabor_086_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_086_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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