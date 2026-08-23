function scr_language(argument0) {
	if (global.language) == 0
	{
		switch argument0
		{
			case 0: return "¡Pulsa cualquier tecla para empezar!"
			case 1: return "Creado por GustavoSehn"
		}
	}
	if (global.language) == 1
	{
		switch argument0
		{
			case 0: return "Press any key to start!"
			case 1: return "Made by GustavoSehn"
		}
	}
	if (global.language) == 2
	{
		switch argument0
		{
			case 0: return "Pressione qualquer tecla para iniciar!"
			case 1: return "Criado por GustavoSehn"
		}
	}
}