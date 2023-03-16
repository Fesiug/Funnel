
-- Funnel Instant Messenger
-- funnel/cl_0.lua
-- 2023-03-15
-- Fesiug

local channel = "(99) #general - Trouble in Terrorist Town"
local name = "Funnel Messenger"

local internal_roles = {
	["Owner"] = {
		color = Color( 205, 60, 60 ),
		count = 1,
		sortorder = 1,
	},
	["Administrator"] = {
		color = Color( 205, 120, 0 ),
		count = 2,
		sortorder = 2,
	},
	["Moderator"] = {
		color = Color( 60, 125, 60 ),
		count = 3,
		sortorder = 3,
	},
	["Booster"] = {
		color = Color( 200, 100, 255 ),
		count = 3,
		sortorder = 4,
	},
	["Veteran"] = {
		color = Color( 20, 115, 100 ),
		count = 4,
		sortorder = 5,
	},
	["Online"] = {
		color = Color( 0, 0, 0 ),
		sortorder = 999,
	},
	["Offline"] = {
		color = Color( 0, 0, 0 ),
		sortorder = 1000,
	},
}

local test_usernames = {
	"JoltfreekRath",
	"Pilcrow",
	"Thlipsis",
	"Nomenclature",
	"Neophron",
	"Bailiwick",
	"Krummhorn",
	"Trencherman",
	"Naricorn",
	"KurtzigZygote",
	"T3xxDarby",
	"Samo66Oblong",
	"Stagiary",
	"KatjaxdCorymb",
	"Multivious",
	"MicsiPoke",
	"Escheatment",
	"Fribble",
	"Paxillose",
	"Fopdoodle",
	"BlockiaSnood",
	"DubietPuss",
	"Wardcorn",
	"Superfluous",
	"Noosphere",
	"Almoner",
	"Estreat",
	"Epiphany",
	"Beadsman",
	"Behelmeted",
	"HurrahHenry",
	"KhivaJitney",
	"Catenate",
	"GigborTwink",
	"Limousine",
	"Sardoodledom",
	"Brontophobia",
	"Angiosperm",
	"Acolyte",
	"Chatterbox",
	"Risible",
	"Scootch",
	"Springhare",
	"Blamps",
	"Caprine",
	"Serendipity",
	"Diaskeuast",
	"Globetrotter",
	"Poisegrew",
	"Schtick",
	"Scruple",
	"Spew",
	"Huggery",
	"Jactation",
	"Paristhimion",
	"Quibble",
	"Decretal",
	"Rapscallion",
	"Arielke21009",
	"Futz",
	"Forecabin",
	"Bodacious",
	"Corposant",
	"Tactical",
	"Calliope",
	"Bupkis",
	"Alowgentk33",
	"Ransack",
	"Quiveryism",
	"Mustachioed",
	"Rationalism",
	"Juggernaut",
	"Nocuous",
	"Remora",
	"Cellarer",
	"Salve",
	"Nephralgia",
	"Pinking",
	"Zitiwjw42",
	"Botryoidal",
}

local test_games = {
	"Halo: Combat Evolved",
	"Grand Theft Auto: San Andreas",
	"BioShock",
	"Deus Ex",
	"Wii Sports",
	"Grand Theft Auto III",
	"Call of Duty 4: Modern Warfare",
	"Super Mario Galaxy",
	"Grand Theft Auto IV",
	"Shadow of the Colossus",
	"Mario Kart Wii",
	"Grand Theft Auto: Vice City",
	"Star Wars: Knights of the Old Republic",
	"Left 4 Dead",
	"Metroid Prime",
	"Halo 2",
	"Resident Evil 4",
	"Metal Gear Solid 2: Sons of Liberty",
	"Half-Life 2",
	"Fallout 3",
	"The Legend of Zelda: Majora's Mask",
	"Diablo II",
	"Counter-Strike",
	"Perfect Dark",
	"Super Smash Bros. Brawl",
	"Final Fantasy X",
	"Beyond Good & Evil",
	"World of Warcraft",
	"Silent Hill 2",
	"Prince of Persia: The Sands of Time",
	"Super Mario Sunshine",
	"Devil May Cry 3: Dante's Awakening",
	"Portal",
	"Rock Band",
	"The Legend of Zelda: The Wind Waker",
	"Psychonauts",
	"Uncharted: Drake's Fortune",
	"Tony Hawk's Pro Skater 3",
	"Metal Gear Solid 4: Guns of the Patriots",
	"Tony Hawk's Pro Skater 2",
	"The Legend of Zelda: Twilight Princess",
	"Halo 3",
	"Baldur's Gate II: Shadows of Amn",
	"Silent Hill 3",
	"The Elder Scrolls III: Morrowind",
	"Ōkami",
	"Katamari Damacy",
	"Batman: Arkham Asylum",
	"Dead Space",
	"The Sims",
	"Uncharted 2: Among Thieves",
}

