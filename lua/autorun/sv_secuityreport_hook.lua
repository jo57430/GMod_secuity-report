-----------------------------------------------------------------------------
-- Commande --
-----------------------------------------------------------------------------
concommand.Add( "security_report", function( ply, cmd, args, argstr )
	if ply:isCP() or ply:isArrested() then else
		umsg.Start("secreporte", ply)
		umsg.End()
	end 
end)
concommand.Add( "security_report_adminmenu", function( ply, cmd, args, argstr )
	if(ply:IsSuperAdmin())then
		umsg.Start("secreporteadmin", ply)
		umsg.End()
	end 
end)