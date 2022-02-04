require "Items/Distributions"
require "Items/ProceduralDistributions"
require "Vehicles/VehicleDistributions"

local i, j

local alcoholspawnTable = {
  "BandPracticeFridge", 5,
  "CrateTools", 2,
  "StoreCounterCleaning", 5,
  "BathroomCabinet", 5,
  "BathroomCounter", 5,
  "BathroomCounterEmpty", 5,
  "MedicalClinicDrugs", 5,
  "BarCounterLiquor", 2,
  "BarCounterWeapon", 3,
  "BarShelfLiquor", 4,
  "BarShelfLiquor", 2,
  "BreweryCans", 6,
  "BreweryCans", 4,
  "FridgeBeer", 4,
  "FridgeBeer", 2,
  "FridgeGeneric", 2,
  "KitchenBottles", 2,
  "StoreShelfBeer", 4,
  "StoreShelfBeer", 2,
  "FridgeTrailerPark", 5,
  "FridgeTrailerPark", 2,
}

local alcoholitemTable = {}

  alcoholitemTable = {
    "CMZ.Ethanol", 5,
  }


for i = 1, #alcoholspawnTable, 2 do
  for j = 1, #alcoholitemTable, 2 do
    table.insert(ProceduralDistributions.list[alcoholspawnTable[i]].items, alcoholitemTable[j])
    table.insert(ProceduralDistributions.list[alcoholspawnTable[i]].items, alcoholspawnTable[i+1] * alcoholitemTable[j+1])
  end
end


local quimicosspawn = {
  "BandPracticeFridge", 5,
  "CrateTools", 2,
  "StoreCounterCleaning", 5,
  "BathroomCabinet", 5,
  "BathroomCounter", 5,
  "BathroomCounterEmpty", 5,
  "MedicalClinicDrugs", 5,
  "BarCounterLiquor", 2,
  "BarCounterWeapon", 3,
  "BarShelfLiquor", 4,
  "BarShelfLiquor", 2,
  "BreweryCans", 6,
  "BreweryCans", 4,
  "FridgeBeer", 4,
  "FridgeBeer", 2,
  "FridgeGeneric", 2,
  "KitchenBottles", 2,
  "StoreShelfBeer", 4,
  "StoreShelfBeer", 2,
  "FridgeTrailerPark", 5,
  "FridgeTrailerPark", 2,
}

local quimicositem = {}

  quimicositem = {
    "CMZ.Ethanol", 5,
    "CMZ.Sodiumhydroxide", 5,
    "CMZ.Methanol", 5,
  }


for i = 1, #quimicosspawn, 2 do
  for j = 1, #quimicositem, 2 do
    table.insert(ProceduralDistributions.list[quimicosspawn[i]].items, quimicositem[j])
    table.insert(ProceduralDistributions.list[quimicosspawn[i]].items, quimicosspawn[i+1] * quimicositem[j+1])
  end
end