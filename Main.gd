extends Control


func _ready():
	pass


func _on_BackgroundColor_color_changed(color):
	g.settings.bg_color = color
	g.set_bg_color(g.settings.bg_color)


func _on_ForegroundColor_color_changed(color):
	g.settings.fg_color = color
	g.set_panel_color(theme)


func _on_ButtonColor_color_changed(color):
	g.settings.button_color = color
	g.set_panel_color(theme)
