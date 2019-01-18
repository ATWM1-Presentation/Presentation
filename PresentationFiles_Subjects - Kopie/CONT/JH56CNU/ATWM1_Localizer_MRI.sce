# ATWM1_MRI_Localizer
                         
scenario = "ATWM1_Localizer_MRI";
scenario_type = fMRI; # Fuer Scanner
#scenario_type = fMRI_emulation; # Zum Testen
#scenario_type = trials;
scan_period = 2000; # TR
pulses_per_scan = 1;
pulse_code = 1;
#pulse_width=6;

default_monitor_sounds = false;

active_buttons = 1;
response_matching = simple_matching;
button_codes = 10;
default_font_size = 28;     
default_font  = "Arial"; 
default_background_color = 0 ,0 ,0 ;
#write_codes=true;

begin;	

#Picture definitions   
box { height = 300; width = 300; color = 0, 0, 0;} frame1;
box { height = 290; width = 290; color = 255, 255, 255;} frame2;    
box { height = 30; width = 4; color = 0, 0, 0;} fix1;    
box { height = 4; width = 30; color = 0, 0, 0;} fix2;
box { height = 30; width = 4; color = 255, 0, 0;} fix3;    
box { height = 4; width = 30; color = 255, 0, 0;} fix4;  
box { height = 290; width = 290; color = 128, 128, 128;} background;
 
bitmap {filename = "fixation_cross_black.bmp";}  fixation_cross_black;   
bitmap {filename = "blank.bmp";}  blank;

bitmap {filename = "localizer.bmp";}  localizer;  
bitmap {filename = "localizer_inv.bmp";}  localizer_inv;  
bitmap {filename = "localizer_target.bmp";}  localizer_target; 

