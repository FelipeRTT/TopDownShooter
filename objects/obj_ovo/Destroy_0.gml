/// @description criando o inimigo

// You can write your code in this editor
//criando o inimigo 1 ao ovo ser destruido 
instance_create_layer(x,y,"inimigos", obj_inimigo);
if(chanceZumbiDireto<=2){//chance de 2% de dropar diretamente um zombi e uma aranha
	instance_create_layer(x,y,"inimigos",obj_inimigo_grande);
}