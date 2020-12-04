/obj/item/weapon/gun/projectile/heavysniper
	name = "PTR-7"
	desc = "A portable anti-armour rifle fitted with a scope, the HI PTR-7 Rifle was originally designed to be used against armoured exosuits. It is capable of punching through windows and non-reinforced walls with ease. \
	Truly an anachronism from another time."
	icon = 'icons/obj/guns/heavysniper.dmi'
	icon_state = "heavysniper"
	item_state = "heavysniper" //sort of placeholder
	w_class = ITEM_SIZE_HUGE
	force = 10
	slot_flags = SLOT_BACK
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 2, TECH_ESOTERIC = 8)
	caliber = CALIBER_ANTIMATERIAL
	screen_shake = 0 //screenshake breaks the scope.
	handle_casings = HOLD_CASINGS
	load_method = SINGLE_CASING
	max_shells = 1
	ammo_type = /obj/item/ammo_casing/shell
	one_hand_penalty = 6
	accuracy = -2
	bulk = 8
	scoped_accuracy = 8 //increased accuracy over the LWAP because only one shot
	scope_zoom = 2
	var/bolt_open = 0
	wielded_item_state = "heavysniper-wielded" //sort of placeholder
	load_sound = 'sound/weapons/guns/interaction/rifle_load.ogg'
	fire_delay = 12

/obj/item/weapon/gun/projectile/heavysniper/on_update_icon()
	..()
	if(bolt_open)
		icon_state = "[initial(icon_state)]-open"
	else
		icon_state = "[initial(icon_state)]"

/obj/item/weapon/gun/projectile/heavysniper/handle_post_fire(mob/user, atom/target, var/pointblank=0, var/reflex=0)
	..()
	if(user && user.skill_check(SKILL_WEAPONS, SKILL_SPEC))
		to_chat(user, "<span class='notice'>You work the bolt open with a reflexive motion, ejecting [chambered]!</span>")
		unload_shell()

/obj/item/weapon/gun/projectile/heavysniper/proc/unload_shell()
	if(chambered)
		if(!bolt_open)
			playsound(src.loc, 'sound/weapons/guns/interaction/rifle_boltback.ogg', 50, 1)
			bolt_open = 1
		chambered.dropInto(src.loc)
		loaded -= chambered
		chambered = null

/obj/item/weapon/gun/projectile/heavysniper/attack_self(mob/user as mob)
	bolt_open = !bolt_open
	if(bolt_open)
		if(chambered)
			to_chat(user, "<span class='notice'>You work the bolt open, ejecting [chambered]!</span>")
			unload_shell()
		else
			to_chat(user, "<span class='notice'>You work the bolt open.</span>")
	else
		to_chat(user, "<span class='notice'>You work the bolt closed.</span>")
		playsound(src.loc, 'sound/weapons/guns/interaction/rifle_boltforward.ogg', 50, 1)
		bolt_open = 0
	add_fingerprint(user)
	update_icon()

/obj/item/weapon/gun/projectile/heavysniper/special_check(mob/user)
	if(bolt_open)
		to_chat(user, "<span class='warning'>You can't fire [src] while the bolt is open!</span>")
		return 0
	return ..()

/obj/item/weapon/gun/projectile/heavysniper/load_ammo(var/obj/item/A, mob/user)
	if(!bolt_open)
		return
	..()

/obj/item/weapon/gun/projectile/heavysniper/unload_ammo(mob/user, var/allow_dump=1)
	if(!bolt_open)
		return
	..()
	
//actual thing considering ammo can't be readily found, and much better options are present
/obj/item/weapon/gun/projectile/heavysniper/display
	name = "PTR-7"
	desc = "A portable anti-armour rifle fitted with a scope, the HI PTR-7 Rifle was originally designed to used against armoured exosuits. It is capable of punching through windows and non-reinforced walls with ease. Fires armor piercing 14.5mm shells. This is quite a decent replica, obviously purchased for a significant sum of thalers."
	starts_loaded = 0

/obj/item/weapon/gun/projectile/heavysniper/boltaction
	name = "bolt action rifle"
	desc = "An old bolt action rifle from some forgotten war, still commonplace among farmers and colonists as an anti-varmint rifle."
	icon = 'icons/obj/guns/boltaction.dmi'
	icon_state = "boltaction"
	item_state = "boltaction"
	w_class = ITEM_SIZE_LARGE
	origin_tech = list(TECH_COMBAT = 2)
	caliber = CALIBER_RIFLE
	ammo_type = /obj/item/ammo_casing/rifle
	load_method = SINGLE_CASING|SPEEDLOADER
	max_shells = 5
	accuracy = 4
	scope_zoom = 0
	scoped_accuracy = 0
	wielded_item_state = "boltaction-wielded"

