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
    6    11   292   292   399   125  9543  2992 12342      fixation_cross    gabor_169 gabor_049 gabor_028 gabor_139    gabor_169 gabor_049_alt gabor_028_alt gabor_139      "1_1_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_169_049_028_139_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_089_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_1_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_089_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   19    25   292   292   399   125 11543  2992 14342      fixation_cross    gabor_166 gabor_086 gabor_150 gabor_110    gabor_166_alt gabor_086 gabor_150_alt gabor_110      "1_2_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_166_086_150_110_target_position_2_4_retrieval_position_2"     gabor_circ gabor_086_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_2_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_086_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   34    39   292   292   399   125  9543  2992 12342      fixation_cross    gabor_018 gabor_051 gabor_156 gabor_089    gabor_018 gabor_051 gabor_156_alt gabor_089_alt      "1_3_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_018_051_156_089_target_position_1_2_retrieval_position_1"      gabor_067_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_3_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_067_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   47    52   292   292   399   125  9543  2992 12342      fixation_cross    gabor_176 gabor_064 gabor_117 gabor_037    gabor_176 gabor_064_alt gabor_117_alt gabor_037      "1_4_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_176_064_117_037_target_position_1_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_037_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_4_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_037_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   60    65   292   292   399   125  9543  2992 14342      fixation_cross    gabor_079 gabor_126 gabor_105 gabor_043    gabor_079_alt gabor_126 gabor_105 gabor_043_alt      "1_5_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_079_126_105_043_target_position_2_3_retrieval_position_3"      gabor_circ gabor_circ gabor_105_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_5_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_105_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   74    79   292   292   399   125  9543  2992 14342      fixation_cross    gabor_169 gabor_088 gabor_138 gabor_054    gabor_169 gabor_088_alt gabor_138_alt gabor_054      "1_6_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_169_088_138_054_target_position_1_4_retrieval_position_1"      gabor_030_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_6_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_030_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   88    93   292   292   399   125  9543  2992 14342      fixation_cross    gabor_041 gabor_131 gabor_156 gabor_107    gabor_041 gabor_131_alt gabor_156_alt gabor_107      "1_7_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_041_131_156_107_target_position_1_4_retrieval_position_2"      gabor_circ gabor_085_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_7_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_085_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  102   107   292   292   399   125  9543  2992 12342      fixation_cross    gabor_031 gabor_003 gabor_062 gabor_079    gabor_031 gabor_003_alt gabor_062 gabor_079_alt      "1_8_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_031_003_062_079_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_062_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_8_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_062_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  115   121   292   292   399   125 11543  2992 14342      fixation_cross    gabor_066 gabor_088 gabor_108 gabor_149    gabor_066 gabor_088 gabor_108_alt gabor_149_alt      "1_9_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_066_088_108_149_target_position_1_2_retrieval_position_2"     gabor_circ gabor_041_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_9_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_041_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  130   136   292   292   399   125 11543  2992 12342      fixation_cross    gabor_082 gabor_059 gabor_105 gabor_166    gabor_082_alt gabor_059_alt gabor_105 gabor_166     "1_10_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_082_059_105_166_target_position_3_4_retrieval_position_1"     gabor_082_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_10_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_082_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  144   150   292   292   399   125 11543  2992 12342      fixation_cross    gabor_016 gabor_172 gabor_139 gabor_156    gabor_016 gabor_172_alt gabor_139_alt gabor_156     "1_11_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_016_172_139_156_target_position_1_4_retrieval_position_1"     gabor_016_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_11_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_016_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  158   163   292   292   399   125  9543  2992 12342      fixation_cross    gabor_179 gabor_006 gabor_039 gabor_122    gabor_179_alt gabor_006 gabor_039_alt gabor_122     "1_12_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_179_006_039_122_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_072_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_12_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_072_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  171   177   292   292   399   125 11543  2992 14342      fixation_cross    gabor_060 gabor_111 gabor_145 gabor_033    gabor_060 gabor_111_alt gabor_145 gabor_033_alt     "1_13_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_060_111_145_033_target_position_1_3_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_033_framed    blank blank blank blank    fixation_cross_target_position_1_3    "1_13_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_033_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  186   192   292   292   399   125 11543  2992 14342      fixation_cross    gabor_117 gabor_034 gabor_051 gabor_004    gabor_117 gabor_034 gabor_051_alt gabor_004_alt     "1_14_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_117_034_051_004_target_position_1_2_retrieval_position_2"     gabor_circ gabor_034_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2    "1_14_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_034_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_057 gabor_108 gabor_042 gabor_072    gabor_057_alt gabor_108 gabor_042_alt gabor_072     "1_15_Encoding_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_057_108_042_072_target_position_2_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_024_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_15_Retrieval_Working_Memory_MRI_P5_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_024_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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