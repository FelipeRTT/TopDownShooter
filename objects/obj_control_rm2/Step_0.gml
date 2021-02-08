/// @description criando inimigo grande
// You can write your code in this editor
randomize();



if(criando){//enquanto criando for verdadeiro
	repeat(quantidadeInimigosTotal){//repetir a criação com  o valor de quantidade de inimigos do create
	instance_create_layer(random_range(100,2900),random_range(100,2900),"inimigos",obj_inimigo_grande)//criando inimigos em locais aleatorios
	global.inimigoCriado ++; //incrementando a cada inimigo criado 
	}
}

show_debug_message(global.inimigoCriado);

if(quantidadeInimigosTotal>=global.inimigoCriado){//auando a quantidade de inimigo criado for igual a quantidade de inimigos total ele vai parar de criar OBS SO VAI SERVIR PROS PRIMEIROS INIMIGOS CRIADOS
	criando = false;
}

//fazendo com que ao morrer todos os inimigosCriados o jogo avançe de nivel
if(global.inimigoCriado <= 0){
	room_goto(Room3);
	global.level ++; //aumentando nivel
}

if(instance_exists(obj_control)){
	show_debug_message("testando control");
}