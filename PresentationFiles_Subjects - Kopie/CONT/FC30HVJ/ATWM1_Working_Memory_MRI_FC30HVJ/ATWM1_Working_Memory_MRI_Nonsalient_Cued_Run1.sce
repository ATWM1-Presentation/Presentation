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
    6    11   292   292   399   125  9543  2992 12342      fixation_cross    gabor_044 gabor_002 gabor_120 gabor_068    gabor_044 gabor_002_alt gabor_120_alt gabor_068      "1_1_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_044_002_120_068_target_position_1_4_retrieval_position_1"      gabor_091_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_1_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_091_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   19    25   292   292   399   125 11543  2992 12342      fixation_cross    gabor_039 gabor_172 gabor_065 gabor_019    gabor_039_alt gabor_172 gabor_065_alt gabor_019      "1_2_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_039_172_065_019_target_position_2_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_154_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_2_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_154_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   33    38   292   292   399   125  9543  2992 12342      fixation_cross    gabor_129 gabor_088 gabor_151 gabor_016    gabor_129 gabor_088 gabor_151_alt gabor_016_alt      "1_3_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_129_088_151_016_target_position_1_2_retrieval_position_2"      gabor_circ gabor_040_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_3_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_040_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   46    52   292   292   399   125 11543  2992 14342      fixation_cross    gabor_013 gabor_154 gabor_038 gabor_076    gabor_013 gabor_154_alt gabor_038_alt gabor_076      "1_4_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_013_154_038_076_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_123_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_4_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_123_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   61    67   292   292   399   125 11543  2992 12342      fixation_cross    gabor_171 gabor_121 gabor_152 gabor_002    gabor_171 gabor_121_alt gabor_152_alt gabor_002      "1_5_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_171_121_152_002_target_position_1_4_retrieval_position_1"     gabor_171_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_5_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_171_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   75    80   292   292   399   125  9543  2992 14342      fixation_cross    gabor_005 gabor_030 gabor_077 gabor_092    gabor_005 gabor_030 gabor_077_alt gabor_092_alt      "1_6_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_005_030_077_092_target_position_1_2_retrieval_position_2"      gabor_circ gabor_030_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_6_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_030_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   89    94   292   292   399   125  9543  2992 14342      fixation_cross    gabor_094 gabor_067 gabor_020 gabor_172    gabor_094_alt gabor_067_alt gabor_020 gabor_172      "1_7_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_094_067_020_172_target_position_3_4_retrieval_position_1"      gabor_094_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_7_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_094_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  103   108   292   292   399   125  9543  2992 14342      fixation_cross    gabor_095 gabor_135 gabor_112 gabor_051    gabor_095 gabor_135 gabor_112_alt gabor_051_alt      "1_8_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_095_135_112_051_target_position_1_2_retrieval_position_2"      gabor_circ gabor_180_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_8_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_180_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  117   122   292   292   399   125  9543  2992 12342      fixation_cross    gabor_111 gabor_053 gabor_077 gabor_141    gabor_111 gabor_053_alt gabor_077 gabor_141_alt      "1_9_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_111_053_077_141_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_077_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_9_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_077_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  130   135   292   292   399   125  9543  2992 12342      fixation_cross    gabor_115 gabor_057 gabor_167 gabor_009    gabor_115 gabor_057_alt gabor_167 gabor_009_alt     "1_10_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_115_057_167_009_target_position_1_3_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_145_framed    blank blank blank blank    fixation_cross_target_position_1_3    "1_10_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_145_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  143   148   292   292   399   125  9543  2992 14342      fixation_cross    gabor_010 gabor_058 gabor_164 gabor_033    gabor_010 gabor_058_alt gabor_164 gabor_033_alt     "1_11_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_010_058_164_033_target_position_1_3_retrieval_position_1"      gabor_148_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_11_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_148_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  157   163   292   292   399   125 11543  2992 14342      fixation_cross    gabor_069 gabor_109 gabor_052 gabor_022    gabor_069_alt gabor_109 gabor_052_alt gabor_022     "1_12_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_069_109_052_022_target_position_2_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_022_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_12_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_022_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  172   178   292   292   399   125 11543  2992 12342      fixation_cross    gabor_167 gabor_096 gabor_007 gabor_126    gabor_167_alt gabor_096 gabor_007_alt gabor_126     "1_13_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_167_096_007_126_target_position_2_4_retrieval_position_3"     gabor_circ gabor_circ gabor_007_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_13_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_007_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  186   192   292   292   399   125 11543  2992 14342      fixation_cross    gabor_081 gabor_145 gabor_023 gabor_097    gabor_081_alt gabor_145 gabor_023 gabor_097_alt     "1_14_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_081_145_023_097_target_position_2_3_retrieval_position_3"     gabor_circ gabor_circ gabor_023_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_14_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_023_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_023 gabor_005 gabor_090 gabor_058    gabor_023_alt gabor_005 gabor_090 gabor_058_alt     "1_15_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_023_005_090_058_target_position_2_3_retrieval_position_2"     gabor_circ gabor_005_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_15_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_005_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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