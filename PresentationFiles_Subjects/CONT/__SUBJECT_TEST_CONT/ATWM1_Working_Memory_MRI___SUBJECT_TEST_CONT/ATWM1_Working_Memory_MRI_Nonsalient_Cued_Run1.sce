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
    6    12   292   292   399   125 11543  2992 14342      fixation_cross    gabor_134 gabor_090 gabor_062 gabor_004    gabor_134_alt gabor_090 gabor_062_alt gabor_004      "1_1_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_134_090_062_004_target_position_2_4_retrieval_position_2"     gabor_circ gabor_090_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_1_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_090_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   21    27   292   292   399   125 11543  2992 14342      fixation_cross    gabor_122 gabor_106 gabor_016 gabor_141    gabor_122_alt gabor_106 gabor_016 gabor_141_alt      "1_2_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_122_106_016_141_target_position_2_3_retrieval_position_3"     gabor_circ gabor_circ gabor_062_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_2_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_062_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   36    42   292   292   399   125 11543  2992 12342      fixation_cross    gabor_046 gabor_119 gabor_082 gabor_163    gabor_046 gabor_119_alt gabor_082 gabor_163_alt      "1_3_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_046_119_082_163_target_position_1_3_retrieval_position_1"     gabor_046_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_3_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_046_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   50    55   292   292   399   125  9543  2992 12342      fixation_cross    gabor_127 gabor_069 gabor_091 gabor_150    gabor_127 gabor_069_alt gabor_091_alt gabor_150      "1_4_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_127_069_091_150_target_position_1_4_retrieval_position_3"      gabor_circ gabor_circ gabor_041_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_4_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_041_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   63    69   292   292   399   125 11543  2992 14342      fixation_cross    gabor_009 gabor_119 gabor_079 gabor_169    gabor_009 gabor_119_alt gabor_079_alt gabor_169      "1_5_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_009_119_079_169_target_position_1_4_retrieval_position_1"     gabor_009_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_5_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_009_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   78    83   292   292   399   125  9543  2992 14342      fixation_cross    gabor_144 gabor_016 gabor_033 gabor_123    gabor_144_alt gabor_016_alt gabor_033 gabor_123      "1_6_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_144_016_033_123_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_033_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_6_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_033_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   92    98   292   292   399   125 11543  2992 14342      fixation_cross    gabor_095 gabor_013 gabor_174 gabor_030    gabor_095 gabor_013_alt gabor_174 gabor_030_alt      "1_7_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_095_013_174_030_target_position_1_3_retrieval_position_1"     gabor_095_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_7_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_095_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  107   112   292   292   399   125  9543  2992 14342      fixation_cross    gabor_072 gabor_162 gabor_093 gabor_006    gabor_072_alt gabor_162_alt gabor_093 gabor_006      "1_8_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_072_162_093_006_target_position_3_4_retrieval_position_1"      gabor_072_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_8_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_072_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  121   126   292   292   399   125  9543  2992 12342      fixation_cross    gabor_129 gabor_100 gabor_081 gabor_145    gabor_129 gabor_100_alt gabor_081_alt gabor_145      "1_9_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_129_100_081_145_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_010_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_9_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_010_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  134   140   292   292   399   125 11543  2992 12342      fixation_cross    gabor_020 gabor_109 gabor_149 gabor_165    gabor_020_alt gabor_109 gabor_149_alt gabor_165     "1_10_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_020_109_149_165_target_position_2_4_retrieval_position_2"     gabor_circ gabor_059_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_10_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_059_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  148   153   292   292   399   125  9543  2992 12342      fixation_cross    gabor_158 gabor_094 gabor_071 gabor_051    gabor_158_alt gabor_094_alt gabor_071 gabor_051     "1_11_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_158_094_071_051_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_117_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_11_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_117_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  161   166   292   292   399   125  9543  2992 14342      fixation_cross    gabor_127 gabor_156 gabor_066 gabor_016    gabor_127 gabor_156_alt gabor_066_alt gabor_016     "1_12_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_127_156_066_016_target_position_1_4_retrieval_position_1"      gabor_082_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_12_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_082_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  175   180   292   292   399   125  9543  2992 12342      fixation_cross    gabor_146 gabor_008 gabor_068 gabor_026    gabor_146 gabor_008_alt gabor_068_alt gabor_026     "1_13_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_146_008_068_026_target_position_1_4_retrieval_position_3"      gabor_circ gabor_circ gabor_068_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_13_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_068_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  188   193   292   292   399   125  9543  2992 12342      fixation_cross    gabor_139 gabor_104 gabor_016 gabor_170    gabor_139_alt gabor_104_alt gabor_016 gabor_170     "1_14_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_139_104_016_170_target_position_3_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_122_framed    blank blank blank blank    fixation_cross_target_position_3_4    "1_14_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_122_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_090 gabor_153 gabor_008 gabor_173    gabor_090 gabor_153_alt gabor_008 gabor_173_alt     "1_15_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_090_153_008_173_target_position_1_3_retrieval_position_1"     gabor_090_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_15_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_090_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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