/obj/item/weapon/gun/projectile/hornetsniper
	name = "Z2 Hornet"
	desc = "The Z2 Hornet, is an older cousin of the Z9 Pitbull Carbine. This however, is a DMR up-chambered in to 12mm-Sparrow. Accuracy is improved by a side mounted ballistic computer."
	icon = 'icons/obj/guns/hornet.dmi'
	icon_state = "hornet"
	item_state = "z2hornet"
	w_class = ITEM_SIZE_HUGE
	force = 10
	slot_flags = SLOT_BACK
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 2, TECH_ESOTERIC = 8)
	caliber = CALIBER_RIFLE_MILITARY_LARGE
	screen_shake = 0
	handle_casings = EJECT_CASINGS
	load_method = SINGLE_CASING
	max_shells = 5
	ammo_type = /obj/item/ammo_casing/rifle/military/large
	one_hand_penalty = 6
	accuracy = 0
	bulk = 8
	scoped_accuracy = 6
	scope_zoom = 1
	wielded_item_state = "z2hornet-wielded"
	load_sound = 'sound/weapons/guns/interaction/shotgun_instert.ogg'
	fire_delay = 20

/obj/item/weapon/gun/projectile/heavysniper/imprifle
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_guns.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_guns.dmi',
		)
	name = "improvised rifle"
	icon = 'icons/obj/guns/imprifle.dmi'
	desc = "A shoddy 7.62 improvised rifle."
	icon_state = "imprifle"
	item_state = "imprifle" 
	wielded_item_state = "imprifle-wielded"
	w_class = 5
	one_hand_penalty = 4
	force = 10
	slot_flags = SLOT_BACK
	origin_tech = list(TECH_COMBAT=2, TECH_MATERIAL=1, TECH_ESOTERIC=1)
	caliber = "7mmR"
	fire_sound = 'sound/weapons/gunshot/new_gunshot_AR.ogg'
	handle_casings = HOLD_CASINGS
	load_method = SINGLE_CASING
	max_shells = 3
	ammo_type = /obj/item/ammo_casing/rifle
	accuracy = -1

/obj/item/weapon/gun/projectile/heavysniper/imprifle/impriflesawn
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_guns.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_guns.dmi',
		)
	name = "improvised short rifle"
	icon = 'icons/obj/guns/imprifle.dmi'
	desc = "A crudely cut down 7.62 improvised rifle."
	icon_state = "imprifle_sawn"
	item_state = "imprifle_sawn" 
	w_class = 4
	one_hand_penalty = 1 //Its sawedoff so I guess
	force = 4
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	origin_tech = list(TECH_COMBAT=2, TECH_MATERIAL=1, TECH_ESOTERIC=1)
	caliber = "7mmR"
	fire_sound = 'sound/weapons/gunshot/new_gunshot_AR.ogg'
	handle_casings = HOLD_CASINGS
	load_method = SINGLE_CASING
	max_shells = 3
	ammo_type =	/obj/item/ammo_casing/rifle
	accuracy = -2

/obj/item/weapon/imprifleframe/imprifleframesawn
	name = "unfinished improvised short rifle"
	desc = "An almost-complete improvised short rifle."
	icon = 'icons/obj/guns/imprifle.dmi'
	icon_state = "imprifle"
	item_state = "imprifle"

/obj/item/weapon/imprifleframe
	name = "improvised rifle stock"
	desc = "A half-finished improvised rifle."
	icon = 'icons/obj/guns/imprifle.dmi'
	icon_state = "imprifleframe0"
	item_state = "imprifle"
	var/buildstate = 0

/obj/item/weapon/imprifleframe/on_update_icon()
	. = ..()
	icon_state = "imprifleframe[buildstate]"

/obj/item/weapon/imprifleframe/examine(mob/user)
	. = ..(user)
	switch(buildstate)
		if(1) to_chat(user, "It has an unfinished pipe barrel in place on the wooden furniture.")
		if(2) to_chat(user, "It has an unfinished pipe barrel wired in place.")
		if(3) to_chat(user, "It has an unfinished reinforced pipe barrel wired in place.")
		if(4) to_chat(user, "It has a reinforced pipe barrel secured on the wooden furniture.")
		if(5) to_chat(user, "It has an unsecured reciever in place.")
		if(6) to_chat(user, "It has a secured reciever in place.")
		if(7) to_chat(user, "It has an unfinished pipe bolt in place.")
		if(8) to_chat(user, "It has a finished unsecured pipe bolt in place.")

