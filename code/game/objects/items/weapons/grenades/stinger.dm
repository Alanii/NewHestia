/obj/item/projectile/bullet/pellet/rubber
	damage = 2.5
	agony = 35
	embed = 0
	armor_penetration = 3
	range_step = 4 //controls damage falloff with distance. projectiles lose a "pellet" each time they travel this distance. Can be a non-integer.
	base_spread = 0 //causes it to be treated as a shrapnel explosion instead of cone
	spread_step = 15

	silenced = 1
	fire_sound = null
	no_attack_log = 1
	muzzle_type = null


/obj/item/projectile/bullet/pellet/rubber/based
	agony = 65

/obj/item/weapon/grenade/stinger
	name = "Stinger grenade"
	desc = "A less-than lethal grenade, designed to explode in a incapcitating shower of rubber pellets."
	icon_state = "sting"

	var/list/stinger_types = list(/obj/item/projectile/bullet/pellet/rubber = 1)
	var/num_stingers = 72//total number of fragments produced by the grenade
	var/explosion_size = 1   //size of the center explosion

	//The radius of the circle used to launch projectiles. Lower values mean less projectiles are used but if set too low gaps may appear in the spread pattern
	var/spread_range = 7 //leave as is, for some reason setting this higher makes the spread pattern have gaps close to the epicenter

/obj/item/weapon/grenade/stinger/detonate()
	..()

	var/turf/O = get_turf(src)
	if(!O) return

	src.fragmentatesting(O, num_stingers, spread_range, stinger_types)

	qdel(src)


/obj/proc/fragmentatesting(var/turf/T=get_turf(src), var/stinger_number = 30, var/spreading_range = 5, var/list/stingertypes=list(/obj/item/projectile/bullet/pellet/rubber/))
	set waitfor = 0
	var/list/target_turfs = getcircle(T, spreading_range)
	var/stingers_per_projectile = round(stinger_number/target_turfs.len)

	for(var/turf/O in target_turfs)
		sleep(0)
		var/stinger_type = pickweight(stingertypes)
		var/obj/item/projectile/bullet/pellet/rubber/P = new stinger_type(T)
		P.pellets = stingers_per_projectile
		P.shot_from = src.name

		P.launch(O)

		//Make sure to hit any mobs in the source turf
		for(var/mob/living/M in T)
			//lying on a frag grenade while the grenade is on the ground causes you to absorb most of the shrapnel.
			//you will most likely be dead, but others nearby will be spared the fragments that hit you instead.
			if(M.lying && isturf(src.loc))
				P.attack_mob(M, 0, 5)
			else if(!M.lying && src.loc != get_turf(src)) //if it's not on the turf, it must be in the mob!
				P.attack_mob(M, 0, 25) //you're holding a grenade, dude!
			else
				P.attack_mob(M, 0, 100) //otherwise, allow a decent amount of fragments to pass
