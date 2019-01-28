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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_122 gabor_071 gabor_050 gabor_156    gabor_122 gabor_071_alt gabor_050 gabor_156_alt      "1_1_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_122_071_050_156_target_position_1_3_retrieval_position_3"     gabor_circ gabor_circ gabor_050_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_050_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   20    26   292   292   399   125 11543  2992 12342      fixation_cross    gabor_103 gabor_062 gabor_034 gabor_146    gabor_103_alt gabor_062 gabor_034 gabor_146_alt      "1_2_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_103_062_034_146_target_position_2_3_retrieval_position_2"     gabor_circ gabor_016_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_016_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   34    39   292   292   399   125  9543  2992 12342      fixation_cross    gabor_108 gabor_021 gabor_092 gabor_050    gabor_108_alt gabor_021_alt gabor_092 gabor_050      "1_3_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_108_021_092_050_target_position_3_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_002_framed    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_002_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   47    52   292   292   399   125  9543  2992 12342      fixation_cross    gabor_134 gabor_110 gabor_048 gabor_086    gabor_134 gabor_110_alt gabor_048 gabor_086_alt      "1_4_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_134_110_048_086_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_048_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_048_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   60    66   292   292   399   125 11543  2992 14342      fixation_cross    gabor_164 gabor_102 gabor_039 gabor_078    gabor_164_alt gabor_102_alt gabor_039 gabor_078      "1_5_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_164_102_039_078_target_position_3_4_retrieval_position_2"     gabor_circ gabor_148_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_148_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   75    81   292   292   399   125 11543  2992 14342      fixation_cross    gabor_145 gabor_006 gabor_026 gabor_072    gabor_145_alt gabor_006_alt gabor_026 gabor_072      "1_6_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_145_006_026_072_target_position_3_4_retrieval_position_3"     gabor_circ gabor_circ gabor_161_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_161_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   90    96   292   292   399   125 11543  2992 14342      fixation_cross    gabor_017 gabor_148 gabor_039 gabor_059    gabor_017_alt gabor_148 gabor_039 gabor_059_alt      "1_7_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_017_148_039_059_target_position_2_3_retrieval_position_3"     gabor_circ gabor_circ gabor_085_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_085_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  105   111   292   292   399   125 11543  2992 14342      fixation_cross    gabor_045 gabor_028 gabor_001 gabor_159    gabor_045 gabor_028_alt gabor_001 gabor_159_alt      "1_8_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_045_028_001_159_target_position_1_3_retrieval_position_2"     gabor_circ gabor_028_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_028_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  120   126   292   292   399   125 11543  2992 14342      fixation_cross    gabor_164 gabor_030 gabor_002 gabor_089    gabor_164_alt gabor_030_alt gabor_002 gabor_089      "1_9_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_164_030_002_089_target_position_3_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_089_framed    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_089_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  135   140   292   292   399   125  9543  2992 12342      fixation_cross    gabor_076 gabor_153 gabor_007 gabor_119    gabor_076 gabor_153_alt gabor_007_alt gabor_119     "1_10_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_076_153_007_119_target_position_1_4_retrieval_position_1"      gabor_076_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_076_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  148   153   292   292   399   125  9543  2992 14342      fixation_cross    gabor_044 gabor_065 gabor_102 gabor_149    gabor_044 gabor_065_alt gabor_102_alt gabor_149     "1_11_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_044_065_102_149_target_position_1_4_retrieval_position_1"      gabor_180_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_180_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  162   167   292   292   399   125  9543  2992 14342      fixation_cross    gabor_057 gabor_081 gabor_145 gabor_026    gabor_057_alt gabor_081 gabor_145 gabor_026_alt     "1_12_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_057_081_145_026_target_position_2_3_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_026_framed    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_026_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  176   181   292   292   399   125  9543  2992 12342      fixation_cross    gabor_098 gabor_014 gabor_168 gabor_078    gabor_098 gabor_014_alt gabor_168 gabor_078_alt     "1_13_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_098_014_168_078_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_168_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_168_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  189   194   292   292   399   125  9543  2992 12342      fixation_cross    gabor_136 gabor_084 gabor_172 gabor_111    gabor_136_alt gabor_084 gabor_172_alt gabor_111     "1_14_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_136_084_172_111_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_111_framed    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_111_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_142 gabor_052 gabor_002 gabor_159    gabor_142_alt gabor_052 gabor_002_alt gabor_159     "1_15_Encoding_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_142_052_002_159_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_022_framed    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P1_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_022_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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