GLOBAL_DATUM_INIT(mercs, /datum/antagonist/terrorist, new)

/datum/antagonist/terrorist
	id = MODE_TERRORIST
	role_text = "Terrorist"
	antag_indicator = "hudsyndicate"
	role_text_plural = "Mercenaries"
	landmark_id = "Syndicate-Spawn"
	leader_welcome_text = "You are a member of the Koalicja terrorist strikeforce; hail to the chief and death to non-human filth. Use :t to speak to your underlings."
	welcome_text = "To speak on the strike team's private channel use :t."
	flags = ANTAG_VOTABLE | ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_CLEAR_EQUIPMENT | ANTAG_CHOOSE_NAME | ANTAG_HAS_NUKE | ANTAG_SET_APPEARANCE_H | ANTAG_HAS_LEADER
	antaghud_indicator = "hudoperative"

	hard_cap = 4
	hard_cap_round = 8
	initial_spawn_req = 2
	initial_spawn_target = 4
	min_player_age = 14

	faction = "terrorist"

	base_to_load = /datum/map_template/ruin/antag_spawn/terrorist

/datum/antagonist/terrorist/create_global_objectives()
	if(!..())
		return 0
	global_objectives = list()
	global_objectives |= new /datum/objective/nuclear
	return 1

/datum/antagonist/terrorist/equip(var/mob/living/carbon/human/player)
	if(!..())
		return 0

	var/decl/hierarchy/outfit/terrorist = outfit_by_type(/decl/hierarchy/outfit/terrorist)
	terrorist.equip(player)

	var/obj/item/device/radio/uplink/U = new(get_turf(player), player.mind, DEFAULT_TELECRYSTAL_AMOUNT)
	player.put_in_hands(U)

	return 1
