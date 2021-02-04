/// @description destruindo mancha
// You can write your code in this editor
//quando o numero de sangue for maior que dez 
if(global.numeroDeSangue >=10  ){//se o numero de sangues for maior que 10 ele vai começar a tirar o brilho
image_alpha -= 0.001;//começar a tirar o alpha 
show_debug_message(global.numeroDeSangue);
}


if(image_alpha <=0){
	instance_destroy(); //fazendo com que ao alpha chegar em 0 ele destrua o obj	
	
}


