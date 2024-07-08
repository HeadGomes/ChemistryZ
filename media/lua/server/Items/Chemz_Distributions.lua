require "Items/Distributions"
require "Items/ProceduralDistributions"
require "Vehicles/VehicleDistributions"

local i, j

local alcoholspawnTable = {
  "CrateTools", 6,
  "StoreCounterCleaning", 8,
  "BathroomCabinet", 8,
  "BathroomCounter", 8,
  "BathroomCounterEmpty", 3,
  "MedicalClinicDrugs", 8,
  "KitchenBottles", 4,
}

local alcoholitemTable = {}

  alcoholitemTable = {
	"CMZ.Ethanol", 3,
  }


for i = 1, #alcoholspawnTable, 2 do
  for j = 1, #alcoholitemTable, 2 do
    table.insert(ProceduralDistributions.list[alcoholspawnTable[i]].items, alcoholitemTable[j])
    table.insert(ProceduralDistributions.list[alcoholspawnTable[i]].items, alcoholspawnTable[i+1] * alcoholitemTable[j+1])
  end
end


local quimicosspawn = {
  "CrateTools", 6,
  "StoreCounterCleaning", 6,
  "ArtSupplies", 8,
  "GarageTools",6,
  "CratePaint", 8,
  "GarageCarpentry", 2,
  "GarageMechanics", 2,
  "JanitorChemicals", 8,
  "GasStorageMechanics", 6,
}

local quimicositem = {}

  quimicositem = {
    "CMZ.Ethanol", 3,
    "CMZ.Sodiumhydroxide", 2,
    "CMZ.Methanol", 2,
  }


for i = 1, #quimicosspawn, 2 do
  for j = 1, #quimicositem, 2 do
    table.insert(ProceduralDistributions.list[quimicosspawn[i]].items, quimicositem[j])
    table.insert(ProceduralDistributions.list[quimicosspawn[i]].items, quimicosspawn[i+1] * quimicositem[j+1])
  end
end


local clwaterspawn = {
  "MedicalClinicDrugs", 7,
}

local clwateritem = {}

  clwateritem = {
    "CMZ.Clwater", 2,
  }


for i = 1, #clwaterspawn, 2 do
  for j = 1, #clwateritem, 2 do
    table.insert(ProceduralDistributions.list[clwaterspawn[i]].items, clwateritem[j])
    table.insert(ProceduralDistributions.list[clwaterspawn[i]].items, clwaterspawn[i+1] * clwateritem[j+1])
  end
end