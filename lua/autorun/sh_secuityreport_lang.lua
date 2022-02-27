--[[---------------------------------------------------------------------------
Security Report By Studio FCS [Jo57430]
---------------------------------------------------------------------------
Security Report S-FCS(Jo57430(©Copyright))
--DarkRP Addons--
-----------------
--- Commande: ---

---------------------------------------------------------------------------]]
FCS_SR_LangRegions = {} -- DON'T TOUCH
--[[-----------------------------------------------------------------------
-- Change Language --
---------------------
"En" --English
"Fr" --Français
"Custom" --Create your own configuration
---------------------------------------------------------------------------]]

FCS_SR_LangRegions = "Fr"

---------------------------------------------------------------------------
if(FCS_SR_LangRegions == "Custom")then -----------------------------------
--[[-----------------------------------------------------------------------
		\|/ Custom Config \|/ --Create your own configuration
---------------------------------------------------------------------------]]
FCS_SECU_Lang["SRT"] = "" --Security Report Titre/Description
FCS_SECU_Lang["REP"] = "" --Report Defaut TEXT
FCS_SECU_Lang["CLOS"] = "" --Close
FCS_SECU_Lang["SEND"] = "" --Send the Report
FCS_SECU_Lang["REPT"] = "" --SecReport TITES (CP GUI)
FCS_SECU_Lang["NAME"] = "" --NAME
FCS_SECU_Lang["REPL"] = "" --REPLY
FCS_SECU_Lang["YES"] = "" --YES
FCS_SECU_Lang["NO"] = "" --NO
FCS_SECU_Lang["REP1"] = "" --I answer the call of
FCS_SECU_Lang["REP2"] = "" --A security agent is on his way.
---------------------------------------------------------------------------
end -----------------------------------------------------------------------
--[[-----------------------------------------------------------------------
		\|/ DON'T TOUCH \|/
---------------------------------------------------------------------------]]
--[[-----------------------------------------------------------------------
-- Langage -- "En" --English
---------------------------------------------------------------------------]]
if(FCS_SR_LangRegions == "En")then
FCS_SECU_Lang["SRT"] = "Security Report : Minimume 5 / max : 40"
FCS_SECU_Lang["REP"] = "REPORT" 
FCS_SECU_Lang["CLOS"] = "Close"
FCS_SECU_Lang["SEND"] = "Send"
FCS_SECU_Lang["REPT"] = "Security Report"
FCS_SECU_Lang["NAME"] = "Name : "
FCS_SECU_Lang["REPL"] = "Reply ?"
FCS_SECU_Lang["YES"] = "YES"
FCS_SECU_Lang["NO"] = "NO"
FCS_SECU_Lang["REP1"] = "I answer the call of"
FCS_SECU_Lang["REP2"] = "A security agent is on his way."
end
--[[-----------------------------------------------------------------------
-- Langage -- "Fr" --Français
---------------------------------------------------------------------------]]
if(FCS_SR_LangRegions == "Fr")then
FCS_SECU_Lang["SRT"] = "Security Report : Minimume 5 / max : 40" 
FCS_SECU_Lang["REP"] = "Ecrivez ici ..." 
FCS_SECU_Lang["CLOS"] = "Fermée"
FCS_SECU_Lang["SEND"] = "Envoyer"
FCS_SECU_Lang["REPT"] = "Rapport de Sécurité"
FCS_SECU_Lang["NAME"] = "Nom : "
FCS_SECU_Lang["REPL"] = "Répondre ?"
FCS_SECU_Lang["YES"] = "OUI"
FCS_SECU_Lang["NO"] = "NON"
FCS_SECU_Lang["REP1"] = "Je repond a l'appelle de " 
FCS_SECU_Lang["REP2"] = "Un agent de securité est en route."
end