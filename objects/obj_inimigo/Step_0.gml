/// @description mudando de direção ao colidir no fim da tela

//virando zumbi depois de x de tempo
virandoZumbi ++;

if(virandoZumbi >= room_speed * 60 && chanceVirar <20){ //apos x segundos o inimigo pequeno vai se transformar em inimigo grande
	instance_create_layer(x,y,"inimigos", obj_inimigo_grande);
	instance_destroy();
}






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


//checando se esta perto do player e fazendo ele seguir se estiver
if(instance_exists(obj_player)){//checando se o player existe
	distanciaPlayer = point_distance(x,y,obj_player.x,obj_player.y);

	if(distanciaPlayer < visao){//se a distancia entre o player for menor do que a visao o inimigo vai seguir ele
		direction = point_direction(x,y, obj_player.x, obj_player.y);
	}
}

//morendo ao levar tiro

var tiro = instance_place(x,y,obj_tiro);//checando com qual tiro colidiu
if(tiro){
	vida--;//perdendo vida 
	instance_destroy(tiro);//destruindo o tiro
			
}
if(vida <= 0){
		instance_destroy();
	} //como os que irao virar zumbi terao mais vida quando a vida chegar a 0 destruir





//fazendo com que ao sair do ovo o inimigo va aumentando aos poucos
image_xscale += 0.001;
image_yscale += 0.001;

if(image_xscale >= 1.5 || image_yscale >= 1.5){//limitando o crescimento
	image_xscale = 1.5;
	image_yscale = 1.5;
}