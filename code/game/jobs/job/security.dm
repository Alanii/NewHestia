// Security Jobs
/datum/job/hos
	title = "Head of Security"
	head_position = 1
	department = "Security"
	department_flag = SEC|COM

	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#8e2929"
	req_admin_notify = 1
	economic_power = 10
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory, access_heads,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_bridge, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory, access_heads,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_bridge, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_player_age = 14
	outfit_type = /decl/hierarchy/outfit/job/security/hos

/datum/job/hos/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)

/datum/job/warden
	title = "Warden"
	department = "Security"
	department_flag = SEC

	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of security"
	selection_color = "#601c1c"
	economic_power = 5
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory, access_maint_tunnels, access_external_airlocks)
	minimal_player_age = 7
	outfit_type = /decl/hierarchy/outfit/job/security/warden

/datum/job/detective
	title = "Detective"
	department = "Security"
	department_flag = SEC

	total_positions = 2
	spawn_positions = 2
	supervisors = "the head of security"
	selection_color = "#601c1c"
	alt_titles = list("Forensic Technician" = /decl/hierarchy/outfit/job/security/detective/forensic)
	economic_power = 5
	access = list(access_security, access_sec_doors, access_forensics_lockers, access_morgue, access_maint_tunnels, access_eva)
	minimal_access = list(access_security, access_sec_doors, access_forensics_lockers, access_morgue, access_maint_tunnels, access_eva)
	minimal_player_age = 7
	outfit_type = /decl/hierarchy/outfit/job/security/detective

/datum/job/officer
	title = "Security Officer"
	department = "Security"
	department_flag = SEC

	total_positions = 4
	spawn_positions = 4
	supervisors = "the head of security"
	selection_color = "#601c1c"
	alt_titles = list("Junior Officer")
	economic_power = 4
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)
	minimal_player_age = 7
	outfit_type = /decl/hierarchy/outfit/job/security/officer

/datum/job/seccadet
	title = "Security Cadet"
	department = "Security"
	department_flag = SEC
	total_positions = 2
	spawn_positions = 2
	supervisors = "the entirety of Security"
	economic_power = 1
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 18)
	selection_color = "#601c1c"
	alt_titles = list(
		"Forensics Trainee"
		)
	min_skill = list(   SKILL_EVA         = SKILL_ADEPT,
	                    SKILL_COMBAT      = SKILL_BASIC)
	max_skill = list(   SKILL_COMBAT      = SKILL_EXPERT,
	                    SKILL_WEAPONS     = SKILL_EXPERT,
	                    SKILL_FORENSICS   = SKILL_EXPERT)
	skill_points = 16

	outfit_type = /decl/hierarchy/outfit/job/security/cadet

/datum/job/seccadet/get_description_blurb()
	return "You're either a new hire, or a new trainee aboard the [GLOB.using_map.full_name]. Everyone is your senior, and as such, you'd best listen to them."

//Infantry Jobs
/datum/job/squad_lead
	title = "Squad Lead"
	department = "Infantry"
	department_flag = INF
	head_position = 1
	total_positions = 1
	spawn_positions = 1

	supervisors = "the highest ranking Marine and SolGov Command"
	selection_color = "#557e38"
	minimal_player_age = 12
	economic_power = 7
	skill_points = 24
	minimum_character_age = list(SPECIES_HUMAN = 25)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
						SKILL_EVA         = SKILL_ADEPT,
						SKILL_PILOT       = SKILL_BASIC,
						SKILL_COMBAT      = SKILL_ADEPT,
						SKILL_WEAPONS     = SKILL_ADEPT)

	max_skill = list(	SKILL_COMBAT      = SKILL_SPEC,
						SKILL_WEAPONS     = SKILL_SPEC,
						SKILL_EVA		  = SKILL_EXPERT,
						SKILL_HAULING     = SKILL_SPEC)

	outfit_type = /decl/hierarchy/outfit/job/security/infantry/squadlead

/datum/job/squad_lead/get_description_blurb()
	return "<span class='warning'>You are NOT Security. Ignoring this will get you job banned, or worse.</span> - You are a Squad Leader. Your duty is to organize and lead the small infantry squad to support the Pathfinder. You command Marines in your Squad. You make sure that expedition has the firepower it needs. Once on the away mission, your duty is to ensure that the worst doesn't become reality."

/datum/job/combat_tech
	title = "Combat Technician"
	supervisors = "the Squad Leader"
	department = "Infantry"
	department_flag = INF
	total_positions = 1
	spawn_positions = 1
	selection_color = "#557e38"
	economic_power = 4
	minimal_player_age = 8
	skill_points = 24
	minimum_character_age = list(SPECIES_HUMAN = 20)
	min_skill = list(	SKILL_CONSTRUCTION = SKILL_ADEPT,
						SKILL_ELECTRICAL   = SKILL_ADEPT,
						SKILL_MEDICAL      = SKILL_BASIC,
						SKILL_COMBAT       = SKILL_ADEPT,
						SKILL_WEAPONS      = SKILL_ADEPT)

	max_skill = list(	SKILL_COMBAT       = SKILL_EXPERT,
						SKILL_WEAPONS      = SKILL_SPEC,
						SKILL_EVA		   = SKILL_EXPERT,
						SKILL_CONSTRUCTION = SKILL_EXPERT,
						SKILL_ELECTRICAL   = SKILL_EXPERT)

	alt_titles = list(
		"Combat Engineer",
		"Combat Medic")

	outfit_type = /decl/hierarchy/outfit/job/security/infantry/tech

/datum/job/combat_tech/is_position_available()
	if(..())
		for(var/mob/M in GLOB.player_list)
			if(M.client && M.mind && M.mind.assigned_role == "Squad Lead")
				return TRUE
	return FALSE

/datum/job/combat_tech/get_description_blurb()
	return "<span class='warning'>You are NOT Security. Ignoring this will get you job banned, or worse.</span> - You are the singular Combat Technician in the squad. Your duty is to provide both firepower and demolitions as required. You may assume Command if no Squad Leader is present."

/datum/job/grunt
	title = "Rifleman"
	department = "Infantry"
	department_flag = INF
	total_positions = 3
	spawn_positions = 3
	minimal_player_age = 6
	supervisors = "the Combat Technician and Squad Leader"
	selection_color = "#557e38"
	skill_points = 18
	minimum_character_age = list(SPECIES_HUMAN = 18)
	min_skill = list(	SKILL_COMBAT       = SKILL_ADEPT,
						SKILL_WEAPONS      = SKILL_ADEPT,
						SKILL_EVA          = SKILL_BASIC)

	max_skill = list(	SKILL_COMBAT      = SKILL_EXPERT,
						SKILL_WEAPONS     = SKILL_EXPERT,
						SKILL_EVA		  = SKILL_EXPERT)

	alt_titles = list(
		"Grunt",
		"Trooper")

	outfit_type = /decl/hierarchy/outfit/job/security/infantry/grunt

/datum/job/grunt/is_position_available()
	if(..())
		for(var/mob/M in GLOB.player_list)
			if(M.client && M.mind && M.mind.assigned_role == "Squad Lead")
				return TRUE
	return FALSE

/datum/job/grunt/get_description_blurb()
	return "<span class='warning'>You are NOT Security. Ignoring this will get you job banned, or worse.</span> - You are a Marine! Your duty is to listen to the Squad Leader. If they're not present, the Combat Technician may pull rank. Do your best not to die, while also taking orders. Oorah!"

