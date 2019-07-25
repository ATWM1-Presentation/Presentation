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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_004 gabor_147 gabor_027 gabor_065    gabor_004_alt gabor_147_alt gabor_027 gabor_065      "1_1_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_004_147_027_065_target_position_3_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_065_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_1_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_065_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    25   292   292   399   125  9543  2992 12342      fixation_cross    gabor_107 gabor_155 gabor_035 gabor_124    gabor_107_alt gabor_155 gabor_035_alt gabor_124      "1_2_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_107_155_035_124_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_076_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_2_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_076_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   33    38   292   292   399   125  9543  2992 12342      fixation_cross    gabor_118 gabor_136 gabor_001 gabor_153    gabor_118_alt gabor_136 gabor_001_alt gabor_153      "1_3_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_118_136_001_153_target_position_2_4_retrieval_position_2"      gabor_circ gabor_086_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_3_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_086_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   46    52   292   292   399   125 11543  2992 12342      fixation_cross    gabor_161 gabor_056 gabor_102 gabor_120    gabor_161_alt gabor_056 gabor_102_alt gabor_120      "1_4_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_161_056_102_120_target_position_2_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_073_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_4_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_073_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   60    65   292   292   399   125  9543  2992 12342      fixation_cross    gabor_135 gabor_091 gabor_052 gabor_017    gabor_135_alt gabor_091 gabor_052 gabor_017_alt      "1_5_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_135_091_052_017_target_position_2_3_retrieval_position_1"      gabor_180_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_5_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_180_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   73    79   292   292   399   125 11543  2992 14342      fixation_cross    gabor_166 gabor_117 gabor_061 gabor_035    gabor_166_alt gabor_117_alt gabor_061 gabor_035      "1_6_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_166_117_061_035_target_position_3_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_035_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_6_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_035_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   88    93   292   292   399   125  9543  2992 14342      fixation_cross    gabor_048 gabor_132 gabor_161 gabor_087    gabor_048_alt gabor_132_alt gabor_161 gabor_087      "1_7_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_048_132_161_087_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_026_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_7_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_026_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  102   107   292   292   399   125  9543  2992 14342      fixation_cross    gabor_160 gabor_137 gabor_104 gabor_030    gabor_160_alt gabor_137 gabor_104_alt gabor_030      "1_8_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_160_137_104_030_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_075_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_8_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_075_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  116   121   292   292   399   125  9543  2992 14342      fixation_cross    gabor_174 gabor_034 gabor_144 gabor_015    gabor_174_alt gabor_034 gabor_144_alt gabor_015      "1_9_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_174_034_144_015_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_015_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_9_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_015_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  130   136   292   292   399   125 11543  2992 14342      fixation_cross    gabor_049 gabor_128 gabor_169 gabor_011    gabor_049 gabor_128_alt gabor_169_alt gabor_011     "1_10_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_049_128_169_011_target_position_1_4_retrieval_position_1"     gabor_049_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_10_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_049_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  145   151   292   292   399   125 11543  2992 12342      fixation_cross    gabor_136 gabor_002 gabor_114 gabor_165    gabor_136 gabor_002 gabor_114_alt gabor_165_alt     "1_11_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_136_002_114_165_target_position_1_2_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_165_framed    blank blank blank blank    fixation_cross_target_position_1_2    "1_11_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_165_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  159   165   292   292   399   125 11543  2992 14342      fixation_cross    gabor_149 gabor_125 gabor_041 gabor_018    gabor_149_alt gabor_125 gabor_041_alt gabor_018     "1_12_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_149_125_041_018_target_position_2_4_retrieval_position_2"     gabor_circ gabor_125_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_12_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_125_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  174   179   292   292   399   125  9543  2992 14342      fixation_cross    gabor_046 gabor_173 gabor_087 gabor_115    gabor_046 gabor_173_alt gabor_087_alt gabor_115     "1_13_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_046_173_087_115_target_position_1_4_retrieval_position_1"      gabor_046_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_13_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_046_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   194   292   292   399   125 11543  2992 14342      fixation_cross    gabor_129 gabor_068 gabor_090 gabor_013    gabor_129 gabor_068_alt gabor_090 gabor_013_alt     "1_14_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_129_068_090_013_target_position_1_3_retrieval_position_1"     gabor_176_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_14_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_176_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  203   208   292   292   399   125  9543  2992 12342      fixation_cross    gabor_089 gabor_036 gabor_142 gabor_055    gabor_089 gabor_036 gabor_142_alt gabor_055_alt     "1_15_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_089_036_142_055_target_position_1_2_retrieval_position_3"      gabor_circ gabor_circ gabor_142_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_15_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_142_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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