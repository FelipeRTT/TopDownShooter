/// @description Movimentaçãp
// You can write your code in this editor
//fazendo com que a variavel de tempo passado seja incrementada step
tempoPassado ++;
var tiro = mouse_check_button(mb_left);

if(tiro){ //quando tiro, criar a imagem do tiro
	if(tempoPassado >= cdr){//se o tempo passado for maior q o cdr, vai atirar, para nao sair infinitos tiros por segundo segurando o mouse
		instance_create_layer(x,y,"instances",obj_tiro);
		tempoPassado = 0;//zerando a var para iniciar novamente
	}
}

if(!jogado){//se nao jogado
		//movimentação do player
		esq = keyboard_check(ord("A")); //ord é para poder usar letras
		dir = keyboard_check(ord("D"));
		cima = keyboard_check(ord("W"));
		baixo = keyboard_check(ord("S"));
		


		velh = (dir - esq) * velocidade; //movimentação
		velv = (baixo - cima) * velocidade;

		x+= velh ;//aplicando mov horizontal


		y += velv ; // aplicando mov vertical


		//fazendo o player mirar para onde o mouse esta 

		var direcao = point_direction(x,y,mouse_x,mouse_y)+0;
		image_angle = direcao;
}

//limitando movimentação do player
x = clamp(x,sprite_width/2,room_width-sprite_width/2);
y = clamp(y,sprite_height/2, room_height-sprite_width/2);


//checando colisao com inimigo 1 , como aqui é distroi vou fazer diretamente por aqui ja o inimigo grande vou fazer direto no inimigo 
var colidindo1 = instance_place(x,y,obj_inimigo);
if(colidindo1 && invencivel = false){//quando ele tomar um dano ele vai ficar invencivel e vai voltar ao normal apos um tempo
	//instance_destroy(colidindo1); nao quero que ele perca vida ao colidir
	
	vida--;
	playerVirandoZumbi -= 0.5; //fazendo com que ao colidir com o inimigo 1 tbm va virando zumbi porem lentamente
	invencivel = true;
	adBrilho = true; //ativando o adBlue pra fazer o player ficar invisivel e voltar ao normal pro jogador saber que esta invencivel por um curto tempo
	
	alarm[0] = room_speed/2;//chamando o alarme para o player parar de ser jogado
	jogado = true; //ativando o jogado ao colidir
	direction = colidindo1.direction; //quando colidir com o inimigo ir na direção dele
	speed = 7;
	
}

//voltando invencibilidade ao normal
tempoInvencivel ++;
if(tempoInvencivel >= room_speed * 3){
	invencivel = false;//perdendo invencibilidade
	tempoInvencivel = 0;//zerando o contador
	
}

//checando colisao com inimigo 2, e fazendo o player ficando invisivel e voltando ao normal para dar a sensaç~~ao de que teve algum dano

if(adBrilho){//quando colidir com o inimigo vai virar true entao vai diminuir o alpha e depois aumentar novamente
	image_alpha -= 0.01;
	if(image_alpha <=0.1){
		adBrilho = false;
	}
}else if(adBrilho = false){
	image_alpha += 0.01;
} if(image_alpha >= 1){
	image_alpha =1;
}



if(vida <= 0){
	room_restart();
}
show_debug_message(vida)

//fazendo o player virar zumbi ao colidir alguimas vezes com o zumbi
if(playerVirandoZumbi <= 0){
	instance_destroy();
	instance_create_layer(x,y,"inimigos",obj_inimigo_grande);
}

