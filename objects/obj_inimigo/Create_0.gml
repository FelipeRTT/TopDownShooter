/// @description iniciando
// You can write your code in this editor
speed = random_range(1,4); //definindo velocidade aleatoria
direction = random_range(0,360); //definindo direção aleatoria


visao = 250;//definindo alcance de visao

numeroParticulas = irandom_range(3,15);//definindo o numero de particulas criadas


//criando contagem para os sangues
global.numeroDeSangue = 0;//iniciando com o numero de sangue = 0 e quando for destruido vai adicionar mais um