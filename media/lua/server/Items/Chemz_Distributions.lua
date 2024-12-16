require "Items/Distributions"
require "Items/ProceduralDistributions"
require "Vehicles/VehicleDistributions"

local i, j

local alcoholspawnTable = {
  "CrateTools", 6,
  "StoreCounterCleaning", 7,
  "BathroomCabinet", 5,
  "BathroomCounter", 5,
  "BathroomCounterEmpty", 2,
  "MedicalClinicDrugs", 8,
  "KitchenBottles", 2,
}

local alcoholitemTable = {}

  alcoholitemTable = {
	"CMZ.Ethanol", 2,
  }


for i = 1, #alcoholspawnTable, 2 do
  for j = 1, #alcoholitemTable, 2 do
    table.insert(ProceduralDistributions.list[alcoholspawnTable[i]].items, alcoholitemTable[j])
    table.insert(ProceduralDistributions.list[alcoholspawnTable[i]].items, alcoholspawnTable[i+1] * alcoholitemTable[j+1])
  end
end


local quimicosspawn = {
  "CrateTools", 6,
  "StoreCounterCleaning", 4,
  "ArtSupplies", 8,
  "GarageTools",6,
  "CratePaint", 6,
  "GarageCarpentry", 2,
  "GarageMechanics", 2,
  "JanitorChemicals", 5,
  "GasStorageMechanics", 3,
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