local test_statuses = {
	"Everyone has the right to do stupid things, but you’re abusing that privilege.",
	"Common sense is like deodorant. The people who need it most never use it.",
	"There are three kinds of people in this world: those who can count and those who can’t.",
	"Whoever said nothing is impossible never tried slamming a revolving door.",
	"I can’t brain today. I have the dumb.",
	"I would like to thank my arms for always being by my side, my legs for always supporting me, and my fingers because I can always count on them.",
	"If you can’t see the bright side of life, polish the dull side.",
	"In politics stupidity is not a handicap.",
	"If pro is the opposite of con, what would then be the opposite of progress?",
	"I am so clever that sometimes I don’t understand a single word of what I am saying.",
	"A wise man once told me to always listen carefully because…um…I can’t remember.",
	"My granddad started walking a few miles a day when he was 60. Now he’s 97 years old and we have no clue where he is.",
	"I walk around as though everything is fine, but deep down, on my right calf, my sock is sliding down.",
	"It is not my fault that I never learned to accept responsibility!",
	"Have you ever wondered why you can’t taste your tongue?",
}

local test_icon_server = "icon16/world.png"
local test_icon_call = "icon16/phone.png"
local test_icon_groupdm = "icon16/comments.png"

local test_servers = {
	{
		name = "Trouble in Terrorist Town :: Channel 1",
		icon = test_icon_call,
	},
	{
		name = "ZOMBIE SURVIVAL FANS",
		icon = test_icon_server,
	},
	{
		name = "Trouble in Terrorist Town",
		icon = test_icon_server,
	},
	{
		name = "Prop hunters",
		icon = test_icon_server,
	},
	{
		name = "Androfeda 9000 TDM & TTT",
		icon = test_icon_server,
	},
	{
		name = "Sunday halo 3",
		icon = test_icon_groupdm,
	},
	{
		name = "Monday halo 3",
		icon = test_icon_groupdm,
	},
	{
		name = "Tuesday halo 3",
		icon = test_icon_groupdm,
	},
	{
		name = "Wednesday halo 3",
		icon = test_icon_groupdm,
	},
	{
		name = "Thursday halo 3",
		icon = test_icon_groupdm,
	},
	{
		name = "Friday halo 3",
		icon = test_icon_groupdm,
	},
	{
		name = "Saturday halo 3",
		icon = test_icon_groupdm,
	},
}

