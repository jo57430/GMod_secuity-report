//RWEPs by Soviet Dark Reaper

ENT.Type = "anim"
ENT.PrintName = "[S.R.]Phone"
ENT.Author = "Jo57430[Studio FCS]"
ENT.Spawnable = true
ENT.AdminOnly = true
ENT.Purpose = ""
ENT.Instructions = ""
ENT.Category = "[S:FCS]Security Report"

function ENT:SpawnFunction( ply, tr, ClassName )

	if ( !tr.Hit ) then return end

	local SpawnPos = tr.HitPos + tr.HitNormal * 22
	local SpawnAng = ply:EyeAngles()
	SpawnAng.p = 0
	SpawnAng.y = SpawnAng.y + 180

	local ent = ents.Create( ClassName )
	ent:SetPos( SpawnPos )
	ent:SetAngles( SpawnAng )
	ent:Spawn()
	ent:Activate()

	return ent

end