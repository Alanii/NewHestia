/datum/job/submap/voxship_vox
	title = "Shoal Scavenger"
	total_positions = 4
	outfit_type = /decl/hierarchy/outfit/job/voxship/crew
	supervisors = "Quill,The Apex and the arkship"
	info = "Scrap is thin. Not much food is left, but thankfully the sector is quite rich, and it's time to get some more supplies. \
	although staying on base is tempting. Plenty of nitrogen, and not much hazards to worry about."
	whitelisted_species = list(SPECIES_VOX)
	blacklisted_species = null
	is_semi_antagonist = TRUE
	max_skill = list(   SKILL_BUREAUCRACY = SKILL_EXPERT,
	                    SKILL_FINANCE = SKILL_EXPERT,
	                    SKILL_EVA = SKILL_EXPERT,
	                    SKILL_MECH = SKILL_EXPERT,
	                    SKILL_PILOT = SKILL_EXPERT,
	                    SKILL_HAULING = SKILL_EXPERT,
	                    SKILL_COMPUTER = SKILL_EXPERT,
	                    SKILL_BOTANY = SKILL_EXPERT,
	                    SKILL_COOKING = SKILL_EXPERT,
	                    SKILL_COMBAT = SKILL_EXPERT,
	                    SKILL_WEAPONS = SKILL_EXPERT,
	                    SKILL_FORENSICS = SKILL_EXPERT,
	                    SKILL_CONSTRUCTION = SKILL_EXPERT,
	                    SKILL_ELECTRICAL = SKILL_ADEPT,
	                    SKILL_ATMOS = SKILL_ADEPT,
	                    SKILL_ENGINES = SKILL_ADEPT,
	                    SKILL_DEVICES = SKILL_EXPERT,
	                    SKILL_SCIENCE = SKILL_EXPERT,
	                    SKILL_MEDICAL = SKILL_ADEPT,
	                    SKILL_ANATOMY = SKILL_ADEPT,
	                    SKILL_CHEMISTRY = SKILL_ADEPT)
	skill_points = 40

/datum/job/submap/voxship_vox/doc
	title = "Shoal Biotechnician"
	total_positions = 1
	info = "You are the sawbones of your scavenger crew. You are in charge of removing stacks, replacing limbs, and generally keeping your kin alive at all costs."
	whitelisted_species = list(SPECIES_VOX)
	min_skill = list(	SKILL_HAULING     = SKILL_BASIC,
						SKILL_EVA         = SKILL_EXPERT,
						SKILL_MEDICAL     = SKILL_EXPERT,
						SKILL_ANATOMY     = SKILL_EXPERT,
						SKILL_CHEMISTRY   = SKILL_ADEPT,
						SKILL_WEAPONS     = SKILL_ADEPT)


	max_skill = list(   SKILL_BUREAUCRACY = SKILL_EXPERT,
	                    SKILL_FINANCE = SKILL_EXPERT,
	                    SKILL_EVA = SKILL_EXPERT,
	                    SKILL_MECH = SKILL_EXPERT,
	                    SKILL_PILOT = SKILL_EXPERT,
	                    SKILL_HAULING = SKILL_EXPERT,
	                    SKILL_COMPUTER = SKILL_EXPERT,
	                    SKILL_BOTANY = SKILL_EXPERT,
	                    SKILL_COOKING = SKILL_EXPERT,
	                    SKILL_COMBAT = SKILL_EXPERT,
	                    SKILL_WEAPONS = SKILL_EXPERT,
	                    SKILL_FORENSICS = SKILL_EXPERT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL = SKILL_ADEPT,
	                    SKILL_ATMOS = SKILL_ADEPT,
	                    SKILL_ENGINES = SKILL_ADEPT,
	                    SKILL_DEVICES = SKILL_SPEC,
	                    SKILL_SCIENCE = SKILL_EXPERT,
	                    SKILL_MEDICAL = SKILL_SPEC,
	                    SKILL_ANATOMY = SKILL_SPEC,
	                    SKILL_CHEMISTRY = SKILL_SPEC)
	skill_points = 26

/datum/job/submap/voxship_vox/engineer
	title = "Shoal Technician"
	total_positions = 2
	info = "You are the mechanic of your scavenger crew. Keep all your salvaged technology running, fix robotics, and disassemble some of the more complex devices your crew comes across."
	whitelisted_species = list(SPECIES_VOX)
	min_skill = list(	SKILL_HAULING      = SKILL_BASIC,
						SKILL_COMPUTER     = SKILL_ADEPT,
	                    SKILL_EVA          = SKILL_EXPERT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_ADEPT,
	                    SKILL_ENGINES      = SKILL_ADEPT,
	                    SKILL_WEAPONS      = SKILL_ADEPT)


	max_skill = list(   SKILL_BUREAUCRACY = SKILL_EXPERT,
	                    SKILL_FINANCE = SKILL_EXPERT,
	                    SKILL_EVA = SKILL_SPEC,
	                    SKILL_MECH = SKILL_SPEC,
	                    SKILL_PILOT = SKILL_EXPERT,
	                    SKILL_HAULING = SKILL_EXPERT,
	                    SKILL_COMPUTER = SKILL_SPEC,
	                    SKILL_BOTANY = SKILL_EXPERT,
	                    SKILL_COOKING = SKILL_EXPERT,
	                    SKILL_COMBAT = SKILL_EXPERT,
	                    SKILL_WEAPONS = SKILL_EXPERT,
	                    SKILL_FORENSICS = SKILL_EXPERT,
	                    SKILL_CONSTRUCTION = SKILL_SPEC,
	                    SKILL_ELECTRICAL = SKILL_SPEC,
	                    SKILL_ATMOS = SKILL_SPEC,
	                    SKILL_ENGINES = SKILL_SPEC,
	                    SKILL_DEVICES = SKILL_EXPERT,
	                    SKILL_SCIENCE = SKILL_EXPERT,
	                    SKILL_MEDICAL = SKILL_ADEPT,
	                    SKILL_ANATOMY = SKILL_ADEPT,
	                    SKILL_CHEMISTRY = SKILL_ADEPT)
	skill_points = 26

