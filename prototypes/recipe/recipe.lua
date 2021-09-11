local recipes = data.raw.recipe

-- General recipe const tweaks

local cost_factor =  2
local time_factor =  0.5

for _,recipe in pairs(recipes) do
  -- local ingredients = recipe.normal and recipe.normal.ingredients or recipe.ingredients
  -- for _,ingredient in ipairs(ingredients) do
  --   if( ingredient.amount ~= nil )
  --   then
  --     ingredient.amount = math.max(math.floor(ingredient.amount * cost_factor), 1)
  --   else
  --     ingredient[2] = math.max(math.floor(ingredient[2] * cost_factor), 1)
  --   end
  -- end

  if( recipe.normal and recipe.normal.energy ~= nil )
  then
    recipe.normal.energy = 10
  end
end

-- Tweaks TBD

-- https://github.com/wube/factorio-data/blob/master/base/prototypes/recipe.lua
-- recipes['steel-plate'].normal.energy_required = 6
-- -- Science packs, yay! These are "cheap" individually, however, large
-- -- quantities of them are required.
-- recipes['chemical-science-pack'].result_count = 4
-- recipes['military-science-pack'].result_count = 4
-- recipes['production-science-pack'].result_count = 6
-- recipes['production-science-pack'].ingredients[3][2] = 10
-- recipes['utility-science-pack'].result_count = 6
-- -- science packs reconfiguration ends here
-- recipes['rocket-control-unit'].result_count = 2
-- -- Nuclear! This needs massive changes for it to make sense in cheap mode
-- recipes['nuclear-reactor'].ingredients[1][2] = 100
-- recipes['nuclear-reactor'].ingredients[2][2] = 100
-- recipes['nuclear-reactor'].ingredients[3][2] = 100
-- recipes['nuclear-reactor'].ingredients[4][2] = 100
-- recipes['centrifuge'].ingredients[1][2] = 20
-- recipes['centrifuge'].ingredients[2][2] = 10
-- recipes['centrifuge'].ingredients[3][2] = 20
-- recipes['centrifuge'].ingredients[4][2] = 20
-- recipes['uranium-processing'].energy_required = 1
-- recipes['uranium-processing'].ingredients[1][2] = 1 -- 10-times more uranium for us, yay!
-- recipes['kovarex-enrichment-process'].energy_required = 12
-- recipes['kovarex-enrichment-process'].ingredients[1][2] = 5
-- recipes['kovarex-enrichment-process'].ingredients[2][2] = 3
-- recipes['kovarex-enrichment-process'].results[1][2] = 6
-- recipes['kovarex-enrichment-process'].results[2][2] = 1
-- recipes['nuclear-fuel'].energy_required = 40
-- recipes['nuclear-fuel-reprocessing'].energy_required = 20
-- recipes['nuclear-fuel-reprocessing'].ingredients[1][2] = 3
-- recipes['uranium-fuel-cell'].ingredients[1][2] = 2
-- recipes['uranium-fuel-cell'].result_count = 20
-- recipes['heat-exchanger'].ingredients[1][2] = 1
-- recipes['heat-exchanger'].ingredients[2][2] = 10
-- if( recipes['heat-exchanger'].ingredients[3] ~= nil )
-- then
--   recipes['heat-exchanger'].ingredients[3][2] = 1
-- end
-- recipes['heat-pipe'].ingredients[1][2] = 1
-- recipes['heat-pipe'].ingredients[2][2] = 2
-- if( recipes['steam-turbine'].ingredients ~= nil )
-- then
--   recipes['steam-turbine'].ingredients[1][2] = 10
--   recipes['steam-turbine'].ingredients[2][2] = 10
--   recipes['steam-turbine'].ingredients[3][2] = 4
-- end
-- -- End of nuclear tweaks
