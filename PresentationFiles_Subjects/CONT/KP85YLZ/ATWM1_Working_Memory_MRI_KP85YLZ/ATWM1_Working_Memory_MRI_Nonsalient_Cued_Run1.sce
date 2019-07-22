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
    6    11   292   292   399   125  9543  2992 12342      fixation_cross    gabor_096 gabor_061 gabor_120 gabor_175    gabor_096_alt gabor_061 gabor_120 gabor_175_alt      "1_1_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_096_061_120_175_target_position_2_3_retrieval_position_2"      gabor_circ gabor_061_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_1_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_061_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   19    25   292   292   399   125 11543  2992 12342      fixation_cross    gabor_101 gabor_159 gabor_070 gabor_119    gabor_101 gabor_159 gabor_070_alt gabor_119_alt      "1_2_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_101_159_070_119_target_position_1_2_retrieval_position_1"     gabor_101_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_2_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_101_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   33    39   292   292   399   125 11543  2992 14342      fixation_cross    gabor_056 gabor_082 gabor_009 gabor_145    gabor_056_alt gabor_082 gabor_009 gabor_145_alt      "1_3_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_056_082_009_145_target_position_2_3_retrieval_position_2"     gabor_circ gabor_129_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_3_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_129_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   48    54   292   292   399   125 11543  2992 14342      fixation_cross    gabor_007 gabor_139 gabor_029 gabor_174    gabor_007 gabor_139 gabor_029_alt gabor_174_alt      "1_4_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_007_139_029_174_target_position_1_2_retrieval_position_1"     gabor_057_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_4_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_057_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   63    69   292   292   399   125 11543  2992 14342      fixation_cross    gabor_112 gabor_143 gabor_082 gabor_169    gabor_112 gabor_143_alt gabor_082 gabor_169_alt      "1_5_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_112_143_082_169_target_position_1_3_retrieval_position_1"     gabor_112_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_5_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_112_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   78    83   292   292   399   125  9543  2992 12342      fixation_cross    gabor_150 gabor_005 gabor_069 gabor_126    gabor_150 gabor_005_alt gabor_069_alt gabor_126      "1_6_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_150_005_069_126_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_176_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_6_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_176_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   91    96   292   292   399   125  9543  2992 14342      fixation_cross    gabor_148 gabor_006 gabor_088 gabor_128    gabor_148_alt gabor_006 gabor_088 gabor_128_alt      "1_7_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_148_006_088_128_target_position_2_3_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_128_framed    blank blank blank blank    fixation_cross_target_position_2_3     "1_7_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_128_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  105   110   292   292   399   125  9543  2992 14342      fixation_cross    gabor_138 gabor_119 gabor_048 gabor_065    gabor_138 gabor_119_alt gabor_048_alt gabor_065      "1_8_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_138_119_048_065_target_position_1_4_retrieval_position_1"      gabor_138_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_8_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_138_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  119   124   292   292   399   125  9543  2992 14342      fixation_cross    gabor_170 gabor_004 gabor_117 gabor_055    gabor_170_alt gabor_004 gabor_117_alt gabor_055      "1_9_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_170_004_117_055_target_position_2_4_retrieval_position_2"      gabor_circ gabor_004_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_9_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_004_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  133   138   292   292   399   125  9543  2992 12342      fixation_cross    gabor_068 gabor_130 gabor_103 gabor_044    gabor_068_alt gabor_130 gabor_103_alt gabor_044     "1_10_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_068_130_103_044_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_179_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_10_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_179_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  146   152   292   292   399   125 11543  2992 14342      fixation_cross    gabor_078 gabor_098 gabor_019 gabor_046    gabor_078_alt gabor_098 gabor_019_alt gabor_046     "1_11_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_078_098_019_046_target_position_2_4_retrieval_position_1"     gabor_128_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_11_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_128_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  161   167   292   292   399   125 11543  2992 12342      fixation_cross    gabor_001 gabor_131 gabor_079 gabor_159    gabor_001 gabor_131 gabor_079_alt gabor_159_alt     "1_12_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_001_131_079_159_target_position_1_2_retrieval_position_1"     gabor_001_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_12_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_001_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  175   180   292   292   399   125  9543  2992 12342      fixation_cross    gabor_169 gabor_034 gabor_139 gabor_016    gabor_169 gabor_034 gabor_139_alt gabor_016_alt     "1_13_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_169_034_139_016_target_position_1_2_retrieval_position_2"      gabor_circ gabor_081_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_13_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_081_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   194   292   292   399   125 11543  2992 12342      fixation_cross    gabor_026 gabor_053 gabor_076 gabor_143    gabor_026_alt gabor_053_alt gabor_076 gabor_143     "1_14_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_026_053_076_143_target_position_3_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_006_framed    blank blank blank blank    fixation_cross_target_position_3_4    "1_14_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_006_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_150 gabor_040 gabor_063 gabor_122    gabor_150 gabor_040 gabor_063_alt gabor_122_alt     "1_15_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_150_040_063_122_target_position_1_2_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_122_framed    blank blank blank blank    fixation_cross_target_position_1_2    "1_15_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_122_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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