local test_icon = {
	"blah/20000.png",
	"blah/20002.png",
	"blah/20003.png",
	"blah/20004.png",
	"blah/20005.png",
	"blah/20006.png",
	"blah/20007.png",
	"blah/20008.png",
	"blah/20009.png",
	"blah/2000a.png",
	"blah/2000b.png",
	"blah/2000c.png",
	"blah/21000.png",
	"blah/21001.png",
	"blah/21002.png",
	"blah/21003.png",
	"blah/21004.png",
	"blah/21005.png",
	"blah/21006.png",
	"blah/21007.png",
	"blah/21008.png",
	"blah/21009.png",
	"blah/21010.png",
	"blah/21011.png",
	"blah/21012.png",
	"blah/21013.png",
	"blah/21014.png",
	"blah/21015.png",
	"blah/21016.png",
	"blah/21017.png",
	"blah/21018.png",
	"blah/21019.png",
	"blah/21020.png",
	"blah/21021.png",
	"blah/21022.png",
	"blah/21023.png",
	"blah/21024.png",
	"blah/21025.png",
	"blah/21026.png",
	"blah/21027.png",
	"blah/21028.png",
	"blah/21029.png",
	"blah/21030.png",
	"blah/21031.png",
	"blah/21032.png",
	"blah/21033.png",
	"blah/21034.png",
	"blah/21035.png",
	"blah/21036.png",
	"blah/21037.png",
	"blah/21038.png",
	"blah/21039.png",
	"blah/21040.png",
	"blah/21041.png",
	"blah/21043.png",
	"blah/21044.png",
	"blah/21045.png",
	"blah/21046.png",
	"blah/21047.png",
	"blah/21048.png",
	"blah/21049.png",
	"blah/21050.png",
	"blah/21051.png",
	"blah/21052.png",
	"blah/21053.png",
	"blah/21054.png",
	"blah/21055.png",
	"blah/21056.png",
	"blah/21057.png",
	"blah/21058.png",
	"blah/21059.png",
	"blah/21060.png",
	"blah/21061.png",
	"blah/21062.png",
	"blah/21064.png",
	"blah/21065.png",
	"blah/21066.png",
	"blah/21067.png",
	"blah/21068.png",
	"blah/21069.png",
}

surface.CreateFont("Funnel_Default", {
	font = "Tahoma",
	size = 13,
	antialias = false,
})

surface.CreateFont("Funnel_Default_Bold", {
	font = "Tahoma",
	size = 13,
	weight = 1000,
	antialias = false,
})

surface.CreateFont("Funnel_Default_Italic", {
	font = "Tahoma",
	size = 13,
	antialias = false,
	italic = true,
})

surface.CreateFont("Funnel_Large", {
	font = "Roboto",
	size = 24,
	weight = 1000,
	antialias = false,
})

local test_paint = function( self, w, h )
	--draw.RoundedBox( 8, 0, 0, w, h, Color( 127, 127, 127, 127 ) )
end

local test_m1 = function( self )
	local menu = self:Add( "DMenu", self )

	local panel = vgui.Create( "DCategoryList", self )
	panel:Dock( TOP )
	panel:SetSize( 250, 300 )
	panel:SetPaintBackground( false )

	local cat1 = panel:Add( "Avatar" )
	cat1:DockMargin( 5, 5, 5, 5 )
	self.Davatar = vgui.Create( "DImage", cat1 )
	self.Davatar:SetSize( 64, 64 )
	self.Davatar:SetPos( 4, 18 + 6 )
	self.Davatar:SetImage( self.davatar:GetImage() )
	self.Dname = vgui.Create( "DLabel", cat1 )
	self.Dname:SetText( self.DisplayName )
	self.Dname:SetDark( true )
	self.Dname:SetPos( 64 + 2 + 8, 18 + 4 )
	self.Dname:SetWide( 500 )
	self.Dname:SetFont( "Funnel_Large" )
	surface.SetFont( "Funnel_Large" )
	local bump = surface.GetTextSize( self.DisplayName )
	self.Did = vgui.Create( "DLabel", cat1 )
	self.Did:SetText( "##" .. math.random( 0, 9 ) .. math.random( 0, 9 ) .. math.random( 0, 9 ) .. math.random( 0, 9 ) )
	self.Did:SetPos( 64 + 2 + 8, 18 + 20 )
	self.Did:SetDark( true )
	local cat2 = panel:Add( "Bio" )
	cat2:DockMargin( 5, 5, 5, 5 )
	local cat3 = panel:Add( "Activity" )
	cat3:DockMargin( 5, 5, 5, 5 )
	local cat4 = panel:Add( "Roles" )
	cat4:DockMargin( 5, 5, 5, 5 )

	menu:AddPanel( panel )
	menu:Open()
end

