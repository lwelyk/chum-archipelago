	object_const_def
;	const MAPNAME_OBJECTNAME


Meeman1F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

Meeman1FBigClassroomSignScript:
	jumptext Meeman1FBigClassroomSignText

ReadingRoomSignScript:
	jumptext ReadingRoomSignText

Meeman1FAdOfficeSignScript:
	jumptext Meeman1FAdOfficeSignText

BobWillisScript:
	trainer GRAMPS, WILLIS, EVENT_BEAT_GRAMPS_WILLIS, BobWillisSeenText, BobWillisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BobWillisAfterText
	waitbutton
	closetext
	end

JordanPetersonScript:
	trainer FEDORA_MAN, JORDANP, EVENT_BEAT_GENTLEMAN_JORDANP, JordanPetersonSeenText, JordanPetersonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JordanPetersonAfterText
	waitbutton
	closetext
	end

Meeman1FAdvertisingStudentScript:
	jumptextfaceplayer Meeman1FAdvertisingStudentText

Meeman1FReadingRoomStudentScript:
	jumptextfaceplayer Meeman1FReadingRoomStudentText

Meeman1FPetersonWatcher1Script:
	jumptextfaceplayer Meeman1FPetersonWatcher1Text

Meeman1FPetersonWatcher2Script:
	jumptextfaceplayer Meeman1FPetersonWatcher2Text

TrainerWeirdoCalvin:
	trainer WEIRDO, CALVIN, EVENT_BEAT_WEIRDO_CALVIN, WeirdoCalvinSeenText, WeirdoCalvinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext WeirdoCalvinAfterText
	waitbutton
	closetext
	end

CandyJusticeScript:
	jumptextfaceplayer CandyJusticeText

Meeman1FReadingRoomStudent2Script:
	jumptextfaceplayer Meeman1FReadingRoomStudent2Text

Meeman1FWanderingStudent1:
	jumptextfaceplayer Meeman1FWanderingStudent1Text

Meeman1FWanderingStudent2:
	jumptextfaceplayer Meeman1FWanderingStudent2Text

Meeman1FStatueScript:
	jumptext Meeman1FStatueText

MeemanReadingRoomShelfScript:
	jumptext MeemanReadingRoomShelfText

Meeman1FTreeBrianScript:
	checkevent EVENT_BEAT_TREE_BRIAN_3
	iftrue .Done
	opentext
	writetext Meeman1FTreeBrianSeenText
	waitbutton
	closetext
	winlosstext Meeman1FTreeBrianBeatenText, 0
	loadtrainer TREE_BRIAN, TREEBRIAN_3
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_TREE_BRIAN_3
	opentext
	writetext Meeman1FTreeBrianAfterText
	waitbutton
	closetext
	playsound SFX_TOXIC
	earthquake 40
	changeblock 8, 8, $0D ; No tree
	waitsfx
.Done:
	end

Meeman1FTreeBrianAfterText:
	text "I kind of forgot"
	line "this room existed"

	para "I never went into"
	line "the ad office."

	para "Anyway bye, I may"
	line "also be upstairs."
	done

Meeman1FTreeBrianSeenText:
	text "Hahahaha got you"
	line "bitch!"

	para "I can be a fake"
	line "tree too!"
	done

Meeman1FTreeBrianBeatenText:
	text "Playstation Plus"
	line "really went down"
	cont "in value after"
	cont "they dropped the"
	cont "PS3 and PSP games"
	done

MeemanReadingRoomShelfText:
	text "Nothing but very"
	line "old magazines."

	para "A few of these"
	line "have had letters"
	cont "cut out of them."
	done

Meeman1FStatueText:
	text "Two out-of-place"
	line "statues sit in"
	cont "the middle of the"
	cont "lobby."

	para "A dragon and a"
	line "cat?"

	para "The display is"
	line "labeled:"

	para "THE HELMSMAN VS"
	line "THE STUDENT GOV."
	cont "ASSOCIATION"

	para "Brass sculpture"
	done

