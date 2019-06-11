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
    6    12   292   292   399   125 11543  2992 12342      fixation_cross    gabor_041 gabor_115 gabor_010 gabor_177    gabor_041 gabor_115 gabor_010_alt gabor_177_alt      "1_1_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_041_115_010_177_target_position_3_4_retrieval_position_3"        gabor_circ gabor_circ gabor_010_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_3_4     "1_1_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_010_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   20    26   292   292   399   125 11543  2992 12342      fixation_cross    gabor_002 gabor_089 gabor_140 gabor_027    gabor_002 gabor_089_alt gabor_140 gabor_027_alt      "1_2_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_002_089_140_027_target_position_2_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_164_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_2_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_164_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   34    39   292   292   399   125  9543  2992 12342      fixation_cross    gabor_011 gabor_055 gabor_101 gabor_162    gabor_011_alt gabor_055 gabor_101 gabor_162_alt      "1_3_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_011_055_101_162_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_117_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_3_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_117_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   47    53   292   292   399   125 11543  2992 12342      fixation_cross    gabor_176 gabor_132 gabor_106 gabor_055    gabor_176_alt gabor_132 gabor_106 gabor_055_alt      "1_4_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_176_132_106_055_target_position_1_4_retrieval_position_2"        gabor_circ gabor_132_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4     "1_4_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_132_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   61    66   292   292   399   125  9543  2992 14342      fixation_cross    gabor_146 gabor_071 gabor_040 gabor_113    gabor_146_alt gabor_071 gabor_040_alt gabor_113      "1_5_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_146_071_040_113_target_position_1_3_retrieval_position_1"         gabor_097_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3     "1_5_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_097_retrieval_position_1"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   75    80   292   292   399   125  9543  2992 14342      fixation_cross    gabor_147 gabor_095 gabor_065 gabor_040    gabor_147_alt gabor_095 gabor_065 gabor_040_alt      "1_6_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_147_095_065_040_target_position_1_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_179_framed    blank blank blank blank    fixation_cross_target_position_1_4     "1_6_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_179_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
   89    95   292   292   399   125 11543  2992 14342      fixation_cross    gabor_063 gabor_140 gabor_085 gabor_116    gabor_063_alt gabor_140_alt gabor_085 gabor_116      "1_7_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_063_140_085_116_target_position_1_2_retrieval_position_2"        gabor_circ gabor_140_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_1_2     "1_7_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_140_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  104   109   292   292   399   125  9543  2992 14342      fixation_cross    gabor_061 gabor_111 gabor_004 gabor_167    gabor_061 gabor_111_alt gabor_004 gabor_167_alt      "1_8_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_061_111_004_167_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_167_framed    blank blank blank blank    fixation_cross_target_position_2_4     "1_8_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_167_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  118   124   292   292   399   125 11543  2992 14342      fixation_cross    gabor_023 gabor_059 gabor_111 gabor_176    gabor_023_alt gabor_059 gabor_111_alt gabor_176      "1_9_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_023_059_111_176_target_position_1_3_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_041_framed    blank blank blank blank    fixation_cross_target_position_1_3     "1_9_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_UncuedRetriev_retrieval_patch_orientation_041_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  133   138   292   292   399   125  9543  2992 14342      fixation_cross    gabor_093 gabor_011 gabor_076 gabor_137    gabor_093 gabor_011_alt gabor_076_alt gabor_137     "1_10_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_093_011_076_137_target_position_2_3_retrieval_position_2"         gabor_circ gabor_011_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_target_position_2_3    "1_10_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_011_retrieval_position_2"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  147   153   292   292   399   125 11543  2992 14342      fixation_cross    gabor_122 gabor_104 gabor_154 gabor_032    gabor_122_alt gabor_104 gabor_154 gabor_032_alt     "1_11_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_122_104_154_032_target_position_1_4_retrieval_position_4"        gabor_circ gabor_circ gabor_circ gabor_170_framed    blank blank blank blank    fixation_cross_target_position_1_4    "1_11_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_170_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  162   168   292   292   399   125 11543  2992 12342      fixation_cross    gabor_129 gabor_021 gabor_054 gabor_073    gabor_129_alt gabor_021 gabor_054 gabor_073_alt     "1_12_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_129_021_054_073_target_position_1_4_retrieval_position_3"        gabor_circ gabor_circ gabor_054_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_4    "1_12_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_UncuedRetriev_retrieval_patch_orientation_054_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  176   181   292   292   399   125  9543  2992 14342      fixation_cross    gabor_134 gabor_079 gabor_168 gabor_049    gabor_134 gabor_079 gabor_168_alt gabor_049_alt     "1_13_Encoding_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_134_079_168_049_target_position_3_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_003_framed    blank blank blank blank    fixation_cross_target_position_3_4    "1_13_Retrieval_Working_Memory_MRI_P7_RL_Salient_DoChange_CuedRetrieval_retrieval_patch_orientation_003_retrieval_position_4"   1    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  190   195   292   292   399   125  9543  2992 12342      fixation_cross    gabor_042 gabor_018 gabor_065 gabor_172    gabor_042 gabor_018_alt gabor_065 gabor_172_alt     "1_14_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_042_018_065_172_target_position_2_4_retrieval_position_4"         gabor_circ gabor_circ gabor_circ gabor_172_framed    blank blank blank blank    fixation_cross_target_position_2_4    "1_14_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_172_retrieval_position_4"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;
  203   208   292   292   399   125  9543  2992 12342      fixation_cross    gabor_020 gabor_137 gabor_054 gabor_167    gabor_020_alt gabor_137 gabor_054_alt gabor_167     "1_15_Encoding_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_020_137_054_167_target_position_1_3_retrieval_position_3"         gabor_circ gabor_circ gabor_054_framed gabor_circ    blank blank blank blank    fixation_cross_target_position_1_3    "1_15_Retrieval_Working_Memory_MRI_P7_RL_Salient_NoChange_CuedRetrieval_retrieval_patch_orientation_054_retrieval_position_3"   2    58.69 58.69 -58.69 58.69 -58.69 -58.69 58.69 -58.69;

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