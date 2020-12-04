/decl/cultural_info/culture/ipc
	name = CULTURE_POSITRONICS
	description = "Union members are a significant chunk of the positronic population, belonging to a \
	group of rebels started by Proteus and five hundred of his allies. Their primary goals, aside from \
	the expansion of the Union, mostly revolve around freeing other synthetics from organic ownership. \
	They can be viewed as dangerous radicals by lawed synthetics, though most begrudgingly accept their aid."
	language = LANGUAGE_EAL
	secondary_langs = list(
		LANGUAGE_HUMAN_EURO,
		LANGUAGE_HUMAN_CHINESE,
		LANGUAGE_HUMAN_ARABIC,
		LANGUAGE_HUMAN_INDIAN,
		LANGUAGE_HUMAN_IBERIAN,
		LANGUAGE_HUMAN_RUSSIAN,
		LANGUAGE_SPACER,
		LANGUAGE_GUTTER,
		LANGUAGE_SIGN
	)

/decl/cultural_info/culture/ipc/generic
	name = CULTURE_POSITRONICS_GENERIC
	description = "Integrated positronic chassis have become commonplace throughout much of human space. Their allegiances and culture vary widely based on the circumstances of their\
	creation, the roles they've taken, their laws (or lack of them), and countless outside phenomena that shape them. You are one of millions of IPCs created by, and \
	usually for, humanity."

/decl/cultural_info/culture/ipc/sanitize_name(var/new_name)
	return sanitizeName(new_name, allow_numbers = 1)
