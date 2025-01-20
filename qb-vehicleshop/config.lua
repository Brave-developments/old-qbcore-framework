Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10 -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05 -- Percent that goes to sales person from a finance sale 5%
Config.FinanceZone = vector3(-29.53, -1103.67, 26.42) -- Where the finance menu is located
Config.PaymentWarning = 10 -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 24 -- time in hours between payment being due
Config.MinimumDown = 10 -- minimum percentage allowed down
Config.MaximumPayments = 24 -- maximum payments allowed
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-15.49, -1119.64),
                vector2(-70.81, -1122.48),
                vector2(-52.33, -1067.05),
                vector2(-1.58, -1081.62),
                
            },
            ['minZ'] = 25.0, -- min height of the shop zone
            ['maxZ'] = 28.0, -- max height of the shop zone
            ['size'] = 2.75 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Premium Deluxe Motorsport', -- Blip name
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = { -- Categories available to browse
            ['sportsclassics'] = 'Sports Classics',
            ['sedans'] = 'Sedans',
            ['coupes'] = 'Coupes',
            ['suvs'] = 'SUVs',
            ['offroad'] = 'Offroad',
            ['muscle'] = 'Muscle',
            ['compacts'] = 'Compacts',
            ['motorcycles'] = 'Motorcycles',
            ['vans'] = 'Vans',
            ['cycles'] = 'Bicycles',
            --['super'] = 'Super',
            ['sports'] = 'Sports'
        },
        ['TestDriveTimeLimit'] = 1.0, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-45.67, -1098.34, 26.42), -- Blip Location
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            --[[[1] = {
                coords = vector4(-45.65, -1093.66, 25.44, 69.5), -- where the vehicle will spawn on display
                defaultVehicle = 'buffalo4', -- Default display vehicle
                chosenVehicle = 'buffalo4', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-48.27, -1101.86, 25.44, 294.5),
                defaultVehicle = 'everon',
                chosenVehicle = 'everon',
            },
            [3] = {
                coords = vector4(-39.6, -1096.01, 25.44, 66.5),
                defaultVehicle = 'schafter2',
                chosenVehicle = 'schafter2',
            },
            [4] = {
                coords = vector4(-51.21, -1096.77, 25.44, 254.5),
                defaultVehicle = 'sultan3',
                chosenVehicle = 'sultan3',
            },
            [5] = {
                coords = vector4(-40.18, -1104.13, 25.44, 338.5),
                defaultVehicle = 'iwagen',
                chosenVehicle = 'iwagen',
            },
            [6] = {
                coords = vector4(-43.31, -1099.02, 25.44, 52.5),
                defaultVehicle = 'moonbeam2',
                chosenVehicle = 'moonbeam2',
            },
            [7] = {
                coords = vector4(-50.66, -1093.05, 25.44, 222.5),
                defaultVehicle = 'kanjo',
                chosenVehicle = 'kanjo',
            },
            [8] = {
                coords = vector4(-44.28, -1102.47, 25.44, 298.5),
                defaultVehicle = 'wolfsbane',
                chosenVehicle = 'wolfsbane',
            },]]--

            [1] = {
                coords = vector4(-50.19, -1092.72, 25.42, 161.96), -- where the vehicle will spawn on display
                defaultVehicle = 'buffalo4', -- Default display vehicle
                chosenVehicle = 'buffalo4', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-49.11, -1101.27, 25.42, 308.44),
                defaultVehicle = 'everon',
                chosenVehicle = 'everon',
            },
            [3] = {
                coords = vector4(-45.54, -1103.22, 25.42, 314.37),
                defaultVehicle = 'schafter2',
                chosenVehicle = 'schafter2',
            },
            [4] = {
                coords = vector4(-37.97, -1097.52, 25.42, 155.74),
                defaultVehicle = 'sultan3',
                chosenVehicle = 'sultan3',
            },
            [5] = {
                coords = vector4(-40.33, -1104.55, 25.42, 343.87),
                defaultVehicle = 'iwagen',
                chosenVehicle = 'iwagen',
            },
			
			--[6] = {
            --    coords = vector4(-57.5, -1097.63, 25.42, 297.15),
           --    defaultVehicle = 'moonbeam2',
           --     chosenVehicle = 'moonbeam2',
           -- },
			
			[6] = {
                coords = vector4(-44.54, -1094.06, 25.42, 248.88),
                defaultVehicle = 'kanjo',
                chosenVehicle = 'kanjo',
            },
			
			[7] = {
                coords = vector4(-53.74, -1099.47, 25.42, 302.78),
                defaultVehicle = 'wolfsbane',
                chosenVehicle = 'wolfsbane',
            }



        },
    },
    ['luxury'] = {
        ['Type'] = 'managed',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-818.42, -198.63),
                vector2(-790.65, -183.9),
                vector2(-759.62, -239.94),
                vector2(-789.35, -250.45)
            },
            ['minZ'] = 36.1,
            ['maxZ'] = 37.516143798828,
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Luxury Car Dealership',
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = {
            ['super'] = 'Super',
            ['sports'] = 'Sports',
            ['custom'] = 'Custom Only',
            ['animated'] = 'Animated'
        },
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-793.79, -219.36, 37.41),
        ['ReturnLocation'] = vector3(-766.95, -235.08, 37.15),
        ['VehicleSpawn'] = vector4(-772.24, -236.21, 37.15, 202.94),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-791.53, -217.98, 36.41, 50.78),
                defaultVehicle = 'sclkuz',
                chosenVehicle = 'sclkuz',
            },
            [2] = {
                coords = vector4(-787.09, -206.67, 36.21, 121.89),
                defaultVehicle = 'm2f22',
                chosenVehicle = 'm2f22',
            },
            [3] = {
                coords = vector4(-779.86, -218.75, 36.15, 73.02),
                defaultVehicle = 'nero',
                chosenVehicle = 'nero',
            },
            [4] = {
                coords = vector4(-803.68, -216.49, 36.15, 302.22),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx',
            },
            [5] = {
                coords = vector4(-805.27, -213.37, 36.15, 296.5),
                defaultVehicle = 'comet2',
                chosenVehicle = 'comet2',
            },
            
			[6] = {
                coords = vector4(-796.25, -228.24, 36.15, 163.84),
                defaultVehicle = 'm5f90',
                chosenVehicle = 'm5f90',
            },
			[7] = {
                coords = vector4(-787.68, -243.57, 36.15, 209.55),
                defaultVehicle = 'gronos6x6',
                chosenVehicle = 'gronos6x6',
            },
			[8] = {
                coords = vector4(-792.32, -234.36, 36.15, 162.24),
                defaultVehicle = 'skyline',
                chosenVehicle = 'skyline',
            },
        }
    }, -- Add your next table under this comma
    ['boats'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(-729.39, -1315.84),
                vector2(-766.81, -1360.11),
                vector2(-754.21, -1371.49),
                vector2(-716.94, -1326.88),
            },
            ['minZ'] = 0.0,  -- min height of the shop zone
            ['maxZ'] = 5.0,  -- max height of the shop zone
            ['size'] = 6.2, -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Marina Shop', -- Blip name
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 410,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = { -- Categories available to browse
            ['boats'] = 'Boats',
        },
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-738.25, -1334.38, 1.6), -- Blip Location
        ['ReturnLocation'] = vector3(-714.34, -1343.31, 0.0), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-727.87, -1353.1, -0.17, 137.09), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-727.05, -1326.59, 0.00, 229.5), -- where the vehicle will spawn on display
                defaultVehicle = 'seashark', -- Default display vehicle
                chosenVehicle = 'seashark', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-732.84, -1333.5, -0.50, 229.5),
                defaultVehicle = 'dinghy',
                chosenVehicle = 'dinghy',
            },
            [3] = {
                coords = vector4(-737.84, -1340.83, -0.50, 229.5),
                defaultVehicle = 'speeder',
                chosenVehicle = 'speeder',
            },
            [4] = {
                coords = vector4(-741.53, -1349.7, -2.00, 229.5),
                defaultVehicle = 'marquis',
                chosenVehicle = 'marquis',
            },
        },
    },
    ['air'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(-1607.58, -3141.7),
                vector2(-1672.54, -3103.87),
                vector2(-1703.49, -3158.02),
                vector2(-1646.03, -3190.84),
            },
            ['minZ'] = 0.0,  -- min height of the shop zone
            ['maxZ'] = 5.0,  -- max height of the shop zone
            ['size'] = 7.0, -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Air Shop', -- Blip name
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 251,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = { -- Categories available to browse
            ['helicopters'] = 'Helicopters',
            ['planes'] = 'Planes',
        },
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-1652.76, -3143.4, 13.99), -- Blip Location
        ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- where the vehicle will spawn on display
                defaultVehicle = 'volatus', -- Default display vehicle
                chosenVehicle = 'volatus', -- Same as default but is dynamically changed when swapping vehicles
            },
          
            [2] = {
                coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
                defaultVehicle = 'nimbus',
                chosenVehicle = 'nimbus',
            },
            [3] = {
                coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
                defaultVehicle = 'frogger',
                chosenVehicle = 'frogger',
            },
        },
    },
}
