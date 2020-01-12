///@description PAUSA

if (gameIsPaused == false) {
	instance_deactivate_all(true);
	gameIsPaused = true;
	//layer_vspeed("Background", 0); // Caso tenha animação no background
}else {
	// layer_vspeed("Background", 1); // Caso tenha animação no background
	instance_activate_all()	
	gameIsPaused = false
}