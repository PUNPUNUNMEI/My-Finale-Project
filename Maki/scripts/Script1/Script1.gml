// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Spawning() {
	instance_create_layer(x = random_range(1000, 1200), y = random_range(0, 720), "MainScreen", self);
	
}