/// @description iniciando
// You can write your code in this editor
event_inherited(); //herdando eventos do parente
speed = 1 ; 

//fazendo ele criar o ovo a cada x segundos
randomize();
alarm[0] = room_speed * random_range(3,6);

//definindo uma vida para ele
vida = 5;