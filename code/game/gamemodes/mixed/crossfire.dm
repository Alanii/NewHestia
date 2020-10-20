/datum/game_mode/crossfire
	name = "Crossfire"
	round_description = "Mercenaries and raiders are preparing for a nice visit..."
	extended_round_description = "Nothing can possibly go wrong with lots of people and lots of guns, right?"
	config_tag = "crossfire"
	required_players = 14
	required_enemies = 4 //Originally 6, updated for lowpop and to ensure the mode actually spawns people in
	end_on_antag_death = FALSE
	antag_tags = list(MODE_RAIDER, MODE_TERRORIST)
	require_all_templates = TRUE
