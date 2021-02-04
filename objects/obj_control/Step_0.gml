/// @description criando inimigo grande
// You can write your code in this editor
randomize();



if(criando){//enquanto criando for verdadeiro
repeat(quantidadeInimigosTotal){//repetir a criação com  o valor de quantidade de inimigos do create
instance_create_layer(random_range(100,2900),random_range(100,2900),"inimigos",obj_inimigo_grande)//criando inimigos em locais aleatorios
inimigoCriado ++; //incrementando a cada inimigo criado 
}
}

show_debug_message(quantidadeInimigosTotal);

if(quantidadeInimigosTotal>=inimigoCriado){//auando a quantidade de inimigo criado for igual a quantidade de inimigos total ele vai parar de criar
	criando = false;
}