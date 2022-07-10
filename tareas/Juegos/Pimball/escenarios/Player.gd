extends KinematicBody2D

# Para indicar la derecha
const RIGTH : int =1
const LEFT : int = -1

#Medir la velocidad
var speed : int = 4

#Que se ejecute en cada frame
#Si oprimo el boton de la derecha avanzara segun su veñocidad
func _physics_process(delta):
	if Input.is_action_pressed("derecha"):
		#position.x += SPEED
		var movimiento : Vector2 = Vector2 (speed,0)
		move_and_collide(movimiento)
		
	if Input.is_action_pressed("izquierda"):
		#position.x -= speed
		var movimiento : Vector2 = Vector2 (-speed,0)
		move_and_collide(movimiento)
		
	if Input.is_action_pressed("abajo"):
		#position.x += SPEED
		var movimiento : Vector2 = Vector2 (0,-speed)
		move_and_collide(movimiento)
		
	if Input.is_action_pressed("arriba"):
		#position.x -= speed
		var movimiento : Vector2 = Vector2 (0,speed)
		move_and_collide(movimiento)

