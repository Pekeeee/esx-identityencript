Config                  = {}
Config.Locale = GetConvar('esx:locale', 'es')

-------------------------------------------- CODIGO DE LICENCIA
Config.key = 7607


-- EXPERIMENTAL Character Registration Method
Config.UseDeferrals     = false

-- These values are for the date format in the registration menu
-- Choices: DD/MM/YYYY | MM/DD/YYYY | YYYY/MM/DD
Config.DateFormat       = 'DD/MM/YYYY'

-- These values are for the second input validation in server/main.lua
Config.MaxNameLength    = 20 -- Max Name Length.
Config.MinHeight        = 120 -- 120 cm lowest height
Config.MaxHeight        = 220 -- 220 cm max height.
Config.LowestYear       = 1900 -- 112 years old is the oldest you can be.
Config.HighestYear      = 2003 -- 18 years old is the youngest you can be.
Config.FullCharDelete   = true -- Delete all reference to character.
Config.EnableDebugging  = ESX.GetConfig().EnableDebug -- prints for debugging :)
Config.Cam = vector4(378.8561706543, 790.12463378906, 361.04190063477, 119.02722167969) -- Camara

-------------------------------------------- TAXI

Config.taxi = 'taxi'
Config.taxista = 'Muchas gracias joven, que tenga suerte'
Config.tipoalerttaxista = 'info'

-------------------------------------------- AVION

Config.avion = 'Jet'

-------------------------------------------- BOTE

Config.bote = 'marquis'

-------------------------------------------- ALERTAS AVION

Config.alerta1 = 'Despierta papi estamos llegando'

Config.tipoalert1 = 'success'

Config.alerta2 = 'Que buena city madafaka'

Config.tipoalert2 = 'success'

-------------------------------------------- ALERTAS BOTE

Config.alerta1bote = 'Wow que locura mano'

Config.tipoalert1bote = 'success'

Config.alerta2bote = 'Se ve muy buena la city'

Config.tipoalert2bote = 'success'

-------------------------------------------- AUDIO AVION

Config.audio = 'vuelo'

Config.audioalarma = 'cinturonavion'

-------------------------------------------- AUDIO BOTE

Config.audiobote = 'botevoz'

Config.audioalarmabote = 'bote'

-------------------------------------------- SPAWN AVION

Config.spawn = {
    {x = -75.256278991699, y = -1100.9984130859, z = 26.120901107788, heading = 335.88592529297}
}

-------------------------------------------- EVENTO DE MENU DE ROPA

Config.evento = 'esx_skin:openSaveableMenu'