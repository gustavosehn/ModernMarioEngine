function scr_language(argument0) {
	if (global.language) == 0
	{
		switch argument0
		{
			case 0: return "¡Pulsa cualquier tecla para empezar!"
		}
	}
	if (global.language) == 1
	{
		switch argument0
		{
			case 0: return "Press any key to start!"
		}
	}
	if (global.language) == 2
	{
		switch argument0
		{
			case 0: return "Pressione qualquer tecla para iniciar!"
		}
	}
}