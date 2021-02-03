/// @description Insert description here
// You can write your code in this editor

//fazendo com que ele crie a particula baseado no random range do create
repeat(numeroParticulas){
	instance_create_layer(x,y,"instances",obj_particula);
}