local test_m2 = function( self )
	local menu = self:Add( "DMenu", self )
	local oc, op
	op = menu:AddOption( "Open Profile" )
	op:SetIcon( "icon16/user_gray.png" )
	op = menu:AddOption( "Mention" )
	op:SetIcon( "icon16/flag_blue.png" )
	op = menu:AddOption( "Message" )
	op:SetIcon( "icon16/comment.png" )
	op = menu:AddOption( "Call" )
	op:SetIcon( "icon16/phone.png" )
	menu:AddSpacer()
	op = menu:AddOption( "Mute" )
	op:SetChecked( true )
	op = menu:AddOption( "Disable Video" )
	op:SetChecked( true )
	op = menu:AddOption( "Change Nickname" )
	op:SetIcon( "icon16/user_edit.png" )
	oc, op = menu:AddSubMenu( "Apps" )
	op:SetIcon( "icon16/computer.png" )
	oc, op = menu:AddSubMenu( "Invite" )
	op:SetImage( "icon16/world_go.png" )
	local lasticon
	for _, data in ipairs( test_servers ) do
		if !lasticon then lasticon = data.icon end
		if lasticon != data.icon then
			oc:AddSpacer()
		end
		oc:AddOption( data.name ):SetIcon( data.icon )
		lasticon = data.icon
	end
	op = menu:AddOption( "Add Friend" )
	op:SetImage( "icon16/user_add.png" )
	op = menu:AddOption( "Block" )
	op:SetImage( "icon16/delete.png" )
	menu:AddSpacer()
	op = menu:AddOption( "Timeout " .. self.DisplayName )
	op:SetImage( "icon16/clock_red.png" )
	op = menu:AddOption( "Kick " .. self.DisplayName )
	op:SetImage( "icon16/door_out.png" )
	op = menu:AddOption( "Ban " .. self.DisplayName )
	op:SetImage( "icon16/cross.png" )
	menu:AddSpacer()
	oc, op = menu:AddSubMenu( "Roles" )
	op:SetImage( "icon16/cog.png" )
	for _, data in ipairs( internal_roles ) do
		oc:AddOption( data.name )
	end
	menu:Open()
end

local test_user = function( paren, name )
	local button = vgui.Create( "DButton", paren )
	local self = button
	button.DisplayName = name
	button:SetText( "" )
	button:Dock( TOP )
	button:DockMargin( 0, 0, 0, 0 )
	button:SetTall( 36 )
	
	--button.Paint = test_paint
	button.DoClick = test_m1
	button.DoRightClick = test_m2

	local info_1 = "wtf "
	local info_2 = "wtf"
	local info_3 = "icon16/bullet_green.png"
	local info_4 = false
	local status = math.random( 0, 3 )
	local gaming = math.random( -1, 2 )
	if status == 0 then
		info_1 = "Offline"
		info_2 = ""
		info_3 = "icon16/bullet_black.png"
	elseif status == 1 then
		info_1 = "Idle"
		info_2 = ""
		info_3 = "icon16/bullet_yellow.png"
	elseif status == 2 then
		info_1 = "Busy"
		info_2 = ""
		info_3 = "icon16/bullet_red.png"
	elseif status == 3 then
		info_1 = "Online"
		info_2 = ""
		info_3 = "icon16/bullet_green.png"
	end

	if status > 0 then
		if gaming > 0 then
			info_1 = "playing "
			info_2 = table.Random( test_games )
		elseif gaming == -1 then
			info_1 = ""
			info_2 = table.Random( test_statuses )
			info_4 = "Funnel_Default_Italic"
		end
	end

	self.dname = vgui.Create( "DLabel", button )
	self.dname:SetWidth( 500 )
	self.dname:SetPos( 42, 2 )
	self.dname:SetText( button.DisplayName )
	self.dname:SetDark( true )
	self.dname:SetColor( self:GetParent().rolecolor )
	self.dname:SetFont( "Funnel_Default" )
	self.davatar = vgui.Create( "DImage", button )
	self.davatar:SetImage( table.Random( test_icon ) )
	self.davatar:SetSize( 32, 32 )
	self.davatar:SetPos( 4, 2 )
	self.dicon = vgui.Create( "DImage", button )
	self.dicon:SetImage( info_3 )
	self.dicon:SetSize( 16, 16 )
	self.dicon:SetPos( 38, 16 )
	self.dact = vgui.Create( "DLabel", button )
	self.dact:SetWidth( 500 )
	self.dact:SetPos( 38 + 16, 2 + 12 )
	self.dact:SetText( info_1 )
	self.dact:SetDark( true )
	self.dact:SetFont( "Funnel_Default" )
	surface.SetFont( "Funnel_Default" )
	local bump = surface.GetTextSize( info_1 )
	self.dact_2 = vgui.Create( "DLabel", button )
	self.dact_2:SetWidth( 500 )
	self.dact_2:SetPos( 38 + 16 + bump, 2 + 12 )
	self.dact_2:SetText( info_2 )
	self.dact_2:SetDark( true )
	self.dact_2:SetFont( info_4 or "Funnel_Default_Bold" )
