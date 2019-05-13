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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_155 gabor_173 gabor_122 gabor_090    gabor_155_alt gabor_173_alt gabor_122 gabor_090      "1_1_Encoding_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_155_173_122_090_target_position_1_2_retrieval_position_1"        gabor_155_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_155_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    25   292   292   399   125  9543  2992 14342      fixation_cross    gabor_146 gabor_033 gabor_001 gabor_164    gabor_146 gabor_033_alt gabor_001 gabor_164_alt      "1_2_Encoding_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_146_033_001_164_target_position_2_4_retrieval_position_2"         gabor_circ gabor_081_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_081_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   34    40   292   292   399   125 11543  2992 14342      fixation_cross    gabor_014 gabor_153 gabor_091 gabor_047    gabor_014 gabor_153 gabor_091_alt gabor_047_alt      "1_3_Encoding_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_014_153_091_047_target_position_3_4_retrieval_position_3"        gabor_circ gabor_circ gabor_136_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_136_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   49    55   292   292   399   125 11543  2992 14342      fixation_cross    gabor_057 gabor_011 gabor_036 gabor_175    gabor_057_alt gabor_011_alt gabor_036 gabor_175      "1_4_Encoding_Working_Memory_MRI_P2_RL_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_057_011_036_175_target_position_1_2_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_175_framed    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P2_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_175_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   64    69   292   292   399   125  9543  2992 14342      fixation_cross    gabor_030 gabor_057 gabor_084 gabor_099    gabor_030_alt gabor_057 gabor_084 gabor_099_alt      "1_5_Encoding_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_030_057_084_099_target_position_1_4_retrieval_position_1"         gabor_169_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_169_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   78    83   292   292   399   125  9543  2992 14342      fixation_cross    gabor_110 gabor_179 gabor_023 gabor_048    gabor_110 gabor_179 gabor_023_alt gabor_048_alt      "1_6_Encoding_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_110_179_023_048_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_159_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_159_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   92    98   292   292   399   125 11543  2992 12342      fixation_cross    gabor_067 gabor_046 gabor_003 gabor_121    gabor_067 gabor_046_alt gabor_003 gabor_121_alt      "1_7_Encoding_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_067_046_003_121_target_position_2_4_retrieval_position_2"        gabor_circ gabor_093_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_093_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  106   111   292   292   399   125  9543  2992 12342      fixation_cross    gabor_089 gabor_160 gabor_020 gabor_139    gabor_089 gabor_160 gabor_020_alt gabor_139_alt      "1_8_Encoding_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_089_160_020_139_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_020_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_020_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  119   125   292   292   399   125 11543  2992 12342      fixation_cross    gabor_130 gabor_059 gabor_109 gabor_179    gabor_130 gabor_059_alt gabor_109_alt gabor_179      "1_9_Encoding_Working_Memory_MRI_P2_RL_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_130_059_109_179_target_position_2_3_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_043_framed    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P2_RL_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_043_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  133   138   292   292   399   125  9543  2992 12342      fixation_cross    gabor_090 gabor_135 gabor_153 gabor_067    gabor_090 gabor_135 gabor_153_alt gabor_067_alt     "1_10_Encoding_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_090_135_153_067_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_013_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P2_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_013_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  146   152   292   292   399   125 11543  2992 14342      fixation_cross    gabor_054 gabor_132 gabor_167 gabor_013    gabor_054 gabor_132_alt gabor_167 gabor_013_alt     "1_11_Encoding_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_054_132_167_013_target_position_2_4_retrieval_position_2"        gabor_circ gabor_132_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_132_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  161   166   292   292   399   125  9543  2992 14342      fixation_cross    gabor_100 gabor_118 gabor_136 gabor_157    gabor_100 gabor_118_alt gabor_136_alt gabor_157     "1_12_Encoding_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_100_118_136_157_target_position_2_3_retrieval_position_2"         gabor_circ gabor_118_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_118_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  175   180   292   292   399   125  9543  2992 12342      fixation_cross    gabor_168 gabor_105 gabor_088 gabor_020    gabor_168_alt gabor_105 gabor_088_alt gabor_020     "1_13_Encoding_Working_Memory_MRI_P2_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_168_105_088_020_target_position_1_3_retrieval_position_2"         gabor_circ gabor_105_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P2_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_105_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   193   292   292   399   125  9543  2992 12342      fixation_cross    gabor_152 gabor_042 gabor_171 gabor_118    gabor_152_alt gabor_042 gabor_171 gabor_118_alt     "1_14_Encoding_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_152_042_171_118_target_position_1_4_retrieval_position_1"         gabor_152_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_152_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_082 gabor_125 gabor_067 gabor_102    gabor_082_alt gabor_125 gabor_067 gabor_102_alt     "1_15_Encoding_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_082_125_067_102_target_position_1_4_retrieval_position_1"        gabor_082_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P2_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_082_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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