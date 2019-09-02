# ATWM1 MRI Experiment
                         
scenario = "ATWM1_Working_Memory_MRI_nonsalient_uncued_run1";
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
    6    12   292   292   399   125 11543  2992 14342      fixation_cross    gabor_154 gabor_038 gabor_169 gabor_014    gabor_154_alt gabor_038 gabor_169 gabor_014_alt      "1_1_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_154_038_169_014_target_position_2_3_retrieval_position_2"     gabor_circ gabor_085_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_085_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   21    26   292   292   399   125  9543  2992 12342      fixation_cross    gabor_035 gabor_111 gabor_069 gabor_091    gabor_035 gabor_111_alt gabor_069_alt gabor_091      "1_2_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_035_111_069_091_target_position_1_4_retrieval_position_1"      gabor_175_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_175_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   34    40   292   292   399   125 11543  2992 12342      fixation_cross    gabor_065 gabor_153 gabor_172 gabor_090    gabor_065_alt gabor_153 gabor_172_alt gabor_090      "1_3_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_065_153_172_090_target_position_2_4_retrieval_position_2"     gabor_circ gabor_153_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_153_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   48    54   292   292   399   125 11543  2992 14342      fixation_cross    gabor_106 gabor_070 gabor_085 gabor_138    gabor_106_alt gabor_070 gabor_085_alt gabor_138      "1_4_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_106_070_085_138_target_position_2_4_retrieval_position_1"     gabor_106_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_106_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   63    69   292   292   399   125 11543  2992 12342      fixation_cross    gabor_131 gabor_012 gabor_054 gabor_165    gabor_131 gabor_012 gabor_054_alt gabor_165_alt      "1_5_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_131_012_054_165_target_position_1_2_retrieval_position_1"     gabor_081_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_081_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   77    83   292   292   399   125 11543  2992 12342      fixation_cross    gabor_063 gabor_103 gabor_175 gabor_044    gabor_063 gabor_103 gabor_175_alt gabor_044_alt      "1_6_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_063_103_175_044_target_position_1_2_retrieval_position_2"     gabor_circ gabor_150_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_150_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   91    96   292   292   399   125  9543  2992 14342      fixation_cross    gabor_025 gabor_065 gabor_149 gabor_084    gabor_025_alt gabor_065_alt gabor_149 gabor_084      "1_7_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_025_065_149_084_target_position_3_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_132_framed    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_132_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  105   110   292   292   399   125  9543  2992 14342      fixation_cross    gabor_149 gabor_122 gabor_010 gabor_082    gabor_149_alt gabor_122 gabor_010 gabor_082_alt      "1_8_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_149_122_010_082_target_position_2_3_retrieval_position_3"      gabor_circ gabor_circ gabor_010_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_010_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  119   124   292   292   399   125  9543  2992 14342      fixation_cross    gabor_022 gabor_180 gabor_074 gabor_096    gabor_022 gabor_180 gabor_074_alt gabor_096_alt      "1_9_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_022_180_074_096_target_position_1_2_retrieval_position_1"      gabor_022_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_022_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  133   138   292   292   399   125  9543  2992 14342      fixation_cross    gabor_142 gabor_083 gabor_126 gabor_021    gabor_142 gabor_083_alt gabor_126_alt gabor_021     "1_10_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_142_083_126_021_target_position_1_4_retrieval_position_1"      gabor_004_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_004_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  147   152   292   292   399   125  9543  2992 14342      fixation_cross    gabor_039 gabor_081 gabor_144 gabor_021    gabor_039 gabor_081_alt gabor_144_alt gabor_021     "1_11_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_039_081_144_021_target_position_1_4_retrieval_position_2"      gabor_circ gabor_128_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_128_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  161   166   292   292   399   125  9543  2992 12342      fixation_cross    gabor_056 gabor_024 gabor_073 gabor_112    gabor_056 gabor_024_alt gabor_073_alt gabor_112     "1_12_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_056_024_073_112_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_112_framed    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_112_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  174   179   292   292   399   125  9543  2992 12342      fixation_cross    gabor_124 gabor_108 gabor_079 gabor_151    gabor_124 gabor_108_alt gabor_079_alt gabor_151     "1_13_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_124_108_079_151_target_position_1_4_retrieval_position_3"      gabor_circ gabor_circ gabor_079_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_079_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  187   193   292   292   399   125 11543  2992 14342      fixation_cross    gabor_172 gabor_067 gabor_005 gabor_044    gabor_172_alt gabor_067_alt gabor_005 gabor_044     "1_14_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_172_067_005_044_target_position_3_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_044_framed    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_044_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_048 gabor_136 gabor_069 gabor_090    gabor_048 gabor_136_alt gabor_069 gabor_090_alt     "1_15_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_048_136_069_090_target_position_1_3_retrieval_position_1"     gabor_048_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_048_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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