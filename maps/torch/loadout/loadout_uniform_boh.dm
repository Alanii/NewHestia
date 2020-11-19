/datum/gear/uniform/misc_military
	display_name = "marine fatigue selection"
	description = "A selection of marine uniforms."
	path = /obj/item/clothing/under
	cost = 0
	allowed_branches = list(/datum/mil_branch/marine_corps)

/datum/gear/uniform/misc_military/New()
	..()
	var/uniform = list()
	uniform += /obj/item/clothing/under/solgov/utility/army/urban
	uniform += /obj/item/clothing/under/solgov/utility/army/tan
	uniform += /obj/item/clothing/under/solgov/utility/fleet/combat/marine
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(uniform)

/datum/gear/uniform/fleet
	display_name = "fleet coveralls"
	path = /obj/item/clothing/under/solgov/utility/fleet
	cost = 0
	allowed_branches = NT_BRANCHES

/datum/gear/uniform/fleet/officer
	display_name = "fleet officer coveralls"
	path = /obj/item/clothing/under/solgov/utility/fleet/officer
	cost = 0
	allowed_branches = NT_BRANCHES
	allowed_roles = COMMANDANDOFFICER_ROLES

/datum/gear/uniform/fleet/polopants
	display_name = "fleet polo and pants uniform selection"
	description = "An alternative utility uniform of NT's Expeditionary Fleet."
	path = /obj/item/clothing/under/solgov/utility/fleet/polopants
	cost = 0
	allowed_branches = NT_BRANCHES

/datum/gear/uniform/fleet/polopants/New()
	..()
	var/polouniform = list()
	polouniform["Command fleet polo and pants"] = /obj/item/clothing/under/solgov/utility/fleet/polopants/command
	polouniform["Engineering fleet polo and pants"] = /obj/item/clothing/under/solgov/utility/fleet/polopants
	polouniform["Security fleet polo and pants"] = /obj/item/clothing/under/solgov/utility/fleet/polopants/security
	polouniform["Medical fleet polo and pants"] = /obj/item/clothing/under/solgov/utility/fleet/polopants/medical
	polouniform["Supply fleet polo and pants"] = /obj/item/clothing/under/solgov/utility/fleet/polopants/supply
	polouniform["Service fleet polo and pants"] = /obj/item/clothing/under/solgov/utility/fleet/polopants/service
	polouniform["Exploration fleet polo and pants"] = /obj/item/clothing/under/solgov/utility/fleet/polopants/exploration
	gear_tweaks += new /datum/gear_tweak/path(polouniform)
