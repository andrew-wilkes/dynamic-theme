extends Resource

class_name Settings

const FILENAME = "user://settings.res"

export var bg_color = Color(0.3, 0.3, 0.3)
export var fg_color= Color.darkcyan
export var button_color= Color.darkcyan

func save_data():
	var _e = ResourceSaver.save(FILENAME, self)


func load_data():
	if ResourceLoader.exists(FILENAME):
		return ResourceLoader.load(FILENAME)
	else:
		return self
