	object_const_def
	;const AWAKENINGLAB_TEST_TRAINER
	const AWAKENINGLAB_POKE_BALL1
	const AWAKENINGLAB_POKE_BALL2
	const AWAKENINGLAB_POKE_BALL3
	const AWAKENINGLAB_POKE_BALL4
	const AWAKENINGLAB_POKE_BALL5
; TODO Add some stuff to the scripts to make them a bit fancier for the intro.
AwakeningLab_MapScripts:
	def_scene_scripts
	scene_script AwakeningLabNoop1Scene, SCENE_AWAKENINGLAB_WOKE_UP
	scene_script AwakeningLabNoop2Scene, SCENE_AWAKENINGLAB_PICK_POKEMON
	scene_script AwakeningLabNoop3Scene, SCENE_AWAKENINGLAB_PICKED_POKEMON

	def_callbacks
	callback MAPCALLBACK_TILES, AwakeningLabTileCallback
	callback MAPCALLBACK_NEWMAP, AwakeningLabFlypointCallback

AwakeningLabFlypointCallback:
	blackoutmod AWAKENING_LAB
	endcallback

AwakeningLabTileCallback:
	checkevent EVENT_AWAKENING_LAB_BOMBED_WALL
	iffalse .End
	changeblock 0, 0, $11
	changeblock 2, 0, $12
	changeblock 0, 2, $47
	changeblock 2, 2, $10
	changeblock 0, 4, $47
	changeblock 2, 4, $48
	changeblock 2, 6, $46
.End:
	endcallback

AwakeningLabNoop1Scene:
	end

AwakeningLabNoop2Scene:
	end

AwakeningLabNoop3Scene:
	end

WakeUpScript:
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, WalkToStartingItemsMovement
	opentext
	writetext FirstItemsText
	waitbutton
	getstring STRING_BUFFER_4, PokegearName
	scall AwakeningLabReceiveItemStd
	setflag ENGINE_POKEGEAR
	setflag ENGINE_MAP_CARD
	setflag ENGINE_RADIO_CARD
	setflag ENGINE_POKEDEX
	promptbutton
	special SetDayOfWeek
.SetDayOfWeek:
	writetext IsItDSTText
	yesorno
	iffalse .WrongDay
	special InitialSetDSTFlag
	yesorno
	iffalse .SetDayOfWeek
	sjump .DayOfWeekDone
.WrongDay:
	special InitialClearDSTFlag
	yesorno
	iffalse .SetDayOfWeek
.DayOfWeekDone:
	sjump .Continue

.Continue:
	writetext GotFirstItemsText
	waitbutton
	closetext
	playsound SFX_ZAP_CANNON
	waitsfx
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, LEFT
	setscene SCENE_AWAKENINGLAB_PICK_POKEMON
	end


PokegearName:
	db "#GEAR@"

LabTryToLeaveScript:
	opentext
	writetext LabCantLeaveText
	waitbutton
	closetext
	applymovement PLAYER, AwakeningLab_CantLeaveMovement
	end

PorygonPokeBallScript:
	refreshscreen
	pokepic PORYGON
	cry PORYGON
	waitbutton
	closepokepic
	opentext
	writetext TakePorygonText
	yesorno
	iffalse DidntChooseStarterScript
	disappear AWAKENINGLAB_POKE_BALL1
	disappear AWAKENINGLAB_POKE_BALL2
	disappear AWAKENINGLAB_POKE_BALL3
	setevent EVENT_GOT_PORYGON_STARTER
	setevent EVENT_GOT_A_STARTER
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, PORYGON
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke PORYGON, 8, BERRY
	setscene SCENE_AWAKENINGLAB_PICKED_POKEMON
	closetext
	end

BurgelaPokeBallScript:
	refreshscreen
	pokepic BURGELA
	cry BURGELA
	waitbutton
	closepokepic
	opentext
	writetext TakeBurgelaText
	yesorno
	iffalse DidntChooseStarterScript
	disappear AWAKENINGLAB_POKE_BALL1
	disappear AWAKENINGLAB_POKE_BALL2
	disappear AWAKENINGLAB_POKE_BALL3
	setevent EVENT_GOT_BURGELA_STARTER
	setevent EVENT_GOT_A_STARTER
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, BURGELA
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke BURGELA, 8, BERRY
	setscene SCENE_AWAKENINGLAB_PICKED_POKEMON
	closetext
	end

