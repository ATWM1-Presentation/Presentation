# ATWM1 MRI Experiment
                         
scenario = "ATWM1_Working_Memory_MRI_salient_cued_run1";
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
    6    12   292   292   399   125 11543  2992 14342      fixation_cross    gabor_008 gabor_054 gabor_177 gabor_120    gabor_008_alt gabor_054 gabor_177_alt gabor_120      "1_1_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_008_054_177_120_target_position_1_3_retrieval_position_3"        gabor_circ gabor_circ gabor_177_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_1_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_177_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   21    27   292   292   399   125 11543  2992 12342      fixation_cross    gabor_021 gabor_084 gabor_103 gabor_036    gabor_021 gabor_084_alt gabor_103 gabor_036_alt      "1_2_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_021_084_103_036_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_172_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_2_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_172_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   35    41   292   292   399   125 11543  2992 12342      fixation_cross    gabor_077 gabor_048 gabor_092 gabor_154    gabor_077 gabor_048_alt gabor_092 gabor_154_alt      "1_3_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_077_048_092_154_target_position_2_4_retrieval_position_2"        gabor_circ gabor_048_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_3_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_048_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   49    55   292   292   399   125 11543  2992 14342      fixation_cross    gabor_070 gabor_043 gabor_115 gabor_178    gabor_070 gabor_043_alt gabor_115 gabor_178_alt      "1_4_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_070_043_115_178_target_position_2_4_retrieval_position_2"        gabor_circ gabor_092_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_4_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_092_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   64    69   292   292   399   125  9543  2992 14342      fixation_cross    gabor_059 gabor_089 gabor_128 gabor_015    gabor_059_alt gabor_089 gabor_128_alt gabor_015      "1_5_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_059_089_128_015_target_position_1_3_retrieval_position_2"         gabor_circ gabor_039_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_5_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_039_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   78    83   292   292   399   125  9543  2992 12342      fixation_cross    gabor_051 gabor_022 gabor_139 gabor_157    gabor_051_alt gabor_022 gabor_139 gabor_157_alt      "1_6_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_051_022_139_157_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_157_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_6_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_157_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   91    97   292   292   399   125 11543  2992 14342      fixation_cross    gabor_006 gabor_077 gabor_165 gabor_025    gabor_006_alt gabor_077 gabor_165 gabor_025_alt      "1_7_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_006_077_165_025_target_position_1_4_retrieval_position_1"        gabor_051_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_7_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_051_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  106   112   292   292   399   125 11543  2992 14342      fixation_cross    gabor_114 gabor_088 gabor_054 gabor_004    gabor_114 gabor_088_alt gabor_054_alt gabor_004      "1_8_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_114_088_054_004_target_position_2_3_retrieval_position_2"        gabor_circ gabor_135_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_8_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_135_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  121   126   292   292   399   125  9543  2992 12342      fixation_cross    gabor_096 gabor_076 gabor_119 gabor_059    gabor_096_alt gabor_076_alt gabor_119 gabor_059      "1_9_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_096_076_119_059_target_position_1_2_retrieval_position_1"         gabor_096_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_9_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_096_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  134   140   292   292   399   125 11543  2992 12342      fixation_cross    gabor_066 gabor_128 gabor_174 gabor_018    gabor_066_alt gabor_128 gabor_174 gabor_018_alt     "1_10_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_066_128_174_018_target_position_1_4_retrieval_position_3"        gabor_circ gabor_circ gabor_174_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_10_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_174_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  148   153   292   292   399   125  9543  2992 12342      fixation_cross    gabor_021 gabor_067 gabor_179 gabor_129    gabor_021_alt gabor_067 gabor_179_alt gabor_129     "1_11_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_021_067_179_129_target_position_1_3_retrieval_position_1"         gabor_156_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_11_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_156_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  161   166   292   292   399   125  9543  2992 12342      fixation_cross    gabor_126 gabor_103 gabor_175 gabor_036    gabor_126 gabor_103 gabor_175_alt gabor_036_alt     "1_12_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_126_103_175_036_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_036_framed    blank blank blank blank    fixation_cross_target_position_3_4    "1_12_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_036_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  174   179   292   292   399   125  9543  2992 14342      fixation_cross    gabor_079 gabor_003 gabor_140 gabor_050    gabor_079_alt gabor_003_alt gabor_140 gabor_050     "1_13_Encoding_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_079_003_140_050_target_position_1_2_retrieval_position_1"         gabor_030_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_13_Retrieval_Working_Memory_MRI_P4_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_030_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   193   292   292   399   125  9543  2992 14342      fixation_cross    gabor_168 gabor_092 gabor_015 gabor_036    gabor_168_alt gabor_092 gabor_015_alt gabor_036     "1_14_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_168_092_015_036_target_position_1_3_retrieval_position_2"         gabor_circ gabor_092_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_14_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_092_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_032 gabor_099 gabor_115 gabor_163    gabor_032_alt gabor_099_alt gabor_115 gabor_163     "1_15_Encoding_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_032_099_115_163_target_position_1_2_retrieval_position_2"         gabor_circ gabor_099_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_15_Retrieval_Working_Memory_MRI_P4_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_099_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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