Meeman1FWanderingStudent2Text:
	text "Those who can't"
	line "do JOURNALISM,"
	cont "major in"
	cont "BROADCAST."

	para "Those who can't"
	line "do BROADCAST,"
	cont "major in P.R."

	para "Those who can't"
	line "do P.R., major"
	cont "in COMMUNICATIONS"
	done

Meeman1FWanderingStudent1Text:
	text "I didn't know"
	line "JOURNALISM jobs"
	cont "still existed!"
	
	para "But I suppose"
	line "teaching it is"
	cont "a JOURNALISM job."
	done

Meeman1FReadingRoomStudent2Text:
	text "Excuse me, but I"
	line "need to study"
	cont "for my ALGEBRA"
	cont "final."

	para "I thought #MON"
	line "suddenly being"
	cont "everywhere would"
	cont "mean society'd be"
	cont "all about that"
	cont "like the games."

	para "But noooooo..."

	para "I gotta 'work'"
	line "and 'get a job.'"
	done

CandyJusticeText:
	text "CANDY J: I don't"
	line "know where we'd"
	cont "be without BOOZER"
	cont "and WHINPIN."

	para "Those two keep"
	line "the HELMSMAN"
	cont "going."

	para "Sure, there have"
	line "been some rumors"
	cont "about WHINPIN,"
	cont "but nobody's"
	cont "perfect."

	para "I'd drive off 100"
	line "students before I"
	cont "let this paper go"
	cont "digital!"
	done

Meeman1FPetersonWatcher1Text:
	text "This guest"
	line "lecturer started"
	cont "to cry while"
	cont "talking about"
	cont "SHREK 3-D before"
	cont "you got here."

	para "I really hope"
	line "this isn't on"
	cont "the test."
	done

Meeman1FPetersonWatcher2Text:
	text "This PETERSON guy"
	line "has some weird"
	cont "#MON theories."

	para "Like apparently,"
	line "there are only 2"
	cont "genders of #-"
	cont "-MON, and the"
	cont "genderless ones"
	cont "are faking it."

	para "CHAOS and ORDER."

	para "The two"
	line "#GENDERS."
	done

WeirdoCalvinSeenText:
	text "EXCUSE ME, I'M"
	line "TRYING TO LISTEN"
	cont "TO DR. PETERSON."
	done

WeirdoCalvinBeatenText:
	text "CULTURAL"
	line "MARXISTS."
	done

WeirdoCalvinAfterText:
	text "SNAKES FUCKING"
	line "PROVE THAT WE"
	cont "HAVE INTRINSIC"
	cont "KNOWLEDGE OF DNA"
	done
Meeman1FReadingRoomStudentText:
	text "Why is there a"
	line "room dedicated to"
	cont "magazines?"

	para "These are all so"
	line "old."

	para "This one has a"
	line "cover with the"
	cont "TWIN TOWERS on it"

	para ""

	para ""

	para ""
	line "   never forget."
	done

Meeman1FAdvertisingStudentText:
	text "I work here in"
	line "the advertising"
	cont "office."

	para "We sold enough"
	line "ads for the"
	cont "HELMSMAN to have"
	cont "a front AND back"
	cont "page next month!"
	done

JordanPetersonAfterText:
	text "JORDAN PETERS: We"
	line "just don't know"
	cont "the rules!"

	para "Men and women"
	line "working together,"
	cont "what is this?"

	para "Science fiction?"

	para "We need rules!"

	para "How's this rule:"

	para "Women must wear"
	line "paper bags over"
	cont "their heads in"
	cont "the workplace."

	para "Women's faces"
	line "are often seen"
	cont "during sexual"
	cont "intercourse, and"
	cont "as such, must be"
	cont "hidden at work."

	para "That's what women"
	line "have faces for!"

	para "To sexualize!"

	para "I'm not saying"
	line "that this is a"
	cont "rule to institute"

	para "I'm only implying"
	line "it, so you cannot"
	cont "criticize me."
	done

