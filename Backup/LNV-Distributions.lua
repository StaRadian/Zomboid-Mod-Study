Distributions = Distributions or {};

local distributionTable = {

    -- =====================
    --    Room List (A-Z)
    -- =====================
    all = {
        counter = {
            rolls = 4,
            items = {
                "LNV.LightNovel", 10,
            }
        },
        inventoryfemale = {
            rolls = 1,
            items = {
                "LNV.LightNovel", 1,
            }
        },
        inventorymale = {
            rolls = 1,
            items = {
                "LNV.LightNovel", 1,
            }
        },
        sidetable = {
            rolls = 1,
            items = {
                "LNV.LightNovel", 4,
            }
        },
    },

    motelroomoccupied = {
        sidetable = {
            rolls = 1,
            items = {
                "LNV.LightNovel", 2,
            }
        },
    },

    Handbag = {
        rolls = 1,
        items = {
            "LNV.LightNovel", 10,
        },
    },

    Purse = {
        rolls = 1,
        items = {
            "LNV.LightNovel", 10,
        },
    },
}

table.insert(Distributions, 1, distributionTable);

--for mod compat:
SuburbsDistributions = distributionTable;