SpirripPokeBallScript:
	refreshscreen
	pokepic SPIRRIP
	cry SPIRRIP
	waitbutton
	closepokepic
	opentext
	writetext TakeSpirripText
	yesorno
	iffalse DidntChooseStarterScript
	disappear AWAKENINGLAB_POKE_BALL1
	disappear AWAKENINGLAB_POKE_BALL2
	disappear AWAKENINGLAB_POKE_BALL3
	setevent EVENT_GOT_SPIRRIP_STARTER
	setevent EVENT_GOT_A_STARTER
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, SPIRRIP
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke SPIRRIP, 8, BERRY
	setscene SCENE_AWAKENINGLAB_PICKED_POKEMON
	closetext
	end


DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end

AwakeningLabHealingMachine:
	opentext
	writetext AwakeningLabHealingMachineText
	waitbutton
	special FadeBlackQuickly
	playsound SFX_FULL_HEAL
	waitsfx
	special HealParty
	special FadeInQuickly
	writetext AwakeningLabHealingMachineHealedText
	waitbutton
	closetext
	end

LookAtStarterPokeballScript:
	opentext
	writetext StarterPokeballText
	waitbutton
	closetext
	end

AwakeningLabPokeballs:
	itemball POKE_BALL, 20

AwakeningLabPotions:
	itemball POTION, 7

;TestTrainer:
; trainer RIVAL1, RIVAL1_1, -1, TestTrainerSeen, TestTrainerBeaten, 0, .Script

;.Script
;	end

WalkToStartingItemsMovement:
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	turn_head UP
	step_end

AwakeningLab_CantLeaveMovement:
	step LEFT
	step LEFT
	step_end

AwakeningLabReceiveItemStd:
	jumpstd ReceiveItemScript
	end

AwakeningLabPlayerRoomSign:
	jumptext AwakeningLabPlayerRoomSignText

AwakeningLabBrendanRoomSign:
	jumptext AwakeningLabBrendanRoomSignText

AwakeningLabBrokenRoomSign:
	jumptext AwakeningLabBrokenRoomSignText

AwakeningLabDawnRoomSign:
	jumptext AwakeningLabDawnRoomSignText

AwakeningLabPlayerMachine:
	jumptext AwakeningLabPlayerMachineText

AwakeningLabBrendanMachine:
	jumptext AwakeningLabBrendanMachineText

AwakeningLabDawnMachine:
	jumptext AwakeningLabDawnMachineText

AwakeningLabBrokenMachine:
	jumptext AwakeningLabBrokenMachineText

AwakeningLabShelfScript:
	jumptext AwakeningLabShelfScriptText

AwakeningLabComputerScript:
	jumptext AwakeningLabComputerText

TestTrainerSeen:
	text "Test"
	done

TestTrainerBeaten:
	text "You win."
	done

AwakeningLabPlayerRoomSignText:
	text "<PLAY_G>?"
	done

AwakeningLabBrendanRoomSignText:
	text "UNKNOWN SUBJECT"
	line "EMPTY VESSEL"
	done

AwakeningLabDawnRoomSignText:
	text "UNKNOWN SUBJECT"
	line "EMPTY VESSEL"
	done

AwakeningLabBrokenRoomSignText:
	text "UNKNOWN SUBJECT"
	line "DAMAGED VESSEL"

	para "SOME SIGNS OF"
	line "CONSCIOUSNESS."
	done

AwakeningLabPlayerMachineText:
	text "The strange mach-"
	line "-ine that you"
	cont "woke up in."

	para "You can't tell"
	line "how it works"
	cont "or what it does"
	done

AwakeningLabBrendanMachineText:
	text "A lifeless boy"
	line "floats in a vat"
	cont "of green liquid."

	para "You get the"
	line "eerie feeling"
	cont "that there was"
	cont "never any life"
	cont "behind those"
	cont "eyes..."
	done

AwakeningLabDawnMachineText:
	text "A lifeless girl"
	line "floats in a vat"
	cont "of green liquid."

	para "You get the"
	line "eerie feeling"
	cont "that there was"
	cont "never any life"
	cont "behind those"
	cont "eyes..."
	done

