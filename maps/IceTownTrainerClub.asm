	object_const_def
	const GEARCITYTRAINERCLUB_NURSE
	const GEARCITYTRAINERCLUB_PRIZELADY
	const GEARCITYTRAINERCLUB_RECEPTIONIST
	const GEARCITYTRAINERCLUB_GREETER

IceTownTrainerClub_MapScripts:
	def_scene_scripts

	def_callbacks

IceTownTrainerClubNurseScript:
	opentext
	writetext IceTownTrainerClubNurseText1
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	special FadeInQuickly
	opentext
	writetext IceTownTrainerClubNurseText2
	waitbutton
	closetext
	end

IceTownTrainerClubPrizeLadyScript:
	end

IceTownTrainerClubReceptionistScript:
	end

IceTownTrainerClubGreeterScript:
	end

IceTownTrainerClubNurseText1:
	text "Hello, I hope you"
	line "are enjoying the"
	cont "TRAINER CLUB."

	para "Let me heal your"
	line "#MON."
	done

IceTownTrainerClubNurseText2:
	text "Your #MON are"
	line "fighting fit!"

	para "We hope to see"
	line "you again."
	done

IceTownTrainerClub_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 23, ICE_TOWN, 6
	warp_event 10, 23, ICE_TOWN, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IceTownTrainerClubNurseScript, -1
	object_event 15,  9, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IceTownTrainerClubReceptionistScript, -1
	object_event  4,  9, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, IceTownTrainerClubPrizeLadyScript, -1
	object_event 11, 18, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IceTownTrainerClubGreeterScript, -1
