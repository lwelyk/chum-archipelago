	object_const_def
;	const MAPNAME_OBJECTNAME


TheBetweensLinksAwakeningInterior_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TheBetweensLinksAwakeningInterior_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  9,  7, THE_BETWEENS_POKECENTER_1F, 3
	warp_event  6,  8, THE_BETWEENS_TOWN, 2
	warp_event  5,  8, THE_BETWEENS_TOWN, 2

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
