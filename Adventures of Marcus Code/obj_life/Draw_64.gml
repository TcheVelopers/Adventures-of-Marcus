if(p2 == false) {

if(life <= 100) {

if(life <= 100) {
	draw_sprite(spr_vida,0,129,96)
}
if(life <= 80) {
	draw_sprite(spr_vida,1,129,96)	
}
if(life <= 60) {
	draw_sprite(spr_vida,2,129,96)	
}
if(life <= 40) {
	draw_sprite(spr_vida,3,129,96)	
}
if(life <= 20) {
	draw_sprite(spr_vida,4,129,96)	
}
if(life <= 0) {
	draw_sprite(spr_vida,5,129,96)	
}
}else if (life <= 200) {
		
}
}

// MULTIJOGADOR
if (p2 == true) {

// VIDA p1
if(life <= 100) {

if(life <= 100) {
	draw_sprite(spr_vida,0,129,96)
}
if(life <= 80) {
	draw_sprite(spr_vida,1,129,96)	
}
if(life <= 60) {
	draw_sprite(spr_vida,2,129,96)	
}
if(life <= 40) {
	draw_sprite(spr_vida,3,129,96)	
}
if(life <= 20) {
	draw_sprite(spr_vida,4,129,96)	
}
if(life <= 0) {
	draw_sprite(spr_vida,5,129,96)	
}
}else if (life <= 200) {
		
}


// VIDA P2


if(lifep2 <= 100) {

if(lifep2 <= 100) {
	draw_sprite(spr_vida,0,129,159)
}
if(lifep2 <= 80) {
	draw_sprite(spr_vida,1,129,159)	
}
if(lifep2 <= 60) {
	draw_sprite(spr_vida,2,129,159)	
}
if(lifep2 <= 40) {
	draw_sprite(spr_vida,3,129,159)	
}
if(lifep2 <= 20) {
	draw_sprite(spr_vida,4,129,159)	
}
if(lifep2 <= 0) {
	draw_sprite(spr_vida,5,129,159)	
}
}else if (life <= 200) {
		
}


	
}


if (p2 == false && mana >= 0) {
if(mana <= 5) {
	draw_sprite(spr_mana,0,205,96)
}
if(mana <= 4) {
	draw_sprite(spr_mana,1,205,96)	
}
if(mana <= 3) {
	draw_sprite(spr_mana,2,205,96)	
}
if(mana <= 2) {
	draw_sprite(spr_mana,3,205,96)	
}
if(mana <= 1) {
	draw_sprite(spr_mana,4,205,96)	
}
if(mana == 0) {
	draw_sprite(spr_mana,5,205,96)	
}
}


//multiplayer p1
if (p2 == true && mana >= 0 && manap2 >= 0) {

if(mana <= 5) {
	draw_sprite(spr_mana,0,205,96)
}
if(mana <= 4) {
	draw_sprite(spr_mana,1,205,96)	
}
if(mana <= 3) {
	draw_sprite(spr_mana,2,205,96)	
}
if(mana <= 2) {
	draw_sprite(spr_mana,3,205,96)	
}
if(mana <= 1) {
	draw_sprite(spr_mana,4,205,96)	
}
if(mana == 0) {
	draw_sprite(spr_mana,5,205,96)	
}	

//multiplayer p2
	
if(manap2 <= 5) {
	draw_sprite(spr_mana,0,205,159)
}
if(manap2 <= 4) {
	draw_sprite(spr_mana,1,205,159)	
}
if(manap2 <= 3) {
	draw_sprite(spr_mana,2,205,159)	
}
if(manap2 <= 2) {
	draw_sprite(spr_mana,3,205,159)	
}
if(manap2 <= 1) {
	draw_sprite(spr_mana,4,205,159)	
}
if(manap2 == 0) {
	draw_sprite(spr_mana,5,205,159)	
}	
}