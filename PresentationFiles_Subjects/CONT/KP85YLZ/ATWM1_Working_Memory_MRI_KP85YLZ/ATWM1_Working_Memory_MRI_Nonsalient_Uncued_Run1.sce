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
    6    12   292   292   399   125 11543  2992 14342      fixation_cross    gabor_113 gabor_170 gabor_056 gabor_087    gabor_113_alt gabor_170 gabor_056 gabor_087_alt      "1_1_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_113_170_056_087_target_position_2_3_retrieval_position_2"     gabor_circ gabor_034_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_034_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   21    26   292   292   399   125  9543  2992 14342      fixation_cross    gabor_019 gabor_101 gabor_177 gabor_143    gabor_019_alt gabor_101 gabor_177 gabor_143_alt      "1_2_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_019_101_177_143_target_position_2_3_retrieval_position_3"      gabor_circ gabor_circ gabor_127_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_127_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   35    41   292   292   399   125 11543  2992 12342      fixation_cross    gabor_171 gabor_043 gabor_002 gabor_113    gabor_171_alt gabor_043_alt gabor_002 gabor_113      "1_3_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_171_043_002_113_target_position_3_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_113_framed    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_113_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   49    54   292   292   399   125  9543  2992 14342      fixation_cross    gabor_145 gabor_092 gabor_178 gabor_121    gabor_145 gabor_092 gabor_178_alt gabor_121_alt      "1_4_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_145_092_178_121_target_position_1_2_retrieval_position_1"      gabor_145_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_145_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   63    68   292   292   399   125  9543  2992 14342      fixation_cross    gabor_029 gabor_117 gabor_012 gabor_178    gabor_029_alt gabor_117 gabor_012_alt gabor_178      "1_5_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_029_117_012_178_target_position_2_4_retrieval_position_2"      gabor_circ gabor_117_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_117_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   77    83   292   292   399   125 11543  2992 12342      fixation_cross    gabor_095 gabor_025 gabor_176 gabor_144    gabor_095 gabor_025_alt gabor_176 gabor_144_alt      "1_6_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_095_025_176_144_target_position_1_3_retrieval_position_2"     gabor_circ gabor_025_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_025_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   91    96   292   292   399   125  9543  2992 14342      fixation_cross    gabor_022 gabor_105 gabor_168 gabor_127    gabor_022_alt gabor_105_alt gabor_168 gabor_127      "1_7_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_022_105_168_127_target_position_3_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_082_framed    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_082_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  105   111   292   292   399   125 11543  2992 14342      fixation_cross    gabor_123 gabor_144 gabor_055 gabor_073    gabor_123 gabor_144_alt gabor_055_alt gabor_073      "1_8_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_123_144_055_073_target_position_1_4_retrieval_position_2"     gabor_circ gabor_144_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_144_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  120   126   292   292   399   125 11543  2992 12342      fixation_cross    gabor_001 gabor_071 gabor_160 gabor_044    gabor_001_alt gabor_071 gabor_160 gabor_044_alt      "1_9_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_001_071_160_044_target_position_2_3_retrieval_position_2"     gabor_circ gabor_120_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_120_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  134   140   292   292   399   125 11543  2992 12342      fixation_cross    gabor_002 gabor_133 gabor_087 gabor_112    gabor_002_alt gabor_133_alt gabor_087 gabor_112     "1_10_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_002_133_087_112_target_position_3_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_064_framed    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_064_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  148   153   292   292   399   125  9543  2992 12342      fixation_cross    gabor_009 gabor_085 gabor_132 gabor_069    gabor_009 gabor_085 gabor_132_alt gabor_069_alt     "1_11_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_009_085_132_069_target_position_1_2_retrieval_position_1"      gabor_009_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_009_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  161   166   292   292   399   125  9543  2992 14342      fixation_cross    gabor_033 gabor_091 gabor_119 gabor_054    gabor_033_alt gabor_091 gabor_119_alt gabor_054     "1_12_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_033_091_119_054_target_position_2_4_retrieval_position_2"      gabor_circ gabor_091_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_091_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  175   180   292   292   399   125  9543  2992 12342      fixation_cross    gabor_167 gabor_142 gabor_058 gabor_099    gabor_167 gabor_142_alt gabor_058_alt gabor_099     "1_13_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_167_142_058_099_target_position_1_4_retrieval_position_1"      gabor_167_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_167_retrieval_position_1"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  188   194   292   292   399   125 11543  2992 12342      fixation_cross    gabor_168 gabor_003 gabor_135 gabor_085    gabor_168_alt gabor_003 gabor_135 gabor_085_alt     "1_14_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_168_003_135_085_target_position_2_3_retrieval_position_2"     gabor_circ gabor_049_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_049_retrieval_position_2"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  202   207   292   292   399   125  9543  2992 14342      fixation_cross    gabor_134 gabor_083 gabor_166 gabor_027    gabor_134 gabor_083_alt gabor_166_alt gabor_027     "1_15_Encoding_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_134_083_166_027_target_position_1_4_retrieval_position_3"      gabor_circ gabor_circ gabor_117_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P1_RL_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_117_retrieval_position_3"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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