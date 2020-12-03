/*
		All neutral traits go here. They are automagically sorted based off their cost, but seperating em this way is easier to search through.
*/

/datum/trait/glowing_eyes
	name = "Glowing Eyes"
	desc = "Your eyes glow in the dark."	//MY VISION IS AUGMENTED

	apply(var/datum/species/S,var/mob/living/carbon/human/H)
		..(S,H)
		for(var/obj/item/organ/external/head/O in H.organs)
			O.glowing_eyes = TRUE

/datum/trait/cold_blooded
	name = "Ectothermy"
	desc = "You have diminished means of internal thermoregulation, forcing you to rely on external heat to stay alive."
	var_changes = list("body_temperature" = 280,15, "cold_discomfort_level" = 279,15)
	excludes = list(/datum/trait/hot_blooded)

/datum/trait/hot_blooded
	name = "Hot-blooded"
	desc = "Your body is capable of more vigourous endothermoregulation, causing your average body temperature to be higher than normal."
	var_changes = list("body_temperature" = 319,15 "heat_discomfort_level" = 316)
	excludes = list(/datum/trait/cold_blooded)

/datum/trait/nitrogen_breath
	name = "Nitrogenous Spirometry"
	desc = "Your metabolic processes causes you to exhale nitrogen rather than carbon dioxide."
	var_changes = list("exhale_type" = "nitrogen")

/datum/trait/fast_meta
	name = "Faster Metabolism"
	desc = "Your metabolism rate is absurdly high, causing you to get hungry and process chemicals at roughly twice the normal rate."
	var_changes = list("hunger_factor" = DEFAULT_HUNGER_FACTOR * 2.5, "metabolism_mod" = 2.5)
	excludes = list(/datum/trait/slow_meta)

/datum/trait/slow_meta
	name = "Slower Metabolism"
	desc = "Your metabolism rate is absurdly low, causing you to get hungry and process chemicals at half the normal rate."
	var_changes = list("hunger_factor" = DEFAULT_HUNGER_FACTOR * 0.5, "metabolism_mod" = 0.5)
	excludes = list(/datum/trait/fast_meta)

/datum/trait/carnivore
	name = "Carnivore"
	desc = "For one reason or another, you're only capable of eating meat. Vegetables won't kill you, but they won't help you either."
	var_changes = list(reagent_tag = IS_CARNIVORE)

/datum/trait/herbivore
	name = "Herbivore"
	desc = "You're only able to eat plants. Eating meat and other animal protein will poison you."
	var_changes = list(reagent_tag = IS_HERBIVORE)

/datum/trait/melee_attack
	name = "Rending Claws"
	desc = "You have claws. You use them in unarmed combat."
	var_changes = list("unarmed_types" = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/claws, /datum/unarmed_attack/bite/sharp))

	apply(var/datum/species/S,var/mob/living/carbon/human/H)
		..(S,H)
		for(var/u_type in S.unarmed_types)
			S.unarmed_attacks += new u_type()

/datum/trait/speed_slow
	name = "Sluggish"
	desc = "You move slower than the average person."
	var_changes = list("slowdown" = 1.5)

/datum/trait/endurance_low
	name = "Fragile"
	desc = "Your body is much, much more fragile than the average joe."
	var_changes = list("total_health" = 65)

	apply(var/datum/species/S,var/mob/living/carbon/human/H)
		..(S,H)
		H.setMaxHealth(S.total_health)


/datum/trait/minor_brute_weak
	name = "Thin Skin"
	desc = "Your skin is thinner than normal, making you slightly more susceptible to physical damage."
	var_changes = list("brute_mod" = 1.50)

/datum/trait/minor_burn_weak
	name = "Inflammable Skin"
	desc = "You skin is somehow inflammable, making you slightly more susceptible to burns."
	var_changes = list("burn_mod" = 1.50)

/datum/trait/conductive
	name = "Conductive Skin"
	desc = "Your skin has a lower electrical resistivity than normal, making you much more conductive."
	var_changes = list("siemens_coefficient" = 1.5) //This makes you a lot weaker to tasers.


/datum/trait/photosensitive
	name = "Photosensitive"
	desc = "Your eyes are especially sensitive to bright lights."
	var_changes = list("flash_mod" = 2.0)

/datum/trait/hollow
	name = "Glass Bones"
	desc = "Your limbs are just more fragile than usual for whatever reason, making them easier to break."

/datum/trait/hollow/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	for(var/obj/item/organ/external/O in H.organs)
		O.min_broken_damage *= 0.5

/datum/trait/oxy_weak
	name = "Haemoglobin Improbus"
	desc = "You have a lower blood-oxygen saturation, meaning asphyxiation is a greater risk to you."
	var_changes = list("oxy_mod" = 1.50)

/datum/trait/toxin_weak
	name = "Paper Liver"
	desc = "Your metabolism isn't very good at processing toxins, making poisons more effective against you."
	var_changes = list("toxins_mod" = 1.50)

/datum/trait/noodlyarms
	name = "Muscular Atrophy"
	desc = "You have less muscle mass than normal, giving you inferior strength."
	var_changes = list("strength" = STR_LOW)

/////////////////////
// BoH Materials
/////////////////////

/datum/trait/toxification_junky
	name = "Weak Immune System"
	desc = "Your immune system is incredibly weak, and even the slightest ailment may kill you. Be sure to notify Doctors not to overdose you!"
	var_changes = list("toxins_mod" = 5.0)

/datum/trait/hemophilia
	name = "Hemophilia"
	desc = "Your body doesn't quite stop bleeding once it starts. You need immediate treatment for anything, even minor wounds, or it might turn out real bad for you."
	var_changes = list("blood_volume" = 105) //The bare minimum before it becomes critical.

/datum/trait/stick_human
	name = "Incredibly Frail"
	desc = "Your bones, skin and general state of mind is rather fragile. Try not to get smacked, or you may have to visit the ER."
	var_changes = list("brute_mod" =2.50)

	/datum/trait/commune
	name = "Telepathy"
	desc = "Quite simply, you've the ability to project thoughts into the minds of others. A weak psychic manifestation too minor to require action from the local authorities, unlikely to ever develop into something greater."
/datum/trait/commune/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	H.verbs |= /mob/living/carbon/human/proc/psychic_whisper


