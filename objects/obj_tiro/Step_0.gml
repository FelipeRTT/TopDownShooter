/// @description destruindo ao sair da tela 
// You can write your code in this editor

//fazendo do jeito normal
if(y< -100){
	instance_destroy();
	show_debug_message("destruido cima");
}else if(y> room_height +100){
	instance_destroy();
	show_debug_message("destruido baixo");
}

//usando clamp, variavel, valor minimo e maximo, se for difetente destroy
if(x != clamp(x,-100, room_width )){
	instance_destroy();
	show_debug_message("destruido lados");
}