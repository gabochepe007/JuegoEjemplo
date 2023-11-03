var _caminar = keyboard_check(vk_right) - keyboard_check(vk_left); //Para verificar a que direccion esta caminando

//Si caminar es diferente a 0
if (_caminar !=0){
	if (place_free(x + _caminar * 2, y)){
		x+= _caminar * 10;
	}
	image_xscale = _caminar; //la imagen del sprint se cambia a la posicion del movimiento
	sprite_index = spr_hero_run; //imagen de sprint usada
}else{
	sprite_index = spr_hero_idle;// si es igual spr quieto
}
 //Verifica si la tecla de espacio ha sido presionada y si hay una colisión con el objeto Wall
if (keyboard_check_pressed(vk_space)&&collision_rectangle(x-8,y,x+8,y+2,Wall,false,false)){
	vspeed = -10;	//velocidad vertical a -10 para hacer que el objeto salte hacia arriba.
}

frecuenciaDisparo -=1;
if(keyboard_check(ord("A"))&& frecuenciaDisparo <= 0){
	var _bullet = instance_create_layer(x + 63 * image_xscale,y -40 ,"Instances",obj_Bullet);
	_bullet.image_xscale = image_xscale;
	_bullet.hspeed *= image_xscale;
	frecuenciaDisparo = 10;
}




