Config = {}

Config.Armories = {
    [1] = {
        ped = "s_m_y_cop_01", -- NSW Police Ped
        pedlocation = vector3(472.96, -969.39, 23.94), -- Ped location
        pedheading = 90.0, -- Ped heading
        pedanim = {
            dict = 'amb@world_human_cop_idles@male@base',
            anim = 'base'
        },
        pedSettings = {
            SetEntityInvincible = true,
            SetBlockingOfNonTemporaryEvents = true,
            FreezeEntityPosition = true
        },
        ArmoryItems = {
            ['police'] = { 
                -- Grade 0 (Recruit / Probationary)
                [0] = {
                    {name = 'WEAPON_STUNGUN', label = 'Taser', price = 50},
                    {name = 'taser_cartridge', label = 'Taser Cartridge', price = 25},
                    {name = 'WEAPON_CARBATON', label = 'Police Baton', price = 30},
                    {name = 'ARMOR', label = 'Body Armour', price = 75},
                    {name = 'WEAPON_GLOCK22', label = 'Glock 22 (Sidearm)', price = 100},
                    {name = 'WEAPON_SMG', label = 'SMG', price = 250},
                    {name = 'ammo-9-box', label = '9mm Rounds', price = 50},
                    {name = 'ammo-rifle-box', label = 'Rifle Rounds', price = 100},
                    {name = 'WEAPON_M4', label = 'M4 Carbine', price = 300},
                    {name = 'ammo-45-box', label = '.45 Rounds', price = 100},
                    {name = 'ammo-shotgun-box', label = 'Shotgun Rounds', price = 100},
                    {name = 'ammo-rifle2-box', label = 'Rifle2 Rounds', price = 100},
                },
                -- Grade 1 (Constable)
                [1] = {
                    {name = 'WEAPON_STUNGUN', label = 'Taser', price = 50},
                    {name = 'taser_cartridge', label = 'Taser Cartridge', price = 25},
                    {name = 'WEAPON_CARBATON', label = 'Police Baton', price = 30},
                    {name = 'ARMOR', label = 'Body Armour', price = 75},
                    {name = 'WEAPON_GLOCK22', label = 'Glock 22 (Sidearm)', price = 100},
                    {name = 'WEAPON_SMG', label = 'SMG', price = 250},
                    {name = 'WEAPON_M4', label = 'M4 Carbine', price = 300},
                    {name = 'ammo-9-box', label = '9mm Rounds', price = 50},
                    {name = 'ammo-rifle-box', label = 'Rifle Rounds', price = 100},
                    {name = 'ammo-45-box', label = '.45 Rounds', price = 100},
                    {name = 'ammo-shotgun-box', label = 'Shotgun Rounds', price = 100},
                },
                -- Add higher grades (Sergeant, Senior, Inspector) as needed
            }
        }
    }
}