sound { wavefile { filename = "FeedbackSound_NoResponse.wav"; }; } sound_no_response;
sound { wavefile { filename = "FeedbackSound_Correct.wav"; }; } sound_correct;
sound { wavefile { filename = "FeedbackSound_Incorrect.wav"; }; } sound_incorrect;



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
   } default;	
   time = 0;  	
   duration = 10000;
   mri_pulse = 1;
   code = "BaselinePre"; 	 
};

               
TEMPLATE "ATWM1_Localizer_MRI.tem" {
trigger_volume intertrial_interval single_stimulus_presentation_time  trl_duration  stim_enc1 stim_enc2 stim_enc3 stim_enc4 stim_enc_alt1 stim_enc_alt2 stim_enc_alt3 stim_enc_alt4 stim_enc_target1 stim_enc_target2 stim_enc_target3 stim_enc_target4  control_flicker_index  trial_code   retr_code   posX1 posY1 posX2 posY2 posX3 posY3 posX4 posY4;

  6     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "01_4_Objects_Pos3_DefaultTrial"	"Localizer_01_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  7     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "02_4_Objects_Pos1_DefaultTrial"	"Localizer_02_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  8     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "03_4_Objects_Pos4_DefaultTrial"	"Localizer_03_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
  9     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	 12 	 "04_4_Objects_Pos2_TargetTrial"	"Localizer_04_4_Objects_Pos2_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 10     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "05_4_Objects_Pos4_DefaultTrial"	"Localizer_05_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 11     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "06_4_Objects_Pos3_DefaultTrial"	"Localizer_06_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 12     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  6 	 "07_4_Objects_Pos1_TargetTrial"	"Localizer_07_4_Objects_Pos1_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 13     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "08_4_Objects_Pos2_DefaultTrial"	"Localizer_08_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 14     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "09_4_Objects_Pos1_DefaultTrial"	"Localizer_09_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 15     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "10_4_Objects_Pos4_DefaultTrial"	"Localizer_10_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 16  1950  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "11_4_Objects_Pos2_DefaultTrial"	"Localizer_11_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 18     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  4 	 "12_4_Objects_Pos3_TargetTrial"	"Localizer_12_4_Objects_Pos3_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 19     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "13_4_Objects_Pos4_DefaultTrial"	"Localizer_13_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 20     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  6 	 "14_4_Objects_Pos3_TargetTrial"	"Localizer_14_4_Objects_Pos3_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 21     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "15_4_Objects_Pos2_DefaultTrial"	"Localizer_15_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 22     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "16_4_Objects_Pos1_DefaultTrial"	"Localizer_16_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 23     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "17_4_Objects_Pos3_DefaultTrial"	"Localizer_17_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 24     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  8 	 "18_4_Objects_Pos4_TargetTrial"	"Localizer_18_4_Objects_Pos4_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 25     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "19_4_Objects_Pos1_DefaultTrial"	"Localizer_19_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 26     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "20_4_Objects_Pos2_DefaultTrial"	"Localizer_20_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 27     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  4 	 "21_4_Objects_Pos4_TargetTrial"	"Localizer_21_4_Objects_Pos4_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 28     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "22_4_Objects_Pos1_DefaultTrial"	"Localizer_22_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 29     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "23_4_Objects_Pos2_DefaultTrial"	"Localizer_23_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 30  1950  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "24_4_Objects_Pos3_DefaultTrial"	"Localizer_24_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 32     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "25_4_Objects_Pos2_DefaultTrial"	"Localizer_25_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 33     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "26_4_Objects_Pos4_DefaultTrial"	"Localizer_26_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 34     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "27_4_Objects_Pos3_DefaultTrial"	"Localizer_27_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 35     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	 12 	 "28_4_Objects_Pos1_TargetTrial"	"Localizer_28_4_Objects_Pos1_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 36     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "29_4_Objects_Pos2_DefaultTrial"	"Localizer_29_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 37     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "30_4_Objects_Pos1_DefaultTrial"	"Localizer_30_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 38     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	 12 	 "31_4_Objects_Pos3_TargetTrial"	"Localizer_31_4_Objects_Pos3_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 39     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "32_4_Objects_Pos4_DefaultTrial"	"Localizer_32_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 40     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "33_4_Objects_Pos3_DefaultTrial"	"Localizer_33_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 41     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "34_4_Objects_Pos4_DefaultTrial"	"Localizer_34_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 42     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "35_4_Objects_Pos1_DefaultTrial"	"Localizer_35_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 43     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  4 	 "36_4_Objects_Pos2_TargetTrial"	"Localizer_36_4_Objects_Pos2_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 44  1950  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "37_4_Objects_Pos4_DefaultTrial"	"Localizer_37_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 46     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "38_4_Objects_Pos2_DefaultTrial"	"Localizer_38_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 47     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  8 	 "39_4_Objects_Pos3_TargetTrial"	"Localizer_39_4_Objects_Pos3_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 48     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "40_4_Objects_Pos1_DefaultTrial"	"Localizer_40_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 49     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "41_4_Objects_Pos4_DefaultTrial"	"Localizer_41_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 50     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "42_4_Objects_Pos3_DefaultTrial"	"Localizer_42_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 51     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "43_4_Objects_Pos2_DefaultTrial"	"Localizer_43_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 52     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	 10 	 "44_4_Objects_Pos1_TargetTrial"	"Localizer_44_4_Objects_Pos1_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 53     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "45_4_Objects_Pos3_DefaultTrial"	"Localizer_45_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 54     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "46_4_Objects_Pos4_DefaultTrial"	"Localizer_46_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 55     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	 12 	 "47_4_Objects_Pos1_TargetTrial"	"Localizer_47_4_Objects_Pos1_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 56     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "48_4_Objects_Pos2_DefaultTrial"	"Localizer_48_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 57     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "49_4_Objects_Pos1_DefaultTrial"	"Localizer_49_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 58     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "50_4_Objects_Pos3_DefaultTrial"	"Localizer_50_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 59  1950  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  6 	 "51_4_Objects_Pos2_TargetTrial"	"Localizer_51_4_Objects_Pos2_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 61     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "52_4_Objects_Pos4_DefaultTrial"	"Localizer_52_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 62     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "53_4_Objects_Pos3_DefaultTrial"	"Localizer_53_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 63     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "54_4_Objects_Pos4_DefaultTrial"	"Localizer_54_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 64     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "55_4_Objects_Pos1_DefaultTrial"	"Localizer_55_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 65     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	 12 	 "56_4_Objects_Pos2_TargetTrial"	"Localizer_56_4_Objects_Pos2_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 66     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "57_4_Objects_Pos1_DefaultTrial"	"Localizer_57_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 67     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "58_4_Objects_Pos2_DefaultTrial"	"Localizer_58_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 68     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "59_4_Objects_Pos4_DefaultTrial"	"Localizer_59_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 69     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  8 	 "60_4_Objects_Pos3_TargetTrial"	"Localizer_60_4_Objects_Pos3_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 70     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "61_4_Objects_Pos2_DefaultTrial"	"Localizer_61_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 71     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  4 	 "62_4_Objects_Pos1_TargetTrial"	"Localizer_62_4_Objects_Pos1_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 72  1950  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "63_4_Objects_Pos3_DefaultTrial"	"Localizer_63_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 74     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "64_4_Objects_Pos4_DefaultTrial"	"Localizer_64_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 75     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	 10 	 "65_4_Objects_Pos2_TargetTrial"	"Localizer_65_4_Objects_Pos2_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 76     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "66_4_Objects_Pos1_DefaultTrial"	"Localizer_66_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 77     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "67_4_Objects_Pos4_DefaultTrial"	"Localizer_67_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 78     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "68_4_Objects_Pos3_DefaultTrial"	"Localizer_68_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 79     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  6 	 "69_4_Objects_Pos4_TargetTrial"	"Localizer_69_4_Objects_Pos4_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 80     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "70_4_Objects_Pos3_DefaultTrial"	"Localizer_70_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 81     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "71_4_Objects_Pos2_DefaultTrial"	"Localizer_71_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 82     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "72_4_Objects_Pos1_DefaultTrial"	"Localizer_72_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 83     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "73_4_Objects_Pos3_DefaultTrial"	"Localizer_73_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 84     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  4 	 "74_4_Objects_Pos4_TargetTrial"	"Localizer_74_4_Objects_Pos4_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 85  1950  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "75_4_Objects_Pos2_DefaultTrial"	"Localizer_75_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 87     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "76_4_Objects_Pos1_DefaultTrial"	"Localizer_76_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 88     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "77_4_Objects_Pos3_DefaultTrial"	"Localizer_77_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 89     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	 12 	 "78_4_Objects_Pos4_TargetTrial"	"Localizer_78_4_Objects_Pos4_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 90     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "79_4_Objects_Pos1_DefaultTrial"	"Localizer_79_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 91     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "80_4_Objects_Pos2_DefaultTrial"	"Localizer_80_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 92     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  8 	 "81_4_Objects_Pos3_TargetTrial"	"Localizer_81_4_Objects_Pos3_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 93     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "82_4_Objects_Pos2_DefaultTrial"	"Localizer_82_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 94     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "83_4_Objects_Pos4_DefaultTrial"	"Localizer_83_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 95     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "84_4_Objects_Pos1_DefaultTrial"	"Localizer_84_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 96  1950  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "85_4_Objects_Pos3_DefaultTrial"	"Localizer_85_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 98     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  8 	 "86_4_Objects_Pos4_TargetTrial"	"Localizer_86_4_Objects_Pos4_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
 99     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "87_4_Objects_Pos1_DefaultTrial"	"Localizer_87_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
100     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "88_4_Objects_Pos2_DefaultTrial"	"Localizer_88_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
101     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  8 	 "89_4_Objects_Pos4_TargetTrial"	"Localizer_89_4_Objects_Pos4_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
102     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "90_4_Objects_Pos2_DefaultTrial"	"Localizer_90_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
103     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "91_4_Objects_Pos3_DefaultTrial"	"Localizer_91_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
104     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "92_4_Objects_Pos1_DefaultTrial"	"Localizer_92_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
105     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  8 	 "93_4_Objects_Pos3_TargetTrial"	"Localizer_93_4_Objects_Pos3_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
106     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "94_4_Objects_Pos1_DefaultTrial"	"Localizer_94_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
107  1950  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "95_4_Objects_Pos2_DefaultTrial"	"Localizer_95_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
109     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "96_4_Objects_Pos4_DefaultTrial"	"Localizer_96_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
110     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "97_4_Objects_Pos2_DefaultTrial"	"Localizer_97_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
111     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "98_4_Objects_Pos1_DefaultTrial"	"Localizer_98_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
112     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "99_4_Objects_Pos3_DefaultTrial"	"Localizer_99_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
113     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  6 	 "100_4_Objects_Pos4_TargetTrial"	"Localizer_100_4_Objects_Pos4_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
114     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "101_4_Objects_Pos3_DefaultTrial"	"Localizer_101_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
115     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "102_4_Objects_Pos4_DefaultTrial"	"Localizer_102_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
116     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  8 	 "103_4_Objects_Pos1_TargetTrial"	"Localizer_103_4_Objects_Pos1_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
117     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "104_4_Objects_Pos2_DefaultTrial"	"Localizer_104_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
118     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "105_4_Objects_Pos1_DefaultTrial"	"Localizer_105_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
119  1950  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "106_4_Objects_Pos3_DefaultTrial"	"Localizer_106_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
121     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "107_4_Objects_Pos4_DefaultTrial"	"Localizer_107_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
122     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  8 	 "108_4_Objects_Pos2_TargetTrial"	"Localizer_108_4_Objects_Pos2_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
123     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "109_4_Objects_Pos1_DefaultTrial"	"Localizer_109_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
124     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	 12 	 "110_4_Objects_Pos2_TargetTrial"	"Localizer_110_4_Objects_Pos2_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
125     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "111_4_Objects_Pos4_DefaultTrial"	"Localizer_111_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
126     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "112_4_Objects_Pos3_DefaultTrial"	"Localizer_112_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
127     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "113_4_Objects_Pos4_DefaultTrial"	"Localizer_113_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
128     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	 12 	 "114_4_Objects_Pos2_TargetTrial"	"Localizer_114_4_Objects_Pos2_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
129     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "115_4_Objects_Pos3_DefaultTrial"	"Localizer_115_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
130     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "116_4_Objects_Pos1_DefaultTrial"	"Localizer_116_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
131     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	 10 	 "117_4_Objects_Pos3_TargetTrial"	"Localizer_117_4_Objects_Pos3_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
132  1950  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "118_4_Objects_Pos1_DefaultTrial"	"Localizer_118_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
134     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "119_4_Objects_Pos2_DefaultTrial"	"Localizer_119_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
135     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "120_4_Objects_Pos4_DefaultTrial"	"Localizer_120_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
136     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "121_4_Objects_Pos1_DefaultTrial"	"Localizer_121_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
137     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  8 	 "122_4_Objects_Pos2_TargetTrial"	"Localizer_122_4_Objects_Pos2_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
138     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "123_4_Objects_Pos3_DefaultTrial"	"Localizer_123_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
139     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "124_4_Objects_Pos4_DefaultTrial"	"Localizer_124_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
140     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "125_4_Objects_Pos1_DefaultTrial"	"Localizer_125_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
141     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  6 	 "126_4_Objects_Pos3_TargetTrial"	"Localizer_126_4_Objects_Pos3_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
142     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "127_4_Objects_Pos2_DefaultTrial"	"Localizer_127_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
143     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "128_4_Objects_Pos4_DefaultTrial"	"Localizer_128_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
144     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  4 	 "129_4_Objects_Pos1_TargetTrial"	"Localizer_129_4_Objects_Pos1_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
145     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "130_4_Objects_Pos3_DefaultTrial"	"Localizer_130_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
146     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "131_4_Objects_Pos2_DefaultTrial"	"Localizer_131_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
147  1950  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "132_4_Objects_Pos4_DefaultTrial"	"Localizer_132_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
149     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "133_4_Objects_Pos2_DefaultTrial"	"Localizer_133_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
150     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "134_4_Objects_Pos4_DefaultTrial"	"Localizer_134_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
151     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  8 	 "135_4_Objects_Pos1_TargetTrial"	"Localizer_135_4_Objects_Pos1_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
152     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "136_4_Objects_Pos3_DefaultTrial"	"Localizer_136_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
153     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  0 	 "137_4_Objects_Pos4_DefaultTrial"	"Localizer_137_4_Objects_Pos4_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
154     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "138_4_Objects_Pos2_DefaultTrial"	"Localizer_138_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
155     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	 12 	 "139_4_Objects_Pos1_TargetTrial"	"Localizer_139_4_Objects_Pos1_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
156     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "140_4_Objects_Pos3_DefaultTrial"	"Localizer_140_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
157     0  131  1950  localizer blank blank blank 	 localizer_inv blank blank blank 	 localizer_target blank blank blank 	  0 	 "141_4_Objects_Pos1_DefaultTrial"	"Localizer_141_4_Objects_Pos1_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
158     0  131  1950  blank localizer blank blank 	 blank localizer_inv blank blank 	 blank localizer_target blank blank 	  0 	 "142_4_Objects_Pos2_DefaultTrial"	"Localizer_142_4_Objects_Pos2_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
159     0  131  1950  blank blank blank localizer 	 blank blank blank localizer_inv 	 blank blank blank localizer_target 	  6 	 "143_4_Objects_Pos4_TargetTrial"	"Localizer_143_4_Objects_Pos4_TargetTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
160     0  131  1950  blank blank localizer blank 	 blank blank localizer_inv blank 	 blank blank localizer_target blank 	  0 	 "144_4_Objects_Pos3_DefaultTrial"	"Localizer_144_4_Objects_Pos3_DefaultTrial" 	 45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;
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
   duration = 20000;  
   code = "BaselinePost"; 	 
};  