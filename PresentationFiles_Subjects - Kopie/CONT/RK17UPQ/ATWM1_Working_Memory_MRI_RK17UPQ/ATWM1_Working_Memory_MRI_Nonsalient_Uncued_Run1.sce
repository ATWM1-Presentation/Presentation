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
    6    11   292   292   399   125  9543  2992 12342      fixation_cross    gabor_103 gabor_168 gabor_087 gabor_042    gabor_103_alt gabor_168 gabor_087 gabor_042_alt      "1_1_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_103_168_087_042_target_position_2_3_retrieval_position_2"      gabor_circ gabor_168_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_168_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   19    25   292   292   399   125 11543  2992 14342      fixation_cross    gabor_009 gabor_180 gabor_158 gabor_117    gabor_009_alt gabor_180_alt gabor_158 gabor_117      "1_2_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_009_180_158_117_target_position_3_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_069_framed    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_069_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   34    40   292   292   399   125 11543  2992 14342      fixation_cross    gabor_051 gabor_134 gabor_118 gabor_073    gabor_051 gabor_134 gabor_118_alt gabor_073_alt      "1_3_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_051_134_118_073_target_position_1_2_retrieval_position_2"     gabor_circ gabor_134_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_134_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   49    54   292   292   399   125  9543  2992 12342      fixation_cross    gabor_005 gabor_164 gabor_058 gabor_119    gabor_005_alt gabor_164 gabor_058_alt gabor_119      "1_4_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_005_164_058_119_target_position_2_4_retrieval_position_2"      gabor_circ gabor_029_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_029_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   62    67   292   292   399   125  9543  2992 12342      fixation_cross    gabor_108 gabor_125 gabor_066 gabor_173    gabor_108_alt gabor_125_alt gabor_066 gabor_173      "1_5_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_108_125_066_173_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_066_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_066_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   75    80   292   292   399   125  9543  2992 12342      fixation_cross    gabor_111 gabor_133 gabor_171 gabor_002    gabor_111_alt gabor_133 gabor_171_alt gabor_002      "1_6_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_111_133_171_002_target_position_2_4_retrieval_position_1"      gabor_111_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_111_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   88    93   292   292   399   125  9543  2992 14342      fixation_cross    gabor_180 gabor_014 gabor_152 gabor_066    gabor_180 gabor_014_alt gabor_152_alt gabor_066      "1_7_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_180_014_152_066_target_position_1_4_retrieval_position_1"      gabor_180_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_180_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  102   108   292   292   399   125 11543  2992 12342      fixation_cross    gabor_074 gabor_036 gabor_145 gabor_094    gabor_074 gabor_036_alt gabor_145_alt gabor_094      "1_8_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_074_036_145_094_target_position_1_4_retrieval_position_1"     gabor_119_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_119_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  116   121   292   292   399   125  9543  2992 12342      fixation_cross    gabor_059 gabor_138 gabor_121 gabor_076    gabor_059_alt gabor_138 gabor_121 gabor_076_alt      "1_9_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_059_138_121_076_target_position_2_3_retrieval_position_1"      gabor_104_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_104_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  129   134   292   292   399   125  9543  2992 12342      fixation_cross    gabor_124 gabor_100 gabor_166 gabor_042    gabor_124 gabor_100_alt gabor_166 gabor_042_alt     "1_10_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_124_100_166_042_target_position_1_3_retrieval_position_1"      gabor_077_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_077_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  142   148   292   292   399   125 11543  2992 14342      fixation_cross    gabor_036 gabor_067 gabor_120 gabor_009    gabor_036_alt gabor_067 gabor_120_alt gabor_009     "1_11_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_036_067_120_009_target_position_2_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_009_framed    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_009_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  157   162   292   292   399   125  9543  2992 14342      fixation_cross    gabor_047 gabor_099 gabor_081 gabor_161    gabor_047_alt gabor_099 gabor_081 gabor_161_alt     "1_12_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_047_099_081_161_target_position_2_3_retrieval_position_3"      gabor_circ gabor_circ gabor_130_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_130_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  171   177   292   292   399   125 11543  2992 14342      fixation_cross    gabor_089 gabor_071 gabor_139 gabor_030    gabor_089 gabor_071_alt gabor_139_alt gabor_030     "1_13_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_089_071_139_030_target_position_1_4_retrieval_position_2"     gabor_circ gabor_071_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_071_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  186   192   292   292   399   125 11543  2992 14342      fixation_cross    gabor_090 gabor_064 gabor_001 gabor_132    gabor_090 gabor_064_alt gabor_001 gabor_132_alt     "1_14_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_090_064_001_132_target_position_1_3_retrieval_position_1"     gabor_042_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_042_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  201   207   292   292   399   125 11543  2992 14342      fixation_cross    gabor_161 gabor_081 gabor_003 gabor_145    gabor_161 gabor_081_alt gabor_003 gabor_145_alt     "1_15_Encoding_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_161_081_003_145_target_position_1_3_retrieval_position_1"     gabor_161_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P3_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_161_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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