/datum/job/liaison
	title = "Workplace Liaison"
	department = "Support"
	department_flag = SPT
	total_positions = 1
	spawn_positions = 1
	supervisors = "Corporate Regulations, the Union Charter, and the Surveyor Corps Organisation"
	selection_color = "#2f2f7f"
	economic_power = 15
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 24)
	alt_titles = list(
		"Corporate Liaison",
		"Union Representative" = /decl/hierarchy/outfit/job/torch/passenger/workplace_liaison/union_rep,
		"Corporate Representative",
		"Corporate Executive"
		)
	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/workplace_liaison
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/ntr)
	min_skill = list(   SKILL_BUREAUCRACY	= SKILL_EXPERT,
	                    SKILL_FINANCE		= SKILL_BASIC)
	max_skill = list(	SKILL_FINANCE       = SKILL_SPEC,
					    SKILL_BUREAUCRACY   = SKILL_SPEC)
	skill_points = 20
	access = list(access_liaison, access_maint_tunnels, access_medical,
						access_engine, access_research, access_bridge,
						access_cargo, access_solgov_crew, access_hangar,
						access_nanotrasen, access_commissary, access_petrov)
	software_on_spawn = list(/datum/computer_file/program/reports)

/datum/job/liaison/get_description_blurb()
	return "You are the Workplace Liaison. You are a civilian employee of NT, specifically the Surveyor Corps branch. You are on board the vessel to promote corporate interests and protect the rights of the contractors on board as their union leader. You are not internal affairs. You advise command on corporate and union matters and contractors on their rights and obligations. Maximise profit. Be the shady corporate shill you always wanted to be."

/datum/job/liaison/post_equip_rank(var/mob/person, var/alt_title)
	var/my_title = "\a ["\improper [(person.mind ? (person.mind.role_alt_title ? person.mind.role_alt_title : person.mind.assigned_role) : "Loss Prevention Associate")]"]"
	for(var/mob/M in GLOB.player_list)
		if(M.client && M.mind)
			if(M.mind.assigned_role == "Loss Prevention Associate")
				to_chat(M, SPAN_NOTICE("<b>One of your employers, [my_title] named [person.real_name], is present on [GLOB.using_map.full_name].</b>"))
	..()

/datum/job/bodyguard
	title = "Loss Prevention Associate"
	department = "Support"
	department_flag = SPT
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Workplace Liaison"
	selection_color = "#3d3d7f"
	economic_power = 12
	minimal_player_age = 2
	minimum_character_age = list(SPECIES_HUMAN = 21)
	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/corporate_bodyguard
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/contractor)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)
	max_skill = list(   SKILL_COMBAT      = SKILL_SPEC,
	                    SKILL_WEAPONS     = SKILL_SPEC,
						SKILL_HAULING     = SKILL_SPEC,
	                    SKILL_FORENSICS   = SKILL_EXPERT)
	alt_titles = list(
		"Union Enforcer" = /decl/hierarchy/outfit/job/torch/passenger/corporate_bodyguard/union,
		"Executive Assistant",
		"Asset Protection Agent"
	)
	skill_points = 20
	access = list(access_liaison, access_maint_tunnels, access_security, access_medical,
						access_engine, access_research, access_bridge,
						access_cargo, access_solgov_crew, access_hangar,
						access_nanotrasen, access_commissary, access_petrov,
						access_sec_guard)
	defer_roundstart_spawn = TRUE

/datum/job/bodyguard/is_position_available()
	if(..())
		for(var/mob/M in GLOB.player_list)
			if(M.client && M.mind && M.mind.assigned_role == "Workplace Liaison")
				return TRUE
	return FALSE

/datum/job/bodyguard/get_description_blurb()
	return "You are the Loss Prevention Associate. You are an employee of NT, specifically the Surveyor Corps branch, and your job is to prevent the loss of the Liason's life - even at the cost of your own. Good luck."

/datum/job/bodyguard/post_equip_rank(var/mob/person, var/alt_title)
	var/my_title = "\a ["\improper [(person.mind ? (person.mind.role_alt_title ? person.mind.role_alt_title : person.mind.assigned_role) : "Loss Prevention Associate")]"]"
	for(var/mob/M in GLOB.player_list)
		if(M.client && M.mind)
			if(M.mind.assigned_role == "Workplace Liaison")
				to_chat(M, SPAN_NOTICE("<b>Your bodyguard, [my_title] named [person.real_name], is present on [GLOB.using_map.full_name].</b>"))
	..()

/datum/job/psiadvisor
	title = "Psionic Advisor"
	department = "Support"
	department_flag = SPT
	selection_color = "#2f2f7f"
	total_positions = 1
	spawn_positions = 1
	economic_power = 30
	minimum_character_age = list(SPECIES_HUMAN = 25,SPECIES_UNATHI = 25,SPECIES_SERGAL = 25, SPECIES_SKRELL = 25, SPECIES_PROMETHEAN = 25, SPECIES_YEOSA = 25, SPECIES_VASS = 25, SPECIES_TAJ = 25, SPECIES_CUSTOM = 25, SPECIES_AKULA = 25)
	minimal_player_age = 7
	supervisors = "NTPC or the Foundation, neither secondary to the Commanding Officer"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/psiadvisor
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/foundationadvisor)
	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_EXPERT,
		SKILL_FINANCE = SKILL_ADEPT,
		SKILL_MEDICAL = SKILL_BASIC
	)
	max_skill = list(
		SKILL_COMBAT     = SKILL_EXPERT,
		SKILL_WEAPONS     = SKILL_EXPERT
	)
	skill_points = 30
	access = list(access_psiadvisor, access_security, access_medical, access_engine, access_maint_tunnels, access_external_airlocks,
				access_eva, access_bridge, access_cargo, access_RC_announce, access_solgov_crew, access_hangar)
	minimal_access = list()
	software_on_spawn = list(
		/datum/computer_file/program/comm,
		/datum/computer_file/program/records
	)

	alt_titles = list(
		"Nanotrasen Psionic Operative" = /decl/hierarchy/outfit/job/torch/crew/command/psiadvisor/nt,
		"Foundation Agent")

/datum/job/psiadvisor/equip(var/mob/living/carbon/human/H)
	psi_faculties = list("[PSI_REDACTION]" = PSI_RANK_OPERANT, "[PSI_COERCION]" = PSI_RANK_OPERANT, "[PSI_PSYCHOKINESIS]" = PSI_RANK_OPERANT, "[PSI_ENERGISTICS]" = PSI_RANK_OPERANT)
	return ..()

/datum/job/psiadvisor/get_description_blurb()
	return "You are the Psionic Advisor, an agent of either the Foundation or Nanotrasen Psionic Corps. Alongside the Counselor, you're the only other individual with known and authorized Psionic abilities aboard the NTSS Dagon. Your main responsibility is advising the Commanding Officer on psionic matters. \
	Secondly, you're to assist the crew or Research on psionic matters, or guide any newly emergent crew that awaken with psionic abilities."
