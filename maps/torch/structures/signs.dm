/obj/structure/sign/dedicationplaque
	name = "\improper NTSS Dagon dedication plaque"
	icon_state = "lightplaque"

/obj/structure/sign/dedicationplaque/Initialize()
	. = ..()
	desc = "NTSS Dagon - Mako Class System Surveyor - NTF Registry 95519 - Shiva Fleet Yards, Mars - First Vessel To Bear The Name - Launched [game_year-5] - Sol Central Government - 'Never was anything great achieved without danger.'"

/obj/structure/sign/ecplaque
	name = "\improper Surveyor Corps Directives"
	desc = "A plaque with the defunct Surveyor Corps logo etched in it. The Surveyor Corps haven't been funded for years, not since all the money went to fighting one of SolGov's many wars."
	icon = 'maps/torch/icons/obj/solgov-decals.dmi'
	icon_state = "ecplaque"
	var/directives = {"<hr><center>
		1. <b>Exploring the unknown is your Primary Mission</b><br>

		You are to look for land and resources that can be used by Sol to advance her sphere of influence and prosper. Explore. Document. Nothing is too small to note.<br>

		2. <b>Every member of the Surveyor Corps is an explorer</b><br>

		Some are Explorers by rank or position, but everyone has to be one when duty calls. You should always expect being assigned to an expedition if needed. You have already volunteered when you signed up.<br>

		3. <b>Danger is a part of the mission - avoid, not run away</b> <br>

		Keep your crew alive and hull intact, but remember - you are not here to sightsee. Dangers are obstacles to be cleared, not the roadblocks. Weigh risks carefully and keep your Primary Mission in mind.
		</center><hr>"}

/obj/structure/sign/ecplaque/examine(mob/user)
	. = ..()
	to_chat(user, "The founding principles of the Surveyor Corps are written there: <A href='?src=\ref[src];show_info=1'>Surveyor Directives</A>")

/obj/structure/sign/ecplaque/CanUseTopic()
	return STATUS_INTERACTIVE

/obj/structure/sign/ecplaque/OnTopic(href, href_list)
	if(href_list["show_info"])
		to_chat(usr, directives)
		return TOPIC_HANDLED

/obj/structure/sign/ecplaque/attackby(var/obj/I, var/mob/user)
	if(istype(I, /obj/item/grab))
		var/obj/item/grab/G = I
		if(!ishuman(G.affecting))
			return
		G.affecting.apply_damage(5, BRUTE, BP_HEAD, used_weapon="Metal Plaque")
		visible_message("<span class='warning'>[G.assailant] smashes [G.assailant] into \the [src] face-first!</span>")
		playsound(get_turf(src), 'sound/weapons/tablehit1.ogg', 50)
		to_chat(G.affecting, "<span class='danger'>[directives]</span>")
		admin_attack_log(user, G.affecting, "educated victim on \the [src].", "Was educated on \the [src].", "used \a [src] to educate")
		G.force_drop()
	else
		..()

/obj/effect/floor_decal/scglogo
	alpha = 230
	icon = 'maps/torch/icons/obj/solgov_floor.dmi'
	icon_state = "center"

/obj/structure/sign/solgov
	name = "\improper SolGov Seal"
	desc = "A sign which signifies who this vessel was designed in line with. Not as useful, these days. SCG presence hasn't been a threat to pirates for a long time, not since the majority of their fleet was wiped out in their war against the UGC.."
	icon = 'maps/torch/icons/obj/solgov-decals.dmi'
	icon_state = "solgovseal"

/obj/structure/sign/ntcrest
	name = "\improper NTEF Logo"
	desc = "A crest that signifies this vessel is property of NanoTrasen's Expeditionary Fleet."
	icon = 'maps/torch/icons/obj/solgov-decals.dmi'
	icon_state = "ntefcrest"

/obj/structure/sign/double/solgovflag
	name = "Sol Central Government Flag"
	desc = "The flag of the Sol Central Government. Defenders of democracy. Imperialists. Accepting of everyone. Strongly against synthetic rights. United. Crumbling from the inside. This flag means many things to many people."
	icon = 'maps/torch/icons/obj/solgov-decals.dmi'

/obj/structure/sign/double/solgovflag/left
	icon_state = "solgovflag-left"

/obj/structure/sign/double/solgovflag/right
	icon_state = "solgovflag-right"

/obj/structure/sign/floorplaque
	name = "\improper commemorative plaque"
	desc = "A list of dead explorers who gave their lives in search of the next great discovery. Hope you don't join them. Add the dog tags of the fallen to the plaque to memorialize them."
	icon_state = "floorplaque"
	var/list/fallen = list()

/obj/structure/sign/floorplaque/attackby(var/obj/D, var/mob/user)
	if(istype(D, /obj/item/clothing/accessory/badge/solgov/tags))
		var/obj/item/clothing/accessory/badge/solgov/tags/T = D
		if(T.owner_branch == "Expeditionary Corps")
			to_chat(user, "<span class='warning'>You add \the [T.owner_name]'s \the [T] to \the [src].</span>")
			fallen += "[T.owner_rank] [T.owner_name]"
			qdel(T)

/obj/structure/sign/floorplaque/examine(mob/user, distance)
	. = ..()
	if (distance <= 2 && fallen.len)
		to_chat(user, "<b>The fallen:</b> [jointext(fallen, "<br>")]")
