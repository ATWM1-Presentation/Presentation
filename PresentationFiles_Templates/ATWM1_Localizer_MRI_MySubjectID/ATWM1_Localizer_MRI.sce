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
##INSERT_ARRAY##
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