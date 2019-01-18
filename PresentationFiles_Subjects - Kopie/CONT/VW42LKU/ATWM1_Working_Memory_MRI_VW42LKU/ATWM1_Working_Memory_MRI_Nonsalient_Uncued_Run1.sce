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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_164 gabor_112 gabor_006 gabor_133    gabor_164 gabor_112_alt gabor_006_alt gabor_133      "1_1_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_164_112_006_133_target_position_1_4_retrieval_position_1"     gabor_026_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_026_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   20    25   292   292   399   125  9543  2992 14342      fixation_cross    gabor_170 gabor_106 gabor_027 gabor_001    gabor_170 gabor_106 gabor_027_alt gabor_001_alt      "1_2_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_170_106_027_001_target_position_1_2_retrieval_position_2"      gabor_circ gabor_152_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_152_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   34    39   292   292   399   125  9543  2992 12342      fixation_cross    gabor_049 gabor_173 gabor_101 gabor_132    gabor_049 gabor_173_alt gabor_101_alt gabor_132      "1_3_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_049_173_101_132_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_084_framed    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_084_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   47    52   292   292   399   125  9543  2992 12342      fixation_cross    gabor_162 gabor_121 gabor_140 gabor_084    gabor_162_alt gabor_121_alt gabor_140 gabor_084      "1_4_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_162_121_140_084_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_140_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_140_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   60    65   292   292   399   125  9543  2992 12342      fixation_cross    gabor_138 gabor_014 gabor_082 gabor_052    gabor_138_alt gabor_014 gabor_082 gabor_052_alt      "1_5_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_138_014_082_052_target_position_2_3_retrieval_position_3"      gabor_circ gabor_circ gabor_032_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_032_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   73    78   292   292   399   125  9543  2992 14342      fixation_cross    gabor_112 gabor_177 gabor_160 gabor_092    gabor_112 gabor_177 gabor_160_alt gabor_092_alt      "1_6_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_112_177_160_092_target_position_1_2_retrieval_position_3"      gabor_circ gabor_circ gabor_160_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_160_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   87    92   292   292   399   125  9543  2992 14342      fixation_cross    gabor_140 gabor_078 gabor_032 gabor_095    gabor_140_alt gabor_078 gabor_032 gabor_095_alt      "1_7_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_140_078_032_095_target_position_2_3_retrieval_position_3"      gabor_circ gabor_circ gabor_032_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_032_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  101   107   292   292   399   125 11543  2992 14342      fixation_cross    gabor_073 gabor_161 gabor_135 gabor_109    gabor_073 gabor_161_alt gabor_135 gabor_109_alt      "1_8_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_073_161_135_109_target_position_1_3_retrieval_position_3"     gabor_circ gabor_circ gabor_135_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_135_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  116   122   292   292   399   125 11543  2992 14342      fixation_cross    gabor_051 gabor_091 gabor_023 gabor_177    gabor_051 gabor_091_alt gabor_023 gabor_177_alt      "1_9_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_051_091_023_177_target_position_1_3_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_132_framed    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_132_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  131   136   292   292   399   125  9543  2992 14342      fixation_cross    gabor_066 gabor_021 gabor_133 gabor_104    gabor_066_alt gabor_021_alt gabor_133 gabor_104     "1_10_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_066_021_133_104_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_133_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_133_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  145   151   292   292   399   125 11543  2992 12342      fixation_cross    gabor_144 gabor_167 gabor_082 gabor_038    gabor_144 gabor_167_alt gabor_082 gabor_038_alt     "1_11_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_144_167_082_038_target_position_1_3_retrieval_position_3"     gabor_circ gabor_circ gabor_127_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_127_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  159   165   292   292   399   125 11543  2992 12342      fixation_cross    gabor_141 gabor_031 gabor_176 gabor_015    gabor_141 gabor_031 gabor_176_alt gabor_015_alt     "1_12_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_141_031_176_015_target_position_1_2_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_015_framed    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_015_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  173   178   292   292   399   125  9543  2992 14342      fixation_cross    gabor_154 gabor_130 gabor_025 gabor_171    gabor_154_alt gabor_130 gabor_025_alt gabor_171     "1_13_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_154_130_025_171_target_position_2_4_retrieval_position_2"      gabor_circ gabor_130_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_130_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  187   193   292   292   399   125 11543  2992 14342      fixation_cross    gabor_119 gabor_068 gabor_089 gabor_143    gabor_119_alt gabor_068 gabor_089_alt gabor_143     "1_14_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_119_068_089_143_target_position_2_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_143_framed    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_143_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  202   208   292   292   399   125 11543  2992 12342      fixation_cross    gabor_103 gabor_120 gabor_166 gabor_060    gabor_103 gabor_120_alt gabor_166_alt gabor_060     "1_15_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_103_120_166_060_target_position_1_4_retrieval_position_1"     gabor_149_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_149_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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