AwakeningLabBrokenMachineText:
	text "This machine was"
	line "broken from the"
	cont "inside."

	para "Remains of the"
	line "strange, green"
	cont "liquid lies in"
	cont "the machine with"
	cont "the broken glass."

	para "Some blood seems"
	line "to remain as well."
	done

AwakeningLabShelfScriptText:
	text "These books seem"
	line "to be printed"

	para "source code."
	done

FirstItemsText:
	text "There are a few"
	line "items in the cab-"
	cont "-inet, including"
	cont "a PDA-like thing."

	para "it looks like it"
	line "needs to be set"
	cont "up."
	done

GotFirstItemsText:
	text "There's also a"
	line "note."

	para "Dear <PLAY_G>,"
	line "Sorry I wasn't"
	cont "able to meet you"
	cont "when you woke up,"
	cont "but I'm kind of"
	cont "busy and I am"
	cont "already doing a"
	cont "lot for you."

	para "Take these items"
	line "and one of the"
	cont "#MON from the"
	cont "lab and start"
	cont "heading to"
	cont "GEAR CITY."

	para "My lab is to the"
	line "north, past the"
	cont "forest in an old"
	cont "cemetary."

	para "This old lab that"
	line "you woke up in is"
	cont "a bit of a hike,"
	cont "but I'm sure you"
	cont "will manage."

	para "Good luck! Also,"
	line "don't worry about"
	cont "the three other"
	cont "vats with people"
	cont "inside."

	para "They're not real."
	
	para "Just extra parts."

	para "-Kyle."
	done

IsItDSTText:
	text "#GEAR: Is it"
	line "DST right now?"
	done

LabCantLeaveText:
	text "You cannot leave"
	line "this room until"
	cont "you have chosen."
	done

DidntChooseStarterText:
	text "Think it over"
	line "carefully."

	para "Your choice will"
	line "follow you until"
	cont "this is all done."
	done

TakePorygonText:
	text "You'll take"
	line "PORYGON, the"
	cont "digital mon?"
	done

TakeBurgelaText:
	text "Do you want"
	line "BURGELA, the"
	cont "beta GRASS mon?"
	done

TakeSpirripText:
	text "So, you like"
	line "SPIRRIP, the"
	cont "rock ghost?"
	done

ChoseStarterText:
	text "You got your first"
	line "#MON!"
	done

ReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

StarterPokeballText:
	text "It contains a"
	line "#MON left"
	cont "by KYLE."

	para "It seems you"
	line "can't pick"
	cont "a second one."
	done

LabWhereGoingText:
	text "You are not"
	line "able to leave"
	cont "until you make"
	cont "your choice."
	done

AwakeningLabComputerText:
	text "The computer is"
	line "showing a"
	cont "status report."

	para "Bro Island inte-"
	line "-grity critical."

	para "Lab Machines 1"
	line "and 3 functional."

	para "Subjects can be"
	line "used for back-"
	cont "-ups as needed."

	para "Lab Machine 2 is"
	line "destroyed."
	cont "Subject is miss-"
	cont "-ing, please ex-"
	cont "-ercise extreme"
	cont "caution."
	
	para "Subject believed"
	line "to be the key"
	cont "B-unit that has"
	cont "been missing."

	para "Lab Machine 4 is"
	line "functional."

	para "Subject active"
	line "and mobile. May"
	cont "use machine for"
	cont "own backup."

	para "It requires a"
	line "password to see"
	cont "more information."
	done

AwakeningLabHealingMachineText:
	text "This appears to be"
	line "a healing machine"
	cont "for #MON."
	done

AwakeningLabHealingMachineHealedText:
	text "Your #MON"
	line "are healed!"
	done