/obj/item/weapon/imprifleframe/attackby(obj/item/W as obj, mob/user as mob)
	if(istype(W,/obj/item/pipe))
		if(buildstate == 0)
			user.drop_from_inventory(W)
			qdel(W)
			to_chat(user, "<span class='notice'>You place the piping on the stock.</span>")
			buildstate++
			update_icon()
			return
		if(buildstate == 7)
			user.drop_from_inventory(W)
			qdel(W)
			to_chat(user, "<span class='notice'>You install a bolt on the frame.</span>")
			buildstate++
			playsound(src.loc, 'sound/items/syringeproj.ogg', 100, 1)
			update_icon()
			return
	else if(istype(W,/obj/item/stack/cable_coil))
		var/obj/item/stack/cable_coil/C = W
		if(buildstate == 1)
			if(C.use(10))
				to_chat(user, "<span class='notice'>You secure the barrel to the wooden furniture with wire.</span>")
				buildstate++
				update_icon()
			else
				to_chat(user, "<span class='notice'>You need at least ten segments of cable coil to complete this task.</span>")
			return
	else if(istype(W,/obj/item/weapon/screwdriver))
		if(buildstate == 2)
			to_chat(user, "<span class='notice'>You further secure the barrel to the wooden furniture.</span>")
			buildstate++
			playsound(src.loc, 'sound/items/Screwdriver2.ogg', 100, 1)
			return
		if(buildstate == 6)
			to_chat(user, "<span class='notice'>You secure the metal reciever.</span>")
			buildstate++
			playsound(src.loc, 'sound/items/Screwdriver.ogg', 100, 1)
			return
	else if(istype(W,/obj/item/stack/material) && W.get_material_name() == "plasteel")
		if(buildstate == 3)
			var/obj/item/stack/material/P = W
			if(P.use(5))
				to_chat(user, "<span class='notice'>You reinforce the barrel with plasteel.</span>")
				buildstate++
				playsound(src.loc, 'sound/items/Deconstruct.ogg', 100, 1)
			else
				to_chat(user, "<span class='notice'>You need at least five plasteel sheets to complete this task.</span>")
			return
	else if(istype(W,/obj/item/weapon/wrench))
		if(buildstate == 4)
			to_chat(user, "<span class='notice'>You secure the reinforced barrel.</span>")
			buildstate++
			playsound(src.loc, 'sound/items/Ratchet.ogg', 100, 1)
			return
	else if(istype(W,/obj/item/stack/material) && W.get_material_name() == DEFAULT_WALL_MATERIAL)
		if(buildstate == 5)
			var/obj/item/stack/material/P = W
			if(P.use(10))
				to_chat(user, "<span class='notice'>You assemble and install a metal reciever onto the frame</span>")
				buildstate++
				update_icon()
				playsound(src.loc, 'sound/items/Crowbar.ogg', 100, 1)
			else
				to_chat(user, "<span class='notice'>You need at least ten steel sheets to complete this task.</span>")
			return
	else if(istype(W,/obj/item/weapon/weldingtool))
		if(buildstate == 8)
			var/obj/item/weapon/weldingtool/T = W
			if(T.remove_fuel(5,user))
				if(!src || !T.isOn()) return
				playsound(src.loc, 'sound/items/Welder2.ogg', 100, 1)
			to_chat(user, "<span class='notice'>You secure the improvised rifle's various parts.</span>")
			var/obj/item/weapon/gun/projectile/heavysniper/imprifle/emptymag = new /obj/item/weapon/gun/projectile/heavysniper/imprifle(get_turf(src))
			emptymag.loaded = list()
			qdel(src)
		return
	else if(istype(W,/obj/item/weapon/circular_saw))
		if(buildstate == 8)
			to_chat(user, "<span class='notice'>You saw the barrel on the unfinished improvised rifle down.</span>")
			new /obj/item/weapon/imprifleframe/imprifleframesawn(get_turf(src))
			playsound(src.loc, 'sound/weapons/circsawhit.ogg', 100, 1)
			qdel(src)
		return
	else
/obj/item/weapon/imprifleframe/imprifleframesawn/attackby(obj/item/W as obj, mob/user as mob)
	if(istype(W,/obj/item/weapon/weldingtool))
		if(buildstate == 0)
			var/obj/item/weapon/weldingtool/T = W
			if(T.remove_fuel(5,user))
				if(!src || !T.isOn()) return
				playsound(src.loc, 'sound/items/Welder2.ogg', 100, 1)
			to_chat(user, "<span class='notice'>You secure the improvised rifle's various parts.</span>")
			var/obj/item/weapon/gun/projectile/heavysniper/imprifle/impriflesawn/emptymag = new /obj/item/weapon/gun/projectile/heavysniper/imprifle/impriflesawn(get_turf(src))
			emptymag.loaded = list()
			qdel(src)
		return
	..()	