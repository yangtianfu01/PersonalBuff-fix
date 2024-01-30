local L = LibStub("AceLocale-3.0"):GetLocale("PersonalBuff")

local ClassID = 13
EvokerSpells = {
    363916,     --黑曜麟片
    370553,     --攪亂均勢
    381748,     --青銅龍的祝福
    358267,     --盤旋
    357210,     --深層吐息
    363502,     --夢境飛翔
    361509,
}

DevastationSpells = {
    375087,     --龍之怒
    359618,     --龍能爆發
    370454,     --充能爆發
    386353,     --虹彩:紅色
    386399,     --虹彩:藍色
    377544,     --晶紅魔法灌注
    370901,     --跳曜火焰
    375802,     --燃盡
    376850,     --力量涌升
}

PreservationSpells = {
    363534,     --時光倒轉
    357170,     --時間擴張
    373267,     --生命守護
    366155,     --逆轉
    367364,     --逆轉
    364343,     --回音
    355941,     --夢境之息
    376788,     --夢境之息

}


EvokerPVPSpells = {

}


function insertEvokerConfig(configRoot)
    local _,Devastation,_,DevastationIcon = GetSpecializationInfoForClassID(ClassID, 1)
    local _,Preservation,_,PreservationIcon = GetSpecializationInfoForClassID(ClassID, 2)
    configRoot.args.BuffOption.args = {
        Evoker = {
            order = 1,
            type = "group",
            name = function() return format("|cffABD473|T%s:16|t %s", "Interface\\ICONS\\Classicon_evoker", GetClassInfo(ClassID)) end,
            args = {
            }
        },
        Devastation = {
            order = 2,
            type = "group",
            name = function() return format("|cffABD473|T%s:16|t %s", DevastationIcon, Devastation) end,
            args = {
            }
        },
        Preservation = {
            order = 3,
            type = "group",
            name = function() return format("|cffABD473|T%s:16|t %s", PreservationIcon, Preservation) end,
            args = {
            }
        },

        PVP = {
            order = 5,
            type = "group",
            name = function() return format("|cff8A2BE2|T%s:16|t %s", "Interface\\ICONS\\ability_pvp_gladiatormedallion", "PVP") end,
            args = {
            }
        },

        Bloodlust= {
            order = 7,
            type = "group",
            name = function() return format("|cffFF8000|T%s:16|t %s", GetSpellTexture(2825), GetSpellInfo(2825)) end,
            args = {
            }
        },
        Common = {
            order = 8,
            type = "group",
            name = function() return format("|T%s:16|t %s", "Interface\\ICONS\\Trade_engineering", L["Common"]) end,
            args = {}
        },
        Custom = {
            order = 9,
            type = "group",
            name = function() return format("|T%s:16|t %s", "Interface\\ICONS\\Trade_engineering", L["custom"]) end,
            args = {}
        },
    }


end