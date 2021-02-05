/// @description iniciando
// You can write your code in this editor
speed = random_range(1,4); //definindo velocidade aleatoria
direction = random_range(0,360); //definindo direção aleatoria

vida = 1;


visao = 250;//definindo alcance de visao

numeroParticulas = irandom_range(3,18);//definindo o numero de particulas criadas




//fazendo ele iniciar pequeno para ir crescendo aos poucos ate sair do ovo
image_xscale = 0.4;
image_yscale = 0.4;

//ideia louca, fazer com que depois de x segundos o inimigo se torne o inimigo grande
virandoZumbi = 0;
chanceVirar = irandom_range(0,100); //criando uma chance de virar ou nao 

//fazendo com que aqueles que forem virar zumbi tenham mais vida
if(chanceVirar <20){
	vida = 3;
}