scenario = "empathy";
#scenario_type = fMRI;
pulse_code= 10;
sequence_interrupt=false;		#default
active_buttons = 10;
button_codes=1,2,3,4,5,6,7,8,9,10;
default_picture_duration = 12000;
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
picture { bitmap { filename = "2000.jpg"; }; x=0; y=0;  } bn; 
picture { bitmap { filename = "2030.jpg"; }; x=0; y=0;  } ye; 
picture { bitmap { filename = "2091.jpg"; }; x=0; y=0;  } ce; 
picture { bitmap { filename = "2240.jpg"; }; x=0; y=0;  } abn; 
picture { bitmap { filename = "2362.jpg"; }; x=0; y=0;  } fn; 
picture { bitmap { filename = "2373.jpg"; }; x=0; y=0;  } adn; 
picture { bitmap { filename = "2383.jpg"; }; x=0; y=0;  } ge; 
picture { bitmap { filename = "2394.jpg"; }; x=0; y=0;  } afn; 

trial { picture inst; duration=8000; code="inst";} instructions;
trial { picture fix; duration=6000; code="fixation";} fixation;
trial { picture fix; duration=12000; code="fixing";} fixing;
trial { picture quest; duration=6000; code="question";} question;

trial { picture bn; code = "01n"; } p01n;
trial { picture ye; code = "13e";} p13e;
trial { picture ce; code = "02e";} p02e;
trial { picture abn; code = "14n";} p14n;
trial { picture fn; code = "03n";} p03n;
trial { picture adn; code = "15n";} p15n;
trial { picture ge; code = "04e";} p04e;
trial { picture afn; code = "16n";} p16n;

begin_pcl;

#presenting the stimuli

instructions.present();
fixation.present();
p01n.present();
question.present();
p13e.present();
question.present();
p02e.present();
question.present();
p14n.present();
question.present();
p03n.present();
question.present();
p15n.present();
question.present();
p04e.present();
question.present();
p16n.present();
question.present();
fixing.present();

