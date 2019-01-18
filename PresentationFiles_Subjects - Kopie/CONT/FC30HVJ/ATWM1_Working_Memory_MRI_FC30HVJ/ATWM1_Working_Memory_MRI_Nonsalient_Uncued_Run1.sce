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
    6    12   292   292   399   125 11543  2992 14342      fixation_cross    gabor_144 gabor_117 gabor_059 gabor_176    gabor_144 gabor_117_alt gabor_059_alt gabor_176      "1_1_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_144_117_059_176_target_position_1_4_retrieval_position_1"     gabor_144_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_144_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   21    26   292   292   399   125  9543  2992 12342      fixation_cross    gabor_072 gabor_093 gabor_178 gabor_136    gabor_072 gabor_093_alt gabor_178_alt gabor_136      "1_2_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_072_093_178_136_target_position_1_4_retrieval_position_1"      gabor_027_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_027_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   34    40   292   292   399   125 11543  2992 14342      fixation_cross    gabor_140 gabor_006 gabor_162 gabor_178    gabor_140 gabor_006 gabor_162_alt gabor_178_alt      "1_3_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_140_006_162_178_target_position_1_2_retrieval_position_2"     gabor_circ gabor_006_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_006_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   49    54   292   292   399   125  9543  2992 12342      fixation_cross    gabor_051 gabor_083 gabor_003 gabor_114    gabor_051_alt gabor_083 gabor_003 gabor_114_alt      "1_4_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_051_083_003_114_target_position_2_3_retrieval_position_2"      gabor_circ gabor_130_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_130_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   62    68   292   292   399   125 11543  2992 12342      fixation_cross    gabor_005 gabor_085 gabor_125 gabor_054    gabor_005 gabor_085 gabor_125_alt gabor_054_alt      "1_5_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_12400_gabor_patch_orientation_005_085_125_054_target_position_1_2_retrieval_position_3"     gabor_circ gabor_circ gabor_125_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_125_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   76    82   292   292   399   125 11543  2992 14342      fixation_cross    gabor_137 gabor_027 gabor_103 gabor_060    gabor_137 gabor_027 gabor_103_alt gabor_060_alt      "1_6_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_137_027_103_060_target_position_1_2_retrieval_position_1"     gabor_137_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_137_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   91    96   292   292   399   125  9543  2992 12342      fixation_cross    gabor_069 gabor_004 gabor_020 gabor_054    gabor_069 gabor_004 gabor_020_alt gabor_054_alt      "1_7_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_069_004_020_054_target_position_1_2_retrieval_position_2"      gabor_circ gabor_140_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_140_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  104   109   292   292   399   125  9543  2992 14342      fixation_cross    gabor_084 gabor_015 gabor_105 gabor_129    gabor_084_alt gabor_015_alt gabor_105 gabor_129      "1_8_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_084_015_105_129_target_position_3_4_retrieval_position_2"      gabor_circ gabor_155_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_155_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  118   124   292   292   399   125 11543  2992 14342      fixation_cross    gabor_011 gabor_139 gabor_049 gabor_069    gabor_011 gabor_139_alt gabor_049_alt gabor_069      "1_9_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_011_139_049_069_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_117_framed    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_117_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  133   139   292   292   399   125 11543  2992 14342      fixation_cross    gabor_031 gabor_047 gabor_081 gabor_162    gabor_031 gabor_047_alt gabor_081_alt gabor_162     "1_10_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_031_047_081_162_target_position_1_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_162_framed    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_162_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  148   153   292   292   399   125  9543  2992 12342      fixation_cross    gabor_057 gabor_092 gabor_028 gabor_171    gabor_057 gabor_092 gabor_028_alt gabor_171_alt     "1_11_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_057_092_028_171_target_position_1_2_retrieval_position_2"      gabor_circ gabor_139_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_139_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  161   166   292   292   399   125  9543  2992 14342      fixation_cross    gabor_053 gabor_035 gabor_082 gabor_167    gabor_053 gabor_035 gabor_082_alt gabor_167_alt     "1_12_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_14400_gabor_patch_orientation_053_035_082_167_target_position_1_2_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_167_framed    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_167_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  175   181   292   292   399   125 11543  2992 12342      fixation_cross    gabor_026 gabor_006 gabor_112 gabor_154    gabor_026_alt gabor_006_alt gabor_112 gabor_154     "1_13_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_026_006_112_154_target_position_3_4_retrieval_position_3"     gabor_circ gabor_circ gabor_067_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_067_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  189   194   292   292   399   125  9543  2992 14342      fixation_cross    gabor_166 gabor_007 gabor_116 gabor_043    gabor_166_alt gabor_007 gabor_116_alt gabor_043     "1_14_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_166_007_116_043_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_043_framed    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_043_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  203   208   292   292   399   125  9543  2992 12342      fixation_cross    gabor_061 gabor_039 gabor_010 gabor_172    gabor_061 gabor_039 gabor_010_alt gabor_172_alt     "1_15_Encoding_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_061_039_010_172_target_position_1_2_retrieval_position_2"      gabor_circ gabor_039_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P2_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_039_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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