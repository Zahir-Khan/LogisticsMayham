local technologies = data.raw.technology

-- for _,technology in pairs(technologies) do
--   if( technology.unit and technology.unit.count ~= nil )
--   then
--     technology.unit.count = math.max(math.floor(technology.unit.count / 4), 1)
--   end
-- end

-- https://github.com/wube/factorio-data/blob/master/base/prototypes/technology.lua
technologies['mining-productivity-4'].unit.count_formula = '625*(L - 3)'
