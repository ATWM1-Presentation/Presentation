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
    6    12   292   292   399   125 11543  2992 14342      fixation_cross    gabor_066 gabor_154 gabor_126 gabor_048    gabor_066_alt gabor_154_alt gabor_126 gabor_048      "1_1_Encoding_Working_Memory_MRI_P4_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_066_154_126_048_target_position_3_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_048_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_1_Retrieval_Working_Memory_MRI_P4_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_048_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   21    26   292   292   399   125  9543  2992 12342      fixation_cross    gabor_033 gabor_166 gabor_009 gabor_087    gabor_033_alt gabor_166 gabor_009 gabor_087_alt      "1_2_Encoding_Working_Memory_MRI_P4_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_033_166_009_087_target_position_2_3_retrieval_position_2"      gabor_circ gabor_120_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_2_Retrieval_Working_Memory_MRI_P4_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_120_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   34    40   292   292   399   125 11543  2992 14342      fixation_cross    gabor_111 gabor_046 gabor_129 gabor_156    gabor_111 gabor_046_alt gabor_129_alt gabor_156      "1_3_Encoding_Working_Memory_MRI_P4_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_111_046_129_156_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_021_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_3_Retrieval_Working_Memory_MRI_P4_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_021_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   49    54   292   292   399   125  9543  2992 12342      fixation_cross    gabor_056 gabor_165 gabor_075 gabor_007    gabor_056 gabor_165_alt gabor_075 gabor_007_alt      "1_4_Encoding_Working_Memory_MRI_P4_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_056_165_075_007_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_123_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_4_Retrieval_Working_Memory_MRI_P4_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_123_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   62    68   292   292   399   125 11543  2992 12342      fixation_cross    gabor_067 gabor_130 gabor_101 gabor_048    gabor_067_alt gabor_130 gabor_101 gabor_048_alt      "1_5_Encoding_Working_Memory_MRI_P4_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_067_130_101_048_target_position_2_3_retrieval_position_2"     gabor_circ gabor_130_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_5_Retrieval_Working_Memory_MRI_P4_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_130_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   76    81   292   292   399   125  9543  2992 14342      fixation_cross    gabor_156 gabor_024 gabor_050 gabor_001    gabor_156_alt gabor_024 gabor_050 gabor_001_alt      "1_6_Encoding_Working_Memory_MRI_P4_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_156_024_050_001_target_position_2_3_retrieval_position_2"      gabor_circ gabor_024_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_6_Retrieval_Working_Memory_MRI_P4_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_024_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   90    95   292   292   399   125  9543  2992 12342      fixation_cross    gabor_028 gabor_134 gabor_068 gabor_053    gabor_028_alt gabor_134 gabor_068_alt gabor_053      "1_7_Encoding_Working_Memory_MRI_P4_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_028_134_068_053_target_position_2_4_retrieval_position_3"      gabor_circ gabor_circ gabor_068_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_7_Retrieval_Working_Memory_MRI_P4_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_068_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  103   108   292   292   399   125  9543  2992 12342      fixation_cross    gabor_006 gabor_147 gabor_111 gabor_037    gabor_006 gabor_147_alt gabor_111_alt gabor_037      "1_8_Encoding_Working_Memory_MRI_P4_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_006_147_111_037_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_173_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_8_Retrieval_Working_Memory_MRI_P4_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_173_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  116   121   292   292   399   125  9543  2992 14342      fixation_cross    gabor_152 gabor_117 gabor_179 gabor_042    gabor_152 gabor_117 gabor_179_alt gabor_042_alt      "1_9_Encoding_Working_Memory_MRI_P4_RL_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_152_117_179_042_target_position_1_2_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_090_framed    blank blank blank blank    fixation_cross_target_position_1_2     "1_9_Retrieval_Working_Memory_MRI_P4_RL_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_090_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  130   136   292   292   399   125 11543  2992 12342      fixation_cross    gabor_161 gabor_119 gabor_100 gabor_011    gabor_161_alt gabor_119 gabor_100 gabor_011_alt     "1_10_Encoding_Working_Memory_MRI_P4_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_161_119_100_011_target_position_2_3_retrieval_position_3"     gabor_circ gabor_circ gabor_055_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_10_Retrieval_Working_Memory_MRI_P4_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_055_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  144   149   292   292   399   125  9543  2992 12342      fixation_cross    gabor_008 gabor_118 gabor_159 gabor_073    gabor_008_alt gabor_118_alt gabor_159 gabor_073     "1_11_Encoding_Working_Memory_MRI_P4_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_008_118_159_073_target_position_3_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_028_framed    blank blank blank blank    fixation_cross_target_position_3_4    "1_11_Retrieval_Working_Memory_MRI_P4_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_028_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  157   163   292   292   399   125 11543  2992 14342      fixation_cross    gabor_020 gabor_004 gabor_063 gabor_035    gabor_020_alt gabor_004 gabor_063 gabor_035_alt     "1_12_Encoding_Working_Memory_MRI_P4_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_020_004_063_035_target_position_2_3_retrieval_position_2"     gabor_circ gabor_004_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_12_Retrieval_Working_Memory_MRI_P4_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_004_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  172   178   292   292   399   125 11543  2992 14342      fixation_cross    gabor_106 gabor_149 gabor_040 gabor_081    gabor_106 gabor_149_alt gabor_040_alt gabor_081     "1_13_Encoding_Working_Memory_MRI_P4_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_106_149_040_081_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_081_framed    blank blank blank blank    fixation_cross_target_position_1_4    "1_13_Retrieval_Working_Memory_MRI_P4_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_081_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  187   193   292   292   399   125 11543  2992 14342      fixation_cross    gabor_054 gabor_098 gabor_180 gabor_069    gabor_054 gabor_098 gabor_180_alt gabor_069_alt     "1_14_Encoding_Working_Memory_MRI_P4_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_054_098_180_069_target_position_1_2_retrieval_position_2"     gabor_circ gabor_098_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_14_Retrieval_Working_Memory_MRI_P4_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_098_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_052 gabor_068 gabor_110 gabor_089    gabor_052_alt gabor_068_alt gabor_110 gabor_089     "1_15_Encoding_Working_Memory_MRI_P4_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_052_068_110_089_target_position_3_4_retrieval_position_2"      gabor_circ gabor_068_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_15_Retrieval_Working_Memory_MRI_P4_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_068_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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