JordanPetersonSeenText:
	text "I will NEVER take"
	line "down my tweet."

	para "I will NEVER"
	line "acknowledge that"
	cont "it broke the"
	cont "twitter rules."

	para "Up yours, woke"
	line "moralists!"

	para "We'll see who"
	line "cancels who!"
	done

JordanPetersonBeatenText:
	text "The woke left are"
	line "using the sports"
	cont "illustrated"
	cont "swimsuit edition"
	cont "to turn the frog"
	cont "children trans."
	done

BobWillisSeenText:
	text "BOB WILLIS: Well"
	line "how diddly-doo."

	para "Would you like to"
	line "buy some ad space"
	cont "in the HELMSMAN?"

	para "Online ads are"
	line "just a fad!"
	done

BobWillisBeatenText:
	text "You could have"
	line "said no."
	done

BobWillisAfterText:
	text "BOB WILLIS: See,"
	line "Advertising is"
	cont "the beating heart"
	cont "of Journalism!"

	para "Without a lot of"
	line "ads disguised as"
	cont "content, there"
	cont "wouldn't be any"
	cont "journalism!"
	done

Meeman1FAdOfficeSignText:
	text "ADVERTISING"

	para "Shop at the"
	line "Woolworth's for"
	cont "your Holiday"
	cont "needs!"
	done

ReadingRoomSignText:
	text "READING ROOM"
	done

Meeman1FBigClassroomSignText:
	text "AMPITHEATER"
	done


Meeman1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 14, 27, UNIVERCITY, 7
	warp_event 15, 27, UNIVERCITY, 7
	warp_event 29,  0, MEEMAN_2F, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 24, 25, BGEVENT_UP, Meeman1FBigClassroomSignScript
	bg_event  6, 25, BGEVENT_UP, ReadingRoomSignScript
	bg_event  6, 11, BGEVENT_UP, Meeman1FAdOfficeSignScript
	bg_event 14, 13, BGEVENT_READ, Meeman1FStatueScript
	bg_event 15, 13, BGEVENT_READ, Meeman1FStatueScript
	bg_event 15, 12, BGEVENT_READ, Meeman1FStatueScript
	bg_event 14, 12, BGEVENT_READ, Meeman1FStatueScript
	bg_event  2, 15, BGEVENT_UP, MeemanReadingRoomShelfScript
	bg_event  9, 15, BGEVENT_UP, MeemanReadingRoomShelfScript
	bg_event  8, 15, BGEVENT_UP, MeemanReadingRoomShelfScript
	bg_event  7, 15, BGEVENT_UP, MeemanReadingRoomShelfScript
	bg_event  6, 15, BGEVENT_UP, MeemanReadingRoomShelfScript
	bg_event  5, 15, BGEVENT_UP, MeemanReadingRoomShelfScript
	bg_event  4, 15, BGEVENT_UP, MeemanReadingRoomShelfScript
	bg_event  3, 15, BGEVENT_UP, MeemanReadingRoomShelfScript
	bg_event  8,  8, BGEVENT_READ, Meeman1FTreeBrianScript
	bg_event  8,  9, BGEVENT_READ, Meeman1FTreeBrianScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 14, 19, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 2, 5, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Meeman1FWanderingStudent1, 0
	object_event 15,  5, SPRITE_SABRINA, SPRITEMOVEDATA_WANDER, 2, 5, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Meeman1FWanderingStudent2, 0
	object_event  2,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, BobWillisScript, 0
	object_event 25,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, JordanPetersonScript, 0
	object_event  9,  6, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Meeman1FAdvertisingStudentScript, 0
	object_event  6, 16, SPRITE_BILL, SPRITEMOVEDATA_WANDER, 4, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Meeman1FReadingRoomStudentScript, 0
	object_event  5, 21, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Meeman1FReadingRoomStudent2Script, 0
	object_event 21, 23, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Meeman1FPetersonWatcher1Script, 0
	object_event 21,  9, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Meeman1FPetersonWatcher2Script, 0
	object_event 26, 13, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerWeirdoCalvin, 0
	object_event  8,  2, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CandyJusticeScript, 0