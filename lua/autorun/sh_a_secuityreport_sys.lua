--[[---------------------------------------------------------------------------
Security Report By Studio FCS [Jo57430]
---------------------------------------------------------------------------
Security Report S-FCS(Jo57430(©Copyright))
--DarkRP Addons--
-----------------

---------------------------------------------------------------------------]]
--[[-----------------------------------------------------------------------
Configuration
-------------
The config Files is:

sh_secuityreport_lang.lua
---------------------------------------------------------------------------
		\|/ DON'T TOUCH \|/
---------------------------------------------------------------------------]]
Soft = {}
-- Langage --
FCS_SECU_Lang = {} -- DON'T TOUCH
FCS_SECU_LangRegions = {} -- DON'T TOUCH
-- Config Values --
FCS_SECU_ConfigValues = {} -- DON'T TOUCH

include('sh_secuityreport_config.lua')
include('sh_secuityreport_lang.lua')
include('sv_secuityreport_hook.lua')
AddCSLuaFile('sh_secuityreport_config.lua')
AddCSLuaFile('sh_secuityreport_lang.lua')
--[[-----------------------------------------------------------------------
		\|/ DON'T TOUCH \|/
---------------------------------------------------------------------------]]
function MCSloadMsg(msg)
	Msg("Studio FCS Script Id: 0028: "..tostring(msg).."\n")
end
MCSloadMsg(tostring("\n ========================================== \n Chargement...\n ========================================== \n Security Report \n By Studio F.C.S. \n Créateur du scripte : Jo57430 \n Versions : "..Soft.Versions.." | "..Soft.Released.." \n"))

if(CLIENT)then
surface.CreateFont( "FD", { font = "DermaLarge", size = ScrW()/88.4, weight = 700 } )
surface.CreateFont( "FDL", { font = "DermaLarge", size = ScrW()/147.3, weight = 700 } ) 
end
	
function secur ()
	local ply = LocalPlayer()
	
	local frame = vgui.Create( "DFrame" )
	frame:SetPos(ScrW()/2.36,ScrH()/2.25)
	frame:SetSize(ScrW()/5.61,ScrH()/11.02)
	frame:MakePopup()
	frame:SetTitle("")
	frame:ShowCloseButton(false)
	frame:SetDraggable(false)
	frame.Paint = function()
		surface.SetDrawColor( 100, 100, 100, 100 )
		surface.DrawRect( 0, 0, frame:GetWide(), frame:GetTall() )
	end
	
	local text = vgui.Create( "DLabel", frame )
	text:SetPos(ScrW()/353.6,ScrH()/198.4)
	text:SetSize(ScrW()/5.8,ScrH()/39.68)
	text:SetColor( Color( 255, 255, 255, 255 ) )
	text:SetFont( "FDL" )
	text:SetText( "Security Report : Minimume 5 / max : 40" )
		
	local report = vgui.Create( "DTextEntry", frame )
	report:SetPos(ScrW()/353.6,ScrH()/33.07)
	report:SetTall( ScrW()/70.72 )
	report:SetWide( ScrW()/5.8 )
	report:SetFont( "FDL" )
	report:SetEnterAllowed( true )
	report:SetText(FCS_SECU_Lang["REP"])
	
	local closeb = vgui.Create("DButton" , frame)
	closeb:SetPos(ScrW()/353.6,ScrH()/16.53)
	closeb:SetSize(ScrW()/11.79,ScrH()/39.68)
	closeb:SetText(FCS_SECU_Lang["CLOS"])
	closeb:SetFont( "FD" )
	closeb:SetColor( Color( 100, 100, 100, 255 ) )
	closeb.DoClick = function ()
		frame:Close()
	end
	closeb.Paint = function()
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.DrawRect( 0, 0, closeb:GetWide(), closeb:GetTall() )
	end
	
	local send = vgui.Create("DButton" , frame)
	send:SetPos(ScrW()/11.05,ScrH()/16.53)
	send:SetSize(ScrW()/11.79,ScrH()/39.68)
	send:SetText(FCS_SECU_Lang["SEND"])
	send:SetFont( "FD" )
	send:SetColor( Color( 100, 100, 100, 255 ) )
	send.DoClick = function ()
	
		if(string.len(report:GetValue()) >= 5 && string.len(report:GetValue()) <= 40 && report:GetValue() !=FCS_SECU_Lang["REP"])then
			net.Start("SA")
				net.WriteString( ply:Nick() )
				net.WriteString( report:GetValue() )
			net.SendToServer()
			frame:Close()
		end
		
	end
	send.Paint = function()
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.DrawRect( 0, 0, send:GetWide(), send:GetTall() )
	end	
	
end

net.Receive( "SA", function( len, ply ) 
	name_read = net.ReadString()
	report_read = net.ReadString()
	for k, v in pairs( player.GetAll() ) do
		if ( v:isCP() ) then
			ply:SetNWString("name_read",name_read)
			ply:SetNWString("report_read",report_read)
			timer.Create("T",1,1,function()
			umsg.Start( "secualert", v )
			umsg.End()
			end)
		end
	end
end)

