extends Node

var settings

func _init():
	settings = Settings.new()
	settings = settings.load_data()
	set_bg_color(settings.bg_color)


func _ready():
	set_panel_color(get_parent().get_child(1).theme)


func set_bg_color(color):
	VisualServer.set_default_clear_color(color)


func set_panel_color(theme):
	theme.get_stylebox("normal", "Button").bg_color = settings.button_color
	theme.get_stylebox("pressed", "Button").bg_color = settings.button_color * 0.9
	theme.get_stylebox("focus", "Button").bg_color = settings.button_color * 0.9
	theme.get_stylebox("hover", "Button").bg_color = settings.button_color * 0.8
	theme.get_stylebox("disabled", "Button").bg_color = settings.button_color * 0.7
	theme.get_stylebox("panel", "PanelContainer").bg_color = settings.fg_color
	#theme.get_stylebox("panel", "WindowDialog").border_color = settings.fg_color
	#print(theme.get_stylebox_types())
	#print(theme.get_stylebox_list("Button"))


# Handle shutdown of App
func _notification(what):
	if what == MainLoop.NOTIFICATION_WM_QUIT_REQUEST:
		save_and_quit()


func save_and_quit():
	settings.save_data()
	get_tree().quit()
