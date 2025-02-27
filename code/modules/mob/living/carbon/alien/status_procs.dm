//Here are the procs used to modify status effects of a mob.
//The effects include: stun, knockdown, unconscious, sleeping, resting, jitteriness, dizziness, ear damage,
// eye damage, eye_blind, TRAIT_BLIND trait, and TRAIT_NEARSIGHT trait.

/////////////////////////////////// STUN ////////////////////////////////////

/mob/living/carbon/alien/Stun(amount, ignore_canstun = FALSE)
	. = ..()
	if(!.)
		move_delay_add = min(move_delay_add + round(amount / 2), 10) //a maximum delay of 10

/mob/living/carbon/alien/SetStun(amount, ignore_canstun = FALSE)
	. = ..()
	if(!.)
		move_delay_add = min(move_delay_add + round(amount / 2), 10)

/mob/living/carbon/alien/AdjustStun(amount, ignore_canstun = FALSE)
	. = ..()
	if(!.)
		move_delay_add = clamp(move_delay_add + round(amount/2), 0, 10)
