//make 100 platforms and space them so they fill up 3000 pixels vertically





/*	
	if (i==9) {
		var p1 = instance_create_layer(new_x, i, "Instances",obj_p1);
		p1.player_id = 0;
		
		var p2 = instance_create_layer(new_x+10, i, "Instances",obj_p2);
		p2.player_id = 1;
	}
	*/



global.p1_score = 0;
global.p2_score = 0;



audio_play_sound(snd_background,10,true);



//particle set up
//make the system to hold and draw particles
parts = part_system_create();
//make a new particle type so we can give the particles properties
sparkle = part_type_create();
part_type_shape(sparkle,pt_shape_square);
part_type_size(sparkle, 0.04,0.07,0,0);
part_type_speed(sparkle,0,0,0,0.1);
part_type_life(sparkle,60,120);
part_type_alpha2(sparkle,0.5,0.0);
part_type_orientation(sparkle,-180,180,1,0,0);
part_type_gravity(sparkle,0.01,90);

emitter = part_emitter_create(parts);