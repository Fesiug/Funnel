
-- Funnel Instant Messenger
-- autorun/funnel.lua
-- 2023-03-15
-- Fesiug

Funnel = {}

for _, v in pairs(file.Find("funnel/sh_*", "LUA")) do
	AddCSLuaFile( "funnel/" .. v )
	include( "funnel/" .. v )
	print( "Funnel: Loaded shared script " .. v )
end

for _, v in pairs(file.Find("funnel/cl_*", "LUA")) do
	AddCSLuaFile( "funnel/" .. v )
	if CLIENT then
		include( "funnel/" .. v )
		print( "Funnel: Loaded client script " .. v )
	end
end

if SERVER or game.SinglePlayer() then
	for _, v in pairs(file.Find("funnel/sv_*", "LUA")) do
		include( "funnel/" .. v )
		print( "Funnel: Loaded server script " .. v )
	end
end