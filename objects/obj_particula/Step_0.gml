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