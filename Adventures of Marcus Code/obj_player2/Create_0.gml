/// @description Insert description here
// You can write your code in this editor


#region Variaveis de velocidade
spd = 4;
spdjump = 8; // velocidade do pulo do player
spdfall = 2; // velocidade de queda do player
maxspeedfall = 8; // velocidade maxima da queda do player
#endregion


#region Variaveis de PULO
globalvar jumpp2; 
jumpp2 = false; // estado do pulo no inicio do jogo
jumpHeight = 128; // altura maxima do pulo do palyer
jumpFrames = 0; // só bota
#endregion


#region Variaveis de gravidade
grvt = 0.6; // força da gravidade sobre o palyer
#endregion


#region Variaveis de vida
globalvar lifep2;
lifep2 = 100 //vida player 10
globalvar manap2;
manap2 = 0;
globalvar manapowerupp2;
manapowerupp2 = false;
#endregion