AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()
	self:SetModel("models/props_trainstation/payphone001a.mdl")
	self:PhysicsInit( SOLID_VPHYSICS )      
	self:SetMoveType( MOVETYPE_VPHYSICS )   
	self:SetSolid( SOLID_VPHYSICS )      
	self:SetUseType(SIMPLE_USE)   
	self:DrawShadow(false)
end

function ENT:AcceptInput(name, activator, caller)
caller:ConCommand("security_report")
end