SoundsRadio = {
"npc/overwatch/radiovoice/off4.wav",
"npc/overwatch/radiovoice/off2.wav",
"npc/overwatch/radiovoice/on1.wav",
"npc/overwatch/radiovoice/on3.wav"
}

--ent:GetNWString("DescriptionLine1")
--
local addx = 0
function secalert()
	local ply = LocalPlayer()
	
	if(IsValid( dP )) then else
	addx = addx + (ScrW()/15.37)
	end
	
	math.randomseed(os.time())
	surface.PlaySound(SoundsRadio[math.random(1,4)])
	local dP = vgui.Create( "DFrame" )
	dP:SetPos( (4/5)*ScrW(),ScrH()/20 + addx )
	dP:SetSize(ScrW()/5.89,ScrH()/9.02)
	dP:SetTitle(FCS_SECU_Lang["REPT"])
	dP:SetVisible( true )
	dP:SetDraggable( false )
	dP:ShowCloseButton( false )
	dP:SetKeyboardInputEnabled(false)
	dP:SetMouseInputEnabled(true)
	dP:SetVisible(true)
	dP.Paint = function()
		draw.RoundedBox( 8, 0, 0, dP:GetWide(), dP:GetTall(), Color( 50, 50, 50, 230 ) )
	end
	
	local title = vgui.Create( "DLabel",dP )
	title:SetPos(ScrW()/353.6,ScrH()/66.13)
	title:SetText(FCS_SECU_Lang["NAME"]..ply:GetNWString("name_read"))
	title:SetFont("FD")
	title:SetSize(ScrW()/6.1,ScrH()/19.84)
	title:SetColor(Color(236, 240, 241))

	local subtitle = vgui.Create( "DLabel",dP )
	subtitle:SetPos(ScrW()/353.6,ScrH()/24.8)
	subtitle:SetText(ply:GetNWString("report_read"))
	subtitle:SetFont("FDL")
	subtitle:SetColor(Color(236, 240, 241))
	subtitle:SetSize(ScrW()/6.1,ScrH()/19.84)
	
	local ask = vgui.Create( "DLabel",dP )
	ask:SetPos(ScrW()/70.72,ScrH()/14.17)
	ask:SetText(FCS_SECU_Lang["REPL"])
	ask:SetColor(Color(236, 240, 241))
	ask:SetFont("Trebuchet24")
	ask:SetSize(ScrW()/7.07,ScrH()/19.84)

	local yes = vgui.Create( "DButton",dP )
	yes:SetPos(ScrW()/13.1,ScrH()/11.67)
	yes:SetText("   "..FCS_SECU_Lang["YES"])
	yes:SetSize(ScrW()/25.26,ScrH()/49.6)
	yes:SetImage("icon16/accept.png")
	yes.Paint = function()
		draw.RoundedBox( 8, 0, 0, yes:GetWide(), yes:GetTall(), Color( 236, 240, 241, 230 ) )
	end
	yes.DoClick = function() 
		RunConsoleCommand( "say", "/g "..FCS_SECU_Lang["REP1"]..ply:GetNWString("name_read").."." ) 
		RunConsoleCommand( "say", "/pm "..ply:GetNWString("name_read").." : "..FCS_SECU_Lang["REP2"] )
		surface.PlaySound("ambient/levels/prison/radio_random1.wav")
		addx = 0
		dP:Close()
	end
	
	local no = vgui.Create( "DButton",dP )
	no:SetPos(ScrW()/8.42,ScrH()/11.67)
	no:SetText("   "..FCS_SECU_Lang["NO"])
	no:SetSize(ScrW()/25.26,ScrH()/49.6)
	no:SetImage("icon16/delete.png")
	no.DoClick = function() dP:Close() addx = 0 end
	no.Paint = function()
		draw.RoundedBox( 8, 0, 0, no:GetWide(), no:GetTall(), Color( 236, 240, 241, 230 ) )
	end
end

function adminmenu()

	local frame = vgui.Create( "DFrame" )
	frame:SetPos(ScrW()/3.5,ScrH()/2.5)
	frame:SetSize(ScrW()/2,ScrH()/4)
	frame:MakePopup()
	frame:SetTitle("Security Report | Admin Menu")
	frame:ShowCloseButton(true)
	frame:SetDraggable(true)
	frame.Paint = function()
		surface.SetDrawColor( 100, 100, 100, 100 )
		surface.DrawRect( 0, 0, frame:GetWide(), frame:GetTall() )
	end
	
	local charlist = vgui.Create("DListView")
	charlist:SetParent(frame)
	charlist:SetPos(5, 25)
	charlist:SetSize( 875, 220 )
	charlist:SetMultiSelect(false)
	charlist:SetSortable(false)
	charlist:AddColumn(FCS_SECU_Lang["NAME"]):SetFixedWidth(200)
	charlist:AddColumn(FCS_SECU_Lang["REPT"])
	
end

usermessage.Hook("secreporte",secur) 
usermessage.Hook("secualert",secalert)
usermessage.Hook("secreporteadmin",adminmenu) 


if(SERVER)then
util.AddNetworkString("SA")
end