#region INIMIGO SAW | P1 | P2 | SYSTEM


#region Movimentação
if (place_free(x,y+4)) {
	y += 1;		
}

if (dir == 1) {
	if (place_free(x+4,y) && place_meeting(x+48,y+4,obj_wall)  ) {
	x +=1
	}else {
	dir = -1	
	image_xscale = 1;
	}
}

if (dir == -1) {
	if (place_free(x-4,y)) && place_meeting(x-48,y+4,obj_wall) {
	x -=1;	
	} else {
	dir = 1;	
	image_xscale = -1;
	}
	
}
#endregion


#region colisão
var collision = instance_place(x,y, obj_bullet);
if (collision) {
	with(collision)instance_destroy();	
	lifeenemy --;
	show_debug_message(string(lifeenemy));
	if (lifeenemy == 0)
	instance_destroy();
	enemysaw --;
}
#endregion


#region Ataque P1
if (place_meeting(x,y, obj_player)) {
	life--;	
}
#endregion


#region Ataque P2
if (place_meeting(x,y, obj_player2)) {
	lifep2--;	
}
#endregion


#endregion