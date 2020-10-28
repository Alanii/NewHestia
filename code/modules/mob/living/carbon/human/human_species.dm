/mob/living/carbon/human/dummy
	real_name = "Test Dummy"
	status_flags = GODMODE|CANPUSH
	virtual_mob = null

/mob/living/carbon/human/dummy/mannequin/Initialize()
	. = ..()
	STOP_PROCESSING(SSmobs, src)
	GLOB.human_mob_list -= src
	delete_inventory()

/mob/living/carbon/human/dummy/selfdress/Initialize()
	. = ..()
	for(var/obj/item/I in loc)
		equip_to_appropriate_slot(I)

/mob/living/carbon/human/corpse/Initialize(mapload, new_species, obj/effect/landmark/corpse/corpse)
	. = ..(mapload, new_species)

	adjustOxyLoss(maxHealth)//cease life functions
	setBrainLoss(maxHealth)
	var/obj/item/organ/internal/heart/corpse_heart = internal_organs_by_name[BP_HEART]
	if(corpse_heart)
		corpse_heart.pulse = PULSE_NONE//actually stops heart to make worried explorers not care too much
	if(corpse)
		corpse.randomize_appearance(src, new_species)
		corpse.equip_outfit(src)
	update_icon()

/mob/living/carbon/human/dummy/mannequin/add_to_living_mob_list()
	return FALSE

/mob/living/carbon/human/dummy/mannequin/add_to_dead_mob_list()
	return FALSE

/mob/living/carbon/human/dummy/mannequin/fully_replace_character_name(new_name)
	..("[new_name] (mannequin)", FALSE)

/mob/living/carbon/human/dummy/mannequin/InitializeHud()
	return	// Mannequins don't get HUDs

/mob/living/carbon/human/skrell/New(var/new_loc)
	h_style = "Skrell Male Tentacles"
	..(new_loc,SPECIES_SKRELL)

/mob/living/carbon/human/unathi/New(var/new_loc)
	h_style = "Unathi Horns"
	..(new_loc,SPECIES_UNATHI)

/mob/living/carbon/human/vox/New(var/new_loc)
	h_style = "Long Vox Quills"
	..(new_loc,SPECIES_VOX)

/mob/living/carbon/human/vox/stackless/New(var/new_loc)
	h_style = "Long Vox Quills"
	..(new_loc, SPECIES_VOX)
	var/obj/item/organ/internal/voxstack/stack = internal_organs_by_name[BP_STACK]
	stack.Destroy()

/mob/living/carbon/human/diona/New(var/new_loc)
	..(new_loc,SPECIES_DIONA)

/mob/living/carbon/human/machine/New(var/new_loc)
	..(new_loc,SPECIES_IPC)

/mob/living/carbon/human/nabber/New(var/new_loc)
	pulling_punches = 1
	..(new_loc,SPECIES_NABBER)

/mob/living/carbon/human/monkey/New(var/new_loc)
	gender = pick(MALE, FEMALE)
	..(new_loc, SPECIES_MONKEY)

/mob/living/carbon/human/farwa/New(var/new_loc)
	..(new_loc, "Farwa")

/mob/living/carbon/human/neaera/New(var/new_loc)
	..(new_loc, "Neaera")

/mob/living/carbon/human/stok/New(var/new_loc)
	..(new_loc, "Stok")

/mob/living/carbon/human/adherent/New(var/new_loc)
	..(new_loc, SPECIES_ADHERENT)

/mob/living/carbon/human/zombie/New(var/new_loc)
	..(new_loc, SPECIES_ZOMBIE)

	var/decl/cultural_info/culture = get_cultural_value(TAG_CULTURE)
	SetName(culture.get_random_name(gender))
	real_name = name

	var/outfits = list(/decl/hierarchy/outfit/job/science/scientist,/decl/hierarchy/outfit/job/engineering/engineer,/decl/hierarchy/outfit/job/cargo/mining,/decl/hierarchy/outfit/job/medical/chemist)
	var/decl/hierarchy/outfit/corpse_outfit = outfit_by_type(pickweight(outfits))
	corpse_outfit.equip(src, OUTFIT_ADJUSTMENT_SKIP_SURVIVAL_GEAR|OUTFIT_ADJUSTMENT_SKIP_ID_PDA)

	ChangeToHusk()
	zombify()
