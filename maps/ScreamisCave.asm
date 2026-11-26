	object_const_def
	const SCREAMISCAVE_POKEFAN_M

ScreamisCave_MapScripts:
	def_scene_scripts

	def_callbacks

ScreamisCavePokefanMScript:
	jumptextfaceplayer ScreamisCavePokefanMText

ScreamisCaveHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_SCREAMIS_CAVE_HIDDEN_MAX_REVIVE

ScreamisCavePokefanMText:
	text "A bunch of SCREAMI"
	line "popped out of the"

	para "ground! That was"
	line "shocking."
	done

ScreamisCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 33, VERMILION_CITY, 10
	warp_event  5, 31, SCREAMIS_CAVE, 5
	warp_event 15,  5, ROUTE_2, 5
	warp_event 17,  3, SCREAMIS_CAVE, 6
	warp_event 17, 33, SCREAMIS_CAVE, 2
	warp_event  3,  3, SCREAMIS_CAVE, 4

	def_coord_events

	def_bg_events
	bg_event  6, 11, BGEVENT_ITEM, ScreamisCaveHiddenMaxRevive

	def_object_events
	object_event  3, 31, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ScreamisCavePokefanMScript, -1
