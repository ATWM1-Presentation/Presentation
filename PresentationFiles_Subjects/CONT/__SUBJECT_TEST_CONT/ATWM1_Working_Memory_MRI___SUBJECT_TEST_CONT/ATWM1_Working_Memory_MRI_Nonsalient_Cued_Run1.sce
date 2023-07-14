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
    6    11   292   292   399   125  9543  2992 12342      fixation_cross    gabor_127 gabor_047 gabor_098 gabor_160    gabor_127 gabor_047 gabor_098_alt gabor_160_alt      "1_1_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_127_047_098_160_target_position_1_2_retrieval_position_1"      gabor_078_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_1_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_078_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   19    25   292   292   399   125 11543  2992 12342      fixation_cross    gabor_092 gabor_068 gabor_157 gabor_179    gabor_092_alt gabor_068_alt gabor_157 gabor_179      "1_2_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_092_068_157_179_target_position_3_4_retrieval_position_3"     gabor_circ gabor_circ gabor_157_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_2_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_157_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   33    38   292   292   399   125  9543  2992 14342      fixation_cross    gabor_051 gabor_102 gabor_127 gabor_165    gabor_051_alt gabor_102 gabor_127 gabor_165_alt      "1_3_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_051_102_127_165_target_position_2_3_retrieval_position_3"      gabor_circ gabor_circ gabor_127_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_3_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_127_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   47    52   292   292   399   125  9543  2992 14342      fixation_cross    gabor_071 gabor_027 gabor_010 gabor_137    gabor_071_alt gabor_027 gabor_010_alt gabor_137      "1_4_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_071_027_010_137_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_089_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_4_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_089_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   61    66   292   292   399   125  9543  2992 12342      fixation_cross    gabor_076 gabor_055 gabor_161 gabor_141    gabor_076_alt gabor_055 gabor_161_alt gabor_141      "1_5_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_076_055_161_141_target_position_2_4_retrieval_position_1"      gabor_076_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_5_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_076_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   74    80   292   292   399   125 11543  2992 14342      fixation_cross    gabor_175 gabor_109 gabor_023 gabor_158    gabor_175 gabor_109_alt gabor_023_alt gabor_158      "1_6_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_175_109_023_158_target_position_1_4_retrieval_position_1"     gabor_130_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_6_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_130_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   89    94   292   292   399   125  9543  2992 14342      fixation_cross    gabor_096 gabor_026 gabor_006 gabor_069    gabor_096_alt gabor_026_alt gabor_006 gabor_069      "1_7_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_096_026_006_069_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_141_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_7_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_141_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  103   108   292   292   399   125  9543  2992 12342      fixation_cross    gabor_043 gabor_070 gabor_151 gabor_028    gabor_043 gabor_070_alt gabor_151 gabor_028_alt      "1_8_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_043_070_151_028_target_position_1_3_retrieval_position_1"      gabor_092_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_8_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_092_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  116   121   292   292   399   125  9543  2992 14342      fixation_cross    gabor_179 gabor_129 gabor_111 gabor_160    gabor_179 gabor_129 gabor_111_alt gabor_160_alt      "1_9_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_179_129_111_160_target_position_1_2_retrieval_position_1"      gabor_179_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_9_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_179_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  130   135   292   292   399   125  9543  2992 12342      fixation_cross    gabor_052 gabor_157 gabor_139 gabor_015    gabor_052 gabor_157 gabor_139_alt gabor_015_alt     "1_10_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_052_157_139_015_target_position_1_2_retrieval_position_3"      gabor_circ gabor_circ gabor_092_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_10_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_092_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  143   149   292   292   399   125 11543  2992 14342      fixation_cross    gabor_078 gabor_038 gabor_005 gabor_160    gabor_078 gabor_038_alt gabor_005 gabor_160_alt     "1_11_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_078_038_005_160_target_position_1_3_retrieval_position_1"     gabor_078_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_11_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_078_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  158   164   292   292   399   125 11543  2992 12342      fixation_cross    gabor_172 gabor_138 gabor_062 gabor_001    gabor_172 gabor_138_alt gabor_062_alt gabor_001     "1_12_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_172_138_062_001_target_position_1_4_retrieval_position_1"     gabor_172_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_12_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_172_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  172   178   292   292   399   125 11543  2992 12342      fixation_cross    gabor_115 gabor_074 gabor_164 gabor_144    gabor_115_alt gabor_074 gabor_164 gabor_144_alt     "1_13_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_115_074_164_144_target_position_2_3_retrieval_position_2"     gabor_circ gabor_027_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_13_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_027_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  186   192   292   292   399   125 11543  2992 14342      fixation_cross    gabor_137 gabor_020 gabor_076 gabor_004    gabor_137 gabor_020_alt gabor_076_alt gabor_004     "1_14_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_137_020_076_004_target_position_1_4_retrieval_position_1"     gabor_137_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_14_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_137_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_020 gabor_047 gabor_158 gabor_130    gabor_020 gabor_047_alt gabor_158 gabor_130_alt     "1_15_Encoding_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_020_047_158_130_target_position_1_3_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_130_framed    blank blank blank blank    fixation_cross_target_position_1_3    "1_15_Retrieval_Working_Memory_MRI_P7_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_130_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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