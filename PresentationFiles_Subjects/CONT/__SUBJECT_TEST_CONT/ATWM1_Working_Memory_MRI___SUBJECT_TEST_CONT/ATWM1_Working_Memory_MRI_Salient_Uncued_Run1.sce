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
    6    12   292   292   399   125 11543  2992 14342      fixation_cross    gabor_177 gabor_123 gabor_059 gabor_145    gabor_177_alt gabor_123 gabor_059_alt gabor_145      "1_1_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_177_123_059_145_target_position_1_3_retrieval_position_3"        gabor_circ gabor_circ gabor_010_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_010_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   21    26   292   292   399   125  9543  2992 14342      fixation_cross    gabor_073 gabor_058 gabor_121 gabor_095    gabor_073_alt gabor_058_alt gabor_121 gabor_095      "1_2_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_073_058_121_095_target_position_1_2_retrieval_position_2"         gabor_circ gabor_013_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_013_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   35    40   292   292   399   125  9543  2992 12342      fixation_cross    gabor_141 gabor_091 gabor_059 gabor_036    gabor_141_alt gabor_091 gabor_059_alt gabor_036      "1_3_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_141_091_059_036_target_position_1_3_retrieval_position_1"         gabor_002_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_002_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   48    54   292   292   399   125 11543  2992 12342      fixation_cross    gabor_088 gabor_050 gabor_035 gabor_070    gabor_088 gabor_050_alt gabor_035 gabor_070_alt      "1_4_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_088_050_035_070_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_070_framed    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_070_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   62    68   292   292   399   125 11543  2992 14342      fixation_cross    gabor_052 gabor_119 gabor_176 gabor_100    gabor_052_alt gabor_119 gabor_176_alt gabor_100      "1_5_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_052_119_176_100_target_position_1_3_retrieval_position_3"        gabor_circ gabor_circ gabor_176_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_176_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   77    82   292   292   399   125  9543  2992 14342      fixation_cross    gabor_139 gabor_163 gabor_051 gabor_122    gabor_139_alt gabor_163 gabor_051_alt gabor_122      "1_6_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_139_163_051_122_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_002_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_002_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   91    96   292   292   399   125  9543  2992 12342      fixation_cross    gabor_005 gabor_066 gabor_090 gabor_033    gabor_005 gabor_066_alt gabor_090 gabor_033_alt      "1_7_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_005_066_090_033_target_position_2_4_retrieval_position_3"         gabor_circ gabor_circ gabor_090_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_090_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  104   110   292   292   399   125 11543  2992 14342      fixation_cross    gabor_086 gabor_042 gabor_101 gabor_154    gabor_086_alt gabor_042 gabor_101_alt gabor_154      "1_8_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_086_042_101_154_target_position_1_3_retrieval_position_1"        gabor_132_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_132_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  119   124   292   292   399   125  9543  2992 12342      fixation_cross    gabor_043 gabor_011 gabor_152 gabor_132    gabor_043_alt gabor_011 gabor_152_alt gabor_132      "1_9_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_043_011_152_132_target_position_1_3_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_132_framed    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_132_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  132   138   292   292   399   125 11543  2992 14342      fixation_cross    gabor_100 gabor_064 gabor_175 gabor_020    gabor_100 gabor_064 gabor_175_alt gabor_020_alt     "1_10_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_100_064_175_020_target_position_3_4_retrieval_position_3"        gabor_circ gabor_circ gabor_175_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_175_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  147   153   292   292   399   125 11543  2992 12342      fixation_cross    gabor_152 gabor_091 gabor_110 gabor_004    gabor_152 gabor_091_alt gabor_110_alt gabor_004     "1_11_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_152_091_110_004_target_position_2_3_retrieval_position_2"        gabor_circ gabor_091_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_091_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  161   166   292   292   399   125  9543  2992 12342      fixation_cross    gabor_078 gabor_166 gabor_033 gabor_003    gabor_078_alt gabor_166 gabor_033 gabor_003_alt     "1_12_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_078_166_033_003_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_003_framed    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_003_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  174   180   292   292   399   125 11543  2992 14342      fixation_cross    gabor_082 gabor_032 gabor_008 gabor_117    gabor_082_alt gabor_032_alt gabor_008 gabor_117     "1_13_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_082_032_008_117_target_position_1_2_retrieval_position_3"        gabor_circ gabor_circ gabor_056_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_056_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  189   194   292   292   399   125  9543  2992 12342      fixation_cross    gabor_083 gabor_136 gabor_056 gabor_014    gabor_083 gabor_136_alt gabor_056_alt gabor_014     "1_14_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_083_136_056_014_target_position_2_3_retrieval_position_3"         gabor_circ gabor_circ gabor_103_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_103_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_113 gabor_147 gabor_130 gabor_089    gabor_113_alt gabor_147 gabor_130_alt gabor_089     "1_15_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_113_147_130_089_target_position_1_3_retrieval_position_1"         gabor_113_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_113_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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