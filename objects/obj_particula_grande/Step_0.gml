/// @description Insert description here
// You can write your code in this editor
//fazendo perder o brilho 
image_alpha -= .01
if(image_alpha <= 0){//se o alpha chegar a 0 destruir o obj
	instance_destroy()
}
//fazendo perder velocidade
speed -=.07;
if(speed <=0.7){
	speed = 0.7;
}


//fazendo a particula grande se se colidir com a aranha destruir a aranha e a si mesmo
var colidiuComAranha = instance_place(x,y,obj_inimigo);

if(colidiuComAranha){
	instance_destroy(colidiuComAranha);
	instance_destroy();
	
}