/datum/job/submap/voxship_vox/quill
	title = "Shoal Quill"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/voxship/crew/captain
	supervisors = "The Apex and the arkship"
	info = "You're in charge. You fly the ship, and dictate what the crew does. You are in charge of keeping your subordinates in check, the Apex has given you authority to kill any that disobeys your orders. Do not disappoint the Apex."
	whitelisted_species = list(SPECIES_VOX, SPECIES_VOX_ARMALIS)
	min_skill = list(	SKILL_HAULING     = SKILL_BASIC,
						SKILL_EVA         = SKILL_EXPERT,
						SKILL_SCIENCE     = SKILL_BASIC,
						SKILL_PILOT       = SKILL_ADEPT,
						SKILL_COMBAT      = SKILL_ADEPT,
						SKILL_WEAPONS     = SKILL_ADEPT)


	max_skill = list(   SKILL_BUREAUCRACY = SKILL_EXPERT,
	                    SKILL_FINANCE = SKILL_EXPERT,
	                    SKILL_EVA = SKILL_SPEC,
	                    SKILL_MECH = SKILL_EXPERT,
	                    SKILL_PILOT = SKILL_SPEC,
	                    SKILL_HAULING = SKILL_EXPERT,
	                    SKILL_COMPUTER = SKILL_EXPERT,
	                    SKILL_BOTANY = SKILL_EXPERT,
	                    SKILL_COOKING = SKILL_EXPERT,
	                    SKILL_COMBAT = SKILL_SPEC,
	                    SKILL_WEAPONS = SKILL_SPEC,
	                    SKILL_FORENSICS = SKILL_EXPERT,
	                    SKILL_CONSTRUCTION = SKILL_EXPERT,
	                    SKILL_ELECTRICAL = SKILL_EXPERT,
	                    SKILL_ATMOS = SKILL_EXPERT,
	                    SKILL_ENGINES = SKILL_EXPERT,
	                    SKILL_DEVICES = SKILL_EXPERT,
	                    SKILL_SCIENCE = SKILL_EXPERT,
	                    SKILL_MEDICAL = SKILL_EXPERT,
	                    SKILL_ANATOMY = SKILL_EXPERT,
	                    SKILL_CHEMISTRY = SKILL_EXPERT)
	skill_points = 30

#define VOXSHIP_OUTFIT_JOB_NAME(job_name) ("Vox Asteroid Base - Job - " + job_name)
/decl/hierarchy/outfit/job/voxship
	hierarchy_type = /decl/hierarchy/outfit/job/voxship
	l_ear = null
	r_ear = null

/decl/hierarchy/outfit/job/voxship/crew
	name = VOXSHIP_OUTFIT_JOB_NAME("Shoal Scavenger")
	uniform = /obj/item/clothing/under/vox/vox_robes
	r_pocket = /obj/item/device/radio
	shoes = /obj/item/clothing/shoes/magboots/vox
	belt = /obj/item/weapon/storage/belt/utility/full
	id_type = /obj/item/weapon/card/id/voxship
	r_pocket = /obj/item/device/radio
	l_pocket = /obj/item/weapon/crowbar/prybar
	r_hand = /obj/item/weapon/tank/emergency/nitrogen/double

/decl/hierarchy/outfit/job/voxship/crew/captain
	name = VOXSHIP_OUTFIT_JOB_NAME("Shoal Quill")
	uniform = /obj/item/clothing/under/vox/vox_robes
	r_pocket = /obj/item/device/radio
	shoes = /obj/item/clothing/shoes/magboots/vox
	belt = /obj/item/weapon/storage/belt/utility/full
	id_type = /obj/item/weapon/card/id/voxship_captain
	l_pocket = /obj/item/weapon/crowbar/prybar
	r_hand = /obj/item/weapon/tank/emergency/nitrogen/double

/obj/effect/submap_landmark/spawnpoint/voxship_crew
	name = "Shoal Scavenger"

/obj/effect/submap_landmark/spawnpoint/voxship_crew/doc
	name = "Shoal Biotechnician"

/obj/effect/submap_landmark/spawnpoint/voxship_crew/engineer
	name = "Shoal Technician"

/obj/effect/submap_landmark/spawnpoint/voxship_crew/quill
	name = "Shoal Quill"

#undef VOXSHIP_OUTFIT_JOB_NAME
