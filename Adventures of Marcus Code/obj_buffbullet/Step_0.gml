#region Direção da bala
x+= 8*dir;
#endregion


#region Colisão da bala com a parede
if(place_meeting(x,y, obj_wall)) {
    instance_destroy();

}
#endregion