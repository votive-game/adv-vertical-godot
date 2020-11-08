extends ProgressBar

func _physics_process(delta):
	if GlobalWorld.in_safe_space and GlobalWorld.sanity < 100:
		GlobalWorld.sanity += 0.05;
	if not GlobalWorld.in_safe_space:
		if not GlobalWorld.flashlight_status:
			GlobalWorld.sanity -= 0.03
		else:
			GlobalWorld.sanity -= 0.005
			
	self.value = GlobalWorld.sanity
