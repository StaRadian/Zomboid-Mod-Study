local debugItems = true;

local function giveItems()
    if debugItems then
        local player = getSpecificPlayer(0);
        player:getInventory():AddItem("LNV.LightNovel");
    end
end

Events.OnGameBoot.Add(info);
Events.OnGameStart.Add(giveItems);