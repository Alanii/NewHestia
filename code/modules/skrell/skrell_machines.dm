// This is an absolutely stupid machine. Basically the same as the debug one with some alterations.
// It is a placeholder for a proper reactor setup (probably a RUST descendant)
/obj/machinery/power/skrell_reactor
	name = "skrell fusion core"
	desc = "A tall, gleaming assemblage of advanced alien machinery. It hums and crackles with restrained power."
	icon = 'icons/obj/machines/power/fusion_core.dmi'
	icon_state = "core1"
	color = COLOR_CYAN
	var/on = TRUE
	var/output_power = 45 MEGAWATTS //it's the future, and this is a god darn fusion reactor. Why would it produce measly kilowatts?
	var/image/field_image

/obj/machinery/power/skrell_reactor/attack_hand(mob/user)
	. = ..()

	user.visible_message(SPAN_NOTICE("\The [user] switches \the [src] [on ? "off" : "on"]."))
	on = !on
	update_icon()

/obj/machinery/power/skrell_reactor/on_update_icon()
	. = ..()

	if(!field_image)
		field_image = image(icon = 'icons/obj/machines/power/fusion.dmi', icon_state = "emfield_s1")
		field_image.color = COLOR_CYAN
		field_image.alpha = 50
		field_image.layer = SINGULARITY_LAYER
		field_image.appearance_flags |= RESET_COLOR

		var/matrix/M = matrix()
		M.Scale(3)
		field_image.transform = M

	if(on)
		overlays |= field_image
		set_light(0.8, 1, 6, l_color = COLOR_CYAN)
		icon_state = "core1"
	else
		overlays -= field_image
		set_light(0)
		icon_state = "core0"

/obj/machinery/power/skrell_reactor/Initialize()
	. = ..()
	update_icon()

/obj/machinery/power/skrell_reactor/Process()
	if(on)
		add_avail(output_power)
