//Biosuit complete with shoes (in the item sprite)
/obj/item/clothing/head/bio_hood
	name = "bio hood"
	icon_state = "bio"
	item_state_slots = list(
		slot_l_hand_str = "bio_hood",
		slot_r_hand_str = "bio_hood",
		)
	desc = "A hood that protects the head and face from biological comtaminants."
	permeability_coefficient = 0
	armor = list(
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_MINOR
	)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|BLOCKHAIR
	item_flags = ITEM_FLAG_THICKMATERIAL
	body_parts_covered = HEAD|FACE|EYES
	siemens_coefficient = 0.9

/obj/item/clothing/suit/bio_suit
	name = "bio suit"
	desc = "A suit that protects against biological contamination."
	icon_state = "bio"
	item_state_slots = list(
		slot_l_hand_str = "bio_suit",
		slot_r_hand_str = "bio_suit",
	)
	w_class = ITEM_SIZE_HUGE//bulky item
	gas_transfer_coefficient = 0
	permeability_coefficient = 0
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	allowed = list(/obj/item/weapon/tank/emergency,/obj/item/weapon/pen,/obj/item/device/flashlight/pen,/obj/item/device/scanner/health,/obj/item/device/ano_scanner,/obj/item/clothing/head/bio_hood,/obj/item/clothing/mask/gas)
	armor = list(
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_MINOR
		)
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT|HIDETAIL
	item_flags = ITEM_FLAG_THICKMATERIAL
	siemens_coefficient = 0.9

/obj/item/clothing/suit/bio_suit/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 1.0

//Standard biosuit, orange stripe
/obj/item/clothing/head/bio_hood/general
	icon_state = "bio_general"
	body_parts_covered = HEAD|FACE|EYES

/obj/item/clothing/suit/bio_suit/general
	icon_state = "bio_general"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	flags_inv = HIDEJUMPSUIT|HIDETAIL|HIDEGLOVES|HIDESHOES

//Virology biosuit, green stripe
/obj/item/clothing/head/bio_hood/virology
	icon_state = "bio_virology"

/obj/item/clothing/suit/bio_suit/virology
	icon_state = "bio_virology"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	flags_inv = HIDEJUMPSUIT|HIDETAIL|HIDEGLOVES|HIDESHOES

//Security biosuit, grey with red stripe across the chest
/obj/item/clothing/head/bio_hood/security
	icon_state = "bio_security"

/obj/item/clothing/suit/bio_suit/security
	icon_state = "bio_security"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	flags_inv = HIDEJUMPSUIT|HIDETAIL|HIDEGLOVES|HIDESHOES

//Janitor's biosuit, grey with purple arms
/obj/item/clothing/head/bio_hood/janitor
	icon_state = "bio_janitor"

/obj/item/clothing/suit/bio_suit/janitor
	icon_state = "bio_janitor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	flags_inv = HIDEJUMPSUIT|HIDETAIL|HIDEGLOVES|HIDESHOES


//Scientist's biosuit, white with a pink-ish hue
/obj/item/clothing/head/bio_hood/scientist
	icon_state = "bio_scientist"

/obj/item/clothing/suit/bio_suit/scientist
	icon_state = "bio_scientist"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	flags_inv = HIDEJUMPSUIT|HIDETAIL|HIDEGLOVES|HIDESHOES

//CMO's biosuit, blue stripe
/obj/item/clothing/suit/bio_suit/cmo
	icon_state = "bio_cmo"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS|FEET
	flags_inv = HIDEJUMPSUIT|HIDETAIL|HIDEGLOVES|HIDESHOES

/obj/item/clothing/head/bio_hood/cmo
	icon_state = "bio_cmo"


//Plague Dr mask can be found in clothing/masks/gasmask.dm
/obj/item/clothing/suit/bio_suit/plaguedoctorsuit
	name = "Plague doctor suit"
	desc = "It protected doctors from the Black Death, back then. You bet your arse it's gonna help you against viruses."
	icon_state = "plaguedoctor"
	flags_inv = HIDEGLOVES|HIDEJUMPSUIT|HIDETAIL

// Anomaly Up-Armored
/////////
/obj/item/clothing/suit/bio_suit/anomaly/strong
	name = "Heavy anomaly suit"
	desc = "A suit that protects against exotic alien energies and biological contamination. This one appears to have additional protection, and, as a result, is much bulkier."
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_SHIELDED,
		bomb = ARMOR_BOMB_PADDED,
		bio =  ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	max_pressure_protection = ENG_VOIDSUIT_MAX_PRESSURE
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	item_flags = ITEM_FLAG_AIRTIGHT

/obj/item/clothing/head/bio_hood/anomaly/strong
	name = "Heavy anomaly hood"
	desc = "A hood that protects the head and face from exotic alien energies and biological contamination. It appears to have additional protection, making it bulkier."
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_SHIELDED,
		bomb = ARMOR_BOMB_PADDED,
		bio =  ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	max_pressure_protection = ENG_VOIDSUIT_MAX_PRESSURE
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
	item_flags = ITEM_FLAG_AIRTIGHT

/////////
// CBRN Mask
/////////
/obj/item/clothing/mask/gas/cbrn
	name = "CBRN Helmet Combination"
	desc = "A close-fitting tactical mask and helmet that can be connected to an air supply. This one appears to be fitted with incredibly advanced filters. \
	You'd probably be safe wagering that nothing but breathable air will be permited inside, so long as the exterior atmosphere contains such."
	icon = 'icons/boh/mob/onmob/onmob_head.dmi'
	icon_state = "armorcbrn"
	item_state = "armorcbrn"
	unacidable = 1
	body_parts_covered = HEAD|FACE|EYES
	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	filtered_gases = list(
		GAS_CO2,
		GAS_METHYL_BROMIDE,
		GAS_PHORON,
		GAS_N2O,
		GAS_METHANE,
		GAS_ALIEN,
		GAS_HYDROGEN,
		GAS_DEUTERIUM,
		GAS_TRITIUM,
		GAS_HELIUM,
		GAS_ARGON,
		GAS_KRYPTON,
		GAS_NEON,
		GAS_XENON,
		GAS_NO2,
		GAS_NO,
		GAS_CHLORINE,
		GAS_STEAM,
		GAS_SULFUR,
		GAS_AMMONIA,
		GAS_CO
	)

/////////
// CBRN Suit
/////////
/obj/item/clothing/suit/bio_suit/cbrn
	name = "Heavy CBRN Rig"
	desc = "A suit that protects against chemical and biological contamination."
	icon = 'icons/boh/mob/onmob/onmob_suit.dmi'
	icon_state = "cbrn_sec"
	item_state = "cbrn_sec"
	unacidable = 1
	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bio =  ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	item_flags = ITEM_FLAG_AIRTIGHT
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS