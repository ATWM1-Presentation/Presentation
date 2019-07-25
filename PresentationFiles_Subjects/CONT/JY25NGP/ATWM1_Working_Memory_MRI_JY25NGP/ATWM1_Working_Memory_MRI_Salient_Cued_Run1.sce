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
    6    12   292   292   399   125 11543  2992 14342      fixation_cross    gabor_029 gabor_091 gabor_162 gabor_117    gabor_029 gabor_091 gabor_162_alt gabor_117_alt      "1_1_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_029_091_162_117_target_position_3_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_117_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_1_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_117_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   21    26   292   292   399   125  9543  2992 14342      fixation_cross    gabor_097 gabor_170 gabor_064 gabor_121    gabor_097_alt gabor_170_alt gabor_064 gabor_121      "1_2_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_097_170_064_121_target_position_1_2_retrieval_position_2"         gabor_circ gabor_031_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_2_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_031_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   35    40   292   292   399   125  9543  2992 12342      fixation_cross    gabor_028 gabor_004 gabor_144 gabor_066    gabor_028 gabor_004 gabor_144_alt gabor_066_alt      "1_3_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_028_004_144_066_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_144_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_3_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_144_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   48    54   292   292   399   125 11543  2992 14342      fixation_cross    gabor_070 gabor_115 gabor_091 gabor_150    gabor_070_alt gabor_115 gabor_091_alt gabor_150      "1_4_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_070_115_091_150_target_position_1_3_retrieval_position_1"        gabor_025_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_4_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_025_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   63    69   292   292   399   125 11543  2992 14342      fixation_cross    gabor_099 gabor_023 gabor_040 gabor_056    gabor_099 gabor_023_alt gabor_040_alt gabor_056      "1_5_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_099_023_040_056_target_position_2_3_retrieval_position_1"        gabor_146_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_5_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_146_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   78    83   292   292   399   125  9543  2992 12342      fixation_cross    gabor_066 gabor_004 gabor_043 gabor_127    gabor_066_alt gabor_004 gabor_043_alt gabor_127      "1_6_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_066_004_043_127_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_043_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_6_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_043_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   91    96   292   292   399   125  9543  2992 14342      fixation_cross    gabor_171 gabor_156 gabor_100 gabor_139    gabor_171_alt gabor_156 gabor_100 gabor_139_alt      "1_7_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_171_156_100_139_target_position_1_4_retrieval_position_1"         gabor_122_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_7_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_122_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  105   110   292   292   399   125  9543  2992 12342      fixation_cross    gabor_120 gabor_087 gabor_046 gabor_152    gabor_120 gabor_087 gabor_046_alt gabor_152_alt      "1_8_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_120_087_046_152_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_001_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_8_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_001_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  118   124   292   292   399   125 11543  2992 12342      fixation_cross    gabor_114 gabor_004 gabor_144 gabor_077    gabor_114_alt gabor_004_alt gabor_144 gabor_077      "1_9_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_114_004_144_077_target_position_1_2_retrieval_position_2"        gabor_circ gabor_054_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_9_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_054_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  132   137   292   292   399   125  9543  2992 12342      fixation_cross    gabor_031 gabor_087 gabor_136 gabor_059    gabor_031 gabor_087_alt gabor_136 gabor_059_alt     "1_10_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_031_087_136_059_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_059_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_10_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_059_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  145   151   292   292   399   125 11543  2992 14342      fixation_cross    gabor_003 gabor_116 gabor_092 gabor_157    gabor_003_alt gabor_116 gabor_092_alt gabor_157     "1_11_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_003_116_092_157_target_position_1_3_retrieval_position_2"        gabor_circ gabor_116_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_11_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_116_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  160   165   292   292   399   125  9543  2992 12342      fixation_cross    gabor_114 gabor_134 gabor_053 gabor_093    gabor_114 gabor_134_alt gabor_053_alt gabor_093     "1_12_Encoding_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_114_134_053_093_target_position_2_3_retrieval_position_3"         gabor_circ gabor_circ gabor_003_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_12_Retrieval_Working_Memory_MRI_P2_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_003_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  173   179   292   292   399   125 11543  2992 14342      fixation_cross    gabor_060 gabor_144 gabor_167 gabor_028    gabor_060 gabor_144_alt gabor_167_alt gabor_028     "1_13_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_060_144_167_028_target_position_2_3_retrieval_position_2"        gabor_circ gabor_144_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_13_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_144_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   193   292   292   399   125  9543  2992 12342      fixation_cross    gabor_108 gabor_136 gabor_084 gabor_162    gabor_108_alt gabor_136 gabor_084 gabor_162_alt     "1_14_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_108_136_084_162_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_162_framed    blank blank blank blank    fixation_cross_target_position_1_4    "1_14_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_162_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_007 gabor_058 gabor_116 gabor_031    gabor_007 gabor_058_alt gabor_116 gabor_031_alt     "1_15_Encoding_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_007_058_116_031_target_position_2_4_retrieval_position_1"        gabor_007_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_15_Retrieval_Working_Memory_MRI_P2_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_007_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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