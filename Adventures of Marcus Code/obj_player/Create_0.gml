#region multiplayer System
globalvar p2;
p2 = false;
globalvar todie;
todie = 1;
#endregion


#region Variaveis de velocidade
spd = 4;
spdjump = 8; // velocidade do pulo do player
spdfall = 2; // velocidade de queda do player
maxspeedfall = 8; // velocidade maxima da queda do player
#endregion


#region Variaveis de PULO
globalvar jump; 
jump = false; // estado do pulo no inicio do jogo
jumpHeight = 128; // altura maxima do pulo do palyer
jumpFrames = 0; // só bota
#endregion


#region Variaveis de gravidade
grvt = 0.6; // força da gravidade sobre o palyer
#endregion


#region Variaveis de vida
globalvar life;
life = 100 //vida player 10
#endregion


#region mana
globalvar manapowerup;
manapowerup = false;
globalvar mana;
mana = 0;
#endregion