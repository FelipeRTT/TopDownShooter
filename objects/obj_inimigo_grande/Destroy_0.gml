/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//criando as particulas ao ser destruido
repeat(numeroDePariticulas){
instance_create_layer(x,y,"inimigos",obj_particula_grande);
}