end

if FunnelInstance then FunnelInstance:Remove() end
local function funnel_start()
	if FunnelInstance and FunnelInstance:IsValid() then
		FunnelInstance:Show()
		return
	else
		FunnelInstance = vgui.Create("DFrame")
	end
	local fi = FunnelInstance

	fi:SetSize( 1024, 768 )
	fi:SetSizable( true )
	fi:Center()
	fi:MakePopup()

	fi.btnClose.DoClick = function( button ) fi:Close() end
	fi.btnMaxim.DoClick = function( button ) fi:SetSize( ScrW(), ScrH() ) fi:Center() end
	fi.btnMaxim:SetDisabled( false )
	fi.btnMinim.DoClick = function( button ) fi:Hide() end
	fi.btnMinim:SetDisabled( false )

	fi:SetTitle( channel .. " - " .. name )
	fi:SetIcon( "icon16/email.png" )

	local panel_chat = vgui.Create( "DPanel", fi )
	local panel_members = vgui.Create( "DPanel", fi )

	local div_members = vgui.Create( "DHorizontalDivider", fi )
	div_members:Dock( FILL )
	div_members:SetLeft( panel_chat )
	div_members:SetRight( panel_members )
	div_members:SetLeftWidth( 1024 - 256 )

	local panel_members_scroller = vgui.Create( "DScrollPanel", panel_members )
	panel_members_scroller:Dock( FILL )

	local boobies = {}
	for index, data in SortedPairsByMemberValue( internal_roles, "sortorder" ) do
		local cat = vgui.Create( "DCollapsibleCategory", panel_members_scroller )
		boobies[index] = cat
		cat:SetLabel( index )
		cat:Dock( TOP )
		cat:DockMargin( 0, 0, 0, 0 )
		function cat:Paint( w, h )
			draw.RoundedBoxEx( 2, 0, 0, w, h, data.color, true, true, false, false )
		end
	end

	local created = {}
	for i, v in ipairs( test_usernames ) do
		created[i] = test_user( table.Random( boobies ), v )
	end

	for i, v in pairs( boobies ) do
		v:SetLabel( v.Header:GetText() .. " -- " .. #v:GetChildren()-1 )
	end
end

concommand.Add("funnel", function()
	funnel_start()
end)


list.Set( "DesktopWindows", "FunnelMessenger", {
	title = "Funnel",
	icon = "icon16/email.png",
	init		= function()
		funnel_start()
	end
})

local scale = CreateClientConVar("fcv_scales", 0.05, true, false, "Amount to do this shit by")
local times = CreateClientConVar("fcv_time", 20, true, false, "Degrees to move in a second.. sometimes")
local enabled = CreateClientConVar("fcv", 1, true, false, "On or off")
local theangles = Angle()
local prevangle = nil

-- As to not create a bunch of angle objects
local theresult = Angle()
local math1 = Angle()

hook.Add( "CalcView", "FesiCalcView", function( ply, pos, angles, fov )
	if enabled:GetBool() then
		if !prevangle then prevangle = Angle( angles.p, angles.y, angles.r ) end
		local ft = FrameTime()
		local tv = times:GetFloat()
		ft = ft * tv
		local sv = scale:GetFloat()

		math1:Set( angles )
		math1:Sub( prevangle )
		theangles:Add( math1 )
		theangles:Normalize()

		prevangle:Set( angles )

		theangles.p = math.ApproachAngle( theangles.p, 0, theangles.p*ft )
		theangles.y = math.ApproachAngle( theangles.y, 0, theangles.y*ft )
		theangles.r = math.ApproachAngle( theangles.r, 0, theangles.r*ft )
		
		theresult:Set( theangles )
		theresult:Mul( -sv )

		angles:Add( theresult )
	end
end )