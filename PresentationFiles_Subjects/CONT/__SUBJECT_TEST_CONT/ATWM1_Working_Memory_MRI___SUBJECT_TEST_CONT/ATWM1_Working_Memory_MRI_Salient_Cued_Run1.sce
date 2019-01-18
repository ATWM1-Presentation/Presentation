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
    6    11   292   292   399   125  9543  2992 14342      fixation_cross    gabor_052 gabor_079 gabor_016 gabor_166    gabor_052 gabor_079_alt gabor_016_alt gabor_166      "1_1_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_052_079_016_166_target_position_2_3_retrieval_position_2"         gabor_circ gabor_129_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_1_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_129_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   20    25   292   292   399   125  9543  2992 14342      fixation_cross    gabor_112 gabor_180 gabor_028 gabor_054    gabor_112 gabor_180_alt gabor_028 gabor_054_alt      "1_2_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_112_180_028_054_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_005_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_2_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_005_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   34    40   292   292   399   125 11543  2992 12342      fixation_cross    gabor_099 gabor_134 gabor_117 gabor_052    gabor_099_alt gabor_134_alt gabor_117 gabor_052      "1_3_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_099_134_117_052_target_position_1_2_retrieval_position_2"        gabor_circ gabor_180_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_3_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_180_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   48    54   292   292   399   125 11543  2992 14342      fixation_cross    gabor_135 gabor_101 gabor_046 gabor_063    gabor_135_alt gabor_101 gabor_046 gabor_063_alt      "1_4_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_135_101_046_063_target_position_1_4_retrieval_position_1"        gabor_180_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_4_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_180_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   63    69   292   292   399   125 11543  2992 12342      fixation_cross    gabor_064 gabor_141 gabor_124 gabor_099    gabor_064_alt gabor_141 gabor_124_alt gabor_099      "1_5_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_064_141_124_099_target_position_1_3_retrieval_position_1"        gabor_064_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_5_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_064_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   77    82   292   292   399   125  9543  2992 14342      fixation_cross    gabor_154 gabor_012 gabor_119 gabor_137    gabor_154 gabor_012 gabor_119_alt gabor_137_alt      "1_6_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_154_012_119_137_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_137_framed    blank blank blank blank    fixation_cross_target_position_3_4     "1_6_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_137_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   91    96   292   292   399   125  9543  2992 14342      fixation_cross    gabor_121 gabor_008 gabor_031 gabor_095    gabor_121_alt gabor_008 gabor_031 gabor_095_alt      "1_7_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_121_008_031_095_target_position_1_4_retrieval_position_3"         gabor_circ gabor_circ gabor_076_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_7_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_076_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  105   111   292   292   399   125 11543  2992 12342      fixation_cross    gabor_155 gabor_171 gabor_009 gabor_126    gabor_155 gabor_171_alt gabor_009_alt gabor_126      "1_8_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_155_171_009_126_target_position_2_3_retrieval_position_2"        gabor_circ gabor_171_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3     "1_8_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_171_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  119   125   292   292   399   125 11543  2992 12342      fixation_cross    gabor_022 gabor_056 gabor_093 gabor_171    gabor_022 gabor_056_alt gabor_093 gabor_171_alt      "1_9_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_022_056_093_171_target_position_2_4_retrieval_position_3"        gabor_circ gabor_circ gabor_093_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4     "1_9_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_093_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  133   138   292   292   399   125  9543  2992 14342      fixation_cross    gabor_174 gabor_006 gabor_088 gabor_114    gabor_174 gabor_006_alt gabor_088 gabor_114_alt     "1_10_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_174_006_088_114_target_position_2_4_retrieval_position_2"         gabor_circ gabor_006_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_10_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_006_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  147   153   292   292   399   125 11543  2992 14342      fixation_cross    gabor_164 gabor_013 gabor_092 gabor_144    gabor_164 gabor_013_alt gabor_092 gabor_144_alt     "1_11_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_164_013_092_144_target_position_2_4_retrieval_position_2"        gabor_circ gabor_013_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_11_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_013_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  162   167   292   292   399   125  9543  2992 12342      fixation_cross    gabor_107 gabor_135 gabor_073 gabor_092    gabor_107_alt gabor_135 gabor_073 gabor_092_alt     "1_12_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_107_135_073_092_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_046_framed    blank blank blank blank    fixation_cross_target_position_1_4    "1_12_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_046_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  175   181   292   292   399   125 11543  2992 14342      fixation_cross    gabor_175 gabor_018 gabor_003 gabor_128    gabor_175 gabor_018_alt gabor_003 gabor_128_alt     "1_13_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_175_018_003_128_target_position_2_4_retrieval_position_3"        gabor_circ gabor_circ gabor_003_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_13_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_003_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  190   195   292   292   399   125  9543  2992 12342      fixation_cross    gabor_036 gabor_120 gabor_150 gabor_063    gabor_036 gabor_120_alt gabor_150 gabor_063_alt     "1_14_Encoding_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_036_120_150_063_target_position_2_4_retrieval_position_2"         gabor_circ gabor_120_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_4    "1_14_Retrieval_Working_Memory_MRI_P1_LR_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_120_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  203   208   292   292   399   125  9543  2992 12342      fixation_cross    gabor_065 gabor_140 gabor_018 gabor_085    gabor_065 gabor_140_alt gabor_018_alt gabor_085     "1_15_Encoding_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_065_140_018_085_target_position_2_3_retrieval_position_2"         gabor_circ gabor_002_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_15_Retrieval_Working_Memory_MRI_P1_LR_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_002_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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