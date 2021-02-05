/// @description iniciando variaveis
// You can write your code in this editor
velocidade = 5;//criando variavel velocidade

//definindo variavel que vai jogar o player para tras ao colidir com o inimigo
jogado = false;

//definindo vida para o player
vida = 50;

adBrilho = false;//definindo variavel que vai mudar para true quando o player colidir com o inimigo grande e vai fazer ele aumentar e diminuir de brilho pra indicar a colisao

//fazendo com que ao player colidir algumas vezes com o zumbi ele vire zumbi
playerVirandoZumbi = 10;

//criando variaveis para o tiro
cdr = 20; //definindo um cooldown para os tiros no caso 20 sao 3 tiros por segundo
tempoPassado = 0; //vai aumentar no step e se for mair q o cdr vai poder atirar 

//definindo invencivel, pois quando o player tomar dano vai ficar invencivel por algum tempo
invencivel = false; 

//zerando tempo da invencibilidade
tempoInvencivel = 0;