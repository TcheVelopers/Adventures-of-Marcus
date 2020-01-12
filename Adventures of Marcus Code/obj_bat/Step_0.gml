#region INIMIGO BAT | P1 | P2 | SYSTEM
#region p1 
#region Movimentação do inimigo
if (life >= 1) {
if player.x+50<x
x-=4
if player.x-50>x
x+=4

if player.y+50<y
y-=4
if player.y-50>y
y+=4



if player.x+50>x and player.x-50<x {
atacar=true
}

if player.x+500>x and player.x-500<x {
    
}

if player.y+50<y{
if (place_meeting(x,y, obj_wallbat)) {
vspeed=-8
}
}
#endregion


#region Attack System do inimigo
if(atacar) {
    life --;
}
#endregion


#region colisão com a bala
if(place_meeting(x,y, obj_bullet)) {
    instance_destroy(obj_bullet);
    enemylife --;
}
#endregion


#region Vida do inimigo

if (enemylife == 0) {
    instance_destroy();    
}
} else {
	
}
#endregion
#endregion


#region P2

if (p2 == true) {
	if(lifep2) {
#region Movimentação do inimigo
if player2.x+50<x
x-=4
if player2.x-50>x
x+=4

if player2.y+50<y
y-=4
if player2.y-50>y
y+=4



if player2.x+50>x and player2.x-50<x {
atacarp2=true
}

if player2.x+500>x and player2.x-500<x {
    
}

if player2.y+50<y{
if (place_meeting(x,y, obj_wallbat)) {
vspeed=-8
}
}
#endregion


#region Attack System do inimigo
if(atacarp2) {
    lifep2 --;
}
#endregion


#region colisão com a bala
if(place_meeting(x,y, obj_bullet)) {
    instance_destroy(obj_bullet);
    enemylife --;
}

if(place_meeting(x,y, obj_buffbullet)) {
    instance_destroy(obj_buffbullet);
    enemylife --;
	enemylife --;
	enemylife --;
}

#endregion


#region Vida do inimigo

if (enemylife <= 0) {
    instance_destroy();    
}
#endregion
}
} else {
	
}
#endregion
#endregion