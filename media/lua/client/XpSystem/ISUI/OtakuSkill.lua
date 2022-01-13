require 'XpSystem/ISUI/extraskills'
local Client = MandelOtaku.Client
local Shared = MandelOtaku.Shared

local getXpForLvl = function(level)
	local xp = 75
	if level == 1 then
		xp = 75;
	elseif level == 2 then
		xp = 150;	
	elseif level == 3 then
		xp = 300;
	elseif level == 4 then
		xp = 750;
	elseif level >= 5 then
		xp = 1500 * (level - 3);
	end
	return xp;
end

function Client.LoadArcherySkill()
	local player = getPlayer();	
	local modData = player:getModData();
	if Shared.versionNumber < 41.51 then
		if modData.skills == nil then
			modData.skills = extraskills.skills;
		end
		if modData.skills["Archery"] == nil then
			modData.skills["Archery"] = extraskills.skills["Archery"];
		end
	else
		if (Client.getModData(player).transferredArcherySkill ~= true) and modData.skills and modData.skills["Archery"] then
			for i=1, modData.skills["Archery"].level do
				player:LevelPerk(Perks.Archery);
			end
			local xp = player:getModData().skills["Archery"].xp - getXpForLvl(modData.skills["Archery"].level)
			player:getXp():setXPToLevel(Perks.Archery, modData.skills["Archery"].level)
			player:getXp():AddXP(Perks.Archery, xp);
			Client.getModData(player).transferredArcherySkill = true;
		end
	end
end

Events.OnLoad.Add(Client.LoadArcherySkill);