/// @description Insert description here
// You can write your code in this editor

//fazendo com que ele crie a particula baseado no random range do create
repeat(numeroParticulas){
	instance_create_layer(x,y,"inimigos",obj_particula);
}


//fazendo o sangue ao ser destruido
instance_create_layer(x,y,"chao",obj_sangue);
global.numeroDeSangue ++;//quando o obj for destruido ele vai criar o sangue e vai contar sangue ++
//no obj_control OBS EU TINHA CRIADO A VARIAVEL AQUI POREM COMO CADA VEZ QUE UM INIMIGO ERA CRIADO ELA ZERAVA NAO PODE ESTAR NO CRIATE DEWLE< POIS A CADA OVO QUE QUEBRASE  A VARIAVEL IA ZERAR POIS NO CREATE ESTAVA DECLARADO =0 


//criando tremura ---
var treme = instance_create_layer(x,y,"inimigos",obj_tremer);
