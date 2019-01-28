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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_027 gabor_094 gabor_071 gabor_051    gabor_027_alt gabor_094 gabor_071_alt gabor_051      "1_1_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_027_094_071_051_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_051_framed    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_051_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   20    25   292   292   399   125  9543  2992 12342      fixation_cross    gabor_011 gabor_133 gabor_068 gabor_043    gabor_011_alt gabor_133_alt gabor_068 gabor_043      "1_2_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_011_133_068_043_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_068_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_068_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   33    38   292   292   399   125  9543  2992 14342      fixation_cross    gabor_138 gabor_177 gabor_090 gabor_060    gabor_138_alt gabor_177 gabor_090_alt gabor_060      "1_3_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_138_177_090_060_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_108_framed    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_108_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   47    52   292   292   399   125  9543  2992 14342      fixation_cross    gabor_172 gabor_135 gabor_050 gabor_016    gabor_172_alt gabor_135 gabor_050 gabor_016_alt      "1_4_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_172_135_050_016_target_position_2_3_retrieval_position_2"      gabor_circ gabor_135_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_135_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   61    67   292   292   399   125 11543  2992 12342      fixation_cross    gabor_032 gabor_161 gabor_137 gabor_099    gabor_032_alt gabor_161 gabor_137_alt gabor_099      "1_5_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_032_161_137_099_target_position_2_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_052_framed    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_052_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   75    80   292   292   399   125  9543  2992 12342      fixation_cross    gabor_021 gabor_068 gabor_180 gabor_137    gabor_021 gabor_068_alt gabor_180 gabor_137_alt      "1_6_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_021_068_180_137_target_position_1_3_retrieval_position_1"      gabor_157_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_157_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   88    93   292   292   399   125  9543  2992 12342      fixation_cross    gabor_011 gabor_175 gabor_156 gabor_094    gabor_011 gabor_175_alt gabor_156 gabor_094_alt      "1_7_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_011_175_156_094_target_position_1_3_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_048_framed    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_048_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  101   107   292   292   399   125 11543  2992 14342      fixation_cross    gabor_067 gabor_139 gabor_008 gabor_094    gabor_067 gabor_139_alt gabor_008 gabor_094_alt      "1_8_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_067_139_008_094_target_position_1_3_retrieval_position_1"     gabor_067_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_067_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  116   122   292   292   399   125 11543  2992 12342      fixation_cross    gabor_071 gabor_052 gabor_120 gabor_136    gabor_071_alt gabor_052 gabor_120_alt gabor_136      "1_9_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_071_052_120_136_target_position_2_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_136_framed    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_136_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  130   136   292   292   399   125 11543  2992 12342      fixation_cross    gabor_112 gabor_047 gabor_023 gabor_163    gabor_112_alt gabor_047 gabor_023 gabor_163_alt     "1_10_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_112_047_023_163_target_position_2_3_retrieval_position_2"     gabor_circ gabor_093_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_093_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  144   150   292   292   399   125 11543  2992 14342      fixation_cross    gabor_129 gabor_151 gabor_065 gabor_016    gabor_129_alt gabor_151 gabor_065 gabor_016_alt     "1_11_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_129_151_065_016_target_position_2_3_retrieval_position_1"     gabor_129_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_129_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  159   164   292   292   399   125  9543  2992 14342      fixation_cross    gabor_168 gabor_012 gabor_063 gabor_027    gabor_168_alt gabor_012 gabor_063_alt gabor_027     "1_12_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_168_012_063_027_target_position_2_4_retrieval_position_2"      gabor_circ gabor_149_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_149_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  173   178   292   292   399   125  9543  2992 12342      fixation_cross    gabor_114 gabor_002 gabor_036 gabor_081    gabor_114_alt gabor_002_alt gabor_036 gabor_081     "1_13_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_114_002_036_081_target_position_3_4_retrieval_position_2"      gabor_circ gabor_002_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_002_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  186   192   292   292   399   125 11543  2992 14342      fixation_cross    gabor_061 gabor_092 gabor_121 gabor_147    gabor_061 gabor_092 gabor_121_alt gabor_147_alt     "1_14_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_061_092_121_147_target_position_1_2_retrieval_position_1"     gabor_015_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_015_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_125 gabor_052 gabor_157 gabor_007    gabor_125 gabor_052 gabor_157_alt gabor_007_alt     "1_15_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_125_052_157_007_target_position_1_2_retrieval_position_2"     gabor_circ gabor_052_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_052_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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