#region BeforeCode	|| Sprite com varinha | Animação parada | Camera(off)
//camera_set_view_pos(view_camera[0],x - view_wport[0]/2,y - view_hport[0]);
sprite_index = spr_player2comvara;
image_speed = 0;
#endregion


#region Movimento	|| Esqueda | Direita | Animação
if(keyboard_check(vk_right) && place_free(x+spd,y)) {
	x+=spd;
	image_speed = 4;
	image_xscale = 1;
}else if(keyboard_check(vk_left) && place_free(x-spd,y)) {
	x-=spd;
	image_speed = 4;
	image_xscale = -1;
} else {
 image_speed = 0;	
}
#endregion


#region Sprint	|| Shift para correr
if (keyboard_check(vk_rshift)) {
	spd = 8;
} else {
	spd = 4;	
}
#endregion


#region PuloBind	|| Botão de pular: Spaço
if (keyboard_check(vk_up)) { 	
	if (!place_free(x,y+1)) {
		audio_play_sound(sndJump,1,0)
		jumpp2 = true	
		//image_index = spr_jump;
	}
}
#endregion


#region Pulo System		|| Sistema de pulo
if (jumpp2){
	if (jumpFrames < jumpHeight) {
		if (place_free(x,y-spd)) {
		jumpFrames += spdjump;
		y -= spdjump;
		}else {
			jumpp2 = false;
			jumpFrames = 0;
		}
	}else {
		jumpp2 = false;
		jumpFrames = 0;
	}

}
#endregion


#region Queda	|| Sistema da queda
if (jumpp2 == false) {
	if(place_free(x,y+spdfall)) {
		y += spdfall
		spdfall += grvt;
		if (spdfall > maxspeedfall) {
			spdfall = maxspeedfall;	
		}
	}else {
		spdfall = 2;
		while(place_free(x,y+1)){
			y++;	
	}
}
}
#endregion


#region Tiro	|| Sistema do tiro: aperte control

//normalshoot
if (manapowerupp2 == false) {
	if (keyboard_check_pressed(vk_rcontrol)) {
	audio_play_sound(sndShoot,1,0)
    var obj = instance_create_depth(x,y, -5,obj_bullet)
    obj.dir = image_xscale;
	
	}
	// powerupshoot
} else {
	if (manapowerupp2 == true) {
		if(manap2 >= 1) {
			if (keyboard_check_pressed(vk_rcontrol)) {
					var obj = instance_create_depth(x,y, -5,obj_buffbullet)
					.dir = image_xscale;	
					manap2--;
					}
				} else {
				manapowerupp2 = false;	
			}
		}	
}
#endregion


#region Morte	|| morte
if(lifep2 <= 0) {
    instance_destroy();
	todie --;
}
#endregion