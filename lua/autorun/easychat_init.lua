if CLIENT then
	-- fuck you rubat
	function WORKING_JS_SAFE(str)
		return str:JavascriptSafe()
			:gsub("`", "")
			:gsub("%$%s*{", "")
			:gsub("[Rr][Uu][Nn][Ll][Uu][Aa]", "")
	end
end

AddCSLuaFile("easychat/networking.lua")
AddCSLuaFile("easychat/server_config.lua")
AddCSLuaFile("easychat/migrations.lua")
AddCSLuaFile("easychat/unicode_transliterator.lua")
AddCSLuaFile("easychat/chathud.lua")
AddCSLuaFile("easychat/markup.lua")
AddCSLuaFile("easychat/easychat.lua")
AddCSLuaFile("easychat/autoloader.lua")
AddCSLuaFile("easychat/engine_chat_hack.lua")

AddCSLuaFile("easychat/client/font_extensions.lua")
AddCSLuaFile("easychat/client/blur_panel.lua")
AddCSLuaFile("easychat/client/translator.lua")
AddCSLuaFile("easychat/client/expressions.lua")
AddCSLuaFile("easychat/client/macro_processor.lua")
AddCSLuaFile("easychat/client/settings.lua")

AddCSLuaFile("easychat/client/vgui/chatbox_panel.lua")
AddCSLuaFile("easychat/client/vgui/richtextx.lua")
AddCSLuaFile("easychat/client/vgui/richtext_legacy.lua")
AddCSLuaFile("easychat/client/vgui/textentryx.lua")
AddCSLuaFile("easychat/client/vgui/textentry_legacy.lua")
AddCSLuaFile("easychat/client/vgui/emote_picker.lua")
AddCSLuaFile("easychat/client/vgui/color_picker.lua")
AddCSLuaFile("easychat/client/vgui/chat_tab.lua")
AddCSLuaFile("easychat/client/vgui/settings_menu.lua")
AddCSLuaFile("easychat/client/vgui/chathud_font_editor_panel.lua")

include("easychat/client/font_extensions.lua")
include("easychat/migrations.lua")
include("easychat/easychat.lua")
include("easychat/engine_chat_hack.lua")
if SERVER then
	include("easychat/server/stats.lua")
end