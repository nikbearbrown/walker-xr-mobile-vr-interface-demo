extends SceneTree

func _initialize() -> void:
	run_probe.call_deferred()

func key(code: Key, pressed: bool) -> void:
	var event := InputEventKey.new()
	event.keycode = code
	event.physical_keycode = code
	event.pressed = pressed
	Input.parse_input_event(event)

func run_probe() -> void:
	# Instantiate synchronously so initialization is recorded even if source quits.
	var scene: Node3D = load("res://main.tscn").instantiate()
	root.add_child(scene)
	var initialized: bool = scene.xr_interface != null and scene.xr_interface.is_initialized()
	var viewport_enabled: bool = root.use_xr
	print("XR_INITIALIZED=", initialized, " VIEWPORT_XR=", viewport_enabled)
	if not initialized:
		quit(1)
		return
	await process_frame
	await process_frame
	var origin: Node3D = scene.get_node("XROrigin3D")
	var all_inputs := true
	for sample in [[KEY_LEFT, Vector3.LEFT], [KEY_RIGHT, Vector3.RIGHT], [KEY_UP, Vector3.FORWARD], [KEY_DOWN, Vector3.BACK]]:
		var before := origin.global_position
		key(sample[0], true)
		await create_timer(0.2).timeout
		key(sample[0], false)
		await process_frame
		var movement := origin.global_position - before
		var passed: bool = movement.dot(sample[1]) > 0.1
		all_inputs = all_inputs and passed
		print("KEY=", sample[0], " MOVEMENT=", movement, " PASS=", passed)
	root.use_xr = false
	scene.xr_interface.uninitialize()
	scene.queue_free()
	await process_frame
	await process_frame
	quit(0 if initialized and viewport_enabled and all_inputs else 1)
