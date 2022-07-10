extends RigidBody2D

#func _input(event):
#	if event.is_action_pressed("iniciar"):
#		linear_velocity = Vector2(50,-300)
#Sirve para que funcione al oprimir un boton
var game_stardet : bool = false 
func _input(event):
	if event.is_action_pressed("iniciar") and not game_stardet:
		linear_velocity = Vector2(50,-200)
		game_stardet = true 
		
func _physics_process(delta):
	# Se detecte el objeto que va a colisionar
	var enemigos = get_colliding_bodies()
	# Recorrera todos los enemigos
	for body in enemigos :
		# Si el objeto lo encuentra, oculte
		if body.is_in_group("gr_batallon"):
			body.queue_free()
			#Si el nodo Padre cuenta con el ultimo
			if body.get_parent().get_child_count() == 1:
				print ('GANA')	
				queue_free()
 
			# Si llega ha tocar la parte inferior perdera
		elif body.get_name() == "borde_inferior":
			print("Game Over")
			#Eliminar incluyendo pelota
			queue_free()
				
			
			
