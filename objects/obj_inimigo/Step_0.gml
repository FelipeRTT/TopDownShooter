/// @description mudando de direção ao colidir no fim da tela

// olhando para onde esta indo, definindo o angulo como o direction que cria o obj aleatorio
image_angle = direction;

//fazendo com que ao x ser maior que o tamanho da room o inimigo inverta a direção
if(x +(sprite_width/2) > room_width){//como é centralizdo assim ele vai ser no meio da sprite
	
	hspeed *=-1;
}else if(x -(sprite_width/2) <= 0){ //quando ele estiver indo pra esquerda e chegar ao limite
	hspeed *= -1; //como se esta indo pra esquerda esta em negativo a hspeed entao -- é + e ele vai virar
}

if(y + (sprite_height /2) > room_height){ //fazendo com que ao descer ele inverta
	vspeed *=-1;
}else if(y - (sprite_height /2) <= 0){
	vspeed *=-1;
}