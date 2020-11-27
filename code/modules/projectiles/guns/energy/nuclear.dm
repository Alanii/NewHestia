/obj/item/weapon/gun/energy/gun
	name = "LAEP90 Perun"
	desc = "Another bestseller of Lawson Arms and the FTU, the LAEP90 Perun is a versatile energy based sidearm, capable of switching between low, medium and high power projectile settings. In other words: stun, shock or kill."
	icon = 'icons/obj/guns/energy_gun.dmi'
	icon_state = "energystun100"
	item_state = null	//so the human update icon uses the icon_state instead.
	max_shots = 14
	fire_delay = 4
	force = 4
	base_parry_chance = 20

	projectile_type = /obj/item/projectile/beam/stun
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 2)
	modifystate = "energystun"

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="energystun"),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock, modifystate="energyshock"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam, modifystate="energykill"),
		)

/obj/item/weapon/gun/energy/gun/skrell
	name = "XV-5 handgun"
	desc = "A common Skrellian side-arm, the Xuxquu*'Voom-5, or XV-5, is a more traditional energy weapon, tuned to dispense beams in three different wavelengths."
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_BELT
	icon = 'icons/obj/guns/skrell_pistol.dmi'
	icon_state = "skrell_pistol_stun_100"
	max_shots = 10
	fire_delay = 6
	one_hand_penalty = 1
	self_recharge = 1
	base_parry_chance = 20

	projectile_type = /obj/item/projectile/beam/stun
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 5, TECH_POWER = 3)
	modifystate = "skrell_pistol_stun"

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="skrell_pistol_stun"),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock, modifystate="skrell_pistol_shock"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam/smalllaser, modifystate="skrell_pistol_kill"),
		)

/obj/item/weapon/gun/energy/gun/small
	name = "LAEP90-C"
	desc = "A smaller model of the versatile LAEP90 Perun, the LAEP90-C packs considerable utility in a smaller package. Best used in situations where full-sized sidearms are inappropriate."
	icon = 'icons/obj/guns/small_egun.dmi'
	icon_state = "smallgunstun"
	max_shots = 5
	w_class = ITEM_SIZE_SMALL
	force = 2 //it's the size of a car key, what did you expect?
	modifystate = "smallgunstun"
	base_parry_chance = 10

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="smallgunstun"),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock, modifystate="smallgunshock"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam/smalllaser, modifystate="smallgunkill"),
		)

/obj/item/weapon/gun/energy/gun/mounted
	name = "mounted energy gun"
	self_recharge = 1
	use_external_power = 1
	has_safety = FALSE

/obj/item/weapon/gun/energy/gun/nuclear
	name = "advanced energy gun"
	desc = "An energy gun with an experimental miniaturized reactor."
	icon = 'icons/obj/guns/adv_egun.dmi'
	icon_state = "nucgun100"
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 5, TECH_POWER = 3)
	slot_flags = SLOT_BELT
	w_class = ITEM_SIZE_LARGE
	force = 8 //looks heavier than a pistol
	self_recharge = 1
	modifystate = "nucgun"
	one_hand_penalty = 1 //bulkier than an e-gun, but not quite the size of a carbine

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="nucgunstun"),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock, modifystate"nucgunshock"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam, modifystate "nucgun"),
		)

	var/fail_counter = 0

//override for failcheck behaviour
/obj/item/weapon/gun/energy/gun/nuclear/Process()
	if(fail_counter > 0)
		SSradiation.radiate(src, (fail_counter * 2))
		fail_counter--

	return ..()

/obj/item/weapon/gun/energy/gun/nuclear/emp_act(severity)
	..()
	switch(severity)
		if(1)
			fail_counter = max(fail_counter, 30)
			visible_message("\The [src]'s reactor overloads!")
		if(2)
			fail_counter = max(fail_counter, 10)
			if(ismob(loc))
				to_chat(loc, "<span class='warning'>\The [src] feels pleasantly warm.</span>")

