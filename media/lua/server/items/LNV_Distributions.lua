require "Items/Distributions"
require "Items/ProceduralDistributions"
--require "Vehicles/VehicleDistributions"

local i, j

local lightnovelspawnTable = {
  "BedroomSideTable", 5,
  "BookstoreMisc", 5,
  "BreakRoomShelves", 5,
  "CafeShelfBooks", 5,
  "CampingStoreBooks", 5,
  "ClassroomDesk", 5,
  "CrateMagazines", 5,
  "CrateRandomJunk", 5,
  "DeskGeneric", 5,
  "ElectronicStoreMagazines", 5,
  "ElectronicStoreMusic", 5,
  "FilingCabinetGeneric", 5,
  "GarageFirearms", 5,
  "GunStoreMagazineRack", 5,
  "JanitorMisc", 5,
  "KitchenBook", 5,
  "KitchenRandom", 5,
  "LibraryCounter", 5,
  "LivingRoomShelf", 5,
  "LivingRoomShelfNoTapes", 5,
  "Locker", 5,
  "MagazineRackMixed", 5,
  "MechanicShelfBooks", 5,
  "MechanicShelfMisc", 5,
  "MusicStoreSpeaker", 5,
  "OfficeCounter", 5,
  "OfficeDesk", 5,
  "OfficeDeskHome", 5,
  "OfficeDrawers", 5,
  "OtherGeneric", 5,
  "PlankStashMagazine", 5,
  "PoliceDesk", 5,
  "PostOfficeMagazines", 5,
  "PrisonCellRandom", 5,
  "ShelfGeneric", 5,
}

local lightnovelTable = {
    "LNV.LightNovel", 0.1,
}

for i = 1, #lightnovelspawnTable, 2 do
  for j = 1, #lightnovelTable, 2 do
    table.insert(ProceduralDistributions.list[lightnovelspawnTable[i]].items, lightnovelTable[j])
    table.insert(ProceduralDistributions.list[lightnovelspawnTable[i]].items, lightnovelspawnTable[i+1] * lightnovelTable[j+1])
  end
end