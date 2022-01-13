--[[local group = AttachedLocations.getGroup("Human")
for i=0, 360, 10 do
	group:getOrCreateLocation("MBA_forehead_"..tostring(i).."_0"):setAttachmentName("MBA_forehead_"..tostring(i).."_0")
end
]]--
MandelOtaku = MandelOtaku or {};
MandelOtaku.Shared = MandelOtaku.Shared or {};
MandelOtaku.Client = MandelOtaku.Client or {};
MandelOtaku.Server = MandelOtaku.Server or {};

local versionNumber = getCore():getVersionNumber();
local a, b = string.find(versionNumber, " ");
if a == nil then
	MandelOtaku.Shared.versionNumber = tonumber(versionNumber);
else
	MandelOtaku.Shared.versionNumber = tonumber(string.sub(versionNumber, 0, a-1));
end