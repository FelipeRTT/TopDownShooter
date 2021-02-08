/// @description criando inimigos grande
// You can write your code in this editor
//criando contagem para os sangues, toda vez que o inimigo 1 for destruido vai contar ++
global.numeroDeSangue = 0;//iniciando com o numero de sangue = 0 e quando for destruido vai adicionar mais um
quantidadeInimigosTotal = irandom_range(3,5);//definindo um valor aleatorio pra quantidade de inimigos
global.inimigoCriado = 0;//quando inimigo criado for = quantidade vai fazer o criando ser false
criando = true;//para que enquanto criando for true ele continue criando no step 
randomize();

level = 1;