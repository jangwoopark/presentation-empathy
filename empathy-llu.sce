scenario = "empathy";
scenario_type = fMRI_emulation;
pulses_per_scan = 32;
scan_period = 3000;	
#scenario_type = fMRI;
pulse_code= 10;
sequence_interrupt=false;		#default
active_buttons = 10;
button_codes=1,2,3,4,5,6,7,8,9,10;
default_picture_duration = 14000;
default_font="times";
default_font_size=44;
default_text_color=255,255,255;
default_background_color=0,0,0;

begin;

picture {} default;	#blank screen
picture { text { caption = 
"Rate your concern in a scale 
from one to ten when asked. 
Please wait to choose 
concern until prompted."; }; x=0; y=0; } inst;
picture { text { caption =
"How much did it concern you 
from 1 to 10?"; }; x=0; y=0; } quest;
picture { text { caption = "+"; font_size = 200; }; x=0; y=0; } fix;
picture { bitmap { filename = "01e.jpg"; }; x=0; y=0;  } ae; 
picture { bitmap { filename = "01n.jpg"; }; x=0; y=0;  } bn;
picture { bitmap { filename = "02e.jpg"; }; x=0; y=0;  } ce;
picture { bitmap { filename = "02n.jpg"; }; x=0; y=0;  } dn;
picture { bitmap { filename = "03e.jpg"; }; x=0; y=0;  } ee;
picture { bitmap { filename = "03n.jpg"; }; x=0; y=0;  } fn;
picture { bitmap { filename = "04e.jpg"; }; x=0; y=0;  } ge;
picture { bitmap { filename = "04n.jpg"; }; x=0; y=0;  } hn;
picture { bitmap { filename = "05e.jpg"; }; x=0; y=0;  } ie;
picture { bitmap { filename = "05n.jpg"; }; x=0; y=0;  } jn;
picture { bitmap { filename = "06e.jpg"; }; x=0; y=0;  } ke;
picture { bitmap { filename = "06n.jpg"; }; x=0; y=0;  } ln;
picture { bitmap { filename = "07e.jpg"; }; x=0; y=0;  } me;
picture { bitmap { filename = "07n.jpg"; }; x=0; y=0;  } nn;
picture { bitmap { filename = "08e.jpg"; }; x=0; y=0;  } oe;
picture { bitmap { filename = "08n.jpg"; }; x=0; y=0;  } pn;
picture { bitmap { filename = "09e.jpg"; }; x=0; y=0;  } qe;
picture { bitmap { filename = "09n.jpg"; }; x=0; y=0;  } rn;
picture { bitmap { filename = "10e.jpg"; }; x=0; y=0;  } se;
picture { bitmap { filename = "10n.jpg"; }; x=0; y=0;  } tn;
picture { bitmap { filename = "11e.jpg"; }; x=0; y=0;  } ue;
picture { bitmap { filename = "11n.jpg"; }; x=0; y=0;  } vn;
picture { bitmap { filename = "12e.jpg"; }; x=0; y=0;  } we;
picture { bitmap { filename = "12n.jpg"; }; x=0; y=0;  } xn;
picture { bitmap { filename = "13e.jpg"; }; x=0; y=0;  } ye;
picture { bitmap { filename = "13n.jpg"; }; x=0; y=0;  } zn;
picture { bitmap { filename = "14e.jpg"; }; x=0; y=0;  } aae;
picture { bitmap { filename = "14n.jpg"; }; x=0; y=0;  } abn;
picture { bitmap { filename = "15e.jpg"; }; x=0; y=0;  } ace;
picture { bitmap { filename = "15n.jpg"; }; x=0; y=0;  } adn;
picture { bitmap { filename = "16e.jpg"; }; x=0; y=0;  } aee;
picture { bitmap { filename = "16n.jpg"; }; x=0; y=0;  } afn;

#presenting the stimuli
trial {
picture inst; mri_pulse= 1; time=0; duration=6000;
picture fix; mri_pulse= 3; duration=6000;
picture bn; mri_pulse= 5;
picture quest; mri_pulse= 6; duration=6000;
picture ye; mri_pulse= 8;
picture quest; mri_pulse= 9; duration=6000;
picture ce; mri_pulse= 11;
picture quest; mri_pulse= 12; duration=6000;
picture abn; mri_pulse= 14;
picture quest; mri_pulse= 15; duration=6000;
picture fn; mri_pulse= 17;
picture quest; mri_pulse= 18; duration=6000;
picture adn; mri_pulse= 20;
picture quest; mri_pulse= 21; duration=6000;
picture ge; mri_pulse= 23;
picture quest; mri_pulse= 24; duration=6000;
picture afn; mri_pulse= 26;
picture quest; mri_pulse= 27; duration=6000;
picture fix; mri_pulse= 29; duration=12000;
picture ie; mri_pulse= 33;
picture quest; mri_pulse= 34; duration=6000;
picture rn; mri_pulse= 36;
picture quest; mri_pulse= 37; duration=6000;
picture ke; mri_pulse= 39;
picture quest; mri_pulse= 40; duration=6000;
picture se; mri_pulse= 42;
picture quest; mri_pulse= 43; duration=6000;
picture nn; mri_pulse= 45;
picture quest; mri_pulse= 46; duration=6000;
picture ue; mri_pulse= 48;
picture quest; mri_pulse= 49; duration=6000;
picture pn; mri_pulse= 51;
picture quest; mri_pulse= 52; duration=6000;
picture xn; mri_pulse= 54;
picture quest; mri_pulse= 55; duration=6000;
picture fix; mri_pulse= 57; duration=12000;
picture qe; mri_pulse= 61;
picture quest; mri_pulse= 62; duration=6000;
picture jn; mri_pulse= 64;
picture quest; mri_pulse= 65; duration=6000;
picture tn; mri_pulse= 67;
picture quest; mri_pulse= 68; duration=6000;
picture ln; mri_pulse= 70;
picture quest; mri_pulse= 71; duration=6000;
picture vn; mri_pulse= 73;
picture quest; mri_pulse= 74; duration=6000;
picture me; mri_pulse= 76;
picture quest; mri_pulse= 77; duration=6000;
picture we; mri_pulse= 79;
picture quest; mri_pulse= 80; duration=6000;
picture oe; mri_pulse= 82;
picture quest; mri_pulse= 83; duration=6000;
picture fix; mri_pulse= 85; duration=12000;
picture zn; mri_pulse= 89;
picture quest; mri_pulse= 90; duration=6000;
picture ae; mri_pulse= 92;
picture quest; mri_pulse= 93; duration=6000;
picture aae; mri_pulse= 95;
picture quest; mri_pulse= 96; duration=6000;
picture dn; mri_pulse= 98;
picture quest; mri_pulse= 99; duration=6000;
picture ace; mri_pulse= 101;
picture quest; mri_pulse= 102; duration=6000;
picture ee; mri_pulse= 104;
picture quest; mri_pulse= 105; duration=6000;
picture aee; mri_pulse= 107;
picture quest; mri_pulse= 108; duration=6000;
picture hn; mri_pulse= 110;
picture quest; mri_pulse= 111; duration=6000;
picture fix; mri_pulse= 113; duration=12000;
};