AwakeningLabTeleport:
	; givepoke FURIOUSB, 100
	; giveitem BRITE_CARD
	; giveitem JUMP_3
	; giveitem JUMP_2
	; giveitem JUMP_1
	; giveitem HM_SURF
	; giveitem HM_FLY
	; giveitem HM_STRENGTH
	; giveitem BOMBS
	; giveitem FLASHLIGHT
	; setflag ENGINE_FLYPOINT_AWAKENING_BEACH
	; setflag ENGINE_FLYPOINT_GEAR_CITY
	; setflag ENGINE_FLYPOINT_CEMETARY
	; setflag ENGINE_FLYPOINT_UNIVERCITY
	; setflag ENGINE_FLYPOINT_EEVEE_RANCH
	; setflag ENGINE_FLYPOINT_JUNGLE
	; setflag ENGINE_FLYPOINT_VOLCANO_EXTERIOR
	; setflag ENGINE_FLYPOINT_MAYBE_VILLAGE
	; setflag ENGINE_FLYPOINT_IVY_ROAD
	; setflag ENGINE_FLYPOINT_THE_DARK_LAB
	; setflag ENGINE_ZEPHYRBADGE
	; setflag ENGINE_HIVEBADGE
	; setflag ENGINE_PLAINBADGE
	; setflag ENGINE_FOGBADGE
	; setflag ENGINE_MINERALBADGE
	; setflag ENGINE_STORMBADGE
	; setflag ENGINE_GLACIERBADGE
	; setflag ENGINE_RISINGBADGE
	; warp KYLES_DESKTOP_ROOM, 3, 3
	; setflag ENGINE_POKEGEAR
	; setflag ENGINE_MAP_CARD
	; setflag ENGINE_RADIO_CARD
	; setflag ENGINE_POKEDEX
	; givepoke SPIRRIP, 5
	;givepoke FURIOUSB, 100
	;giveitem BRITE_CARD
	;giveitem JUMP_3
	;giveitem JUMP_2
	;giveitem JUMP_1
	;giveitem HM_SURF
	;giveitem HM_FLY
	;giveitem HM_STRENGTH
	;warp KYLES_DESKTOP_ROOM, 3, 3
	end


AwakeningLabBombableWall:
	checkitem BOMBS
	iffalse .End
	checkevent EVENT_AWAKENING_LAB_BOMBED_WALL
	iftrue .End
	opentext
	writetext AwakeningLabBombableWallText
	yesorno
	iffalse .Refused
	closetext
	applymovement PLAYER, AwakeningLabBombWallMovement
	pause 10
	playsound SFX_STRENGTH
	earthquake 60
	waitsfx
	setevent EVENT_AWAKENING_LAB_BOMBED_WALL
	changeblock 0, 0, $11
	changeblock 2, 0, $12
	changeblock 0, 2, $47
	changeblock 2, 2, $10
	changeblock 0, 4, $47
	changeblock 2, 4, $48
	changeblock 2, 6, $46
	applymovement PLAYER, AwakeningLabBombWallMovementBack
.Refused:
	closetext
.End:
	end

AwakeningLabBombableWallText:
	text "The wall here"
	line "looks like it was"
	cont "recently repaired"

	para "You could blow it"
	line "open with a BOMB"
	cont "if you want."

	para "Blow it up?"
	done

AwakeningLabBombWallMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step_end

AwakeningLabBombWallMovementBack:
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step_end

AwakeningLabJump:
	opentext
    special FadeOutMusic
    playmusic MUSIC_SS_AQUA
	writetext VanHalenJump
	waitbutton
	checkevent EVENT_GOT_AWAKENING_LAB_JUMP
	iftrue .After
	verbosegiveitem JUMP_3
	setevent EVENT_GOT_AWAKENING_LAB_JUMP
.After:
	closetext
	end

VanHalenJump:
	text "There's a note"
	line "that says:"

	para "JUMP"

	para "By Van Halen"

	para "I get up, and"
	line "nothin' gets me"
	cont "down."
	
	para "You got it tough"
	line "I've seen the"
	cont "toughest around."

	para "And I know, baby,"
	line "just how you feel."
	
	para "You got to roll"
	line "with the punches."

	para "And get to what's"
	line "real."

	para "Ah, can't you see"
	line "me standin' here?"

	para "I got my back"
	line "against the record"
	cont "machine."

	para "I ain't the worst"
	line "that you've seen"

	para "Ah, can't you see"
	line "what I mean?"

	para "Ah, might as well"
	line "jump      (jump!)"

	para "Might as well"
	line "jump"

	para "Go ahead and jump"
	line "          (jump!)"

	para "Go ahead and jump"

	para "Ah-oh, hey you!"

	para "Who said that?"

	para "Baby, how you"
	line "been?"

	para "You say you don't"
	line "know."

	para "You won't know"
	line "until you begin."

	para "So, can't you see"
	line "me standing here?"

	para "I got my back"
	line "against the record"
	cont "machine."

	para "I ain't the worst"
	line "that you've seen"

	para "Ah, can't you see"
	line "what I mean?"

	para "Ah, might as well"
	line "jump      (jump!)"

	para "Go ahead and jump"

	para "Might as well"
	line "jump      (jump!)"

	para "Go ahead and jump"
	line "Jump!"

	para "Might as well"
	line "jump      (jump!)"

	para "Go ahead and jump"

	para "Might as well"
	line "jump      (jump!)"
	
	para "Go ahead and jump"

	para "Jump!"
	para "Jump!"
	para "Jump!"
	para "Jump!"
	done

AwakeningLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25, 19, AWAKENING_BEACH, 1
	warp_event 24, 19, AWAKENING_BEACH, 1
	;warp_event 27, 16, DR_NUGGZ_MD_EXTERIOR, 1

	def_coord_events
	coord_event 26,  6, SCENE_AWAKENINGLAB_WOKE_UP, WakeUpScript
	coord_event 18, 16, SCENE_AWAKENINGLAB_PICK_POKEMON, LabTryToLeaveScript
	coord_event 18, 17, SCENE_AWAKENINGLAB_PICK_POKEMON, LabTryToLeaveScript

	def_bg_events
	bg_event  25,  7, BGEVENT_READ, AwakeningLabPlayerRoomSign
	bg_event 19,  7, BGEVENT_READ, AwakeningLabBrendanRoomSign
	bg_event 13,  7, BGEVENT_READ, AwakeningLabBrokenRoomSign
	bg_event  7,  7, BGEVENT_READ, AwakeningLabDawnRoomSign
	bg_event 26,  4, BGEVENT_READ, AwakeningLabPlayerMachine
	bg_event 27,  4, BGEVENT_READ, AwakeningLabPlayerMachine
	bg_event 26,  3, BGEVENT_READ, AwakeningLabPlayerMachine
	bg_event 20,  4, BGEVENT_READ, AwakeningLabBrendanMachine
	bg_event 21,  4, BGEVENT_READ, AwakeningLabBrendanMachine
	bg_event 20,  3, BGEVENT_READ, AwakeningLabBrendanMachine
	bg_event 14,  4, BGEVENT_READ, AwakeningLabBrokenMachine
	bg_event 14,  3, BGEVENT_READ, AwakeningLabBrokenMachine
	bg_event 15,  4, BGEVENT_READ, AwakeningLabBrokenMachine
	bg_event  8,  4, BGEVENT_READ, AwakeningLabDawnMachine
	bg_event  9,  4, BGEVENT_READ, AwakeningLabDawnMachine
	bg_event  8,  3, BGEVENT_READ, AwakeningLabDawnMachine
	bg_event  20, 12, BGEVENT_READ, AwakeningLabShelfScript
	bg_event  21, 12, BGEVENT_READ, AwakeningLabShelfScript
	bg_event  22, 12, BGEVENT_READ, AwakeningLabShelfScript
	bg_event  23, 12, BGEVENT_READ, AwakeningLabShelfScript
	bg_event  4, 14, BGEVENT_READ, AwakeningLabComputerScript
	bg_event  5, 14, BGEVENT_READ, AwakeningLabComputerScript
	bg_event 24, 12, BGEVENT_READ, AwakeningLabHealingMachine
	bg_event 25, 12, BGEVENT_READ, AwakeningLabHealingMachine
	bg_event  2,  7, BGEVENT_READ, AwakeningLabBombableWall
	bg_event 23,  2, BGEVENT_READ, AwakeningLabTeleport
	bg_event 2, 4, BGEVENT_READ, AwakeningLabJump

	def_object_events
	;object_event 26, 14, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 0, TestTrainer, -1
	object_event 12, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PorygonPokeBallScript, EVENT_GOT_A_STARTER
	object_event 13, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurgelaPokeBallScript, EVENT_GOT_A_STARTER
	object_event 14, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SpirripPokeBallScript, EVENT_GOT_A_STARTER
	object_event 21, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AwakeningLabPokeballs, EVENT_AWAKENING_LAB_POKEBALLS
	object_event 20, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AwakeningLabPotions, EVENT_AWAKENING_LAB_POTIONS
