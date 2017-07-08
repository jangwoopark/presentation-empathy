scenario = "empathy";
scenario_type = fMRI_emulation;
pulses_per_scan = 32;
scan_period = 3000;	
#scenario_type = fMRI;
sequence_interrupt=false;		#default
#active_buttons = 8;
#button_codes=1,2,3,4,5,6,7,8;
default_font="times";
default_font_size=28;
default_text_color=255,255,255;
default_background_color=0,0,0;

begin;

picture {} default;	#blank screen
text { caption = " "; font_size = 12; } cross; 
text { caption = "RATE
YOUR CONCERN
FROM 
ZERO TO TEN"; } select;
text { caption = "RATING:"; } sending;
text { caption = "UNRATING:"; } keeping;
text { caption = "_"; } dollar_2;
text { caption = "_"; } dollar_3;
box { height = 486; width = 2; color = 255,255,255; } vert;
box { height = 2; width = 142; color = 255,255,255; } horiz;
box { height = 2; width = 4; color = 255,255,255; } divide;
box { height = 42; width = 140; color = 0,0,0; } zero;

picture { text { caption = 
"Rate your concern in a scale 
from zero to ten when asked."; }; x=0; y=0; } inst;

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

trial { picture inst; duration=6000; } instructions;
trial { picture fix; duration=6000; } fixation;
trial { picture fix; duration=12000; } fixing;

trial { picture bn; duration=3000; } p01n;
trial { picture ye; duration=3000; } p13e;
trial { picture ce; duration=3000; } p02e;
trial { picture abn; duration=3000; } p14n;
trial { picture fn; duration=3000; } p03n;
trial { picture adn; duration=3000; } p15n;
trial { picture ge; duration=3000; } p04e;
trial { picture afn; duration=3000; } p16n;
trial { picture ie; duration=3000; } p05e;
trial { picture rn; duration=3000; } p09n;
trial { picture ke; duration=3000; } p06e;
trial { picture se; duration=3000; } p10e;
trial { picture nn; duration=3000; } p07n;
trial { picture ue; duration=3000; } p11e;
trial { picture pn; duration=3000; } p08n;
trial { picture xn; duration=3000; } p12n;
trial { picture qe; duration=3000; } p09e;
trial { picture jn; duration=3000; } p05n;
trial { picture tn; duration=3000; } p10n;
trial { picture ln; duration=3000; } p06n;
trial { picture vn; duration=3000; } p11n;
trial { picture me; duration=3000; } p07e;
trial { picture we; duration=3000; } p12e;
trial { picture oe; duration=3000; } p08e;
trial { picture zn; duration=3000; } p13n;
trial { picture ae; duration=3000; } p01e;
trial { picture aae; duration=3000; } p14e;
trial { picture dn; duration=3000; } p02n;
trial { picture ace; duration=3000; } p15e;
trial { picture ee; duration=3000; } p03e;
trial { picture aee; duration=3000; } p16e;
trial { picture hn; duration=3000; } p04n;

array { LOOP $i 10; $t = '$i+1'; box {height = '440/10-2'; width = 140; color = 0,0,0;} "red10_10_$t"; ENDLOOP; } rex10;

picture { text cross; x=0; y=0;
		LOOP $i 10; $t='$i+1';
		box "red10_10_$t"; x=0; y='-220+(440/(2*10))+$i*440/10';
		ENDLOOP;
		LOOP $i 11;
		box divide; x=68; y='220-$i*(440/10)';
		box divide; x=-68; y='220-$i*(440/10)';
		ENDLOOP;
		text select; x = -250; y = 0;
		text sending; x = 250; y = 23;
		text dollar_2; x = 400; y = 23;
		text keeping; x = 250; y = -23;
		text dollar_3; x = 400; y = -23;
		box zero; x=0; y=-242;
		box vert; x=70; y=-22; 
		box vert; x=-70; y=-22; 
		box horiz; x=0; y=220; 
		box horiz; x=0; y=-264;
		} cursor10;
		
trial { stimulus_event {picture cursor10;} coding10;  } codes10;

begin_pcl;

mouse stick = response_manager.get_mouse( 1 );
#joystick stick = response_manager.get_joystick( 1 ); 
stick.set_min_max( 1, -1, 1 );
stick.set_min_max( 2, -264, 220 );
#stick.set_saturation( 1, 0.999 );
#stick.set_saturation( 2, 0.999 );
#stick.set_dead_zone( 1, 0.001 ); 
#stick.set_dead_zone( 2, 0.001 );

sub box10 (int duration10)
begin 
	loop int end_time = clock.time()  + duration10
   until clock.time() >= end_time
	begin
	array <int> seq10[10] = {-220, -176, -132, -88, -44, 0, 44, 88, 132, 176};
	array <string> num[10] = {"1","2","3","4","5","6","7","8","9","10"};
	array <string> mun[10] = {"9","8","7","6","5","4","3","2","1","0"};
	stick.poll();
	cursor10.set_part_x( 1, stick.x() ); 
	cursor10.set_part_y( 1, stick.y() );
		if (stick.y()==-264) then zero.set_color(0,0,0); 
			dollar_2.set_caption("_"); dollar_2.redraw(); 
			dollar_3.set_caption("_"); dollar_3.redraw();
			coding10.set_event_code("_"); 
		end;
		if (stick.y()>-264) 
		then zero.set_color(0,255,0); 
			dollar_2.set_caption("0"); dollar_2.redraw(); 
			dollar_3.set_caption("10"); dollar_3.redraw();
			coding10.set_event_code("0"); 
		elseif (stick.y()<-264) then zero.set_color(0,0,0); 
		end;
		loop int t=1 until t>10 begin
			if (stick.y()>seq10[t]) 
			then rex10[t].set_color(255,0,0); 
			dollar_2.set_caption(num[t]); dollar_2.redraw(); 
			dollar_3.set_caption(mun[t]); dollar_3.redraw();
			coding10.set_event_code(num[t]);
			elseif (stick.y()<seq10[t]) 
			then rex10[t].set_color(0,0,0);
			end;
			t = t + 1;
		end;
		codes10.present();
	end;
end;

instructions.present();
fixation.present();
p01n.present();
box10(6000);
p13e.present();
box10(6000);
p02e.present();
box10(6000);
p14n.present();
box10(6000);
p03n.present();
box10(6000);
p15n.present();
box10(6000);
p04e.present();
box10(6000);
p16n.present();
box10(6000);
fixing.present();
p05e.present();
box10(6000);
p09n.present();
box10(6000);
p06e.present();
box10(6000);
p10e.present();
box10(6000);
p07n.present();
box10(6000);
p11e.present();
box10(6000);
p08n.present();
box10(6000);
p12n.present();
box10(6000);
fixing.present();
p09e.present();
box10(6000);
p05n.present();
box10(6000);
p10n.present();
box10(6000);
p06n.present();
box10(6000);
p11n.present();
box10(6000);
p07e.present();
box10(6000);
p12e.present();
box10(6000);
p08e.present();
box10(6000);
fixing.present();
p13n.present();
box10(6000);
p01e.present();
box10(6000);
p14e.present();
box10(6000);
p02n.present();
box10(6000);
p15e.present();
box10(6000);
p03e.present();
box10(6000);
p16e.present();
box10(6000);
p04n.present();
box10(6000);
fixing.present();
