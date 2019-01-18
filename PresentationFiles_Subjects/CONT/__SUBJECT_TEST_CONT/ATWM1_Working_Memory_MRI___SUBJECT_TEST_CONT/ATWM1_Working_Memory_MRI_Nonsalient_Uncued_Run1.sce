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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_088 gabor_172 gabor_056 gabor_111    gabor_088 gabor_172 gabor_056_alt gabor_111_alt      "1_1_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_088_172_056_111_target_position_1_2_retrieval_position_2"      gabor_circ gabor_172_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_172_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   20    26   292   292   399   125 11543  2992 14342      fixation_cross    gabor_140 gabor_010 gabor_057 gabor_179    gabor_140 gabor_010_alt gabor_057_alt gabor_179      "1_2_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_140_010_057_179_target_position_1_4_retrieval_position_1"     gabor_140_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_140_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   35    40   292   292   399   125  9543  2992 14342      fixation_cross    gabor_174 gabor_123 gabor_088 gabor_067    gabor_174_alt gabor_123_alt gabor_088 gabor_067      "1_3_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_174_123_088_067_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_039_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_039_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   49    55   292   292   399   125 11543  2992 12342      fixation_cross    gabor_121 gabor_089 gabor_176 gabor_150    gabor_121 gabor_089_alt gabor_176_alt gabor_150      "1_4_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_121_089_176_150_target_position_1_4_retrieval_position_2"     gabor_circ gabor_089_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_089_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   63    69   292   292   399   125 11543  2992 14342      fixation_cross    gabor_024 gabor_096 gabor_056 gabor_164    gabor_024 gabor_096_alt gabor_056_alt gabor_164      "1_5_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_024_096_056_164_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_164_framed    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_164_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   78    83   292   292   399   125  9543  2992 14342      fixation_cross    gabor_049 gabor_011 gabor_159 gabor_091    gabor_049_alt gabor_011 gabor_159_alt gabor_091      "1_6_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_049_011_159_091_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_091_framed    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_091_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   92    97   292   292   399   125  9543  2992 12342      fixation_cross    gabor_178 gabor_072 gabor_053 gabor_032    gabor_178 gabor_072 gabor_053_alt gabor_032_alt      "1_7_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_178_072_053_032_target_position_1_2_retrieval_position_2"      gabor_circ gabor_072_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_072_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  105   110   292   292   399   125  9543  2992 14342      fixation_cross    gabor_084 gabor_104 gabor_024 gabor_142    gabor_084_alt gabor_104 gabor_024_alt gabor_142      "1_8_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_084_104_024_142_target_position_2_4_retrieval_position_2"      gabor_circ gabor_057_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_057_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  119   125   292   292   399   125 11543  2992 12342      fixation_cross    gabor_065 gabor_131 gabor_154 gabor_171    gabor_065_alt gabor_131_alt gabor_154 gabor_171      "1_9_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_065_131_154_171_target_position_3_4_retrieval_position_3"     gabor_circ gabor_circ gabor_108_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_108_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  133   138   292   292   399   125  9543  2992 12342      fixation_cross    gabor_030 gabor_119 gabor_141 gabor_060    gabor_030_alt gabor_119 gabor_141 gabor_060_alt     "1_10_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_030_119_141_060_target_position_2_3_retrieval_position_3"      gabor_circ gabor_circ gabor_141_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_141_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  146   151   292   292   399   125  9543  2992 12342      fixation_cross    gabor_035 gabor_056 gabor_080 gabor_125    gabor_035 gabor_056_alt gabor_080 gabor_125_alt     "1_11_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_035_056_080_125_target_position_1_3_retrieval_position_2"      gabor_circ gabor_105_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_105_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  159   165   292   292   399   125 11543  2992 14342      fixation_cross    gabor_111 gabor_131 gabor_174 gabor_005    gabor_111 gabor_131_alt gabor_174_alt gabor_005     "1_12_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_111_131_174_005_target_position_1_4_retrieval_position_1"     gabor_157_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_157_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  174   180   292   292   399   125 11543  2992 12342      fixation_cross    gabor_082 gabor_026 gabor_097 gabor_149    gabor_082 gabor_026 gabor_097_alt gabor_149_alt     "1_13_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_082_026_097_149_target_position_1_2_retrieval_position_2"     gabor_circ gabor_165_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_165_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  188   193   292   292   399   125  9543  2992 12342      fixation_cross    gabor_033 gabor_162 gabor_052 gabor_082    gabor_033 gabor_162_alt gabor_052_alt gabor_082     "1_14_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_033_162_052_082_target_position_1_4_retrieval_position_3"      gabor_circ gabor_circ gabor_052_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_052_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_104 gabor_048 gabor_063 gabor_120    gabor_104_alt gabor_048 gabor_063 gabor_120_alt     "1_15_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_104_048_063_120_target_position_2_3_retrieval_position_3"     gabor_circ gabor_circ gabor_014_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_014_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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