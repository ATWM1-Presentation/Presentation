# ATWM1 MRI Experiment
                         
scenario = "ATWM1_Working_Memory_MRI_salient_cued_run1";
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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_126 gabor_101 gabor_160 gabor_180    gabor_126 gabor_101_alt gabor_160 gabor_180_alt      "1_1_Encoding_Working_Memory_MRI_P6_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_126_101_160_180_target_position_2_4_retrieval_position_2"        gabor_circ gabor_051_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_1_Retrieval_Working_Memory_MRI_P6_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_051_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   20    26   292   292   399   125 11543  2992 12342      fixation_cross    gabor_056 gabor_130 gabor_085 gabor_007    gabor_056_alt gabor_130 gabor_085_alt gabor_007      "1_2_Encoding_Working_Memory_MRI_P6_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_056_130_085_007_target_position_1_3_retrieval_position_3"        gabor_circ gabor_circ gabor_085_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_2_Retrieval_Working_Memory_MRI_P6_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_085_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   34    40   292   292   399   125 11543  2992 14342      fixation_cross    gabor_086 gabor_126 gabor_018 gabor_175    gabor_086_alt gabor_126 gabor_018_alt gabor_175      "1_3_Encoding_Working_Memory_MRI_P6_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_086_126_018_175_target_position_1_3_retrieval_position_1"        gabor_086_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_3_Retrieval_Working_Memory_MRI_P6_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_086_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   49    55   292   292   399   125 11543  2992 14342      fixation_cross    gabor_085 gabor_111 gabor_022 gabor_145    gabor_085 gabor_111_alt gabor_022_alt gabor_145      "1_4_Encoding_Working_Memory_MRI_P6_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_085_111_022_145_target_position_2_3_retrieval_position_2"        gabor_circ gabor_063_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_4_Retrieval_Working_Memory_MRI_P6_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_063_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   64    69   292   292   399   125  9543  2992 14342      fixation_cross    gabor_171 gabor_153 gabor_085 gabor_120    gabor_171_alt gabor_153 gabor_085 gabor_120_alt      "1_5_Encoding_Working_Memory_MRI_P6_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_171_153_085_120_target_position_1_4_retrieval_position_1"         gabor_034_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_5_Retrieval_Working_Memory_MRI_P6_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_034_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   78    83   292   292   399   125  9543  2992 12342      fixation_cross    gabor_159 gabor_094 gabor_121 gabor_044    gabor_159_alt gabor_094 gabor_121 gabor_044_alt      "1_6_Encoding_Working_Memory_MRI_P6_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_159_094_121_044_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_044_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_6_Retrieval_Working_Memory_MRI_P6_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_044_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   91    96   292   292   399   125  9543  2992 14342      fixation_cross    gabor_077 gabor_059 gabor_004 gabor_138    gabor_077 gabor_059 gabor_004_alt gabor_138_alt      "1_7_Encoding_Working_Memory_MRI_P6_RL_Salient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_077_059_004_138_target_position_3_4_retrieval_position_1"         gabor_032_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_7_Retrieval_Working_Memory_MRI_P6_RL_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_032_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  105   111   292   292   399   125 11543  2992 14342      fixation_cross    gabor_082 gabor_126 gabor_098 gabor_021    gabor_082 gabor_126_alt gabor_098 gabor_021_alt      "1_8_Encoding_Working_Memory_MRI_P6_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_082_126_098_021_target_position_2_4_retrieval_position_2"        gabor_circ gabor_171_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_8_Retrieval_Working_Memory_MRI_P6_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_171_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  120   125   292   292   399   125  9543  2992 12342      fixation_cross    gabor_107 gabor_170 gabor_150 gabor_040    gabor_107_alt gabor_170_alt gabor_150 gabor_040      "1_9_Encoding_Working_Memory_MRI_P6_RL_Salient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_107_170_150_040_target_position_1_2_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_040_framed    blank blank blank blank    fixation_cross_target_position_1_2     "1_9_Retrieval_Working_Memory_MRI_P6_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_040_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  133   138   292   292   399   125  9543  2992 14342      fixation_cross    gabor_049 gabor_013 gabor_084 gabor_166    gabor_049 gabor_013_alt gabor_084 gabor_166_alt     "1_10_Encoding_Working_Memory_MRI_P6_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_049_013_084_166_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_029_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_10_Retrieval_Working_Memory_MRI_P6_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_029_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  147   152   292   292   399   125  9543  2992 12342      fixation_cross    gabor_093 gabor_176 gabor_117 gabor_043    gabor_093_alt gabor_176 gabor_117_alt gabor_043     "1_11_Encoding_Working_Memory_MRI_P6_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_093_176_117_043_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_117_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_11_Retrieval_Working_Memory_MRI_P6_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_117_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  160   166   292   292   399   125 11543  2992 12342      fixation_cross    gabor_144 gabor_094 gabor_119 gabor_054    gabor_144 gabor_094_alt gabor_119_alt gabor_054     "1_12_Encoding_Working_Memory_MRI_P6_RL_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_144_094_119_054_target_position_2_3_retrieval_position_1"        gabor_144_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_12_Retrieval_Working_Memory_MRI_P6_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_144_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  174   179   292   292   399   125  9543  2992 12342      fixation_cross    gabor_156 gabor_115 gabor_089 gabor_073    gabor_156 gabor_115 gabor_089_alt gabor_073_alt     "1_13_Encoding_Working_Memory_MRI_P6_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_156_115_089_073_target_position_3_4_retrieval_position_3"         gabor_circ gabor_circ gabor_089_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4    "1_13_Retrieval_Working_Memory_MRI_P6_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_089_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  187   193   292   292   399   125 11543  2992 14342      fixation_cross    gabor_080 gabor_161 gabor_112 gabor_003    gabor_080 gabor_161_alt gabor_112 gabor_003_alt     "1_14_Encoding_Working_Memory_MRI_P6_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_080_161_112_003_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_139_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_14_Retrieval_Working_Memory_MRI_P6_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_139_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_022 gabor_087 gabor_067 gabor_148    gabor_022_alt gabor_087 gabor_067 gabor_148_alt     "1_15_Encoding_Working_Memory_MRI_P6_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_022_087_067_148_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_148_framed    blank blank blank blank    fixation_cross_target_position_1_4    "1_15_Retrieval_Working_Memory_MRI_P6_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_148_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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