fx_version 'adamant'

game 'gta5'

description 'ESX Identity'
lua54 'yes'
version '1.8.5'

shared_script '@es_extended/imports.lua'

server_scripts {
	'@es_extended/locale.lua',
	'@oxmysql/lib/MySQL.lua',
	'locales/*.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/*.lua',
	'config.lua',
	'client/main.lua'
}

ui_page 'html/index.html'

files {
	'html/index.html',
	'html/js/script.js',
	'html/js/main.js',
	'html/js/app.js',
	'html/css/style.css',
	'html/css/style2.css',
	'html/img/airport.png',
	'html/img/barco.webp',
	'html/img/rectangulo.png',
	'html/img/rectangulo2.png',
	'html/img/logo.png',
	'html/img/login.png'
}

dependency 'es_extended'


escrow_ignore {

    'config.lua',
	'locales/*'

}
dependency '/assetpacks'