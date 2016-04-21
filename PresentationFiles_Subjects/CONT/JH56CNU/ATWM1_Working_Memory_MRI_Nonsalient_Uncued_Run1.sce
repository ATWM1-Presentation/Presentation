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
    6    12   292   292   399   125 11543  2992 14342      fixation_cross    gabor_140 gabor_124 gabor_180 gabor_065    gabor_140_alt gabor_124_alt gabor_180 gabor_065      "1_1_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_140_124_180_065_target_position_3_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_065_framed    blank blank blank blank    fixation_cross_white     "1_1_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_065_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   21    27   292   292   399   125 11543  2992 14342      fixation_cross    gabor_173 gabor_156 gabor_084 gabor_022    gabor_173 gabor_156_alt gabor_084 gabor_022_alt      "1_2_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_173_156_084_022_target_position_1_3_retrieval_position_3"     gabor_circ gabor_circ gabor_131_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_2_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_131_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   36    41   292   292   399   125  9543  2992 12342      fixation_cross    gabor_138 gabor_082 gabor_067 gabor_154    gabor_138 gabor_082_alt gabor_067 gabor_154_alt      "1_3_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_138_082_067_154_target_position_1_3_retrieval_position_3"      gabor_circ gabor_circ gabor_021_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_3_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_021_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   49    54   292   292   399   125  9543  2992 14342      fixation_cross    gabor_064 gabor_122 gabor_144 gabor_180    gabor_064_alt gabor_122_alt gabor_144 gabor_180      "1_4_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_064_122_144_180_target_position_3_4_retrieval_position_3"      gabor_circ gabor_circ gabor_144_framed gabor_circ    blank blank blank blank    fixation_cross_white     "1_4_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_144_retrieval_position_3"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   63    68   292   292   399   125  9543  2992 12342      fixation_cross    gabor_084 gabor_005 gabor_052 gabor_067    gabor_084_alt gabor_005 gabor_052 gabor_067_alt      "1_5_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_084_005_052_067_target_position_2_3_retrieval_position_2"      gabor_circ gabor_005_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_5_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_005_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   76    81   292   292   399   125  9543  2992 12342      fixation_cross    gabor_055 gabor_019 gabor_161 gabor_145    gabor_055_alt gabor_019 gabor_161 gabor_145_alt      "1_6_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_9601_3000_12400_gabor_patch_orientation_055_019_161_145_target_position_2_3_retrieval_position_1"      gabor_055_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_6_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_055_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
   89    94   292   292   399   125  9543  2992 12342      fixation_cross    gabor_068 gabor_178 gabor_141 gabor_007    gabor_068_alt gabor_178 gabor_141_alt gabor_007      "1_7_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_068_178_141_007_target_position_2_4_retrieval_position_4"      gabor_circ gabor_circ gabor_circ gabor_052_framed    blank blank blank blank    fixation_cross_white     "1_7_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_052_retrieval_position_4"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  102   108   292   292   399   125 11543  2992 14342      fixation_cross    gabor_151 gabor_039 gabor_064 gabor_012    gabor_151_alt gabor_039_alt gabor_064 gabor_012      "1_8_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_151_039_064_012_target_position_3_4_retrieval_position_1"     gabor_151_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_8_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_UncuedRetriev_retrieval_patch_orientation_151_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  117   122   292   292   399   125  9543  2992 14342      fixation_cross    gabor_130 gabor_113 gabor_004 gabor_056    gabor_130_alt gabor_113 gabor_004 gabor_056_alt      "1_9_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_14400_gabor_patch_orientation_130_113_004_056_target_position_2_3_retrieval_position_2"      gabor_circ gabor_162_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white     "1_9_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_162_retrieval_position_2"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  131   137   292   292   399   125 11543  2992 14342      fixation_cross    gabor_163 gabor_135 gabor_090 gabor_111    gabor_163_alt gabor_135 gabor_090 gabor_111_alt     "1_10_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_163_135_090_111_target_position_2_3_retrieval_position_2"     gabor_circ gabor_135_framed gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_10_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_135_retrieval_position_2"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  146   152   292   292   399   125 11543  2992 12342      fixation_cross    gabor_149 gabor_177 gabor_026 gabor_042    gabor_149_alt gabor_177 gabor_026_alt gabor_042     "1_11_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_12400_gabor_patch_orientation_149_177_026_042_target_position_2_4_retrieval_position_4"     gabor_circ gabor_circ gabor_circ gabor_042_framed    blank blank blank blank    fixation_cross_white    "1_11_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_042_retrieval_position_4"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  160   166   292   292   399   125 11543  2992 14342      fixation_cross    gabor_078 gabor_031 gabor_162 gabor_002    gabor_078 gabor_031_alt gabor_162_alt gabor_002     "1_12_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_UncuedRetriev_300_300_399_11601_3000_14400_gabor_patch_orientation_078_031_162_002_target_position_1_4_retrieval_position_3"     gabor_circ gabor_circ gabor_115_framed gabor_circ    blank blank blank blank    fixation_cross_white    "1_12_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_UncuedRetriev_retrieval_patch_orientation_115_retrieval_position_3"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  175   180   292   292   399   125  9543  2992 12342      fixation_cross    gabor_005 gabor_027 gabor_142 gabor_074    gabor_005 gabor_027_alt gabor_142 gabor_074_alt     "1_13_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_005_027_142_074_target_position_1_3_retrieval_position_1"      gabor_053_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_13_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_053_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  188   194   292   292   399   125 11543  2992 14342      fixation_cross    gabor_112 gabor_172 gabor_049 gabor_026    gabor_112 gabor_172_alt gabor_049 gabor_026_alt     "1_14_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_300_300_399_11601_3000_14400_gabor_patch_orientation_112_172_049_026_target_position_1_3_retrieval_position_1"     gabor_112_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_14_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_NoChange_CuedRetrieval_retrieval_patch_orientation_112_retrieval_position_1"   1    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  203   208   292   292   399   125  9543  2992 12342      fixation_cross    gabor_022 gabor_140 gabor_103 gabor_067    gabor_022 gabor_140_alt gabor_103_alt gabor_067     "1_15_Encoding_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_300_300_399_9601_3000_12400_gabor_patch_orientation_022_140_103_067_target_position_1_4_retrieval_position_1"      gabor_157_framed gabor_circ gabor_circ gabor_circ    blank blank blank blank    fixation_cross_white    "1_15_Retrieval_Working_Memory_MRI_P6_LR_Nonsalient_DoChange_CuedRetrieval_retrieval_patch_orientation_157_retrieval_position_1"   2    45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;

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