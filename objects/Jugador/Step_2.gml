// Verifica si no hay colisión con el objeto Wall en el área delimitada por el rectángulo.
if (!collision_rectangle(x-8,y,x+8,y+2,Wall,false,false)){
	gravity = 0.3;//Se aplica gravedad de 0.3 de fuerza
}
// Verifica si la velocidad vertical vspeed es positiva el objeto está moviéndose hacia abajo.
if (vspeed > 0){
	// Comprueba si hay colisión con el objeto Wall en el área delimitada por el rectángulo.
	var ground = collision_rectangle(x-8,y,x+8,y+vspeed,Wall,false,false)
	if (ground){
		// Si hay colisión con el suelo ground, se ajusta la posición vertical y detiene la velocidad vertical y gravedad pasa a 0.
		y = ground.y;
		vspeed = 0;
		gravity = 0;
	}
}


