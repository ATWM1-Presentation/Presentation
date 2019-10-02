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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_059 gabor_020 gabor_091 gabor_171    gabor_059_alt gabor_020 gabor_091 gabor_171_alt      "1_1_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_059_020_091_171_target_position_2_3_retrieval_position_3"      gabor_circ gabor_circ gabor_136_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_1_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_136_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    26   292   292   399   125 11543  2992 14342      fixation_cross    gabor_009 gabor_141 gabor_163 gabor_033    gabor_009_alt gabor_141_alt gabor_163 gabor_033      "1_2_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_009_141_163_033_target_position_3_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_033_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_2_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_033_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   35    40   292   292   399   125  9543  2992 14342      fixation_cross    gabor_160 gabor_133 gabor_022 gabor_004    gabor_160 gabor_133_alt gabor_022 gabor_004_alt      "1_3_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_160_133_022_004_target_position_1_3_retrieval_position_1"      gabor_110_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_3_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_110_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   49    55   292   292   399   125 11543  2992 12342      fixation_cross    gabor_092 gabor_060 gabor_006 gabor_114    gabor_092_alt gabor_060_alt gabor_006 gabor_114      "1_4_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_092_060_006_114_target_position_3_4_retrieval_position_1"     gabor_092_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_4_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_092_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   63    69   292   292   399   125 11543  2992 14342      fixation_cross    gabor_049 gabor_175 gabor_160 gabor_111    gabor_049 gabor_175_alt gabor_160_alt gabor_111      "1_5_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_049_175_160_111_target_position_1_4_retrieval_position_1"     gabor_049_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_5_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_049_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   78    83   292   292   399   125  9543  2992 12342      fixation_cross    gabor_158 gabor_142 gabor_100 gabor_075    gabor_158 gabor_142_alt gabor_100_alt gabor_075      "1_6_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_158_142_100_075_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_075_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_6_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_075_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   91    96   292   292   399   125  9543  2992 14342      fixation_cross    gabor_168 gabor_010 gabor_115 gabor_131    gabor_168_alt gabor_010 gabor_115_alt gabor_131      "1_7_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_168_010_115_131_target_position_2_4_retrieval_position_2"      gabor_circ gabor_010_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_7_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_010_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  105   111   292   292   399   125 11543  2992 12342      fixation_cross    gabor_086 gabor_047 gabor_137 gabor_114    gabor_086 gabor_047_alt gabor_137_alt gabor_114      "1_8_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_086_047_137_114_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_069_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_8_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_069_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  119   124   292   292   399   125  9543  2992 14342      fixation_cross    gabor_021 gabor_158 gabor_094 gabor_138    gabor_021_alt gabor_158_alt gabor_094 gabor_138      "1_9_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_021_158_094_138_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_048_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_9_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_048_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  133   138   292   292   399   125  9543  2992 12342      fixation_cross    gabor_045 gabor_155 gabor_109 gabor_071    gabor_045_alt gabor_155_alt gabor_109 gabor_071     "1_10_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_045_155_109_071_target_position_3_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_026_framed    blank blank blank blank    fixation_cross_target_position_3_4    "1_10_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_026_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  146   151   292   292   399   125  9543  2992 14342      fixation_cross    gabor_180 gabor_137 gabor_118 gabor_158    gabor_180_alt gabor_137 gabor_118_alt gabor_158     "1_11_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_180_137_118_158_target_position_2_4_retrieval_position_3"      gabor_circ gabor_circ gabor_073_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_11_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_073_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  160   166   292   292   399   125 11543  2992 14342      fixation_cross    gabor_138 gabor_023 gabor_178 gabor_063    gabor_138 gabor_023_alt gabor_178_alt gabor_063     "1_12_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_138_023_178_063_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_063_framed    blank blank blank blank    fixation_cross_target_position_1_4    "1_12_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_063_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  175   181   292   292   399   125 11543  2992 12342      fixation_cross    gabor_043 gabor_091 gabor_114 gabor_071    gabor_043 gabor_091 gabor_114_alt gabor_071_alt     "1_13_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_043_091_114_071_target_position_1_2_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_071_framed    blank blank blank blank    fixation_cross_target_position_1_2    "1_13_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_071_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  189   195   292   292   399   125 11543  2992 12342      fixation_cross    gabor_012 gabor_100 gabor_175 gabor_067    gabor_012_alt gabor_100 gabor_175 gabor_067_alt     "1_14_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_012_100_175_067_target_position_2_3_retrieval_position_3"     gabor_circ gabor_circ gabor_125_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_14_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_125_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  203   208   292   292   399   125  9543  2992 12342      fixation_cross    gabor_009 gabor_173 gabor_046 gabor_128    gabor_009_alt gabor_173 gabor_046 gabor_128_alt     "1_15_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_009_173_046_128_target_position_2_3_retrieval_position_3"      gabor_circ gabor_circ gabor_046_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_15_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_046_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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