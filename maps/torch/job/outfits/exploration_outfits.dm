/decl/hierarchy/outfit/job/torch/crew/exploration/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack]      = /obj/item/weapon/storage/backpack/explorer
	backpack_overrides[/decl/backpack_outfit/satchel]       = /obj/item/weapon/storage/backpack/satchel/explorer
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/weapon/storage/backpack/messenger/explorer

/decl/hierarchy/outfit/job/torch/crew/exploration/pathfinder
	name = OUTFIT_JOB_NAME("Pathfinder")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/exploration
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/torch/crew/pathfinder
	pda_type = /obj/item/modular_computer/pda/explorer
	l_ear = /obj/item/device/radio/headset/pathfinder

/decl/hierarchy/outfit/job/torch/crew/exploration/explorer
	name = OUTFIT_JOB_NAME("Explorer")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/exploration
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/torch/crew/explorer
	pda_type = /obj/item/modular_computer/pda/explorer
	l_ear = /obj/item/device/radio/headset/exploration
	backpack_contents = list(/obj/item/weapon/gun/projectile/flare = 1, /obj/item/ammo_magazine/shotholder/flash = 1)

/decl/hierarchy/outfit/job/torch/crew/exploration/medic
	name = OUTFIT_JOB_NAME("Medic Explorer")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/exploration
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/torch/crew/explorer
	pda_type = /obj/item/modular_computer/pda/explorer
	l_ear = /obj/item/device/radio/headset/exploration
	backpack_contents = list(/obj/item/weapon/storage/firstaid/stab = 1)


/decl/hierarchy/outfit/job/torch/crew/exploration/technician
	name = OUTFIT_JOB_NAME("Technician Explorer")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/exploration
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/torch/crew/explorer
	pda_type = /obj/item/modular_computer/pda/explorer
	l_ear = /obj/item/device/radio/headset/exploration
	backpack_contents = list(/obj/item/weapon/storage/belt/utility/full = 1)

/decl/hierarchy/outfit/job/torch/passenger/pilot
	name = OUTFIT_JOB_NAME("Shuttle Pilot")
	uniform = /obj/item/clothing/under/color/black
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = /obj/item/device/radio/headset/headset_pilot
	id_type = /obj/item/weapon/card/id/torch/passenger/research/nt_pilot
	head = /obj/item/clothing/head/helmet/solgov/pilot

/decl/hierarchy/outfit/job/torch/crew/exploration/pilot
	name = OUTFIT_JOB_NAME("Shuttle Pilot - Expeditionary Corps")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/exploration
	shoes = /obj/item/clothing/shoes/dutyboots
	id_type = /obj/item/weapon/card/id/torch/crew/pilot
	pda_type = /obj/item/modular_computer/pda/explorer
	l_ear = /obj/item/device/radio/headset/headset_pilot

/decl/hierarchy/outfit/job/torch/crew/exploration/pilot/fleet
	name = OUTFIT_JOB_NAME("Shuttle Pilot - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/exploration
