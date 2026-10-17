local discord_gg_CDg3VKmWp9 = (discord_gg_CDg3VKmWp9 or clonereference or function(instance: any)
    return instance
end)
local CoreGui: CoreGui = discord_gg_CDg3VKmWp9(game:GetService("CoreGui"))
local GuiService: GuiService = discord_gg_CDg3VKmWp9(game:GetService("GuiService"))
local Players: Players = discord_gg_CDg3VKmWp9(game:GetService("Players"))
local RunService: RunService = discord_gg_CDg3VKmWp9(game:GetService("RunService"))
local SoundService: SoundService = discord_gg_CDg3VKmWp9(game:GetService("SoundService"))
local UserInputService: UserInputService = discord_gg_CDg3VKmWp9(game:GetService("UserInputService"))
local TextService: TextService = discord_gg_CDg3VKmWp9(game:GetService("TextService"))
local Teams: Teams = discord_gg_CDg3VKmWp9(game:GetService("Teams"))
local TweenService: TweenService = discord_gg_CDg3VKmWp9(game:GetService("TweenService"))

local discord_gg_CDg3VKmWp9_1 = discord_gg_CDg3VKmWp9_1 or function()
    return shared
end
local discord_gg_CDg3VKmWp9_2 = discord_gg_CDg3VKmWp9_2 or nil
local discord_gg_CDg3VKmWp9_3 = discord_gg_CDg3VKmWp9_3 or (syn and syn.protect_gui) or function() end
local discord_gg_CDg3VKmWp9_4 = discord_gg_CDg3VKmWp9_4 or function()
    return CoreGui
end

local discord_gg_CDg3VKmWp9_5 = Players.LocalPlayer or Players.PlayerAdded:Wait()
local discord_gg_CDg3VKmWp9_6 = discord_gg_CDg3VKmWp9(discord_gg_CDg3VKmWp9_5:GetMouse())

local discord_gg_CDg3VKmWp9_7 = {}
local discord_gg_CDg3VKmWp9_8 = {}
local discord_gg_CDg3VKmWp9_9 = {}
local discord_gg_CDg3VKmWp9_10 = {}
local discord_gg_CDg3VKmWp9_11 = {}

local discord_gg_CDg3VKmWp9_12 = "https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/"
local discord_gg_CDg3VKmWp9_13 = {}
local discord_gg_CDg3VKmWp9_14 = {
    discord_gg_CDg3VKmWp9_15 = {
        discord_gg_CDg3VKmWp9_16 = 139785960036434,
        discord_gg_CDg3VKmWp9_17 = "Obsidian/assets/TransparencyTexture.png",
        discord_gg_CDg3VKmWp9_18 = discord_gg_CDg3VKmWp9_12 .. "assets/TransparencyTexture.png",

        discord_gg_CDg3VKmWp9_19 = nil,
    },

    discord_gg_CDg3VKmWp9_20 = {
        discord_gg_CDg3VKmWp9_16 = 4155801252,
        discord_gg_CDg3VKmWp9_17 = "Obsidian/assets/SaturationMap.png",
        discord_gg_CDg3VKmWp9_18 = discord_gg_CDg3VKmWp9_12 .. "assets/SaturationMap.png",

        discord_gg_CDg3VKmWp9_19 = nil,
    },

    discord_gg_CDg3VKmWp9_21 = {
        discord_gg_CDg3VKmWp9_16 = 97544096941083,
        discord_gg_CDg3VKmWp9_17 = "Obsidian/assets/LoadingIcon.png",
        discord_gg_CDg3VKmWp9_18 = discord_gg_CDg3VKmWp9_12 .. "assets/LoadingIcon.png",

        discord_gg_CDg3VKmWp9_19 = nil,
    },

    discord_gg_CDg3VKmWp9_22 = {
        discord_gg_CDg3VKmWp9_16 = 97682394690683,
        discord_gg_CDg3VKmWp9_17 = "Obsidian/assets/CheckIcon.png",
        discord_gg_CDg3VKmWp9_18 = discord_gg_CDg3VKmWp9_12 .. "assets/CheckIcon.png",

        discord_gg_CDg3VKmWp9_19 = nil,
    },
}
do
    local function discord_gg_CDg3VKmWp9_23(discord_gg_CDg3VKmWp9_17: string, IsFile: boolean?)
        if not isfolder or not makefolder then
            return
        end

        local discord_gg_CDg3VKmWp9_24 = discord_gg_CDg3VKmWp9_17:split("/")
        local discord_gg_CDg3VKmWp9_25 = ""

        if IsFile then
            table.remove(discord_gg_CDg3VKmWp9_24, #Segments)
        end

        for discord_gg_CDg3VKmWp9_26, Segment in ipairs(discord_gg_CDg3VKmWp9_24) do
            if not isfolder(discord_gg_CDg3VKmWp9_25 .. Segment) then
                makefolder(discord_gg_CDg3VKmWp9_25 .. Segment)
            end

            discord_gg_CDg3VKmWp9_25 = discord_gg_CDg3VKmWp9_25 .. Segment .. "/"
        end

        return discord_gg_CDg3VKmWp9_25
    end

    function discord_gg_CDg3VKmWp9_13.AddAsset(
        discord_gg_CDg3VKmWp9_33: string,
        RobloxAssetId: number,
        discord_gg_CDg3VKmWp9_18: string,
        ForceRedownload: boolean?
    )
        if discord_gg_CDg3VKmWp9_14[discord_gg_CDg3VKmWp9_33] ~= nil then
            error(string.format("Asset %q already exists", discord_gg_CDg3VKmWp9_33))
        end

        assert(typeof(RobloxAssetId) == "number", "RobloxAssetId must be a number")

        discord_gg_CDg3VKmWp9_14[discord_gg_CDg3VKmWp9_33] = {
            discord_gg_CDg3VKmWp9_16 = RobloxAssetId,
            discord_gg_CDg3VKmWp9_17 = string.format("Obsidian/custom_assets/%s", discord_gg_CDg3VKmWp9_33),
            discord_gg_CDg3VKmWp9_18 = discord_gg_CDg3VKmWp9_18,

            discord_gg_CDg3VKmWp9_19 = nil,
        }

        discord_gg_CDg3VKmWp9_13.DownloadAsset(discord_gg_CDg3VKmWp9_33, ForceRedownload)
    end

    function discord_gg_CDg3VKmWp9_13.GetAsset(discord_gg_CDg3VKmWp9_33: string)
        if not discord_gg_CDg3VKmWp9_14[discord_gg_CDg3VKmWp9_33] then
            return nil
        end

        local discord_gg_CDg3VKmWp9_27 = discord_gg_CDg3VKmWp9_14[discord_gg_CDg3VKmWp9_33]
        if discord_gg_CDg3VKmWp9_27.Id then
            return discord_gg_CDg3VKmWp9_27.Id
        end

        local discord_gg_CDg3VKmWp9_28 = string.format("rbxassetid://%s", discord_gg_CDg3VKmWp9_27.RobloxId)

        if getcustomasset then
            local discord_gg_CDg3VKmWp9_29, discord_gg_CDg3VKmWp9_30 = pcall(getcustomasset, discord_gg_CDg3VKmWp9_27.Path)

            if discord_gg_CDg3VKmWp9_29 and discord_gg_CDg3VKmWp9_30 then
                discord_gg_CDg3VKmWp9_28 = discord_gg_CDg3VKmWp9_30
            end
        end

        discord_gg_CDg3VKmWp9_27.Id = discord_gg_CDg3VKmWp9_28
        return discord_gg_CDg3VKmWp9_28
    end

    function discord_gg_CDg3VKmWp9_13.DownloadAsset(discord_gg_CDg3VKmWp9_33: string, ForceRedownload: boolean?)
        if not getcustomasset or not writefile or not isfile then
            return false, "missing functions"
        end

        local discord_gg_CDg3VKmWp9_27 = discord_gg_CDg3VKmWp9_14[discord_gg_CDg3VKmWp9_33]

        discord_gg_CDg3VKmWp9_23(discord_gg_CDg3VKmWp9_27.Path, true)

        if ForceRedownload ~= true and isfile(discord_gg_CDg3VKmWp9_27.Path) then
            return true, nil
        end

        local discord_gg_CDg3VKmWp9_31, discord_gg_CDg3VKmWp9_32 = pcall(function()
            writefile(discord_gg_CDg3VKmWp9_27.Path, game:HttpGet(discord_gg_CDg3VKmWp9_27.URL))
        end)

        return discord_gg_CDg3VKmWp9_31, discord_gg_CDg3VKmWp9_32
    end

    for discord_gg_CDg3VKmWp9_33, discord_gg_CDg3VKmWp9_26 in discord_gg_CDg3VKmWp9_14 do
        discord_gg_CDg3VKmWp9_13.DownloadAsset(discord_gg_CDg3VKmWp9_33)
    end
end

local discord_gg_CDg3VKmWp9_34 = {
    discord_gg_CDg3VKmWp9_5 = discord_gg_CDg3VKmWp9_5,
    discord_gg_CDg3VKmWp9_35 = true,

    discord_gg_CDg3VKmWp9_36 = nil,
    discord_gg_CDg3VKmWp9_37 = false,

    discord_gg_CDg3VKmWp9_38 = nil,
    discord_gg_CDg3VKmWp9_39 = nil,
    discord_gg_CDg3VKmWp9_40 = nil,

    discord_gg_CDg3VKmWp9_41 = nil,
    discord_gg_CDg3VKmWp9_42 = nil,

    discord_gg_CDg3VKmWp9_43 = "",
    discord_gg_CDg3VKmWp9_44 = false,
    discord_gg_CDg3VKmWp9_45 = false,
    discord_gg_CDg3VKmWp9_46 = nil,

    discord_gg_CDg3VKmWp9_47 = nil,
    discord_gg_CDg3VKmWp9_48 = nil,
    discord_gg_CDg3VKmWp9_49 = {},
    discord_gg_CDg3VKmWp9_50 = {},

    discord_gg_CDg3VKmWp9_51 = {},

    discord_gg_CDg3VKmWp9_52 = nil,
    discord_gg_CDg3VKmWp9_53 = nil,
    discord_gg_CDg3VKmWp9_54 = {},
    discord_gg_CDg3VKmWp9_55 = nil,

    discord_gg_CDg3VKmWp9_56 = {},
    discord_gg_CDg3VKmWp9_57 = "Right",
    discord_gg_CDg3VKmWp9_58 = discord_gg_CDg3VKmWp9_65.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

    discord_gg_CDg3VKmWp9_59 = {},
    discord_gg_CDg3VKmWp9_60 = nil,

    discord_gg_CDg3VKmWp9_61 = nil,

    discord_gg_CDg3VKmWp9_62 = {},

    discord_gg_CDg3VKmWp9_63 = {},
    discord_gg_CDg3VKmWp9_64 = {},

    discord_gg_CDg3VKmWp9_65 = discord_gg_CDg3VKmWp9_65.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

    discord_gg_CDg3VKmWp9_66 = discord_gg_CDg3VKmWp9_65.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    discord_gg_CDg3VKmWp9_67 = 26,
    discord_gg_CDg3VKmWp9_68 = "bottom",

    discord_gg_CDg3VKmWp9_69 = discord_gg_CDg3VKmWp9_65.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    discord_gg_CDg3VKmWp9_70 = discord_gg_CDg3VKmWp9_65.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    discord_gg_CDg3VKmWp9_71 = discord_gg_CDg3VKmWp9_65.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

    discord_gg_CDg3VKmWp9_72 = discord_gg_CDg3VKmWp9_65.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    discord_gg_CDg3VKmWp9_73 = discord_gg_CDg3VKmWp9_65.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),

    discord_gg_CDg3VKmWp9_74 = {
        discord_gg_CDg3VKmWp9_75 = false,
        discord_gg_CDg3VKmWp9_76 = false,
        discord_gg_CDg3VKmWp9_77 = false,
        discord_gg_CDg3VKmWp9_78 = false,
        discord_gg_CDg3VKmWp9_79 = false
    },

    discord_gg_CDg3VKmWp9_80 = false,
    discord_gg_CDg3VKmWp9_81 = false,

    discord_gg_CDg3VKmWp9_7 = discord_gg_CDg3VKmWp9_7,
    discord_gg_CDg3VKmWp9_8 = discord_gg_CDg3VKmWp9_8,
    discord_gg_CDg3VKmWp9_9 = discord_gg_CDg3VKmWp9_9,
    discord_gg_CDg3VKmWp9_10 = discord_gg_CDg3VKmWp9_10,

    discord_gg_CDg3VKmWp9_82 = Enum.KeyCode.RightControl,
    discord_gg_CDg3VKmWp9_83 = true,

    discord_gg_CDg3VKmWp9_84 = false,
    discord_gg_CDg3VKmWp9_85 = true,
    discord_gg_CDg3VKmWp9_86 = false,

    discord_gg_CDg3VKmWp9_87 = false,
    discord_gg_CDg3VKmWp9_88 = {},

    discord_gg_CDg3VKmWp9_89 = 80,
    discord_gg_CDg3VKmWp9_90 = 8,
    discord_gg_CDg3VKmWp9_91 = 0.15,

    discord_gg_CDg3VKmWp9_92 = {},
    discord_gg_CDg3VKmWp9_93 = {},

    discord_gg_CDg3VKmWp9_94 = Vector2.new(480, 360),
    discord_gg_CDg3VKmWp9_95 = Vector2.new(480, 360),
    discord_gg_CDg3VKmWp9_96 = 1,
    discord_gg_CDg3VKmWp9_97 = 4,

    discord_gg_CDg3VKmWp9_98 = false,
    discord_gg_CDg3VKmWp9_99 = {
        discord_gg_CDg3VKmWp9_100 = Color3.fromRGB(15, 15, 15),
        discord_gg_CDg3VKmWp9_101 = Color3.fromRGB(25, 25, 25),
        discord_gg_CDg3VKmWp9_102 = Color3.fromRGB(125, 85, 255),
        discord_gg_CDg3VKmWp9_103 = Color3.fromRGB(40, 40, 40),
        discord_gg_CDg3VKmWp9_104 = Color3.new(1, 1, 1),
        discord_gg_CDg3VKmWp9_105 = discord_gg_CDg3VKmWp9_105.fromEnum(Enum.Font.Code),

        discord_gg_CDg3VKmWp9_106 = Color3.fromRGB(255, 50, 50),
        discord_gg_CDg3VKmWp9_107 = Color3.fromRGB(220, 38, 38),
        discord_gg_CDg3VKmWp9_108 = Color3.new(0, 0, 0),
        discord_gg_CDg3VKmWp9_109 = Color3.new(1, 1, 1),

        discord_gg_CDg3VKmWp9_110 = ""
    },

    discord_gg_CDg3VKmWp9_111 = {},
    discord_gg_CDg3VKmWp9_112 = {},
    discord_gg_CDg3VKmWp9_113 = {},

    discord_gg_CDg3VKmWp9_114 = UserInputService.MouseIconEnabled,
    discord_gg_CDg3VKmWp9_115 = string.sub(tostring({}), 10),

    discord_gg_CDg3VKmWp9_116 = discord_gg_CDg3VKmWp9_13,

    discord_gg_CDg3VKmWp9_117 = nil, discord_gg_CDg3VKmWp9_197 = nil
}

if RunService:IsStudio() then
    if UserInputService.TouchEnabled and not UserInputService.MouseEnabled then
        discord_gg_CDg3VKmWp9_34.IsMobile = true
        discord_gg_CDg3VKmWp9_34.OriginalMinSize = Vector2.new(480, 240)
    else
        discord_gg_CDg3VKmWp9_34.IsMobile = false
        discord_gg_CDg3VKmWp9_34.OriginalMinSize = Vector2.new(480, 360)
    end
else
    pcall(function()
        discord_gg_CDg3VKmWp9_34.DevicePlatform = UserInputService:GetPlatform()
    end)

    discord_gg_CDg3VKmWp9_34.IsMobile = (discord_gg_CDg3VKmWp9_34.DevicePlatform == Enum.Platform.Android or discord_gg_CDg3VKmWp9_34.DevicePlatform == Enum.Platform.IOS)
    discord_gg_CDg3VKmWp9_34.OriginalMinSize = discord_gg_CDg3VKmWp9_34.IsMobile and Vector2.new(480, 240) or Vector2.new(480, 360)
end

local discord_gg_CDg3VKmWp9_118 = {
    discord_gg_CDg3VKmWp9_119 = {
        discord_gg_CDg3VKmWp9_120 = 0,
    },
    discord_gg_CDg3VKmWp9_121 = {
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_120 = 0,
    },
    discord_gg_CDg3VKmWp9_123 = {
        discord_gg_CDg3VKmWp9_124 = false,
        discord_gg_CDg3VKmWp9_120 = 0,
    },
    discord_gg_CDg3VKmWp9_125 = {
        discord_gg_CDg3VKmWp9_120 = 0,
    },
    discord_gg_CDg3VKmWp9_126 = {
        discord_gg_CDg3VKmWp9_120 = 0,
        discord_gg_CDg3VKmWp9_127 = "Font",
        discord_gg_CDg3VKmWp9_128 = true,
        discord_gg_CDg3VKmWp9_129 = "FontColor",
    },
    discord_gg_CDg3VKmWp9_130 = {
        discord_gg_CDg3VKmWp9_124 = false,
        discord_gg_CDg3VKmWp9_120 = 0,
        discord_gg_CDg3VKmWp9_127 = "Font",
        discord_gg_CDg3VKmWp9_128 = true,
        discord_gg_CDg3VKmWp9_129 = "FontColor",
    },
    discord_gg_CDg3VKmWp9_131 = {
        discord_gg_CDg3VKmWp9_120 = 0,
        discord_gg_CDg3VKmWp9_127 = "Font",
        discord_gg_CDg3VKmWp9_132 = function()
            local discord_gg_CDg3VKmWp9_133, discord_gg_CDg3VKmWp9_134, discord_gg_CDg3VKmWp9_135 = discord_gg_CDg3VKmWp9_34.Scheme.FontColor:ToHSV()
            return Color3.fromHSV(discord_gg_CDg3VKmWp9_133, discord_gg_CDg3VKmWp9_134, discord_gg_CDg3VKmWp9_135 / 2)
        end,
        discord_gg_CDg3VKmWp9_136 = "",
        discord_gg_CDg3VKmWp9_129 = "FontColor",
    },
    discord_gg_CDg3VKmWp9_137 = {
        discord_gg_CDg3VKmWp9_138 = Enum.SortOrder.LayoutOrder,
    },
    discord_gg_CDg3VKmWp9_139 = {
        discord_gg_CDg3VKmWp9_140 = Enum.ApplyStrokeMode.Border,
    },

    discord_gg_CDg3VKmWp9_41 = {
        discord_gg_CDg3VKmWp9_141 = "WORLD PANEL",
        discord_gg_CDg3VKmWp9_142 = "Obsidian UI Library Edition",

        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(6, 6),
        discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(620, 500),
        discord_gg_CDg3VKmWp9_145 = UDim2.fromOffset(30, 30),

        discord_gg_CDg3VKmWp9_146 = true,
        discord_gg_CDg3VKmWp9_147 = true,
        discord_gg_CDg3VKmWp9_148 = true,
        discord_gg_CDg3VKmWp9_149 = false,

        discord_gg_CDg3VKmWp9_150 = UDim2.fromScale(1, 1),
        discord_gg_CDg3VKmWp9_45 = false,

        discord_gg_CDg3VKmWp9_97 = 4,
        discord_gg_CDg3VKmWp9_57 = "Right",
        discord_gg_CDg3VKmWp9_85 = true,

        discord_gg_CDg3VKmWp9_105 = Enum.Font.Gotham,
        discord_gg_CDg3VKmWp9_82 = Enum.KeyCode.RightControl,

        discord_gg_CDg3VKmWp9_151 = true,
        discord_gg_CDg3VKmWp9_152 = "Left",

        discord_gg_CDg3VKmWp9_153 = true,

        discord_gg_CDg3VKmWp9_154 = false,
        discord_gg_CDg3VKmWp9_155 = true,
        discord_gg_CDg3VKmWp9_156 = false,
        discord_gg_CDg3VKmWp9_157 = false,
        discord_gg_CDg3VKmWp9_158 = 256,

        discord_gg_CDg3VKmWp9_159 = 128,
        discord_gg_CDg3VKmWp9_160 = 48,
        discord_gg_CDg3VKmWp9_161 = 0.5,

        discord_gg_CDg3VKmWp9_162 = 128,

        discord_gg_CDg3VKmWp9_110 = "",

        discord_gg_CDg3VKmWp9_74 = {
            discord_gg_CDg3VKmWp9_75 = false,
            discord_gg_CDg3VKmWp9_76 = false,
            discord_gg_CDg3VKmWp9_77 = false,
            discord_gg_CDg3VKmWp9_78 = false,
            discord_gg_CDg3VKmWp9_79 = false,
        },

        discord_gg_CDg3VKmWp9_163 = 0.22,
        discord_gg_CDg3VKmWp9_67 = 26,
        discord_gg_CDg3VKmWp9_68 = "bottom",
        discord_gg_CDg3VKmWp9_164 = {
            discord_gg_CDg3VKmWp9_165 = 0,
            discord_gg_CDg3VKmWp9_166 = 0,
            discord_gg_CDg3VKmWp9_97 = 0,
            discord_gg_CDg3VKmWp9_167 = false,
            discord_gg_CDg3VKmWp9_168 = 2,
            discord_gg_CDg3VKmWp9_169 = 20,
        },
    },
    discord_gg_CDg3VKmWp9_77 = {
        discord_gg_CDg3VKmWp9_170 = 1,
        discord_gg_CDg3VKmWp9_171 = "Groupbox",
        discord_gg_CDg3VKmWp9_172 = nil,
        discord_gg_CDg3VKmWp9_173 = nil,
        discord_gg_CDg3VKmWp9_174 = true,
        discord_gg_CDg3VKmWp9_175 = false,
        discord_gg_CDg3VKmWp9_176 = false,
        discord_gg_CDg3VKmWp9_177 = true,
        discord_gg_CDg3VKmWp9_178 = nil,
        discord_gg_CDg3VKmWp9_179 = nil,
    },
    discord_gg_CDg3VKmWp9_180 = {
        discord_gg_CDg3VKmWp9_170 = 1,
        discord_gg_CDg3VKmWp9_171 = nil,
        discord_gg_CDg3VKmWp9_177 = true,
        discord_gg_CDg3VKmWp9_178 = nil,
        discord_gg_CDg3VKmWp9_179 = nil,
    },
    discord_gg_CDg3VKmWp9_181 = {
        discord_gg_CDg3VKmWp9_141 = "Dialog",
        discord_gg_CDg3VKmWp9_173 = "Description",
        discord_gg_CDg3VKmWp9_182 = true,
        discord_gg_CDg3VKmWp9_183 = true,
        discord_gg_CDg3VKmWp9_184 = {}
    },
    discord_gg_CDg3VKmWp9_185 = {
        discord_gg_CDg3VKmWp9_141 = "mspaint",
        discord_gg_CDg3VKmWp9_186 = 95816097006870,
        discord_gg_CDg3VKmWp9_145 = UDim2.fromOffset(30, 30),

        discord_gg_CDg3VKmWp9_21 = discord_gg_CDg3VKmWp9_13.GetAsset("LoadingIcon"),
        discord_gg_CDg3VKmWp9_187 = nil,
        discord_gg_CDg3VKmWp9_188 = 1,

        discord_gg_CDg3VKmWp9_189 = 0,
        discord_gg_CDg3VKmWp9_190 = 10,

        discord_gg_CDg3VKmWp9_191 = false,
        discord_gg_CDg3VKmWp9_192 = false,
        discord_gg_CDg3VKmWp9_149 = true,

        discord_gg_CDg3VKmWp9_193 = 450,
        discord_gg_CDg3VKmWp9_194 = 275,

        discord_gg_CDg3VKmWp9_195 = 450,
        discord_gg_CDg3VKmWp9_196 = 250,
    },
    discord_gg_CDg3VKmWp9_197 = {
        discord_gg_CDg3VKmWp9_136 = "Toggle",
        discord_gg_CDg3VKmWp9_198 = false,

        discord_gg_CDg3VKmWp9_199 = function() end,
        discord_gg_CDg3VKmWp9_200 = function() end,

        discord_gg_CDg3VKmWp9_201 = false,
        discord_gg_CDg3VKmWp9_202 = false,
        discord_gg_CDg3VKmWp9_174 = true,
    },
    discord_gg_CDg3VKmWp9_203 = {
        discord_gg_CDg3VKmWp9_136 = "Input",
        discord_gg_CDg3VKmWp9_198 = "",
        discord_gg_CDg3VKmWp9_204 = false,
        discord_gg_CDg3VKmWp9_205 = false,
        discord_gg_CDg3VKmWp9_206 = true,
        discord_gg_CDg3VKmWp9_207 = false,
        discord_gg_CDg3VKmWp9_208 = "",
        discord_gg_CDg3VKmWp9_209 = true,
        discord_gg_CDg3VKmWp9_210 = "---",

        discord_gg_CDg3VKmWp9_199 = function() end,
        discord_gg_CDg3VKmWp9_200 = function() end,
        discord_gg_CDg3VKmWp9_211 = nil,

        discord_gg_CDg3VKmWp9_202 = false,
        discord_gg_CDg3VKmWp9_174 = true,
    },
    discord_gg_CDg3VKmWp9_212 = {
        discord_gg_CDg3VKmWp9_136 = "Slider",
        discord_gg_CDg3VKmWp9_198 = 0,
        discord_gg_CDg3VKmWp9_213 = 0,
        discord_gg_CDg3VKmWp9_214 = 100,
        discord_gg_CDg3VKmWp9_215 = 0,

        discord_gg_CDg3VKmWp9_216 = "",
        discord_gg_CDg3VKmWp9_217 = "",

        discord_gg_CDg3VKmWp9_199 = function() end,
        discord_gg_CDg3VKmWp9_200 = function() end,

        discord_gg_CDg3VKmWp9_202 = false,
        discord_gg_CDg3VKmWp9_174 = true,

        discord_gg_CDg3VKmWp9_218 = true
    },
    discord_gg_CDg3VKmWp9_78 = {
        discord_gg_CDg3VKmWp9_219 = {},
        discord_gg_CDg3VKmWp9_220 = {},
        discord_gg_CDg3VKmWp9_221 = {},

        discord_gg_CDg3VKmWp9_222 = false,
        discord_gg_CDg3VKmWp9_223 = false,
        discord_gg_CDg3VKmWp9_224 = 8,
        discord_gg_CDg3VKmWp9_225 = false,

        discord_gg_CDg3VKmWp9_199 = function() end,
        discord_gg_CDg3VKmWp9_200 = function() end,

        discord_gg_CDg3VKmWp9_202 = false,
        discord_gg_CDg3VKmWp9_174 = true,
    },
    discord_gg_CDg3VKmWp9_226 = {
        discord_gg_CDg3VKmWp9_227 = nil,
        discord_gg_CDg3VKmWp9_228 = nil,
        discord_gg_CDg3VKmWp9_229 = true,
        discord_gg_CDg3VKmWp9_230 = true,
        discord_gg_CDg3VKmWp9_231 = false,
        discord_gg_CDg3VKmWp9_232 = 200,
        discord_gg_CDg3VKmWp9_174 = true,
    },
    discord_gg_CDg3VKmWp9_233 = {
        discord_gg_CDg3VKmWp9_233 = "",
        discord_gg_CDg3VKmWp9_234 = 0,
        discord_gg_CDg3VKmWp9_122 = 0,
        discord_gg_CDg3VKmWp9_235 = Color3.new(1, 1, 1),
        discord_gg_CDg3VKmWp9_236 = Vector2.zero,
        discord_gg_CDg3VKmWp9_237 = Vector2.zero,
        discord_gg_CDg3VKmWp9_238 = Enum.ScaleType.Fit,
        discord_gg_CDg3VKmWp9_232 = 200,
        discord_gg_CDg3VKmWp9_174 = true,
    },
    discord_gg_CDg3VKmWp9_239 = {
        discord_gg_CDg3VKmWp9_239 = "",
        discord_gg_CDg3VKmWp9_240 = false,
        discord_gg_CDg3VKmWp9_241 = false,
        discord_gg_CDg3VKmWp9_242 = 1,
        discord_gg_CDg3VKmWp9_232 = 200,
        discord_gg_CDg3VKmWp9_174 = true,
    },
    discord_gg_CDg3VKmWp9_243 = {
        discord_gg_CDg3VKmWp9_244 = nil,
        discord_gg_CDg3VKmWp9_232 = 24,
        discord_gg_CDg3VKmWp9_174 = true,
    },

    discord_gg_CDg3VKmWp9_79 = {
        discord_gg_CDg3VKmWp9_136 = "KeyPicker",

        discord_gg_CDg3VKmWp9_198 = "None",
        discord_gg_CDg3VKmWp9_245 = {},

        discord_gg_CDg3VKmWp9_246 = {},
        discord_gg_CDg3VKmWp9_247 = {},
        discord_gg_CDg3VKmWp9_248 = {},
        discord_gg_CDg3VKmWp9_249 = {},

        discord_gg_CDg3VKmWp9_250 = "Toggle",
        discord_gg_CDg3VKmWp9_251 = { "Always", "Toggle", "Hold" },
        discord_gg_CDg3VKmWp9_252 = false,

        discord_gg_CDg3VKmWp9_199 = function() end,
        discord_gg_CDg3VKmWp9_253 = function() end,
        discord_gg_CDg3VKmWp9_200 = function() end,
        discord_gg_CDg3VKmWp9_254 = function() end,
    },
    discord_gg_CDg3VKmWp9_255 = {
        discord_gg_CDg3VKmWp9_198 = Color3.new(1, 1, 1),

        discord_gg_CDg3VKmWp9_148 = true,

        discord_gg_CDg3VKmWp9_199 = function() end,
        discord_gg_CDg3VKmWp9_200 = function() end,
    },
}

local discord_gg_CDg3VKmWp9_256 = {
    discord_gg_CDg3VKmWp9_257 = { 0, 1 },
    discord_gg_CDg3VKmWp9_258 = { 1, 0 },
}
local discord_gg_CDg3VKmWp9_259 = {
    discord_gg_CDg3VKmWp9_260 = { 0.5, 1 },
    discord_gg_CDg3VKmWp9_258 = { 0.5, 1 },
}
local discord_gg_CDg3VKmWp9_261 = {
    discord_gg_CDg3VKmWp9_262 = 1,
    discord_gg_CDg3VKmWp9_263 = 2,
}

local discord_gg_CDg3VKmWp9_264 = {
    discord_gg_CDg3VKmWp9_106 = "Red",
    discord_gg_CDg3VKmWp9_109 = "White",
    discord_gg_CDg3VKmWp9_108 = "Dark"
}

local discord_gg_CDg3VKmWp9_265 = {
    discord_gg_CDg3VKmWp9_266 = "RedColor",
    discord_gg_CDg3VKmWp9_267 = "WhiteColor",
    discord_gg_CDg3VKmWp9_268 = "DarkColor"
}

local function discord_gg_CDg3VKmWp9_269(discord_gg_CDg3VKmWp9_325)
    if not discord_gg_CDg3VKmWp9_325 then
        return nil
    end

    local discord_gg_CDg3VKmWp9_270 = discord_gg_CDg3VKmWp9_264[discord_gg_CDg3VKmWp9_325]
    if discord_gg_CDg3VKmWp9_270 and discord_gg_CDg3VKmWp9_34.Scheme[discord_gg_CDg3VKmWp9_270] ~= nil then
        discord_gg_CDg3VKmWp9_34.Scheme[discord_gg_CDg3VKmWp9_325] = discord_gg_CDg3VKmWp9_34.Scheme[discord_gg_CDg3VKmWp9_270]
        discord_gg_CDg3VKmWp9_34.Scheme[discord_gg_CDg3VKmWp9_270] = nil

        return discord_gg_CDg3VKmWp9_34.Scheme[discord_gg_CDg3VKmWp9_325]
    end

    local discord_gg_CDg3VKmWp9_271 = discord_gg_CDg3VKmWp9_265[discord_gg_CDg3VKmWp9_325]
    if discord_gg_CDg3VKmWp9_271 and discord_gg_CDg3VKmWp9_34.Scheme[discord_gg_CDg3VKmWp9_271] ~= nil then
        warn(string.format("Scheme Value %q is deprecated, please use %q instead.", discord_gg_CDg3VKmWp9_325, discord_gg_CDg3VKmWp9_271))
        return discord_gg_CDg3VKmWp9_34.Scheme[discord_gg_CDg3VKmWp9_271]
    end

    return discord_gg_CDg3VKmWp9_34.Scheme[discord_gg_CDg3VKmWp9_325]
end

local function discord_gg_CDg3VKmWp9_272(Event, Timeout, Condition)
    local discord_gg_CDg3VKmWp9_273 = discord_gg_CDg3VKmWp9_244.new("BindableEvent")
    local discord_gg_CDg3VKmWp9_274 = Event:Once(function(...)
        if not Condition or typeof(Condition) == "function" and Condition(...) then
            discord_gg_CDg3VKmWp9_273:Fire(true)
        else
            discord_gg_CDg3VKmWp9_273:Fire(false)
        end
    end)
    task.delay(Timeout, function()
        discord_gg_CDg3VKmWp9_274:Disconnect()
        discord_gg_CDg3VKmWp9_273:Fire(false)
    end)

    local discord_gg_CDg3VKmWp9_275 = discord_gg_CDg3VKmWp9_273.Event:Wait()
    discord_gg_CDg3VKmWp9_273:Destroy()

    return discord_gg_CDg3VKmWp9_275
end

local function discord_gg_CDg3VKmWp9_276(discord_gg_CDg3VKmWp9_203: InputObject, IncludeM2: boolean?)
    return discord_gg_CDg3VKmWp9_203.UserInputType == Enum.UserInputType.MouseButton1
        or (IncludeM2 == true and discord_gg_CDg3VKmWp9_203.UserInputType == Enum.UserInputType.MouseButton2)
        or discord_gg_CDg3VKmWp9_203.UserInputType == Enum.UserInputType.Touch
end
local function discord_gg_CDg3VKmWp9_277(discord_gg_CDg3VKmWp9_203: InputObject, IncludeM2: boolean?)
    return discord_gg_CDg3VKmWp9_276(discord_gg_CDg3VKmWp9_203, IncludeM2)
        and discord_gg_CDg3VKmWp9_203.UserInputState == Enum.UserInputState.Begin
        and discord_gg_CDg3VKmWp9_34.IsRobloxFocused
end
local function discord_gg_CDg3VKmWp9_278(discord_gg_CDg3VKmWp9_203: InputObject)
    return (discord_gg_CDg3VKmWp9_203.UserInputType == Enum.UserInputType.MouseMovement or discord_gg_CDg3VKmWp9_203.UserInputType == Enum.UserInputType.Touch)
        and discord_gg_CDg3VKmWp9_203.UserInputState == Enum.UserInputState.Change
end
local function discord_gg_CDg3VKmWp9_279(discord_gg_CDg3VKmWp9_203: InputObject, IncludeM2: boolean?)
    return discord_gg_CDg3VKmWp9_276(discord_gg_CDg3VKmWp9_203, IncludeM2)
        and (discord_gg_CDg3VKmWp9_203.UserInputState == Enum.UserInputState.Begin or discord_gg_CDg3VKmWp9_203.UserInputState == Enum.UserInputState.Change)
        and discord_gg_CDg3VKmWp9_34.IsRobloxFocused
end
local function discord_gg_CDg3VKmWp9_280(discord_gg_CDg3VKmWp9_203: InputObject)
    return discord_gg_CDg3VKmWp9_203.UserInputType == Enum.UserInputType.MouseButton1 or
        discord_gg_CDg3VKmWp9_203.UserInputType == Enum.UserInputType.MouseButton2 or
        discord_gg_CDg3VKmWp9_203.UserInputType == Enum.UserInputType.MouseButton3
end
local function discord_gg_CDg3VKmWp9_281(discord_gg_CDg3VKmWp9_203: InputObject)
    return (discord_gg_CDg3VKmWp9_203.UserInputType == Enum.UserInputType.MouseMovement or discord_gg_CDg3VKmWp9_203.UserInputType == Enum.UserInputType.Touch)
        and discord_gg_CDg3VKmWp9_34.IsRobloxFocused
end

local function discord_gg_CDg3VKmWp9_282(discord_gg_CDg3VKmWp9_618: { [any]: any })
    local discord_gg_CDg3VKmWp9_144 = 0

    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_26 in discord_gg_CDg3VKmWp9_618 do
        discord_gg_CDg3VKmWp9_144 += 1
    end

    return discord_gg_CDg3VKmWp9_144
end
local function discord_gg_CDg3VKmWp9_283(discord_gg_CDg3VKmWp9_618: { [any]: any })
    for discord_gg_CDg3VKmWp9_284 in discord_gg_CDg3VKmWp9_618 do
        if typeof(discord_gg_CDg3VKmWp9_284) ~= "number" or discord_gg_CDg3VKmWp9_284 < 1 or discord_gg_CDg3VKmWp9_284 % 1 ~= 0 then
            return false
        end
    end

    return true
end

local function discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_538: TweenBase, Destroy: boolean?)
    if not discord_gg_CDg3VKmWp9_538 then
        return
    end

    if discord_gg_CDg3VKmWp9_538.PlaybackState == Enum.PlaybackState.Playing then
        discord_gg_CDg3VKmWp9_538:Cancel()
    end

    if Destroy == true then
        pcall(discord_gg_CDg3VKmWp9_538.Destroy, discord_gg_CDg3VKmWp9_538)
    end
end

local function discord_gg_CDg3VKmWp9_286(discord_gg_CDg3VKmWp9_136: string)
    return discord_gg_CDg3VKmWp9_136:match("^%s*(.-)%s*$")
end
local function discord_gg_CDg3VKmWp9_287(discord_gg_CDg3VKmWp9_554, discord_gg_CDg3VKmWp9_215)
    assert(discord_gg_CDg3VKmWp9_215 >= 0, "Invalid rounding number.")

    if discord_gg_CDg3VKmWp9_215 == 0 then
        return math.floor(discord_gg_CDg3VKmWp9_554)
    end

    return tonumber(string.format("%." .. Rounding .. "f", discord_gg_CDg3VKmWp9_554))
end

local function discord_gg_CDg3VKmWp9_288(discord_gg_CDg3VKmWp9_136: string, discord_gg_CDg3VKmWp9_357: string): (boolean, number)
    if discord_gg_CDg3VKmWp9_357 == "" then
        return true, 0
    end
    if discord_gg_CDg3VKmWp9_136 == "" then
        return false, 0
    end

    local discord_gg_CDg3VKmWp9_289 = discord_gg_CDg3VKmWp9_136:find(discord_gg_CDg3VKmWp9_357, 1, true)
    if discord_gg_CDg3VKmWp9_289 then
        local discord_gg_CDg3VKmWp9_290 = discord_gg_CDg3VKmWp9_289 > 1 and discord_gg_CDg3VKmWp9_136:sub(discord_gg_CDg3VKmWp9_289 - 1, discord_gg_CDg3VKmWp9_289 - 1) or ""
        local discord_gg_CDg3VKmWp9_291 = discord_gg_CDg3VKmWp9_289 == 1 or discord_gg_CDg3VKmWp9_290:match("[%s%p_]") ~= nil

        return true, 1e5 - discord_gg_CDg3VKmWp9_289 + (discord_gg_CDg3VKmWp9_291 and 500 or 0) + (discord_gg_CDg3VKmWp9_357:len() * 5)
    end

    local discord_gg_CDg3VKmWp9_292, discord_gg_CDg3VKmWp9_293 = discord_gg_CDg3VKmWp9_136:len(), discord_gg_CDg3VKmWp9_357:len()
    if discord_gg_CDg3VKmWp9_293 > discord_gg_CDg3VKmWp9_292 then
        return false, 0
    end

    local discord_gg_CDg3VKmWp9_294 = 1
    local discord_gg_CDg3VKmWp9_295 = 0
    local discord_gg_CDg3VKmWp9_296 = 0
    local discord_gg_CDg3VKmWp9_297 = 0

    for discord_gg_CDg3VKmWp9_298 = 1, discord_gg_CDg3VKmWp9_292 do
        if discord_gg_CDg3VKmWp9_294 > discord_gg_CDg3VKmWp9_293 then
            break
        end

        if discord_gg_CDg3VKmWp9_136:sub(discord_gg_CDg3VKmWp9_298, discord_gg_CDg3VKmWp9_298) == discord_gg_CDg3VKmWp9_357:sub(discord_gg_CDg3VKmWp9_294, discord_gg_CDg3VKmWp9_294) then
            local discord_gg_CDg3VKmWp9_290 = discord_gg_CDg3VKmWp9_298 > 1 and discord_gg_CDg3VKmWp9_136:sub(discord_gg_CDg3VKmWp9_298 - 1, discord_gg_CDg3VKmWp9_298 - 1) or ""
            local discord_gg_CDg3VKmWp9_291 = discord_gg_CDg3VKmWp9_298 == 1 or discord_gg_CDg3VKmWp9_290:match("[%s%p_]") ~= nil

            discord_gg_CDg3VKmWp9_296 = (discord_gg_CDg3VKmWp9_297 == discord_gg_CDg3VKmWp9_298 - 1) and (discord_gg_CDg3VKmWp9_296 + 1) or 1
            discord_gg_CDg3VKmWp9_295 += 1 + (discord_gg_CDg3VKmWp9_291 and 6 or 0) + math.min(discord_gg_CDg3VKmWp9_296 - 1, 5) * 3

            discord_gg_CDg3VKmWp9_297 = discord_gg_CDg3VKmWp9_298
            discord_gg_CDg3VKmWp9_294 += 1
        end
    end

    if discord_gg_CDg3VKmWp9_294 <= discord_gg_CDg3VKmWp9_293 then
        return false, 0
    end

    discord_gg_CDg3VKmWp9_295 -= (discord_gg_CDg3VKmWp9_297 - discord_gg_CDg3VKmWp9_293) * 0.05
    return true, discord_gg_CDg3VKmWp9_295
end

local function discord_gg_CDg3VKmWp9_299(discord_gg_CDg3VKmWp9_357: string): string
    return (discord_gg_CDg3VKmWp9_357:gsub("%s+", ""))
end

local function discord_gg_CDg3VKmWp9_300(discord_gg_CDg3VKmWp9_136: any, discord_gg_CDg3VKmWp9_357: string): (boolean, number)
    if typeof(discord_gg_CDg3VKmWp9_136) ~= "string" or discord_gg_CDg3VKmWp9_136 == "" then
        return false, 0
    end

    return discord_gg_CDg3VKmWp9_288(discord_gg_CDg3VKmWp9_136:lower(), discord_gg_CDg3VKmWp9_357)
end

local function discord_gg_CDg3VKmWp9_301(discord_gg_CDg3VKmWp9_136: any, discord_gg_CDg3VKmWp9_357: string): number
    if typeof(discord_gg_CDg3VKmWp9_136) ~= "string" or discord_gg_CDg3VKmWp9_136 == "" then
        return 0
    end

    local discord_gg_CDg3VKmWp9_302 = discord_gg_CDg3VKmWp9_299(discord_gg_CDg3VKmWp9_136:lower())
    local discord_gg_CDg3VKmWp9_303, discord_gg_CDg3VKmWp9_295 = discord_gg_CDg3VKmWp9_288(discord_gg_CDg3VKmWp9_302, discord_gg_CDg3VKmWp9_357)
    if not discord_gg_CDg3VKmWp9_303 then
        return 0
    end

    if discord_gg_CDg3VKmWp9_302 == discord_gg_CDg3VKmWp9_357 then
        discord_gg_CDg3VKmWp9_295 += 1000
    end

    return discord_gg_CDg3VKmWp9_295
end

local function discord_gg_CDg3VKmWp9_304(ElementInfo, discord_gg_CDg3VKmWp9_357: string, ForceMatch: boolean?): boolean
    if not ElementInfo then
        return false
    end
    if ForceMatch then
        return true
    end

    if discord_gg_CDg3VKmWp9_300(ElementInfo.Text, discord_gg_CDg3VKmWp9_357) then
        return true
    end
    if discord_gg_CDg3VKmWp9_300(ElementInfo.Tooltip, discord_gg_CDg3VKmWp9_357) then
        return true
    end
    if discord_gg_CDg3VKmWp9_300(ElementInfo.DisabledTooltip, discord_gg_CDg3VKmWp9_357) then
        return true
    end

    if typeof(ElementInfo.Values) == "table" then
        local discord_gg_CDg3VKmWp9_305 = 0
        for discord_gg_CDg3VKmWp9_284, discord_gg_CDg3VKmWp9_554 in ElementInfo.Values do
            discord_gg_CDg3VKmWp9_305 += 1
            if discord_gg_CDg3VKmWp9_305 > 200 then
                break
            end

            if discord_gg_CDg3VKmWp9_300(discord_gg_CDg3VKmWp9_554, discord_gg_CDg3VKmWp9_357) or (typeof(discord_gg_CDg3VKmWp9_554) ~= "string" and discord_gg_CDg3VKmWp9_300(tostring(discord_gg_CDg3VKmWp9_554), discord_gg_CDg3VKmWp9_357)) then
                return true
            end
            if typeof(discord_gg_CDg3VKmWp9_284) == "string" and discord_gg_CDg3VKmWp9_300(discord_gg_CDg3VKmWp9_284, discord_gg_CDg3VKmWp9_357) then
                return true
            end
        end
    end

    return false
end

local function discord_gg_CDg3VKmWp9_306(discord_gg_CDg3VKmWp9_878: boolean?)
    local discord_gg_CDg3VKmWp9_307 = Players:GetPlayers()

    if discord_gg_CDg3VKmWp9_878 then
        local discord_gg_CDg3VKmWp9_308 = table.find(discord_gg_CDg3VKmWp9_307, discord_gg_CDg3VKmWp9_5)
        if discord_gg_CDg3VKmWp9_308 then
            table.remove(discord_gg_CDg3VKmWp9_307, discord_gg_CDg3VKmWp9_308)
        end
    end

    table.sort(discord_gg_CDg3VKmWp9_307, function(Player1, Player2)
        return Player1.Name:lower() < Player2.Name:lower()
    end)

    return discord_gg_CDg3VKmWp9_307
end
local function discord_gg_CDg3VKmWp9_309()
    local discord_gg_CDg3VKmWp9_310 = Teams:GetTeams()

    table.sort(discord_gg_CDg3VKmWp9_310, function(Team1, Team2)
        return Team1.Name:lower() < Team2.Name:lower()
    end)

    return discord_gg_CDg3VKmWp9_310
end

function discord_gg_CDg3VKmWp9_34:UpdateDependencyBoxes()
    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_966 in discord_gg_CDg3VKmWp9_34.DependencyBoxes do
        discord_gg_CDg3VKmWp9_966:Update(true)
    end

    if discord_gg_CDg3VKmWp9_34.Searching then
        discord_gg_CDg3VKmWp9_34:UpdateSearch(discord_gg_CDg3VKmWp9_34.SearchText)
    end
end

function discord_gg_CDg3VKmWp9_34:UpdateAddons(discord_gg_CDg3VKmWp9_403)
    if not discord_gg_CDg3VKmWp9_403 or not discord_gg_CDg3VKmWp9_403.Addons then
        return
    end

    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_830 in discord_gg_CDg3VKmWp9_403.Addons do
        discord_gg_CDg3VKmWp9_830:Update()
    end
end

local function discord_gg_CDg3VKmWp9_311(discord_gg_CDg3VKmWp9_853, discord_gg_CDg3VKmWp9_357, ForceVisible: boolean?)
    local discord_gg_CDg3VKmWp9_312 = 0
    local discord_gg_CDg3VKmWp9_313 = 0

    for discord_gg_CDg3VKmWp9_26, ElementInfo in discord_gg_CDg3VKmWp9_853.Elements do
        if ElementInfo.Type == "Divider" then
            ElementInfo.Holder.Visible = false
            continue
        elseif ElementInfo.SubButton then
            local discord_gg_CDg3VKmWp9_174 = false

            if discord_gg_CDg3VKmWp9_304(ElementInfo, discord_gg_CDg3VKmWp9_357, ForceVisible) and ElementInfo.Visible then
                discord_gg_CDg3VKmWp9_174 = true
                discord_gg_CDg3VKmWp9_313 = math.max(discord_gg_CDg3VKmWp9_313, discord_gg_CDg3VKmWp9_301(ElementInfo.Text, discord_gg_CDg3VKmWp9_357))
            else
                ElementInfo.Base.Visible = false
            end
            if discord_gg_CDg3VKmWp9_304(ElementInfo.SubButton, discord_gg_CDg3VKmWp9_357, ForceVisible) and ElementInfo.SubButton.Visible then
                discord_gg_CDg3VKmWp9_174 = true
                discord_gg_CDg3VKmWp9_313 = math.max(discord_gg_CDg3VKmWp9_313, discord_gg_CDg3VKmWp9_301(ElementInfo.SubButton.Text, discord_gg_CDg3VKmWp9_357))
            else
                ElementInfo.SubButton.Base.Visible = false
            end
            ElementInfo.Holder.Visible = discord_gg_CDg3VKmWp9_174
            if discord_gg_CDg3VKmWp9_174 then
                discord_gg_CDg3VKmWp9_312 += 1
            end

            continue
        end

        if ElementInfo.Text and discord_gg_CDg3VKmWp9_304(ElementInfo, discord_gg_CDg3VKmWp9_357, ForceVisible) and ElementInfo.Visible then
            ElementInfo.Holder.Visible = true
            discord_gg_CDg3VKmWp9_312 += 1
            discord_gg_CDg3VKmWp9_313 = math.max(discord_gg_CDg3VKmWp9_313, discord_gg_CDg3VKmWp9_301(ElementInfo.Text, discord_gg_CDg3VKmWp9_357))
        else
            ElementInfo.Holder.Visible = false
        end
    end

    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_966 in discord_gg_CDg3VKmWp9_853.DependencyBoxes do
        if not discord_gg_CDg3VKmWp9_966.Visible then
            continue
        end

        local discord_gg_CDg3VKmWp9_314, discord_gg_CDg3VKmWp9_315 = discord_gg_CDg3VKmWp9_311(discord_gg_CDg3VKmWp9_966, discord_gg_CDg3VKmWp9_357, ForceVisible)
        discord_gg_CDg3VKmWp9_312 += discord_gg_CDg3VKmWp9_314
        if discord_gg_CDg3VKmWp9_315 > discord_gg_CDg3VKmWp9_313 then
            discord_gg_CDg3VKmWp9_313 = discord_gg_CDg3VKmWp9_315
        end
    end

    discord_gg_CDg3VKmWp9_853.Holder.Visible = discord_gg_CDg3VKmWp9_312 > 0
    return discord_gg_CDg3VKmWp9_312, discord_gg_CDg3VKmWp9_313
end
local function discord_gg_CDg3VKmWp9_316(discord_gg_CDg3VKmWp9_853)
    for discord_gg_CDg3VKmWp9_26, ElementInfo in discord_gg_CDg3VKmWp9_853.Elements do
        ElementInfo.Holder.Visible = ElementInfo.Visible ~= false

        if ElementInfo.SubButton then
            ElementInfo.Base.Visible = ElementInfo.Visible
            ElementInfo.SubButton.Base.Visible = ElementInfo.SubButton.Visible
        end
    end

    discord_gg_CDg3VKmWp9_853:Resize()
    discord_gg_CDg3VKmWp9_853.Holder.Visible = true

    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_966 in discord_gg_CDg3VKmWp9_853.DependencyBoxes do
        if not discord_gg_CDg3VKmWp9_966.Visible then
            continue
        end

        discord_gg_CDg3VKmWp9_316(discord_gg_CDg3VKmWp9_966)
    end
end

function discord_gg_CDg3VKmWp9_317(discord_gg_CDg3VKmWp9_853: any)
    if not discord_gg_CDg3VKmWp9_853.PopOutFloat then
        return
    end

    discord_gg_CDg3VKmWp9_853.PopOutFloat.Visible = discord_gg_CDg3VKmWp9_853.BoxHolder.Visible ~= false and discord_gg_CDg3VKmWp9_853.Visible ~= false
end

local function discord_gg_CDg3VKmWp9_318(Source: Instance, discord_gg_CDg3VKmWp9_229: Instance)
    local discord_gg_CDg3VKmWp9_319 = discord_gg_CDg3VKmWp9_34.Registry[Source]
    if discord_gg_CDg3VKmWp9_319 then
        local discord_gg_CDg3VKmWp9_320 = {}
        for discord_gg_CDg3VKmWp9_321, discord_gg_CDg3VKmWp9_325 in discord_gg_CDg3VKmWp9_319 do
            if discord_gg_CDg3VKmWp9_321 ~= "FontFace" then
                discord_gg_CDg3VKmWp9_320[discord_gg_CDg3VKmWp9_321] = discord_gg_CDg3VKmWp9_325
            end
        end
        if next(discord_gg_CDg3VKmWp9_320) then
            discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_229] = discord_gg_CDg3VKmWp9_320
        end

        local discord_gg_CDg3VKmWp9_322 = discord_gg_CDg3VKmWp9_229:FindFirstChild("__IconFont")
        if discord_gg_CDg3VKmWp9_322 and discord_gg_CDg3VKmWp9_322:IsA("TextLabel") and discord_gg_CDg3VKmWp9_319.ImageColor3 then
            discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_322] = { discord_gg_CDg3VKmWp9_129 = discord_gg_CDg3VKmWp9_319.ImageColor3 }
        end
    end

    local discord_gg_CDg3VKmWp9_323 = Source:GetChildren()
    local discord_gg_CDg3VKmWp9_324 = discord_gg_CDg3VKmWp9_229:GetChildren()
    for discord_gg_CDg3VKmWp9_325 = 1, math.min(#SourceChildren, #CloneChildren) do
        discord_gg_CDg3VKmWp9_318(discord_gg_CDg3VKmWp9_323[discord_gg_CDg3VKmWp9_325], discord_gg_CDg3VKmWp9_324[discord_gg_CDg3VKmWp9_325])
    end
end

local function discord_gg_CDg3VKmWp9_326(discord_gg_CDg3VKmWp9_1177: GuiObject)
    for discord_gg_CDg3VKmWp9_26, Descendant in discord_gg_CDg3VKmWp9_1177:QueryDescendants("TextLabel, TextButton, TextBox") do
        Descendant.TextTransparency = math.max(Descendant.TextTransparency, 0.45)
    end

    for discord_gg_CDg3VKmWp9_26, Descendant in discord_gg_CDg3VKmWp9_1177:QueryDescendants("ImageLabel, ImageButton") do
        Descendant.ImageTransparency = math.max(Descendant.ImageTransparency, 0.45)

        local discord_gg_CDg3VKmWp9_322 = Descendant:FindFirstChild("__IconFont")
        if discord_gg_CDg3VKmWp9_322 and discord_gg_CDg3VKmWp9_322:IsA("TextLabel") then
            discord_gg_CDg3VKmWp9_322.TextColor3 = Descendant.ImageColor3
            discord_gg_CDg3VKmWp9_322.TextTransparency = math.max(discord_gg_CDg3VKmWp9_322.TextTransparency, 0.45)
        end
    end

    for discord_gg_CDg3VKmWp9_26, Descendant in discord_gg_CDg3VKmWp9_1177:QueryDescendants("GuiButton") do
        Descendant.Active = false
        Descendant.AutoButtonColor = false
    end
end

local function discord_gg_CDg3VKmWp9_327(discord_gg_CDg3VKmWp9_573: Vector2): boolean
    local discord_gg_CDg3VKmWp9_328 = discord_gg_CDg3VKmWp9_34.Window and discord_gg_CDg3VKmWp9_34.Window.MainFrame
    if not discord_gg_CDg3VKmWp9_328 or not discord_gg_CDg3VKmWp9_34.Toggled or not discord_gg_CDg3VKmWp9_328.Visible then
        return true
    end

    return not discord_gg_CDg3VKmWp9_34:MouseIsOverFrame(discord_gg_CDg3VKmWp9_328, discord_gg_CDg3VKmWp9_573)
end

local function discord_gg_CDg3VKmWp9_329(discord_gg_CDg3VKmWp9_573: Vector2): GuiObject?
    local discord_gg_CDg3VKmWp9_333: GuiObject? = nil
    local discord_gg_CDg3VKmWp9_330 = -math.huge
    local discord_gg_CDg3VKmWp9_39 = discord_gg_CDg3VKmWp9_34.Floats

    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_414 in discord_gg_CDg3VKmWp9_34.DraggableElements do
        if not discord_gg_CDg3VKmWp9_414 or not discord_gg_CDg3VKmWp9_414.Parent or not discord_gg_CDg3VKmWp9_414.Visible then
            continue
        end
        if discord_gg_CDg3VKmWp9_39 and discord_gg_CDg3VKmWp9_414.Parent ~= discord_gg_CDg3VKmWp9_39 then
            continue
        end
        if not discord_gg_CDg3VKmWp9_34:MouseIsOverFrame(discord_gg_CDg3VKmWp9_414, discord_gg_CDg3VKmWp9_573) then
            continue
        end

        local discord_gg_CDg3VKmWp9_331 = tonumber(select(2, pcall(function() return discord_gg_CDg3VKmWp9_414:GetSiblingIndex() end))) or 0
        local discord_gg_CDg3VKmWp9_332 = discord_gg_CDg3VKmWp9_414.ZIndex * 100000 + discord_gg_CDg3VKmWp9_331
        if discord_gg_CDg3VKmWp9_332 >= discord_gg_CDg3VKmWp9_330 then
            discord_gg_CDg3VKmWp9_330 = discord_gg_CDg3VKmWp9_332
            discord_gg_CDg3VKmWp9_333 = discord_gg_CDg3VKmWp9_414
        end
    end

    return discord_gg_CDg3VKmWp9_333
end

local function discord_gg_CDg3VKmWp9_334(discord_gg_CDg3VKmWp9_853: any, Reserved: number): number
    local discord_gg_CDg3VKmWp9_335 = discord_gg_CDg3VKmWp9_853.PopOutFloat
    local discord_gg_CDg3VKmWp9_38 = discord_gg_CDg3VKmWp9_34.ScreenGui
    if not discord_gg_CDg3VKmWp9_335 or not discord_gg_CDg3VKmWp9_38 then
        return math.huge
    end

    local discord_gg_CDg3VKmWp9_165 = 12 * discord_gg_CDg3VKmWp9_34.DPIScale
    local discord_gg_CDg3VKmWp9_336 = discord_gg_CDg3VKmWp9_38.AbsolutePosition.Y + discord_gg_CDg3VKmWp9_38.AbsoluteSize.Y - discord_gg_CDg3VKmWp9_165
    local discord_gg_CDg3VKmWp9_337 = math.min(discord_gg_CDg3VKmWp9_336 - discord_gg_CDg3VKmWp9_335.AbsolutePosition.Y, discord_gg_CDg3VKmWp9_38.AbsoluteSize.Y * 0.9)
    local discord_gg_CDg3VKmWp9_338 = math.max(0, discord_gg_CDg3VKmWp9_337 / discord_gg_CDg3VKmWp9_34.DPIScale - Reserved)

    local discord_gg_CDg3VKmWp9_339 = discord_gg_CDg3VKmWp9_853.PopOutMaxHeight
    if typeof(discord_gg_CDg3VKmWp9_339) == "number" then
        return math.min(discord_gg_CDg3VKmWp9_338, math.max(0, discord_gg_CDg3VKmWp9_339))
    end

    return discord_gg_CDg3VKmWp9_338
end

local function discord_gg_CDg3VKmWp9_340(discord_gg_CDg3VKmWp9_971, discord_gg_CDg3VKmWp9_357)
    if not discord_gg_CDg3VKmWp9_971 then
        return false, 0
    end

    local discord_gg_CDg3VKmWp9_341 = false
    local discord_gg_CDg3VKmWp9_313 = 0

    local discord_gg_CDg3VKmWp9_342 = discord_gg_CDg3VKmWp9_300(discord_gg_CDg3VKmWp9_971.Name, discord_gg_CDg3VKmWp9_357) or discord_gg_CDg3VKmWp9_300(discord_gg_CDg3VKmWp9_971.Description, discord_gg_CDg3VKmWp9_357)
    discord_gg_CDg3VKmWp9_313 = math.max(discord_gg_CDg3VKmWp9_313, discord_gg_CDg3VKmWp9_301(discord_gg_CDg3VKmWp9_971.Name, discord_gg_CDg3VKmWp9_357), discord_gg_CDg3VKmWp9_301(discord_gg_CDg3VKmWp9_971.Description, discord_gg_CDg3VKmWp9_357))

    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_77 in discord_gg_CDg3VKmWp9_971.Groupboxes do
        if discord_gg_CDg3VKmWp9_77.Visible == false then
            continue
        end

        local discord_gg_CDg3VKmWp9_343 = discord_gg_CDg3VKmWp9_342 or (discord_gg_CDg3VKmWp9_300(discord_gg_CDg3VKmWp9_77.Name, discord_gg_CDg3VKmWp9_357) or discord_gg_CDg3VKmWp9_300(discord_gg_CDg3VKmWp9_77.Description, discord_gg_CDg3VKmWp9_357))
        discord_gg_CDg3VKmWp9_313 = math.max(discord_gg_CDg3VKmWp9_313, discord_gg_CDg3VKmWp9_301(discord_gg_CDg3VKmWp9_77.Name, discord_gg_CDg3VKmWp9_357), discord_gg_CDg3VKmWp9_301(discord_gg_CDg3VKmWp9_77.Description, discord_gg_CDg3VKmWp9_357))

        local discord_gg_CDg3VKmWp9_312 = 0
        for discord_gg_CDg3VKmWp9_26, ElementInfo in discord_gg_CDg3VKmWp9_77.Elements do
            if ElementInfo.Type == "Divider" then
                ElementInfo.Holder.Visible = false
                continue
            elseif ElementInfo.SubButton then
                local discord_gg_CDg3VKmWp9_174 = false
                if discord_gg_CDg3VKmWp9_304(ElementInfo, discord_gg_CDg3VKmWp9_357, discord_gg_CDg3VKmWp9_343) and ElementInfo.Visible then
                    discord_gg_CDg3VKmWp9_174 = true
                    discord_gg_CDg3VKmWp9_313 = math.max(discord_gg_CDg3VKmWp9_313, discord_gg_CDg3VKmWp9_301(ElementInfo.Text, discord_gg_CDg3VKmWp9_357))
                else
                    ElementInfo.Base.Visible = false
                end

                if discord_gg_CDg3VKmWp9_304(ElementInfo.SubButton, discord_gg_CDg3VKmWp9_357, discord_gg_CDg3VKmWp9_343) and ElementInfo.SubButton.Visible then
                    discord_gg_CDg3VKmWp9_174 = true
                    discord_gg_CDg3VKmWp9_313 = math.max(discord_gg_CDg3VKmWp9_313, discord_gg_CDg3VKmWp9_301(ElementInfo.SubButton.Text, discord_gg_CDg3VKmWp9_357))
                else
                    ElementInfo.SubButton.Base.Visible = false
                end

                ElementInfo.Holder.Visible = discord_gg_CDg3VKmWp9_174
                if discord_gg_CDg3VKmWp9_174 then
                    discord_gg_CDg3VKmWp9_312 += 1
                end

                continue
            end

            if ElementInfo.Text and discord_gg_CDg3VKmWp9_304(ElementInfo, discord_gg_CDg3VKmWp9_357, discord_gg_CDg3VKmWp9_343) and ElementInfo.Visible then
                ElementInfo.Holder.Visible = true
                discord_gg_CDg3VKmWp9_312 += 1
                discord_gg_CDg3VKmWp9_313 = math.max(discord_gg_CDg3VKmWp9_313, discord_gg_CDg3VKmWp9_301(ElementInfo.Text, discord_gg_CDg3VKmWp9_357))
            else
                ElementInfo.Holder.Visible = false
            end
        end

        for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_966 in discord_gg_CDg3VKmWp9_77.DependencyBoxes do
            if not discord_gg_CDg3VKmWp9_966.Visible then
                continue
            end

            local discord_gg_CDg3VKmWp9_314, discord_gg_CDg3VKmWp9_315 = discord_gg_CDg3VKmWp9_311(discord_gg_CDg3VKmWp9_966, discord_gg_CDg3VKmWp9_357, discord_gg_CDg3VKmWp9_343)
            discord_gg_CDg3VKmWp9_312 += discord_gg_CDg3VKmWp9_314
            if discord_gg_CDg3VKmWp9_315 > discord_gg_CDg3VKmWp9_313 then
                discord_gg_CDg3VKmWp9_313 = discord_gg_CDg3VKmWp9_315
            end
        end

        if discord_gg_CDg3VKmWp9_312 > 0 then
            discord_gg_CDg3VKmWp9_77:Resize()
            discord_gg_CDg3VKmWp9_341 = true
        end
        discord_gg_CDg3VKmWp9_77.BoxHolder.Visible = discord_gg_CDg3VKmWp9_312 > 0
        discord_gg_CDg3VKmWp9_317(discord_gg_CDg3VKmWp9_77)
    end

    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_180 in discord_gg_CDg3VKmWp9_971.Tabboxes do
        local discord_gg_CDg3VKmWp9_344 = 0
        local discord_gg_CDg3VKmWp9_312 = {}
        local discord_gg_CDg3VKmWp9_345 = {}

        for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_351 in discord_gg_CDg3VKmWp9_180.Tabs do
            discord_gg_CDg3VKmWp9_312[discord_gg_CDg3VKmWp9_351] = 0

            local discord_gg_CDg3VKmWp9_346 = discord_gg_CDg3VKmWp9_342 or discord_gg_CDg3VKmWp9_300(discord_gg_CDg3VKmWp9_351.Name, discord_gg_CDg3VKmWp9_357)
            local discord_gg_CDg3VKmWp9_347 = discord_gg_CDg3VKmWp9_301(discord_gg_CDg3VKmWp9_351.Name, discord_gg_CDg3VKmWp9_357)
            discord_gg_CDg3VKmWp9_313 = math.max(discord_gg_CDg3VKmWp9_313, discord_gg_CDg3VKmWp9_347)

            for discord_gg_CDg3VKmWp9_26, ElementInfo in discord_gg_CDg3VKmWp9_351.Elements do
                if ElementInfo.Type == "Divider" then
                    ElementInfo.Holder.Visible = false
                    continue
                elseif ElementInfo.SubButton then
                    local discord_gg_CDg3VKmWp9_174 = false
                    if discord_gg_CDg3VKmWp9_304(ElementInfo, discord_gg_CDg3VKmWp9_357, discord_gg_CDg3VKmWp9_346) and ElementInfo.Visible then
                        discord_gg_CDg3VKmWp9_174 = true
                        local discord_gg_CDg3VKmWp9_348 = discord_gg_CDg3VKmWp9_301(ElementInfo.Text, discord_gg_CDg3VKmWp9_357)
                        discord_gg_CDg3VKmWp9_347 = math.max(discord_gg_CDg3VKmWp9_347, discord_gg_CDg3VKmWp9_348)
                        discord_gg_CDg3VKmWp9_313 = math.max(discord_gg_CDg3VKmWp9_313, discord_gg_CDg3VKmWp9_348)
                    else
                        ElementInfo.Base.Visible = false
                    end

                    if discord_gg_CDg3VKmWp9_304(ElementInfo.SubButton, discord_gg_CDg3VKmWp9_357, discord_gg_CDg3VKmWp9_346) and ElementInfo.SubButton.Visible then
                        discord_gg_CDg3VKmWp9_174 = true
                        local discord_gg_CDg3VKmWp9_348 = discord_gg_CDg3VKmWp9_301(ElementInfo.SubButton.Text, discord_gg_CDg3VKmWp9_357)
                        discord_gg_CDg3VKmWp9_347 = math.max(discord_gg_CDg3VKmWp9_347, discord_gg_CDg3VKmWp9_348)
                        discord_gg_CDg3VKmWp9_313 = math.max(discord_gg_CDg3VKmWp9_313, discord_gg_CDg3VKmWp9_348)
                    else
                        ElementInfo.SubButton.Base.Visible = false
                    end

                    ElementInfo.Holder.Visible = discord_gg_CDg3VKmWp9_174
                    if discord_gg_CDg3VKmWp9_174 then
                        discord_gg_CDg3VKmWp9_312[discord_gg_CDg3VKmWp9_351] += 1
                    end

                    continue
                end

                if ElementInfo.Text and discord_gg_CDg3VKmWp9_304(ElementInfo, discord_gg_CDg3VKmWp9_357, discord_gg_CDg3VKmWp9_346) and ElementInfo.Visible then
                    ElementInfo.Holder.Visible = true
                    discord_gg_CDg3VKmWp9_312[discord_gg_CDg3VKmWp9_351] += 1
                    local discord_gg_CDg3VKmWp9_348 = discord_gg_CDg3VKmWp9_301(ElementInfo.Text, discord_gg_CDg3VKmWp9_357)
                    discord_gg_CDg3VKmWp9_347 = math.max(discord_gg_CDg3VKmWp9_347, discord_gg_CDg3VKmWp9_348)
                    discord_gg_CDg3VKmWp9_313 = math.max(discord_gg_CDg3VKmWp9_313, discord_gg_CDg3VKmWp9_348)
                else
                    ElementInfo.Holder.Visible = false
                end
            end

            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_966 in discord_gg_CDg3VKmWp9_351.DependencyBoxes do
                if not discord_gg_CDg3VKmWp9_966.Visible then
                    continue
                end

                local discord_gg_CDg3VKmWp9_314, discord_gg_CDg3VKmWp9_315 = discord_gg_CDg3VKmWp9_311(discord_gg_CDg3VKmWp9_966, discord_gg_CDg3VKmWp9_357, discord_gg_CDg3VKmWp9_346)
                discord_gg_CDg3VKmWp9_312[discord_gg_CDg3VKmWp9_351] += discord_gg_CDg3VKmWp9_314
                discord_gg_CDg3VKmWp9_347 = math.max(discord_gg_CDg3VKmWp9_347, discord_gg_CDg3VKmWp9_315)
                discord_gg_CDg3VKmWp9_313 = math.max(discord_gg_CDg3VKmWp9_313, discord_gg_CDg3VKmWp9_315)
            end

            discord_gg_CDg3VKmWp9_345[discord_gg_CDg3VKmWp9_351] = discord_gg_CDg3VKmWp9_347
        end

        local discord_gg_CDg3VKmWp9_349 = nil
        local discord_gg_CDg3VKmWp9_350 = -1

        for discord_gg_CDg3VKmWp9_351, discord_gg_CDg3VKmWp9_174 in discord_gg_CDg3VKmWp9_312 do
            discord_gg_CDg3VKmWp9_351.ButtonHolder.Visible = discord_gg_CDg3VKmWp9_174 > 0
            if discord_gg_CDg3VKmWp9_174 > 0 then
                discord_gg_CDg3VKmWp9_344 += 1
                discord_gg_CDg3VKmWp9_341 = true

                local discord_gg_CDg3VKmWp9_347 = discord_gg_CDg3VKmWp9_345[discord_gg_CDg3VKmWp9_351] or 0
                if discord_gg_CDg3VKmWp9_347 > discord_gg_CDg3VKmWp9_350 then
                    discord_gg_CDg3VKmWp9_350 = discord_gg_CDg3VKmWp9_347
                    discord_gg_CDg3VKmWp9_349 = discord_gg_CDg3VKmWp9_351
                end
            end
        end

        local discord_gg_CDg3VKmWp9_352 = discord_gg_CDg3VKmWp9_180.ActiveTab
        local discord_gg_CDg3VKmWp9_353 = discord_gg_CDg3VKmWp9_352 and (discord_gg_CDg3VKmWp9_312[discord_gg_CDg3VKmWp9_352] or 0) > 0
        local discord_gg_CDg3VKmWp9_354 = discord_gg_CDg3VKmWp9_352 and (discord_gg_CDg3VKmWp9_345[discord_gg_CDg3VKmWp9_352] or -1) or -1

        if discord_gg_CDg3VKmWp9_353 and discord_gg_CDg3VKmWp9_354 >= discord_gg_CDg3VKmWp9_350 then
            discord_gg_CDg3VKmWp9_352:Resize()
        elseif discord_gg_CDg3VKmWp9_349 then
            discord_gg_CDg3VKmWp9_349:Show()
        end

        discord_gg_CDg3VKmWp9_180.BoxHolder.Visible = discord_gg_CDg3VKmWp9_344 > 0
        discord_gg_CDg3VKmWp9_317(discord_gg_CDg3VKmWp9_180)
    end

    return discord_gg_CDg3VKmWp9_341, discord_gg_CDg3VKmWp9_313
end
local function discord_gg_CDg3VKmWp9_355(discord_gg_CDg3VKmWp9_971)
    if not discord_gg_CDg3VKmWp9_971 then
        return
    end

    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_77 in discord_gg_CDg3VKmWp9_971.Groupboxes do
        for discord_gg_CDg3VKmWp9_26, ElementInfo in discord_gg_CDg3VKmWp9_77.Elements do
            ElementInfo.Holder.Visible = ElementInfo.Visible ~= false

            if ElementInfo.SubButton then
                ElementInfo.Base.Visible = ElementInfo.Visible
                ElementInfo.SubButton.Base.Visible = ElementInfo.SubButton.Visible
            end
        end

        for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_966 in discord_gg_CDg3VKmWp9_77.DependencyBoxes do
            if not discord_gg_CDg3VKmWp9_966.Visible then
                continue
            end

            discord_gg_CDg3VKmWp9_316(discord_gg_CDg3VKmWp9_966)
        end

        discord_gg_CDg3VKmWp9_77:Resize()
        discord_gg_CDg3VKmWp9_77.BoxHolder.Visible = discord_gg_CDg3VKmWp9_77.Visible ~= false
        discord_gg_CDg3VKmWp9_317(discord_gg_CDg3VKmWp9_77)
    end

    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_180 in discord_gg_CDg3VKmWp9_971.Tabboxes do
        for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_351 in discord_gg_CDg3VKmWp9_180.Tabs do
            for discord_gg_CDg3VKmWp9_26, ElementInfo in discord_gg_CDg3VKmWp9_351.Elements do
                ElementInfo.Holder.Visible = ElementInfo.Visible ~= false

                if ElementInfo.SubButton then
                    ElementInfo.Base.Visible = ElementInfo.Visible
                    ElementInfo.SubButton.Base.Visible = ElementInfo.SubButton.Visible
                end
            end

            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_966 in discord_gg_CDg3VKmWp9_351.DependencyBoxes do
                if not discord_gg_CDg3VKmWp9_966.Visible then
                    continue
                end

                discord_gg_CDg3VKmWp9_316(discord_gg_CDg3VKmWp9_966)
            end

            discord_gg_CDg3VKmWp9_351.ButtonHolder.Visible = true
        end

        if discord_gg_CDg3VKmWp9_180.ActiveTab then
            discord_gg_CDg3VKmWp9_180.ActiveTab:Resize()
        end
        discord_gg_CDg3VKmWp9_180.BoxHolder.Visible = true
        discord_gg_CDg3VKmWp9_317(discord_gg_CDg3VKmWp9_180)
    end
end

function discord_gg_CDg3VKmWp9_34:UpdateSearch(discord_gg_CDg3VKmWp9_43)
    discord_gg_CDg3VKmWp9_34.SearchText = discord_gg_CDg3VKmWp9_43

    local discord_gg_CDg3VKmWp9_356 = {}
    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_971 in discord_gg_CDg3VKmWp9_34.Tabs do
        if typeof(discord_gg_CDg3VKmWp9_971) == "table" and not discord_gg_CDg3VKmWp9_971.IsKeyTab then
            table.insert(discord_gg_CDg3VKmWp9_356, discord_gg_CDg3VKmWp9_971)
        end
    end

    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_971 in discord_gg_CDg3VKmWp9_356 do
        discord_gg_CDg3VKmWp9_355(discord_gg_CDg3VKmWp9_971)
    end

    local discord_gg_CDg3VKmWp9_357 = discord_gg_CDg3VKmWp9_299(discord_gg_CDg3VKmWp9_43:lower())
    if discord_gg_CDg3VKmWp9_286(discord_gg_CDg3VKmWp9_357) == "" then
        discord_gg_CDg3VKmWp9_34.Searching = false
        discord_gg_CDg3VKmWp9_34.LastSearchTab = nil
        return
    end
    if not discord_gg_CDg3VKmWp9_34.GlobalSearch and discord_gg_CDg3VKmWp9_34.ActiveTab and discord_gg_CDg3VKmWp9_34.ActiveTab.IsKeyTab then
        discord_gg_CDg3VKmWp9_34.Searching = false
        discord_gg_CDg3VKmWp9_34.LastSearchTab = nil
        return
    end

    discord_gg_CDg3VKmWp9_34.Searching = true

    local discord_gg_CDg3VKmWp9_358 = nil
    local discord_gg_CDg3VKmWp9_313 = -1
    local discord_gg_CDg3VKmWp9_359 = -1
    local discord_gg_CDg3VKmWp9_360 = false

    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_971 in discord_gg_CDg3VKmWp9_356 do
        local discord_gg_CDg3VKmWp9_341, discord_gg_CDg3VKmWp9_295 = discord_gg_CDg3VKmWp9_340(discord_gg_CDg3VKmWp9_971, discord_gg_CDg3VKmWp9_357)
        if not discord_gg_CDg3VKmWp9_341 then
            continue
        end

        if discord_gg_CDg3VKmWp9_971 == discord_gg_CDg3VKmWp9_34.ActiveTab then
            discord_gg_CDg3VKmWp9_360 = true
            discord_gg_CDg3VKmWp9_359 = discord_gg_CDg3VKmWp9_295
        end
        if discord_gg_CDg3VKmWp9_295 > discord_gg_CDg3VKmWp9_313 then
            discord_gg_CDg3VKmWp9_313 = discord_gg_CDg3VKmWp9_295
            discord_gg_CDg3VKmWp9_358 = discord_gg_CDg3VKmWp9_971
        end
    end

    if not discord_gg_CDg3VKmWp9_34.GlobalSearch then
        for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_971 in discord_gg_CDg3VKmWp9_356 do
            if discord_gg_CDg3VKmWp9_971 ~= discord_gg_CDg3VKmWp9_358 then
                discord_gg_CDg3VKmWp9_355(discord_gg_CDg3VKmWp9_971)
            end
        end
    end

    local discord_gg_CDg3VKmWp9_361 = discord_gg_CDg3VKmWp9_360 and discord_gg_CDg3VKmWp9_359 >= discord_gg_CDg3VKmWp9_313
    if discord_gg_CDg3VKmWp9_361 and discord_gg_CDg3VKmWp9_34.ActiveTab then
        discord_gg_CDg3VKmWp9_34.ActiveTab:RefreshSides()
    elseif discord_gg_CDg3VKmWp9_358 then
        local discord_gg_CDg3VKmWp9_362 = discord_gg_CDg3VKmWp9_43
        task.defer(function()
            if discord_gg_CDg3VKmWp9_34.SearchText ~= discord_gg_CDg3VKmWp9_362 then
                return
            end

            if discord_gg_CDg3VKmWp9_34.ActiveTab ~= discord_gg_CDg3VKmWp9_358 then
                discord_gg_CDg3VKmWp9_358:Show()
            elseif discord_gg_CDg3VKmWp9_34.ActiveTab then
                discord_gg_CDg3VKmWp9_34.ActiveTab:RefreshSides()
            end
        end)
    end

    discord_gg_CDg3VKmWp9_34.LastSearchTab = nil
end

function discord_gg_CDg3VKmWp9_34:AddToRegistry(discord_gg_CDg3VKmWp9_244, Properties)
    discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_244] = Properties
end

function discord_gg_CDg3VKmWp9_34:RemoveFromRegistry(discord_gg_CDg3VKmWp9_244)
    discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_244] = nil
end

function discord_gg_CDg3VKmWp9_34:UpdateColorsUsingRegistry()
    for discord_gg_CDg3VKmWp9_244, Properties in discord_gg_CDg3VKmWp9_34.Registry do
        for discord_gg_CDg3VKmWp9_321, discord_gg_CDg3VKmWp9_325 in Properties do
            local discord_gg_CDg3VKmWp9_363 = discord_gg_CDg3VKmWp9_269(discord_gg_CDg3VKmWp9_325)

            if discord_gg_CDg3VKmWp9_363 or typeof(discord_gg_CDg3VKmWp9_325) == "function" then
                discord_gg_CDg3VKmWp9_244[discord_gg_CDg3VKmWp9_321] = discord_gg_CDg3VKmWp9_363 or discord_gg_CDg3VKmWp9_325()
            end
        end
    end
end

function discord_gg_CDg3VKmWp9_34:SetDPIScale(discord_gg_CDg3VKmWp9_96: number)
    discord_gg_CDg3VKmWp9_34.DPIScale = discord_gg_CDg3VKmWp9_96 / 100
    discord_gg_CDg3VKmWp9_34.MinSize = discord_gg_CDg3VKmWp9_34.OriginalMinSize * discord_gg_CDg3VKmWp9_34.DPIScale

    for discord_gg_CDg3VKmWp9_26, UIScale in discord_gg_CDg3VKmWp9_34.Scales do
        UIScale.Scale = discord_gg_CDg3VKmWp9_34.DPIScale - (tonumber(discord_gg_CDg3VKmWp9_34.ScalesOffset[UIScale]) or 0)
    end

    for discord_gg_CDg3VKmWp9_26, Option in discord_gg_CDg3VKmWp9_10 do
        if Option.Type == "Dropdown" then
            Option:RecalculateListSize()
            Option:RefreshPool()
        end
    end

    for discord_gg_CDg3VKmWp9_26, Notification in discord_gg_CDg3VKmWp9_34.Notifications do
        Notification:Resize()
    end
end

function discord_gg_CDg3VKmWp9_34:GiveSignal(discord_gg_CDg3VKmWp9_274: RBXScriptConnection | RBXScriptSignal)
    local discord_gg_CDg3VKmWp9_364 = typeof(discord_gg_CDg3VKmWp9_274)
    if discord_gg_CDg3VKmWp9_274 and (discord_gg_CDg3VKmWp9_364 == "RBXScriptConnection" or discord_gg_CDg3VKmWp9_364 == "RBXScriptSignal") then
        table.insert(discord_gg_CDg3VKmWp9_34.Signals, discord_gg_CDg3VKmWp9_274)
    end

    return discord_gg_CDg3VKmWp9_274
end

function discord_gg_CDg3VKmWp9_365(discord_gg_CDg3VKmWp9_186: string)
    return typeof(discord_gg_CDg3VKmWp9_186) == "string" and (discord_gg_CDg3VKmWp9_186:match("^rbxasset://textures/") or discord_gg_CDg3VKmWp9_186:match("roblox%.com/asset/%?id=") or discord_gg_CDg3VKmWp9_186:match("rbxthumb://type="))
end

local function discord_gg_CDg3VKmWp9_366(discord_gg_CDg3VKmWp9_186: string, IncludeAssetId: boolean)
    return typeof(discord_gg_CDg3VKmWp9_186) == "string" and (discord_gg_CDg3VKmWp9_186:match("^content://") or (discord_gg_CDg3VKmWp9_186:match("^rbxasset://%x+/") or discord_gg_CDg3VKmWp9_186:match("^rbxasset://[^/]+/")) or (IncludeAssetId == true and discord_gg_CDg3VKmWp9_186:match("^rbxassetid://")))
end

type discord_gg_CDg3VKmWp9_186 = {
    discord_gg_CDg3VKmWp9_371: string,
    discord_gg_CDg3VKmWp9_19: number,
    discord_gg_CDg3VKmWp9_172: string,
    discord_gg_CDg3VKmWp9_372: Vector2,
    discord_gg_CDg3VKmWp9_373: Vector2,
    discord_gg_CDg3VKmWp9_127: Font?,
    discord_gg_CDg3VKmWp9_136: string?,
}

type IconModule = {
    discord_gg_CDg3VKmWp9_447: { string },
    GetAsset: (discord_gg_CDg3VKmWp9_171: string) -> discord_gg_CDg3VKmWp9_186?,
    GetFontAsset: ((discord_gg_CDg3VKmWp9_171: string) -> { discord_gg_CDg3VKmWp9_127: Font, discord_gg_CDg3VKmWp9_136: string }?)?,
}

local discord_gg_CDg3VKmWp9_367 = false
local discord_gg_CDg3VKmWp9_447: IconModule | nil = nil

function discord_gg_CDg3VKmWp9_34:GetIcon(discord_gg_CDg3VKmWp9_172: string)
    if not discord_gg_CDg3VKmWp9_367 or not discord_gg_CDg3VKmWp9_447 then
        return
    end

    local discord_gg_CDg3VKmWp9_29, discord_gg_CDg3VKmWp9_186 = pcall(discord_gg_CDg3VKmWp9_447.GetAsset, discord_gg_CDg3VKmWp9_172)
    if not discord_gg_CDg3VKmWp9_29 or not discord_gg_CDg3VKmWp9_186 then
        return
    end

    local discord_gg_CDg3VKmWp9_368, discord_gg_CDg3VKmWp9_369 = false, nil
    if discord_gg_CDg3VKmWp9_447.GetFontAsset then
        discord_gg_CDg3VKmWp9_368, discord_gg_CDg3VKmWp9_369 = pcall(discord_gg_CDg3VKmWp9_447.GetFontAsset, discord_gg_CDg3VKmWp9_172)
    end

    if discord_gg_CDg3VKmWp9_368 and discord_gg_CDg3VKmWp9_369 and discord_gg_CDg3VKmWp9_369.FontFace and discord_gg_CDg3VKmWp9_369.Text then
        local discord_gg_CDg3VKmWp9_370 = table.clone(discord_gg_CDg3VKmWp9_186)
        discord_gg_CDg3VKmWp9_370.FontFace = discord_gg_CDg3VKmWp9_369.FontFace
        discord_gg_CDg3VKmWp9_370.Text = discord_gg_CDg3VKmWp9_369.Text

        return discord_gg_CDg3VKmWp9_370
    end

    return discord_gg_CDg3VKmWp9_186
end

function discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_172: string): any
    if not discord_gg_CDg3VKmWp9_172 then
        return nil
    end

    if tonumber(discord_gg_CDg3VKmWp9_172) then
        discord_gg_CDg3VKmWp9_172 = string.format("rbxassetid://%s", tostring(discord_gg_CDg3VKmWp9_172))
    end

    if discord_gg_CDg3VKmWp9_366(discord_gg_CDg3VKmWp9_172, true) then
        return {
            discord_gg_CDg3VKmWp9_371 = discord_gg_CDg3VKmWp9_172,
            discord_gg_CDg3VKmWp9_372 = Vector2.zero,
            discord_gg_CDg3VKmWp9_373 = Vector2.zero,
        }
    elseif discord_gg_CDg3VKmWp9_365(discord_gg_CDg3VKmWp9_172) then
        return {
            discord_gg_CDg3VKmWp9_371 = discord_gg_CDg3VKmWp9_172,
            discord_gg_CDg3VKmWp9_372 = Vector2.zero,
            discord_gg_CDg3VKmWp9_373 = Vector2.zero,
            discord_gg_CDg3VKmWp9_374 = true,
        }
    end

    local discord_gg_CDg3VKmWp9_375 = discord_gg_CDg3VKmWp9_34:GetIcon(discord_gg_CDg3VKmWp9_172)
    if discord_gg_CDg3VKmWp9_375 then
        return discord_gg_CDg3VKmWp9_375
    end

    return nil
end

function discord_gg_CDg3VKmWp9_34:Validate(discord_gg_CDg3VKmWp9_618: { [string]: any }, Template: { [string]: any }): { [string]: any }
    if typeof(discord_gg_CDg3VKmWp9_618) ~= "table" then
        return Template
    end

    for discord_gg_CDg3VKmWp9_376, v in Template do
        if typeof(discord_gg_CDg3VKmWp9_376) == "number" then
            continue
        end

        if typeof(v) == "table" then
            discord_gg_CDg3VKmWp9_618[discord_gg_CDg3VKmWp9_376] = discord_gg_CDg3VKmWp9_34:Validate(discord_gg_CDg3VKmWp9_618[discord_gg_CDg3VKmWp9_376], v)
        elseif discord_gg_CDg3VKmWp9_618[discord_gg_CDg3VKmWp9_376] == nil then
            discord_gg_CDg3VKmWp9_618[discord_gg_CDg3VKmWp9_376] = v
        end
    end

    return discord_gg_CDg3VKmWp9_618
end

local function discord_gg_CDg3VKmWp9_377(discord_gg_CDg3VKmWp9_618: { [string]: any }, discord_gg_CDg3VKmWp9_244: GuiObject)
    local discord_gg_CDg3VKmWp9_378 = discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_244] or {}

    for discord_gg_CDg3VKmWp9_379, discord_gg_CDg3VKmWp9_380 in discord_gg_CDg3VKmWp9_618 do
        if discord_gg_CDg3VKmWp9_379 ~= "Text" then
            local discord_gg_CDg3VKmWp9_363 = discord_gg_CDg3VKmWp9_269(discord_gg_CDg3VKmWp9_380)

            if discord_gg_CDg3VKmWp9_363 or typeof(discord_gg_CDg3VKmWp9_380) == "function" then
                discord_gg_CDg3VKmWp9_378[discord_gg_CDg3VKmWp9_379] = discord_gg_CDg3VKmWp9_380
                discord_gg_CDg3VKmWp9_380 = discord_gg_CDg3VKmWp9_363 or discord_gg_CDg3VKmWp9_380()
            else
                discord_gg_CDg3VKmWp9_378[discord_gg_CDg3VKmWp9_379] = nil
            end
        end

        discord_gg_CDg3VKmWp9_244[discord_gg_CDg3VKmWp9_379] = discord_gg_CDg3VKmWp9_380
    end

    if discord_gg_CDg3VKmWp9_282(discord_gg_CDg3VKmWp9_378) > 0 then
        discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_244] = discord_gg_CDg3VKmWp9_378
    end
end

local function discord_gg_CDg3VKmWp9_381(discord_gg_CDg3VKmWp9_1180: string, Properties: { [string]: any }): any
    local discord_gg_CDg3VKmWp9_244 = discord_gg_CDg3VKmWp9_244.new(discord_gg_CDg3VKmWp9_1180)

    if discord_gg_CDg3VKmWp9_118[discord_gg_CDg3VKmWp9_1180] then
        discord_gg_CDg3VKmWp9_377(discord_gg_CDg3VKmWp9_118[discord_gg_CDg3VKmWp9_1180], discord_gg_CDg3VKmWp9_244)
    end
    discord_gg_CDg3VKmWp9_377(Properties, discord_gg_CDg3VKmWp9_244)

    if Properties["Parent"] and not Properties["ZIndex"] then
        pcall(function()
            discord_gg_CDg3VKmWp9_244.ZIndex = Properties.Parent.ZIndex
        end)
    end

    return discord_gg_CDg3VKmWp9_244
end

local discord_gg_CDg3VKmWp9_382 = discord_gg_CDg3VKmWp9_1().Obsidian3DSurfaceConfig
local function discord_gg_CDg3VKmWp9_383()
    return typeof(discord_gg_CDg3VKmWp9_382) == "table"
        and typeof(discord_gg_CDg3VKmWp9_382.Adornee) == "Instance"
        and discord_gg_CDg3VKmWp9_382.Adornee:IsA("BasePart")
end
local function discord_gg_CDg3VKmWp9_384(discord_gg_CDg3VKmWp9_399: Vector2): Vector2
    if not discord_gg_CDg3VKmWp9_383() then return discord_gg_CDg3VKmWp9_399 end
    local discord_gg_CDg3VKmWp9_228 = workspace.CurrentCamera
    local discord_gg_CDg3VKmWp9_385 = discord_gg_CDg3VKmWp9_382.Adornee
    if not discord_gg_CDg3VKmWp9_228 or not discord_gg_CDg3VKmWp9_385 or not discord_gg_CDg3VKmWp9_385.Parent then return Vector2.zero end
    local discord_gg_CDg3VKmWp9_386 = discord_gg_CDg3VKmWp9_382.Face or Enum.NormalId.Front
    local discord_gg_CDg3VKmWp9_387 = discord_gg_CDg3VKmWp9_385.CFrame.LookVector
    if discord_gg_CDg3VKmWp9_386 == Enum.NormalId.Back then discord_gg_CDg3VKmWp9_387 = -discord_gg_CDg3VKmWp9_387
    elseif discord_gg_CDg3VKmWp9_386 == Enum.NormalId.Right then discord_gg_CDg3VKmWp9_387 = discord_gg_CDg3VKmWp9_385.CFrame.RightVector
    elseif discord_gg_CDg3VKmWp9_386 == Enum.NormalId.Left then discord_gg_CDg3VKmWp9_387 = -discord_gg_CDg3VKmWp9_385.CFrame.RightVector
    elseif discord_gg_CDg3VKmWp9_386 == Enum.NormalId.Top then discord_gg_CDg3VKmWp9_387 = discord_gg_CDg3VKmWp9_385.CFrame.UpVector
    elseif discord_gg_CDg3VKmWp9_386 == Enum.NormalId.Bottom then discord_gg_CDg3VKmWp9_387 = -discord_gg_CDg3VKmWp9_385.CFrame.UpVector end
    local discord_gg_CDg3VKmWp9_388 = discord_gg_CDg3VKmWp9_228:ScreenPointToRay(discord_gg_CDg3VKmWp9_399.X, discord_gg_CDg3VKmWp9_399.Y)
    local discord_gg_CDg3VKmWp9_389 = discord_gg_CDg3VKmWp9_388.Direction:Dot(discord_gg_CDg3VKmWp9_387)
    if math.abs(discord_gg_CDg3VKmWp9_389) < 1e-5 then return Vector2.zero end
    local discord_gg_CDg3VKmWp9_390 = (discord_gg_CDg3VKmWp9_385.Position - discord_gg_CDg3VKmWp9_388.Origin):Dot(discord_gg_CDg3VKmWp9_387) / discord_gg_CDg3VKmWp9_389
    if discord_gg_CDg3VKmWp9_390 < 0 then return Vector2.zero end
    local discord_gg_CDg3VKmWp9_391 = discord_gg_CDg3VKmWp9_388.Origin + discord_gg_CDg3VKmWp9_388.Direction * discord_gg_CDg3VKmWp9_390
    local discord_gg_CDg3VKmWp9_392 = discord_gg_CDg3VKmWp9_385.CFrame:PointToObjectSpace(discord_gg_CDg3VKmWp9_391)
    local discord_gg_CDg3VKmWp9_393 = discord_gg_CDg3VKmWp9_382.CanvasSize or Vector2.new(800, 500)
    local discord_gg_CDg3VKmWp9_394 = discord_gg_CDg3VKmWp9_385.Size
    local discord_gg_CDg3VKmWp9_395, discord_gg_CDg3VKmWp9_396
    if discord_gg_CDg3VKmWp9_386 == Enum.NormalId.Front or discord_gg_CDg3VKmWp9_386 == Enum.NormalId.Back then
        discord_gg_CDg3VKmWp9_395 = (discord_gg_CDg3VKmWp9_392.X / discord_gg_CDg3VKmWp9_394.X + 0.5) * discord_gg_CDg3VKmWp9_393.X
        discord_gg_CDg3VKmWp9_396 = (0.5 - discord_gg_CDg3VKmWp9_392.Y / discord_gg_CDg3VKmWp9_394.Y) * discord_gg_CDg3VKmWp9_393.Y
        if discord_gg_CDg3VKmWp9_386 == Enum.NormalId.Front then discord_gg_CDg3VKmWp9_395 = discord_gg_CDg3VKmWp9_393.X - discord_gg_CDg3VKmWp9_395 end
    elseif discord_gg_CDg3VKmWp9_386 == Enum.NormalId.Right or discord_gg_CDg3VKmWp9_386 == Enum.NormalId.Left then
        discord_gg_CDg3VKmWp9_395 = (discord_gg_CDg3VKmWp9_392.Z / discord_gg_CDg3VKmWp9_394.Z + 0.5) * discord_gg_CDg3VKmWp9_393.X
        discord_gg_CDg3VKmWp9_396 = (0.5 - discord_gg_CDg3VKmWp9_392.Y / discord_gg_CDg3VKmWp9_394.Y) * discord_gg_CDg3VKmWp9_393.Y
        if discord_gg_CDg3VKmWp9_386 == Enum.NormalId.Left then discord_gg_CDg3VKmWp9_395 = discord_gg_CDg3VKmWp9_393.X - discord_gg_CDg3VKmWp9_395 end
    else
        discord_gg_CDg3VKmWp9_395 = (discord_gg_CDg3VKmWp9_392.X / discord_gg_CDg3VKmWp9_394.X + 0.5) * discord_gg_CDg3VKmWp9_393.X
        discord_gg_CDg3VKmWp9_396 = (discord_gg_CDg3VKmWp9_392.Z / discord_gg_CDg3VKmWp9_394.Z + 0.5) * discord_gg_CDg3VKmWp9_393.Y
        if discord_gg_CDg3VKmWp9_386 == Enum.NormalId.Bottom then discord_gg_CDg3VKmWp9_396 = discord_gg_CDg3VKmWp9_393.Y - discord_gg_CDg3VKmWp9_396 end
    end
    return Vector2.new(discord_gg_CDg3VKmWp9_395, discord_gg_CDg3VKmWp9_396)
end
local function discord_gg_CDg3VKmWp9_397(InputPosition: Vector3 | Vector2, ReferenceGui: Instance?): Vector3 | Vector2
    if not discord_gg_CDg3VKmWp9_383() then return InputPosition end
    if ReferenceGui and discord_gg_CDg3VKmWp9_34.ScreenGui and ReferenceGui ~= discord_gg_CDg3VKmWp9_34.ScreenGui
        and not ReferenceGui:IsDescendantOf(discord_gg_CDg3VKmWp9_34.ScreenGui) then
        return InputPosition
    end
    local discord_gg_CDg3VKmWp9_275 = discord_gg_CDg3VKmWp9_384(Vector2.new(InputPosition.X, InputPosition.Y))
    if typeof(InputPosition) == "Vector3" then
        return Vector3.new(discord_gg_CDg3VKmWp9_275.X, discord_gg_CDg3VKmWp9_275.Y, InputPosition.Z)
    end
    return discord_gg_CDg3VKmWp9_275
end
local function discord_gg_CDg3VKmWp9_398(discord_gg_CDg3VKmWp9_203: InputObject?, ReferenceGui: Instance?): Vector2
    local discord_gg_CDg3VKmWp9_399
    if discord_gg_CDg3VKmWp9_203 and discord_gg_CDg3VKmWp9_203.UserInputType == Enum.UserInputType.Touch then
        discord_gg_CDg3VKmWp9_399 = Vector2.new(discord_gg_CDg3VKmWp9_203.Position.X, discord_gg_CDg3VKmWp9_203.Position.Y)
    else
        discord_gg_CDg3VKmWp9_399 = UserInputService:GetMouseLocation()
    end

    if ReferenceGui and discord_gg_CDg3VKmWp9_34.ScreenGui and ReferenceGui ~= discord_gg_CDg3VKmWp9_34.ScreenGui
        and not ReferenceGui:IsDescendantOf(discord_gg_CDg3VKmWp9_34.ScreenGui) then
        return discord_gg_CDg3VKmWp9_399
    end
    return discord_gg_CDg3VKmWp9_384(discord_gg_CDg3VKmWp9_399)
end

function discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(ImageGui: any, discord_gg_CDg3VKmWp9_186: any, discord_gg_CDg3VKmWp9_759: number?)
    if not ImageGui or not discord_gg_CDg3VKmWp9_186 then
        return
    end

    if not (ImageGui:IsA("ImageLabel") or ImageGui:IsA("ImageButton")) then
        return
    end

    ImageGui.Rotation = discord_gg_CDg3VKmWp9_759 or ImageGui.Rotation

    local discord_gg_CDg3VKmWp9_322 = ImageGui:FindFirstChild("__IconFont")
    if discord_gg_CDg3VKmWp9_186.FontFace and discord_gg_CDg3VKmWp9_186.Text then
        if not discord_gg_CDg3VKmWp9_322 then
            discord_gg_CDg3VKmWp9_322 = discord_gg_CDg3VKmWp9_381("TextLabel", {
                discord_gg_CDg3VKmWp9_171 = "__IconFont",
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
                discord_gg_CDg3VKmWp9_128 = false,
                discord_gg_CDg3VKmWp9_400 = false,
                discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Center,
                discord_gg_CDg3VKmWp9_402 = Enum.TextYAlignment.Center,
                discord_gg_CDg3VKmWp9_403 = ImageGui,
            })
            discord_gg_CDg3VKmWp9_34:RemoveFromRegistry(discord_gg_CDg3VKmWp9_322)

            local discord_gg_CDg3VKmWp9_404 = function()
                if not discord_gg_CDg3VKmWp9_322.Parent then
                    return
                end

                discord_gg_CDg3VKmWp9_322.TextColor3 = ImageGui.ImageColor3
                discord_gg_CDg3VKmWp9_322.TextTransparency = ImageGui.ImageTransparency
            end

            local discord_gg_CDg3VKmWp9_405 = function()
                if not discord_gg_CDg3VKmWp9_322.Parent then
                    return
                end

                local discord_gg_CDg3VKmWp9_406 = ImageGui.AbsoluteSize
                local discord_gg_CDg3VKmWp9_170 = math.min(discord_gg_CDg3VKmWp9_406.X, discord_gg_CDg3VKmWp9_406.Y) / discord_gg_CDg3VKmWp9_34.DPIScale
                discord_gg_CDg3VKmWp9_322.TextSize = math.max(1, math.floor(discord_gg_CDg3VKmWp9_170 + 0.5))
            end

            discord_gg_CDg3VKmWp9_404()
            discord_gg_CDg3VKmWp9_405()

            ImageGui:GetPropertyChangedSignal("ImageColor3"):Connect(discord_gg_CDg3VKmWp9_404)
            ImageGui:GetPropertyChangedSignal("ImageTransparency"):Connect(discord_gg_CDg3VKmWp9_404)
            ImageGui:GetPropertyChangedSignal("AbsoluteSize"):Connect(discord_gg_CDg3VKmWp9_405)
        else
            discord_gg_CDg3VKmWp9_34:RemoveFromRegistry(discord_gg_CDg3VKmWp9_322)
        end

        discord_gg_CDg3VKmWp9_322.FontFace = discord_gg_CDg3VKmWp9_186.FontFace
        discord_gg_CDg3VKmWp9_322.Text = discord_gg_CDg3VKmWp9_186.Text
        discord_gg_CDg3VKmWp9_322.TextScaled = false
        discord_gg_CDg3VKmWp9_322.TextWrapped = false
        discord_gg_CDg3VKmWp9_322.TextXAlignment = Enum.TextXAlignment.Center
        discord_gg_CDg3VKmWp9_322.TextYAlignment = Enum.TextYAlignment.Center
        discord_gg_CDg3VKmWp9_322.TextColor3 = ImageGui.ImageColor3
        discord_gg_CDg3VKmWp9_322.TextTransparency = ImageGui.ImageTransparency

        local discord_gg_CDg3VKmWp9_406 = ImageGui.AbsoluteSize
        local discord_gg_CDg3VKmWp9_170 = math.min(discord_gg_CDg3VKmWp9_406.X, discord_gg_CDg3VKmWp9_406.Y) / discord_gg_CDg3VKmWp9_34.DPIScale
        if discord_gg_CDg3VKmWp9_170 > 0 then
            discord_gg_CDg3VKmWp9_322.TextSize = math.max(1, math.floor(discord_gg_CDg3VKmWp9_170 + 0.5))
        else
            local discord_gg_CDg3VKmWp9_407 = ImageGui.Size
            discord_gg_CDg3VKmWp9_322.TextSize = math.max(1, math.floor(math.min(discord_gg_CDg3VKmWp9_407.X.Offset, discord_gg_CDg3VKmWp9_407.Y.Offset) + 0.5))
        end

        discord_gg_CDg3VKmWp9_322.Visible = true
        ImageGui.ClipsDescendants = true
        ImageGui.Image = ""
        return
    end

    if discord_gg_CDg3VKmWp9_322 then
        discord_gg_CDg3VKmWp9_34:RemoveFromRegistry(discord_gg_CDg3VKmWp9_322)
        discord_gg_CDg3VKmWp9_322:Destroy()
    end

    ImageGui.Image = discord_gg_CDg3VKmWp9_186.Url or ImageGui.Image
    ImageGui.ImageRectOffset = discord_gg_CDg3VKmWp9_186.ImageRectOffset or ImageGui.ImageRectOffset
    ImageGui.ImageRectSize = discord_gg_CDg3VKmWp9_186.ImageRectSize or ImageGui.ImageRectSize
end

local function discord_gg_CDg3VKmWp9_408(discord_gg_CDg3VKmWp9_244: Instance, discord_gg_CDg3VKmWp9_403: Instance | () -> discord_gg_CDg3VKmWp9_244)
    local discord_gg_CDg3VKmWp9_31, discord_gg_CDg3VKmWp9_409 = pcall(function()
        if not discord_gg_CDg3VKmWp9_403 then
            discord_gg_CDg3VKmWp9_403 = CoreGui
        end

        local discord_gg_CDg3VKmWp9_410
        if typeof(discord_gg_CDg3VKmWp9_403) == "function" then
            discord_gg_CDg3VKmWp9_410 = discord_gg_CDg3VKmWp9_403()
        else
            discord_gg_CDg3VKmWp9_410 = discord_gg_CDg3VKmWp9_403
        end

        discord_gg_CDg3VKmWp9_244.Parent = discord_gg_CDg3VKmWp9_410
    end)

    if not (discord_gg_CDg3VKmWp9_31 and discord_gg_CDg3VKmWp9_244.Parent) then
        discord_gg_CDg3VKmWp9_244.Parent = discord_gg_CDg3VKmWp9_34.LocalPlayer:WaitForChild("PlayerGui", math.huge)
    end
end

local function discord_gg_CDg3VKmWp9_411(UI: Instance, SkipHiddenUI: boolean?)
    if SkipHiddenUI then
        discord_gg_CDg3VKmWp9_408(UI, CoreGui)
        return
    end

    pcall(discord_gg_CDg3VKmWp9_3, UI)
    discord_gg_CDg3VKmWp9_408(UI, discord_gg_CDg3VKmWp9_4)
end

local function discord_gg_CDg3VKmWp9_412(discord_gg_CDg3VKmWp9_171: string, discord_gg_CDg3VKmWp9_423: number)
    if discord_gg_CDg3VKmWp9_383() then
        local discord_gg_CDg3VKmWp9_413 = discord_gg_CDg3VKmWp9_382
        local discord_gg_CDg3VKmWp9_414 = discord_gg_CDg3VKmWp9_381("SurfaceGui", {
            discord_gg_CDg3VKmWp9_171 = discord_gg_CDg3VKmWp9_171,
            discord_gg_CDg3VKmWp9_385 = discord_gg_CDg3VKmWp9_413.Adornee,
            discord_gg_CDg3VKmWp9_386 = discord_gg_CDg3VKmWp9_413.Face or Enum.NormalId.Front,
            discord_gg_CDg3VKmWp9_415 = Enum.SurfaceGuiSizingMode.FixedSize,
            discord_gg_CDg3VKmWp9_416 = discord_gg_CDg3VKmWp9_413.CanvasSize or Vector2.new(800, 500),
            discord_gg_CDg3VKmWp9_149 = discord_gg_CDg3VKmWp9_413.AlwaysOnTop ~= false,
            discord_gg_CDg3VKmWp9_417 = 0,
            discord_gg_CDg3VKmWp9_418 = true,
            discord_gg_CDg3VKmWp9_419 = true,
            discord_gg_CDg3VKmWp9_420 = false,
            discord_gg_CDg3VKmWp9_421 = discord_gg_CDg3VKmWp9_413.MaxDistance or 100
        })
        discord_gg_CDg3VKmWp9_414.Parent = discord_gg_CDg3VKmWp9_413.Parent or discord_gg_CDg3VKmWp9_5:WaitForChild("PlayerGui")
        return discord_gg_CDg3VKmWp9_414
    end
    local discord_gg_CDg3VKmWp9_422 = discord_gg_CDg3VKmWp9_381("ScreenGui", {
        discord_gg_CDg3VKmWp9_171 = discord_gg_CDg3VKmWp9_171,
        discord_gg_CDg3VKmWp9_423 = discord_gg_CDg3VKmWp9_423,
        discord_gg_CDg3VKmWp9_424 = false,
        discord_gg_CDg3VKmWp9_425 = Enum.ZIndexBehavior.Sibling
    })
    discord_gg_CDg3VKmWp9_411(discord_gg_CDg3VKmWp9_422)
    return discord_gg_CDg3VKmWp9_422
end

local function discord_gg_CDg3VKmWp9_426(Gui: any, discord_gg_CDg3VKmWp9_418: boolean)
    if not Gui then
        return
    end
    if Gui:IsA("SurfaceGui") then
        Gui.AlwaysOnTop = discord_gg_CDg3VKmWp9_418
        return
    end

    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(Gui, "OnTopOfCoreBlur", discord_gg_CDg3VKmWp9_418)
        elseif setscriptable then
            setscriptable(Gui, "OnTopOfCoreBlur", true)
            Gui.OnTopOfCoreBlur = discord_gg_CDg3VKmWp9_418
            setscriptable(Gui, "OnTopOfCoreBlur", false)
        end
    end)
end

local discord_gg_CDg3VKmWp9_38 = discord_gg_CDg3VKmWp9_412("Obsidian", 998)
discord_gg_CDg3VKmWp9_34.ScreenGui = discord_gg_CDg3VKmWp9_38
local discord_gg_CDg3VKmWp9_427 = discord_gg_CDg3VKmWp9_38
local discord_gg_CDg3VKmWp9_428 = nil
if discord_gg_CDg3VKmWp9_383() then
    discord_gg_CDg3VKmWp9_427 = discord_gg_CDg3VKmWp9_381("ScreenGui", {
        discord_gg_CDg3VKmWp9_171 = "3DianScreenOverlay",
        discord_gg_CDg3VKmWp9_423 = 999,
        discord_gg_CDg3VKmWp9_424 = false,
        discord_gg_CDg3VKmWp9_425 = Enum.ZIndexBehavior.Sibling
    })
    discord_gg_CDg3VKmWp9_411(discord_gg_CDg3VKmWp9_427)
    discord_gg_CDg3VKmWp9_428 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_171 = "3DianOverlayFloats",
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
        discord_gg_CDg3VKmWp9_429 = 10,
        discord_gg_CDg3VKmWp9_419 = false,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_427
    })
end
discord_gg_CDg3VKmWp9_34.OverlayScreenGui = discord_gg_CDg3VKmWp9_427
discord_gg_CDg3VKmWp9_34.OverlayFloats = discord_gg_CDg3VKmWp9_428
discord_gg_CDg3VKmWp9_38.DescendantRemoving:Connect(function(discord_gg_CDg3VKmWp9_244)
    task.defer(function()
        if discord_gg_CDg3VKmWp9_244.Parent and discord_gg_CDg3VKmWp9_244:IsDescendantOf(discord_gg_CDg3VKmWp9_38) then
            return
        end
        discord_gg_CDg3VKmWp9_34:RemoveFromRegistry(discord_gg_CDg3VKmWp9_244)
    end)
end)
if discord_gg_CDg3VKmWp9_427 ~= discord_gg_CDg3VKmWp9_38 then
    discord_gg_CDg3VKmWp9_427.DescendantRemoving:Connect(function(discord_gg_CDg3VKmWp9_244)
        task.defer(function()
            if discord_gg_CDg3VKmWp9_244.Parent and discord_gg_CDg3VKmWp9_244:IsDescendantOf(discord_gg_CDg3VKmWp9_427) then
                return
            end
            discord_gg_CDg3VKmWp9_34:RemoveFromRegistry(discord_gg_CDg3VKmWp9_244)
        end)
    end)
end
local discord_gg_CDg3VKmWp9_430 = discord_gg_CDg3VKmWp9_381("TextButton", {
    discord_gg_CDg3VKmWp9_122 = 1,
    discord_gg_CDg3VKmWp9_431 = false,
    discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(0, 0),
    discord_gg_CDg3VKmWp9_432 = Vector2.zero,
    discord_gg_CDg3VKmWp9_136 = "",
    discord_gg_CDg3VKmWp9_429 = -999,
    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_38,
})

local discord_gg_CDg3VKmWp9_39 = discord_gg_CDg3VKmWp9_381("Frame", {
    discord_gg_CDg3VKmWp9_122 = 1,
    discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
    discord_gg_CDg3VKmWp9_429 = 10,
    discord_gg_CDg3VKmWp9_419 = false,
    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_38,
})

local discord_gg_CDg3VKmWp9_40 = discord_gg_CDg3VKmWp9_381("Frame", {
    discord_gg_CDg3VKmWp9_122 = 1,
    discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
    discord_gg_CDg3VKmWp9_429 = 20,
    discord_gg_CDg3VKmWp9_419 = false,
    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_38,
})

discord_gg_CDg3VKmWp9_34.Floats = discord_gg_CDg3VKmWp9_39
discord_gg_CDg3VKmWp9_34.Overlay = discord_gg_CDg3VKmWp9_40

local discord_gg_CDg3VKmWp9_433
local discord_gg_CDg3VKmWp9_434
local discord_gg_CDg3VKmWp9_435 = {}
local discord_gg_CDg3VKmWp9_436
do
    discord_gg_CDg3VKmWp9_433 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0.5),
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(1, 1),
        discord_gg_CDg3VKmWp9_174 = false,
        discord_gg_CDg3VKmWp9_429 = 11000,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_38,
    })

    discord_gg_CDg3VKmWp9_434 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0.5),
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0.5, 0.5),
        discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(11, 11),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_433,
    })

    discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0.5),
        discord_gg_CDg3VKmWp9_437 = "DarkColor",
        discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0.5, 0.5),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 3),
        discord_gg_CDg3VKmWp9_429 = 1,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_434,
    })
    table.insert(discord_gg_CDg3VKmWp9_435, discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0.5),
        discord_gg_CDg3VKmWp9_437 = "WhiteColor",
        discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0.5, 0.5),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -2, 0, 1),
        discord_gg_CDg3VKmWp9_429 = 2,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_434,
    }))

    discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0.5),
        discord_gg_CDg3VKmWp9_437 = "DarkColor",
        discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0.5, 0.5),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(0, 3, 1, 0),
        discord_gg_CDg3VKmWp9_429 = 1,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_434,
    })
    table.insert(discord_gg_CDg3VKmWp9_435, discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0.5),
        discord_gg_CDg3VKmWp9_437 = "WhiteColor",
        discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0.5, 0.5),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(0, 1, 1, -2),
        discord_gg_CDg3VKmWp9_429 = 2,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_434,
    }))

    discord_gg_CDg3VKmWp9_436 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
        discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0.5),
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0.5, 0.5),
        discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(20, 20),
        discord_gg_CDg3VKmWp9_429 = 3,
        discord_gg_CDg3VKmWp9_174 = false,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_433,
    })
end

local function discord_gg_CDg3VKmWp9_438()
    pcall(function()
        RunService:UnbindFromRenderStep(discord_gg_CDg3VKmWp9_34.ShowCursorBinding)
        RunService.RenderStepped:Wait()
    end)

    UserInputService.MouseIconEnabled = discord_gg_CDg3VKmWp9_34.OriginalMouseIconEnabled
    if discord_gg_CDg3VKmWp9_433 then discord_gg_CDg3VKmWp9_433.Visible = false end
end

local discord_gg_CDg3VKmWp9_439
local discord_gg_CDg3VKmWp9_440 = {}
do
    discord_gg_CDg3VKmWp9_439 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_432 = Vector2.new(1, 0),
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_143 = UDim2.new(1, -6, 0, 6),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(0, 300, 1, -6),
        discord_gg_CDg3VKmWp9_429 = 200,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_427,
    })
    table.insert(
        discord_gg_CDg3VKmWp9_34.Scales,
        discord_gg_CDg3VKmWp9_381("UIScale", {
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_439,
        })
    )
end

local discord_gg_CDg3VKmWp9_22, discord_gg_CDg3VKmWp9_441, discord_gg_CDg3VKmWp9_442, discord_gg_CDg3VKmWp9_443, discord_gg_CDg3VKmWp9_444, discord_gg_CDg3VKmWp9_445, discord_gg_CDg3VKmWp9_446
function discord_gg_CDg3VKmWp9_34:SetIconModule(module: IconModule)
    discord_gg_CDg3VKmWp9_367 = true
    discord_gg_CDg3VKmWp9_447 = module

    discord_gg_CDg3VKmWp9_22 = discord_gg_CDg3VKmWp9_34:GetIcon("check")
    discord_gg_CDg3VKmWp9_441 = discord_gg_CDg3VKmWp9_34:GetIcon("chevron-up")
    discord_gg_CDg3VKmWp9_442 = discord_gg_CDg3VKmWp9_34:GetIcon("move-diagonal-2")
    discord_gg_CDg3VKmWp9_443 = discord_gg_CDg3VKmWp9_34:GetIcon("key")
    discord_gg_CDg3VKmWp9_444 = discord_gg_CDg3VKmWp9_34:GetIcon("square-arrow-down-left")
    discord_gg_CDg3VKmWp9_445 = discord_gg_CDg3VKmWp9_34:GetIcon("x")
    discord_gg_CDg3VKmWp9_446 = discord_gg_CDg3VKmWp9_34:GetIcon("settings")
end

local discord_gg_CDg3VKmWp9_448, discord_gg_CDg3VKmWp9_449 = pcall(function()
    return (loadstring(
        game:HttpGet("https://raw.githubusercontent.com/notpoiu/Molto/refs/heads/main/source.lua")
    ) :: () -> IconModule)()
end)
do
    if discord_gg_CDg3VKmWp9_448 and discord_gg_CDg3VKmWp9_449 then
        discord_gg_CDg3VKmWp9_449.SetProvider("lucide")
        discord_gg_CDg3VKmWp9_34:SetIconModule(discord_gg_CDg3VKmWp9_449)
    else
        discord_gg_CDg3VKmWp9_448, discord_gg_CDg3VKmWp9_449 = pcall(function()
            return (loadstring(
                game:HttpGet("https://raw.githubusercontent.com/notpoiu/lucide-roblox-direct/refs/heads/main/source.lua")
            ) :: () -> IconModule)()
        end)

        if discord_gg_CDg3VKmWp9_448 and discord_gg_CDg3VKmWp9_449 then
            discord_gg_CDg3VKmWp9_34:SetIconModule(discord_gg_CDg3VKmWp9_449)
        end
    end
end

discord_gg_CDg3VKmWp9_34.Cursor = {}

function discord_gg_CDg3VKmWp9_34.Cursor:ResetCross()
    for discord_gg_CDg3VKmWp9_26, Inner in discord_gg_CDg3VKmWp9_435 do
        discord_gg_CDg3VKmWp9_34.Registry[Inner].BackgroundColor3 = "WhiteColor"
        Inner.BackgroundColor3 = discord_gg_CDg3VKmWp9_34.Scheme.WhiteColor
    end
end

function discord_gg_CDg3VKmWp9_34.Cursor:ResetIcon()
    discord_gg_CDg3VKmWp9_434.Visible = true
    discord_gg_CDg3VKmWp9_436.Visible = false
    discord_gg_CDg3VKmWp9_436.ImageColor3 = Color3.new(1, 1, 1)
    discord_gg_CDg3VKmWp9_436.Size = UDim2.fromOffset(20, 20)
end

function discord_gg_CDg3VKmWp9_34.Cursor:ResetCursor()
    discord_gg_CDg3VKmWp9_34.Cursor:ResetCross()
    discord_gg_CDg3VKmWp9_34.Cursor:ResetIcon()
end

function discord_gg_CDg3VKmWp9_34.Cursor:ChangeCrossColor(discord_gg_CDg3VKmWp9_235: Color3)
    assert(typeof(discord_gg_CDg3VKmWp9_235) == "Color3", "Color3 expected.")
    for discord_gg_CDg3VKmWp9_26, Inner in discord_gg_CDg3VKmWp9_435 do
        Inner.BackgroundColor3 = discord_gg_CDg3VKmWp9_235
        discord_gg_CDg3VKmWp9_34.Registry[Inner].BackgroundColor3 = nil
    end
end

function discord_gg_CDg3VKmWp9_34.Cursor:ChangeIcon(ImageId: string)
    if not ImageId or ImageId == "" then
        discord_gg_CDg3VKmWp9_34.Cursor:ResetIcon()
        return
    end

    local discord_gg_CDg3VKmWp9_186 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(ImageId)
    assert(discord_gg_CDg3VKmWp9_186, "Image must be a valid Roblox asset or a valid URL or a valid lucide icon.")

    discord_gg_CDg3VKmWp9_434.Visible = false
    discord_gg_CDg3VKmWp9_436.Visible = true
    discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_436, discord_gg_CDg3VKmWp9_186)
end

function discord_gg_CDg3VKmWp9_34.Cursor:ChangeIconColor(discord_gg_CDg3VKmWp9_235: Color3)
    assert(typeof(discord_gg_CDg3VKmWp9_235) == "Color3", "Color3 expected.")
    discord_gg_CDg3VKmWp9_436.ImageColor3 = discord_gg_CDg3VKmWp9_235
end

function discord_gg_CDg3VKmWp9_34.Cursor:ChangeIconSize(discord_gg_CDg3VKmWp9_144: UDim2)
    assert(typeof(discord_gg_CDg3VKmWp9_144) == "UDim2", "UDim2 expected.")
    discord_gg_CDg3VKmWp9_436.Size = discord_gg_CDg3VKmWp9_144
end

function discord_gg_CDg3VKmWp9_34:ChangeCursorCrossColor(discord_gg_CDg3VKmWp9_235: Color3)
    warn("Obsidian:ChangeCursorCrossColor is deprecated, please use Obsidian.Cursor:ChangeCrossColor instead.")
    discord_gg_CDg3VKmWp9_34.Cursor:ChangeCrossColor(discord_gg_CDg3VKmWp9_235)
end

function discord_gg_CDg3VKmWp9_34:ResetCursorCross()
    warn("Obsidian:ResetCursorCross is deprecated, please use Obsidian.Cursor:ResetCross instead.")
    discord_gg_CDg3VKmWp9_34.Cursor:ResetCross()
end

function discord_gg_CDg3VKmWp9_34:ChangeCursorIcon(ImageId: string)
    warn("Obsidian:ChangeCursorIcon is deprecated, please use Obsidian.Cursor:ChangeIcon instead.")
    discord_gg_CDg3VKmWp9_34.Cursor:ChangeIcon(ImageId)
end

function discord_gg_CDg3VKmWp9_34:ChangeCursorIconColor(discord_gg_CDg3VKmWp9_235: Color3)
    warn("Obsidian:ChangeCursorIconColor is deprecated, please use Obsidian.Cursor:ChangeIconColor instead.")
    discord_gg_CDg3VKmWp9_34.Cursor:ChangeIconColor(discord_gg_CDg3VKmWp9_235)
end

function discord_gg_CDg3VKmWp9_34:ChangeCursorIconSize(discord_gg_CDg3VKmWp9_144: UDim2)
    warn("Obsidian:ChangeCursorIconSize is deprecated, please use Obsidian.Cursor:ChangeIconSize instead.")
    discord_gg_CDg3VKmWp9_34.Cursor:ChangeIconSize(discord_gg_CDg3VKmWp9_144)
end

function discord_gg_CDg3VKmWp9_34:ResetCursorIcon()
    warn("Obsidian:ResetCursorIcon is deprecated, please use Obsidian.Cursor:ResetIcon instead.")
    discord_gg_CDg3VKmWp9_34.Cursor:ResetIcon()
end

function discord_gg_CDg3VKmWp9_34:GetBetterColor(discord_gg_CDg3VKmWp9_235: Color3, discord_gg_CDg3VKmWp9_450: number): Color3
    discord_gg_CDg3VKmWp9_450 = discord_gg_CDg3VKmWp9_450 * (discord_gg_CDg3VKmWp9_34.IsLightTheme and -4 or 2)
    return Color3.fromRGB(
        math.clamp(discord_gg_CDg3VKmWp9_235.R * 255 + discord_gg_CDg3VKmWp9_450, 0, 255),
        math.clamp(discord_gg_CDg3VKmWp9_235.G * 255 + discord_gg_CDg3VKmWp9_450, 0, 255),
        math.clamp(discord_gg_CDg3VKmWp9_235.B * 255 + discord_gg_CDg3VKmWp9_450, 0, 255)
    )
end

function discord_gg_CDg3VKmWp9_34:GetLighterColor(discord_gg_CDg3VKmWp9_235: Color3): Color3
    local discord_gg_CDg3VKmWp9_133, discord_gg_CDg3VKmWp9_134, discord_gg_CDg3VKmWp9_135 = discord_gg_CDg3VKmWp9_235:ToHSV()
    return Color3.fromHSV(discord_gg_CDg3VKmWp9_133, math.max(0, discord_gg_CDg3VKmWp9_134 - 0.1), math.min(1, discord_gg_CDg3VKmWp9_135 + 0.1))
end

function discord_gg_CDg3VKmWp9_34:GetDarkerColor(discord_gg_CDg3VKmWp9_235: Color3): Color3
    local discord_gg_CDg3VKmWp9_133, discord_gg_CDg3VKmWp9_134, discord_gg_CDg3VKmWp9_135 = discord_gg_CDg3VKmWp9_235:ToHSV()
    return Color3.fromHSV(discord_gg_CDg3VKmWp9_133, discord_gg_CDg3VKmWp9_134, discord_gg_CDg3VKmWp9_135 / 2)
end

function discord_gg_CDg3VKmWp9_34:GetKeyString(discord_gg_CDg3VKmWp9_719: Enum.KeyCode)
    if discord_gg_CDg3VKmWp9_719.EnumType == Enum.KeyCode and discord_gg_CDg3VKmWp9_719.Value > 33 and discord_gg_CDg3VKmWp9_719.Value < 127 then
        return string.char(discord_gg_CDg3VKmWp9_719.Value)
    end

    return discord_gg_CDg3VKmWp9_719.Name
end

function discord_gg_CDg3VKmWp9_34:GetTextBounds(discord_gg_CDg3VKmWp9_136: string, discord_gg_CDg3VKmWp9_105: Font, discord_gg_CDg3VKmWp9_144: number, discord_gg_CDg3VKmWp9_546: number?): (number, number)
    local discord_gg_CDg3VKmWp9_451 = discord_gg_CDg3VKmWp9_34.DPIScale
    local discord_gg_CDg3VKmWp9_452 = discord_gg_CDg3VKmWp9_244.new("GetTextBoundsParams")
    discord_gg_CDg3VKmWp9_452.Text = discord_gg_CDg3VKmWp9_136
    discord_gg_CDg3VKmWp9_452.RichText = true
    discord_gg_CDg3VKmWp9_452.Font = discord_gg_CDg3VKmWp9_105
    discord_gg_CDg3VKmWp9_452.Size = discord_gg_CDg3VKmWp9_144 * discord_gg_CDg3VKmWp9_451
    if discord_gg_CDg3VKmWp9_546 then
        discord_gg_CDg3VKmWp9_452.Width = discord_gg_CDg3VKmWp9_546 * discord_gg_CDg3VKmWp9_451
    else
        discord_gg_CDg3VKmWp9_452.Width = workspace.CurrentCamera.ViewportSize.X - 32
    end

    local discord_gg_CDg3VKmWp9_453 = TextService:GetTextBoundsAsync(discord_gg_CDg3VKmWp9_452)
    return math.ceil(discord_gg_CDg3VKmWp9_453.X / discord_gg_CDg3VKmWp9_451), math.ceil(discord_gg_CDg3VKmWp9_453.Y / discord_gg_CDg3VKmWp9_451)
end

function discord_gg_CDg3VKmWp9_34:MouseIsOverFrame(discord_gg_CDg3VKmWp9_119: GuiObject, discord_gg_CDg3VKmWp9_6: Vector2): boolean
    local discord_gg_CDg3VKmWp9_454, discord_gg_CDg3VKmWp9_455 = discord_gg_CDg3VKmWp9_119.AbsolutePosition, discord_gg_CDg3VKmWp9_119.AbsoluteSize
    return discord_gg_CDg3VKmWp9_6.X >= discord_gg_CDg3VKmWp9_454.X
        and discord_gg_CDg3VKmWp9_6.X <= discord_gg_CDg3VKmWp9_454.X + discord_gg_CDg3VKmWp9_455.X
        and discord_gg_CDg3VKmWp9_6.Y >= discord_gg_CDg3VKmWp9_454.Y
        and discord_gg_CDg3VKmWp9_6.Y <= discord_gg_CDg3VKmWp9_454.Y + discord_gg_CDg3VKmWp9_455.Y
end

function discord_gg_CDg3VKmWp9_34:IsInsideFrame(ParentFrame: GuiObject, discord_gg_CDg3VKmWp9_119: GuiObject)
    local discord_gg_CDg3VKmWp9_456 = discord_gg_CDg3VKmWp9_119.AbsolutePosition
    local discord_gg_CDg3VKmWp9_457 = discord_gg_CDg3VKmWp9_119.AbsoluteSize

    local discord_gg_CDg3VKmWp9_458 = ParentFrame.AbsolutePosition
    local discord_gg_CDg3VKmWp9_459 = ParentFrame.AbsoluteSize

    return discord_gg_CDg3VKmWp9_456.X >= discord_gg_CDg3VKmWp9_458.X
        and discord_gg_CDg3VKmWp9_456.X + discord_gg_CDg3VKmWp9_457.X <= discord_gg_CDg3VKmWp9_458.X + discord_gg_CDg3VKmWp9_459.X
        and discord_gg_CDg3VKmWp9_456.Y >= discord_gg_CDg3VKmWp9_458.Y
        and discord_gg_CDg3VKmWp9_456.Y + discord_gg_CDg3VKmWp9_457.Y <= discord_gg_CDg3VKmWp9_458.Y + discord_gg_CDg3VKmWp9_459.Y
end

function discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_592: (...any) -> ...any, ...: any)
    if not (discord_gg_CDg3VKmWp9_592 and typeof(discord_gg_CDg3VKmWp9_592) == "function") then
        return
    end

    local discord_gg_CDg3VKmWp9_275 = table.pack(xpcall(discord_gg_CDg3VKmWp9_592, function(Error)
        task.defer(error, debug.traceback(Error, 2))
        if discord_gg_CDg3VKmWp9_34.NotifyOnError and discord_gg_CDg3VKmWp9_34.Notify then
            discord_gg_CDg3VKmWp9_34:Notify(Error)
        end

        return Error
    end, ...))

    if not discord_gg_CDg3VKmWp9_275[1] then
        return nil
    end

    return table.unpack(discord_gg_CDg3VKmWp9_275, 2, discord_gg_CDg3VKmWp9_275.n)
end

function discord_gg_CDg3VKmWp9_460(UI: GuiObject, TargetPos: Vector2?)
    local discord_gg_CDg3VKmWp9_461 = TargetPos or UI.AbsolutePosition
    local discord_gg_CDg3VKmWp9_462 = UI.AbsoluteSize

    for discord_gg_CDg3VKmWp9_26, Other in ipairs(discord_gg_CDg3VKmWp9_34.DraggableElements) do
        if Other == UI or not Other.Visible or not Other.Parent then
            continue
        end

        local discord_gg_CDg3VKmWp9_463 = Other.AbsolutePosition
        local discord_gg_CDg3VKmWp9_464 = Other.AbsoluteSize

        if discord_gg_CDg3VKmWp9_461.X < discord_gg_CDg3VKmWp9_463.X + discord_gg_CDg3VKmWp9_464.X and
            discord_gg_CDg3VKmWp9_461.X + discord_gg_CDg3VKmWp9_462.X > discord_gg_CDg3VKmWp9_463.X and
            discord_gg_CDg3VKmWp9_461.Y < discord_gg_CDg3VKmWp9_463.Y + discord_gg_CDg3VKmWp9_464.Y and
            discord_gg_CDg3VKmWp9_461.Y + discord_gg_CDg3VKmWp9_462.Y > discord_gg_CDg3VKmWp9_463.Y then
            return Other
        end
    end

    return nil
end

function discord_gg_CDg3VKmWp9_465(UI: GuiObject, discord_gg_CDg3VKmWp9_495: UDim2?)
    local discord_gg_CDg3VKmWp9_466 = (workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920, 1080)) - Vector2.new(100, 100)
    local discord_gg_CDg3VKmWp9_467 = discord_gg_CDg3VKmWp9_495 and Vector2.new(discord_gg_CDg3VKmWp9_495.X.Offset, discord_gg_CDg3VKmWp9_495.Y.Offset) or Vector2.new(6, 6)
    local discord_gg_CDg3VKmWp9_166 = 6

    local discord_gg_CDg3VKmWp9_468 = discord_gg_CDg3VKmWp9_467.X
    local discord_gg_CDg3VKmWp9_469 = discord_gg_CDg3VKmWp9_467.Y

    local discord_gg_CDg3VKmWp9_144 = UI.AbsoluteSize
    if discord_gg_CDg3VKmWp9_144.X == 0 and discord_gg_CDg3VKmWp9_144.Y == 0 then
        RunService.RenderStepped:Wait()
        discord_gg_CDg3VKmWp9_144 = UI.AbsoluteSize
    end

    if discord_gg_CDg3VKmWp9_144.X == 0 then discord_gg_CDg3VKmWp9_144 = Vector2.new(150, 40) end

    local discord_gg_CDg3VKmWp9_470 = discord_gg_CDg3VKmWp9_144.X

    while true do
        local discord_gg_CDg3VKmWp9_471 = discord_gg_CDg3VKmWp9_460(UI, Vector2.new(discord_gg_CDg3VKmWp9_468, discord_gg_CDg3VKmWp9_469))
        if not discord_gg_CDg3VKmWp9_471 then
            break
        end

        if discord_gg_CDg3VKmWp9_471.AbsoluteSize.X > discord_gg_CDg3VKmWp9_470 then
            discord_gg_CDg3VKmWp9_470 = discord_gg_CDg3VKmWp9_471.AbsoluteSize.X
        end

        local discord_gg_CDg3VKmWp9_472 = discord_gg_CDg3VKmWp9_471.AbsolutePosition.Y + discord_gg_CDg3VKmWp9_471.AbsoluteSize.Y + discord_gg_CDg3VKmWp9_166
        if discord_gg_CDg3VKmWp9_472 + discord_gg_CDg3VKmWp9_144.Y > discord_gg_CDg3VKmWp9_466.Y - discord_gg_CDg3VKmWp9_166 then
            local discord_gg_CDg3VKmWp9_473 = discord_gg_CDg3VKmWp9_468 + discord_gg_CDg3VKmWp9_470 + discord_gg_CDg3VKmWp9_166

            if discord_gg_CDg3VKmWp9_473 + discord_gg_CDg3VKmWp9_144.X > discord_gg_CDg3VKmWp9_466.X - discord_gg_CDg3VKmWp9_166 then
                break
            end

            discord_gg_CDg3VKmWp9_469 = discord_gg_CDg3VKmWp9_467.Y
            discord_gg_CDg3VKmWp9_468 = discord_gg_CDg3VKmWp9_473
            discord_gg_CDg3VKmWp9_470 = discord_gg_CDg3VKmWp9_144.X
        else
            discord_gg_CDg3VKmWp9_469 = discord_gg_CDg3VKmWp9_472
        end
    end

    return UDim2.fromOffset(discord_gg_CDg3VKmWp9_468, discord_gg_CDg3VKmWp9_469)
end

function discord_gg_CDg3VKmWp9_474(UI: GuiObject, discord_gg_CDg3VKmWp9_495: UDim2?)
    UI.Position = discord_gg_CDg3VKmWp9_465(UI, discord_gg_CDg3VKmWp9_495)
end

local function discord_gg_CDg3VKmWp9_475(): (Vector2, Vector2)
    local discord_gg_CDg3VKmWp9_29, discord_gg_CDg3VKmWp9_476, discord_gg_CDg3VKmWp9_477 = pcall(function()
        return GuiService:GetGuiInset()
    end)

    if discord_gg_CDg3VKmWp9_29 and discord_gg_CDg3VKmWp9_476 and discord_gg_CDg3VKmWp9_477 then
        return discord_gg_CDg3VKmWp9_476, discord_gg_CDg3VKmWp9_477
    end

    return Vector2.zero, Vector2.zero
end

local function discord_gg_CDg3VKmWp9_478(discord_gg_CDg3VKmWp9_510: Vector2, discord_gg_CDg3VKmWp9_506: Vector2, discord_gg_CDg3VKmWp9_507: number, AvoidCoreGui: boolean)
    local discord_gg_CDg3VKmWp9_479, discord_gg_CDg3VKmWp9_480 = Vector2.zero, discord_gg_CDg3VKmWp9_506

    if AvoidCoreGui then
        local discord_gg_CDg3VKmWp9_481, discord_gg_CDg3VKmWp9_482 = discord_gg_CDg3VKmWp9_475()
        discord_gg_CDg3VKmWp9_479 = discord_gg_CDg3VKmWp9_481
        discord_gg_CDg3VKmWp9_480 = discord_gg_CDg3VKmWp9_506 - discord_gg_CDg3VKmWp9_482
    end

    local discord_gg_CDg3VKmWp9_483 = {
        discord_gg_CDg3VKmWp9_484 = discord_gg_CDg3VKmWp9_479.X + discord_gg_CDg3VKmWp9_507,
        discord_gg_CDg3VKmWp9_147 = discord_gg_CDg3VKmWp9_479.X + (discord_gg_CDg3VKmWp9_480.X - discord_gg_CDg3VKmWp9_479.X - discord_gg_CDg3VKmWp9_510.X) / 2,
        discord_gg_CDg3VKmWp9_485 = discord_gg_CDg3VKmWp9_480.X - discord_gg_CDg3VKmWp9_510.X - discord_gg_CDg3VKmWp9_507,
    }
    local discord_gg_CDg3VKmWp9_486 = {
        discord_gg_CDg3VKmWp9_487 = discord_gg_CDg3VKmWp9_479.Y + discord_gg_CDg3VKmWp9_507,
        discord_gg_CDg3VKmWp9_147 = discord_gg_CDg3VKmWp9_479.Y + (discord_gg_CDg3VKmWp9_480.Y - discord_gg_CDg3VKmWp9_479.Y - discord_gg_CDg3VKmWp9_510.Y) / 2,
        discord_gg_CDg3VKmWp9_488 = discord_gg_CDg3VKmWp9_480.Y - discord_gg_CDg3VKmWp9_510.Y - discord_gg_CDg3VKmWp9_507,
    }

    return discord_gg_CDg3VKmWp9_483, discord_gg_CDg3VKmWp9_486
end

local function discord_gg_CDg3VKmWp9_489(discord_gg_CDg3VKmWp9_554: number, Targets: { [string]: number }, discord_gg_CDg3VKmWp9_390: number): (number?, string?)
    local discord_gg_CDg3VKmWp9_490, discord_gg_CDg3VKmWp9_491, discord_gg_CDg3VKmWp9_492 = nil, nil, discord_gg_CDg3VKmWp9_390

    for discord_gg_CDg3VKmWp9_171, discord_gg_CDg3VKmWp9_978 in Targets do
        local discord_gg_CDg3VKmWp9_493 = math.abs(discord_gg_CDg3VKmWp9_554 - discord_gg_CDg3VKmWp9_978)
        if discord_gg_CDg3VKmWp9_493 <= discord_gg_CDg3VKmWp9_492 then
            discord_gg_CDg3VKmWp9_492 = discord_gg_CDg3VKmWp9_493
            discord_gg_CDg3VKmWp9_490 = discord_gg_CDg3VKmWp9_171
            discord_gg_CDg3VKmWp9_491 = discord_gg_CDg3VKmWp9_978
        end
    end

    return discord_gg_CDg3VKmWp9_491, discord_gg_CDg3VKmWp9_490
end

local function discord_gg_CDg3VKmWp9_494(discord_gg_CDg3VKmWp9_171: string, SnappedValue: number, ElemDimension: number): number
    if discord_gg_CDg3VKmWp9_171 == "RightEdge" or discord_gg_CDg3VKmWp9_171 == "BottomEdge" then
        return SnappedValue + ElemDimension
    elseif discord_gg_CDg3VKmWp9_171 == "Center" then
        return SnappedValue + ElemDimension / 2
    end

    return SnappedValue
end

function discord_gg_CDg3VKmWp9_34:MakeDraggable(
    UI: GuiObject,
    DragFrame: GuiObject,
    IgnoreToggled: boolean?,
    IsMainWindow: boolean?,
    SnapConfig: { discord_gg_CDg3VKmWp9_418: boolean, discord_gg_CDg3VKmWp9_390: number?, discord_gg_CDg3VKmWp9_507: number?, AvoidCoreGui: boolean? }?
)
    if discord_gg_CDg3VKmWp9_383() and discord_gg_CDg3VKmWp9_34.ScreenGui and UI:IsDescendantOf(discord_gg_CDg3VKmWp9_34.ScreenGui) then
        return
    end

    local discord_gg_CDg3VKmWp9_495
    local discord_gg_CDg3VKmWp9_458
    local discord_gg_CDg3VKmWp9_496 = false
    local discord_gg_CDg3VKmWp9_200
    local discord_gg_CDg3VKmWp9_497
    local discord_gg_CDg3VKmWp9_498

    local discord_gg_CDg3VKmWp9_499, discord_gg_CDg3VKmWp9_500

    local function discord_gg_CDg3VKmWp9_501()
        if not discord_gg_CDg3VKmWp9_499 then
            discord_gg_CDg3VKmWp9_499 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_437 = "AccentColor",
                discord_gg_CDg3VKmWp9_122 = 0.25,
                discord_gg_CDg3VKmWp9_120 = 0,
                discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0),
                discord_gg_CDg3VKmWp9_144 = UDim2.new(0, 2, 1, 0),
                discord_gg_CDg3VKmWp9_174 = false,
                discord_gg_CDg3VKmWp9_429 = 10000,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_38,
            })
        end

        if not discord_gg_CDg3VKmWp9_500 then
            discord_gg_CDg3VKmWp9_500 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_437 = "AccentColor",
                discord_gg_CDg3VKmWp9_122 = 0.25,
                discord_gg_CDg3VKmWp9_120 = 0,
                discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 0.5),
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 2),
                discord_gg_CDg3VKmWp9_174 = false,
                discord_gg_CDg3VKmWp9_429 = 10000,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_38,
            })
        end

        return discord_gg_CDg3VKmWp9_499, discord_gg_CDg3VKmWp9_500
    end

    local function discord_gg_CDg3VKmWp9_502()
        if discord_gg_CDg3VKmWp9_499 then
            discord_gg_CDg3VKmWp9_499.Visible = false
        end
        if discord_gg_CDg3VKmWp9_500 then
            discord_gg_CDg3VKmWp9_500.Visible = false
        end
    end

    discord_gg_CDg3VKmWp9_497 = DragFrame.InputBegan:Connect(function(discord_gg_CDg3VKmWp9_203: InputObject)
        if not discord_gg_CDg3VKmWp9_277(discord_gg_CDg3VKmWp9_203) or IsMainWindow and discord_gg_CDg3VKmWp9_34.CantDragForced then
            return
        end

        discord_gg_CDg3VKmWp9_495 = discord_gg_CDg3VKmWp9_397(discord_gg_CDg3VKmWp9_203.Position, UI)
        discord_gg_CDg3VKmWp9_458 = UI.Position
        discord_gg_CDg3VKmWp9_496 = true

        discord_gg_CDg3VKmWp9_200 = discord_gg_CDg3VKmWp9_203.Changed:Connect(function()
            if discord_gg_CDg3VKmWp9_203.UserInputState ~= Enum.UserInputState.End then
                return
            end

            discord_gg_CDg3VKmWp9_496 = false
            discord_gg_CDg3VKmWp9_502()

            if discord_gg_CDg3VKmWp9_200 and discord_gg_CDg3VKmWp9_200.Connected then
                discord_gg_CDg3VKmWp9_200:Disconnect()
                discord_gg_CDg3VKmWp9_200 = nil
            end
        end)
    end)

    discord_gg_CDg3VKmWp9_498 = UserInputService.InputChanged:Connect(function(discord_gg_CDg3VKmWp9_203: InputObject)
        if
            (not IgnoreToggled and not discord_gg_CDg3VKmWp9_34.Toggled)
            or (IsMainWindow and discord_gg_CDg3VKmWp9_34.CantDragForced)
            or not (discord_gg_CDg3VKmWp9_38 and discord_gg_CDg3VKmWp9_38.Parent)
        then
            discord_gg_CDg3VKmWp9_496 = false
            discord_gg_CDg3VKmWp9_502()

            if discord_gg_CDg3VKmWp9_200 and discord_gg_CDg3VKmWp9_200.Connected then
                discord_gg_CDg3VKmWp9_200:Disconnect()
                discord_gg_CDg3VKmWp9_200 = nil
            end

            return
        end

        if discord_gg_CDg3VKmWp9_496 and discord_gg_CDg3VKmWp9_278(discord_gg_CDg3VKmWp9_203) then
            local discord_gg_CDg3VKmWp9_503 = discord_gg_CDg3VKmWp9_397(discord_gg_CDg3VKmWp9_203.Position, UI) - discord_gg_CDg3VKmWp9_495
            local discord_gg_CDg3VKmWp9_504 = discord_gg_CDg3VKmWp9_458.X.Offset + discord_gg_CDg3VKmWp9_503.X
            local discord_gg_CDg3VKmWp9_505 = discord_gg_CDg3VKmWp9_458.Y.Offset + discord_gg_CDg3VKmWp9_503.Y

            if SnapConfig and SnapConfig.Enabled then
                local discord_gg_CDg3VKmWp9_506 = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920, 1080)
                local discord_gg_CDg3VKmWp9_390 = SnapConfig.Distance or 28
                local discord_gg_CDg3VKmWp9_507 = SnapConfig.Margin or 8

                local discord_gg_CDg3VKmWp9_508 = discord_gg_CDg3VKmWp9_458.X.Scale * discord_gg_CDg3VKmWp9_506.X + discord_gg_CDg3VKmWp9_504
                local discord_gg_CDg3VKmWp9_509 = discord_gg_CDg3VKmWp9_458.Y.Scale * discord_gg_CDg3VKmWp9_506.Y + discord_gg_CDg3VKmWp9_505

                local discord_gg_CDg3VKmWp9_510 = UI.AbsoluteSize
                local discord_gg_CDg3VKmWp9_483, discord_gg_CDg3VKmWp9_486 = discord_gg_CDg3VKmWp9_478(discord_gg_CDg3VKmWp9_510, discord_gg_CDg3VKmWp9_506, discord_gg_CDg3VKmWp9_507, SnapConfig.AvoidCoreGui ~= false)
                local discord_gg_CDg3VKmWp9_511, discord_gg_CDg3VKmWp9_512 = discord_gg_CDg3VKmWp9_489(discord_gg_CDg3VKmWp9_508, discord_gg_CDg3VKmWp9_483, discord_gg_CDg3VKmWp9_390)
                local discord_gg_CDg3VKmWp9_513, discord_gg_CDg3VKmWp9_514 = discord_gg_CDg3VKmWp9_489(discord_gg_CDg3VKmWp9_509, discord_gg_CDg3VKmWp9_486, discord_gg_CDg3VKmWp9_390)

                if discord_gg_CDg3VKmWp9_511 then
                    discord_gg_CDg3VKmWp9_504 = discord_gg_CDg3VKmWp9_511 - discord_gg_CDg3VKmWp9_458.X.Scale * discord_gg_CDg3VKmWp9_506.X
                end
                if discord_gg_CDg3VKmWp9_513 then
                    discord_gg_CDg3VKmWp9_505 = discord_gg_CDg3VKmWp9_513 - discord_gg_CDg3VKmWp9_458.Y.Scale * discord_gg_CDg3VKmWp9_506.Y
                end

                local discord_gg_CDg3VKmWp9_515, discord_gg_CDg3VKmWp9_516 = discord_gg_CDg3VKmWp9_501()
                discord_gg_CDg3VKmWp9_515.Visible = discord_gg_CDg3VKmWp9_511 ~= nil
                if discord_gg_CDg3VKmWp9_511 then
                    discord_gg_CDg3VKmWp9_515.Position = UDim2.fromOffset(discord_gg_CDg3VKmWp9_494(discord_gg_CDg3VKmWp9_512, discord_gg_CDg3VKmWp9_511, discord_gg_CDg3VKmWp9_510.X), 0)
                end

                discord_gg_CDg3VKmWp9_516.Visible = discord_gg_CDg3VKmWp9_513 ~= nil
                if discord_gg_CDg3VKmWp9_513 then
                    discord_gg_CDg3VKmWp9_516.Position = UDim2.fromOffset(0, discord_gg_CDg3VKmWp9_494(discord_gg_CDg3VKmWp9_514, discord_gg_CDg3VKmWp9_513, discord_gg_CDg3VKmWp9_510.Y))
                end
            end

            UI.Position = UDim2.new(discord_gg_CDg3VKmWp9_458.X.Scale, discord_gg_CDg3VKmWp9_504, discord_gg_CDg3VKmWp9_458.Y.Scale, discord_gg_CDg3VKmWp9_505)
        end
    end)

    discord_gg_CDg3VKmWp9_34:GiveSignal(discord_gg_CDg3VKmWp9_498)
    discord_gg_CDg3VKmWp9_34:GiveSignal(discord_gg_CDg3VKmWp9_497)

    UI.Destroying:Once(function()
        if discord_gg_CDg3VKmWp9_498 and discord_gg_CDg3VKmWp9_498.Connected then
            discord_gg_CDg3VKmWp9_498:Disconnect()
        end

        if discord_gg_CDg3VKmWp9_497 and discord_gg_CDg3VKmWp9_497.Connected then
            discord_gg_CDg3VKmWp9_497:Disconnect()
        end

        if discord_gg_CDg3VKmWp9_200 and discord_gg_CDg3VKmWp9_200.Connected then
            discord_gg_CDg3VKmWp9_200:Disconnect()
        end

        if discord_gg_CDg3VKmWp9_499 then
            discord_gg_CDg3VKmWp9_499:Destroy()
        end
        if discord_gg_CDg3VKmWp9_500 then
            discord_gg_CDg3VKmWp9_500:Destroy()
        end

        local discord_gg_CDg3VKmWp9_517 = table.find(discord_gg_CDg3VKmWp9_34.Signals, discord_gg_CDg3VKmWp9_498)
        if discord_gg_CDg3VKmWp9_517 then
            table.remove(discord_gg_CDg3VKmWp9_34.Signals, discord_gg_CDg3VKmWp9_517)
        end

        local discord_gg_CDg3VKmWp9_518 = table.find(discord_gg_CDg3VKmWp9_34.Signals, discord_gg_CDg3VKmWp9_497)
        if discord_gg_CDg3VKmWp9_518 then
            table.remove(discord_gg_CDg3VKmWp9_34.Signals, discord_gg_CDg3VKmWp9_518)
        end
    end)
end

function discord_gg_CDg3VKmWp9_34:MakeResizable(UI: GuiObject, DragFrame: GuiObject, discord_gg_CDg3VKmWp9_199: () -> ()?)
    local discord_gg_CDg3VKmWp9_495
    local discord_gg_CDg3VKmWp9_459
    local discord_gg_CDg3VKmWp9_496 = false
    local discord_gg_CDg3VKmWp9_200
    local discord_gg_CDg3VKmWp9_497
    local discord_gg_CDg3VKmWp9_498

    discord_gg_CDg3VKmWp9_497 = DragFrame.InputBegan:Connect(function(discord_gg_CDg3VKmWp9_203: InputObject)
        if not discord_gg_CDg3VKmWp9_277(discord_gg_CDg3VKmWp9_203) then
            return
        end

        discord_gg_CDg3VKmWp9_495 = discord_gg_CDg3VKmWp9_397(discord_gg_CDg3VKmWp9_203.Position, UI)
        discord_gg_CDg3VKmWp9_459 = UI.Size
        discord_gg_CDg3VKmWp9_496 = true

        discord_gg_CDg3VKmWp9_200 = discord_gg_CDg3VKmWp9_203.Changed:Connect(function()
            if discord_gg_CDg3VKmWp9_203.UserInputState ~= Enum.UserInputState.End then
                return
            end

            discord_gg_CDg3VKmWp9_496 = false
            if discord_gg_CDg3VKmWp9_200 and discord_gg_CDg3VKmWp9_200.Connected then
                discord_gg_CDg3VKmWp9_200:Disconnect()
                discord_gg_CDg3VKmWp9_200 = nil
            end
        end)
    end)

    discord_gg_CDg3VKmWp9_498 = UserInputService.InputChanged:Connect(function(discord_gg_CDg3VKmWp9_203: InputObject)
        if not UI.Visible or not (discord_gg_CDg3VKmWp9_38 and discord_gg_CDg3VKmWp9_38.Parent) then
            discord_gg_CDg3VKmWp9_496 = false
            if discord_gg_CDg3VKmWp9_200 and discord_gg_CDg3VKmWp9_200.Connected then
                discord_gg_CDg3VKmWp9_200:Disconnect()
                discord_gg_CDg3VKmWp9_200 = nil
            end

            return
        end

        if discord_gg_CDg3VKmWp9_496 and discord_gg_CDg3VKmWp9_278(discord_gg_CDg3VKmWp9_203) then
            local discord_gg_CDg3VKmWp9_503 = discord_gg_CDg3VKmWp9_397(discord_gg_CDg3VKmWp9_203.Position, UI) - discord_gg_CDg3VKmWp9_495
            UI.Size = UDim2.new(
                discord_gg_CDg3VKmWp9_459.X.Scale,
                math.clamp(discord_gg_CDg3VKmWp9_459.X.Offset + discord_gg_CDg3VKmWp9_503.X, discord_gg_CDg3VKmWp9_34.MinSize.X, math.huge),
                discord_gg_CDg3VKmWp9_459.Y.Scale,
                math.clamp(discord_gg_CDg3VKmWp9_459.Y.Offset + discord_gg_CDg3VKmWp9_503.Y, discord_gg_CDg3VKmWp9_34.MinSize.Y, math.huge)
            )
            if discord_gg_CDg3VKmWp9_199 then
                discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_199)
            end
        end
    end)

    discord_gg_CDg3VKmWp9_34:GiveSignal(discord_gg_CDg3VKmWp9_498)
    discord_gg_CDg3VKmWp9_34:GiveSignal(discord_gg_CDg3VKmWp9_497)

    UI.Destroying:Once(function()
        if discord_gg_CDg3VKmWp9_498 and discord_gg_CDg3VKmWp9_498.Connected then
            discord_gg_CDg3VKmWp9_498:Disconnect()
        end

        if discord_gg_CDg3VKmWp9_497 and discord_gg_CDg3VKmWp9_497.Connected then
            discord_gg_CDg3VKmWp9_497:Disconnect()
        end

        if discord_gg_CDg3VKmWp9_200 and discord_gg_CDg3VKmWp9_200.Connected then
            discord_gg_CDg3VKmWp9_200:Disconnect()
        end

        local discord_gg_CDg3VKmWp9_517 = table.find(discord_gg_CDg3VKmWp9_34.Signals, discord_gg_CDg3VKmWp9_498)
        if discord_gg_CDg3VKmWp9_517 then
            table.remove(discord_gg_CDg3VKmWp9_34.Signals, discord_gg_CDg3VKmWp9_517)
        end

        local discord_gg_CDg3VKmWp9_518 = table.find(discord_gg_CDg3VKmWp9_34.Signals, discord_gg_CDg3VKmWp9_497)
        if discord_gg_CDg3VKmWp9_518 then
            table.remove(discord_gg_CDg3VKmWp9_34.Signals, discord_gg_CDg3VKmWp9_518)
        end
    end)
end

function discord_gg_CDg3VKmWp9_34:MakeCover(discord_gg_CDg3VKmWp9_540: GuiObject, Place: string)
    local discord_gg_CDg3VKmWp9_519 = discord_gg_CDg3VKmWp9_256[Place] or { 0, 0 }
    local discord_gg_CDg3VKmWp9_144 = discord_gg_CDg3VKmWp9_259[Place] or { 1, 0.5 }

    local discord_gg_CDg3VKmWp9_520 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_432 = Vector2.new(discord_gg_CDg3VKmWp9_519[1], discord_gg_CDg3VKmWp9_519[2]),
        discord_gg_CDg3VKmWp9_437 = discord_gg_CDg3VKmWp9_540.BackgroundColor3,
        discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(discord_gg_CDg3VKmWp9_519[1], discord_gg_CDg3VKmWp9_519[2]),
        discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(discord_gg_CDg3VKmWp9_144[1], discord_gg_CDg3VKmWp9_144[2]),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
    })

    return discord_gg_CDg3VKmWp9_520
end

function discord_gg_CDg3VKmWp9_34:MakeLine(discord_gg_CDg3VKmWp9_119: GuiObject, discord_gg_CDg3VKmWp9_651)
    local discord_gg_CDg3VKmWp9_521 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_432 = discord_gg_CDg3VKmWp9_651.AnchorPoint or Vector2.zero,
        discord_gg_CDg3VKmWp9_437 = "OutlineColor",
        discord_gg_CDg3VKmWp9_522 = discord_gg_CDg3VKmWp9_651.LayoutOrder or 0,
        discord_gg_CDg3VKmWp9_143 = discord_gg_CDg3VKmWp9_651.Position,
        discord_gg_CDg3VKmWp9_144 = discord_gg_CDg3VKmWp9_651.Size,
        discord_gg_CDg3VKmWp9_429 = discord_gg_CDg3VKmWp9_651.ZIndex or discord_gg_CDg3VKmWp9_119.ZIndex,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_119,
    })

    return discord_gg_CDg3VKmWp9_521
end

function discord_gg_CDg3VKmWp9_34:AddOutline(discord_gg_CDg3VKmWp9_119: GuiObject)
    local discord_gg_CDg3VKmWp9_523 = discord_gg_CDg3VKmWp9_381("UIStroke", {
        discord_gg_CDg3VKmWp9_235 = "OutlineColor",
        discord_gg_CDg3VKmWp9_524 = 1,
        discord_gg_CDg3VKmWp9_429 = 2,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_119,
    })
    local discord_gg_CDg3VKmWp9_525 = discord_gg_CDg3VKmWp9_381("UIStroke", {
        discord_gg_CDg3VKmWp9_235 = "DarkColor",
        discord_gg_CDg3VKmWp9_524 = 1.5,
        discord_gg_CDg3VKmWp9_429 = 1,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_119,
    })
    return discord_gg_CDg3VKmWp9_523, discord_gg_CDg3VKmWp9_525
end

function discord_gg_CDg3VKmWp9_34:AddBlank(discord_gg_CDg3VKmWp9_119: GuiObject, discord_gg_CDg3VKmWp9_144: UDim2)
    return discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_144 = discord_gg_CDg3VKmWp9_144 or UDim2.fromScale(0, 0),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_119,
    })
end

local discord_gg_CDg3VKmWp9_526 = {}
local discord_gg_CDg3VKmWp9_527 = setmetatable({}, { __mode = "k" })

function discord_gg_CDg3VKmWp9_34:PlayTabAnimation(discord_gg_CDg3VKmWp9_971, Showing: boolean, OnComplete: (() -> ())?)
    if type(discord_gg_CDg3VKmWp9_971) ~= "table" or not discord_gg_CDg3VKmWp9_971.Container then
        if OnComplete then
            OnComplete()
        end

        return
    end

    local discord_gg_CDg3VKmWp9_528 = discord_gg_CDg3VKmWp9_971.Container :: Frame
    local discord_gg_CDg3VKmWp9_529 = discord_gg_CDg3VKmWp9_527[discord_gg_CDg3VKmWp9_528]
    if discord_gg_CDg3VKmWp9_529 then
        discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_529, true)
        discord_gg_CDg3VKmWp9_527[discord_gg_CDg3VKmWp9_528] = nil
    end

    local discord_gg_CDg3VKmWp9_530 = discord_gg_CDg3VKmWp9_528.ZIndex
    if not (discord_gg_CDg3VKmWp9_34.Animations and discord_gg_CDg3VKmWp9_34.Animations.TabSwitch) then
        discord_gg_CDg3VKmWp9_528.Visible = Showing
        discord_gg_CDg3VKmWp9_528.Position = UDim2.fromScale(0, 0)
        discord_gg_CDg3VKmWp9_528.ZIndex = discord_gg_CDg3VKmWp9_530

        if OnComplete then
            OnComplete()
        end

        return
    end

    if Showing then
        local discord_gg_CDg3VKmWp9_65 = discord_gg_CDg3VKmWp9_34.TabTransitionInfo or discord_gg_CDg3VKmWp9_65.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local discord_gg_CDg3VKmWp9_531 = discord_gg_CDg3VKmWp9_34.TabSwipeOffset or 26
        local discord_gg_CDg3VKmWp9_532 = string.lower(discord_gg_CDg3VKmWp9_34.TabSwipeFrom or "bottom")
        local discord_gg_CDg3VKmWp9_533
        local discord_gg_CDg3VKmWp9_534 = {
            discord_gg_CDg3VKmWp9_260 = UDim2.fromOffset(-discord_gg_CDg3VKmWp9_531, 0),
            discord_gg_CDg3VKmWp9_258 = UDim2.fromOffset(discord_gg_CDg3VKmWp9_531, 0),
            discord_gg_CDg3VKmWp9_535 = UDim2.fromOffset(0, -discord_gg_CDg3VKmWp9_531),
            discord_gg_CDg3VKmWp9_257 = UDim2.fromOffset(0, discord_gg_CDg3VKmWp9_531),
        }

        if discord_gg_CDg3VKmWp9_532 == "auto" and discord_gg_CDg3VKmWp9_34.PreviousTab then
            local discord_gg_CDg3VKmWp9_536 = discord_gg_CDg3VKmWp9_971.Button.LayoutOrder
            local discord_gg_CDg3VKmWp9_537 = discord_gg_CDg3VKmWp9_34.PreviousTab.Button.LayoutOrder
            if discord_gg_CDg3VKmWp9_536 and discord_gg_CDg3VKmWp9_537 then
                discord_gg_CDg3VKmWp9_533 = discord_gg_CDg3VKmWp9_536 > discord_gg_CDg3VKmWp9_537 and discord_gg_CDg3VKmWp9_534.Top or discord_gg_CDg3VKmWp9_534.Bottom
            else
                discord_gg_CDg3VKmWp9_533 = discord_gg_CDg3VKmWp9_534.Bottom
            end
        elseif discord_gg_CDg3VKmWp9_532 == "left" then
            discord_gg_CDg3VKmWp9_533 = discord_gg_CDg3VKmWp9_534.Left
        elseif discord_gg_CDg3VKmWp9_532 == "top" then
            discord_gg_CDg3VKmWp9_533 = discord_gg_CDg3VKmWp9_534.Top
        elseif discord_gg_CDg3VKmWp9_532 == "right" then
            discord_gg_CDg3VKmWp9_533 = discord_gg_CDg3VKmWp9_534.Right
        else
            discord_gg_CDg3VKmWp9_533 = discord_gg_CDg3VKmWp9_534.Bottom
        end

        discord_gg_CDg3VKmWp9_528.ZIndex = discord_gg_CDg3VKmWp9_530 + 1
        discord_gg_CDg3VKmWp9_528.Position = discord_gg_CDg3VKmWp9_533
        discord_gg_CDg3VKmWp9_528.Visible = true

        local discord_gg_CDg3VKmWp9_538 = TweenService:Create(discord_gg_CDg3VKmWp9_528, discord_gg_CDg3VKmWp9_65, {
            discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 0)
        })

        discord_gg_CDg3VKmWp9_527[discord_gg_CDg3VKmWp9_528] = discord_gg_CDg3VKmWp9_538
        discord_gg_CDg3VKmWp9_538:Play()

        local discord_gg_CDg3VKmWp9_274; discord_gg_CDg3VKmWp9_274 = discord_gg_CDg3VKmWp9_538.Completed:Connect(function(PlaybackState)
            if discord_gg_CDg3VKmWp9_274 then
                discord_gg_CDg3VKmWp9_274:Disconnect()
            end

            if discord_gg_CDg3VKmWp9_527[discord_gg_CDg3VKmWp9_528] == discord_gg_CDg3VKmWp9_538 then
                discord_gg_CDg3VKmWp9_527[discord_gg_CDg3VKmWp9_528] = nil
            end

            if PlaybackState == Enum.PlaybackState.Cancelled then
                return
            end

            discord_gg_CDg3VKmWp9_528.ZIndex = discord_gg_CDg3VKmWp9_530
            if OnComplete then
                OnComplete()
            end
        end)
    else
        discord_gg_CDg3VKmWp9_528.Visible = false
        discord_gg_CDg3VKmWp9_528.Position = UDim2.fromScale(0, 0)
        discord_gg_CDg3VKmWp9_528.ZIndex = discord_gg_CDg3VKmWp9_530

        if OnComplete then
            OnComplete()
        end
    end
end

function discord_gg_CDg3VKmWp9_34:MakeBoxPopOut(discord_gg_CDg3VKmWp9_853: any, discord_gg_CDg3VKmWp9_10: {
    discord_gg_CDg3VKmWp9_418: boolean?,
    discord_gg_CDg3VKmWp9_541: GuiObject?,
    discord_gg_CDg3VKmWp9_1106: (() -> { GuiObject })?,
    discord_gg_CDg3VKmWp9_1126: (() -> ())?,
    discord_gg_CDg3VKmWp9_1107: (() -> ())?,
    discord_gg_CDg3VKmWp9_178: number?,
    discord_gg_CDg3VKmWp9_179: number?,
})
    discord_gg_CDg3VKmWp9_853.PoppedOut = false
    discord_gg_CDg3VKmWp9_853.PopOutEnabled = not discord_gg_CDg3VKmWp9_383() and discord_gg_CDg3VKmWp9_10.Enabled ~= false
    discord_gg_CDg3VKmWp9_853.PopOutFloat = nil
    discord_gg_CDg3VKmWp9_853.PopOutPlaceholder = nil
    discord_gg_CDg3VKmWp9_853.PopOutMaxHeight = if typeof(discord_gg_CDg3VKmWp9_10.MaxPopOutHeight) == "number" then discord_gg_CDg3VKmWp9_10.MaxPopOutHeight else nil
    discord_gg_CDg3VKmWp9_853.PopOutWidth = if typeof(discord_gg_CDg3VKmWp9_10.PopOutWidth) == "number" then discord_gg_CDg3VKmWp9_10.PopOutWidth else nil

    if not discord_gg_CDg3VKmWp9_853.PopOutEnabled then
        function discord_gg_CDg3VKmWp9_853:SetPoppedOut(_Value: boolean, _SetPoppedOut: UDim2) end
        function discord_gg_CDg3VKmWp9_853:TogglePoppedOut() end
        function discord_gg_CDg3VKmWp9_853:RefreshPopOutPlaceholder() end
        function discord_gg_CDg3VKmWp9_853:SetMaxPopOutHeight(_Height: number?) end
        function discord_gg_CDg3VKmWp9_853:SetPopOutWidth(_Width: number?) end
        return
    end

    local discord_gg_CDg3VKmWp9_539 = discord_gg_CDg3VKmWp9_853.BoxHolder
    local discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_853.Holder
    local discord_gg_CDg3VKmWp9_541 = discord_gg_CDg3VKmWp9_10.Header

    local discord_gg_CDg3VKmWp9_208
    local discord_gg_CDg3VKmWp9_542
    local discord_gg_CDg3VKmWp9_335
    local discord_gg_CDg3VKmWp9_543

    local discord_gg_CDg3VKmWp9_556: { GuiObject } = {}
    local OriginalParents: { [GuiObject]: Instance? } = {}
    local OriginalLayoutOrders: { [GuiObject]: number } = {}

    local discord_gg_CDg3VKmWp9_564: "Idle" | "Holding" | "Dragging" = "Idle"
    local discord_gg_CDg3VKmWp9_565: InputObject?
    local discord_gg_CDg3VKmWp9_566: Vector2?

    local discord_gg_CDg3VKmWp9_567: UDim2?
    local discord_gg_CDg3VKmWp9_568: RBXScriptConnection?
    local discord_gg_CDg3VKmWp9_544 = false

    local function discord_gg_CDg3VKmWp9_545(): number
        if typeof(discord_gg_CDg3VKmWp9_853.PopOutWidth) == "number" then
            return math.max(50, math.floor(discord_gg_CDg3VKmWp9_853.PopOutWidth + 0.5))
        end

        if typeof(discord_gg_CDg3VKmWp9_853.PopOutDockedWidth) == "number" then
            return math.max(50, math.floor(discord_gg_CDg3VKmWp9_853.PopOutDockedWidth + 0.5))
        end

        local discord_gg_CDg3VKmWp9_546 = discord_gg_CDg3VKmWp9_540.AbsoluteSize.X / discord_gg_CDg3VKmWp9_34.DPIScale
        if discord_gg_CDg3VKmWp9_546 < 50 then
            discord_gg_CDg3VKmWp9_546 = 200
        end

        return math.max(50, math.floor(discord_gg_CDg3VKmWp9_546 + 0.5))
    end

    local function discord_gg_CDg3VKmWp9_547()
        if not (discord_gg_CDg3VKmWp9_853.PoppedOut and discord_gg_CDg3VKmWp9_335) then
            return
        end

        discord_gg_CDg3VKmWp9_335.Size = UDim2.fromOffset(discord_gg_CDg3VKmWp9_545(), discord_gg_CDg3VKmWp9_335.Size.Y.Offset)
        if discord_gg_CDg3VKmWp9_853.Resize then
            discord_gg_CDg3VKmWp9_853:Resize()
        end
    end

    local function discord_gg_CDg3VKmWp9_548()
        if not discord_gg_CDg3VKmWp9_335 or not discord_gg_CDg3VKmWp9_39 then
            return
        end

        local discord_gg_CDg3VKmWp9_549 = discord_gg_CDg3VKmWp9_335.ZIndex
        for discord_gg_CDg3VKmWp9_26, Child in discord_gg_CDg3VKmWp9_39:GetChildren() do
            if Child:IsA("GuiObject") and Child ~= discord_gg_CDg3VKmWp9_335 then
                discord_gg_CDg3VKmWp9_549 = math.max(discord_gg_CDg3VKmWp9_549, Child.ZIndex)
            end
        end

        discord_gg_CDg3VKmWp9_335.ZIndex = discord_gg_CDg3VKmWp9_549 + 1
        if discord_gg_CDg3VKmWp9_335.Parent == discord_gg_CDg3VKmWp9_39 then
            discord_gg_CDg3VKmWp9_335.Parent = discord_gg_CDg3VKmWp9_40
        end
        discord_gg_CDg3VKmWp9_335.Parent = discord_gg_CDg3VKmWp9_39
    end

    local function discord_gg_CDg3VKmWp9_550()
        local discord_gg_CDg3VKmWp9_119 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
            discord_gg_CDg3VKmWp9_437 = "BackgroundColor",
            discord_gg_CDg3VKmWp9_122 = 0.12,
            discord_gg_CDg3VKmWp9_420 = true,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 0),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_539,
        })
        table.insert(
            discord_gg_CDg3VKmWp9_34.Corners,
            discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_119,
            })
        )
        discord_gg_CDg3VKmWp9_34:AddOutline(discord_gg_CDg3VKmWp9_119)

        discord_gg_CDg3VKmWp9_542 = discord_gg_CDg3VKmWp9_541:Clone()
        discord_gg_CDg3VKmWp9_542.Parent = discord_gg_CDg3VKmWp9_119
        discord_gg_CDg3VKmWp9_318(discord_gg_CDg3VKmWp9_541, discord_gg_CDg3VKmWp9_542)
        discord_gg_CDg3VKmWp9_326(discord_gg_CDg3VKmWp9_542)

        if discord_gg_CDg3VKmWp9_444 then
            local discord_gg_CDg3VKmWp9_552 = discord_gg_CDg3VKmWp9_381("ImageButton", {
                discord_gg_CDg3VKmWp9_124 = false,
                discord_gg_CDg3VKmWp9_432 = Vector2.new(1, 0.5),
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_553 = "WhiteColor",
                discord_gg_CDg3VKmWp9_143 = UDim2.new(1, -8, 0.5, 0),
                discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(22, 22),
                discord_gg_CDg3VKmWp9_429 = discord_gg_CDg3VKmWp9_542.ZIndex + 1,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_119,
            })
            discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_552, discord_gg_CDg3VKmWp9_444)
            discord_gg_CDg3VKmWp9_552.MouseButton1Click:Connect(function()
                discord_gg_CDg3VKmWp9_853:SetPoppedOut(false)
            end)
        end

        return discord_gg_CDg3VKmWp9_119
    end

    function discord_gg_CDg3VKmWp9_853:RefreshPopOutPlaceholder()
        if not discord_gg_CDg3VKmWp9_853.PoppedOut or not discord_gg_CDg3VKmWp9_208 or not discord_gg_CDg3VKmWp9_541 then
            return
        end

        if discord_gg_CDg3VKmWp9_542 then
            discord_gg_CDg3VKmWp9_542:Destroy()
            discord_gg_CDg3VKmWp9_542 = nil
        end

        discord_gg_CDg3VKmWp9_542 = discord_gg_CDg3VKmWp9_541:Clone()
        discord_gg_CDg3VKmWp9_542.Parent = discord_gg_CDg3VKmWp9_208
        discord_gg_CDg3VKmWp9_318(discord_gg_CDg3VKmWp9_541, discord_gg_CDg3VKmWp9_542)
        discord_gg_CDg3VKmWp9_326(discord_gg_CDg3VKmWp9_542)
    end

    function discord_gg_CDg3VKmWp9_853:SetPoppedOut(discord_gg_CDg3VKmWp9_554: boolean, FloatPosition: UDim2?)
        if not discord_gg_CDg3VKmWp9_853.PopOutEnabled or discord_gg_CDg3VKmWp9_853.Destroyed then
            return
        end

        discord_gg_CDg3VKmWp9_554 = discord_gg_CDg3VKmWp9_554 == true
        if discord_gg_CDg3VKmWp9_853.PoppedOut == discord_gg_CDg3VKmWp9_554 then
            if discord_gg_CDg3VKmWp9_554 and FloatPosition and discord_gg_CDg3VKmWp9_335 then
                discord_gg_CDg3VKmWp9_335.Position = FloatPosition
            end
            return
        end

        if discord_gg_CDg3VKmWp9_554 then
            if discord_gg_CDg3VKmWp9_10.Before then
                discord_gg_CDg3VKmWp9_10.Before()
            end

            local discord_gg_CDg3VKmWp9_555 = if discord_gg_CDg3VKmWp9_10.Children then discord_gg_CDg3VKmWp9_10.Children() else { discord_gg_CDg3VKmWp9_540 }
            discord_gg_CDg3VKmWp9_556 = {}

            table.clear(OriginalParents)
            table.clear(OriginalLayoutOrders)

            for discord_gg_CDg3VKmWp9_26, Child in discord_gg_CDg3VKmWp9_555 do
                if not Child or not Child.Parent then
                    continue
                end

                table.insert(discord_gg_CDg3VKmWp9_556, Child)
                OriginalParents[Child] = Child.Parent
                OriginalLayoutOrders[Child] = Child.LayoutOrder
            end

            if #HandledChildren == 0 then
                return
            end

            local discord_gg_CDg3VKmWp9_557 = discord_gg_CDg3VKmWp9_540.AbsoluteSize.X / discord_gg_CDg3VKmWp9_34.DPIScale
            if discord_gg_CDg3VKmWp9_557 < 50 then
                discord_gg_CDg3VKmWp9_557 = 200
            end
            discord_gg_CDg3VKmWp9_853.PopOutDockedWidth = math.max(50, math.floor(discord_gg_CDg3VKmWp9_557 + 0.5))

            local discord_gg_CDg3VKmWp9_546 = discord_gg_CDg3VKmWp9_545()

            local discord_gg_CDg3VKmWp9_558 = discord_gg_CDg3VKmWp9_540.AbsolutePosition
            discord_gg_CDg3VKmWp9_208 = discord_gg_CDg3VKmWp9_550()
            discord_gg_CDg3VKmWp9_853.PopOutPlaceholder = discord_gg_CDg3VKmWp9_208

            discord_gg_CDg3VKmWp9_335 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_419 = true,
                discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_143 = FloatPosition or UDim2.fromOffset(
                    discord_gg_CDg3VKmWp9_558.X / discord_gg_CDg3VKmWp9_34.DPIScale,
                    discord_gg_CDg3VKmWp9_558.Y / discord_gg_CDg3VKmWp9_34.DPIScale
                ),
                discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(discord_gg_CDg3VKmWp9_546, 0),
                discord_gg_CDg3VKmWp9_429 = 1,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_39,
            })
            discord_gg_CDg3VKmWp9_543 = discord_gg_CDg3VKmWp9_381("UIScale", {
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_335,
            })
            table.insert(discord_gg_CDg3VKmWp9_34.Scales, discord_gg_CDg3VKmWp9_543)
            discord_gg_CDg3VKmWp9_543.Scale = discord_gg_CDg3VKmWp9_34.DPIScale - (tonumber(discord_gg_CDg3VKmWp9_34.ScalesOffset[discord_gg_CDg3VKmWp9_543]) or 0)

            discord_gg_CDg3VKmWp9_381("UIListLayout", {
                discord_gg_CDg3VKmWp9_166 = UDim.new(0, 6),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_335,
            })

            for discord_gg_CDg3VKmWp9_26, Child in discord_gg_CDg3VKmWp9_556 do
                Child.Parent = discord_gg_CDg3VKmWp9_335
            end

            if not table.find(discord_gg_CDg3VKmWp9_34.DraggableElements, discord_gg_CDg3VKmWp9_335) then
                table.insert(discord_gg_CDg3VKmWp9_34.DraggableElements, discord_gg_CDg3VKmWp9_335)
            end

            discord_gg_CDg3VKmWp9_853.PopOutFloat = discord_gg_CDg3VKmWp9_335
            discord_gg_CDg3VKmWp9_853.PoppedOut = true
            discord_gg_CDg3VKmWp9_317(discord_gg_CDg3VKmWp9_853)
            discord_gg_CDg3VKmWp9_548()

            discord_gg_CDg3VKmWp9_335:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
                discord_gg_CDg3VKmWp9_853:Resize()
            end)

            if discord_gg_CDg3VKmWp9_10.After then
                discord_gg_CDg3VKmWp9_10.After()
            end

            return
        end

        if discord_gg_CDg3VKmWp9_335 then
            local discord_gg_CDg3VKmWp9_559 = table.find(discord_gg_CDg3VKmWp9_34.DraggableElements, discord_gg_CDg3VKmWp9_335)
            if discord_gg_CDg3VKmWp9_559 then
                table.remove(discord_gg_CDg3VKmWp9_34.DraggableElements, discord_gg_CDg3VKmWp9_559)
            end
        end

        if discord_gg_CDg3VKmWp9_543 then
            local discord_gg_CDg3VKmWp9_560 = table.find(discord_gg_CDg3VKmWp9_34.Scales, discord_gg_CDg3VKmWp9_543)
            if discord_gg_CDg3VKmWp9_560 then
                table.remove(discord_gg_CDg3VKmWp9_34.Scales, discord_gg_CDg3VKmWp9_560)
            end

            discord_gg_CDg3VKmWp9_543 = nil
        end

        for discord_gg_CDg3VKmWp9_26, Child in discord_gg_CDg3VKmWp9_556 do
            if not Child or not Child.Parent then
                continue
            end

            Child.Parent = OriginalParents[Child] or discord_gg_CDg3VKmWp9_539
            Child.LayoutOrder = OriginalLayoutOrders[Child] or 0
        end

        if discord_gg_CDg3VKmWp9_208 then
            discord_gg_CDg3VKmWp9_208:Destroy()
            discord_gg_CDg3VKmWp9_208 = nil
        end

        discord_gg_CDg3VKmWp9_542 = nil

        if discord_gg_CDg3VKmWp9_335 then
            discord_gg_CDg3VKmWp9_335:Destroy()
            discord_gg_CDg3VKmWp9_335 = nil
        end

        discord_gg_CDg3VKmWp9_853.PopOutFloat = nil
        discord_gg_CDg3VKmWp9_853.PopOutPlaceholder = nil
        discord_gg_CDg3VKmWp9_853.PopOutDockedWidth = nil
        discord_gg_CDg3VKmWp9_853.PoppedOut = false

        table.clear(discord_gg_CDg3VKmWp9_556)
        table.clear(OriginalParents)
        table.clear(OriginalLayoutOrders)

        if discord_gg_CDg3VKmWp9_10.After then
            discord_gg_CDg3VKmWp9_10.After()
        end
    end

    function discord_gg_CDg3VKmWp9_853:TogglePoppedOut()
        discord_gg_CDg3VKmWp9_853:SetPoppedOut(not discord_gg_CDg3VKmWp9_853.PoppedOut)
    end

    function discord_gg_CDg3VKmWp9_853:SetMaxPopOutHeight(discord_gg_CDg3VKmWp9_232: number?)
        if discord_gg_CDg3VKmWp9_232 ~= nil then
            assert(typeof(discord_gg_CDg3VKmWp9_232) == "number", "Height must be a number or nil")
            assert(discord_gg_CDg3VKmWp9_232 >= 0, "Height must be higher than 0")
        end

        discord_gg_CDg3VKmWp9_853.PopOutMaxHeight = discord_gg_CDg3VKmWp9_232
        if discord_gg_CDg3VKmWp9_853.PoppedOut and discord_gg_CDg3VKmWp9_853.Resize then
            discord_gg_CDg3VKmWp9_853:Resize()
        end
    end

    function discord_gg_CDg3VKmWp9_853:SetPopOutWidth(discord_gg_CDg3VKmWp9_546: number?)
        if discord_gg_CDg3VKmWp9_546 ~= nil then
            assert(typeof(discord_gg_CDg3VKmWp9_546) == "number", "Width must be a number or nil")
            assert(discord_gg_CDg3VKmWp9_546 >= 0, "Width must be higher than 0")
        end

        discord_gg_CDg3VKmWp9_853.PopOutWidth = discord_gg_CDg3VKmWp9_546
        discord_gg_CDg3VKmWp9_547()
    end

    local function discord_gg_CDg3VKmWp9_561()
        if discord_gg_CDg3VKmWp9_564 == "Idle" then
            return
        end

        local discord_gg_CDg3VKmWp9_562 = discord_gg_CDg3VKmWp9_564 == "Dragging"
        local discord_gg_CDg3VKmWp9_563 = discord_gg_CDg3VKmWp9_544
        discord_gg_CDg3VKmWp9_564 = "Idle"
        discord_gg_CDg3VKmWp9_565 = nil
        discord_gg_CDg3VKmWp9_566 = nil
        discord_gg_CDg3VKmWp9_567 = nil
        discord_gg_CDg3VKmWp9_544 = false

        if discord_gg_CDg3VKmWp9_568 and discord_gg_CDg3VKmWp9_568.Connected then
            discord_gg_CDg3VKmWp9_568:Disconnect()
            discord_gg_CDg3VKmWp9_568 = nil
        end

        if not discord_gg_CDg3VKmWp9_562 or not discord_gg_CDg3VKmWp9_853.PoppedOut or not discord_gg_CDg3VKmWp9_335 then
            return
        end

        local discord_gg_CDg3VKmWp9_569 = discord_gg_CDg3VKmWp9_335.AbsolutePosition + (discord_gg_CDg3VKmWp9_335.AbsoluteSize * 0.5)
        local discord_gg_CDg3VKmWp9_570 = false
        if discord_gg_CDg3VKmWp9_34.Toggled and discord_gg_CDg3VKmWp9_208 and discord_gg_CDg3VKmWp9_208.Parent then
            local discord_gg_CDg3VKmWp9_571 = discord_gg_CDg3VKmWp9_208.AbsolutePosition + (discord_gg_CDg3VKmWp9_208.AbsoluteSize * 0.5)
            discord_gg_CDg3VKmWp9_570 = (discord_gg_CDg3VKmWp9_569 - discord_gg_CDg3VKmWp9_571).Magnitude <= discord_gg_CDg3VKmWp9_34.PopOutSnapDistance
        end

        if discord_gg_CDg3VKmWp9_570 or (discord_gg_CDg3VKmWp9_563 and not discord_gg_CDg3VKmWp9_327(discord_gg_CDg3VKmWp9_569)) then
            discord_gg_CDg3VKmWp9_853:SetPoppedOut(false)
        end
    end

    local function discord_gg_CDg3VKmWp9_572(discord_gg_CDg3VKmWp9_203: InputObject)
        if discord_gg_CDg3VKmWp9_564 ~= "Idle" or discord_gg_CDg3VKmWp9_853.Destroyed or not (discord_gg_CDg3VKmWp9_38 and discord_gg_CDg3VKmWp9_38.Parent) then
            return
        end

        local discord_gg_CDg3VKmWp9_573 = Vector2.new(discord_gg_CDg3VKmWp9_397(discord_gg_CDg3VKmWp9_203.Position, discord_gg_CDg3VKmWp9_541).X, discord_gg_CDg3VKmWp9_397(discord_gg_CDg3VKmWp9_203.Position, discord_gg_CDg3VKmWp9_541).Y)
        local discord_gg_CDg3VKmWp9_535 = discord_gg_CDg3VKmWp9_329(discord_gg_CDg3VKmWp9_573)
        if discord_gg_CDg3VKmWp9_853.PoppedOut then
            if not discord_gg_CDg3VKmWp9_335 or discord_gg_CDg3VKmWp9_535 ~= discord_gg_CDg3VKmWp9_335 then
                return
            end
        elseif discord_gg_CDg3VKmWp9_535 ~= nil and not discord_gg_CDg3VKmWp9_541:IsDescendantOf(discord_gg_CDg3VKmWp9_535) then
            return
        end

        discord_gg_CDg3VKmWp9_564 = "Holding"
        discord_gg_CDg3VKmWp9_565 = discord_gg_CDg3VKmWp9_203
        discord_gg_CDg3VKmWp9_566 = Vector2.new(discord_gg_CDg3VKmWp9_397(discord_gg_CDg3VKmWp9_203.Position, discord_gg_CDg3VKmWp9_541).X, discord_gg_CDg3VKmWp9_397(discord_gg_CDg3VKmWp9_203.Position, discord_gg_CDg3VKmWp9_541).Y)
        discord_gg_CDg3VKmWp9_567 = nil
        discord_gg_CDg3VKmWp9_544 = false

        if discord_gg_CDg3VKmWp9_853.PoppedOut and discord_gg_CDg3VKmWp9_335 then
            discord_gg_CDg3VKmWp9_548()
        end

        discord_gg_CDg3VKmWp9_568 = discord_gg_CDg3VKmWp9_203.Changed:Connect(function()
            if discord_gg_CDg3VKmWp9_203.UserInputState == Enum.UserInputState.End then
                discord_gg_CDg3VKmWp9_561()
            end
        end)

        task.delay(discord_gg_CDg3VKmWp9_34.PopOutHoldTime, function()
            if (discord_gg_CDg3VKmWp9_564 :: any) ~= "Holding" or discord_gg_CDg3VKmWp9_565 ~= discord_gg_CDg3VKmWp9_203 then
                return
            end

            discord_gg_CDg3VKmWp9_564 = "Dragging"
            if discord_gg_CDg3VKmWp9_853.PoppedOut and discord_gg_CDg3VKmWp9_335 then
                discord_gg_CDg3VKmWp9_548()
                discord_gg_CDg3VKmWp9_567 = discord_gg_CDg3VKmWp9_335.Position
            end
        end)
    end

    local function discord_gg_CDg3VKmWp9_574(discord_gg_CDg3VKmWp9_203: InputObject)
        if discord_gg_CDg3VKmWp9_564 ~= "Dragging" or not discord_gg_CDg3VKmWp9_566 then
            return
        end
        if not (discord_gg_CDg3VKmWp9_38 and discord_gg_CDg3VKmWp9_38.Parent) then
            discord_gg_CDg3VKmWp9_561()
            return
        end

        local discord_gg_CDg3VKmWp9_575 = Vector2.new(discord_gg_CDg3VKmWp9_397(discord_gg_CDg3VKmWp9_203.Position, discord_gg_CDg3VKmWp9_541).X, discord_gg_CDg3VKmWp9_397(discord_gg_CDg3VKmWp9_203.Position, discord_gg_CDg3VKmWp9_541).Y)
        local discord_gg_CDg3VKmWp9_503 = discord_gg_CDg3VKmWp9_575 - discord_gg_CDg3VKmWp9_566

        if not discord_gg_CDg3VKmWp9_853.PoppedOut then
            if discord_gg_CDg3VKmWp9_503.Magnitude < discord_gg_CDg3VKmWp9_34.PopOutDragThreshold then
                return
            end

            discord_gg_CDg3VKmWp9_853:SetPoppedOut(true)
            if not discord_gg_CDg3VKmWp9_335 then
                return
            end

            discord_gg_CDg3VKmWp9_548()
            discord_gg_CDg3VKmWp9_567 = discord_gg_CDg3VKmWp9_335.Position
            discord_gg_CDg3VKmWp9_544 = true
        elseif discord_gg_CDg3VKmWp9_503.Magnitude >= discord_gg_CDg3VKmWp9_34.PopOutDragThreshold then
            discord_gg_CDg3VKmWp9_544 = true
        end

        if discord_gg_CDg3VKmWp9_335 and discord_gg_CDg3VKmWp9_567 then
            discord_gg_CDg3VKmWp9_335.Position = UDim2.new(
                discord_gg_CDg3VKmWp9_567.X.Scale,
                discord_gg_CDg3VKmWp9_567.X.Offset + discord_gg_CDg3VKmWp9_503.X,
                discord_gg_CDg3VKmWp9_567.Y.Scale,
                discord_gg_CDg3VKmWp9_567.Y.Offset + discord_gg_CDg3VKmWp9_503.Y
            )
        end
    end

    local function discord_gg_CDg3VKmWp9_576(Gui: GuiObject)
        discord_gg_CDg3VKmWp9_34:GiveSignal(Gui.InputBegan:Connect(function(discord_gg_CDg3VKmWp9_203: InputObject)
            if discord_gg_CDg3VKmWp9_277(discord_gg_CDg3VKmWp9_203) then
                discord_gg_CDg3VKmWp9_572(discord_gg_CDg3VKmWp9_203)
            end
        end))
    end

    discord_gg_CDg3VKmWp9_576(discord_gg_CDg3VKmWp9_541)
    for discord_gg_CDg3VKmWp9_26, Descendant in discord_gg_CDg3VKmWp9_541:QueryDescendants("GuiObject:not(ImageButton)") do
        discord_gg_CDg3VKmWp9_576(Descendant)
    end

    discord_gg_CDg3VKmWp9_34:GiveSignal(discord_gg_CDg3VKmWp9_541.DescendantAdded:Connect(function(Descendant)
        if Descendant:IsA("GuiObject") and not Descendant:IsA("ImageButton") then
            discord_gg_CDg3VKmWp9_576(Descendant)
        end
    end))

    discord_gg_CDg3VKmWp9_34:GiveSignal(UserInputService.InputChanged:Connect(function(discord_gg_CDg3VKmWp9_203: InputObject)
        if discord_gg_CDg3VKmWp9_278(discord_gg_CDg3VKmWp9_203) then
            discord_gg_CDg3VKmWp9_574(discord_gg_CDg3VKmWp9_203)
        end
    end))
end

function discord_gg_CDg3VKmWp9_34:MakeOutline(discord_gg_CDg3VKmWp9_119: GuiObject, discord_gg_CDg3VKmWp9_613: number?, discord_gg_CDg3VKmWp9_429: number?)
    warn("Obsidian:MakeOutline is deprecated, please use Obsidian:AddOutline instead.")
    local discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_437 = "DarkColor",
        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(-2, -2),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 4, 1, 4),
        discord_gg_CDg3VKmWp9_429 = discord_gg_CDg3VKmWp9_429,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_119,
    })

    local discord_gg_CDg3VKmWp9_577 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_437 = "OutlineColor",
        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(1, 1),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -2, 1, -2),
        discord_gg_CDg3VKmWp9_429 = discord_gg_CDg3VKmWp9_429,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
    })

    if discord_gg_CDg3VKmWp9_613 and discord_gg_CDg3VKmWp9_613 > 0 then
        discord_gg_CDg3VKmWp9_381("UICorner", {
            discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_613 + 1),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        })
        discord_gg_CDg3VKmWp9_381("UICorner", {
            discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_613),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_577,
        })
    end

    return discord_gg_CDg3VKmWp9_540, discord_gg_CDg3VKmWp9_577
end

function discord_gg_CDg3VKmWp9_34:AddDraggableLabel(...)
    local discord_gg_CDg3VKmWp9_452 = select(1, ...)
    local discord_gg_CDg3VKmWp9_136
    local discord_gg_CDg3VKmWp9_186
    local discord_gg_CDg3VKmWp9_578 = "left"

    if typeof(discord_gg_CDg3VKmWp9_452) == "table" then
        discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_452.Text
        discord_gg_CDg3VKmWp9_186 = discord_gg_CDg3VKmWp9_452.Icon
        discord_gg_CDg3VKmWp9_578 = discord_gg_CDg3VKmWp9_452.IconPosition or "left"
    elseif typeof(discord_gg_CDg3VKmWp9_452) == "string" then
        discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_452
        discord_gg_CDg3VKmWp9_186 = select(2, ...)
        discord_gg_CDg3VKmWp9_578 = select(3, ...) or "left"
    end

    if typeof(discord_gg_CDg3VKmWp9_578) ~= "string" then
        discord_gg_CDg3VKmWp9_578 = "left"
    end

    discord_gg_CDg3VKmWp9_578 = string.lower(discord_gg_CDg3VKmWp9_578)
    assert(discord_gg_CDg3VKmWp9_578 == "left" or discord_gg_CDg3VKmWp9_578 == "right", "Icon Position needs to be either 'left' or 'right'.")

    local discord_gg_CDg3VKmWp9_579 = {
        discord_gg_CDg3VKmWp9_580 = {},
        discord_gg_CDg3VKmWp9_581 = false
    }

    local discord_gg_CDg3VKmWp9_582
    local discord_gg_CDg3VKmWp9_583 = discord_gg_CDg3VKmWp9_381("TextLabel", {
        discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.XY,
        discord_gg_CDg3VKmWp9_437 = "BackgroundColor",
        discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(0, 0),
        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(6, 6),
        discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_136,
        discord_gg_CDg3VKmWp9_584 = 15,
        discord_gg_CDg3VKmWp9_429 = 1,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_39,
    })

    table.insert(
        discord_gg_CDg3VKmWp9_34.Corners,
        discord_gg_CDg3VKmWp9_381("UICorner", {
            discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_583,
        })
    )

    local discord_gg_CDg3VKmWp9_166 = discord_gg_CDg3VKmWp9_381("UIPadding", {
        discord_gg_CDg3VKmWp9_585 = UDim.new(0, 6),
        discord_gg_CDg3VKmWp9_586 = UDim.new(0, 12),
        discord_gg_CDg3VKmWp9_587 = UDim.new(0, 12),
        discord_gg_CDg3VKmWp9_588 = UDim.new(0, 6),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_583,
    })
    table.insert(
        discord_gg_CDg3VKmWp9_34.Scales,
        discord_gg_CDg3VKmWp9_381("UIScale", {
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_583,
        })
    )

    discord_gg_CDg3VKmWp9_34:AddOutline(discord_gg_CDg3VKmWp9_583)
    discord_gg_CDg3VKmWp9_34:MakeDraggable(discord_gg_CDg3VKmWp9_583, discord_gg_CDg3VKmWp9_583, true)

    function discord_gg_CDg3VKmWp9_579:SetText(discord_gg_CDg3VKmWp9_136: string)
        discord_gg_CDg3VKmWp9_583.Text = discord_gg_CDg3VKmWp9_136
    end

    function discord_gg_CDg3VKmWp9_579:SetIcon(NewIcon: string)
        discord_gg_CDg3VKmWp9_186 = NewIcon

        local discord_gg_CDg3VKmWp9_589 = discord_gg_CDg3VKmWp9_186 and discord_gg_CDg3VKmWp9_286(tostring(discord_gg_CDg3VKmWp9_186)) ~= ""
        if discord_gg_CDg3VKmWp9_589 then
            local discord_gg_CDg3VKmWp9_590 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_186)
            assert(discord_gg_CDg3VKmWp9_590, "Icon must be a valid Roblox asset or a valid URL or a valid lucide icon.")

            discord_gg_CDg3VKmWp9_582 = discord_gg_CDg3VKmWp9_582 or discord_gg_CDg3VKmWp9_381("ImageLabel", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_553 = "FontColor",
                discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(16, 16),
                discord_gg_CDg3VKmWp9_429 = 2,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_583,
            })

            discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_582, discord_gg_CDg3VKmWp9_590)
        end

        if discord_gg_CDg3VKmWp9_582 then discord_gg_CDg3VKmWp9_582.Visible = discord_gg_CDg3VKmWp9_589 end
        discord_gg_CDg3VKmWp9_579:SetIconPosition(discord_gg_CDg3VKmWp9_578)
    end

    function discord_gg_CDg3VKmWp9_579:SetIconPosition(NewPosition: string)
        discord_gg_CDg3VKmWp9_578 = string.lower(NewPosition)
        assert(discord_gg_CDg3VKmWp9_578 == "left" or discord_gg_CDg3VKmWp9_578 == "right", "Icon Position needs to be either 'left' or 'right'.")

        local discord_gg_CDg3VKmWp9_589 = discord_gg_CDg3VKmWp9_186 and discord_gg_CDg3VKmWp9_286(tostring(discord_gg_CDg3VKmWp9_186)) ~= ""
        discord_gg_CDg3VKmWp9_166.PaddingLeft = UDim.new(0, (discord_gg_CDg3VKmWp9_589 and discord_gg_CDg3VKmWp9_578 == "left") and 34 or 12)
        discord_gg_CDg3VKmWp9_166.PaddingRight = UDim.new(0, (discord_gg_CDg3VKmWp9_589 and discord_gg_CDg3VKmWp9_578 == "right") and 34 or 12)

        if discord_gg_CDg3VKmWp9_582 then
            if discord_gg_CDg3VKmWp9_578 == "left" then
                discord_gg_CDg3VKmWp9_582.AnchorPoint = Vector2.new(0, 0.5)
                discord_gg_CDg3VKmWp9_582.Position = UDim2.new(0, -22, 0.5, 0)
            else
                discord_gg_CDg3VKmWp9_582.AnchorPoint = Vector2.new(1, 0.5)
                discord_gg_CDg3VKmWp9_582.Position = UDim2.new(1, 22, 0.5, 0)
            end
        end
    end

    function discord_gg_CDg3VKmWp9_579:SetVisible(discord_gg_CDg3VKmWp9_174: boolean)
        discord_gg_CDg3VKmWp9_583.Visible = discord_gg_CDg3VKmWp9_174
    end

    discord_gg_CDg3VKmWp9_579:SetIcon(discord_gg_CDg3VKmWp9_186)
    discord_gg_CDg3VKmWp9_579.Label = discord_gg_CDg3VKmWp9_583

    if not table.find(discord_gg_CDg3VKmWp9_34.DraggableElements, discord_gg_CDg3VKmWp9_583) then
        table.insert(discord_gg_CDg3VKmWp9_34.DraggableElements, discord_gg_CDg3VKmWp9_583)
    end

    discord_gg_CDg3VKmWp9_474(discord_gg_CDg3VKmWp9_583, discord_gg_CDg3VKmWp9_583.Position)

    function discord_gg_CDg3VKmWp9_579:Destroy()
        discord_gg_CDg3VKmWp9_579.Destroyed = true

        if discord_gg_CDg3VKmWp9_579.Connections then
            for discord_gg_CDg3VKmWp9_26, connection in discord_gg_CDg3VKmWp9_579.Connections do
                connection:Disconnect()
            end
        end

        local discord_gg_CDg3VKmWp9_591 = table.find(discord_gg_CDg3VKmWp9_34.DraggableElements, discord_gg_CDg3VKmWp9_583)
        if discord_gg_CDg3VKmWp9_591 then
            table.remove(discord_gg_CDg3VKmWp9_34.DraggableElements, discord_gg_CDg3VKmWp9_591)
        end

        if discord_gg_CDg3VKmWp9_583 then
            discord_gg_CDg3VKmWp9_583:Destroy()
        end
    end

    return discord_gg_CDg3VKmWp9_579
end

function discord_gg_CDg3VKmWp9_34:AddDraggableButton(...)
    local discord_gg_CDg3VKmWp9_452 = select(1, ...)

    local discord_gg_CDg3VKmWp9_136
    local discord_gg_CDg3VKmWp9_592
    local discord_gg_CDg3VKmWp9_593
    local discord_gg_CDg3VKmWp9_594

    if typeof(discord_gg_CDg3VKmWp9_452) == "table" then
        discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_452.Text
        discord_gg_CDg3VKmWp9_592 = discord_gg_CDg3VKmWp9_452.Callback or discord_gg_CDg3VKmWp9_452.Func
        discord_gg_CDg3VKmWp9_593 = discord_gg_CDg3VKmWp9_452.ExcludeScaling
        discord_gg_CDg3VKmWp9_594 = discord_gg_CDg3VKmWp9_452.ExcludeDragging
    elseif typeof(discord_gg_CDg3VKmWp9_452) == "string" then
        discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_452
        discord_gg_CDg3VKmWp9_592 = select(2, ...)
        discord_gg_CDg3VKmWp9_593 = select(3, ...)
        discord_gg_CDg3VKmWp9_594 = select(4, ...)
    end

    local discord_gg_CDg3VKmWp9_595 = {
        discord_gg_CDg3VKmWp9_580 = {},
        discord_gg_CDg3VKmWp9_581 = false
    }

    local discord_gg_CDg3VKmWp9_596 = discord_gg_CDg3VKmWp9_381("TextButton", {
        discord_gg_CDg3VKmWp9_437 = "BackgroundColor",
        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(6, 6),
        discord_gg_CDg3VKmWp9_584 = 16,
        discord_gg_CDg3VKmWp9_429 = 1,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_34.OverlayFloats or discord_gg_CDg3VKmWp9_39,
    })
    table.insert(
        discord_gg_CDg3VKmWp9_34.Corners,
        discord_gg_CDg3VKmWp9_381("UICorner", {
            discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_596,
        })
    )
    if not discord_gg_CDg3VKmWp9_593 then
        table.insert(
            discord_gg_CDg3VKmWp9_34.Scales,
            discord_gg_CDg3VKmWp9_381("UIScale", {
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_596,
            })
        )
    end
    discord_gg_CDg3VKmWp9_34:AddOutline(discord_gg_CDg3VKmWp9_596)

    local discord_gg_CDg3VKmWp9_597
    discord_gg_CDg3VKmWp9_596.InputBegan:Connect(function(discord_gg_CDg3VKmWp9_203: InputObject)
        if discord_gg_CDg3VKmWp9_276(discord_gg_CDg3VKmWp9_203) then
            discord_gg_CDg3VKmWp9_597 = discord_gg_CDg3VKmWp9_596.AbsolutePosition
        end
    end)
    discord_gg_CDg3VKmWp9_596.Activated:Connect(function()
        if discord_gg_CDg3VKmWp9_597 and (discord_gg_CDg3VKmWp9_596.AbsolutePosition - discord_gg_CDg3VKmWp9_597).Magnitude > 10 then
            return
        end

        discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_592, discord_gg_CDg3VKmWp9_595)
    end)

    function discord_gg_CDg3VKmWp9_595:SetText(discord_gg_CDg3VKmWp9_136: string)
        local discord_gg_CDg3VKmWp9_395, discord_gg_CDg3VKmWp9_396 = discord_gg_CDg3VKmWp9_34:GetTextBounds(discord_gg_CDg3VKmWp9_136, discord_gg_CDg3VKmWp9_34.Scheme.Font, 16)

        discord_gg_CDg3VKmWp9_596.Text = discord_gg_CDg3VKmWp9_136
        discord_gg_CDg3VKmWp9_596.Size = UDim2.fromOffset(discord_gg_CDg3VKmWp9_395 * 2, discord_gg_CDg3VKmWp9_396 * 2)
    end

    if not discord_gg_CDg3VKmWp9_594 then
        discord_gg_CDg3VKmWp9_34:MakeDraggable(discord_gg_CDg3VKmWp9_596, discord_gg_CDg3VKmWp9_596, true)
    end
    discord_gg_CDg3VKmWp9_595:SetText(discord_gg_CDg3VKmWp9_136)
    discord_gg_CDg3VKmWp9_595.Button = discord_gg_CDg3VKmWp9_596

    if not table.find(discord_gg_CDg3VKmWp9_34.DraggableElements, discord_gg_CDg3VKmWp9_596) then
        table.insert(discord_gg_CDg3VKmWp9_34.DraggableElements, discord_gg_CDg3VKmWp9_596)
    end

    discord_gg_CDg3VKmWp9_474(discord_gg_CDg3VKmWp9_596, discord_gg_CDg3VKmWp9_596.Position)

    function discord_gg_CDg3VKmWp9_595:Destroy()
        discord_gg_CDg3VKmWp9_595.Destroyed = true

        if discord_gg_CDg3VKmWp9_595.Connections then
            for discord_gg_CDg3VKmWp9_26, connection in discord_gg_CDg3VKmWp9_595.Connections do
                connection:Disconnect()
            end
        end

        local discord_gg_CDg3VKmWp9_591 = table.find(discord_gg_CDg3VKmWp9_34.DraggableElements, discord_gg_CDg3VKmWp9_596)
        if discord_gg_CDg3VKmWp9_591 then
            table.remove(discord_gg_CDg3VKmWp9_34.DraggableElements, discord_gg_CDg3VKmWp9_591)
        end

        if discord_gg_CDg3VKmWp9_596 then
            discord_gg_CDg3VKmWp9_596:Destroy()
        end
    end

    return discord_gg_CDg3VKmWp9_595
end

function discord_gg_CDg3VKmWp9_34:AddDraggableMenu(discord_gg_CDg3VKmWp9_171: string)
    local discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.XY,
        discord_gg_CDg3VKmWp9_437 = "BackgroundColor",
        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(6, 6),
        discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(0, 0),
        discord_gg_CDg3VKmWp9_429 = 1,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_39,
    })
    table.insert(
        discord_gg_CDg3VKmWp9_34.Corners,
        discord_gg_CDg3VKmWp9_381("UICorner", {
            discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        })
    )
    table.insert(
        discord_gg_CDg3VKmWp9_34.Scales,
        discord_gg_CDg3VKmWp9_381("UIScale", {
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        })
    )
    discord_gg_CDg3VKmWp9_34:AddOutline(discord_gg_CDg3VKmWp9_540)

    local discord_gg_CDg3VKmWp9_598 = discord_gg_CDg3VKmWp9_34:MakeLine(discord_gg_CDg3VKmWp9_540, {
        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(0, 34),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 1),
    })

    local discord_gg_CDg3VKmWp9_583 = discord_gg_CDg3VKmWp9_381("TextLabel", {
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 34),
        discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_171,
        discord_gg_CDg3VKmWp9_584 = 15,
        discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
    })
    local discord_gg_CDg3VKmWp9_599 = discord_gg_CDg3VKmWp9_381("UIPadding", {
        discord_gg_CDg3VKmWp9_586 = UDim.new(0, 12),
        discord_gg_CDg3VKmWp9_587 = UDim.new(0, 12),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_583,
    })

    local discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(0, 35),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 1, -35),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
    })
    discord_gg_CDg3VKmWp9_381("UIListLayout", {
        discord_gg_CDg3VKmWp9_166 = UDim.new(0, 7),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
    })
    discord_gg_CDg3VKmWp9_381("UIPadding", {
        discord_gg_CDg3VKmWp9_585 = UDim.new(0, 7),
        discord_gg_CDg3VKmWp9_586 = UDim.new(0, 7),
        discord_gg_CDg3VKmWp9_587 = UDim.new(0, 7),
        discord_gg_CDg3VKmWp9_588 = UDim.new(0, 7),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
    })

    discord_gg_CDg3VKmWp9_34:MakeDraggable(discord_gg_CDg3VKmWp9_540, discord_gg_CDg3VKmWp9_583, true)

    if not table.find(discord_gg_CDg3VKmWp9_34.DraggableElements, discord_gg_CDg3VKmWp9_540) then
        table.insert(discord_gg_CDg3VKmWp9_34.DraggableElements, discord_gg_CDg3VKmWp9_540)
    end

    discord_gg_CDg3VKmWp9_474(discord_gg_CDg3VKmWp9_540, discord_gg_CDg3VKmWp9_540.Position)

    return discord_gg_CDg3VKmWp9_540, discord_gg_CDg3VKmWp9_600, discord_gg_CDg3VKmWp9_583, discord_gg_CDg3VKmWp9_598, discord_gg_CDg3VKmWp9_599
end

function discord_gg_CDg3VKmWp9_34:AddDraggableImageButton(...)
    local discord_gg_CDg3VKmWp9_452 = select(1, ...)

    local discord_gg_CDg3VKmWp9_186
    local discord_gg_CDg3VKmWp9_145
    local discord_gg_CDg3VKmWp9_592
    local discord_gg_CDg3VKmWp9_593
    local discord_gg_CDg3VKmWp9_594

    if typeof(discord_gg_CDg3VKmWp9_452) == "table" then
        discord_gg_CDg3VKmWp9_186 = discord_gg_CDg3VKmWp9_452.Icon
        discord_gg_CDg3VKmWp9_145 = discord_gg_CDg3VKmWp9_452.IconSize or 24
        discord_gg_CDg3VKmWp9_592 = discord_gg_CDg3VKmWp9_452.Callback or discord_gg_CDg3VKmWp9_452.Func
        discord_gg_CDg3VKmWp9_593 = discord_gg_CDg3VKmWp9_452.ExcludeScaling
        discord_gg_CDg3VKmWp9_594 = discord_gg_CDg3VKmWp9_452.ExcludeDragging
    elseif typeof(discord_gg_CDg3VKmWp9_452) == "string" or typeof(discord_gg_CDg3VKmWp9_452) == "number" then
        discord_gg_CDg3VKmWp9_186 = discord_gg_CDg3VKmWp9_452
        discord_gg_CDg3VKmWp9_145 = select(2, ...)
        discord_gg_CDg3VKmWp9_592 = select(3, ...)
        discord_gg_CDg3VKmWp9_593 = select(4, ...)
        discord_gg_CDg3VKmWp9_594 = select(5, ...)
    end

    local discord_gg_CDg3VKmWp9_601 = {}

    local discord_gg_CDg3VKmWp9_596 = discord_gg_CDg3VKmWp9_381("TextButton", {
        discord_gg_CDg3VKmWp9_437 = "BackgroundColor",
        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(6, 6),
        discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(discord_gg_CDg3VKmWp9_145 + 12, discord_gg_CDg3VKmWp9_145 + 12),
        discord_gg_CDg3VKmWp9_136 = "",
        discord_gg_CDg3VKmWp9_429 = 1,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_39,
    })

    local discord_gg_CDg3VKmWp9_582 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0.5),
        discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0.5, 0.5),
        discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(discord_gg_CDg3VKmWp9_145, discord_gg_CDg3VKmWp9_145),
        discord_gg_CDg3VKmWp9_553 = "FontColor",
        discord_gg_CDg3VKmWp9_429 = 2,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_596,
    })

    table.insert(
        discord_gg_CDg3VKmWp9_34.Corners,
        discord_gg_CDg3VKmWp9_381("UICorner", {
            discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_596,
        })
    )
    if not discord_gg_CDg3VKmWp9_593 then
        table.insert(
            discord_gg_CDg3VKmWp9_34.Scales,
            discord_gg_CDg3VKmWp9_381("UIScale", {
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_596,
            })
        )
    end
    discord_gg_CDg3VKmWp9_34:AddOutline(discord_gg_CDg3VKmWp9_596)

    local discord_gg_CDg3VKmWp9_597
    discord_gg_CDg3VKmWp9_596.InputBegan:Connect(function(discord_gg_CDg3VKmWp9_203: InputObject)
        if discord_gg_CDg3VKmWp9_276(discord_gg_CDg3VKmWp9_203) then
            discord_gg_CDg3VKmWp9_597 = discord_gg_CDg3VKmWp9_596.AbsolutePosition
        end
    end)
    discord_gg_CDg3VKmWp9_596.Activated:Connect(function()
        if discord_gg_CDg3VKmWp9_597 and (discord_gg_CDg3VKmWp9_596.AbsolutePosition - discord_gg_CDg3VKmWp9_597).Magnitude > 10 then
            return
        end

        discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_592, discord_gg_CDg3VKmWp9_601)
    end)

    function discord_gg_CDg3VKmWp9_601:SetIcon(NewIcon: string)
        discord_gg_CDg3VKmWp9_186 = NewIcon or discord_gg_CDg3VKmWp9_186

        local discord_gg_CDg3VKmWp9_590 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_186)
        assert(discord_gg_CDg3VKmWp9_590, "Icon must be a valid Roblox asset or a valid URL or a valid lucide icon.")

        discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_582, discord_gg_CDg3VKmWp9_590)
    end

    function discord_gg_CDg3VKmWp9_601:SetIconSize(NewSize: number)
        discord_gg_CDg3VKmWp9_145 = NewSize
        discord_gg_CDg3VKmWp9_582.Size = UDim2.fromOffset(discord_gg_CDg3VKmWp9_145, discord_gg_CDg3VKmWp9_145)
        discord_gg_CDg3VKmWp9_596.Size = UDim2.fromOffset(discord_gg_CDg3VKmWp9_145 + 12, discord_gg_CDg3VKmWp9_145 + 12)
    end

    if not discord_gg_CDg3VKmWp9_594 then
        discord_gg_CDg3VKmWp9_34:MakeDraggable(discord_gg_CDg3VKmWp9_596, discord_gg_CDg3VKmWp9_596, true)
    end
    discord_gg_CDg3VKmWp9_601:SetIcon(discord_gg_CDg3VKmWp9_186)
    discord_gg_CDg3VKmWp9_601.Button = discord_gg_CDg3VKmWp9_596

    if not table.find(discord_gg_CDg3VKmWp9_34.DraggableElements, discord_gg_CDg3VKmWp9_596) then
        table.insert(discord_gg_CDg3VKmWp9_34.DraggableElements, discord_gg_CDg3VKmWp9_596)
    end

    discord_gg_CDg3VKmWp9_474(discord_gg_CDg3VKmWp9_596, discord_gg_CDg3VKmWp9_596.Position)

    return discord_gg_CDg3VKmWp9_601
end

do
    local discord_gg_CDg3VKmWp9_602 = discord_gg_CDg3VKmWp9_34:AddDraggableLabel("")
    discord_gg_CDg3VKmWp9_602:SetVisible(false)

    function discord_gg_CDg3VKmWp9_34:SetWatermark(discord_gg_CDg3VKmWp9_136: string)
        warn("Watermark is deprecated, please use Library:AddDraggableLabel instead.")
        discord_gg_CDg3VKmWp9_602:SetText(discord_gg_CDg3VKmWp9_136)
    end

    function discord_gg_CDg3VKmWp9_34:SetWatermarkVisibility(discord_gg_CDg3VKmWp9_174: boolean)
        warn("Watermark is deprecated, please use Library:AddDraggableLabel instead.")
        discord_gg_CDg3VKmWp9_602:SetVisible(discord_gg_CDg3VKmWp9_174)
    end
end

local discord_gg_CDg3VKmWp9_603
function discord_gg_CDg3VKmWp9_34:AddContextMenu(
    discord_gg_CDg3VKmWp9_540: GuiObject,
    discord_gg_CDg3VKmWp9_144: UDim2 | () -> (),
    discord_gg_CDg3VKmWp9_531: { [number]: number } | () -> {},
    discord_gg_CDg3VKmWp9_620: number?,
    discord_gg_CDg3VKmWp9_619: (discord_gg_CDg3VKmWp9_419: boolean) -> ()?,
    IgnoreCornerRadius: boolean?,
    SpecificCornersOnly: ("top" | "bottom" | "no_left" | "no_top_left")?,
    AnimationType: ("Dropdown" | "KeyPicker" | "none")?
)
    local discord_gg_CDg3VKmWp9_604
    local discord_gg_CDg3VKmWp9_605 = discord_gg_CDg3VKmWp9_383() and 500 or 1
    local discord_gg_CDg3VKmWp9_606 = discord_gg_CDg3VKmWp9_540:FindFirstAncestorOfClass("ScreenGui")
    local discord_gg_CDg3VKmWp9_607 = discord_gg_CDg3VKmWp9_40
    if discord_gg_CDg3VKmWp9_606 and discord_gg_CDg3VKmWp9_606 ~= discord_gg_CDg3VKmWp9_38 and discord_gg_CDg3VKmWp9_34.ActiveLoading and discord_gg_CDg3VKmWp9_606 == discord_gg_CDg3VKmWp9_34.ActiveLoading.ScreenGui then
        discord_gg_CDg3VKmWp9_607 = discord_gg_CDg3VKmWp9_606
    end

    if discord_gg_CDg3VKmWp9_620 then
        discord_gg_CDg3VKmWp9_604 = discord_gg_CDg3VKmWp9_381("ScrollingFrame", {
            discord_gg_CDg3VKmWp9_608 = Enum.AutomaticSize.None,
            discord_gg_CDg3VKmWp9_551 = discord_gg_CDg3VKmWp9_620 == 1 and Enum.AutomaticSize.Y or Enum.AutomaticSize.None,
            discord_gg_CDg3VKmWp9_437 = "BackgroundColor",
            discord_gg_CDg3VKmWp9_609 = "rbxasset://textures/ui/Scroll/scroll-middle.png",
            discord_gg_CDg3VKmWp9_416 = UDim2.fromOffset(0, 0),
            discord_gg_CDg3VKmWp9_610 = "OutlineColor",
            discord_gg_CDg3VKmWp9_611 = discord_gg_CDg3VKmWp9_620 == 2 and 2 or 0,
            discord_gg_CDg3VKmWp9_144 = typeof(discord_gg_CDg3VKmWp9_144) == "function" and discord_gg_CDg3VKmWp9_144() or discord_gg_CDg3VKmWp9_144,
            discord_gg_CDg3VKmWp9_612 = "rbxasset://textures/ui/Scroll/scroll-middle.png",
            discord_gg_CDg3VKmWp9_174 = false,
            discord_gg_CDg3VKmWp9_429 = discord_gg_CDg3VKmWp9_605,
            discord_gg_CDg3VKmWp9_419 = discord_gg_CDg3VKmWp9_383(),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_607,
        })
    else
        discord_gg_CDg3VKmWp9_604 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_437 = "BackgroundColor",
            discord_gg_CDg3VKmWp9_144 = typeof(discord_gg_CDg3VKmWp9_144) == "function" and discord_gg_CDg3VKmWp9_144() or discord_gg_CDg3VKmWp9_144,
            discord_gg_CDg3VKmWp9_174 = false,
            discord_gg_CDg3VKmWp9_429 = discord_gg_CDg3VKmWp9_605,
            discord_gg_CDg3VKmWp9_419 = discord_gg_CDg3VKmWp9_383(),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_607,
        })
    end
    table.insert(
        discord_gg_CDg3VKmWp9_34.Scales,
        discord_gg_CDg3VKmWp9_381("UIScale", {
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_604,
        })
    )

    discord_gg_CDg3VKmWp9_381("UIStroke", {
        discord_gg_CDg3VKmWp9_235 = "OutlineColor",
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_604,
    })

    local discord_gg_CDg3VKmWp9_613;
    if IgnoreCornerRadius ~= true then
        if SpecificCornersOnly == "top" then
            discord_gg_CDg3VKmWp9_613 = discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_614 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_615 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_616 = UDim.new(0, 0),
                discord_gg_CDg3VKmWp9_617 = UDim.new(0, 0),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_604,
            }); table.insert(discord_gg_CDg3VKmWp9_34.SpecificCorners, discord_gg_CDg3VKmWp9_613)
        elseif SpecificCornersOnly == "bottom" then
            discord_gg_CDg3VKmWp9_613 = discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_614 = UDim.new(0, 0),
                discord_gg_CDg3VKmWp9_615 = UDim.new(0, 0),
                discord_gg_CDg3VKmWp9_616 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_617 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_604,
            }); table.insert(discord_gg_CDg3VKmWp9_34.SpecificCorners, discord_gg_CDg3VKmWp9_613)
        elseif SpecificCornersOnly == "no_left" then
            discord_gg_CDg3VKmWp9_613 = discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_614 = UDim.new(0, 0),
                discord_gg_CDg3VKmWp9_615 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_616 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_617 = UDim.new(0, 0),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_604,
            }); table.insert(discord_gg_CDg3VKmWp9_34.SpecificCorners, discord_gg_CDg3VKmWp9_613)
        elseif SpecificCornersOnly == "no_top_left" then
            discord_gg_CDg3VKmWp9_613 = discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_614 = UDim.new(0, 0),
                discord_gg_CDg3VKmWp9_615 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_616 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_617 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_604,
            }); table.insert(discord_gg_CDg3VKmWp9_34.SpecificCorners, discord_gg_CDg3VKmWp9_613)
        else
            discord_gg_CDg3VKmWp9_613 = discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_604,
            }); table.insert(discord_gg_CDg3VKmWp9_34.Corners, discord_gg_CDg3VKmWp9_613)
        end
    end

    local discord_gg_CDg3VKmWp9_618 = {
        discord_gg_CDg3VKmWp9_580 = {},
        discord_gg_CDg3VKmWp9_581 = false,

        discord_gg_CDg3VKmWp9_419 = false,
        discord_gg_CDg3VKmWp9_619 = discord_gg_CDg3VKmWp9_619,

        discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_540,
        discord_gg_CDg3VKmWp9_604 = discord_gg_CDg3VKmWp9_604,
        discord_gg_CDg3VKmWp9_613 = discord_gg_CDg3VKmWp9_613,

        discord_gg_CDg3VKmWp9_620 = nil,
        discord_gg_CDg3VKmWp9_621 = nil,

        discord_gg_CDg3VKmWp9_144 = discord_gg_CDg3VKmWp9_144,
        discord_gg_CDg3VKmWp9_622 = discord_gg_CDg3VKmWp9_620 == 1,

        discord_gg_CDg3VKmWp9_623 = nil,
        discord_gg_CDg3VKmWp9_624 = function()
            if not AnimationType or AnimationType == "none" then
                return false
            end

            if not (discord_gg_CDg3VKmWp9_34.Animations and discord_gg_CDg3VKmWp9_34.Animations[AnimationType] == true) then
                return false
            end

            return true, discord_gg_CDg3VKmWp9_34[string.format("%sTransitionInfo", AnimationType)] or discord_gg_CDg3VKmWp9_65.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        end
    }

    if discord_gg_CDg3VKmWp9_620 == 1 then
        discord_gg_CDg3VKmWp9_618.List = discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_604,
        })
    end

    function discord_gg_CDg3VKmWp9_618:Open()
        if discord_gg_CDg3VKmWp9_603 == discord_gg_CDg3VKmWp9_618 then
            return
        elseif discord_gg_CDg3VKmWp9_603 then
            discord_gg_CDg3VKmWp9_603:Close()
        end

        discord_gg_CDg3VKmWp9_603 = discord_gg_CDg3VKmWp9_618
        discord_gg_CDg3VKmWp9_618.Active = true
        discord_gg_CDg3VKmWp9_604.ZIndex = discord_gg_CDg3VKmWp9_605

        local discord_gg_CDg3VKmWp9_625 = if discord_gg_CDg3VKmWp9_607 == discord_gg_CDg3VKmWp9_40 then discord_gg_CDg3VKmWp9_40 else discord_gg_CDg3VKmWp9_607
        discord_gg_CDg3VKmWp9_604.Parent = nil
        discord_gg_CDg3VKmWp9_604.Parent = discord_gg_CDg3VKmWp9_625

        if typeof(discord_gg_CDg3VKmWp9_531) == "function" then
            discord_gg_CDg3VKmWp9_604.Position = UDim2.fromOffset(
                math.floor(discord_gg_CDg3VKmWp9_540.AbsolutePosition.X + discord_gg_CDg3VKmWp9_531()[1]),
                math.floor(discord_gg_CDg3VKmWp9_540.AbsolutePosition.Y + discord_gg_CDg3VKmWp9_531()[2])
            )
        else
            discord_gg_CDg3VKmWp9_604.Position = UDim2.fromOffset(
                math.floor(discord_gg_CDg3VKmWp9_540.AbsolutePosition.X + discord_gg_CDg3VKmWp9_531[1]),
                math.floor(discord_gg_CDg3VKmWp9_540.AbsolutePosition.Y + discord_gg_CDg3VKmWp9_531[2])
            )
        end

        local discord_gg_CDg3VKmWp9_626 = typeof(discord_gg_CDg3VKmWp9_618.Size) == "function" and discord_gg_CDg3VKmWp9_618.Size() or discord_gg_CDg3VKmWp9_618.Size

        if typeof(discord_gg_CDg3VKmWp9_619) == "function" then
            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_619, true)
        end

        if discord_gg_CDg3VKmWp9_618.OpenCloseTween then
            discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_618.OpenCloseTween, true)
            discord_gg_CDg3VKmWp9_618.OpenCloseTween = nil
        end

        local discord_gg_CDg3VKmWp9_627, discord_gg_CDg3VKmWp9_65 = discord_gg_CDg3VKmWp9_618.Animated()
        if discord_gg_CDg3VKmWp9_627 == true then
            local discord_gg_CDg3VKmWp9_628 = discord_gg_CDg3VKmWp9_626
            if discord_gg_CDg3VKmWp9_618.AutoSizeY then
                local discord_gg_CDg3VKmWp9_629 = discord_gg_CDg3VKmWp9_604.AbsoluteSize.Y

                discord_gg_CDg3VKmWp9_604.AutomaticSize = Enum.AutomaticSize.None
                discord_gg_CDg3VKmWp9_628 = UDim2.new(discord_gg_CDg3VKmWp9_626.X.Scale, discord_gg_CDg3VKmWp9_626.X.Offset, 0, discord_gg_CDg3VKmWp9_629)
            end

            discord_gg_CDg3VKmWp9_604.Size = UDim2.new(discord_gg_CDg3VKmWp9_628.X.Scale, discord_gg_CDg3VKmWp9_628.X.Offset, 0, 0)
            discord_gg_CDg3VKmWp9_604.Visible = true

            local discord_gg_CDg3VKmWp9_538 = TweenService:Create(discord_gg_CDg3VKmWp9_604, discord_gg_CDg3VKmWp9_65, { discord_gg_CDg3VKmWp9_144 = discord_gg_CDg3VKmWp9_628 })
            discord_gg_CDg3VKmWp9_618.OpenCloseTween = discord_gg_CDg3VKmWp9_538

            local discord_gg_CDg3VKmWp9_274; discord_gg_CDg3VKmWp9_274 = discord_gg_CDg3VKmWp9_34:GiveSignal(discord_gg_CDg3VKmWp9_538.Completed:Once(function()
                if discord_gg_CDg3VKmWp9_274 then
                    discord_gg_CDg3VKmWp9_274:Disconnect()
                end

                if discord_gg_CDg3VKmWp9_618.OpenCloseTween == discord_gg_CDg3VKmWp9_538 then
                    discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_618.OpenCloseTween, true)
                    discord_gg_CDg3VKmWp9_618.OpenCloseTween = nil

                    if discord_gg_CDg3VKmWp9_618.AutoSizeY then
                        discord_gg_CDg3VKmWp9_604.AutomaticSize = Enum.AutomaticSize.Y
                    end
                end
            end))

            discord_gg_CDg3VKmWp9_538:Play()
        else
            discord_gg_CDg3VKmWp9_604.Size = discord_gg_CDg3VKmWp9_626
            discord_gg_CDg3VKmWp9_604.Visible = true
        end

        discord_gg_CDg3VKmWp9_618.Signal = discord_gg_CDg3VKmWp9_540:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
            if typeof(discord_gg_CDg3VKmWp9_531) == "function" then
                discord_gg_CDg3VKmWp9_604.Position = UDim2.fromOffset(
                    math.floor(discord_gg_CDg3VKmWp9_540.AbsolutePosition.X + discord_gg_CDg3VKmWp9_531()[1]),
                    math.floor(discord_gg_CDg3VKmWp9_540.AbsolutePosition.Y + discord_gg_CDg3VKmWp9_531()[2])
                )
            else
                discord_gg_CDg3VKmWp9_604.Position = UDim2.fromOffset(
                    math.floor(discord_gg_CDg3VKmWp9_540.AbsolutePosition.X + discord_gg_CDg3VKmWp9_531[1]),
                    math.floor(discord_gg_CDg3VKmWp9_540.AbsolutePosition.Y + discord_gg_CDg3VKmWp9_531[2])
                )
            end

            local discord_gg_CDg3VKmWp9_630 = discord_gg_CDg3VKmWp9_34:IsInsideFrame(discord_gg_CDg3VKmWp9_34.WindowContainer, discord_gg_CDg3VKmWp9_540)
            if not discord_gg_CDg3VKmWp9_630 then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_414 in discord_gg_CDg3VKmWp9_34.DraggableElements do
                    if not (discord_gg_CDg3VKmWp9_414 and discord_gg_CDg3VKmWp9_34:IsInsideFrame(discord_gg_CDg3VKmWp9_414, discord_gg_CDg3VKmWp9_540)) then
                        continue
                    end

                    discord_gg_CDg3VKmWp9_630 = true
                    break
                end
            end

            if not discord_gg_CDg3VKmWp9_630 and discord_gg_CDg3VKmWp9_618.Active then
                discord_gg_CDg3VKmWp9_618:Close()
            end
        end)
    end

    function discord_gg_CDg3VKmWp9_618:Close()
        if discord_gg_CDg3VKmWp9_603 ~= discord_gg_CDg3VKmWp9_618 then
            return
        end

        if discord_gg_CDg3VKmWp9_618.Signal then
            discord_gg_CDg3VKmWp9_618.Signal:Disconnect()
            discord_gg_CDg3VKmWp9_618.Signal = nil
        end

        discord_gg_CDg3VKmWp9_618.Active = false
        discord_gg_CDg3VKmWp9_603 = nil

        if typeof(discord_gg_CDg3VKmWp9_619) == "function" then
            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_619, false)
        end

        if discord_gg_CDg3VKmWp9_618.OpenCloseTween then
            discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_618.OpenCloseTween, true)
            discord_gg_CDg3VKmWp9_618.OpenCloseTween = nil
        end

        local discord_gg_CDg3VKmWp9_627, discord_gg_CDg3VKmWp9_65 = discord_gg_CDg3VKmWp9_618.Animated()
        if discord_gg_CDg3VKmWp9_627 == true then
            if discord_gg_CDg3VKmWp9_618.AutoSizeY then
                discord_gg_CDg3VKmWp9_604.AutomaticSize = Enum.AutomaticSize.None
            end

            local discord_gg_CDg3VKmWp9_631 = discord_gg_CDg3VKmWp9_604.Size
            local discord_gg_CDg3VKmWp9_632 = UDim2.new(discord_gg_CDg3VKmWp9_631.X.Scale, discord_gg_CDg3VKmWp9_631.X.Offset, 0, 0)

            local discord_gg_CDg3VKmWp9_538 = TweenService:Create(discord_gg_CDg3VKmWp9_604, discord_gg_CDg3VKmWp9_65, { discord_gg_CDg3VKmWp9_144 = discord_gg_CDg3VKmWp9_632 })
            discord_gg_CDg3VKmWp9_618.OpenCloseTween = discord_gg_CDg3VKmWp9_538

            local discord_gg_CDg3VKmWp9_274; discord_gg_CDg3VKmWp9_274 = discord_gg_CDg3VKmWp9_34:GiveSignal(discord_gg_CDg3VKmWp9_538.Completed:Once(function(PlaybackState)
                if discord_gg_CDg3VKmWp9_274 then
                    discord_gg_CDg3VKmWp9_274:Disconnect()
                end

                if discord_gg_CDg3VKmWp9_618.OpenCloseTween == discord_gg_CDg3VKmWp9_538 then
                    discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_618.OpenCloseTween, true)
                    discord_gg_CDg3VKmWp9_618.OpenCloseTween = nil

                    discord_gg_CDg3VKmWp9_604.Visible = false
                    if discord_gg_CDg3VKmWp9_618.AutoSizeY then
                        discord_gg_CDg3VKmWp9_604.AutomaticSize = Enum.AutomaticSize.Y
                    end
                end
            end))

            discord_gg_CDg3VKmWp9_538:Play()
        else
            discord_gg_CDg3VKmWp9_604.Visible = false
        end
    end

    function discord_gg_CDg3VKmWp9_618:Toggle()
        if discord_gg_CDg3VKmWp9_618.Active then
            discord_gg_CDg3VKmWp9_618:Close()
        else
            discord_gg_CDg3VKmWp9_618:Open()
        end
    end

    function discord_gg_CDg3VKmWp9_618:SetSize(discord_gg_CDg3VKmWp9_144)
        discord_gg_CDg3VKmWp9_618.Size = discord_gg_CDg3VKmWp9_144
        discord_gg_CDg3VKmWp9_604.Size = typeof(discord_gg_CDg3VKmWp9_144) == "function" and discord_gg_CDg3VKmWp9_144() or discord_gg_CDg3VKmWp9_144
    end

    function discord_gg_CDg3VKmWp9_618:Destroy()
        discord_gg_CDg3VKmWp9_618.Destroyed = true

        if discord_gg_CDg3VKmWp9_618.Connections then
            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_618.Connections do
                discord_gg_CDg3VKmWp9_274:Disconnect()
            end
        end

        if discord_gg_CDg3VKmWp9_603 == discord_gg_CDg3VKmWp9_618 then
            discord_gg_CDg3VKmWp9_618:Close()
        end

        if discord_gg_CDg3VKmWp9_618.OpenCloseTween then
            discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_618.OpenCloseTween, true)
            discord_gg_CDg3VKmWp9_618.OpenCloseTween = nil
        end

        local discord_gg_CDg3VKmWp9_633 = table.find(discord_gg_CDg3VKmWp9_34.ContextMenus, discord_gg_CDg3VKmWp9_618)
        if discord_gg_CDg3VKmWp9_633 then
            table.remove(discord_gg_CDg3VKmWp9_34.ContextMenus, discord_gg_CDg3VKmWp9_633)
        end

        if discord_gg_CDg3VKmWp9_604 then
            discord_gg_CDg3VKmWp9_604:Destroy()
        end
    end

    table.insert(discord_gg_CDg3VKmWp9_34.ContextMenus, discord_gg_CDg3VKmWp9_618)
    return discord_gg_CDg3VKmWp9_618
end

discord_gg_CDg3VKmWp9_34:GiveSignal(UserInputService.InputBegan:Connect(function(discord_gg_CDg3VKmWp9_203: InputObject)
    if discord_gg_CDg3VKmWp9_34.Unloaded then
        return
    end

    if discord_gg_CDg3VKmWp9_277(discord_gg_CDg3VKmWp9_203, true) then
        local discord_gg_CDg3VKmWp9_634 = discord_gg_CDg3VKmWp9_603 and (discord_gg_CDg3VKmWp9_603.Menu or discord_gg_CDg3VKmWp9_603.Holder)
        local discord_gg_CDg3VKmWp9_635 = discord_gg_CDg3VKmWp9_397(discord_gg_CDg3VKmWp9_203.Position, discord_gg_CDg3VKmWp9_634)

        if
            discord_gg_CDg3VKmWp9_603
            and not (
                discord_gg_CDg3VKmWp9_34:MouseIsOverFrame(discord_gg_CDg3VKmWp9_603.Menu, discord_gg_CDg3VKmWp9_635)
                or discord_gg_CDg3VKmWp9_34:MouseIsOverFrame(discord_gg_CDg3VKmWp9_603.Holder, discord_gg_CDg3VKmWp9_635)
            )
        then
            discord_gg_CDg3VKmWp9_603:Close()
        end
    end
end))

local discord_gg_CDg3VKmWp9_636 = discord_gg_CDg3VKmWp9_381("TextLabel", {
    discord_gg_CDg3VKmWp9_437 = "BackgroundColor",
    discord_gg_CDg3VKmWp9_584 = 14,
    discord_gg_CDg3VKmWp9_637 = true,
    discord_gg_CDg3VKmWp9_174 = false,
    discord_gg_CDg3VKmWp9_429 = 30,
    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_38,
})
discord_gg_CDg3VKmWp9_381("UIPadding", {
    discord_gg_CDg3VKmWp9_585 = UDim.new(0, 2),
    discord_gg_CDg3VKmWp9_586 = UDim.new(0, 4),
    discord_gg_CDg3VKmWp9_587 = UDim.new(0, 4),
    discord_gg_CDg3VKmWp9_588 = UDim.new(0, 2),
    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_636,
})
table.insert(
    discord_gg_CDg3VKmWp9_34.Scales,
    discord_gg_CDg3VKmWp9_381("UIScale", {
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_636,
    })
)
discord_gg_CDg3VKmWp9_381("UIStroke", {
    discord_gg_CDg3VKmWp9_235 = "OutlineColor",
    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_636,
})
table.insert(
    discord_gg_CDg3VKmWp9_34.Corners,
    discord_gg_CDg3VKmWp9_381("UICorner", {
        discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_636,
    })
)

local discord_gg_CDg3VKmWp9_638 = 0
local discord_gg_CDg3VKmWp9_639 = ""
local discord_gg_CDg3VKmWp9_640 = 0

local function discord_gg_CDg3VKmWp9_641(Force: boolean?)
    if discord_gg_CDg3VKmWp9_34.Unloaded or not discord_gg_CDg3VKmWp9_636.Visible then
        return
    end

    local discord_gg_CDg3VKmWp9_642 = math.max(
        40,
        (workspace.CurrentCamera.ViewportSize.X - discord_gg_CDg3VKmWp9_636.AbsolutePosition.X - 8) / discord_gg_CDg3VKmWp9_34.DPIScale
    )

    if
        not Force
        and discord_gg_CDg3VKmWp9_636.Text == discord_gg_CDg3VKmWp9_639
        and math.abs(discord_gg_CDg3VKmWp9_642 - discord_gg_CDg3VKmWp9_640) < 1
        and discord_gg_CDg3VKmWp9_636.Size.X.Offset > 0
    then
        return
    end

    discord_gg_CDg3VKmWp9_638 += 1
    local discord_gg_CDg3VKmWp9_643 = discord_gg_CDg3VKmWp9_638
    local discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_636.Text

    local discord_gg_CDg3VKmWp9_395, discord_gg_CDg3VKmWp9_396 = discord_gg_CDg3VKmWp9_34:GetTextBounds(discord_gg_CDg3VKmWp9_136, discord_gg_CDg3VKmWp9_636.FontFace, discord_gg_CDg3VKmWp9_636.TextSize, discord_gg_CDg3VKmWp9_642)
    if discord_gg_CDg3VKmWp9_643 ~= discord_gg_CDg3VKmWp9_638 or discord_gg_CDg3VKmWp9_636.Text ~= discord_gg_CDg3VKmWp9_136 then
        return
    end

    discord_gg_CDg3VKmWp9_639 = discord_gg_CDg3VKmWp9_136
    discord_gg_CDg3VKmWp9_640 = discord_gg_CDg3VKmWp9_642
    discord_gg_CDg3VKmWp9_636.Size = UDim2.fromOffset(discord_gg_CDg3VKmWp9_395 + 8, discord_gg_CDg3VKmWp9_396 + 4)
end

discord_gg_CDg3VKmWp9_636:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
    discord_gg_CDg3VKmWp9_641(false)
end)

local discord_gg_CDg3VKmWp9_644
function discord_gg_CDg3VKmWp9_34:AddTooltip(InfoStr: string, DisabledInfoStr: string, HoverInstance: GuiObject)
    local discord_gg_CDg3VKmWp9_645 = {
        discord_gg_CDg3VKmWp9_202 = false,
        discord_gg_CDg3VKmWp9_646 = false,
        discord_gg_CDg3VKmWp9_92 = {},
    }

    local function discord_gg_CDg3VKmWp9_647()
        if
            discord_gg_CDg3VKmWp9_644 == HoverInstance
            or discord_gg_CDg3VKmWp9_34.ActiveDialog
            or (discord_gg_CDg3VKmWp9_603 and discord_gg_CDg3VKmWp9_34:MouseIsOverFrame(discord_gg_CDg3VKmWp9_603.Menu, discord_gg_CDg3VKmWp9_398(nil, discord_gg_CDg3VKmWp9_603.Menu)))
            or (discord_gg_CDg3VKmWp9_645.Disabled and typeof(DisabledInfoStr) ~= "string")
            or (not discord_gg_CDg3VKmWp9_645.Disabled and typeof(InfoStr) ~= "string")
        then
            return
        end
        discord_gg_CDg3VKmWp9_644 = HoverInstance

        local discord_gg_CDg3VKmWp9_606 = HoverInstance:FindFirstAncestorOfClass("ScreenGui")
        if discord_gg_CDg3VKmWp9_606 and discord_gg_CDg3VKmWp9_606 ~= discord_gg_CDg3VKmWp9_38 and discord_gg_CDg3VKmWp9_34.ActiveLoading and discord_gg_CDg3VKmWp9_606 == discord_gg_CDg3VKmWp9_34.ActiveLoading.ScreenGui then
            discord_gg_CDg3VKmWp9_636.Parent = discord_gg_CDg3VKmWp9_606
        else
            discord_gg_CDg3VKmWp9_636.Parent = discord_gg_CDg3VKmWp9_38
        end

        discord_gg_CDg3VKmWp9_636.Text = discord_gg_CDg3VKmWp9_645.Disabled and DisabledInfoStr or InfoStr
        discord_gg_CDg3VKmWp9_636.Position = UDim2.fromOffset(
            discord_gg_CDg3VKmWp9_398(nil, HoverInstance).X + (discord_gg_CDg3VKmWp9_34.ShowCustomCursor and 8 or 14),
            discord_gg_CDg3VKmWp9_398(nil, HoverInstance).Y + (discord_gg_CDg3VKmWp9_34.ShowCustomCursor and 8 or 12)
        )
        discord_gg_CDg3VKmWp9_636.Visible = true
        discord_gg_CDg3VKmWp9_641(true)

        while
            (discord_gg_CDg3VKmWp9_34.Toggled or discord_gg_CDg3VKmWp9_34.ActiveLoading)
            and not discord_gg_CDg3VKmWp9_34.ActiveDialog
            and discord_gg_CDg3VKmWp9_34:MouseIsOverFrame(HoverInstance, discord_gg_CDg3VKmWp9_398(nil, HoverInstance))
            and not (discord_gg_CDg3VKmWp9_603 and discord_gg_CDg3VKmWp9_34:MouseIsOverFrame(discord_gg_CDg3VKmWp9_603.Menu, discord_gg_CDg3VKmWp9_398(nil, discord_gg_CDg3VKmWp9_603.Menu)))
        do
            discord_gg_CDg3VKmWp9_636.Position = UDim2.fromOffset(
                discord_gg_CDg3VKmWp9_398(nil, HoverInstance).X + (discord_gg_CDg3VKmWp9_34.ShowCustomCursor and 8 or 14),
                discord_gg_CDg3VKmWp9_398(nil, HoverInstance).Y + (discord_gg_CDg3VKmWp9_34.ShowCustomCursor and 8 or 12)
            )

            RunService.RenderStepped:Wait()
        end

        discord_gg_CDg3VKmWp9_636.Visible = false
        discord_gg_CDg3VKmWp9_644 = nil
    end

    local function discord_gg_CDg3VKmWp9_648(discord_gg_CDg3VKmWp9_274: RBXScriptConnection | RBXScriptSignal)
        local discord_gg_CDg3VKmWp9_364 = typeof(discord_gg_CDg3VKmWp9_274)
        if discord_gg_CDg3VKmWp9_274 and (discord_gg_CDg3VKmWp9_364 == "RBXScriptConnection" or discord_gg_CDg3VKmWp9_364 == "RBXScriptSignal") then
            table.insert(discord_gg_CDg3VKmWp9_645.Signals, discord_gg_CDg3VKmWp9_274)
        end

        return discord_gg_CDg3VKmWp9_274
    end

    discord_gg_CDg3VKmWp9_648(HoverInstance.MouseEnter:Connect(discord_gg_CDg3VKmWp9_647))
    discord_gg_CDg3VKmWp9_648(HoverInstance.MouseMoved:Connect(discord_gg_CDg3VKmWp9_647))
    discord_gg_CDg3VKmWp9_648(HoverInstance.MouseLeave:Connect(function()
        if discord_gg_CDg3VKmWp9_644 ~= HoverInstance then
            return
        end

        discord_gg_CDg3VKmWp9_636.Visible = false
        discord_gg_CDg3VKmWp9_644 = nil
    end))

    function discord_gg_CDg3VKmWp9_645:Destroy()
        for discord_gg_CDg3VKmWp9_325 = #TooltipTable.Signals, 1, -1 do
            local discord_gg_CDg3VKmWp9_274 = table.remove(discord_gg_CDg3VKmWp9_645.Signals, discord_gg_CDg3VKmWp9_325)
            if discord_gg_CDg3VKmWp9_274 and discord_gg_CDg3VKmWp9_274.Connected then
                discord_gg_CDg3VKmWp9_274:Disconnect()
            end
        end

        if discord_gg_CDg3VKmWp9_644 == HoverInstance then
            if discord_gg_CDg3VKmWp9_636 then
                discord_gg_CDg3VKmWp9_636.Visible = false
            end

            discord_gg_CDg3VKmWp9_644 = nil
        end
    end

    table.insert(discord_gg_CDg3VKmWp9_11, discord_gg_CDg3VKmWp9_636)
    return discord_gg_CDg3VKmWp9_645
end

function discord_gg_CDg3VKmWp9_34:OnUnload(discord_gg_CDg3VKmWp9_199)
    table.insert(discord_gg_CDg3VKmWp9_34.UnloadSignals, discord_gg_CDg3VKmWp9_199)
end

local discord_gg_CDg3VKmWp9_649 = {}
do
    local discord_gg_CDg3VKmWp9_650 = {}

    function discord_gg_CDg3VKmWp9_650:AddKeyPicker(discord_gg_CDg3VKmWp9_308, discord_gg_CDg3VKmWp9_651)
        if self.Destroyed then return nil end

        discord_gg_CDg3VKmWp9_651 = discord_gg_CDg3VKmWp9_34:Validate(discord_gg_CDg3VKmWp9_651, discord_gg_CDg3VKmWp9_118.KeyPicker)

        local discord_gg_CDg3VKmWp9_652 = self
        local discord_gg_CDg3VKmWp9_653 = discord_gg_CDg3VKmWp9_652.TextLabel

        if discord_gg_CDg3VKmWp9_652.Type == "Button" or discord_gg_CDg3VKmWp9_652.Type == "SubButton" then
            assert(discord_gg_CDg3VKmWp9_651.Mode == "Press", "KeyPicker on Buttons can only be applied with the 'Press' mode.")

            discord_gg_CDg3VKmWp9_653 = discord_gg_CDg3VKmWp9_652.Base
        end

        local discord_gg_CDg3VKmWp9_79 = {
            discord_gg_CDg3VKmWp9_580 = {},

            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_651.Text,
            discord_gg_CDg3VKmWp9_554 = discord_gg_CDg3VKmWp9_651.Default,
            discord_gg_CDg3VKmWp9_654 = discord_gg_CDg3VKmWp9_651.DefaultModifiers,
            discord_gg_CDg3VKmWp9_655 = discord_gg_CDg3VKmWp9_651.Default,

            discord_gg_CDg3VKmWp9_246 = discord_gg_CDg3VKmWp9_651.Blacklisted,
            discord_gg_CDg3VKmWp9_247 = discord_gg_CDg3VKmWp9_651.BlacklistedModifiers,
            discord_gg_CDg3VKmWp9_248 = discord_gg_CDg3VKmWp9_651.Whitelisted,
            discord_gg_CDg3VKmWp9_249 = discord_gg_CDg3VKmWp9_651.WhitelistedModifiers,

            discord_gg_CDg3VKmWp9_80 = false,
            discord_gg_CDg3VKmWp9_250 = discord_gg_CDg3VKmWp9_651.Mode,
            discord_gg_CDg3VKmWp9_252 = discord_gg_CDg3VKmWp9_651.SyncToggleState,

            discord_gg_CDg3VKmWp9_656 = discord_gg_CDg3VKmWp9_651.NoUI == true,
            discord_gg_CDg3VKmWp9_657 = discord_gg_CDg3VKmWp9_651.NoUI ~= true,

            discord_gg_CDg3VKmWp9_199 = discord_gg_CDg3VKmWp9_651.Callback,
            discord_gg_CDg3VKmWp9_253 = discord_gg_CDg3VKmWp9_651.ChangedCallback,
            discord_gg_CDg3VKmWp9_200 = discord_gg_CDg3VKmWp9_651.Changed,
            discord_gg_CDg3VKmWp9_254 = discord_gg_CDg3VKmWp9_651.Clicked,

            discord_gg_CDg3VKmWp9_658 = "KeyPicker",
            discord_gg_CDg3VKmWp9_308 = discord_gg_CDg3VKmWp9_308,
        }

        if discord_gg_CDg3VKmWp9_79.Mode == "Press" then
            assert(discord_gg_CDg3VKmWp9_652.Type == "Label" or discord_gg_CDg3VKmWp9_652.Type == "Button" or discord_gg_CDg3VKmWp9_652.Type == "SubButton", "KeyPicker with the mode 'Press' can be only applied on Labels and Buttons.")

            discord_gg_CDg3VKmWp9_79.SyncToggleState = false
            discord_gg_CDg3VKmWp9_651.Modes = { "Press" }
            discord_gg_CDg3VKmWp9_651.Mode = "Press"
        end

        if discord_gg_CDg3VKmWp9_79.SyncToggleState then
            discord_gg_CDg3VKmWp9_651.Modes = { "Toggle", "Hold" }

            if not table.find(discord_gg_CDg3VKmWp9_651.Modes, discord_gg_CDg3VKmWp9_651.Mode) then
                discord_gg_CDg3VKmWp9_651.Mode = "Toggle"
            end
        end

        local discord_gg_CDg3VKmWp9_659 = false
        local discord_gg_CDg3VKmWp9_660 = discord_gg_CDg3VKmWp9_652.Type == "Button" or discord_gg_CDg3VKmWp9_652.Type == "SubButton"

        local discord_gg_CDg3VKmWp9_661 = {
            ["MB1"] = Enum.UserInputType.MouseButton1,
            ["MB2"] = Enum.UserInputType.MouseButton2,
            ["MB3"] = Enum.UserInputType.MouseButton3,
        }

        local discord_gg_CDg3VKmWp9_662 = {
            [Enum.UserInputType.MouseButton1] = "MB1",
            [Enum.UserInputType.MouseButton2] = "MB2",
            [Enum.UserInputType.MouseButton3] = "MB3",
        }

        local discord_gg_CDg3VKmWp9_654 = {
            ["LAlt"] = Enum.KeyCode.LeftAlt,
            ["RAlt"] = Enum.KeyCode.RightAlt,

            ["LCtrl"] = Enum.KeyCode.LeftControl,
            ["RCtrl"] = Enum.KeyCode.RightControl,

            ["LShift"] = Enum.KeyCode.LeftShift,
            ["RShift"] = Enum.KeyCode.RightShift,

            ["Tab"] = Enum.KeyCode.Tab,
            ["CapsLock"] = Enum.KeyCode.CapsLock,
        }

        local discord_gg_CDg3VKmWp9_663 = {
            [Enum.KeyCode.LeftAlt] = "LAlt",
            [Enum.KeyCode.RightAlt] = "RAlt",

            [Enum.KeyCode.LeftControl] = "LCtrl",
            [Enum.KeyCode.RightControl] = "RCtrl",

            [Enum.KeyCode.LeftShift] = "LShift",
            [Enum.KeyCode.RightShift] = "RShift",

            [Enum.KeyCode.Tab] = "Tab",
            [Enum.KeyCode.CapsLock] = "CapsLock",
        }

        local discord_gg_CDg3VKmWp9_664 = function(discord_gg_CDg3VKmWp9_203)
            return discord_gg_CDg3VKmWp9_203.UserInputType == Enum.UserInputType.Keyboard and discord_gg_CDg3VKmWp9_663[discord_gg_CDg3VKmWp9_203.KeyCode] ~= nil
        end

        local discord_gg_CDg3VKmWp9_665 = function()
            local discord_gg_CDg3VKmWp9_666 = {}

            for discord_gg_CDg3VKmWp9_171, discord_gg_CDg3VKmWp9_203 in discord_gg_CDg3VKmWp9_654 do
                if table.find(discord_gg_CDg3VKmWp9_666, discord_gg_CDg3VKmWp9_171) then
                    continue
                end
                if not UserInputService:IsKeyDown(discord_gg_CDg3VKmWp9_203) then
                    continue
                end

                table.insert(discord_gg_CDg3VKmWp9_666, discord_gg_CDg3VKmWp9_171)
            end

            return discord_gg_CDg3VKmWp9_666
        end

        local discord_gg_CDg3VKmWp9_667 = function(Required)
            if not (typeof(Required) == "table" and discord_gg_CDg3VKmWp9_282(Required) > 0) then
                return true
            end

            local discord_gg_CDg3VKmWp9_666 = discord_gg_CDg3VKmWp9_665()
            local discord_gg_CDg3VKmWp9_668 = true

            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_171 in Required do
                if table.find(discord_gg_CDg3VKmWp9_666, discord_gg_CDg3VKmWp9_171) then
                    continue
                end

                discord_gg_CDg3VKmWp9_668 = false
                break
            end

            return discord_gg_CDg3VKmWp9_668
        end

        local discord_gg_CDg3VKmWp9_669 = function(discord_gg_CDg3VKmWp9_203)
            if not discord_gg_CDg3VKmWp9_203 then
                return false
            end

            if discord_gg_CDg3VKmWp9_662[discord_gg_CDg3VKmWp9_203.UserInputType] ~= nil then
                return UserInputService:IsMouseButtonPressed(discord_gg_CDg3VKmWp9_203.UserInputType)
                    and not UserInputService:GetFocusedTextBox()
            elseif discord_gg_CDg3VKmWp9_203.UserInputType == Enum.UserInputType.Keyboard then
                return UserInputService:IsKeyDown(discord_gg_CDg3VKmWp9_203.KeyCode) and not UserInputService:GetFocusedTextBox()
            else
                return false
            end
        end

        local discord_gg_CDg3VKmWp9_670 = function(CurrentModifiers)
            local discord_gg_CDg3VKmWp9_671 = {}

            for discord_gg_CDg3VKmWp9_26, name in CurrentModifiers do
                table.insert(discord_gg_CDg3VKmWp9_671, discord_gg_CDg3VKmWp9_654[name])
            end

            return discord_gg_CDg3VKmWp9_671
        end

        local discord_gg_CDg3VKmWp9_672 = function(CurrentModifiers)
            if typeof(CurrentModifiers) ~= "table" then
                return {}
            end

            local discord_gg_CDg3VKmWp9_673 = {}

            for discord_gg_CDg3VKmWp9_26, name in CurrentModifiers do
                if not discord_gg_CDg3VKmWp9_654[name] then
                    continue
                end

                table.insert(discord_gg_CDg3VKmWp9_673, name)
            end

            return discord_gg_CDg3VKmWp9_673
        end

        discord_gg_CDg3VKmWp9_79.Modifiers = discord_gg_CDg3VKmWp9_672(discord_gg_CDg3VKmWp9_79.Modifiers)

        local discord_gg_CDg3VKmWp9_674 = true
        local discord_gg_CDg3VKmWp9_675 = nil
        local discord_gg_CDg3VKmWp9_676 = 85
        local discord_gg_CDg3VKmWp9_677

        local discord_gg_CDg3VKmWp9_678
        local discord_gg_CDg3VKmWp9_679
        local discord_gg_CDg3VKmWp9_680 = function(discord_gg_CDg3VKmWp9_715)
            if discord_gg_CDg3VKmWp9_715 ~= Enum.PlaybackState.Completed then
                return
            end

            task.wait(1.5)
            if discord_gg_CDg3VKmWp9_679 then
                discord_gg_CDg3VKmWp9_679:Play()
            end
        end

        local discord_gg_CDg3VKmWp9_681 = function(discord_gg_CDg3VKmWp9_715)
            if discord_gg_CDg3VKmWp9_715 ~= Enum.PlaybackState.Completed then
                return
            end

            task.wait(1.5)
            if discord_gg_CDg3VKmWp9_678 then
                discord_gg_CDg3VKmWp9_678:Play()
            end
        end

        local discord_gg_CDg3VKmWp9_682, discord_gg_CDg3VKmWp9_683
        local discord_gg_CDg3VKmWp9_684 = function()
            if discord_gg_CDg3VKmWp9_682 then
                discord_gg_CDg3VKmWp9_682:Disconnect()
                discord_gg_CDg3VKmWp9_682 = nil
            end

            if discord_gg_CDg3VKmWp9_683 then
                discord_gg_CDg3VKmWp9_683:Disconnect()
                discord_gg_CDg3VKmWp9_683 = nil
            end

            if discord_gg_CDg3VKmWp9_678 then
                discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_678, true)
                discord_gg_CDg3VKmWp9_678 = nil
            end

            if discord_gg_CDg3VKmWp9_679 then
                discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_679, true)
                discord_gg_CDg3VKmWp9_679 = nil
            end

            RunService.RenderStepped:Wait()
        end

        local discord_gg_CDg3VKmWp9_685 = discord_gg_CDg3VKmWp9_381("TextButton", {
            discord_gg_CDg3VKmWp9_437 = "MainColor",
            discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(18, 18),
            discord_gg_CDg3VKmWp9_136 = (discord_gg_CDg3VKmWp9_660 and discord_gg_CDg3VKmWp9_674) and "" or discord_gg_CDg3VKmWp9_79.Value,
            discord_gg_CDg3VKmWp9_584 = 14,
            discord_gg_CDg3VKmWp9_686 = 0.4,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_653,
        })

        if discord_gg_CDg3VKmWp9_660 and discord_gg_CDg3VKmWp9_674 then
            discord_gg_CDg3VKmWp9_685.ClipsDescendants = true

            discord_gg_CDg3VKmWp9_677 = discord_gg_CDg3VKmWp9_381("TextLabel", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 1, 0),
                discord_gg_CDg3VKmWp9_143 = UDim2.new(0, 0, 0, 0),
                discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_79.Value,
                discord_gg_CDg3VKmWp9_584 = 14,
                discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Center,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_685,
            })
        end

        discord_gg_CDg3VKmWp9_381("UIStroke", {
            discord_gg_CDg3VKmWp9_235 = "OutlineColor",
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_685,
        })

        local discord_gg_CDg3VKmWp9_687 = discord_gg_CDg3VKmWp9_381("UICorner", {
            discord_gg_CDg3VKmWp9_614 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
            discord_gg_CDg3VKmWp9_615 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
            discord_gg_CDg3VKmWp9_616 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
            discord_gg_CDg3VKmWp9_617 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_685,
        }); table.insert(discord_gg_CDg3VKmWp9_34.SpecificCorners, discord_gg_CDg3VKmWp9_687)

        local discord_gg_CDg3VKmWp9_688 = nil

        local function discord_gg_CDg3VKmWp9_689(discord_gg_CDg3VKmWp9_234: number)
            discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_688)
            discord_gg_CDg3VKmWp9_688 = nil

            discord_gg_CDg3VKmWp9_685.TextTransparency = discord_gg_CDg3VKmWp9_234
            if discord_gg_CDg3VKmWp9_677 then
                discord_gg_CDg3VKmWp9_677.TextTransparency = discord_gg_CDg3VKmWp9_234
            end
        end

        local function discord_gg_CDg3VKmWp9_690(discord_gg_CDg3VKmWp9_234: number)
            discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_688)

            discord_gg_CDg3VKmWp9_688 = TweenService:Create(discord_gg_CDg3VKmWp9_685, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_686 = discord_gg_CDg3VKmWp9_234,
            })
            discord_gg_CDg3VKmWp9_688:Play()

            if discord_gg_CDg3VKmWp9_677 then
                TweenService:Create(discord_gg_CDg3VKmWp9_677, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_686 = discord_gg_CDg3VKmWp9_234,
                }):Play()
            end
        end

        table.insert(discord_gg_CDg3VKmWp9_79.Connections, discord_gg_CDg3VKmWp9_685.MouseEnter:Connect(function()
            if discord_gg_CDg3VKmWp9_652.Disabled then
                return
            end

            discord_gg_CDg3VKmWp9_690(0)
        end))

        table.insert(discord_gg_CDg3VKmWp9_79.Connections, discord_gg_CDg3VKmWp9_685.MouseLeave:Connect(function()
            if discord_gg_CDg3VKmWp9_652.Disabled then
                return
            end

            discord_gg_CDg3VKmWp9_690(0.4)
        end))

        if discord_gg_CDg3VKmWp9_660 then
            local discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 21),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_653.Parent,
            })

            discord_gg_CDg3VKmWp9_381("UIListLayout", {
                discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
                discord_gg_CDg3VKmWp9_166 = UDim.new(0, 9),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
            })

            discord_gg_CDg3VKmWp9_381("UIFlexItem", {
                discord_gg_CDg3VKmWp9_692 = Enum.UIFlexMode.Fill,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_653,
            })

            discord_gg_CDg3VKmWp9_653.Parent = discord_gg_CDg3VKmWp9_540
            discord_gg_CDg3VKmWp9_685.Parent = discord_gg_CDg3VKmWp9_540

            discord_gg_CDg3VKmWp9_685.Size = UDim2.new(0, 18, 1, 0)
        end

        local discord_gg_CDg3VKmWp9_693 = { discord_gg_CDg3VKmWp9_387 = discord_gg_CDg3VKmWp9_79.Mode ~= "Toggle" }
        do
            local discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_381("TextButton", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 16),
                discord_gg_CDg3VKmWp9_136 = "",
                discord_gg_CDg3VKmWp9_174 = not discord_gg_CDg3VKmWp9_651.NoUI,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_34.KeybindContainer,
            })

            local discord_gg_CDg3VKmWp9_583 = discord_gg_CDg3VKmWp9_381("TextLabel", {
                discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.X,
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(0, 1),
                discord_gg_CDg3VKmWp9_136 = "",
                discord_gg_CDg3VKmWp9_584 = 14,
                discord_gg_CDg3VKmWp9_686 = 0.5,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
            })

            local discord_gg_CDg3VKmWp9_694 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 0.5),
                discord_gg_CDg3VKmWp9_437 = "MainColor",
                discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 0.5),
                discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(14, 14),
                discord_gg_CDg3VKmWp9_695 = Enum.SizeConstraint.RelativeYY,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
            })
            table.insert(
                discord_gg_CDg3VKmWp9_34.Corners,
                discord_gg_CDg3VKmWp9_381("UICorner", {
                    discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_694,
                })
            )
            discord_gg_CDg3VKmWp9_381("UIStroke", {
                discord_gg_CDg3VKmWp9_235 = "OutlineColor",
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_694,
            })

            local discord_gg_CDg3VKmWp9_696 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
                discord_gg_CDg3VKmWp9_553 = "FontColor",
                discord_gg_CDg3VKmWp9_697 = 1,
                discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(2, 2),
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -4, 1, -4),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_694,
            })
            if discord_gg_CDg3VKmWp9_22 then
                discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_696, discord_gg_CDg3VKmWp9_22)
            end

            function discord_gg_CDg3VKmWp9_693:Display(discord_gg_CDg3VKmWp9_715)
                discord_gg_CDg3VKmWp9_583.TextTransparency = discord_gg_CDg3VKmWp9_715 and 0 or 0.5
                discord_gg_CDg3VKmWp9_696.ImageTransparency = discord_gg_CDg3VKmWp9_715 and 0 or 1
            end

            function discord_gg_CDg3VKmWp9_693:SetText(discord_gg_CDg3VKmWp9_136)
                discord_gg_CDg3VKmWp9_583.Text = discord_gg_CDg3VKmWp9_136
            end

            function discord_gg_CDg3VKmWp9_693:SetVisibility(Visibility)
                discord_gg_CDg3VKmWp9_540.Visible = Visibility
            end

            function discord_gg_CDg3VKmWp9_693:SetNormal(discord_gg_CDg3VKmWp9_387)
                discord_gg_CDg3VKmWp9_693.Normal = discord_gg_CDg3VKmWp9_387

                discord_gg_CDg3VKmWp9_540.Active = not discord_gg_CDg3VKmWp9_387
                discord_gg_CDg3VKmWp9_583.Position = discord_gg_CDg3VKmWp9_387 and UDim2.fromOffset(0, 0) or UDim2.fromOffset(22, 0)
                discord_gg_CDg3VKmWp9_694.Visible = not discord_gg_CDg3VKmWp9_387
            end

            discord_gg_CDg3VKmWp9_79.DoClick = function(...) end
            table.insert(discord_gg_CDg3VKmWp9_79.Connections, discord_gg_CDg3VKmWp9_540.MouseButton1Click:Connect(function()
                if discord_gg_CDg3VKmWp9_693.Normal then
                    return
                end

                discord_gg_CDg3VKmWp9_79.Toggled = not discord_gg_CDg3VKmWp9_79.Toggled
                discord_gg_CDg3VKmWp9_79:DoClick()
                discord_gg_CDg3VKmWp9_79:Update()
            end))

            discord_gg_CDg3VKmWp9_693.Holder = discord_gg_CDg3VKmWp9_540
            discord_gg_CDg3VKmWp9_693.Label = discord_gg_CDg3VKmWp9_583
            discord_gg_CDg3VKmWp9_693.Checkbox = discord_gg_CDg3VKmWp9_694
            discord_gg_CDg3VKmWp9_693.Loaded = true
            table.insert(discord_gg_CDg3VKmWp9_34.KeybindToggles, discord_gg_CDg3VKmWp9_693)
        end

        local discord_gg_CDg3VKmWp9_698 = {}
        local discord_gg_CDg3VKmWp9_699 = {}
        local discord_gg_CDg3VKmWp9_700 = discord_gg_CDg3VKmWp9_282(discord_gg_CDg3VKmWp9_651.Modes)
        local discord_gg_CDg3VKmWp9_701 = if discord_gg_CDg3VKmWp9_700 == 1 then "no_left" else "no_top_left"

        local discord_gg_CDg3VKmWp9_702
        discord_gg_CDg3VKmWp9_702 = discord_gg_CDg3VKmWp9_34:AddContextMenu(discord_gg_CDg3VKmWp9_685, UDim2.fromOffset(62, 0), function()
            return { discord_gg_CDg3VKmWp9_685.AbsoluteSize.X + 1.5, 0.5 }
        end, 1, function(discord_gg_CDg3VKmWp9_419: boolean)
            local discord_gg_CDg3VKmWp9_703 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2)
            local discord_gg_CDg3VKmWp9_704 = UDim.new(0, 0)

            discord_gg_CDg3VKmWp9_687.TopLeftRadius = discord_gg_CDg3VKmWp9_703
            discord_gg_CDg3VKmWp9_687.BottomLeftRadius = discord_gg_CDg3VKmWp9_703
            discord_gg_CDg3VKmWp9_687.TopRightRadius = discord_gg_CDg3VKmWp9_419 and discord_gg_CDg3VKmWp9_704 or discord_gg_CDg3VKmWp9_703
            discord_gg_CDg3VKmWp9_687.BottomRightRadius = discord_gg_CDg3VKmWp9_419 and discord_gg_CDg3VKmWp9_704 or discord_gg_CDg3VKmWp9_703

            local discord_gg_CDg3VKmWp9_705 = discord_gg_CDg3VKmWp9_702 and discord_gg_CDg3VKmWp9_702.Corner
            if discord_gg_CDg3VKmWp9_705 then
                if discord_gg_CDg3VKmWp9_701 == "no_left" then
                    discord_gg_CDg3VKmWp9_705.TopLeftRadius = discord_gg_CDg3VKmWp9_704
                    discord_gg_CDg3VKmWp9_705.BottomLeftRadius = discord_gg_CDg3VKmWp9_704
                    discord_gg_CDg3VKmWp9_705.TopRightRadius = discord_gg_CDg3VKmWp9_703
                    discord_gg_CDg3VKmWp9_705.BottomRightRadius = discord_gg_CDg3VKmWp9_703
                else
                    discord_gg_CDg3VKmWp9_705.TopLeftRadius = discord_gg_CDg3VKmWp9_704
                    discord_gg_CDg3VKmWp9_705.TopRightRadius = discord_gg_CDg3VKmWp9_703
                    discord_gg_CDg3VKmWp9_705.BottomRightRadius = discord_gg_CDg3VKmWp9_703
                    discord_gg_CDg3VKmWp9_705.BottomLeftRadius = discord_gg_CDg3VKmWp9_703
                end
            end

            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_915 in discord_gg_CDg3VKmWp9_699 do
                local discord_gg_CDg3VKmWp9_613 = discord_gg_CDg3VKmWp9_915.Corner
                if discord_gg_CDg3VKmWp9_915.Style == "single" then
                    discord_gg_CDg3VKmWp9_613.TopLeftRadius = discord_gg_CDg3VKmWp9_704
                    discord_gg_CDg3VKmWp9_613.BottomLeftRadius = discord_gg_CDg3VKmWp9_704
                    discord_gg_CDg3VKmWp9_613.TopRightRadius = discord_gg_CDg3VKmWp9_703
                    discord_gg_CDg3VKmWp9_613.BottomRightRadius = discord_gg_CDg3VKmWp9_703
                elseif discord_gg_CDg3VKmWp9_915.Style == "first" then
                    discord_gg_CDg3VKmWp9_613.TopLeftRadius = discord_gg_CDg3VKmWp9_704
                    discord_gg_CDg3VKmWp9_613.TopRightRadius = discord_gg_CDg3VKmWp9_703
                    discord_gg_CDg3VKmWp9_613.BottomLeftRadius = discord_gg_CDg3VKmWp9_704
                    discord_gg_CDg3VKmWp9_613.BottomRightRadius = discord_gg_CDg3VKmWp9_704
                elseif discord_gg_CDg3VKmWp9_915.Style == "last" then
                    discord_gg_CDg3VKmWp9_613.TopLeftRadius = discord_gg_CDg3VKmWp9_704
                    discord_gg_CDg3VKmWp9_613.TopRightRadius = discord_gg_CDg3VKmWp9_704
                    discord_gg_CDg3VKmWp9_613.BottomLeftRadius = discord_gg_CDg3VKmWp9_703
                    discord_gg_CDg3VKmWp9_613.BottomRightRadius = discord_gg_CDg3VKmWp9_703
                end
            end
        end, false, discord_gg_CDg3VKmWp9_701, "KeyPicker")
        discord_gg_CDg3VKmWp9_79.Menu = discord_gg_CDg3VKmWp9_702

        for discord_gg_CDg3VKmWp9_325, discord_gg_CDg3VKmWp9_250 in discord_gg_CDg3VKmWp9_651.Modes do
            local discord_gg_CDg3VKmWp9_706 = {}

            local discord_gg_CDg3VKmWp9_596 = discord_gg_CDg3VKmWp9_381("TextButton", {
                discord_gg_CDg3VKmWp9_437 = "MainColor",
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_660 and 21 or (discord_gg_CDg3VKmWp9_700 == 1 and 18 or 19)),
                discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_250,
                discord_gg_CDg3VKmWp9_584 = 14,
                discord_gg_CDg3VKmWp9_686 = 0.5,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_702.Menu,
            })

            if discord_gg_CDg3VKmWp9_325 == 1 and discord_gg_CDg3VKmWp9_700 == 1 then
                local discord_gg_CDg3VKmWp9_613 = discord_gg_CDg3VKmWp9_381("UICorner", {
                    discord_gg_CDg3VKmWp9_614 = UDim.new(0, 0),
                    discord_gg_CDg3VKmWp9_615 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                    discord_gg_CDg3VKmWp9_617 = UDim.new(0, 0),
                    discord_gg_CDg3VKmWp9_616 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_596,
                })
                table.insert(discord_gg_CDg3VKmWp9_34.SpecificCorners, discord_gg_CDg3VKmWp9_613)
                table.insert(discord_gg_CDg3VKmWp9_699, { discord_gg_CDg3VKmWp9_613 = discord_gg_CDg3VKmWp9_613, Style = "single" })
            elseif discord_gg_CDg3VKmWp9_325 == 1 then
                local discord_gg_CDg3VKmWp9_613 = discord_gg_CDg3VKmWp9_381("UICorner", {
                    discord_gg_CDg3VKmWp9_614 = UDim.new(0, 0),
                    discord_gg_CDg3VKmWp9_615 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                    discord_gg_CDg3VKmWp9_617 = UDim.new(0, 0),
                    discord_gg_CDg3VKmWp9_616 = UDim.new(0, 0),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_596,
                })
                table.insert(discord_gg_CDg3VKmWp9_34.SpecificCorners, discord_gg_CDg3VKmWp9_613)
                table.insert(discord_gg_CDg3VKmWp9_699, { discord_gg_CDg3VKmWp9_613 = discord_gg_CDg3VKmWp9_613, Style = "first" })
            elseif discord_gg_CDg3VKmWp9_325 == discord_gg_CDg3VKmWp9_700 then
                local discord_gg_CDg3VKmWp9_613 = discord_gg_CDg3VKmWp9_381("UICorner", {
                    discord_gg_CDg3VKmWp9_614 = UDim.new(0, 0),
                    discord_gg_CDg3VKmWp9_615 = UDim.new(0, 0),
                    discord_gg_CDg3VKmWp9_617 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                    discord_gg_CDg3VKmWp9_616 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_596,
                })
                table.insert(discord_gg_CDg3VKmWp9_34.SpecificCorners, discord_gg_CDg3VKmWp9_613)
                table.insert(discord_gg_CDg3VKmWp9_699, { discord_gg_CDg3VKmWp9_613 = discord_gg_CDg3VKmWp9_613, Style = "last" })
            end

            function discord_gg_CDg3VKmWp9_706:Select()
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_596 in discord_gg_CDg3VKmWp9_698 do
                    discord_gg_CDg3VKmWp9_596:Deselect()
                end

                discord_gg_CDg3VKmWp9_79.Mode = discord_gg_CDg3VKmWp9_250

                discord_gg_CDg3VKmWp9_596.BackgroundTransparency = 0
                discord_gg_CDg3VKmWp9_596.TextTransparency = 0

                discord_gg_CDg3VKmWp9_702:Close()
                if discord_gg_CDg3VKmWp9_79.Update then
                    discord_gg_CDg3VKmWp9_79:Update()
                end
            end

            function discord_gg_CDg3VKmWp9_706:Deselect()
                discord_gg_CDg3VKmWp9_79.Mode = nil

                discord_gg_CDg3VKmWp9_596.BackgroundTransparency = 1
                discord_gg_CDg3VKmWp9_596.TextTransparency = 0.5
            end

            table.insert(discord_gg_CDg3VKmWp9_79.Connections, discord_gg_CDg3VKmWp9_596.MouseButton1Click:Connect(function()
                discord_gg_CDg3VKmWp9_706:Select()
            end))

            table.insert(discord_gg_CDg3VKmWp9_79.Connections, discord_gg_CDg3VKmWp9_596.MouseEnter:Connect(function()
                if discord_gg_CDg3VKmWp9_79.Mode == discord_gg_CDg3VKmWp9_250 then
                    return
                end

                TweenService:Create(discord_gg_CDg3VKmWp9_596, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_122 = 0.7,
                    discord_gg_CDg3VKmWp9_686 = 0.1,
                }):Play()
            end))

            table.insert(discord_gg_CDg3VKmWp9_79.Connections, discord_gg_CDg3VKmWp9_596.MouseLeave:Connect(function()
                if discord_gg_CDg3VKmWp9_79.Mode == discord_gg_CDg3VKmWp9_250 then
                    return
                end

                TweenService:Create(discord_gg_CDg3VKmWp9_596, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_686 = 0.5,
                }):Play()
            end))

            if discord_gg_CDg3VKmWp9_79.Mode == discord_gg_CDg3VKmWp9_250 then
                discord_gg_CDg3VKmWp9_706:Select()
            end

            discord_gg_CDg3VKmWp9_698[discord_gg_CDg3VKmWp9_250] = discord_gg_CDg3VKmWp9_706
        end

        local discord_gg_CDg3VKmWp9_707 = function(discord_gg_CDg3VKmWp9_715, SkipUpdate: boolean?)
            discord_gg_CDg3VKmWp9_659 = discord_gg_CDg3VKmWp9_715
            discord_gg_CDg3VKmWp9_34.IsPicking = discord_gg_CDg3VKmWp9_715

            if discord_gg_CDg3VKmWp9_652 then
                discord_gg_CDg3VKmWp9_652.AnyKeyPickerPicking = discord_gg_CDg3VKmWp9_659
            end

            if discord_gg_CDg3VKmWp9_660 then
                discord_gg_CDg3VKmWp9_653.Visible = not discord_gg_CDg3VKmWp9_659
                discord_gg_CDg3VKmWp9_675 = nil
                RunService.RenderStepped:Wait()
            end

            if SkipUpdate ~= true then
                (discord_gg_CDg3VKmWp9_79 :: any):Update()
            end
        end

        function discord_gg_CDg3VKmWp9_79:Display(PickerText)
            if discord_gg_CDg3VKmWp9_34.Unloaded then
                return
            end

            local discord_gg_CDg3VKmWp9_708 = PickerText or discord_gg_CDg3VKmWp9_79.DisplayValue
            if discord_gg_CDg3VKmWp9_660 and discord_gg_CDg3VKmWp9_674 then
                local discord_gg_CDg3VKmWp9_395, discord_gg_CDg3VKmWp9_709 = discord_gg_CDg3VKmWp9_34:GetTextBounds(
                    discord_gg_CDg3VKmWp9_708,
                    discord_gg_CDg3VKmWp9_685.FontFace,
                    discord_gg_CDg3VKmWp9_685.TextSize,
                    10000
                )

                local discord_gg_CDg3VKmWp9_710 = discord_gg_CDg3VKmWp9_395 + 9
                local discord_gg_CDg3VKmWp9_711 = discord_gg_CDg3VKmWp9_675 ~= discord_gg_CDg3VKmWp9_708
                local discord_gg_CDg3VKmWp9_712

                discord_gg_CDg3VKmWp9_677.Text = discord_gg_CDg3VKmWp9_708
                discord_gg_CDg3VKmWp9_675 = discord_gg_CDg3VKmWp9_708

                if discord_gg_CDg3VKmWp9_659 then
                    discord_gg_CDg3VKmWp9_685.Size = UDim2.new(1, 0, 1, 0)
                    RunService.RenderStepped:Wait()
                    discord_gg_CDg3VKmWp9_712 = discord_gg_CDg3VKmWp9_685.AbsoluteSize.X

                    if discord_gg_CDg3VKmWp9_712 <= 0 then
                        discord_gg_CDg3VKmWp9_712 = discord_gg_CDg3VKmWp9_676
                    end
                else
                    discord_gg_CDg3VKmWp9_712 = math.min(discord_gg_CDg3VKmWp9_710, discord_gg_CDg3VKmWp9_676)
                    discord_gg_CDg3VKmWp9_685.Size = UDim2.new(0, discord_gg_CDg3VKmWp9_712, 1, 0)
                end

                if discord_gg_CDg3VKmWp9_710 > discord_gg_CDg3VKmWp9_712 then
                    discord_gg_CDg3VKmWp9_677.TextXAlignment = Enum.TextXAlignment.Left
                    discord_gg_CDg3VKmWp9_677.Size = UDim2.new(0, discord_gg_CDg3VKmWp9_710, 1, 0)

                    local discord_gg_CDg3VKmWp9_713 = discord_gg_CDg3VKmWp9_710 - discord_gg_CDg3VKmWp9_712 - 4.5
                    if discord_gg_CDg3VKmWp9_713 > 0 then
                        if discord_gg_CDg3VKmWp9_711 or not discord_gg_CDg3VKmWp9_678 then
                            discord_gg_CDg3VKmWp9_677.Position = UDim2.fromOffset(4.5, 0)
                            discord_gg_CDg3VKmWp9_684()

                            local discord_gg_CDg3VKmWp9_714 = math.max(discord_gg_CDg3VKmWp9_713 / 25, 0.35)
                            local discord_gg_CDg3VKmWp9_65 = discord_gg_CDg3VKmWp9_65.new(
                                discord_gg_CDg3VKmWp9_714,
                                Enum.EasingStyle.Linear,
                                Enum.EasingDirection.InOut
                            )

                            discord_gg_CDg3VKmWp9_678 = TweenService:Create(discord_gg_CDg3VKmWp9_677, discord_gg_CDg3VKmWp9_65, {
                                discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(-discord_gg_CDg3VKmWp9_713, 0),
                            })

                            discord_gg_CDg3VKmWp9_679 = TweenService:Create(discord_gg_CDg3VKmWp9_677, discord_gg_CDg3VKmWp9_65, {
                                discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(4.5, 0),
                            })

                            discord_gg_CDg3VKmWp9_678:Play()

                            if discord_gg_CDg3VKmWp9_682 then
                                discord_gg_CDg3VKmWp9_682:Disconnect()
                            end

                            if discord_gg_CDg3VKmWp9_683 then
                                discord_gg_CDg3VKmWp9_683:Disconnect()
                            end

                            discord_gg_CDg3VKmWp9_682 = discord_gg_CDg3VKmWp9_678.Completed:Connect(discord_gg_CDg3VKmWp9_680)
                            discord_gg_CDg3VKmWp9_683 = discord_gg_CDg3VKmWp9_679.Completed:Connect(discord_gg_CDg3VKmWp9_681)
                        end
                    else
                        discord_gg_CDg3VKmWp9_684()

                        discord_gg_CDg3VKmWp9_677.TextXAlignment = Enum.TextXAlignment.Center
                        discord_gg_CDg3VKmWp9_677.Size = UDim2.new(1, 0, 1, 0)
                        discord_gg_CDg3VKmWp9_677.Position = UDim2.new(0, 0, 0, 0)
                    end
                else
                    discord_gg_CDg3VKmWp9_684()

                    discord_gg_CDg3VKmWp9_677.TextXAlignment = Enum.TextXAlignment.Center
                    discord_gg_CDg3VKmWp9_677.Size = UDim2.new(1, 0, 1, 0)
                    discord_gg_CDg3VKmWp9_677.Position = UDim2.new(0, 0, 0, 0)
                end
            else
                local discord_gg_CDg3VKmWp9_395, discord_gg_CDg3VKmWp9_396 = discord_gg_CDg3VKmWp9_34:GetTextBounds(
                    discord_gg_CDg3VKmWp9_708,
                    discord_gg_CDg3VKmWp9_685.FontFace,
                    discord_gg_CDg3VKmWp9_685.TextSize,
                    discord_gg_CDg3VKmWp9_653.AbsoluteSize.X / discord_gg_CDg3VKmWp9_34.DPIScale
                )
                discord_gg_CDg3VKmWp9_685.Text = discord_gg_CDg3VKmWp9_708
                discord_gg_CDg3VKmWp9_685.Size = discord_gg_CDg3VKmWp9_660 and UDim2.new(0, discord_gg_CDg3VKmWp9_395 + 9, 1, 0) or UDim2.fromOffset((discord_gg_CDg3VKmWp9_395 + 9), (discord_gg_CDg3VKmWp9_396 + 4))
            end
        end

        function discord_gg_CDg3VKmWp9_79:Update()
            local discord_gg_CDg3VKmWp9_202 = discord_gg_CDg3VKmWp9_652.Disabled == true

            if discord_gg_CDg3VKmWp9_202 and discord_gg_CDg3VKmWp9_659 then
                discord_gg_CDg3VKmWp9_707(false, true)
            end

            discord_gg_CDg3VKmWp9_79:Display()

            discord_gg_CDg3VKmWp9_685.Active = not discord_gg_CDg3VKmWp9_202
            discord_gg_CDg3VKmWp9_689(discord_gg_CDg3VKmWp9_202 and 0.8 or 0.4)

            if discord_gg_CDg3VKmWp9_202 then
                if discord_gg_CDg3VKmWp9_702.Active then
                    discord_gg_CDg3VKmWp9_702:Close()
                end
            end

            if discord_gg_CDg3VKmWp9_79.Mode == "Toggle" and discord_gg_CDg3VKmWp9_652.Type == "Toggle" and discord_gg_CDg3VKmWp9_652.Disabled then
                discord_gg_CDg3VKmWp9_693:SetVisibility(false)
                return
            end

            local discord_gg_CDg3VKmWp9_715 = discord_gg_CDg3VKmWp9_79:GetState()
            local discord_gg_CDg3VKmWp9_716 = discord_gg_CDg3VKmWp9_34.ShowToggleFrameInKeybinds and discord_gg_CDg3VKmWp9_79.Mode == "Toggle"

            if discord_gg_CDg3VKmWp9_79.SyncToggleState and discord_gg_CDg3VKmWp9_652.Value ~= discord_gg_CDg3VKmWp9_715 then
                discord_gg_CDg3VKmWp9_652:SetValue(discord_gg_CDg3VKmWp9_715)
            end

            if discord_gg_CDg3VKmWp9_651.NoUI then
                return
            end

            if discord_gg_CDg3VKmWp9_693.Loaded then
                if discord_gg_CDg3VKmWp9_716 then
                    discord_gg_CDg3VKmWp9_693:SetNormal(false)
                else
                    discord_gg_CDg3VKmWp9_693:SetNormal(true)
                end

                discord_gg_CDg3VKmWp9_693:SetText(("[%s] %s (%s)"):format(discord_gg_CDg3VKmWp9_79.DisplayValue, discord_gg_CDg3VKmWp9_79.Text, discord_gg_CDg3VKmWp9_79.Mode))
                discord_gg_CDg3VKmWp9_693:SetVisibility(discord_gg_CDg3VKmWp9_79.MenuVisible ~= false)
                discord_gg_CDg3VKmWp9_693:Display(discord_gg_CDg3VKmWp9_715)
            end
        end

        function discord_gg_CDg3VKmWp9_79:GetState()
            if discord_gg_CDg3VKmWp9_79.Mode == "Always" then
                return true
            elseif discord_gg_CDg3VKmWp9_79.Mode == "Hold" then
                local discord_gg_CDg3VKmWp9_284 = discord_gg_CDg3VKmWp9_79.Value
                if discord_gg_CDg3VKmWp9_284 == "None" then
                    return false
                end

                if not discord_gg_CDg3VKmWp9_667(discord_gg_CDg3VKmWp9_79.Modifiers) then
                    return false
                end

                if discord_gg_CDg3VKmWp9_659 then
                    return false
                end

                if discord_gg_CDg3VKmWp9_661[discord_gg_CDg3VKmWp9_284] ~= nil then
                    if discord_gg_CDg3VKmWp9_34.Toggled then
                        return false
                    end

                    return UserInputService:IsMouseButtonPressed(discord_gg_CDg3VKmWp9_661[discord_gg_CDg3VKmWp9_284])
                        and not UserInputService:GetFocusedTextBox()
                else
                    return UserInputService:IsKeyDown(Enum.KeyCode[discord_gg_CDg3VKmWp9_284] :: any) and not UserInputService:GetFocusedTextBox()
                end
            else
                return discord_gg_CDg3VKmWp9_79.Toggled
            end
        end

        function discord_gg_CDg3VKmWp9_79:OnChanged(discord_gg_CDg3VKmWp9_592)
            discord_gg_CDg3VKmWp9_79.Changed = discord_gg_CDg3VKmWp9_592
        end

        function discord_gg_CDg3VKmWp9_79:OnClick(discord_gg_CDg3VKmWp9_592)
            discord_gg_CDg3VKmWp9_79.Clicked = discord_gg_CDg3VKmWp9_592
        end

        function discord_gg_CDg3VKmWp9_79:DoClick()
            if discord_gg_CDg3VKmWp9_659 or discord_gg_CDg3VKmWp9_652.Disabled then
                return
            end

            if discord_gg_CDg3VKmWp9_79.Mode == "Press" then
                if discord_gg_CDg3VKmWp9_79.Toggled and discord_gg_CDg3VKmWp9_651.WaitForCallback == true then
                    return
                end

                discord_gg_CDg3VKmWp9_79.Toggled = true
            end

            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_79.Callback, discord_gg_CDg3VKmWp9_79.Toggled)
            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_79.Clicked, discord_gg_CDg3VKmWp9_79.Toggled)

            if discord_gg_CDg3VKmWp9_660 then
                discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_652.Func, discord_gg_CDg3VKmWp9_79.Toggled)
            end

            if discord_gg_CDg3VKmWp9_34.ToggleKeybind == discord_gg_CDg3VKmWp9_79 and discord_gg_CDg3VKmWp9_34.Toggle then
                discord_gg_CDg3VKmWp9_34:Toggle()
            end

            if discord_gg_CDg3VKmWp9_79.Mode == "Press" then
                discord_gg_CDg3VKmWp9_79.Toggled = false
            end
        end

        function discord_gg_CDg3VKmWp9_79:RunChanged(discord_gg_CDg3VKmWp9_718, discord_gg_CDg3VKmWp9_719)
            if discord_gg_CDg3VKmWp9_652.Disabled then
                return
            end

            if discord_gg_CDg3VKmWp9_718 == nil or discord_gg_CDg3VKmWp9_719 == nil then
                discord_gg_CDg3VKmWp9_718, discord_gg_CDg3VKmWp9_719 = pcall(function()
                    if discord_gg_CDg3VKmWp9_79.Value == "None" then
                        return nil
                    end

                    if discord_gg_CDg3VKmWp9_661[discord_gg_CDg3VKmWp9_79.Value] == nil then
                        return Enum.KeyCode[discord_gg_CDg3VKmWp9_79.Value]
                    end

                    return discord_gg_CDg3VKmWp9_661[discord_gg_CDg3VKmWp9_79.Value]
                end)
            end

            local discord_gg_CDg3VKmWp9_717 = discord_gg_CDg3VKmWp9_670(discord_gg_CDg3VKmWp9_79.Modifiers)
            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_79.ChangedCallback, discord_gg_CDg3VKmWp9_719, discord_gg_CDg3VKmWp9_717)
            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_79.Changed, discord_gg_CDg3VKmWp9_719, discord_gg_CDg3VKmWp9_717)
        end

        function discord_gg_CDg3VKmWp9_79:SetValue(discord_gg_CDg3VKmWp9_823)
            local discord_gg_CDg3VKmWp9_284, discord_gg_CDg3VKmWp9_250, discord_gg_CDg3VKmWp9_654 = discord_gg_CDg3VKmWp9_823[1], discord_gg_CDg3VKmWp9_823[2], discord_gg_CDg3VKmWp9_823[3]

            local discord_gg_CDg3VKmWp9_718, discord_gg_CDg3VKmWp9_719 = pcall(function()
                if discord_gg_CDg3VKmWp9_284 == "None" then
                    discord_gg_CDg3VKmWp9_284 = nil
                    return nil
                end

                if discord_gg_CDg3VKmWp9_661[discord_gg_CDg3VKmWp9_284] == nil then
                    return Enum.KeyCode[discord_gg_CDg3VKmWp9_284]
                end

                return discord_gg_CDg3VKmWp9_661[discord_gg_CDg3VKmWp9_284]
            end)

            if discord_gg_CDg3VKmWp9_284 == nil then
                discord_gg_CDg3VKmWp9_79.Value = "None"
            elseif discord_gg_CDg3VKmWp9_718 then
                discord_gg_CDg3VKmWp9_79.Value = discord_gg_CDg3VKmWp9_284
            else
                discord_gg_CDg3VKmWp9_79.Value = "Unknown"
            end

            discord_gg_CDg3VKmWp9_79.Modifiers =
                discord_gg_CDg3VKmWp9_672(if typeof(discord_gg_CDg3VKmWp9_654) == "table" then discord_gg_CDg3VKmWp9_654 else discord_gg_CDg3VKmWp9_79.Modifiers)
            discord_gg_CDg3VKmWp9_79.DisplayValue = if discord_gg_CDg3VKmWp9_282(discord_gg_CDg3VKmWp9_79.Modifiers) > 0
                then (table.concat(discord_gg_CDg3VKmWp9_79.Modifiers, " + ") .. " + " .. KeyPicker.Value)
                else discord_gg_CDg3VKmWp9_79.Value

            if discord_gg_CDg3VKmWp9_698[discord_gg_CDg3VKmWp9_250] then
                discord_gg_CDg3VKmWp9_698[discord_gg_CDg3VKmWp9_250]:Select()
            end

            discord_gg_CDg3VKmWp9_79:Update()
            discord_gg_CDg3VKmWp9_79:RunChanged(discord_gg_CDg3VKmWp9_718, discord_gg_CDg3VKmWp9_719)
        end

        function discord_gg_CDg3VKmWp9_79:SetText(discord_gg_CDg3VKmWp9_136)
            discord_gg_CDg3VKmWp9_79.Text = discord_gg_CDg3VKmWp9_136
            discord_gg_CDg3VKmWp9_693:SetText(discord_gg_CDg3VKmWp9_136)
            discord_gg_CDg3VKmWp9_79:Update()

            local discord_gg_CDg3VKmWp9_55 = discord_gg_CDg3VKmWp9_34.KeybindMenu
            if discord_gg_CDg3VKmWp9_55 and discord_gg_CDg3VKmWp9_55.SettingsOpen then
                discord_gg_CDg3VKmWp9_55:RefreshSettings()
            end
        end

        function discord_gg_CDg3VKmWp9_79:SetMenuVisibility(discord_gg_CDg3VKmWp9_174: boolean)
            assert(typeof(discord_gg_CDg3VKmWp9_174) == "boolean", "Visible must be a boolean")

            discord_gg_CDg3VKmWp9_79.MenuVisible = discord_gg_CDg3VKmWp9_174
            discord_gg_CDg3VKmWp9_79:Update()

            local discord_gg_CDg3VKmWp9_55 = discord_gg_CDg3VKmWp9_34.KeybindMenu
            if discord_gg_CDg3VKmWp9_55 and discord_gg_CDg3VKmWp9_55.SettingsOpen then
                discord_gg_CDg3VKmWp9_55:RefreshSettings()
            end
        end

        table.insert(discord_gg_CDg3VKmWp9_79.Connections, discord_gg_CDg3VKmWp9_685.MouseButton1Click:Connect(function()
            if discord_gg_CDg3VKmWp9_659 or discord_gg_CDg3VKmWp9_34.IsPicking or discord_gg_CDg3VKmWp9_652.Disabled then
                return
            end

            discord_gg_CDg3VKmWp9_707(true)

            if discord_gg_CDg3VKmWp9_660 and discord_gg_CDg3VKmWp9_674 then
                discord_gg_CDg3VKmWp9_79:Display("...")
            else
                discord_gg_CDg3VKmWp9_685.Text = "..."
                discord_gg_CDg3VKmWp9_685.Size = discord_gg_CDg3VKmWp9_660 and UDim2.new(0, 29, 1, 0) or UDim2.fromOffset(29, 18)
            end

            local discord_gg_CDg3VKmWp9_666 = {}
            local discord_gg_CDg3VKmWp9_720 = nil

            local discord_gg_CDg3VKmWp9_721 = function(discord_gg_CDg3VKmWp9_724)
                if discord_gg_CDg3VKmWp9_724.KeyCode == Enum.KeyCode.Escape then
                    return true
                end

                local discord_gg_CDg3VKmWp9_722 = discord_gg_CDg3VKmWp9_664(discord_gg_CDg3VKmWp9_724)
                local discord_gg_CDg3VKmWp9_723
                if discord_gg_CDg3VKmWp9_662[discord_gg_CDg3VKmWp9_724.UserInputType] ~= nil then
                    discord_gg_CDg3VKmWp9_723 = discord_gg_CDg3VKmWp9_662[discord_gg_CDg3VKmWp9_724.UserInputType]
                elseif discord_gg_CDg3VKmWp9_724.UserInputType == Enum.UserInputType.Keyboard then
                    if discord_gg_CDg3VKmWp9_722 then
                        discord_gg_CDg3VKmWp9_723 = discord_gg_CDg3VKmWp9_663[discord_gg_CDg3VKmWp9_724.KeyCode]
                    else
                        discord_gg_CDg3VKmWp9_723 = discord_gg_CDg3VKmWp9_724.KeyCode.Name
                    end
                end

                if discord_gg_CDg3VKmWp9_723 then
                    if discord_gg_CDg3VKmWp9_722 then
                        if discord_gg_CDg3VKmWp9_79.WhitelistedModifiers and #KeyPicker.WhitelistedModifiers > 0 and not table.find(KeyPicker.WhitelistedModifiers, KeyName) then
                            return false
                        end

                        if discord_gg_CDg3VKmWp9_79.BlacklistedModifiers and table.find(discord_gg_CDg3VKmWp9_79.BlacklistedModifiers, discord_gg_CDg3VKmWp9_723) then
                            return false
                        end
                    else
                        if discord_gg_CDg3VKmWp9_79.Whitelisted and #KeyPicker.Whitelisted > 0 and not table.find(KeyPicker.Whitelisted, KeyName) then
                            return false
                        end

                        if discord_gg_CDg3VKmWp9_79.Blacklisted and table.find(discord_gg_CDg3VKmWp9_79.Blacklisted, discord_gg_CDg3VKmWp9_723) then
                            return false
                        end
                    end
                end

                return true
            end

            while true do
                local discord_gg_CDg3VKmWp9_724 = UserInputService.InputBegan:Wait()
                if UserInputService:GetFocusedTextBox() ~= nil then
                    discord_gg_CDg3VKmWp9_707(false)
                    return
                end

                if discord_gg_CDg3VKmWp9_721(discord_gg_CDg3VKmWp9_724) then
                    discord_gg_CDg3VKmWp9_720 = discord_gg_CDg3VKmWp9_724
                    break
                end
            end

            while discord_gg_CDg3VKmWp9_664(discord_gg_CDg3VKmWp9_720) do
                if discord_gg_CDg3VKmWp9_720.KeyCode == Enum.KeyCode.Escape then
                    break
                end

                local discord_gg_CDg3VKmWp9_725 = discord_gg_CDg3VKmWp9_663[discord_gg_CDg3VKmWp9_720.KeyCode]
                if discord_gg_CDg3VKmWp9_725 then
                    local discord_gg_CDg3VKmWp9_726 = if #ActiveModifiers > 0 then table.concat(ActiveModifiers, " + ") .. " + " .. ModName .. " + ..." else ModName .. " + ..."
                    discord_gg_CDg3VKmWp9_79:Display(discord_gg_CDg3VKmWp9_726)
                end

                local discord_gg_CDg3VKmWp9_727 = nil
                local discord_gg_CDg3VKmWp9_728 = false

                local discord_gg_CDg3VKmWp9_729
                local discord_gg_CDg3VKmWp9_730

                discord_gg_CDg3VKmWp9_729 = UserInputService.InputBegan:Connect(function(discord_gg_CDg3VKmWp9_724)
                    if UserInputService:GetFocusedTextBox() ~= nil then
                        return
                    end
                    if discord_gg_CDg3VKmWp9_721(discord_gg_CDg3VKmWp9_724) then
                        discord_gg_CDg3VKmWp9_727 = discord_gg_CDg3VKmWp9_724
                    end
                end)

                discord_gg_CDg3VKmWp9_730 = UserInputService.InputEnded:Connect(function(discord_gg_CDg3VKmWp9_724)
                    if discord_gg_CDg3VKmWp9_724.KeyCode == discord_gg_CDg3VKmWp9_720.KeyCode then
                        discord_gg_CDg3VKmWp9_728 = true
                    end
                end)

                repeat
                    task.wait()
                until discord_gg_CDg3VKmWp9_728 or discord_gg_CDg3VKmWp9_727 or UserInputService:GetFocusedTextBox() ~= nil or discord_gg_CDg3VKmWp9_34.Unloaded

                if discord_gg_CDg3VKmWp9_729 then discord_gg_CDg3VKmWp9_729:Disconnect() end
                if discord_gg_CDg3VKmWp9_730 then discord_gg_CDg3VKmWp9_730:Disconnect() end

                if UserInputService:GetFocusedTextBox() ~= nil or discord_gg_CDg3VKmWp9_34.Unloaded then
                    discord_gg_CDg3VKmWp9_707(false)
                    return
                end

                if discord_gg_CDg3VKmWp9_728 then
                    break
                elseif discord_gg_CDg3VKmWp9_727 then
                    local discord_gg_CDg3VKmWp9_731 = discord_gg_CDg3VKmWp9_663[discord_gg_CDg3VKmWp9_720.KeyCode]
                    if discord_gg_CDg3VKmWp9_731 and not table.find(discord_gg_CDg3VKmWp9_666, discord_gg_CDg3VKmWp9_731) then
                        discord_gg_CDg3VKmWp9_666[#ActiveModifiers + 1] = OldModName
                    end

                    discord_gg_CDg3VKmWp9_720 = discord_gg_CDg3VKmWp9_727
                    if discord_gg_CDg3VKmWp9_720.KeyCode == Enum.KeyCode.Escape then
                        break
                    end
                end
            end

            local discord_gg_CDg3VKmWp9_284 = "Unknown"
            if discord_gg_CDg3VKmWp9_662[discord_gg_CDg3VKmWp9_720.UserInputType] ~= nil then
                discord_gg_CDg3VKmWp9_284 = discord_gg_CDg3VKmWp9_662[discord_gg_CDg3VKmWp9_720.UserInputType]
            elseif discord_gg_CDg3VKmWp9_720.UserInputType == Enum.UserInputType.Keyboard then
                discord_gg_CDg3VKmWp9_284 = discord_gg_CDg3VKmWp9_720.KeyCode == Enum.KeyCode.Escape and "None" or discord_gg_CDg3VKmWp9_720.KeyCode.Name
            end

            discord_gg_CDg3VKmWp9_666 = if discord_gg_CDg3VKmWp9_720.KeyCode == Enum.KeyCode.Escape or discord_gg_CDg3VKmWp9_284 == "Unknown" then {} else discord_gg_CDg3VKmWp9_666

            discord_gg_CDg3VKmWp9_79.Toggled = if discord_gg_CDg3VKmWp9_652.Type == "Toggle" then discord_gg_CDg3VKmWp9_652.Value else false
            discord_gg_CDg3VKmWp9_79:SetValue({ discord_gg_CDg3VKmWp9_284, discord_gg_CDg3VKmWp9_79.Mode, discord_gg_CDg3VKmWp9_666 })

            repeat
                task.wait()
            until not discord_gg_CDg3VKmWp9_669(discord_gg_CDg3VKmWp9_720) or UserInputService:GetFocusedTextBox()

            discord_gg_CDg3VKmWp9_707(false)
        end))

        table.insert(discord_gg_CDg3VKmWp9_79.Connections, discord_gg_CDg3VKmWp9_685.MouseButton2Click:Connect(function()
            if discord_gg_CDg3VKmWp9_652.Disabled then
                return
            end

            discord_gg_CDg3VKmWp9_702:Toggle()
        end))

        table.insert(discord_gg_CDg3VKmWp9_79.Connections, UserInputService.InputBegan:Connect(function(discord_gg_CDg3VKmWp9_203: InputObject)
            if discord_gg_CDg3VKmWp9_34.Unloaded then
                return
            end

            local discord_gg_CDg3VKmWp9_732 = discord_gg_CDg3VKmWp9_280(discord_gg_CDg3VKmWp9_203)
            if
                discord_gg_CDg3VKmWp9_652.Disabled
                or discord_gg_CDg3VKmWp9_79.Mode == "Always"
                or discord_gg_CDg3VKmWp9_79.Value == "Unknown"
                or discord_gg_CDg3VKmWp9_79.Value == "None"
                or discord_gg_CDg3VKmWp9_659
                or discord_gg_CDg3VKmWp9_34.IsPicking
                or UserInputService:GetFocusedTextBox()
                or (discord_gg_CDg3VKmWp9_732 and discord_gg_CDg3VKmWp9_34.Toggled)
            then
                return
            end

            local discord_gg_CDg3VKmWp9_284 = discord_gg_CDg3VKmWp9_79.Value
            local discord_gg_CDg3VKmWp9_733 = discord_gg_CDg3VKmWp9_667(discord_gg_CDg3VKmWp9_79.Modifiers)
            local discord_gg_CDg3VKmWp9_734 = false

            if
                discord_gg_CDg3VKmWp9_284
                and discord_gg_CDg3VKmWp9_733 == true
                and (
                    discord_gg_CDg3VKmWp9_662[discord_gg_CDg3VKmWp9_203.UserInputType] == discord_gg_CDg3VKmWp9_284
                    or (discord_gg_CDg3VKmWp9_203.UserInputType == Enum.UserInputType.Keyboard and discord_gg_CDg3VKmWp9_203.KeyCode.Name == discord_gg_CDg3VKmWp9_284)
                )
            then
                discord_gg_CDg3VKmWp9_734 = true
            end

            if discord_gg_CDg3VKmWp9_734 then
                if discord_gg_CDg3VKmWp9_79.Mode == "Toggle" then
                    discord_gg_CDg3VKmWp9_79.Toggled = not discord_gg_CDg3VKmWp9_79.Toggled
                    discord_gg_CDg3VKmWp9_79:DoClick()
                elseif discord_gg_CDg3VKmWp9_79.Mode == "Press" then
                    discord_gg_CDg3VKmWp9_79:DoClick()
                elseif discord_gg_CDg3VKmWp9_79.Mode == "Hold" then
                    discord_gg_CDg3VKmWp9_498 = discord_gg_CDg3VKmWp9_203.Changed:Connect(function()
                        if discord_gg_CDg3VKmWp9_79:GetState() then
                            return
                        end

                        discord_gg_CDg3VKmWp9_79:Update()
                        if discord_gg_CDg3VKmWp9_498 and discord_gg_CDg3VKmWp9_498.Connected then
                            discord_gg_CDg3VKmWp9_498:Disconnect()
                            discord_gg_CDg3VKmWp9_498 = nil
                        end
                    end)
                end

                discord_gg_CDg3VKmWp9_79:Update()
            end
        end))

        discord_gg_CDg3VKmWp9_79:Update()

        if not discord_gg_CDg3VKmWp9_652.Addons then
            discord_gg_CDg3VKmWp9_652.Addons = {}
        end

        table.insert(discord_gg_CDg3VKmWp9_652.Addons, discord_gg_CDg3VKmWp9_79)

        discord_gg_CDg3VKmWp9_79.Default = discord_gg_CDg3VKmWp9_79.Value
        discord_gg_CDg3VKmWp9_79.DefaultModifiers = table.clone(discord_gg_CDg3VKmWp9_79.Modifiers or {})

        function discord_gg_CDg3VKmWp9_79:Destroy()
            discord_gg_CDg3VKmWp9_79.Destroyed = true

            if discord_gg_CDg3VKmWp9_682 then
                discord_gg_CDg3VKmWp9_682:Disconnect()
                discord_gg_CDg3VKmWp9_682 = nil
            end

            if discord_gg_CDg3VKmWp9_683 then
                discord_gg_CDg3VKmWp9_683:Disconnect()
                discord_gg_CDg3VKmWp9_683 = nil
            end

            if discord_gg_CDg3VKmWp9_79.Connections then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_79.Connections do
                    discord_gg_CDg3VKmWp9_274:Disconnect()
                end
            end

            if discord_gg_CDg3VKmWp9_693 and discord_gg_CDg3VKmWp9_693.Loaded then
                if discord_gg_CDg3VKmWp9_693.Holder then
                    discord_gg_CDg3VKmWp9_693.Holder:Destroy()
                end
                local discord_gg_CDg3VKmWp9_735 = table.find(discord_gg_CDg3VKmWp9_34.KeybindToggles, discord_gg_CDg3VKmWp9_693)
                if discord_gg_CDg3VKmWp9_735 then
                    table.remove(discord_gg_CDg3VKmWp9_34.KeybindToggles, discord_gg_CDg3VKmWp9_735)
                end
            end

            if discord_gg_CDg3VKmWp9_702 then
                discord_gg_CDg3VKmWp9_702:Destroy()
            end

            if discord_gg_CDg3VKmWp9_660 and discord_gg_CDg3VKmWp9_674 then
                if discord_gg_CDg3VKmWp9_678 then
                    discord_gg_CDg3VKmWp9_678:Destroy()
                end

                if discord_gg_CDg3VKmWp9_679 then
                    discord_gg_CDg3VKmWp9_679:Destroy()
                end
            end

            if discord_gg_CDg3VKmWp9_685 then
                discord_gg_CDg3VKmWp9_685:Destroy()
            end

            if discord_gg_CDg3VKmWp9_652 and discord_gg_CDg3VKmWp9_652.Addons then
                local discord_gg_CDg3VKmWp9_736 = table.find(discord_gg_CDg3VKmWp9_652.Addons, discord_gg_CDg3VKmWp9_79)

                if discord_gg_CDg3VKmWp9_736 then
                    table.remove(discord_gg_CDg3VKmWp9_652.Addons, discord_gg_CDg3VKmWp9_736)
                end
            end

            discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308] = nil

            local discord_gg_CDg3VKmWp9_55 = discord_gg_CDg3VKmWp9_34.KeybindMenu
            if discord_gg_CDg3VKmWp9_55 and discord_gg_CDg3VKmWp9_55.SettingsOpen then
                discord_gg_CDg3VKmWp9_55:RefreshSettings()
            end
        end

        discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308] = discord_gg_CDg3VKmWp9_79

        local discord_gg_CDg3VKmWp9_55 = discord_gg_CDg3VKmWp9_34.KeybindMenu
        if discord_gg_CDg3VKmWp9_55 and discord_gg_CDg3VKmWp9_55.SettingsOpen then
            discord_gg_CDg3VKmWp9_55:RefreshSettings()
        end

        return self
    end

    local discord_gg_CDg3VKmWp9_737 = {}
    for discord_gg_CDg3VKmWp9_738 = 0, 1, 0.1 do
        table.insert(discord_gg_CDg3VKmWp9_737, ColorSequenceKeypoint.new(discord_gg_CDg3VKmWp9_738, Color3.fromHSV(discord_gg_CDg3VKmWp9_738, 1, 1)))
    end
    function discord_gg_CDg3VKmWp9_650:AddColorPicker(discord_gg_CDg3VKmWp9_308, discord_gg_CDg3VKmWp9_651)
        if self.Destroyed then return nil end

        discord_gg_CDg3VKmWp9_651 = discord_gg_CDg3VKmWp9_34:Validate(discord_gg_CDg3VKmWp9_651, discord_gg_CDg3VKmWp9_118.ColorPicker)

        local discord_gg_CDg3VKmWp9_652 = self
        local discord_gg_CDg3VKmWp9_653 = discord_gg_CDg3VKmWp9_652.TextLabel

        local discord_gg_CDg3VKmWp9_255 = {
            discord_gg_CDg3VKmWp9_580 = {},
            discord_gg_CDg3VKmWp9_581 = false,

            discord_gg_CDg3VKmWp9_554 = discord_gg_CDg3VKmWp9_651.Default,

            discord_gg_CDg3VKmWp9_234 = discord_gg_CDg3VKmWp9_651.Transparency or 0,
            discord_gg_CDg3VKmWp9_141 = discord_gg_CDg3VKmWp9_651.Title,

            discord_gg_CDg3VKmWp9_199 = discord_gg_CDg3VKmWp9_651.Callback,
            discord_gg_CDg3VKmWp9_200 = discord_gg_CDg3VKmWp9_651.Changed,

            discord_gg_CDg3VKmWp9_658 = "ColorPicker",
        }
        discord_gg_CDg3VKmWp9_255.Hue, discord_gg_CDg3VKmWp9_255.Sat, discord_gg_CDg3VKmWp9_255.Vib = discord_gg_CDg3VKmWp9_255.Value:ToHSV()

        local discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_381("TextButton", {
            discord_gg_CDg3VKmWp9_437 = discord_gg_CDg3VKmWp9_255.Value,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(18, 18),
            discord_gg_CDg3VKmWp9_136 = "",
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_653,
        })

        local discord_gg_CDg3VKmWp9_739 = discord_gg_CDg3VKmWp9_381("UIStroke", {
            discord_gg_CDg3VKmWp9_235 = discord_gg_CDg3VKmWp9_34:GetDarkerColor(discord_gg_CDg3VKmWp9_255.Value),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        })

        local discord_gg_CDg3VKmWp9_740 = discord_gg_CDg3VKmWp9_381("UICorner", {
            discord_gg_CDg3VKmWp9_614 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
            discord_gg_CDg3VKmWp9_615 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
            discord_gg_CDg3VKmWp9_616 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
            discord_gg_CDg3VKmWp9_617 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        }); table.insert(discord_gg_CDg3VKmWp9_34.SpecificCorners, discord_gg_CDg3VKmWp9_740)

        local discord_gg_CDg3VKmWp9_741 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
            discord_gg_CDg3VKmWp9_233 = discord_gg_CDg3VKmWp9_13.GetAsset("TransparencyTexture"),
            discord_gg_CDg3VKmWp9_697 = (1 - discord_gg_CDg3VKmWp9_255.Transparency),
            discord_gg_CDg3VKmWp9_238 = Enum.ScaleType.Tile,
            discord_gg_CDg3VKmWp9_143 = UDim2.new(0, -1, 0, -1),
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 2, 1, 2),
            discord_gg_CDg3VKmWp9_742 = UDim2.fromOffset(9, 9),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        })

        table.insert(
            discord_gg_CDg3VKmWp9_34.Corners,
            discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_741,
            })
        )

        local discord_gg_CDg3VKmWp9_743 = discord_gg_CDg3VKmWp9_34.IsMobile and 140 or 200
        local discord_gg_CDg3VKmWp9_744 = 16
        local discord_gg_CDg3VKmWp9_745 = discord_gg_CDg3VKmWp9_743 + discord_gg_CDg3VKmWp9_744 + 6 + 12
        if discord_gg_CDg3VKmWp9_651.Transparency then
            discord_gg_CDg3VKmWp9_745 += discord_gg_CDg3VKmWp9_744 + 6
        end

        local discord_gg_CDg3VKmWp9_746
        local discord_gg_CDg3VKmWp9_747
        discord_gg_CDg3VKmWp9_746 = discord_gg_CDg3VKmWp9_34:AddContextMenu(
            discord_gg_CDg3VKmWp9_540,
            UDim2.fromOffset(discord_gg_CDg3VKmWp9_745, 0),
            function()
                return { 0.5, discord_gg_CDg3VKmWp9_540.AbsoluteSize.Y + 1.5 }
            end,
            1, function(discord_gg_CDg3VKmWp9_419: boolean)
                local discord_gg_CDg3VKmWp9_703 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2)
                local discord_gg_CDg3VKmWp9_704 = UDim.new(0, 0)

                discord_gg_CDg3VKmWp9_740.TopLeftRadius = discord_gg_CDg3VKmWp9_703
                discord_gg_CDg3VKmWp9_740.TopRightRadius = discord_gg_CDg3VKmWp9_703
                discord_gg_CDg3VKmWp9_740.BottomRightRadius = discord_gg_CDg3VKmWp9_419 and discord_gg_CDg3VKmWp9_704 or discord_gg_CDg3VKmWp9_703
                discord_gg_CDg3VKmWp9_740.BottomLeftRadius = discord_gg_CDg3VKmWp9_419 and discord_gg_CDg3VKmWp9_704 or discord_gg_CDg3VKmWp9_703

                local discord_gg_CDg3VKmWp9_705 = discord_gg_CDg3VKmWp9_746 and discord_gg_CDg3VKmWp9_746.Corner
                if discord_gg_CDg3VKmWp9_705 then
                    discord_gg_CDg3VKmWp9_705.TopLeftRadius = discord_gg_CDg3VKmWp9_704
                    discord_gg_CDg3VKmWp9_705.TopRightRadius = discord_gg_CDg3VKmWp9_703
                    discord_gg_CDg3VKmWp9_705.BottomRightRadius = discord_gg_CDg3VKmWp9_703
                    discord_gg_CDg3VKmWp9_705.BottomLeftRadius = discord_gg_CDg3VKmWp9_703
                end

                if discord_gg_CDg3VKmWp9_747 then
                    discord_gg_CDg3VKmWp9_747.TopLeftRadius = discord_gg_CDg3VKmWp9_704
                    discord_gg_CDg3VKmWp9_747.TopRightRadius = discord_gg_CDg3VKmWp9_704
                    discord_gg_CDg3VKmWp9_747.BottomLeftRadius = discord_gg_CDg3VKmWp9_703
                    discord_gg_CDg3VKmWp9_747.BottomRightRadius = discord_gg_CDg3VKmWp9_703
                end
            end, false, "no_top_left")
        discord_gg_CDg3VKmWp9_746.List.Padding = UDim.new(0, 0)
        discord_gg_CDg3VKmWp9_255.ColorMenu = discord_gg_CDg3VKmWp9_746

        local discord_gg_CDg3VKmWp9_748 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 0),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_746.Menu,
        })
        discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_166 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_748,
        })
        discord_gg_CDg3VKmWp9_381("UIPadding", {
            discord_gg_CDg3VKmWp9_585 = UDim.new(0, 6),
            discord_gg_CDg3VKmWp9_586 = UDim.new(0, 6),
            discord_gg_CDg3VKmWp9_587 = UDim.new(0, 6),
            discord_gg_CDg3VKmWp9_588 = UDim.new(0, 6),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_748,
        })

        local discord_gg_CDg3VKmWp9_749 = discord_gg_CDg3VKmWp9_34.IsMobile and 30 or 22

        local discord_gg_CDg3VKmWp9_750 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_437 = function()
                return discord_gg_CDg3VKmWp9_34:GetBetterColor(discord_gg_CDg3VKmWp9_34.Scheme.BackgroundColor, 4)
            end,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_749),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_746.Menu,
        })
        discord_gg_CDg3VKmWp9_747 = discord_gg_CDg3VKmWp9_381("UICorner", {
            discord_gg_CDg3VKmWp9_614 = UDim.new(0, 0),
            discord_gg_CDg3VKmWp9_615 = UDim.new(0, 0),
            discord_gg_CDg3VKmWp9_617 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
            discord_gg_CDg3VKmWp9_616 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_750,
        })
        table.insert(discord_gg_CDg3VKmWp9_34.SpecificCorners, discord_gg_CDg3VKmWp9_747)
        discord_gg_CDg3VKmWp9_34:MakeLine(discord_gg_CDg3VKmWp9_750, {
            discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 0),
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 1),
        })

        local discord_gg_CDg3VKmWp9_751 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_750,
        })
        discord_gg_CDg3VKmWp9_381("UIPadding", {
            discord_gg_CDg3VKmWp9_586 = UDim.new(0, 6),
            discord_gg_CDg3VKmWp9_587 = UDim.new(0, discord_gg_CDg3VKmWp9_651.Resizable and (discord_gg_CDg3VKmWp9_749 + 4) or 6),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_751,
        })

        local discord_gg_CDg3VKmWp9_752 = discord_gg_CDg3VKmWp9_381("TextLabel", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
            discord_gg_CDg3VKmWp9_136 = "",
            discord_gg_CDg3VKmWp9_584 = 14,
            discord_gg_CDg3VKmWp9_686 = 0.5,
            discord_gg_CDg3VKmWp9_753 = Enum.TextTruncate.AtEnd,
            discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Center,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_751,
        })

        local function discord_gg_CDg3VKmWp9_754()
            discord_gg_CDg3VKmWp9_752.Text = string.format(
                "#%s • %d, %d, %d",
                discord_gg_CDg3VKmWp9_255.Value:ToHex(),
                math.floor(discord_gg_CDg3VKmWp9_255.Value.R * 255),
                math.floor(discord_gg_CDg3VKmWp9_255.Value.G * 255),
                math.floor(discord_gg_CDg3VKmWp9_255.Value.B * 255)
            )
        end
        discord_gg_CDg3VKmWp9_754()

        if typeof(discord_gg_CDg3VKmWp9_255.Title) == "string" then
            discord_gg_CDg3VKmWp9_381("TextLabel", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 8),
                discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_255.Title,
                discord_gg_CDg3VKmWp9_584 = 14,
                discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_748,
            })
        end

        local discord_gg_CDg3VKmWp9_755 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_743),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_748,
        })
        discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
            discord_gg_CDg3VKmWp9_166 = UDim.new(0, 6),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_755,
        })

        local discord_gg_CDg3VKmWp9_756 = discord_gg_CDg3VKmWp9_381("ImageButton", {
            discord_gg_CDg3VKmWp9_437 = discord_gg_CDg3VKmWp9_255.Value,
            discord_gg_CDg3VKmWp9_233 = discord_gg_CDg3VKmWp9_13.GetAsset("SaturationMap"),
            discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(discord_gg_CDg3VKmWp9_743, discord_gg_CDg3VKmWp9_743),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_755,
        })

        local discord_gg_CDg3VKmWp9_757 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0.5),
            discord_gg_CDg3VKmWp9_437 = "WhiteColor",
            discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(6, 6),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_756,
        })
        discord_gg_CDg3VKmWp9_381("UICorner", {
            discord_gg_CDg3VKmWp9_97 = UDim.new(1, 0),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_757,
        })
        discord_gg_CDg3VKmWp9_381("UIStroke", {
            discord_gg_CDg3VKmWp9_235 = "DarkColor",
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_757,
        })

        local discord_gg_CDg3VKmWp9_758 = discord_gg_CDg3VKmWp9_381("TextButton", {
            discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(discord_gg_CDg3VKmWp9_744, discord_gg_CDg3VKmWp9_743),
            discord_gg_CDg3VKmWp9_136 = "",
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_755,
        })
        discord_gg_CDg3VKmWp9_381("UIGradient", {
            discord_gg_CDg3VKmWp9_235 = ColorSequence.new(discord_gg_CDg3VKmWp9_737),
            discord_gg_CDg3VKmWp9_759 = 90,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_758,
        })

        local discord_gg_CDg3VKmWp9_760 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0.5),
            discord_gg_CDg3VKmWp9_437 = "WhiteColor",
            discord_gg_CDg3VKmWp9_761 = "DarkColor",
            discord_gg_CDg3VKmWp9_120 = 1,
            discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0.5, discord_gg_CDg3VKmWp9_255.Hue),
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 2, 0, 1),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_758,
        })

        local discord_gg_CDg3VKmWp9_762, discord_gg_CDg3VKmWp9_763, discord_gg_CDg3VKmWp9_764
        if discord_gg_CDg3VKmWp9_651.Transparency then
            discord_gg_CDg3VKmWp9_762 = discord_gg_CDg3VKmWp9_381("ImageButton", {
                discord_gg_CDg3VKmWp9_233 = discord_gg_CDg3VKmWp9_13.GetAsset("TransparencyTexture"),
                discord_gg_CDg3VKmWp9_238 = Enum.ScaleType.Tile,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(discord_gg_CDg3VKmWp9_744, discord_gg_CDg3VKmWp9_743),
                discord_gg_CDg3VKmWp9_742 = UDim2.fromOffset(8, 8),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_755,
            })

            discord_gg_CDg3VKmWp9_763 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_437 = discord_gg_CDg3VKmWp9_255.Value,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_762,
            })
            discord_gg_CDg3VKmWp9_381("UIGradient", {
                discord_gg_CDg3VKmWp9_759 = 90,
                discord_gg_CDg3VKmWp9_234 = NumberSequence.new({
                    NumberSequenceKeypoint.new(0, 0),
                    NumberSequenceKeypoint.new(1, 1),
                }),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_763,
            })

            discord_gg_CDg3VKmWp9_764 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0.5),
                discord_gg_CDg3VKmWp9_437 = "WhiteColor",
                discord_gg_CDg3VKmWp9_761 = "DarkColor",
                discord_gg_CDg3VKmWp9_120 = 1,
                discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0.5, discord_gg_CDg3VKmWp9_255.Transparency),
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 2, 0, 1),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_762,
            })
        end

        local discord_gg_CDg3VKmWp9_765
        if discord_gg_CDg3VKmWp9_651.Resizable then
            local discord_gg_CDg3VKmWp9_766 = 200
            local discord_gg_CDg3VKmWp9_767 = discord_gg_CDg3VKmWp9_744
            local discord_gg_CDg3VKmWp9_768 = 6
            local discord_gg_CDg3VKmWp9_769 = 140

            discord_gg_CDg3VKmWp9_255.MapWidth = discord_gg_CDg3VKmWp9_743
            discord_gg_CDg3VKmWp9_255.MapHeight = discord_gg_CDg3VKmWp9_743

            local function discord_gg_CDg3VKmWp9_770(MapWidth)
                return math.clamp(math.floor((MapWidth / discord_gg_CDg3VKmWp9_766) * discord_gg_CDg3VKmWp9_767 + 0.5), 12, 24)
            end

            local function discord_gg_CDg3VKmWp9_771(MapWidth)
                local discord_gg_CDg3VKmWp9_772 = discord_gg_CDg3VKmWp9_770(MapWidth)
                local discord_gg_CDg3VKmWp9_546 = MapWidth + discord_gg_CDg3VKmWp9_772 + discord_gg_CDg3VKmWp9_768
                if discord_gg_CDg3VKmWp9_651.Transparency then
                    discord_gg_CDg3VKmWp9_546 += (discord_gg_CDg3VKmWp9_772 + discord_gg_CDg3VKmWp9_768)
                end

                return discord_gg_CDg3VKmWp9_546 + 12
            end

            local discord_gg_CDg3VKmWp9_773 = 6 + 6 + 8 + 20 + 8 + 20 + discord_gg_CDg3VKmWp9_749
            if typeof(discord_gg_CDg3VKmWp9_255.Title) == "string" then
                discord_gg_CDg3VKmWp9_773 += 8 + 8
            end

            local function discord_gg_CDg3VKmWp9_774(discord_gg_CDg3VKmWp9_779, discord_gg_CDg3VKmWp9_777)
                local discord_gg_CDg3VKmWp9_228 = workspace.CurrentCamera
                if not discord_gg_CDg3VKmWp9_228 then
                    return discord_gg_CDg3VKmWp9_779, discord_gg_CDg3VKmWp9_777
                end

                local discord_gg_CDg3VKmWp9_506 = discord_gg_CDg3VKmWp9_228.ViewportSize
                local discord_gg_CDg3VKmWp9_775 = 12

                local discord_gg_CDg3VKmWp9_642 = discord_gg_CDg3VKmWp9_506.X - discord_gg_CDg3VKmWp9_746.Menu.AbsolutePosition.X - discord_gg_CDg3VKmWp9_775
                local discord_gg_CDg3VKmWp9_776 = discord_gg_CDg3VKmWp9_506.Y - discord_gg_CDg3VKmWp9_746.Menu.AbsolutePosition.Y - discord_gg_CDg3VKmWp9_775 - discord_gg_CDg3VKmWp9_773

                while discord_gg_CDg3VKmWp9_779 > discord_gg_CDg3VKmWp9_769 and discord_gg_CDg3VKmWp9_771(discord_gg_CDg3VKmWp9_779) > discord_gg_CDg3VKmWp9_642 do
                    discord_gg_CDg3VKmWp9_779 -= 4
                end

                if discord_gg_CDg3VKmWp9_777 > discord_gg_CDg3VKmWp9_776 then
                    discord_gg_CDg3VKmWp9_777 = math.max(discord_gg_CDg3VKmWp9_769, math.floor(discord_gg_CDg3VKmWp9_776))
                end

                return discord_gg_CDg3VKmWp9_779, discord_gg_CDg3VKmWp9_777
            end

            local function discord_gg_CDg3VKmWp9_778(discord_gg_CDg3VKmWp9_779, discord_gg_CDg3VKmWp9_777)
                discord_gg_CDg3VKmWp9_779 = math.max(discord_gg_CDg3VKmWp9_769, math.floor(discord_gg_CDg3VKmWp9_779 + 0.5))
                discord_gg_CDg3VKmWp9_777 = math.max(discord_gg_CDg3VKmWp9_769, math.floor(discord_gg_CDg3VKmWp9_777 + 0.5))
                discord_gg_CDg3VKmWp9_779, discord_gg_CDg3VKmWp9_777 = discord_gg_CDg3VKmWp9_774(discord_gg_CDg3VKmWp9_779, discord_gg_CDg3VKmWp9_777)

                if discord_gg_CDg3VKmWp9_779 == discord_gg_CDg3VKmWp9_255.MapWidth and discord_gg_CDg3VKmWp9_777 == discord_gg_CDg3VKmWp9_255.MapHeight then
                    return
                end

                local discord_gg_CDg3VKmWp9_772 = discord_gg_CDg3VKmWp9_770(discord_gg_CDg3VKmWp9_779)
                local discord_gg_CDg3VKmWp9_780 = math.clamp(math.floor((math.min(discord_gg_CDg3VKmWp9_779, discord_gg_CDg3VKmWp9_777) / discord_gg_CDg3VKmWp9_766) * 6 + 0.5), 4, 10)

                discord_gg_CDg3VKmWp9_755.Size = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_777)
                discord_gg_CDg3VKmWp9_756.Size = UDim2.fromOffset(discord_gg_CDg3VKmWp9_779, discord_gg_CDg3VKmWp9_777)
                discord_gg_CDg3VKmWp9_757.Size = UDim2.fromOffset(discord_gg_CDg3VKmWp9_780, discord_gg_CDg3VKmWp9_780)
                discord_gg_CDg3VKmWp9_758.Size = UDim2.new(0, discord_gg_CDg3VKmWp9_772, 0, discord_gg_CDg3VKmWp9_777)

                if discord_gg_CDg3VKmWp9_762 then
                    discord_gg_CDg3VKmWp9_762.Size = UDim2.new(0, discord_gg_CDg3VKmWp9_772, 0, discord_gg_CDg3VKmWp9_777)
                end

                discord_gg_CDg3VKmWp9_255.MapWidth = discord_gg_CDg3VKmWp9_779
                discord_gg_CDg3VKmWp9_255.MapHeight = discord_gg_CDg3VKmWp9_777
                discord_gg_CDg3VKmWp9_746:SetSize(UDim2.new(0, discord_gg_CDg3VKmWp9_771(discord_gg_CDg3VKmWp9_779), 0, 0))
            end

            discord_gg_CDg3VKmWp9_765 = discord_gg_CDg3VKmWp9_381("TextButton", {
                discord_gg_CDg3VKmWp9_432 = Vector2.new(1, 0),
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_143 = UDim2.new(1, -discord_gg_CDg3VKmWp9_34.CornerRadius / 4, 0, 0),
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
                discord_gg_CDg3VKmWp9_695 = Enum.SizeConstraint.RelativeYY,
                discord_gg_CDg3VKmWp9_136 = "",
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_750,
            })
            local discord_gg_CDg3VKmWp9_781 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
                discord_gg_CDg3VKmWp9_553 = "FontColor",
                discord_gg_CDg3VKmWp9_697 = 0.5,
                discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(2, 2),
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -4, 1, -4),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_765,
            })
            if discord_gg_CDg3VKmWp9_442 then
                discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_781, discord_gg_CDg3VKmWp9_442)
            end

            table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_765.InputBegan:Connect(function(discord_gg_CDg3VKmWp9_203: InputObject)
                discord_gg_CDg3VKmWp9_34.CantDragForced = true
                local discord_gg_CDg3VKmWp9_782 = discord_gg_CDg3VKmWp9_398(discord_gg_CDg3VKmWp9_203, discord_gg_CDg3VKmWp9_765)
                local discord_gg_CDg3VKmWp9_783 = discord_gg_CDg3VKmWp9_255.MapWidth
                local discord_gg_CDg3VKmWp9_784 = discord_gg_CDg3VKmWp9_255.MapHeight

                while discord_gg_CDg3VKmWp9_279(discord_gg_CDg3VKmWp9_203) and not discord_gg_CDg3VKmWp9_255.Destroyed do
                    local discord_gg_CDg3VKmWp9_503 = discord_gg_CDg3VKmWp9_398(discord_gg_CDg3VKmWp9_203, discord_gg_CDg3VKmWp9_765) - discord_gg_CDg3VKmWp9_782
                    discord_gg_CDg3VKmWp9_778(discord_gg_CDg3VKmWp9_783 + discord_gg_CDg3VKmWp9_503.X, discord_gg_CDg3VKmWp9_784 + discord_gg_CDg3VKmWp9_503.Y)

                    RunService.RenderStepped:Wait()
                end

                discord_gg_CDg3VKmWp9_34.CantDragForced = false
            end))
        end

        local discord_gg_CDg3VKmWp9_785 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 20),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_748,
        })
        discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
            discord_gg_CDg3VKmWp9_786 = Enum.UIFlexAlignment.Fill,
            discord_gg_CDg3VKmWp9_166 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_785,
        })

        local discord_gg_CDg3VKmWp9_787 = discord_gg_CDg3VKmWp9_381("TextBox", {
            discord_gg_CDg3VKmWp9_437 = "MainColor",
            discord_gg_CDg3VKmWp9_206 = false,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
            discord_gg_CDg3VKmWp9_136 = "#??????",
            discord_gg_CDg3VKmWp9_584 = 14,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_785,
        })

        local discord_gg_CDg3VKmWp9_788 = discord_gg_CDg3VKmWp9_381("UIStroke", {
            discord_gg_CDg3VKmWp9_235 = "OutlineColor",
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_787,
        })

        table.insert(
            discord_gg_CDg3VKmWp9_34.Corners,
            discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_787,
            })
        )

        local discord_gg_CDg3VKmWp9_789 = discord_gg_CDg3VKmWp9_381("TextBox", {
            discord_gg_CDg3VKmWp9_437 = "MainColor",
            discord_gg_CDg3VKmWp9_206 = false,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
            discord_gg_CDg3VKmWp9_136 = "?, ?, ?",
            discord_gg_CDg3VKmWp9_584 = 14,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_785,
        })

        local discord_gg_CDg3VKmWp9_790 = discord_gg_CDg3VKmWp9_381("UIStroke", {
            discord_gg_CDg3VKmWp9_235 = "OutlineColor",
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_789,
        })

        table.insert(
            discord_gg_CDg3VKmWp9_34.Corners,
            discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_789,
            })
        )

        local discord_gg_CDg3VKmWp9_791
        discord_gg_CDg3VKmWp9_791 = discord_gg_CDg3VKmWp9_34:AddContextMenu(discord_gg_CDg3VKmWp9_540, UDim2.fromOffset(93, 0), function()
            return { discord_gg_CDg3VKmWp9_540.AbsoluteSize.X + 1.5, 0.5 }
        end, 1, function(discord_gg_CDg3VKmWp9_419: boolean)
            local discord_gg_CDg3VKmWp9_703 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2)
            local discord_gg_CDg3VKmWp9_704 = UDim.new(0, 0)

            discord_gg_CDg3VKmWp9_740.TopLeftRadius = discord_gg_CDg3VKmWp9_703
            discord_gg_CDg3VKmWp9_740.BottomLeftRadius = discord_gg_CDg3VKmWp9_703
            discord_gg_CDg3VKmWp9_740.TopRightRadius = discord_gg_CDg3VKmWp9_419 and discord_gg_CDg3VKmWp9_704 or discord_gg_CDg3VKmWp9_703
            discord_gg_CDg3VKmWp9_740.BottomRightRadius = discord_gg_CDg3VKmWp9_419 and discord_gg_CDg3VKmWp9_704 or discord_gg_CDg3VKmWp9_703

            local discord_gg_CDg3VKmWp9_705 = discord_gg_CDg3VKmWp9_791 and discord_gg_CDg3VKmWp9_791.Corner
            if discord_gg_CDg3VKmWp9_705 then
                discord_gg_CDg3VKmWp9_705.TopLeftRadius = discord_gg_CDg3VKmWp9_704
                discord_gg_CDg3VKmWp9_705.TopRightRadius = discord_gg_CDg3VKmWp9_703
                discord_gg_CDg3VKmWp9_705.BottomRightRadius = discord_gg_CDg3VKmWp9_703
                discord_gg_CDg3VKmWp9_705.BottomLeftRadius = discord_gg_CDg3VKmWp9_703
            end
        end, false, "no_top_left")
        discord_gg_CDg3VKmWp9_255.ContextMenu = discord_gg_CDg3VKmWp9_791
        discord_gg_CDg3VKmWp9_791.List.Padding = UDim.new(0, 6)
        do
            local function discord_gg_CDg3VKmWp9_792(discord_gg_CDg3VKmWp9_136, discord_gg_CDg3VKmWp9_592)
                local discord_gg_CDg3VKmWp9_596 = discord_gg_CDg3VKmWp9_381("TextButton", {
                    discord_gg_CDg3VKmWp9_437 = "MainColor",
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 21),
                    discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_136,
                    discord_gg_CDg3VKmWp9_584 = 14,
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_791.Menu,
                })

                table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_596.Activated:Connect(function()
                    discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_592)
                    discord_gg_CDg3VKmWp9_791:Close()
                end))

                table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_596.MouseEnter:Connect(function()
                    TweenService:Create(discord_gg_CDg3VKmWp9_596, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                        discord_gg_CDg3VKmWp9_122 = 0.7,
                    }):Play()
                end))

                table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_596.MouseLeave:Connect(function()
                    TweenService:Create(discord_gg_CDg3VKmWp9_596, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                        discord_gg_CDg3VKmWp9_122 = 1,
                    }):Play()
                end))
            end

            discord_gg_CDg3VKmWp9_792("Copy color", function()
                discord_gg_CDg3VKmWp9_34.CopiedColor = { discord_gg_CDg3VKmWp9_255.Value, discord_gg_CDg3VKmWp9_255.Transparency }
            end)

            discord_gg_CDg3VKmWp9_255.SetValueRGB = function(...) end
            discord_gg_CDg3VKmWp9_792("Paste color", function()
                if not discord_gg_CDg3VKmWp9_34.CopiedColor then
                    return
                end

                discord_gg_CDg3VKmWp9_255:SetValueRGB(discord_gg_CDg3VKmWp9_34.CopiedColor[1], discord_gg_CDg3VKmWp9_34.CopiedColor[2])
            end)

            if discord_gg_CDg3VKmWp9_2 then
                discord_gg_CDg3VKmWp9_792("Copy Hex", function()
                    discord_gg_CDg3VKmWp9_2(tostring(discord_gg_CDg3VKmWp9_255.Value:ToHex()))
                end)

                discord_gg_CDg3VKmWp9_792("Copy RGB", function()
                    discord_gg_CDg3VKmWp9_2(table.concat({
                        math.floor(discord_gg_CDg3VKmWp9_255.Value.R * 255),
                        math.floor(discord_gg_CDg3VKmWp9_255.Value.G * 255),
                        math.floor(discord_gg_CDg3VKmWp9_255.Value.B * 255),
                    }, ", "))
                end)
            end
        end

        local discord_gg_CDg3VKmWp9_793 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 20),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_748,
        })
        discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
            discord_gg_CDg3VKmWp9_786 = Enum.UIFlexAlignment.Fill,
            discord_gg_CDg3VKmWp9_166 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_793,
        })

        local discord_gg_CDg3VKmWp9_794 = discord_gg_CDg3VKmWp9_381("TextButton", {
            discord_gg_CDg3VKmWp9_437 = "MainColor",
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
            discord_gg_CDg3VKmWp9_136 = "Copy color",
            discord_gg_CDg3VKmWp9_584 = 14,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_793,
        })
        discord_gg_CDg3VKmWp9_381("UIStroke", {
            discord_gg_CDg3VKmWp9_235 = "OutlineColor",
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_794,
        })
        table.insert(
            discord_gg_CDg3VKmWp9_34.Corners,
            discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_794,
            })
        )

        local discord_gg_CDg3VKmWp9_795 = discord_gg_CDg3VKmWp9_381("TextButton", {
            discord_gg_CDg3VKmWp9_437 = "MainColor",
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
            discord_gg_CDg3VKmWp9_136 = "Paste color",
            discord_gg_CDg3VKmWp9_584 = 14,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_793,
        })
        discord_gg_CDg3VKmWp9_381("UIStroke", {
            discord_gg_CDg3VKmWp9_235 = "OutlineColor",
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_795,
        })
        table.insert(
            discord_gg_CDg3VKmWp9_34.Corners,
            discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_795,
            })
        )

        local discord_gg_CDg3VKmWp9_796 = discord_gg_CDg3VKmWp9_794.Text
        local discord_gg_CDg3VKmWp9_797 = discord_gg_CDg3VKmWp9_795.Text
        local discord_gg_CDg3VKmWp9_798 = 0
        local discord_gg_CDg3VKmWp9_799 = 0

        table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_794.MouseEnter:Connect(function()
            TweenService:Create(discord_gg_CDg3VKmWp9_794, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_437 = discord_gg_CDg3VKmWp9_34:GetBetterColor(discord_gg_CDg3VKmWp9_34.Scheme.MainColor, 10),
            }):Play()
        end))

        table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_794.MouseLeave:Connect(function()
            TweenService:Create(discord_gg_CDg3VKmWp9_794, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_437 = discord_gg_CDg3VKmWp9_34.Scheme.MainColor,
            }):Play()
        end))

        table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_795.MouseEnter:Connect(function()
            TweenService:Create(discord_gg_CDg3VKmWp9_795, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_437 = discord_gg_CDg3VKmWp9_34:GetBetterColor(discord_gg_CDg3VKmWp9_34.Scheme.MainColor, 10),
            }):Play()
        end))

        table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_795.MouseLeave:Connect(function()
            TweenService:Create(discord_gg_CDg3VKmWp9_795, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_437 = discord_gg_CDg3VKmWp9_34.Scheme.MainColor,
            }):Play()
        end))

        table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_794.Activated:Connect(function()
            discord_gg_CDg3VKmWp9_34.CopiedColor = { discord_gg_CDg3VKmWp9_255.Value, discord_gg_CDg3VKmWp9_255.Transparency }

            discord_gg_CDg3VKmWp9_798 += 1
            local discord_gg_CDg3VKmWp9_800 = discord_gg_CDg3VKmWp9_798
            discord_gg_CDg3VKmWp9_794.Text = "Copied color"

            task.delay(1, function()
                if discord_gg_CDg3VKmWp9_255.Destroyed or discord_gg_CDg3VKmWp9_800 ~= discord_gg_CDg3VKmWp9_798 then
                    return
                end

                discord_gg_CDg3VKmWp9_794.Text = discord_gg_CDg3VKmWp9_796
            end)
        end))

        table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_795.Activated:Connect(function()
            discord_gg_CDg3VKmWp9_799 += 1
            local discord_gg_CDg3VKmWp9_800 = discord_gg_CDg3VKmWp9_799

            if not discord_gg_CDg3VKmWp9_34.CopiedColor then
                discord_gg_CDg3VKmWp9_795.Text = "Nothing to paste"
            else
                discord_gg_CDg3VKmWp9_255:SetValueRGB(discord_gg_CDg3VKmWp9_34.CopiedColor[1], discord_gg_CDg3VKmWp9_34.CopiedColor[2])
                discord_gg_CDg3VKmWp9_795.Text = "Pasted color"
            end

            task.delay(1, function()
                if discord_gg_CDg3VKmWp9_255.Destroyed or discord_gg_CDg3VKmWp9_800 ~= discord_gg_CDg3VKmWp9_799 then
                    return
                end

                discord_gg_CDg3VKmWp9_795.Text = discord_gg_CDg3VKmWp9_797
            end)
        end))

        function discord_gg_CDg3VKmWp9_255:SetHSVFromRGB(discord_gg_CDg3VKmWp9_235)
            discord_gg_CDg3VKmWp9_255.Hue, discord_gg_CDg3VKmWp9_255.Sat, discord_gg_CDg3VKmWp9_255.Vib = discord_gg_CDg3VKmWp9_235:ToHSV()
        end

        function discord_gg_CDg3VKmWp9_255:Display()
            if discord_gg_CDg3VKmWp9_34.Unloaded then
                return
            end

            discord_gg_CDg3VKmWp9_255.Value = Color3.fromHSV(discord_gg_CDg3VKmWp9_255.Hue, discord_gg_CDg3VKmWp9_255.Sat, discord_gg_CDg3VKmWp9_255.Vib)

            discord_gg_CDg3VKmWp9_756.BackgroundColor3 = Color3.fromHSV(discord_gg_CDg3VKmWp9_255.Hue, 1, 1)
            if discord_gg_CDg3VKmWp9_763 then
                discord_gg_CDg3VKmWp9_763.BackgroundColor3 = discord_gg_CDg3VKmWp9_255.Value
            end

            discord_gg_CDg3VKmWp9_757.Position = UDim2.fromScale(discord_gg_CDg3VKmWp9_255.Sat, 1 - discord_gg_CDg3VKmWp9_255.Vib)
            discord_gg_CDg3VKmWp9_760.Position = UDim2.fromScale(0.5, discord_gg_CDg3VKmWp9_255.Hue)
            if discord_gg_CDg3VKmWp9_764 then
                discord_gg_CDg3VKmWp9_764.Position = UDim2.fromScale(0.5, discord_gg_CDg3VKmWp9_255.Transparency)
            end

            discord_gg_CDg3VKmWp9_787.Text = "#" .. ColorPicker.Value:ToHex()
            discord_gg_CDg3VKmWp9_789.Text = table.concat({
                math.floor(discord_gg_CDg3VKmWp9_255.Value.R * 255),
                math.floor(discord_gg_CDg3VKmWp9_255.Value.G * 255),
                math.floor(discord_gg_CDg3VKmWp9_255.Value.B * 255),
            }, ", ")

            discord_gg_CDg3VKmWp9_754()
        end

        local function discord_gg_CDg3VKmWp9_801(discord_gg_CDg3VKmWp9_202: boolean)
            discord_gg_CDg3VKmWp9_540.Active = not discord_gg_CDg3VKmWp9_202
            discord_gg_CDg3VKmWp9_739.Transparency = discord_gg_CDg3VKmWp9_202 and 0.5 or 0
            discord_gg_CDg3VKmWp9_540.BackgroundTransparency = discord_gg_CDg3VKmWp9_202 and 0.5 or 0

            if discord_gg_CDg3VKmWp9_202 then
                discord_gg_CDg3VKmWp9_540.BackgroundColor3 = discord_gg_CDg3VKmWp9_255.Value:Lerp(discord_gg_CDg3VKmWp9_34.Scheme.BackgroundColor, 0.5)
                discord_gg_CDg3VKmWp9_741.ImageTransparency = math.clamp((1 - discord_gg_CDg3VKmWp9_255.Transparency) + 0.5, 0, 1)
            else
                discord_gg_CDg3VKmWp9_540.BackgroundColor3 = discord_gg_CDg3VKmWp9_255.Value
                discord_gg_CDg3VKmWp9_739.Color = discord_gg_CDg3VKmWp9_34:GetDarkerColor(discord_gg_CDg3VKmWp9_255.Value)
                discord_gg_CDg3VKmWp9_741.ImageTransparency = (1 - discord_gg_CDg3VKmWp9_255.Transparency)
            end
        end

        function discord_gg_CDg3VKmWp9_255:RunChanged()
            if discord_gg_CDg3VKmWp9_652.Disabled then
                return
            end

            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_255.Callback, discord_gg_CDg3VKmWp9_255.Value)
            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_255.Changed, discord_gg_CDg3VKmWp9_255.Value)
        end

        function discord_gg_CDg3VKmWp9_255:Update()
            discord_gg_CDg3VKmWp9_255:Display()

            local discord_gg_CDg3VKmWp9_202 = discord_gg_CDg3VKmWp9_652.Disabled == true
            discord_gg_CDg3VKmWp9_801(discord_gg_CDg3VKmWp9_202)

            if discord_gg_CDg3VKmWp9_202 then
                if discord_gg_CDg3VKmWp9_746.Active then
                    discord_gg_CDg3VKmWp9_746:Close()
                end

                if discord_gg_CDg3VKmWp9_791.Active then
                    discord_gg_CDg3VKmWp9_791:Close()
                end
            end

            discord_gg_CDg3VKmWp9_255:RunChanged()
        end

        function discord_gg_CDg3VKmWp9_255:OnChanged(discord_gg_CDg3VKmWp9_592)
            discord_gg_CDg3VKmWp9_255.Changed = discord_gg_CDg3VKmWp9_592
        end

        function discord_gg_CDg3VKmWp9_255:SetValue(HSV, discord_gg_CDg3VKmWp9_234)
            if typeof(HSV) == "Color3" then
                discord_gg_CDg3VKmWp9_255:SetValueRGB(HSV, discord_gg_CDg3VKmWp9_234)
                return
            end

            local discord_gg_CDg3VKmWp9_235 = Color3.fromHSV(HSV[1], HSV[2], HSV[3])
            discord_gg_CDg3VKmWp9_255.Transparency = discord_gg_CDg3VKmWp9_651.Transparency and discord_gg_CDg3VKmWp9_234 or 0
            discord_gg_CDg3VKmWp9_255:SetHSVFromRGB(discord_gg_CDg3VKmWp9_235)
            discord_gg_CDg3VKmWp9_255:Update()
        end

        function discord_gg_CDg3VKmWp9_255:SetValueRGB(discord_gg_CDg3VKmWp9_235, discord_gg_CDg3VKmWp9_234)
            discord_gg_CDg3VKmWp9_255.Transparency = discord_gg_CDg3VKmWp9_651.Transparency and discord_gg_CDg3VKmWp9_234 or 0
            discord_gg_CDg3VKmWp9_255:SetHSVFromRGB(discord_gg_CDg3VKmWp9_235)
            discord_gg_CDg3VKmWp9_255:Update()
        end

        table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_540.Activated:Connect(function()
            if discord_gg_CDg3VKmWp9_652.Disabled then
                return
            end

            discord_gg_CDg3VKmWp9_746:Toggle()
        end))

        table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_540.MouseButton2Click:Connect(function()
            if discord_gg_CDg3VKmWp9_652.Disabled then
                return
            end

            discord_gg_CDg3VKmWp9_791:Toggle()
        end))

        table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_756.InputBegan:Connect(function(discord_gg_CDg3VKmWp9_203: InputObject)
            while discord_gg_CDg3VKmWp9_279(discord_gg_CDg3VKmWp9_203) and not discord_gg_CDg3VKmWp9_255.Destroyed do
                local discord_gg_CDg3VKmWp9_802 = discord_gg_CDg3VKmWp9_756.AbsolutePosition.X
                local discord_gg_CDg3VKmWp9_803 = discord_gg_CDg3VKmWp9_802 + discord_gg_CDg3VKmWp9_756.AbsoluteSize.X
                local discord_gg_CDg3VKmWp9_804 = math.clamp(discord_gg_CDg3VKmWp9_398(discord_gg_CDg3VKmWp9_203, discord_gg_CDg3VKmWp9_756).X, discord_gg_CDg3VKmWp9_802, discord_gg_CDg3VKmWp9_803)

                local discord_gg_CDg3VKmWp9_805 = discord_gg_CDg3VKmWp9_756.AbsolutePosition.Y
                local discord_gg_CDg3VKmWp9_806 = discord_gg_CDg3VKmWp9_805 + discord_gg_CDg3VKmWp9_756.AbsoluteSize.Y
                local discord_gg_CDg3VKmWp9_807 = math.clamp(discord_gg_CDg3VKmWp9_398(discord_gg_CDg3VKmWp9_203, discord_gg_CDg3VKmWp9_756).Y, discord_gg_CDg3VKmWp9_805, discord_gg_CDg3VKmWp9_806)

                local discord_gg_CDg3VKmWp9_808 = discord_gg_CDg3VKmWp9_255.Sat
                local discord_gg_CDg3VKmWp9_809 = discord_gg_CDg3VKmWp9_255.Vib
                discord_gg_CDg3VKmWp9_255.Sat = (discord_gg_CDg3VKmWp9_804 - discord_gg_CDg3VKmWp9_802) / (discord_gg_CDg3VKmWp9_803 - discord_gg_CDg3VKmWp9_802)
                discord_gg_CDg3VKmWp9_255.Vib = 1 - ((discord_gg_CDg3VKmWp9_807 - discord_gg_CDg3VKmWp9_805) / (discord_gg_CDg3VKmWp9_806 - discord_gg_CDg3VKmWp9_805))

                if discord_gg_CDg3VKmWp9_255.Sat ~= discord_gg_CDg3VKmWp9_808 or discord_gg_CDg3VKmWp9_255.Vib ~= discord_gg_CDg3VKmWp9_809 then
                    discord_gg_CDg3VKmWp9_255:Update()
                end

                RunService.RenderStepped:Wait()
            end
        end))

        table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_758.InputBegan:Connect(function(discord_gg_CDg3VKmWp9_203: InputObject)
            while discord_gg_CDg3VKmWp9_279(discord_gg_CDg3VKmWp9_203) and not discord_gg_CDg3VKmWp9_255.Destroyed do
                local discord_gg_CDg3VKmWp9_213 = discord_gg_CDg3VKmWp9_758.AbsolutePosition.Y
                local discord_gg_CDg3VKmWp9_214 = discord_gg_CDg3VKmWp9_213 + discord_gg_CDg3VKmWp9_758.AbsoluteSize.Y
                local discord_gg_CDg3VKmWp9_635 = math.clamp(discord_gg_CDg3VKmWp9_398(discord_gg_CDg3VKmWp9_203, discord_gg_CDg3VKmWp9_758).Y, discord_gg_CDg3VKmWp9_213, discord_gg_CDg3VKmWp9_214)

                local discord_gg_CDg3VKmWp9_810 = discord_gg_CDg3VKmWp9_255.Hue
                discord_gg_CDg3VKmWp9_255.Hue = (discord_gg_CDg3VKmWp9_635 - discord_gg_CDg3VKmWp9_213) / (discord_gg_CDg3VKmWp9_214 - discord_gg_CDg3VKmWp9_213)

                if discord_gg_CDg3VKmWp9_255.Hue ~= discord_gg_CDg3VKmWp9_810 then
                    discord_gg_CDg3VKmWp9_255:Update()
                end

                RunService.RenderStepped:Wait()
            end
        end))

        if discord_gg_CDg3VKmWp9_762 then
            table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_762.InputBegan:Connect(function(discord_gg_CDg3VKmWp9_203: InputObject)
                while discord_gg_CDg3VKmWp9_279(discord_gg_CDg3VKmWp9_203) and not discord_gg_CDg3VKmWp9_255.Destroyed do
                    local discord_gg_CDg3VKmWp9_213 = discord_gg_CDg3VKmWp9_762.AbsolutePosition.Y
                    local discord_gg_CDg3VKmWp9_214 = discord_gg_CDg3VKmWp9_762.AbsolutePosition.Y + discord_gg_CDg3VKmWp9_762.AbsoluteSize.Y
                    local discord_gg_CDg3VKmWp9_635 = math.clamp(discord_gg_CDg3VKmWp9_398(discord_gg_CDg3VKmWp9_203, discord_gg_CDg3VKmWp9_762).Y, discord_gg_CDg3VKmWp9_213, discord_gg_CDg3VKmWp9_214)

                    local discord_gg_CDg3VKmWp9_811 = discord_gg_CDg3VKmWp9_255.Transparency
                    discord_gg_CDg3VKmWp9_255.Transparency = (discord_gg_CDg3VKmWp9_635 - discord_gg_CDg3VKmWp9_213) / (discord_gg_CDg3VKmWp9_214 - discord_gg_CDg3VKmWp9_213)

                    if discord_gg_CDg3VKmWp9_255.Transparency ~= discord_gg_CDg3VKmWp9_811 then
                        discord_gg_CDg3VKmWp9_255:Update()
                    end

                    RunService.RenderStepped:Wait()
                end
            end))
        end

        table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_787.FocusLost:Connect(function(Enter)
            if not Enter then
                return
            end

            local discord_gg_CDg3VKmWp9_29, discord_gg_CDg3VKmWp9_235 = pcall(Color3.fromHex, discord_gg_CDg3VKmWp9_787.Text)
            if discord_gg_CDg3VKmWp9_29 and typeof(discord_gg_CDg3VKmWp9_235) == "Color3" then
                discord_gg_CDg3VKmWp9_255.Hue, discord_gg_CDg3VKmWp9_255.Sat, discord_gg_CDg3VKmWp9_255.Vib = discord_gg_CDg3VKmWp9_235:ToHSV()
            end

            discord_gg_CDg3VKmWp9_255:Update()
        end))

        table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_789.FocusLost:Connect(function(Enter)
            if not Enter then
                return
            end

            local discord_gg_CDg3VKmWp9_812, discord_gg_CDg3VKmWp9_813, discord_gg_CDg3VKmWp9_814 = discord_gg_CDg3VKmWp9_789.Text:match("(%d+),%s*(%d+),%s*(%d+)")
            if discord_gg_CDg3VKmWp9_812 and discord_gg_CDg3VKmWp9_813 and discord_gg_CDg3VKmWp9_814 then
                discord_gg_CDg3VKmWp9_255:SetHSVFromRGB(Color3.fromRGB(discord_gg_CDg3VKmWp9_812, discord_gg_CDg3VKmWp9_813, discord_gg_CDg3VKmWp9_814))
            end

            discord_gg_CDg3VKmWp9_255:Update()
        end))

        for discord_gg_CDg3VKmWp9_26, BoxPair in {
            { discord_gg_CDg3VKmWp9_787, discord_gg_CDg3VKmWp9_788 },
            { discord_gg_CDg3VKmWp9_789, discord_gg_CDg3VKmWp9_790 }
        } do
            local discord_gg_CDg3VKmWp9_815, discord_gg_CDg3VKmWp9_816 = BoxPair[1], BoxPair[2]

            table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_815.Focused:Connect(function()
                discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_816].Color = "AccentColor"
                TweenService:Create(discord_gg_CDg3VKmWp9_816, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_235 = discord_gg_CDg3VKmWp9_34.Scheme.AccentColor,
                }):Play()
            end))

            table.insert(discord_gg_CDg3VKmWp9_255.Connections, discord_gg_CDg3VKmWp9_815.FocusLost:Connect(function()
                discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_816].Color = "OutlineColor"
                TweenService:Create(discord_gg_CDg3VKmWp9_816, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_235 = discord_gg_CDg3VKmWp9_34.Scheme.OutlineColor,
                }):Play()
            end))
        end

        discord_gg_CDg3VKmWp9_255:Update()

        if not discord_gg_CDg3VKmWp9_652.Addons then
            discord_gg_CDg3VKmWp9_652.Addons = {}
        end

        table.insert(discord_gg_CDg3VKmWp9_652.Addons, discord_gg_CDg3VKmWp9_255)

        discord_gg_CDg3VKmWp9_255.Default = discord_gg_CDg3VKmWp9_255.Value

        function discord_gg_CDg3VKmWp9_255:Destroy()
            discord_gg_CDg3VKmWp9_255.Destroyed = true

            if discord_gg_CDg3VKmWp9_255.Connections then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_255.Connections do
                    discord_gg_CDg3VKmWp9_274:Disconnect()
                end
            end

            if discord_gg_CDg3VKmWp9_746 then
                discord_gg_CDg3VKmWp9_746:Destroy()
            end

            if discord_gg_CDg3VKmWp9_765 then
                discord_gg_CDg3VKmWp9_765:Destroy()
            end

            if discord_gg_CDg3VKmWp9_791 then
                discord_gg_CDg3VKmWp9_791:Destroy()
            end

            if discord_gg_CDg3VKmWp9_540 then
                discord_gg_CDg3VKmWp9_540:Destroy()
            end

            if discord_gg_CDg3VKmWp9_652 and discord_gg_CDg3VKmWp9_652.Addons then
                local discord_gg_CDg3VKmWp9_736 = table.find(discord_gg_CDg3VKmWp9_652.Addons, discord_gg_CDg3VKmWp9_255)

                if discord_gg_CDg3VKmWp9_736 then
                    table.remove(discord_gg_CDg3VKmWp9_652.Addons, discord_gg_CDg3VKmWp9_736)
                end
            end

            discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308] = nil
        end

        discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308] = discord_gg_CDg3VKmWp9_255

        return self
    end

    discord_gg_CDg3VKmWp9_649.__index = discord_gg_CDg3VKmWp9_650
    discord_gg_CDg3VKmWp9_649.__namecall = function(discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_284, ...)
        return discord_gg_CDg3VKmWp9_650[discord_gg_CDg3VKmWp9_284](...)
    end
end

local discord_gg_CDg3VKmWp9_817 = {}
do
    local discord_gg_CDg3VKmWp9_650 = {}

    function discord_gg_CDg3VKmWp9_650:AddDivider(...)
        if self.Destroyed then return nil end

        local discord_gg_CDg3VKmWp9_452 = select(1, ...)
        local discord_gg_CDg3VKmWp9_136
        local discord_gg_CDg3VKmWp9_818 = 0
        local discord_gg_CDg3VKmWp9_819 = 0

        if typeof(discord_gg_CDg3VKmWp9_452) == "table" then
            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_452.Text
            discord_gg_CDg3VKmWp9_818 = discord_gg_CDg3VKmWp9_452.MarginTop or discord_gg_CDg3VKmWp9_452.Margin or 0
            discord_gg_CDg3VKmWp9_819 = discord_gg_CDg3VKmWp9_452.MarginBottom or discord_gg_CDg3VKmWp9_452.Margin or 0
        elseif typeof(discord_gg_CDg3VKmWp9_452) == "string" then
            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_452
        end

        local discord_gg_CDg3VKmWp9_77 = self
        local discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_77.Container

        local discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 6 + discord_gg_CDg3VKmWp9_818 + discord_gg_CDg3VKmWp9_819),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
        })

        local discord_gg_CDg3VKmWp9_820 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 1, 0),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        })

        discord_gg_CDg3VKmWp9_381("UIPadding", {
            discord_gg_CDg3VKmWp9_588 = UDim.new(0, discord_gg_CDg3VKmWp9_818),
            discord_gg_CDg3VKmWp9_585 = UDim.new(0, discord_gg_CDg3VKmWp9_819),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        })

        if discord_gg_CDg3VKmWp9_136 then
            local discord_gg_CDg3VKmWp9_126 = discord_gg_CDg3VKmWp9_381("TextLabel", {
                discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.X,
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 0),
                discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_136,
                discord_gg_CDg3VKmWp9_584 = 14,
                discord_gg_CDg3VKmWp9_686 = 0.5,
                discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Center,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_820,
            })

            local discord_gg_CDg3VKmWp9_395, discord_gg_CDg3VKmWp9_26 = discord_gg_CDg3VKmWp9_34:GetTextBounds(discord_gg_CDg3VKmWp9_136, discord_gg_CDg3VKmWp9_126.FontFace, discord_gg_CDg3VKmWp9_126.TextSize, discord_gg_CDg3VKmWp9_126.AbsoluteSize.X / discord_gg_CDg3VKmWp9_34.DPIScale)
            local discord_gg_CDg3VKmWp9_821 = discord_gg_CDg3VKmWp9_395 // 2 + 10

            discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 0.5),
                discord_gg_CDg3VKmWp9_437 = "MainColor",
                discord_gg_CDg3VKmWp9_761 = "OutlineColor",
                discord_gg_CDg3VKmWp9_120 = 1,
                discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 0.5),
                discord_gg_CDg3VKmWp9_144 = UDim2.new(0.5, -discord_gg_CDg3VKmWp9_821, 0, 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_820,
            })
            discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_432 = Vector2.new(1, 0.5),
                discord_gg_CDg3VKmWp9_437 = "MainColor",
                discord_gg_CDg3VKmWp9_761 = "OutlineColor",
                discord_gg_CDg3VKmWp9_120 = 1,
                discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(1, 0.5),
                discord_gg_CDg3VKmWp9_144 = UDim2.new(0.5, -discord_gg_CDg3VKmWp9_821, 0, 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_820,
            })
        else
            discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 0.5),
                discord_gg_CDg3VKmWp9_437 = "MainColor",
                discord_gg_CDg3VKmWp9_761 = "OutlineColor",
                discord_gg_CDg3VKmWp9_120 = 1,
                discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 0.5),
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_820,
            })
        end

        discord_gg_CDg3VKmWp9_77:Resize()

        local discord_gg_CDg3VKmWp9_822 = {
            discord_gg_CDg3VKmWp9_580 = {},
            discord_gg_CDg3VKmWp9_581 = false,

            discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_540,
            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_136,
            discord_gg_CDg3VKmWp9_818 = discord_gg_CDg3VKmWp9_818,
            discord_gg_CDg3VKmWp9_819 = discord_gg_CDg3VKmWp9_819,
            discord_gg_CDg3VKmWp9_658 = "Divider",

            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_77,
        }

        function discord_gg_CDg3VKmWp9_822:SetVisible(discord_gg_CDg3VKmWp9_554)
            discord_gg_CDg3VKmWp9_540.Visible = discord_gg_CDg3VKmWp9_554 == true
            discord_gg_CDg3VKmWp9_77:Resize()
        end

        function discord_gg_CDg3VKmWp9_822:Destroy()
            discord_gg_CDg3VKmWp9_822.Destroyed = true

            if discord_gg_CDg3VKmWp9_822.Connections then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_822.Connections do
                    discord_gg_CDg3VKmWp9_274:Disconnect()
                end
            end

            if discord_gg_CDg3VKmWp9_540 then
                discord_gg_CDg3VKmWp9_540:Destroy()
            end

            local discord_gg_CDg3VKmWp9_591 = table.find(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_822)
            if discord_gg_CDg3VKmWp9_591 then
                table.remove(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_591)
            end

            discord_gg_CDg3VKmWp9_77:Resize()
        end

        table.insert(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_822)
        return discord_gg_CDg3VKmWp9_822
    end

    function discord_gg_CDg3VKmWp9_650:AddLabel(...)
        if self.Destroyed then return nil end

        local discord_gg_CDg3VKmWp9_823 = {}
        local discord_gg_CDg3VKmWp9_824 = {}

        local discord_gg_CDg3VKmWp9_825 = select(1, ...)
        local discord_gg_CDg3VKmWp9_826 = select(2, ...)

        if typeof(discord_gg_CDg3VKmWp9_825) == "table" or typeof(discord_gg_CDg3VKmWp9_826) == "table" then
            local discord_gg_CDg3VKmWp9_452 = typeof(discord_gg_CDg3VKmWp9_825) == "table" and discord_gg_CDg3VKmWp9_825 or discord_gg_CDg3VKmWp9_826

            discord_gg_CDg3VKmWp9_823.Text = discord_gg_CDg3VKmWp9_452.Text or ""
            discord_gg_CDg3VKmWp9_823.DoesWrap = discord_gg_CDg3VKmWp9_452.DoesWrap or false
            discord_gg_CDg3VKmWp9_823.Size = discord_gg_CDg3VKmWp9_452.Size or 14
            discord_gg_CDg3VKmWp9_823.Visible = if typeof(discord_gg_CDg3VKmWp9_452.Visible) == "boolean" then discord_gg_CDg3VKmWp9_452.Visible else true
            discord_gg_CDg3VKmWp9_823.Idx = typeof(discord_gg_CDg3VKmWp9_826) == "table" and discord_gg_CDg3VKmWp9_825 or nil
        else
            discord_gg_CDg3VKmWp9_823.Text = discord_gg_CDg3VKmWp9_825 or ""
            discord_gg_CDg3VKmWp9_823.DoesWrap = discord_gg_CDg3VKmWp9_826 or false
            discord_gg_CDg3VKmWp9_823.Size = 14
            discord_gg_CDg3VKmWp9_823.Visible = true
            discord_gg_CDg3VKmWp9_823.Idx = select(3, ...) or nil
        end

        local discord_gg_CDg3VKmWp9_77 = self
        local discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_77.Container

        local discord_gg_CDg3VKmWp9_583 = {
            discord_gg_CDg3VKmWp9_580 = {},
            discord_gg_CDg3VKmWp9_581 = false,

            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_823.Text,
            discord_gg_CDg3VKmWp9_827 = discord_gg_CDg3VKmWp9_823.DoesWrap,

            discord_gg_CDg3VKmWp9_824 = discord_gg_CDg3VKmWp9_824,

            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_823.Visible,
            discord_gg_CDg3VKmWp9_658 = "Label",

            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_77,
        }

        local discord_gg_CDg3VKmWp9_126 = discord_gg_CDg3VKmWp9_381("TextLabel", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 18),
            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_583.Text,
            discord_gg_CDg3VKmWp9_584 = discord_gg_CDg3VKmWp9_823.Size,
            discord_gg_CDg3VKmWp9_637 = discord_gg_CDg3VKmWp9_583.DoesWrap,
            discord_gg_CDg3VKmWp9_401 = discord_gg_CDg3VKmWp9_77.IsKeyTab and Enum.TextXAlignment.Center or Enum.TextXAlignment.Left,
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_583.Visible,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
        })

        function discord_gg_CDg3VKmWp9_583:Display()
            if not discord_gg_CDg3VKmWp9_583.DoesWrap then
                return
            end

            local discord_gg_CDg3VKmWp9_546 = discord_gg_CDg3VKmWp9_126.AbsoluteSize.X / discord_gg_CDg3VKmWp9_34.DPIScale
            if discord_gg_CDg3VKmWp9_546 <= 0 then return end

            local discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_396 = discord_gg_CDg3VKmWp9_34:GetTextBounds(discord_gg_CDg3VKmWp9_583.Text, discord_gg_CDg3VKmWp9_126.FontFace, discord_gg_CDg3VKmWp9_126.TextSize, discord_gg_CDg3VKmWp9_546)
            discord_gg_CDg3VKmWp9_126.Size = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_396 + 4)
        end

        function discord_gg_CDg3VKmWp9_583:SetVisible(discord_gg_CDg3VKmWp9_174: boolean)
            discord_gg_CDg3VKmWp9_583.Visible = discord_gg_CDg3VKmWp9_174

            discord_gg_CDg3VKmWp9_126.Visible = discord_gg_CDg3VKmWp9_583.Visible
            discord_gg_CDg3VKmWp9_77:Resize()
        end

        function discord_gg_CDg3VKmWp9_583:SetText(discord_gg_CDg3VKmWp9_136: string)
            discord_gg_CDg3VKmWp9_583.Text = discord_gg_CDg3VKmWp9_136
            discord_gg_CDg3VKmWp9_126.Text = discord_gg_CDg3VKmWp9_136

            discord_gg_CDg3VKmWp9_583:Display()
            discord_gg_CDg3VKmWp9_77:Resize()
        end

        if discord_gg_CDg3VKmWp9_583.DoesWrap then
            discord_gg_CDg3VKmWp9_583:Display()

            local discord_gg_CDg3VKmWp9_828 = discord_gg_CDg3VKmWp9_126.AbsoluteSize
            table.insert(discord_gg_CDg3VKmWp9_583.Connections, discord_gg_CDg3VKmWp9_126:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
                if discord_gg_CDg3VKmWp9_126.AbsoluteSize == discord_gg_CDg3VKmWp9_828 then
                    return
                end

                discord_gg_CDg3VKmWp9_583:Display()
                discord_gg_CDg3VKmWp9_828 = discord_gg_CDg3VKmWp9_126.AbsoluteSize

                discord_gg_CDg3VKmWp9_77:Resize()
            end))
        else
            discord_gg_CDg3VKmWp9_381("UIListLayout", {
                discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
                discord_gg_CDg3VKmWp9_829 = Enum.HorizontalAlignment.Right,
                discord_gg_CDg3VKmWp9_166 = UDim.new(0, 6),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_126,
            })
        end

        discord_gg_CDg3VKmWp9_77:Resize()

        discord_gg_CDg3VKmWp9_583.TextLabel = discord_gg_CDg3VKmWp9_126
        discord_gg_CDg3VKmWp9_583.Container = discord_gg_CDg3VKmWp9_600
        if not discord_gg_CDg3VKmWp9_823.DoesWrap then
            setmetatable(discord_gg_CDg3VKmWp9_583, discord_gg_CDg3VKmWp9_649)
        end

        discord_gg_CDg3VKmWp9_583.Holder = discord_gg_CDg3VKmWp9_126
        table.insert(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_583)

        if discord_gg_CDg3VKmWp9_823.Idx then
            discord_gg_CDg3VKmWp9_7[discord_gg_CDg3VKmWp9_823.Idx] = discord_gg_CDg3VKmWp9_583
        else
            table.insert(discord_gg_CDg3VKmWp9_7, discord_gg_CDg3VKmWp9_583)
        end

        function discord_gg_CDg3VKmWp9_583:Destroy()
            discord_gg_CDg3VKmWp9_583.Destroyed = true

            if discord_gg_CDg3VKmWp9_583.Connections then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_583.Connections do
                    discord_gg_CDg3VKmWp9_274:Disconnect()
                end
            end

            if discord_gg_CDg3VKmWp9_583.Addons then
                for discord_gg_CDg3VKmWp9_325 = #Label.Addons, 1, -1 do
                    local discord_gg_CDg3VKmWp9_830 = table.remove(discord_gg_CDg3VKmWp9_583.Addons, discord_gg_CDg3VKmWp9_325)
                    if discord_gg_CDg3VKmWp9_830 and discord_gg_CDg3VKmWp9_830.Destroy then
                        discord_gg_CDg3VKmWp9_830:Destroy()
                    end
                end
            end

            if discord_gg_CDg3VKmWp9_126 then
                discord_gg_CDg3VKmWp9_126:Destroy()
            end

            local discord_gg_CDg3VKmWp9_591 = table.find(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_583)
            if discord_gg_CDg3VKmWp9_591 then
                table.remove(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_591)
            end

            discord_gg_CDg3VKmWp9_77:Resize()

            if discord_gg_CDg3VKmWp9_823.Idx then
                discord_gg_CDg3VKmWp9_7[discord_gg_CDg3VKmWp9_823.Idx] = nil
            else
                local discord_gg_CDg3VKmWp9_831 = table.find(discord_gg_CDg3VKmWp9_7, discord_gg_CDg3VKmWp9_583)

                if discord_gg_CDg3VKmWp9_831 then
                    table.remove(discord_gg_CDg3VKmWp9_7, discord_gg_CDg3VKmWp9_831)
                end
            end
        end

        return discord_gg_CDg3VKmWp9_583
    end

    function discord_gg_CDg3VKmWp9_650:AddButton(...)
        if self.Destroyed then return nil end

        local function discord_gg_CDg3VKmWp9_832(...)
            local discord_gg_CDg3VKmWp9_651 = {}

            local discord_gg_CDg3VKmWp9_825 = select(1, ...)
            local discord_gg_CDg3VKmWp9_826 = select(2, ...)

            if typeof(discord_gg_CDg3VKmWp9_825) == "table" or typeof(discord_gg_CDg3VKmWp9_826) == "table" then
                local discord_gg_CDg3VKmWp9_452 = typeof(discord_gg_CDg3VKmWp9_825) == "table" and discord_gg_CDg3VKmWp9_825 or discord_gg_CDg3VKmWp9_826

                discord_gg_CDg3VKmWp9_651.Text = discord_gg_CDg3VKmWp9_452.Text or ""
                discord_gg_CDg3VKmWp9_651.Func = discord_gg_CDg3VKmWp9_452.Func or discord_gg_CDg3VKmWp9_452.Callback or function() end
                discord_gg_CDg3VKmWp9_651.DoubleClick = discord_gg_CDg3VKmWp9_452.DoubleClick
                discord_gg_CDg3VKmWp9_651.Icon = discord_gg_CDg3VKmWp9_452.Icon or discord_gg_CDg3VKmWp9_452.IconName

                discord_gg_CDg3VKmWp9_651.Tooltip = discord_gg_CDg3VKmWp9_452.Tooltip
                discord_gg_CDg3VKmWp9_651.DisabledTooltip = discord_gg_CDg3VKmWp9_452.DisabledTooltip

                discord_gg_CDg3VKmWp9_651.Risky = discord_gg_CDg3VKmWp9_452.Risky or false
                discord_gg_CDg3VKmWp9_651.Disabled = discord_gg_CDg3VKmWp9_452.Disabled or false
                discord_gg_CDg3VKmWp9_651.Visible = if typeof(discord_gg_CDg3VKmWp9_452.Visible) == "boolean" then discord_gg_CDg3VKmWp9_452.Visible else true
                discord_gg_CDg3VKmWp9_651.Idx = typeof(discord_gg_CDg3VKmWp9_826) == "table" and discord_gg_CDg3VKmWp9_825 or nil
            else
                discord_gg_CDg3VKmWp9_651.Text = discord_gg_CDg3VKmWp9_825 or ""
                discord_gg_CDg3VKmWp9_651.Func = discord_gg_CDg3VKmWp9_826 or function() end
                discord_gg_CDg3VKmWp9_651.DoubleClick = false
                discord_gg_CDg3VKmWp9_651.Icon = nil

                discord_gg_CDg3VKmWp9_651.Tooltip = nil
                discord_gg_CDg3VKmWp9_651.DisabledTooltip = nil

                discord_gg_CDg3VKmWp9_651.Risky = false
                discord_gg_CDg3VKmWp9_651.Disabled = false
                discord_gg_CDg3VKmWp9_651.Visible = true
                discord_gg_CDg3VKmWp9_651.Idx = select(3, ...) or nil
            end

            return discord_gg_CDg3VKmWp9_651
        end
        local discord_gg_CDg3VKmWp9_651 = discord_gg_CDg3VKmWp9_832(...)

        local discord_gg_CDg3VKmWp9_77 = self
        local discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_77.Container

        local discord_gg_CDg3VKmWp9_596 = {
            discord_gg_CDg3VKmWp9_580 = {},
            discord_gg_CDg3VKmWp9_581 = false,

            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_651.Text,
            discord_gg_CDg3VKmWp9_592 = discord_gg_CDg3VKmWp9_651.Func,
            discord_gg_CDg3VKmWp9_833 = discord_gg_CDg3VKmWp9_651.DoubleClick,
            discord_gg_CDg3VKmWp9_186 = discord_gg_CDg3VKmWp9_651.Icon,

            discord_gg_CDg3VKmWp9_834 = discord_gg_CDg3VKmWp9_651.Tooltip,
            discord_gg_CDg3VKmWp9_835 = discord_gg_CDg3VKmWp9_651.DisabledTooltip,
            discord_gg_CDg3VKmWp9_645 = nil,

            discord_gg_CDg3VKmWp9_201 = discord_gg_CDg3VKmWp9_651.Risky,
            discord_gg_CDg3VKmWp9_202 = discord_gg_CDg3VKmWp9_651.Disabled,
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_651.Visible,
            discord_gg_CDg3VKmWp9_836 = false,

            discord_gg_CDg3VKmWp9_837 = nil,
            discord_gg_CDg3VKmWp9_816 = nil,
            discord_gg_CDg3VKmWp9_838 = nil,
            discord_gg_CDg3VKmWp9_583 = nil,
            discord_gg_CDg3VKmWp9_582 = nil,

            discord_gg_CDg3VKmWp9_538 = nil,
            discord_gg_CDg3VKmWp9_658 = "Button",

            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_77,
        }

        local discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 21),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
        })

        discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
            discord_gg_CDg3VKmWp9_786 = Enum.UIFlexAlignment.Fill,
            discord_gg_CDg3VKmWp9_166 = UDim.new(0, 9),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        })

        local function discord_gg_CDg3VKmWp9_839(discord_gg_CDg3VKmWp9_596, discord_gg_CDg3VKmWp9_172)
            local discord_gg_CDg3VKmWp9_838 = discord_gg_CDg3VKmWp9_596.Content
            if not discord_gg_CDg3VKmWp9_838 then
                return
            end

            local discord_gg_CDg3VKmWp9_840 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_172)
            if discord_gg_CDg3VKmWp9_840 then
                local discord_gg_CDg3VKmWp9_841 = discord_gg_CDg3VKmWp9_596.Risky and "RedColor" or (discord_gg_CDg3VKmWp9_840.Custom and "WhiteColor" or "FontColor")

                if not discord_gg_CDg3VKmWp9_596.IconImage then
                    discord_gg_CDg3VKmWp9_596.IconImage = discord_gg_CDg3VKmWp9_381("ImageLabel", {
                        discord_gg_CDg3VKmWp9_122 = 1,
                        discord_gg_CDg3VKmWp9_553 = discord_gg_CDg3VKmWp9_841,
                        discord_gg_CDg3VKmWp9_522 = 0,
                        discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(14, 14),
                        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_838,
                    })
                else
                    discord_gg_CDg3VKmWp9_596.IconImage.ImageColor3 = discord_gg_CDg3VKmWp9_34.Scheme[discord_gg_CDg3VKmWp9_841]
                    discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_596.IconImage].ImageColor3 = discord_gg_CDg3VKmWp9_841
                end

                discord_gg_CDg3VKmWp9_596.IconImage.ImageTransparency = discord_gg_CDg3VKmWp9_596.Disabled and 0.8 or 0.4
                discord_gg_CDg3VKmWp9_596.IconImage.Visible = true
                discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_596.IconImage, discord_gg_CDg3VKmWp9_840)
            elseif discord_gg_CDg3VKmWp9_596.IconImage then
                discord_gg_CDg3VKmWp9_596.IconImage.Visible = false
            end
        end

        local function discord_gg_CDg3VKmWp9_792(discord_gg_CDg3VKmWp9_596)
            local discord_gg_CDg3VKmWp9_837 = discord_gg_CDg3VKmWp9_381("TextButton", {
                discord_gg_CDg3VKmWp9_419 = not discord_gg_CDg3VKmWp9_596.Disabled,
                discord_gg_CDg3VKmWp9_437 = discord_gg_CDg3VKmWp9_596.Disabled and "BackgroundColor" or "MainColor",
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
                discord_gg_CDg3VKmWp9_136 = "",
                discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_596.Visible,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
            })

            local discord_gg_CDg3VKmWp9_816 = discord_gg_CDg3VKmWp9_381("UIStroke", {
                discord_gg_CDg3VKmWp9_235 = "OutlineColor",
                discord_gg_CDg3VKmWp9_234 = discord_gg_CDg3VKmWp9_596.Disabled and 0.5 or 0,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_837,
            })

            table.insert(
                discord_gg_CDg3VKmWp9_34.Corners,
                discord_gg_CDg3VKmWp9_381("UICorner", {
                    discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_837,
                })
            )

            local discord_gg_CDg3VKmWp9_838 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0.5),
                discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.X,
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0.5, 0.5),
                discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(0, 16),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_837,
            })
            discord_gg_CDg3VKmWp9_381("UIListLayout", {
                discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
                discord_gg_CDg3VKmWp9_829 = Enum.HorizontalAlignment.Center,
                discord_gg_CDg3VKmWp9_842 = Enum.VerticalAlignment.Center,
                discord_gg_CDg3VKmWp9_166 = UDim.new(0, 6),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_838,
            })
            discord_gg_CDg3VKmWp9_381("UIPadding", {
                discord_gg_CDg3VKmWp9_586 = UDim.new(0, 8),
                discord_gg_CDg3VKmWp9_587 = UDim.new(0, 8),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_838,
            })

            discord_gg_CDg3VKmWp9_596.Content = discord_gg_CDg3VKmWp9_838
            discord_gg_CDg3VKmWp9_596.Label = discord_gg_CDg3VKmWp9_381("TextLabel", {
                discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.X,
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_522 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(0, 16),
                discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_596.Text,
                discord_gg_CDg3VKmWp9_584 = 14,
                discord_gg_CDg3VKmWp9_686 = discord_gg_CDg3VKmWp9_596.Disabled and 0.8 or 0.4,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_838,
            })

            if discord_gg_CDg3VKmWp9_596.Risky then
                discord_gg_CDg3VKmWp9_596.Label.TextColor3 = discord_gg_CDg3VKmWp9_34.Scheme.RedColor
                discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_596.Label].TextColor3 = "RedColor"
            end

            discord_gg_CDg3VKmWp9_839(discord_gg_CDg3VKmWp9_596, discord_gg_CDg3VKmWp9_596.Icon)

            return discord_gg_CDg3VKmWp9_837, discord_gg_CDg3VKmWp9_816
        end

        local function discord_gg_CDg3VKmWp9_843(discord_gg_CDg3VKmWp9_596)
            table.insert(discord_gg_CDg3VKmWp9_596.Connections, discord_gg_CDg3VKmWp9_596.Base.MouseEnter:Connect(function()
                if discord_gg_CDg3VKmWp9_596.Disabled then
                    return
                end

                discord_gg_CDg3VKmWp9_596.Tween = TweenService:Create(discord_gg_CDg3VKmWp9_596.Label, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_686 = 0,
                })
                discord_gg_CDg3VKmWp9_596.Tween:Play()

                if discord_gg_CDg3VKmWp9_596.IconImage and discord_gg_CDg3VKmWp9_596.IconImage.Visible then
                    TweenService:Create(discord_gg_CDg3VKmWp9_596.IconImage, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                        discord_gg_CDg3VKmWp9_697 = 0,
                    }):Play()
                end
            end))
            table.insert(discord_gg_CDg3VKmWp9_596.Connections, discord_gg_CDg3VKmWp9_596.Base.MouseLeave:Connect(function()
                if discord_gg_CDg3VKmWp9_596.Disabled then
                    return
                end

                discord_gg_CDg3VKmWp9_596.Tween = TweenService:Create(discord_gg_CDg3VKmWp9_596.Label, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_686 = 0.4,
                })
                discord_gg_CDg3VKmWp9_596.Tween:Play()

                if discord_gg_CDg3VKmWp9_596.IconImage and discord_gg_CDg3VKmWp9_596.IconImage.Visible then
                    TweenService:Create(discord_gg_CDg3VKmWp9_596.IconImage, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                        discord_gg_CDg3VKmWp9_697 = 0.4,
                    }):Play()
                end
            end))

            table.insert(discord_gg_CDg3VKmWp9_596.Connections, discord_gg_CDg3VKmWp9_596.Base.MouseButton1Click:Connect(function()
                if discord_gg_CDg3VKmWp9_596.Disabled or discord_gg_CDg3VKmWp9_596.Locked then
                    return
                end

                if discord_gg_CDg3VKmWp9_596.DoubleClick then
                    discord_gg_CDg3VKmWp9_596.Locked = true

                    local discord_gg_CDg3VKmWp9_844 = false
                    if discord_gg_CDg3VKmWp9_596.IconImage then
                        discord_gg_CDg3VKmWp9_844 = discord_gg_CDg3VKmWp9_596.IconImage.Visible
                        discord_gg_CDg3VKmWp9_596.IconImage.Visible = false
                    end

                    discord_gg_CDg3VKmWp9_596.Label.Text = "Are you sure?"
                    discord_gg_CDg3VKmWp9_596.Label.TextColor3 = discord_gg_CDg3VKmWp9_34.Scheme.AccentColor
                    discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_596.Label].TextColor3 = "AccentColor"

                    local discord_gg_CDg3VKmWp9_254 = discord_gg_CDg3VKmWp9_272(discord_gg_CDg3VKmWp9_596.Base.MouseButton1Click, 0.5)

                    discord_gg_CDg3VKmWp9_596.Label.Text = discord_gg_CDg3VKmWp9_596.Text
                    discord_gg_CDg3VKmWp9_596.Label.TextColor3 = discord_gg_CDg3VKmWp9_596.Risky and discord_gg_CDg3VKmWp9_34.Scheme.RedColor or discord_gg_CDg3VKmWp9_34.Scheme.FontColor
                    discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_596.Label].TextColor3 = discord_gg_CDg3VKmWp9_596.Risky and "RedColor" or "FontColor"

                    if discord_gg_CDg3VKmWp9_596.IconImage then
                        discord_gg_CDg3VKmWp9_596.IconImage.Visible = discord_gg_CDg3VKmWp9_844
                    end

                    if discord_gg_CDg3VKmWp9_254 then
                        discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_596.Func)
                    end

                    RunService.RenderStepped:Wait()
                    discord_gg_CDg3VKmWp9_596.Locked = false
                    return
                end

                discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_596.Func)
            end))
        end

        discord_gg_CDg3VKmWp9_596.Base, discord_gg_CDg3VKmWp9_596.Stroke = discord_gg_CDg3VKmWp9_792(discord_gg_CDg3VKmWp9_596)
        discord_gg_CDg3VKmWp9_843(discord_gg_CDg3VKmWp9_596)

        function discord_gg_CDg3VKmWp9_596:AddButton(...)
            local discord_gg_CDg3VKmWp9_651 = discord_gg_CDg3VKmWp9_832(...)

            local discord_gg_CDg3VKmWp9_845 = {
                discord_gg_CDg3VKmWp9_580 = {},
                discord_gg_CDg3VKmWp9_581 = false,

                discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_651.Text,
                discord_gg_CDg3VKmWp9_592 = discord_gg_CDg3VKmWp9_651.Func,
                discord_gg_CDg3VKmWp9_833 = discord_gg_CDg3VKmWp9_651.DoubleClick,
                discord_gg_CDg3VKmWp9_186 = discord_gg_CDg3VKmWp9_651.Icon,

                discord_gg_CDg3VKmWp9_834 = discord_gg_CDg3VKmWp9_651.Tooltip,
                discord_gg_CDg3VKmWp9_835 = discord_gg_CDg3VKmWp9_651.DisabledTooltip,
                discord_gg_CDg3VKmWp9_645 = nil,

                discord_gg_CDg3VKmWp9_201 = discord_gg_CDg3VKmWp9_651.Risky,
                discord_gg_CDg3VKmWp9_202 = discord_gg_CDg3VKmWp9_651.Disabled,
                discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_651.Visible,
                discord_gg_CDg3VKmWp9_836 = false,

                discord_gg_CDg3VKmWp9_837 = nil,
                discord_gg_CDg3VKmWp9_816 = nil,
                discord_gg_CDg3VKmWp9_838 = nil,
                discord_gg_CDg3VKmWp9_583 = nil,
                discord_gg_CDg3VKmWp9_582 = nil,

                discord_gg_CDg3VKmWp9_538 = nil,
                discord_gg_CDg3VKmWp9_658 = "SubButton",
            }

            discord_gg_CDg3VKmWp9_596.SubButton = discord_gg_CDg3VKmWp9_845
            discord_gg_CDg3VKmWp9_845.Base, discord_gg_CDg3VKmWp9_845.Stroke = discord_gg_CDg3VKmWp9_792(discord_gg_CDg3VKmWp9_845)
            discord_gg_CDg3VKmWp9_843(discord_gg_CDg3VKmWp9_845)

            function discord_gg_CDg3VKmWp9_845:UpdateColors()
                if discord_gg_CDg3VKmWp9_34.Unloaded then
                    return
                end

                discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_845.Tween)

                discord_gg_CDg3VKmWp9_845.Base.BackgroundColor3 = discord_gg_CDg3VKmWp9_845.Disabled and discord_gg_CDg3VKmWp9_34.Scheme.BackgroundColor or discord_gg_CDg3VKmWp9_34.Scheme.MainColor
                discord_gg_CDg3VKmWp9_845.Label.TextTransparency = discord_gg_CDg3VKmWp9_845.Disabled and 0.8 or 0.4
                discord_gg_CDg3VKmWp9_845.Stroke.Transparency = discord_gg_CDg3VKmWp9_845.Disabled and 0.5 or 0

                if discord_gg_CDg3VKmWp9_845.IconImage and discord_gg_CDg3VKmWp9_845.IconImage.Visible then
                    discord_gg_CDg3VKmWp9_845.IconImage.ImageTransparency = discord_gg_CDg3VKmWp9_845.Disabled and 0.8 or 0.4
                end

                discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_845.Base].BackgroundColor3 = discord_gg_CDg3VKmWp9_845.Disabled and "BackgroundColor"
                    or "MainColor"
            end

            function discord_gg_CDg3VKmWp9_845:SetDisabled(discord_gg_CDg3VKmWp9_202: boolean)
                discord_gg_CDg3VKmWp9_845.Disabled = discord_gg_CDg3VKmWp9_202

                if discord_gg_CDg3VKmWp9_845.TooltipTable then
                    discord_gg_CDg3VKmWp9_845.TooltipTable.Disabled = discord_gg_CDg3VKmWp9_845.Disabled
                end

                discord_gg_CDg3VKmWp9_845.Base.Active = not discord_gg_CDg3VKmWp9_845.Disabled
                discord_gg_CDg3VKmWp9_845:UpdateColors()
                discord_gg_CDg3VKmWp9_34:UpdateAddons(discord_gg_CDg3VKmWp9_845)
            end

            function discord_gg_CDg3VKmWp9_845:SetVisible(discord_gg_CDg3VKmWp9_174: boolean)
                discord_gg_CDg3VKmWp9_845.Visible = discord_gg_CDg3VKmWp9_174

                discord_gg_CDg3VKmWp9_845.Base.Visible = discord_gg_CDg3VKmWp9_845.Visible
                discord_gg_CDg3VKmWp9_77:Resize()
            end

            function discord_gg_CDg3VKmWp9_845:SetText(discord_gg_CDg3VKmWp9_136: string)
                discord_gg_CDg3VKmWp9_845.Text = discord_gg_CDg3VKmWp9_136
                discord_gg_CDg3VKmWp9_845.Label.Text = discord_gg_CDg3VKmWp9_136
            end

            function discord_gg_CDg3VKmWp9_845:SetIcon(discord_gg_CDg3VKmWp9_186: string?)
                discord_gg_CDg3VKmWp9_845.Icon = discord_gg_CDg3VKmWp9_186
                discord_gg_CDg3VKmWp9_839(discord_gg_CDg3VKmWp9_845, discord_gg_CDg3VKmWp9_186)
            end

            if typeof(discord_gg_CDg3VKmWp9_845.Tooltip) == "string" or typeof(discord_gg_CDg3VKmWp9_845.DisabledTooltip) == "string" then
                discord_gg_CDg3VKmWp9_845.TooltipTable =
                    discord_gg_CDg3VKmWp9_34:AddTooltip(discord_gg_CDg3VKmWp9_845.Tooltip, discord_gg_CDg3VKmWp9_845.DisabledTooltip, discord_gg_CDg3VKmWp9_845.Base)
                discord_gg_CDg3VKmWp9_845.TooltipTable.Disabled = discord_gg_CDg3VKmWp9_845.Disabled
            end

            discord_gg_CDg3VKmWp9_845:UpdateColors()

            if discord_gg_CDg3VKmWp9_651.Idx then
                discord_gg_CDg3VKmWp9_8[discord_gg_CDg3VKmWp9_651.Idx] = discord_gg_CDg3VKmWp9_845
            else
                table.insert(discord_gg_CDg3VKmWp9_8, discord_gg_CDg3VKmWp9_845)
            end

            discord_gg_CDg3VKmWp9_845.AddKeyPicker = discord_gg_CDg3VKmWp9_649.__index.AddKeyPicker

            function discord_gg_CDg3VKmWp9_845:Destroy()
                discord_gg_CDg3VKmWp9_845.Destroyed = true

                if discord_gg_CDg3VKmWp9_845.Connections then
                    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_845.Connections do
                        discord_gg_CDg3VKmWp9_274:Disconnect()
                    end
                end

                if discord_gg_CDg3VKmWp9_845.TooltipTable then
                    discord_gg_CDg3VKmWp9_845.TooltipTable:Destroy()
                end

                if discord_gg_CDg3VKmWp9_845.Tween then
                    discord_gg_CDg3VKmWp9_845.Tween:Destroy()
                end

                if discord_gg_CDg3VKmWp9_845.Base then
                    discord_gg_CDg3VKmWp9_845.Base:Destroy()
                end

                if discord_gg_CDg3VKmWp9_651.Idx then
                    discord_gg_CDg3VKmWp9_8[discord_gg_CDg3VKmWp9_651.Idx] = nil
                else
                    local discord_gg_CDg3VKmWp9_846 = table.find(discord_gg_CDg3VKmWp9_8, discord_gg_CDg3VKmWp9_845)

                    if discord_gg_CDg3VKmWp9_846 then
                        table.remove(discord_gg_CDg3VKmWp9_8, discord_gg_CDg3VKmWp9_846)
                    end
                end
            end

            return discord_gg_CDg3VKmWp9_845
        end

        function discord_gg_CDg3VKmWp9_596:UpdateColors()
            if discord_gg_CDg3VKmWp9_34.Unloaded then
                return
            end

            discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_596.Tween)

            discord_gg_CDg3VKmWp9_596.Base.BackgroundColor3 = discord_gg_CDg3VKmWp9_596.Disabled and discord_gg_CDg3VKmWp9_34.Scheme.BackgroundColor or discord_gg_CDg3VKmWp9_34.Scheme.MainColor
            discord_gg_CDg3VKmWp9_596.Label.TextTransparency = discord_gg_CDg3VKmWp9_596.Disabled and 0.8 or 0.4
            discord_gg_CDg3VKmWp9_596.Stroke.Transparency = discord_gg_CDg3VKmWp9_596.Disabled and 0.5 or 0

            if discord_gg_CDg3VKmWp9_596.IconImage and discord_gg_CDg3VKmWp9_596.IconImage.Visible then
                discord_gg_CDg3VKmWp9_596.IconImage.ImageTransparency = discord_gg_CDg3VKmWp9_596.Disabled and 0.8 or 0.4
            end

            discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_596.Base].BackgroundColor3 = discord_gg_CDg3VKmWp9_596.Disabled and "BackgroundColor" or "MainColor"
        end

        function discord_gg_CDg3VKmWp9_596:SetDisabled(discord_gg_CDg3VKmWp9_202: boolean)
            discord_gg_CDg3VKmWp9_596.Disabled = discord_gg_CDg3VKmWp9_202

            if discord_gg_CDg3VKmWp9_596.TooltipTable then
                discord_gg_CDg3VKmWp9_596.TooltipTable.Disabled = discord_gg_CDg3VKmWp9_596.Disabled
            end

            discord_gg_CDg3VKmWp9_596.Base.Active = not discord_gg_CDg3VKmWp9_596.Disabled
            discord_gg_CDg3VKmWp9_596:UpdateColors()
            discord_gg_CDg3VKmWp9_34:UpdateAddons(discord_gg_CDg3VKmWp9_596)
        end

        function discord_gg_CDg3VKmWp9_596:SetVisible(discord_gg_CDg3VKmWp9_174: boolean)
            discord_gg_CDg3VKmWp9_596.Visible = discord_gg_CDg3VKmWp9_174

            discord_gg_CDg3VKmWp9_540.Visible = discord_gg_CDg3VKmWp9_596.Visible
            discord_gg_CDg3VKmWp9_77:Resize()
        end

        function discord_gg_CDg3VKmWp9_596:SetText(discord_gg_CDg3VKmWp9_136: string)
            discord_gg_CDg3VKmWp9_596.Text = discord_gg_CDg3VKmWp9_136
            discord_gg_CDg3VKmWp9_596.Label.Text = discord_gg_CDg3VKmWp9_136
        end

        function discord_gg_CDg3VKmWp9_596:SetIcon(discord_gg_CDg3VKmWp9_186: string?)
            discord_gg_CDg3VKmWp9_596.Icon = discord_gg_CDg3VKmWp9_186
            discord_gg_CDg3VKmWp9_839(discord_gg_CDg3VKmWp9_596, discord_gg_CDg3VKmWp9_186)
        end

        if typeof(discord_gg_CDg3VKmWp9_596.Tooltip) == "string" or typeof(discord_gg_CDg3VKmWp9_596.DisabledTooltip) == "string" then
            discord_gg_CDg3VKmWp9_596.TooltipTable = discord_gg_CDg3VKmWp9_34:AddTooltip(discord_gg_CDg3VKmWp9_596.Tooltip, discord_gg_CDg3VKmWp9_596.DisabledTooltip, discord_gg_CDg3VKmWp9_596.Base)
            discord_gg_CDg3VKmWp9_596.TooltipTable.Disabled = discord_gg_CDg3VKmWp9_596.Disabled
        end

        discord_gg_CDg3VKmWp9_596:UpdateColors()
        discord_gg_CDg3VKmWp9_77:Resize()

        discord_gg_CDg3VKmWp9_596.Holder = discord_gg_CDg3VKmWp9_540
        table.insert(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_596)

        if discord_gg_CDg3VKmWp9_651.Idx then
            discord_gg_CDg3VKmWp9_8[discord_gg_CDg3VKmWp9_651.Idx] = discord_gg_CDg3VKmWp9_596
        else
            table.insert(discord_gg_CDg3VKmWp9_8, discord_gg_CDg3VKmWp9_596)
        end

        discord_gg_CDg3VKmWp9_596.AddKeyPicker = discord_gg_CDg3VKmWp9_649.__index.AddKeyPicker

        function discord_gg_CDg3VKmWp9_596:Destroy()
            discord_gg_CDg3VKmWp9_596.Destroyed = true

            if discord_gg_CDg3VKmWp9_596.Connections then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_596.Connections do
                    discord_gg_CDg3VKmWp9_274:Disconnect()
                end
            end

            if discord_gg_CDg3VKmWp9_596.TooltipTable then
                discord_gg_CDg3VKmWp9_596.TooltipTable:Destroy()
            end

            if discord_gg_CDg3VKmWp9_596.Tween then
                discord_gg_CDg3VKmWp9_596.Tween:Destroy()
            end

            if discord_gg_CDg3VKmWp9_596.SubButton then
                discord_gg_CDg3VKmWp9_596.SubButton:Destroy()
            end

            if discord_gg_CDg3VKmWp9_540 then
                discord_gg_CDg3VKmWp9_540:Destroy()
            end

            local discord_gg_CDg3VKmWp9_591 = table.find(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_596)
            if discord_gg_CDg3VKmWp9_591 then
                table.remove(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_591)
            end

            discord_gg_CDg3VKmWp9_77:Resize()

            if discord_gg_CDg3VKmWp9_651.Idx then
                discord_gg_CDg3VKmWp9_8[discord_gg_CDg3VKmWp9_651.Idx] = nil
            else
                local discord_gg_CDg3VKmWp9_846 = table.find(discord_gg_CDg3VKmWp9_8, discord_gg_CDg3VKmWp9_596)

                if discord_gg_CDg3VKmWp9_846 then
                    table.remove(discord_gg_CDg3VKmWp9_8, discord_gg_CDg3VKmWp9_846)
                end
            end
        end

        return discord_gg_CDg3VKmWp9_596
    end

    function discord_gg_CDg3VKmWp9_650:AddCheckbox(discord_gg_CDg3VKmWp9_308, discord_gg_CDg3VKmWp9_651)
        if self.Destroyed then return nil end

        discord_gg_CDg3VKmWp9_651 = discord_gg_CDg3VKmWp9_34:Validate(discord_gg_CDg3VKmWp9_651, discord_gg_CDg3VKmWp9_118.Toggle)

        local discord_gg_CDg3VKmWp9_77 = self
        local discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_77.Container

        local discord_gg_CDg3VKmWp9_197 = {
            discord_gg_CDg3VKmWp9_580 = {},
            discord_gg_CDg3VKmWp9_581 = false,

            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_651.Text,
            discord_gg_CDg3VKmWp9_554 = discord_gg_CDg3VKmWp9_651.Default,

            discord_gg_CDg3VKmWp9_834 = discord_gg_CDg3VKmWp9_651.Tooltip,
            discord_gg_CDg3VKmWp9_835 = discord_gg_CDg3VKmWp9_651.DisabledTooltip,
            discord_gg_CDg3VKmWp9_645 = nil,

            discord_gg_CDg3VKmWp9_199 = discord_gg_CDg3VKmWp9_651.Callback,
            discord_gg_CDg3VKmWp9_200 = discord_gg_CDg3VKmWp9_651.Changed,

            discord_gg_CDg3VKmWp9_201 = discord_gg_CDg3VKmWp9_651.Risky,
            discord_gg_CDg3VKmWp9_202 = discord_gg_CDg3VKmWp9_651.Disabled,
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_651.Visible,

            discord_gg_CDg3VKmWp9_824 = {},
            discord_gg_CDg3VKmWp9_847 = false,

            discord_gg_CDg3VKmWp9_848 = "Checkbox",
            discord_gg_CDg3VKmWp9_658 = "Toggle",

            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_77,
        }

        local discord_gg_CDg3VKmWp9_596 = discord_gg_CDg3VKmWp9_381("TextButton", {
            discord_gg_CDg3VKmWp9_419 = not discord_gg_CDg3VKmWp9_197.Disabled,
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 18),
            discord_gg_CDg3VKmWp9_136 = "",
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_197.Visible,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
        })

        local discord_gg_CDg3VKmWp9_583 = discord_gg_CDg3VKmWp9_381("TextLabel", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(26, 0),
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -26, 1, 0),
            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_197.Text,
            discord_gg_CDg3VKmWp9_584 = 14,
            discord_gg_CDg3VKmWp9_686 = 0.4,
            discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_596,
        })

        discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
            discord_gg_CDg3VKmWp9_829 = Enum.HorizontalAlignment.Right,
            discord_gg_CDg3VKmWp9_166 = UDim.new(0, 6),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_583,
        })

        local discord_gg_CDg3VKmWp9_694 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_437 = "MainColor",
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
            discord_gg_CDg3VKmWp9_695 = Enum.SizeConstraint.RelativeYY,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_596,
        })
        table.insert(
            discord_gg_CDg3VKmWp9_34.Corners,
            discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_694,
            })
        )

        local discord_gg_CDg3VKmWp9_849 = discord_gg_CDg3VKmWp9_381("UIStroke", {
            discord_gg_CDg3VKmWp9_235 = "OutlineColor",
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_694,
        })

        local discord_gg_CDg3VKmWp9_696 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
            discord_gg_CDg3VKmWp9_553 = "FontColor",
            discord_gg_CDg3VKmWp9_697 = 1,
            discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(2, 2),
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -4, 1, -4),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_694,
        })
        if discord_gg_CDg3VKmWp9_22 then
            discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_696, discord_gg_CDg3VKmWp9_22)
        end

        function discord_gg_CDg3VKmWp9_197:UpdateColors()
            discord_gg_CDg3VKmWp9_197:Display()
        end

        function discord_gg_CDg3VKmWp9_197:Display()
            if discord_gg_CDg3VKmWp9_34.Unloaded then
                return
            end

            discord_gg_CDg3VKmWp9_849.Transparency = discord_gg_CDg3VKmWp9_197.Disabled and 0.5 or 0

            if discord_gg_CDg3VKmWp9_197.Disabled then
                discord_gg_CDg3VKmWp9_583.TextTransparency = 0.8
                discord_gg_CDg3VKmWp9_696.ImageTransparency = discord_gg_CDg3VKmWp9_197.Value and 0.8 or 1

                discord_gg_CDg3VKmWp9_694.BackgroundColor3 = discord_gg_CDg3VKmWp9_34.Scheme.BackgroundColor
                discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_694].BackgroundColor3 = "BackgroundColor"

                return
            end

            TweenService:Create(discord_gg_CDg3VKmWp9_583, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_686 = discord_gg_CDg3VKmWp9_197.Value and 0 or 0.4,
            }):Play()
            TweenService:Create(discord_gg_CDg3VKmWp9_696, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_697 = discord_gg_CDg3VKmWp9_197.Value and 0 or 1,
            }):Play()

            discord_gg_CDg3VKmWp9_694.BackgroundColor3 = discord_gg_CDg3VKmWp9_34.Scheme.MainColor
            discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_694].BackgroundColor3 = "MainColor"
        end

        function discord_gg_CDg3VKmWp9_197:OnChanged(discord_gg_CDg3VKmWp9_592)
            discord_gg_CDg3VKmWp9_197.Changed = discord_gg_CDg3VKmWp9_592
        end

        function discord_gg_CDg3VKmWp9_197:RunChanged()
            if discord_gg_CDg3VKmWp9_197.Disabled then
                return
            end

            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_197.Callback, discord_gg_CDg3VKmWp9_197.Value)
            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_197.Changed, discord_gg_CDg3VKmWp9_197.Value)
        end

        function discord_gg_CDg3VKmWp9_197:SetValue(discord_gg_CDg3VKmWp9_554)
            discord_gg_CDg3VKmWp9_197.Value = discord_gg_CDg3VKmWp9_554
            discord_gg_CDg3VKmWp9_197:Display()

            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_830 in discord_gg_CDg3VKmWp9_197.Addons do
                if discord_gg_CDg3VKmWp9_830.Type == "KeyPicker" and discord_gg_CDg3VKmWp9_830.SyncToggleState then
                    discord_gg_CDg3VKmWp9_830.Toggled = discord_gg_CDg3VKmWp9_197.Value
                    discord_gg_CDg3VKmWp9_830:Update()
                end
            end

            if not discord_gg_CDg3VKmWp9_197.Disabled then
                discord_gg_CDg3VKmWp9_34:UpdateDependencyBoxes()
            end

            if not discord_gg_CDg3VKmWp9_197.AnyKeyPickerPicking then
                discord_gg_CDg3VKmWp9_197:RunChanged()
            end
        end

        function discord_gg_CDg3VKmWp9_197:SetDisabled(discord_gg_CDg3VKmWp9_202: boolean)
            discord_gg_CDg3VKmWp9_197.Disabled = discord_gg_CDg3VKmWp9_202

            if discord_gg_CDg3VKmWp9_197.TooltipTable then
                discord_gg_CDg3VKmWp9_197.TooltipTable.Disabled = discord_gg_CDg3VKmWp9_197.Disabled
            end

            discord_gg_CDg3VKmWp9_34:UpdateAddons(discord_gg_CDg3VKmWp9_197)

            discord_gg_CDg3VKmWp9_596.Active = not discord_gg_CDg3VKmWp9_197.Disabled
            discord_gg_CDg3VKmWp9_197:Display()

            discord_gg_CDg3VKmWp9_34:UpdateDependencyBoxes()
        end

        function discord_gg_CDg3VKmWp9_197:SetVisible(discord_gg_CDg3VKmWp9_174: boolean)
            discord_gg_CDg3VKmWp9_197.Visible = discord_gg_CDg3VKmWp9_174

            discord_gg_CDg3VKmWp9_596.Visible = discord_gg_CDg3VKmWp9_197.Visible
            discord_gg_CDg3VKmWp9_77:Resize()
        end

        function discord_gg_CDg3VKmWp9_197:SetText(discord_gg_CDg3VKmWp9_136: string)
            discord_gg_CDg3VKmWp9_197.Text = discord_gg_CDg3VKmWp9_136
            discord_gg_CDg3VKmWp9_583.Text = discord_gg_CDg3VKmWp9_136
        end

        table.insert(discord_gg_CDg3VKmWp9_197.Connections, discord_gg_CDg3VKmWp9_596.MouseButton1Click:Connect(function()
            if discord_gg_CDg3VKmWp9_197.Disabled then
                return
            end

            discord_gg_CDg3VKmWp9_197:SetValue(not discord_gg_CDg3VKmWp9_197.Value)
        end))

        if typeof(discord_gg_CDg3VKmWp9_197.Tooltip) == "string" or typeof(discord_gg_CDg3VKmWp9_197.DisabledTooltip) == "string" then
            discord_gg_CDg3VKmWp9_197.TooltipTable = discord_gg_CDg3VKmWp9_34:AddTooltip(discord_gg_CDg3VKmWp9_197.Tooltip, discord_gg_CDg3VKmWp9_197.DisabledTooltip, discord_gg_CDg3VKmWp9_596)
            discord_gg_CDg3VKmWp9_197.TooltipTable.Disabled = discord_gg_CDg3VKmWp9_197.Disabled
        end

        if discord_gg_CDg3VKmWp9_197.Risky then
            discord_gg_CDg3VKmWp9_583.TextColor3 = discord_gg_CDg3VKmWp9_34.Scheme.RedColor
            discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_583].TextColor3 = "RedColor"
        end

        discord_gg_CDg3VKmWp9_197:Display()
        discord_gg_CDg3VKmWp9_77:Resize()

        discord_gg_CDg3VKmWp9_197.TextLabel = discord_gg_CDg3VKmWp9_583
        discord_gg_CDg3VKmWp9_197.Container = discord_gg_CDg3VKmWp9_600
        setmetatable(discord_gg_CDg3VKmWp9_197, discord_gg_CDg3VKmWp9_649)

        discord_gg_CDg3VKmWp9_197.Holder = discord_gg_CDg3VKmWp9_596
        table.insert(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_197)

        discord_gg_CDg3VKmWp9_197.Default = discord_gg_CDg3VKmWp9_197.Value

        discord_gg_CDg3VKmWp9_9[discord_gg_CDg3VKmWp9_308] = discord_gg_CDg3VKmWp9_197

        function discord_gg_CDg3VKmWp9_197:Destroy()
            discord_gg_CDg3VKmWp9_197.Destroyed = true

            if discord_gg_CDg3VKmWp9_197.Connections then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_197.Connections do
                    discord_gg_CDg3VKmWp9_274:Disconnect()
                end
            end

            if discord_gg_CDg3VKmWp9_197.TooltipTable then
                discord_gg_CDg3VKmWp9_197.TooltipTable:Destroy()
            end

            if discord_gg_CDg3VKmWp9_596 then
                discord_gg_CDg3VKmWp9_596:Destroy()
            end

            if discord_gg_CDg3VKmWp9_197.Addons then
                for discord_gg_CDg3VKmWp9_325 = #Toggle.Addons, 1, -1 do
                    local discord_gg_CDg3VKmWp9_830 = table.remove(discord_gg_CDg3VKmWp9_197.Addons, discord_gg_CDg3VKmWp9_325)
                    if discord_gg_CDg3VKmWp9_830 and discord_gg_CDg3VKmWp9_830.Destroy then
                        discord_gg_CDg3VKmWp9_830:Destroy()
                    end
                end
            end

            local discord_gg_CDg3VKmWp9_591 = table.find(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_197)
            if discord_gg_CDg3VKmWp9_591 then
                table.remove(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_591)
            end

            discord_gg_CDg3VKmWp9_77:Resize()
            discord_gg_CDg3VKmWp9_9[discord_gg_CDg3VKmWp9_308] = nil
        end

        return discord_gg_CDg3VKmWp9_197
    end

    function discord_gg_CDg3VKmWp9_650:AddToggle(discord_gg_CDg3VKmWp9_308, discord_gg_CDg3VKmWp9_651)
        if self.Destroyed then return nil end

        if discord_gg_CDg3VKmWp9_34.ForceCheckbox then
            return discord_gg_CDg3VKmWp9_650.AddCheckbox(self, discord_gg_CDg3VKmWp9_308, discord_gg_CDg3VKmWp9_651)
        end

        discord_gg_CDg3VKmWp9_651 = discord_gg_CDg3VKmWp9_34:Validate(discord_gg_CDg3VKmWp9_651, discord_gg_CDg3VKmWp9_118.Toggle)

        local discord_gg_CDg3VKmWp9_77 = self
        local discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_77.Container

        local discord_gg_CDg3VKmWp9_197 = {
            discord_gg_CDg3VKmWp9_580 = {},
            discord_gg_CDg3VKmWp9_581 = false,

            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_651.Text,
            discord_gg_CDg3VKmWp9_554 = discord_gg_CDg3VKmWp9_651.Default,

            discord_gg_CDg3VKmWp9_834 = discord_gg_CDg3VKmWp9_651.Tooltip,
            discord_gg_CDg3VKmWp9_835 = discord_gg_CDg3VKmWp9_651.DisabledTooltip,
            discord_gg_CDg3VKmWp9_645 = nil,

            discord_gg_CDg3VKmWp9_199 = discord_gg_CDg3VKmWp9_651.Callback,
            discord_gg_CDg3VKmWp9_200 = discord_gg_CDg3VKmWp9_651.Changed,

            discord_gg_CDg3VKmWp9_201 = discord_gg_CDg3VKmWp9_651.Risky,
            discord_gg_CDg3VKmWp9_202 = discord_gg_CDg3VKmWp9_651.Disabled,
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_651.Visible,

            discord_gg_CDg3VKmWp9_824 = {},
            discord_gg_CDg3VKmWp9_847 = false,

            discord_gg_CDg3VKmWp9_848 = "Switch",
            discord_gg_CDg3VKmWp9_658 = "Toggle",

            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_77,
        }

        local discord_gg_CDg3VKmWp9_596 = discord_gg_CDg3VKmWp9_381("TextButton", {
            discord_gg_CDg3VKmWp9_419 = not discord_gg_CDg3VKmWp9_197.Disabled,
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 18),
            discord_gg_CDg3VKmWp9_136 = "",
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_197.Visible,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
        })

        local discord_gg_CDg3VKmWp9_583 = discord_gg_CDg3VKmWp9_381("TextLabel", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -40, 1, 0),
            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_197.Text,
            discord_gg_CDg3VKmWp9_584 = 14,
            discord_gg_CDg3VKmWp9_686 = 0.4,
            discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_596,
        })

        discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
            discord_gg_CDg3VKmWp9_829 = Enum.HorizontalAlignment.Right,
            discord_gg_CDg3VKmWp9_166 = UDim.new(0, 6),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_583,
        })

        local discord_gg_CDg3VKmWp9_850 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(1, 0),
            discord_gg_CDg3VKmWp9_437 = "MainColor",
            discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(1, 0),
            discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(32, 18),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_596,
        })
        discord_gg_CDg3VKmWp9_381("UICorner", {
            discord_gg_CDg3VKmWp9_97 = UDim.new(1, 0),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_850,
        })
        discord_gg_CDg3VKmWp9_381("UIPadding", {
            discord_gg_CDg3VKmWp9_585 = UDim.new(0, 2),
            discord_gg_CDg3VKmWp9_586 = UDim.new(0, 2),
            discord_gg_CDg3VKmWp9_587 = UDim.new(0, 2),
            discord_gg_CDg3VKmWp9_588 = UDim.new(0, 2),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_850,
        })
        local discord_gg_CDg3VKmWp9_851 = discord_gg_CDg3VKmWp9_381("UIStroke", {
            discord_gg_CDg3VKmWp9_235 = "OutlineColor",
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_850,
        })

        local discord_gg_CDg3VKmWp9_852 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_437 = "FontColor",
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
            discord_gg_CDg3VKmWp9_695 = Enum.SizeConstraint.RelativeYY,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_850,
        })
        discord_gg_CDg3VKmWp9_381("UICorner", {
            discord_gg_CDg3VKmWp9_97 = UDim.new(1, 0),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_852,
        })

        function discord_gg_CDg3VKmWp9_197:UpdateColors()
            discord_gg_CDg3VKmWp9_197:Display()
        end

        function discord_gg_CDg3VKmWp9_197:Display()
            if discord_gg_CDg3VKmWp9_34.Unloaded then
                return
            end

            local discord_gg_CDg3VKmWp9_531 = discord_gg_CDg3VKmWp9_197.Value and 1 or 0

            discord_gg_CDg3VKmWp9_850.BackgroundTransparency = discord_gg_CDg3VKmWp9_197.Disabled and 0.75 or 0
            discord_gg_CDg3VKmWp9_851.Transparency = discord_gg_CDg3VKmWp9_197.Disabled and 0.75 or 0

            discord_gg_CDg3VKmWp9_850.BackgroundColor3 = discord_gg_CDg3VKmWp9_197.Value and discord_gg_CDg3VKmWp9_34.Scheme.AccentColor or discord_gg_CDg3VKmWp9_34.Scheme.MainColor
            discord_gg_CDg3VKmWp9_851.Color = discord_gg_CDg3VKmWp9_197.Value and discord_gg_CDg3VKmWp9_34.Scheme.AccentColor or discord_gg_CDg3VKmWp9_34.Scheme.OutlineColor

            discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_850].BackgroundColor3 = discord_gg_CDg3VKmWp9_197.Value and "AccentColor" or "MainColor"
            discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_851].Color = discord_gg_CDg3VKmWp9_197.Value and "AccentColor" or "OutlineColor"

            if discord_gg_CDg3VKmWp9_197.Disabled then
                discord_gg_CDg3VKmWp9_583.TextTransparency = 0.8
                discord_gg_CDg3VKmWp9_852.AnchorPoint = Vector2.new(discord_gg_CDg3VKmWp9_531, 0)
                discord_gg_CDg3VKmWp9_852.Position = UDim2.fromScale(discord_gg_CDg3VKmWp9_531, 0)

                discord_gg_CDg3VKmWp9_852.BackgroundColor3 = discord_gg_CDg3VKmWp9_34:GetDarkerColor(discord_gg_CDg3VKmWp9_34.Scheme.FontColor)
                discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_852].BackgroundColor3 = function()
                    return discord_gg_CDg3VKmWp9_34:GetDarkerColor(discord_gg_CDg3VKmWp9_34.Scheme.FontColor)
                end

                return
            end

            TweenService:Create(discord_gg_CDg3VKmWp9_583, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_686 = discord_gg_CDg3VKmWp9_197.Value and 0 or 0.4,
            }):Play()
            TweenService:Create(discord_gg_CDg3VKmWp9_852, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_432 = Vector2.new(discord_gg_CDg3VKmWp9_531, 0),
                discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(discord_gg_CDg3VKmWp9_531, 0),
            }):Play()

            discord_gg_CDg3VKmWp9_852.BackgroundColor3 = discord_gg_CDg3VKmWp9_34.Scheme.FontColor
            discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_852].BackgroundColor3 = "FontColor"
        end

        function discord_gg_CDg3VKmWp9_197:OnChanged(discord_gg_CDg3VKmWp9_592)
            discord_gg_CDg3VKmWp9_197.Changed = discord_gg_CDg3VKmWp9_592
        end

        function discord_gg_CDg3VKmWp9_197:RunChanged()
            if discord_gg_CDg3VKmWp9_197.Disabled then
                return
            end

            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_197.Callback, discord_gg_CDg3VKmWp9_197.Value)
            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_197.Changed, discord_gg_CDg3VKmWp9_197.Value)
        end

        function discord_gg_CDg3VKmWp9_197:SetValue(discord_gg_CDg3VKmWp9_554)
            discord_gg_CDg3VKmWp9_197.Value = discord_gg_CDg3VKmWp9_554
            discord_gg_CDg3VKmWp9_197:Display()

            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_830 in discord_gg_CDg3VKmWp9_197.Addons do
                if discord_gg_CDg3VKmWp9_830.Type == "KeyPicker" and discord_gg_CDg3VKmWp9_830.SyncToggleState then
                    discord_gg_CDg3VKmWp9_830.Toggled = discord_gg_CDg3VKmWp9_197.Value
                    discord_gg_CDg3VKmWp9_830:Update()
                end
            end

            if not discord_gg_CDg3VKmWp9_197.Disabled then
                discord_gg_CDg3VKmWp9_34:UpdateDependencyBoxes()
            end

            if not discord_gg_CDg3VKmWp9_197.AnyKeyPickerPicking then
                discord_gg_CDg3VKmWp9_197:RunChanged()
            end
        end

        function discord_gg_CDg3VKmWp9_197:SetDisabled(discord_gg_CDg3VKmWp9_202: boolean)
            discord_gg_CDg3VKmWp9_197.Disabled = discord_gg_CDg3VKmWp9_202

            if discord_gg_CDg3VKmWp9_197.TooltipTable then
                discord_gg_CDg3VKmWp9_197.TooltipTable.Disabled = discord_gg_CDg3VKmWp9_197.Disabled
            end

            discord_gg_CDg3VKmWp9_34:UpdateAddons(discord_gg_CDg3VKmWp9_197)

            discord_gg_CDg3VKmWp9_596.Active = not discord_gg_CDg3VKmWp9_197.Disabled
            discord_gg_CDg3VKmWp9_197:Display()

            discord_gg_CDg3VKmWp9_34:UpdateDependencyBoxes()
        end

        function discord_gg_CDg3VKmWp9_197:SetVisible(discord_gg_CDg3VKmWp9_174: boolean)
            discord_gg_CDg3VKmWp9_197.Visible = discord_gg_CDg3VKmWp9_174

            discord_gg_CDg3VKmWp9_596.Visible = discord_gg_CDg3VKmWp9_197.Visible
            discord_gg_CDg3VKmWp9_77:Resize()
        end

        function discord_gg_CDg3VKmWp9_197:SetText(discord_gg_CDg3VKmWp9_136: string)
            discord_gg_CDg3VKmWp9_197.Text = discord_gg_CDg3VKmWp9_136
            discord_gg_CDg3VKmWp9_583.Text = discord_gg_CDg3VKmWp9_136
        end

        table.insert(discord_gg_CDg3VKmWp9_197.Connections, discord_gg_CDg3VKmWp9_596.MouseButton1Click:Connect(function()
            if discord_gg_CDg3VKmWp9_197.Disabled then
                return
            end

            discord_gg_CDg3VKmWp9_197:SetValue(not discord_gg_CDg3VKmWp9_197.Value)
        end))

        if typeof(discord_gg_CDg3VKmWp9_197.Tooltip) == "string" or typeof(discord_gg_CDg3VKmWp9_197.DisabledTooltip) == "string" then
            discord_gg_CDg3VKmWp9_197.TooltipTable = discord_gg_CDg3VKmWp9_34:AddTooltip(discord_gg_CDg3VKmWp9_197.Tooltip, discord_gg_CDg3VKmWp9_197.DisabledTooltip, discord_gg_CDg3VKmWp9_596)
            discord_gg_CDg3VKmWp9_197.TooltipTable.Disabled = discord_gg_CDg3VKmWp9_197.Disabled
        end

        if discord_gg_CDg3VKmWp9_197.Risky then
            discord_gg_CDg3VKmWp9_583.TextColor3 = discord_gg_CDg3VKmWp9_34.Scheme.RedColor
            discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_583].TextColor3 = "RedColor"
        end

        discord_gg_CDg3VKmWp9_197:Display()
        discord_gg_CDg3VKmWp9_77:Resize()

        discord_gg_CDg3VKmWp9_197.TextLabel = discord_gg_CDg3VKmWp9_583
        discord_gg_CDg3VKmWp9_197.Container = discord_gg_CDg3VKmWp9_600
        setmetatable(discord_gg_CDg3VKmWp9_197, discord_gg_CDg3VKmWp9_649)

        discord_gg_CDg3VKmWp9_197.Holder = discord_gg_CDg3VKmWp9_596
        table.insert(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_197)

        discord_gg_CDg3VKmWp9_197.Default = discord_gg_CDg3VKmWp9_197.Value

        discord_gg_CDg3VKmWp9_9[discord_gg_CDg3VKmWp9_308] = discord_gg_CDg3VKmWp9_197

        function discord_gg_CDg3VKmWp9_197:Destroy()
            discord_gg_CDg3VKmWp9_197.Destroyed = true

            if discord_gg_CDg3VKmWp9_197.Connections then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_197.Connections do
                    discord_gg_CDg3VKmWp9_274:Disconnect()
                end
            end

            if discord_gg_CDg3VKmWp9_197.TooltipTable then
                discord_gg_CDg3VKmWp9_197.TooltipTable:Destroy()
            end

            if discord_gg_CDg3VKmWp9_596 then
                discord_gg_CDg3VKmWp9_596:Destroy()
            end

            if discord_gg_CDg3VKmWp9_197.Addons then
                for discord_gg_CDg3VKmWp9_325 = #Toggle.Addons, 1, -1 do
                    local discord_gg_CDg3VKmWp9_830 = table.remove(discord_gg_CDg3VKmWp9_197.Addons, discord_gg_CDg3VKmWp9_325)
                    if discord_gg_CDg3VKmWp9_830 and discord_gg_CDg3VKmWp9_830.Destroy then
                        discord_gg_CDg3VKmWp9_830:Destroy()
                    end
                end
            end

            local discord_gg_CDg3VKmWp9_591 = table.find(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_197)
            if discord_gg_CDg3VKmWp9_591 then
                table.remove(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_591)
            end

            discord_gg_CDg3VKmWp9_77:Resize()
            discord_gg_CDg3VKmWp9_9[discord_gg_CDg3VKmWp9_308] = nil
        end

        return discord_gg_CDg3VKmWp9_197
    end

    function discord_gg_CDg3VKmWp9_650:AddInput(discord_gg_CDg3VKmWp9_308, discord_gg_CDg3VKmWp9_651)
        if self.Destroyed then return nil end

        if typeof(discord_gg_CDg3VKmWp9_651) == "table" and (typeof(discord_gg_CDg3VKmWp9_651.VerifyValue) == "function" and discord_gg_CDg3VKmWp9_651.Finished ~= true) then
            discord_gg_CDg3VKmWp9_651.Finished = true
        end

        discord_gg_CDg3VKmWp9_651 = discord_gg_CDg3VKmWp9_34:Validate(discord_gg_CDg3VKmWp9_651, discord_gg_CDg3VKmWp9_118.Input)

        local discord_gg_CDg3VKmWp9_77 = self
        local discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_77.Container

        local discord_gg_CDg3VKmWp9_203 = {
            discord_gg_CDg3VKmWp9_580 = {},
            discord_gg_CDg3VKmWp9_581 = false,

            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_651.Text,
            discord_gg_CDg3VKmWp9_554 = discord_gg_CDg3VKmWp9_651.Default,

            discord_gg_CDg3VKmWp9_204 = discord_gg_CDg3VKmWp9_651.Finished,
            discord_gg_CDg3VKmWp9_205 = discord_gg_CDg3VKmWp9_651.Numeric,
            discord_gg_CDg3VKmWp9_206 = discord_gg_CDg3VKmWp9_651.ClearTextOnFocus,
            discord_gg_CDg3VKmWp9_207 = discord_gg_CDg3VKmWp9_651.ClearTextOnBlur,
            discord_gg_CDg3VKmWp9_208 = discord_gg_CDg3VKmWp9_651.Placeholder,
            discord_gg_CDg3VKmWp9_209 = discord_gg_CDg3VKmWp9_651.AllowEmpty,
            discord_gg_CDg3VKmWp9_210 = discord_gg_CDg3VKmWp9_651.EmptyReset,

            discord_gg_CDg3VKmWp9_834 = discord_gg_CDg3VKmWp9_651.Tooltip,
            discord_gg_CDg3VKmWp9_835 = discord_gg_CDg3VKmWp9_651.DisabledTooltip,
            discord_gg_CDg3VKmWp9_645 = nil,

            discord_gg_CDg3VKmWp9_199 = discord_gg_CDg3VKmWp9_651.Callback,
            discord_gg_CDg3VKmWp9_200 = discord_gg_CDg3VKmWp9_651.Changed,
            discord_gg_CDg3VKmWp9_211 = discord_gg_CDg3VKmWp9_651.VerifyValue,

            discord_gg_CDg3VKmWp9_202 = discord_gg_CDg3VKmWp9_651.Disabled,
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_651.Visible,

            discord_gg_CDg3VKmWp9_658 = "Input",
        }

        local discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 39),
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_203.Visible,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
        })

        local discord_gg_CDg3VKmWp9_583 = discord_gg_CDg3VKmWp9_381("TextLabel", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 14),
            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_203.Text,
            discord_gg_CDg3VKmWp9_584 = 14,
            discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        })

        local discord_gg_CDg3VKmWp9_853 = discord_gg_CDg3VKmWp9_381("TextBox", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 1),
            discord_gg_CDg3VKmWp9_437 = "MainColor",
            discord_gg_CDg3VKmWp9_206 = not discord_gg_CDg3VKmWp9_203.Disabled and discord_gg_CDg3VKmWp9_203.ClearTextOnFocus,
            discord_gg_CDg3VKmWp9_854 = discord_gg_CDg3VKmWp9_203.Placeholder,
            discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 1),
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 21),
            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_203.Value,
            discord_gg_CDg3VKmWp9_855 = not discord_gg_CDg3VKmWp9_203.Disabled,
            discord_gg_CDg3VKmWp9_400 = true,
            discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        })

        discord_gg_CDg3VKmWp9_381("UIPadding", {
            discord_gg_CDg3VKmWp9_585 = UDim.new(0, 3),
            discord_gg_CDg3VKmWp9_586 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_587 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_588 = UDim.new(0, 4),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_853,
        })

        local discord_gg_CDg3VKmWp9_856 = discord_gg_CDg3VKmWp9_381("UIStroke", {
            discord_gg_CDg3VKmWp9_235 = "OutlineColor",
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_853,
        })

        table.insert(
            discord_gg_CDg3VKmWp9_34.Corners,
            discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_853,
            })
        )

        function discord_gg_CDg3VKmWp9_203:UpdateColors()
            if discord_gg_CDg3VKmWp9_34.Unloaded then
                return
            end

            discord_gg_CDg3VKmWp9_583.TextTransparency = discord_gg_CDg3VKmWp9_203.Disabled and 0.8 or 0
            discord_gg_CDg3VKmWp9_853.TextTransparency = discord_gg_CDg3VKmWp9_203.Disabled and 0.8 or 0
            discord_gg_CDg3VKmWp9_856.Transparency = discord_gg_CDg3VKmWp9_203.Disabled and 0.5 or 0

            discord_gg_CDg3VKmWp9_853.BackgroundColor3 = discord_gg_CDg3VKmWp9_203.Disabled and discord_gg_CDg3VKmWp9_34.Scheme.BackgroundColor or discord_gg_CDg3VKmWp9_34.Scheme.MainColor
            discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_853].BackgroundColor3 = discord_gg_CDg3VKmWp9_203.Disabled and "BackgroundColor" or "MainColor"
        end

        function discord_gg_CDg3VKmWp9_203:OnChanged(discord_gg_CDg3VKmWp9_592)
            discord_gg_CDg3VKmWp9_203.Changed = discord_gg_CDg3VKmWp9_592
        end

        function discord_gg_CDg3VKmWp9_203:RunChanged()
            if discord_gg_CDg3VKmWp9_203.Disabled then
                return
            end

            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_203.Callback, discord_gg_CDg3VKmWp9_203.Value)
            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_203.Changed, discord_gg_CDg3VKmWp9_203.Value)
        end

        function discord_gg_CDg3VKmWp9_203:SetValue(discord_gg_CDg3VKmWp9_136)
            if not discord_gg_CDg3VKmWp9_203.AllowEmpty and discord_gg_CDg3VKmWp9_286(discord_gg_CDg3VKmWp9_136) == "" then
                discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_203.EmptyReset
            end

            if discord_gg_CDg3VKmWp9_651.MaxLength and #Text > Info.MaxLength then
                discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_136:sub(1, discord_gg_CDg3VKmWp9_651.MaxLength)
            end

            if discord_gg_CDg3VKmWp9_203.Numeric then
                if #tostring(Text) > 0 and not tonumber(Text) then
                    discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_203.Value
                end
            end

            if typeof(discord_gg_CDg3VKmWp9_651.VerifyValue) == "function" and (discord_gg_CDg3VKmWp9_136 ~= discord_gg_CDg3VKmWp9_203.EmptyReset and discord_gg_CDg3VKmWp9_651.VerifyValue(discord_gg_CDg3VKmWp9_136) ~= true) then
                discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_203.EmptyReset
            end

            discord_gg_CDg3VKmWp9_203.Value = discord_gg_CDg3VKmWp9_136
            discord_gg_CDg3VKmWp9_853.Text = discord_gg_CDg3VKmWp9_136

            discord_gg_CDg3VKmWp9_203:RunChanged()
        end

        function discord_gg_CDg3VKmWp9_203:SetDisabled(discord_gg_CDg3VKmWp9_202: boolean)
            discord_gg_CDg3VKmWp9_203.Disabled = discord_gg_CDg3VKmWp9_202

            if discord_gg_CDg3VKmWp9_203.TooltipTable then
                discord_gg_CDg3VKmWp9_203.TooltipTable.Disabled = discord_gg_CDg3VKmWp9_203.Disabled
            end

            discord_gg_CDg3VKmWp9_853.ClearTextOnFocus = not discord_gg_CDg3VKmWp9_203.Disabled and discord_gg_CDg3VKmWp9_203.ClearTextOnFocus
            discord_gg_CDg3VKmWp9_853.TextEditable = not discord_gg_CDg3VKmWp9_203.Disabled
            discord_gg_CDg3VKmWp9_203:UpdateColors()
        end

        function discord_gg_CDg3VKmWp9_203:SetVisible(discord_gg_CDg3VKmWp9_174: boolean)
            discord_gg_CDg3VKmWp9_203.Visible = discord_gg_CDg3VKmWp9_174

            discord_gg_CDg3VKmWp9_540.Visible = discord_gg_CDg3VKmWp9_203.Visible
            discord_gg_CDg3VKmWp9_77:Resize()
        end

        function discord_gg_CDg3VKmWp9_203:SetText(discord_gg_CDg3VKmWp9_136: string)
            discord_gg_CDg3VKmWp9_203.Text = discord_gg_CDg3VKmWp9_136
            discord_gg_CDg3VKmWp9_583.Text = discord_gg_CDg3VKmWp9_136
        end

        if discord_gg_CDg3VKmWp9_203.Finished then
            table.insert(discord_gg_CDg3VKmWp9_203.Connections, discord_gg_CDg3VKmWp9_853.FocusLost:Connect(function(Enter)
                if not Enter then
                    if discord_gg_CDg3VKmWp9_203.ClearTextOnBlur then
                        discord_gg_CDg3VKmWp9_853.Text = discord_gg_CDg3VKmWp9_203.Value
                    end

                    return
                end

                discord_gg_CDg3VKmWp9_203:SetValue(discord_gg_CDg3VKmWp9_853.Text)
            end))
        else
            table.insert(discord_gg_CDg3VKmWp9_203.Connections, discord_gg_CDg3VKmWp9_853:GetPropertyChangedSignal("Text"):Connect(function()
                if discord_gg_CDg3VKmWp9_853.Text == discord_gg_CDg3VKmWp9_203.Value then return end

                discord_gg_CDg3VKmWp9_203:SetValue(discord_gg_CDg3VKmWp9_853.Text)
            end))
        end

        table.insert(discord_gg_CDg3VKmWp9_203.Connections, discord_gg_CDg3VKmWp9_853.Focused:Connect(function()
            if discord_gg_CDg3VKmWp9_203.Disabled then
                return
            end

            discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_856].Color = "AccentColor"
            TweenService:Create(discord_gg_CDg3VKmWp9_856, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_235 = discord_gg_CDg3VKmWp9_34.Scheme.AccentColor,
            }):Play()
        end))

        table.insert(discord_gg_CDg3VKmWp9_203.Connections, discord_gg_CDg3VKmWp9_853.FocusLost:Connect(function()
            if discord_gg_CDg3VKmWp9_203.Disabled then
                return
            end

            discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_856].Color = "OutlineColor"
            TweenService:Create(discord_gg_CDg3VKmWp9_856, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_235 = discord_gg_CDg3VKmWp9_34.Scheme.OutlineColor,
            }):Play()
        end))

        if typeof(discord_gg_CDg3VKmWp9_203.Tooltip) == "string" or typeof(discord_gg_CDg3VKmWp9_203.DisabledTooltip) == "string" then
            discord_gg_CDg3VKmWp9_203.TooltipTable = discord_gg_CDg3VKmWp9_34:AddTooltip(discord_gg_CDg3VKmWp9_203.Tooltip, discord_gg_CDg3VKmWp9_203.DisabledTooltip, discord_gg_CDg3VKmWp9_853)
            discord_gg_CDg3VKmWp9_203.TooltipTable.Disabled = discord_gg_CDg3VKmWp9_203.Disabled
        end

        discord_gg_CDg3VKmWp9_77:Resize()

        discord_gg_CDg3VKmWp9_203.Holder = discord_gg_CDg3VKmWp9_540
        table.insert(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_203)

        discord_gg_CDg3VKmWp9_203.Default = discord_gg_CDg3VKmWp9_203.Value
        if typeof(discord_gg_CDg3VKmWp9_651.VerifyValue) == "function" and (discord_gg_CDg3VKmWp9_203.Default ~= discord_gg_CDg3VKmWp9_203.EmptyReset and discord_gg_CDg3VKmWp9_651.VerifyValue(discord_gg_CDg3VKmWp9_203.Default) ~= true) then
            discord_gg_CDg3VKmWp9_203:SetValue(discord_gg_CDg3VKmWp9_203.EmptyReset)
            discord_gg_CDg3VKmWp9_203.Default = discord_gg_CDg3VKmWp9_203.EmptyReset
        end

        discord_gg_CDg3VKmWp9_203:UpdateColors()
        discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308] = discord_gg_CDg3VKmWp9_203

        function discord_gg_CDg3VKmWp9_203:Destroy()
            discord_gg_CDg3VKmWp9_203.Destroyed = true

            if discord_gg_CDg3VKmWp9_203.Connections then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_203.Connections do
                    discord_gg_CDg3VKmWp9_274:Disconnect()
                end
            end

            if discord_gg_CDg3VKmWp9_203.TooltipTable then
                discord_gg_CDg3VKmWp9_203.TooltipTable:Destroy()
            end

            if discord_gg_CDg3VKmWp9_540 then
                discord_gg_CDg3VKmWp9_540:Destroy()
            end

            local discord_gg_CDg3VKmWp9_591 = table.find(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_203)
            if discord_gg_CDg3VKmWp9_591 then
                table.remove(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_591)
            end

            discord_gg_CDg3VKmWp9_77:Resize()
            discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308] = nil
        end

        return discord_gg_CDg3VKmWp9_203
    end

    function discord_gg_CDg3VKmWp9_650:AddSlider(discord_gg_CDg3VKmWp9_308, discord_gg_CDg3VKmWp9_651)
        if self.Destroyed then return nil end

        discord_gg_CDg3VKmWp9_651 = discord_gg_CDg3VKmWp9_34:Validate(discord_gg_CDg3VKmWp9_651, discord_gg_CDg3VKmWp9_118.Slider)

        local discord_gg_CDg3VKmWp9_77 = self
        local discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_77.Container

        local discord_gg_CDg3VKmWp9_212 = {
            discord_gg_CDg3VKmWp9_580 = {},
            discord_gg_CDg3VKmWp9_581 = false,

            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_651.Text,
            discord_gg_CDg3VKmWp9_554 = discord_gg_CDg3VKmWp9_651.Default,

            discord_gg_CDg3VKmWp9_213 = discord_gg_CDg3VKmWp9_651.Min,
            discord_gg_CDg3VKmWp9_214 = discord_gg_CDg3VKmWp9_651.Max,

            discord_gg_CDg3VKmWp9_216 = discord_gg_CDg3VKmWp9_651.Prefix,
            discord_gg_CDg3VKmWp9_217 = discord_gg_CDg3VKmWp9_651.Suffix,
            discord_gg_CDg3VKmWp9_857 = discord_gg_CDg3VKmWp9_651.Compact,
            discord_gg_CDg3VKmWp9_215 = discord_gg_CDg3VKmWp9_651.Rounding,
            discord_gg_CDg3VKmWp9_858 = discord_gg_CDg3VKmWp9_651.HideMax,

            discord_gg_CDg3VKmWp9_834 = discord_gg_CDg3VKmWp9_651.Tooltip,
            discord_gg_CDg3VKmWp9_835 = discord_gg_CDg3VKmWp9_651.DisabledTooltip,
            discord_gg_CDg3VKmWp9_645 = nil,

            discord_gg_CDg3VKmWp9_199 = discord_gg_CDg3VKmWp9_651.Callback,
            discord_gg_CDg3VKmWp9_200 = discord_gg_CDg3VKmWp9_651.Changed,

            discord_gg_CDg3VKmWp9_202 = discord_gg_CDg3VKmWp9_651.Disabled,
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_651.Visible,

            discord_gg_CDg3VKmWp9_218 = discord_gg_CDg3VKmWp9_651.AllowRightClickInput,

            discord_gg_CDg3VKmWp9_658 = "Slider",
        }

        local discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_651.Compact and 15 or 33),
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_212.Visible,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
        })

        local discord_gg_CDg3VKmWp9_859
        if not discord_gg_CDg3VKmWp9_651.Compact then
            discord_gg_CDg3VKmWp9_859 = discord_gg_CDg3VKmWp9_381("TextLabel", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 14),
                discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_212.Text,
                discord_gg_CDg3VKmWp9_584 = 14,
                discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
            })
        end

        local discord_gg_CDg3VKmWp9_860 = discord_gg_CDg3VKmWp9_381("TextButton", {
            discord_gg_CDg3VKmWp9_419 = not discord_gg_CDg3VKmWp9_212.Disabled,
            discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 1),
            discord_gg_CDg3VKmWp9_437 = "MainColor",
            discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 1),
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 15),
            discord_gg_CDg3VKmWp9_136 = "",
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        })

        discord_gg_CDg3VKmWp9_381("UIStroke", {
            discord_gg_CDg3VKmWp9_235 = "OutlineColor",
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_860,
        })

        local discord_gg_CDg3VKmWp9_861 = discord_gg_CDg3VKmWp9_381("TextLabel", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
            discord_gg_CDg3VKmWp9_136 = "",
            discord_gg_CDg3VKmWp9_584 = 14,
            discord_gg_CDg3VKmWp9_429 = discord_gg_CDg3VKmWp9_860.ZIndex + 2,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_860,
        })
        discord_gg_CDg3VKmWp9_381("UIStroke", {
            discord_gg_CDg3VKmWp9_140 = Enum.ApplyStrokeMode.Contextual,
            discord_gg_CDg3VKmWp9_235 = "DarkColor",
            discord_gg_CDg3VKmWp9_862 = Enum.LineJoinMode.Miter,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_861,
        })

        local discord_gg_CDg3VKmWp9_863
        local discord_gg_CDg3VKmWp9_864
        if discord_gg_CDg3VKmWp9_651.AllowRightClickInput then
            discord_gg_CDg3VKmWp9_863 = discord_gg_CDg3VKmWp9_381("TextBox", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
                discord_gg_CDg3VKmWp9_136 = "",
                discord_gg_CDg3VKmWp9_584 = 14,
                discord_gg_CDg3VKmWp9_429 = discord_gg_CDg3VKmWp9_860.ZIndex + 3,
                discord_gg_CDg3VKmWp9_174 = false,
                discord_gg_CDg3VKmWp9_206 = false,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_860,
            })
            discord_gg_CDg3VKmWp9_864 = discord_gg_CDg3VKmWp9_381("UIStroke", {
                discord_gg_CDg3VKmWp9_140 = Enum.ApplyStrokeMode.Contextual,
                discord_gg_CDg3VKmWp9_235 = "DarkColor",
                discord_gg_CDg3VKmWp9_862 = Enum.LineJoinMode.Miter,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_863,
            })
        end

        local discord_gg_CDg3VKmWp9_865 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_437 = "AccentColor",
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(0.5, 1),
            discord_gg_CDg3VKmWp9_429 = discord_gg_CDg3VKmWp9_860.ZIndex + 1,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_860,
        })

        table.insert(
            discord_gg_CDg3VKmWp9_34.Corners,
            discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_860,
            })
        )

        table.insert(
            discord_gg_CDg3VKmWp9_34.Corners,
            discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_865,
            })
        )

        function discord_gg_CDg3VKmWp9_212:UpdateColors()
            if discord_gg_CDg3VKmWp9_34.Unloaded then
                return
            end

            if discord_gg_CDg3VKmWp9_859 then
                discord_gg_CDg3VKmWp9_859.TextTransparency = discord_gg_CDg3VKmWp9_212.Disabled and 0.8 or 0
            end
            discord_gg_CDg3VKmWp9_861.TextTransparency = discord_gg_CDg3VKmWp9_212.Disabled and 0.8 or 0

            if discord_gg_CDg3VKmWp9_651.AllowRightClickInput then
                discord_gg_CDg3VKmWp9_863.TextTransparency = discord_gg_CDg3VKmWp9_212.Disabled and 0.8 or 0
            end

            discord_gg_CDg3VKmWp9_865.BackgroundColor3 = discord_gg_CDg3VKmWp9_212.Disabled and discord_gg_CDg3VKmWp9_34.Scheme.OutlineColor or discord_gg_CDg3VKmWp9_34.Scheme.AccentColor
            discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_865].BackgroundColor3 = discord_gg_CDg3VKmWp9_212.Disabled and "OutlineColor" or "AccentColor"
        end

        function discord_gg_CDg3VKmWp9_212:Display()
            if discord_gg_CDg3VKmWp9_34.Unloaded then
                return
            end

            local discord_gg_CDg3VKmWp9_866 = nil
            if discord_gg_CDg3VKmWp9_651.FormatDisplayValue then
                discord_gg_CDg3VKmWp9_866 = discord_gg_CDg3VKmWp9_651.FormatDisplayValue(discord_gg_CDg3VKmWp9_212, discord_gg_CDg3VKmWp9_212.Value)
            end

            if discord_gg_CDg3VKmWp9_866 then
                discord_gg_CDg3VKmWp9_861.Text = tostring(discord_gg_CDg3VKmWp9_866)
            else
                if discord_gg_CDg3VKmWp9_651.Compact then
                    discord_gg_CDg3VKmWp9_861.Text =
                        string.format("%s: %s%s%s", discord_gg_CDg3VKmWp9_212.Text, discord_gg_CDg3VKmWp9_212.Prefix, discord_gg_CDg3VKmWp9_212.Value, discord_gg_CDg3VKmWp9_212.Suffix)
                elseif discord_gg_CDg3VKmWp9_651.HideMax then
                    discord_gg_CDg3VKmWp9_861.Text = string.format("%s%s%s", discord_gg_CDg3VKmWp9_212.Prefix, discord_gg_CDg3VKmWp9_212.Value, discord_gg_CDg3VKmWp9_212.Suffix)
                else
                    discord_gg_CDg3VKmWp9_861.Text = string.format(
                        "%s%s%s/%s%s%s",
                        discord_gg_CDg3VKmWp9_212.Prefix,
                        discord_gg_CDg3VKmWp9_212.Value,
                        discord_gg_CDg3VKmWp9_212.Suffix,
                        discord_gg_CDg3VKmWp9_212.Prefix,
                        discord_gg_CDg3VKmWp9_212.Max,
                        discord_gg_CDg3VKmWp9_212.Suffix
                    )
                end
            end

            local discord_gg_CDg3VKmWp9_395 = (discord_gg_CDg3VKmWp9_212.Value - discord_gg_CDg3VKmWp9_212.Min) / (discord_gg_CDg3VKmWp9_212.Max - discord_gg_CDg3VKmWp9_212.Min)
            discord_gg_CDg3VKmWp9_865.Size = UDim2.fromScale(discord_gg_CDg3VKmWp9_395, 1)
        end

        function discord_gg_CDg3VKmWp9_212:OnChanged(discord_gg_CDg3VKmWp9_592)
            discord_gg_CDg3VKmWp9_212.Changed = discord_gg_CDg3VKmWp9_592
        end

        function discord_gg_CDg3VKmWp9_212:SetMax(discord_gg_CDg3VKmWp9_554)
            assert(discord_gg_CDg3VKmWp9_554 > discord_gg_CDg3VKmWp9_212.Min, "Max value cannot be less than the current min value.")

            discord_gg_CDg3VKmWp9_212:SetValue(math.clamp(discord_gg_CDg3VKmWp9_212.Value, discord_gg_CDg3VKmWp9_212.Min, discord_gg_CDg3VKmWp9_554))
            discord_gg_CDg3VKmWp9_212.Max = discord_gg_CDg3VKmWp9_554
            discord_gg_CDg3VKmWp9_212:Display()
        end

        function discord_gg_CDg3VKmWp9_212:SetMin(discord_gg_CDg3VKmWp9_554)
            assert(discord_gg_CDg3VKmWp9_554 < discord_gg_CDg3VKmWp9_212.Max, "Min value cannot be greater than the current max value.")

            discord_gg_CDg3VKmWp9_212:SetValue(math.clamp(discord_gg_CDg3VKmWp9_212.Value, discord_gg_CDg3VKmWp9_554, discord_gg_CDg3VKmWp9_212.Max))
            discord_gg_CDg3VKmWp9_212.Min = discord_gg_CDg3VKmWp9_554
            discord_gg_CDg3VKmWp9_212:Display()
        end

        function discord_gg_CDg3VKmWp9_212:RunChanged()
            if discord_gg_CDg3VKmWp9_212.Disabled then
                return
            end

            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_212.Callback, discord_gg_CDg3VKmWp9_212.Value)
            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_212.Changed, discord_gg_CDg3VKmWp9_212.Value)
        end

        function discord_gg_CDg3VKmWp9_212:SetValue(discord_gg_CDg3VKmWp9_896)
            local discord_gg_CDg3VKmWp9_867 = tonumber(discord_gg_CDg3VKmWp9_896)
            if not discord_gg_CDg3VKmWp9_867 or discord_gg_CDg3VKmWp9_867 == discord_gg_CDg3VKmWp9_212.Value then
                return
            end

            discord_gg_CDg3VKmWp9_867 = math.clamp(discord_gg_CDg3VKmWp9_867, discord_gg_CDg3VKmWp9_212.Min, discord_gg_CDg3VKmWp9_212.Max)

            discord_gg_CDg3VKmWp9_212.Value = discord_gg_CDg3VKmWp9_867
            discord_gg_CDg3VKmWp9_212:Display()

            discord_gg_CDg3VKmWp9_212:RunChanged()
        end

        function discord_gg_CDg3VKmWp9_212:SetDisabled(discord_gg_CDg3VKmWp9_202: boolean)
            discord_gg_CDg3VKmWp9_212.Disabled = discord_gg_CDg3VKmWp9_202

            if discord_gg_CDg3VKmWp9_212.TooltipTable then
                discord_gg_CDg3VKmWp9_212.TooltipTable.Disabled = discord_gg_CDg3VKmWp9_212.Disabled
            end

            discord_gg_CDg3VKmWp9_860.Active = not discord_gg_CDg3VKmWp9_212.Disabled
            discord_gg_CDg3VKmWp9_212:UpdateColors()
        end

        function discord_gg_CDg3VKmWp9_212:SetVisible(discord_gg_CDg3VKmWp9_174: boolean)
            discord_gg_CDg3VKmWp9_212.Visible = discord_gg_CDg3VKmWp9_174

            discord_gg_CDg3VKmWp9_540.Visible = discord_gg_CDg3VKmWp9_212.Visible
            discord_gg_CDg3VKmWp9_77:Resize()
        end

        function discord_gg_CDg3VKmWp9_212:SetText(discord_gg_CDg3VKmWp9_136: string)
            discord_gg_CDg3VKmWp9_212.Text = discord_gg_CDg3VKmWp9_136
            if discord_gg_CDg3VKmWp9_859 then
                discord_gg_CDg3VKmWp9_859.Text = discord_gg_CDg3VKmWp9_136
                return
            end
            discord_gg_CDg3VKmWp9_212:Display()
        end

        function discord_gg_CDg3VKmWp9_212:SetPrefix(discord_gg_CDg3VKmWp9_216: string)
            discord_gg_CDg3VKmWp9_212.Prefix = discord_gg_CDg3VKmWp9_216
            discord_gg_CDg3VKmWp9_212:Display()
        end

        function discord_gg_CDg3VKmWp9_212:SetSuffix(discord_gg_CDg3VKmWp9_217: string)
            discord_gg_CDg3VKmWp9_212.Suffix = discord_gg_CDg3VKmWp9_217
            discord_gg_CDg3VKmWp9_212:Display()
        end

        if discord_gg_CDg3VKmWp9_651.AllowRightClickInput then
            local discord_gg_CDg3VKmWp9_868 = ""
            table.insert(discord_gg_CDg3VKmWp9_212.Connections, discord_gg_CDg3VKmWp9_863:GetPropertyChangedSignal("Text"):Connect(function()
                local discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_863.Text
                local discord_gg_CDg3VKmWp9_869 = tonumber(discord_gg_CDg3VKmWp9_136)

                if #tostring(Text) > 0 and not AsNum and Text ~= "-" then
                    discord_gg_CDg3VKmWp9_863.Text = discord_gg_CDg3VKmWp9_868
                else
                    if discord_gg_CDg3VKmWp9_212.Rounding == 0 and discord_gg_CDg3VKmWp9_136:find("%.") then
                        discord_gg_CDg3VKmWp9_863.Text = discord_gg_CDg3VKmWp9_868
                        return
                    end

                    local discord_gg_CDg3VKmWp9_870 = discord_gg_CDg3VKmWp9_136:find("%.")
                    if discord_gg_CDg3VKmWp9_870 and discord_gg_CDg3VKmWp9_212.Rounding > 0 then
                        local discord_gg_CDg3VKmWp9_871 = #Text - DecimalPos
                        if discord_gg_CDg3VKmWp9_871 > discord_gg_CDg3VKmWp9_212.Rounding then
                            discord_gg_CDg3VKmWp9_863.Text = discord_gg_CDg3VKmWp9_868
                            return
                        end
                    end

                    discord_gg_CDg3VKmWp9_868 = discord_gg_CDg3VKmWp9_136

                    if discord_gg_CDg3VKmWp9_869 then
                        if discord_gg_CDg3VKmWp9_869 > discord_gg_CDg3VKmWp9_212.Max then
                            discord_gg_CDg3VKmWp9_863.Text = tostring(discord_gg_CDg3VKmWp9_212.Max)
                        elseif discord_gg_CDg3VKmWp9_869 < discord_gg_CDg3VKmWp9_212.Min then
                            discord_gg_CDg3VKmWp9_863.Text = tostring(discord_gg_CDg3VKmWp9_212.Min)
                        end
                    end
                end
            end))

            table.insert(discord_gg_CDg3VKmWp9_212.Connections, discord_gg_CDg3VKmWp9_863.FocusLost:Connect(function()
                discord_gg_CDg3VKmWp9_863.Visible = false
                discord_gg_CDg3VKmWp9_861.Visible = true

                local discord_gg_CDg3VKmWp9_867 = tonumber(discord_gg_CDg3VKmWp9_863.Text)
                if not discord_gg_CDg3VKmWp9_867 then
                    return
                end

                discord_gg_CDg3VKmWp9_867 = discord_gg_CDg3VKmWp9_287(discord_gg_CDg3VKmWp9_867, discord_gg_CDg3VKmWp9_212.Rounding)
                discord_gg_CDg3VKmWp9_212:SetValue(discord_gg_CDg3VKmWp9_867)
            end))

            table.insert(discord_gg_CDg3VKmWp9_212.Connections, discord_gg_CDg3VKmWp9_863.Focused:Connect(function()
                if discord_gg_CDg3VKmWp9_212.Disabled then
                    return
                end

                discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_864].Color = "AccentColor"
                TweenService:Create(discord_gg_CDg3VKmWp9_864, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_235 = discord_gg_CDg3VKmWp9_34.Scheme.AccentColor,
                }):Play()
            end))

            table.insert(discord_gg_CDg3VKmWp9_212.Connections, discord_gg_CDg3VKmWp9_863.FocusLost:Connect(function()
                if discord_gg_CDg3VKmWp9_212.Disabled then
                    return
                end

                discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_864].Color = "DarkColor"
                TweenService:Create(discord_gg_CDg3VKmWp9_864, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_235 = discord_gg_CDg3VKmWp9_34.Scheme.DarkColor,
                }):Play()
            end))
        end

        local discord_gg_CDg3VKmWp9_872 = 0
        table.insert(discord_gg_CDg3VKmWp9_212.Connections, discord_gg_CDg3VKmWp9_860.InputBegan:Connect(function(discord_gg_CDg3VKmWp9_203: InputObject)
            local discord_gg_CDg3VKmWp9_873 = discord_gg_CDg3VKmWp9_277(discord_gg_CDg3VKmWp9_203) or discord_gg_CDg3VKmWp9_203.UserInputType == Enum.UserInputType.MouseButton2
            if not discord_gg_CDg3VKmWp9_873 or discord_gg_CDg3VKmWp9_212.Disabled then
                return
            end

            if discord_gg_CDg3VKmWp9_651.AllowRightClickInput then
                local discord_gg_CDg3VKmWp9_874 = discord_gg_CDg3VKmWp9_203.UserInputType == Enum.UserInputType.MouseButton2
                local discord_gg_CDg3VKmWp9_875 = false

                if discord_gg_CDg3VKmWp9_34.IsMobile and discord_gg_CDg3VKmWp9_203.UserInputType == Enum.UserInputType.Touch then
                    if tick() - discord_gg_CDg3VKmWp9_872 < 0.3 then
                        discord_gg_CDg3VKmWp9_875 = true
                    end

                    discord_gg_CDg3VKmWp9_872 = tick()
                end

                if discord_gg_CDg3VKmWp9_874 or discord_gg_CDg3VKmWp9_875 then
                    discord_gg_CDg3VKmWp9_863.Text = tostring(discord_gg_CDg3VKmWp9_212.Value)
                    discord_gg_CDg3VKmWp9_863.Visible = true
                    discord_gg_CDg3VKmWp9_861.Visible = false

                    task.spawn(discord_gg_CDg3VKmWp9_863.CaptureFocus, discord_gg_CDg3VKmWp9_863)
                    return
                end
            end

            if not discord_gg_CDg3VKmWp9_277(discord_gg_CDg3VKmWp9_203) then
                return
            end

            if discord_gg_CDg3VKmWp9_34.ActiveTab then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_170 in discord_gg_CDg3VKmWp9_34.ActiveTab.Sides do
                    discord_gg_CDg3VKmWp9_170.ScrollingEnabled = false
                end
            end

            if discord_gg_CDg3VKmWp9_34.ActiveLoading and discord_gg_CDg3VKmWp9_34.ActiveLoading.Sidebar then
                discord_gg_CDg3VKmWp9_34.ActiveLoading.Sidebar.Container.ScrollingEnabled = false
            end

            while discord_gg_CDg3VKmWp9_279(discord_gg_CDg3VKmWp9_203) and not discord_gg_CDg3VKmWp9_212.Destroyed do
                local discord_gg_CDg3VKmWp9_635 = discord_gg_CDg3VKmWp9_398(discord_gg_CDg3VKmWp9_203, discord_gg_CDg3VKmWp9_860).X
                local discord_gg_CDg3VKmWp9_451 = math.clamp((discord_gg_CDg3VKmWp9_635 - discord_gg_CDg3VKmWp9_860.AbsolutePosition.X) / discord_gg_CDg3VKmWp9_860.AbsoluteSize.X, 0, 1)

                local discord_gg_CDg3VKmWp9_876 = discord_gg_CDg3VKmWp9_212.Value
                discord_gg_CDg3VKmWp9_212.Value = discord_gg_CDg3VKmWp9_287(discord_gg_CDg3VKmWp9_212.Min + ((discord_gg_CDg3VKmWp9_212.Max - discord_gg_CDg3VKmWp9_212.Min) * discord_gg_CDg3VKmWp9_451), discord_gg_CDg3VKmWp9_212.Rounding)

                discord_gg_CDg3VKmWp9_212:Display()
                if discord_gg_CDg3VKmWp9_212.Value ~= discord_gg_CDg3VKmWp9_876 then
                    discord_gg_CDg3VKmWp9_212:RunChanged()
                end

                RunService.RenderStepped:Wait()
            end

            if discord_gg_CDg3VKmWp9_34.ActiveTab then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_170 in discord_gg_CDg3VKmWp9_34.ActiveTab.Sides do
                    discord_gg_CDg3VKmWp9_170.ScrollingEnabled = true
                end
            end

            if discord_gg_CDg3VKmWp9_34.ActiveLoading and discord_gg_CDg3VKmWp9_34.ActiveLoading.Sidebar then
                discord_gg_CDg3VKmWp9_34.ActiveLoading.Sidebar.Container.ScrollingEnabled = true
            end
        end))

        if typeof(discord_gg_CDg3VKmWp9_212.Tooltip) == "string" or typeof(discord_gg_CDg3VKmWp9_212.DisabledTooltip) == "string" then
            discord_gg_CDg3VKmWp9_212.TooltipTable = discord_gg_CDg3VKmWp9_34:AddTooltip(discord_gg_CDg3VKmWp9_212.Tooltip, discord_gg_CDg3VKmWp9_212.DisabledTooltip, discord_gg_CDg3VKmWp9_860)
            discord_gg_CDg3VKmWp9_212.TooltipTable.Disabled = discord_gg_CDg3VKmWp9_212.Disabled
        end

        discord_gg_CDg3VKmWp9_212:UpdateColors()
        discord_gg_CDg3VKmWp9_212:Display()
        discord_gg_CDg3VKmWp9_77:Resize()

        discord_gg_CDg3VKmWp9_212.Holder = discord_gg_CDg3VKmWp9_540
        table.insert(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_212)

        discord_gg_CDg3VKmWp9_212.Default = discord_gg_CDg3VKmWp9_212.Value

        discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308] = discord_gg_CDg3VKmWp9_212

        function discord_gg_CDg3VKmWp9_212:Destroy()
            discord_gg_CDg3VKmWp9_212.Destroyed = true

            if discord_gg_CDg3VKmWp9_212.Connections then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_212.Connections do
                    discord_gg_CDg3VKmWp9_274:Disconnect()
                end
            end

            if discord_gg_CDg3VKmWp9_212.TooltipTable then
                discord_gg_CDg3VKmWp9_212.TooltipTable:Destroy()
            end

            if discord_gg_CDg3VKmWp9_540 then
                discord_gg_CDg3VKmWp9_540:Destroy()
            end

            local discord_gg_CDg3VKmWp9_591 = table.find(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_212)
            if discord_gg_CDg3VKmWp9_591 then
                table.remove(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_591)
            end

            discord_gg_CDg3VKmWp9_77:Resize()
            discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308] = nil
        end

        return discord_gg_CDg3VKmWp9_212
    end

    function discord_gg_CDg3VKmWp9_650:AddDropdown(discord_gg_CDg3VKmWp9_308, discord_gg_CDg3VKmWp9_651)
        if self.Destroyed then return nil end

        discord_gg_CDg3VKmWp9_651 = discord_gg_CDg3VKmWp9_34:Validate(discord_gg_CDg3VKmWp9_651, discord_gg_CDg3VKmWp9_118.Dropdown)

        local discord_gg_CDg3VKmWp9_77 = self
        local discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_77.Container

        if discord_gg_CDg3VKmWp9_651.SpecialType == "Player" then
            discord_gg_CDg3VKmWp9_651.Values = discord_gg_CDg3VKmWp9_306(discord_gg_CDg3VKmWp9_651.ExcludeLocalPlayer)
            discord_gg_CDg3VKmWp9_651.AllowNull = true
        elseif discord_gg_CDg3VKmWp9_651.SpecialType == "Team" then
            discord_gg_CDg3VKmWp9_651.Values = discord_gg_CDg3VKmWp9_309()
            discord_gg_CDg3VKmWp9_651.AllowNull = true
        end

        local discord_gg_CDg3VKmWp9_78 = {
            discord_gg_CDg3VKmWp9_580 = {},
            discord_gg_CDg3VKmWp9_581 = false,

            discord_gg_CDg3VKmWp9_136 = typeof(discord_gg_CDg3VKmWp9_651.Text) == "string" and discord_gg_CDg3VKmWp9_651.Text or nil,

            discord_gg_CDg3VKmWp9_554 = discord_gg_CDg3VKmWp9_651.Multi and {} or nil,
            discord_gg_CDg3VKmWp9_219 = discord_gg_CDg3VKmWp9_651.Values,
            discord_gg_CDg3VKmWp9_220 = discord_gg_CDg3VKmWp9_651.DisabledValues,
            discord_gg_CDg3VKmWp9_221 = discord_gg_CDg3VKmWp9_651.ValueImages,

            discord_gg_CDg3VKmWp9_222 = discord_gg_CDg3VKmWp9_651.Multi,
            discord_gg_CDg3VKmWp9_223 = discord_gg_CDg3VKmWp9_651.Multi and not discord_gg_CDg3VKmWp9_34.IsMobile and discord_gg_CDg3VKmWp9_651.DragSelect == true,
            discord_gg_CDg3VKmWp9_225 = discord_gg_CDg3VKmWp9_651.KeepDisabledValuePosition == true,

            discord_gg_CDg3VKmWp9_877 = discord_gg_CDg3VKmWp9_651.SpecialType,
            discord_gg_CDg3VKmWp9_878 = discord_gg_CDg3VKmWp9_651.ExcludeLocalPlayer,
            discord_gg_CDg3VKmWp9_879 = discord_gg_CDg3VKmWp9_651.EnablePlayerImages,

            discord_gg_CDg3VKmWp9_834 = discord_gg_CDg3VKmWp9_651.Tooltip,
            discord_gg_CDg3VKmWp9_835 = discord_gg_CDg3VKmWp9_651.DisabledTooltip,
            discord_gg_CDg3VKmWp9_645 = nil,

            discord_gg_CDg3VKmWp9_199 = discord_gg_CDg3VKmWp9_651.Callback,
            discord_gg_CDg3VKmWp9_200 = discord_gg_CDg3VKmWp9_651.Changed,

            discord_gg_CDg3VKmWp9_202 = discord_gg_CDg3VKmWp9_651.Disabled,
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_651.Visible,

            discord_gg_CDg3VKmWp9_658 = "Dropdown",
        }

        local discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_78.Text and 39 or 21),
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_78.Visible,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
        })

        local discord_gg_CDg3VKmWp9_583 = discord_gg_CDg3VKmWp9_381("TextLabel", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 14),
            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_78.Text,
            discord_gg_CDg3VKmWp9_584 = 14,
            discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
            discord_gg_CDg3VKmWp9_174 = not not discord_gg_CDg3VKmWp9_651.Text,
            discord_gg_CDg3VKmWp9_429 = 3,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        })

        local discord_gg_CDg3VKmWp9_880 = discord_gg_CDg3VKmWp9_381("TextButton", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 1),
            discord_gg_CDg3VKmWp9_437 = "MainColor",
            discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 1),
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 21),
            discord_gg_CDg3VKmWp9_136 = "",
            discord_gg_CDg3VKmWp9_686 = 1,
            discord_gg_CDg3VKmWp9_429 = 2,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        })

        discord_gg_CDg3VKmWp9_381("UIPadding", {
            discord_gg_CDg3VKmWp9_586 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_587 = UDim.new(0, 4),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_880,
        })

        local discord_gg_CDg3VKmWp9_881 = discord_gg_CDg3VKmWp9_381("UIStroke", {
            discord_gg_CDg3VKmWp9_235 = "OutlineColor",
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_880,
        })

        local discord_gg_CDg3VKmWp9_882 = discord_gg_CDg3VKmWp9_381("UICorner", {
            discord_gg_CDg3VKmWp9_614 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
            discord_gg_CDg3VKmWp9_615 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
            discord_gg_CDg3VKmWp9_616 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
            discord_gg_CDg3VKmWp9_617 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_880,
        }); table.insert(discord_gg_CDg3VKmWp9_34.SpecificCorners, discord_gg_CDg3VKmWp9_882)

        local discord_gg_CDg3VKmWp9_883 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(-4, 3),
            discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(16, 16),
            discord_gg_CDg3VKmWp9_233 = "",
            discord_gg_CDg3VKmWp9_697 = 1,
            discord_gg_CDg3VKmWp9_429 = 2,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_880,
        })

        local discord_gg_CDg3VKmWp9_884 = discord_gg_CDg3VKmWp9_381("TextButton", {
            discord_gg_CDg3VKmWp9_419 = not discord_gg_CDg3VKmWp9_78.Disabled,
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 21),
            discord_gg_CDg3VKmWp9_136 = "---",
            discord_gg_CDg3VKmWp9_584 = 14,
            discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
            discord_gg_CDg3VKmWp9_429 = 2,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_880,
        })

        local discord_gg_CDg3VKmWp9_885 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(1, 0.5),
            discord_gg_CDg3VKmWp9_553 = "FontColor",
            discord_gg_CDg3VKmWp9_697 = 0.5,
            discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(1, 0.5),
            discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(16, 16),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_880,
        })
        if discord_gg_CDg3VKmWp9_441 then
            discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_885, discord_gg_CDg3VKmWp9_441)
        end

        local discord_gg_CDg3VKmWp9_886
        if discord_gg_CDg3VKmWp9_651.Searchable then
            discord_gg_CDg3VKmWp9_886 = discord_gg_CDg3VKmWp9_381("TextBox", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_854 = "Search...",
                discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(-8, 0),
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -12, 1, 0),
                discord_gg_CDg3VKmWp9_584 = 14,
                discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
                discord_gg_CDg3VKmWp9_174 = false,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_884,
            })
            discord_gg_CDg3VKmWp9_381("UIPadding", {
                discord_gg_CDg3VKmWp9_586 = UDim.new(0, 8),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_886,
            })

            table.insert(discord_gg_CDg3VKmWp9_78.Connections, discord_gg_CDg3VKmWp9_886.Focused:Connect(function()
                discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_881].Color = "AccentColor"
                TweenService:Create(discord_gg_CDg3VKmWp9_881, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_235 = discord_gg_CDg3VKmWp9_34.Scheme.AccentColor,
                }):Play()
            end))

            table.insert(discord_gg_CDg3VKmWp9_78.Connections, discord_gg_CDg3VKmWp9_886.FocusLost:Connect(function()
                discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_881].Color = "OutlineColor"
                TweenService:Create(discord_gg_CDg3VKmWp9_881, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_235 = discord_gg_CDg3VKmWp9_34.Scheme.OutlineColor,
                }):Play()
            end))
        end

        local discord_gg_CDg3VKmWp9_887 = function(discord_gg_CDg3VKmWp9_554, discord_gg_CDg3VKmWp9_916)
            if not discord_gg_CDg3VKmWp9_554 then
                return nil
            end

            local discord_gg_CDg3VKmWp9_888 = nil
            if discord_gg_CDg3VKmWp9_78.SpecialType == "Player" and discord_gg_CDg3VKmWp9_78.EnablePlayerImages == true then
                local discord_gg_CDg3VKmWp9_889 = discord_gg_CDg3VKmWp9_554
                if typeof(discord_gg_CDg3VKmWp9_889) ~= "Instance" and discord_gg_CDg3VKmWp9_916 ~= nil then
                    discord_gg_CDg3VKmWp9_889 = discord_gg_CDg3VKmWp9_916
                end

                if typeof(discord_gg_CDg3VKmWp9_889) == "Instance" and discord_gg_CDg3VKmWp9_889:IsA("Player") then
                    discord_gg_CDg3VKmWp9_888 = { discord_gg_CDg3VKmWp9_371 = string.format("rbxthumb://type=AvatarHeadShot&id=%s&w=48&h=48", tostring(discord_gg_CDg3VKmWp9_889.UserId)) }
                end
            end

            if discord_gg_CDg3VKmWp9_78.ValueImages then
                local discord_gg_CDg3VKmWp9_890 = discord_gg_CDg3VKmWp9_78.ValueImages[discord_gg_CDg3VKmWp9_554]
                if discord_gg_CDg3VKmWp9_890 == nil and discord_gg_CDg3VKmWp9_916 ~= nil then
                    discord_gg_CDg3VKmWp9_890 = discord_gg_CDg3VKmWp9_78.ValueImages[discord_gg_CDg3VKmWp9_916]
                end

                if discord_gg_CDg3VKmWp9_890 then
                    discord_gg_CDg3VKmWp9_888 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_890)
                end
            end

            return discord_gg_CDg3VKmWp9_888
        end

        local discord_gg_CDg3VKmWp9_702
        discord_gg_CDg3VKmWp9_702 = discord_gg_CDg3VKmWp9_34:AddContextMenu(
            discord_gg_CDg3VKmWp9_880,
            function()
                return UDim2.fromOffset((discord_gg_CDg3VKmWp9_880.AbsoluteSize.X / discord_gg_CDg3VKmWp9_34.DPIScale), 0)
            end,
            function()
                return { 0.5, discord_gg_CDg3VKmWp9_880.AbsoluteSize.Y + 1.5 }
            end,
            2,
            function(discord_gg_CDg3VKmWp9_419: boolean)
                discord_gg_CDg3VKmWp9_884.TextTransparency = (discord_gg_CDg3VKmWp9_419 and discord_gg_CDg3VKmWp9_886) and 1 or 0

                discord_gg_CDg3VKmWp9_885.ImageTransparency = discord_gg_CDg3VKmWp9_419 and 0 or 0.5
                discord_gg_CDg3VKmWp9_885.Rotation = discord_gg_CDg3VKmWp9_419 and 180 or 0

                if discord_gg_CDg3VKmWp9_886 then
                    discord_gg_CDg3VKmWp9_886.Text = ""
                    discord_gg_CDg3VKmWp9_886.Visible = discord_gg_CDg3VKmWp9_419
                end

                local discord_gg_CDg3VKmWp9_703 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2)
                local discord_gg_CDg3VKmWp9_704 = UDim.new(0, 0)

                discord_gg_CDg3VKmWp9_882.TopLeftRadius = discord_gg_CDg3VKmWp9_703
                discord_gg_CDg3VKmWp9_882.TopRightRadius = discord_gg_CDg3VKmWp9_703
                discord_gg_CDg3VKmWp9_882.BottomRightRadius = discord_gg_CDg3VKmWp9_419 and discord_gg_CDg3VKmWp9_704 or discord_gg_CDg3VKmWp9_703
                discord_gg_CDg3VKmWp9_882.BottomLeftRadius = discord_gg_CDg3VKmWp9_419 and discord_gg_CDg3VKmWp9_704 or discord_gg_CDg3VKmWp9_703

                local discord_gg_CDg3VKmWp9_705 = discord_gg_CDg3VKmWp9_702 and discord_gg_CDg3VKmWp9_702.Corner
                if discord_gg_CDg3VKmWp9_705 then
                    discord_gg_CDg3VKmWp9_705.TopLeftRadius = discord_gg_CDg3VKmWp9_704
                    discord_gg_CDg3VKmWp9_705.TopRightRadius = discord_gg_CDg3VKmWp9_704
                    discord_gg_CDg3VKmWp9_705.BottomRightRadius = discord_gg_CDg3VKmWp9_703
                    discord_gg_CDg3VKmWp9_705.BottomLeftRadius = discord_gg_CDg3VKmWp9_703
                end
            end,
            false,
            "bottom",
            "Dropdown"
        )
        discord_gg_CDg3VKmWp9_78.Menu = discord_gg_CDg3VKmWp9_702

        local discord_gg_CDg3VKmWp9_891 = 21
        local discord_gg_CDg3VKmWp9_892 = math.max(1, discord_gg_CDg3VKmWp9_651.MaxVisibleDropdownItems + 2)
        local discord_gg_CDg3VKmWp9_893 = {}
        local discord_gg_CDg3VKmWp9_894 = {}

        function discord_gg_CDg3VKmWp9_78:RecalculateListSize(Count)
            local discord_gg_CDg3VKmWp9_895 = Count or #FilteredEntries
            local discord_gg_CDg3VKmWp9_396 = math.clamp(discord_gg_CDg3VKmWp9_895 * discord_gg_CDg3VKmWp9_891, 0, discord_gg_CDg3VKmWp9_651.MaxVisibleDropdownItems * discord_gg_CDg3VKmWp9_891)

            discord_gg_CDg3VKmWp9_702.Menu.CanvasSize = UDim2.fromOffset(0, discord_gg_CDg3VKmWp9_895 * discord_gg_CDg3VKmWp9_891)

            discord_gg_CDg3VKmWp9_702:SetSize(function()
                return UDim2.fromOffset((discord_gg_CDg3VKmWp9_880.AbsoluteSize.X / discord_gg_CDg3VKmWp9_34.DPIScale), discord_gg_CDg3VKmWp9_396)
            end)
        end

        function discord_gg_CDg3VKmWp9_78:UpdateColors()
            if discord_gg_CDg3VKmWp9_34.Unloaded then
                return
            end

            discord_gg_CDg3VKmWp9_583.TextTransparency = discord_gg_CDg3VKmWp9_78.Disabled and 0.8 or 0
            discord_gg_CDg3VKmWp9_884.TextTransparency = discord_gg_CDg3VKmWp9_78.Disabled and 0.8 or 0
            discord_gg_CDg3VKmWp9_883.ImageTransparency = discord_gg_CDg3VKmWp9_78.Disabled and 0.8 or 0
            discord_gg_CDg3VKmWp9_885.ImageTransparency = discord_gg_CDg3VKmWp9_78.Disabled and 0.8 or discord_gg_CDg3VKmWp9_702.Active and 0 or 0.5
        end

        function discord_gg_CDg3VKmWp9_78:Display()
            if discord_gg_CDg3VKmWp9_34.Unloaded then
                return
            end

            local discord_gg_CDg3VKmWp9_896 = ""
            local discord_gg_CDg3VKmWp9_888 = nil
            local discord_gg_CDg3VKmWp9_897 = not discord_gg_CDg3VKmWp9_283(discord_gg_CDg3VKmWp9_78.Values)

            if discord_gg_CDg3VKmWp9_651.Multi then
                for discord_gg_CDg3VKmWp9_284, discord_gg_CDg3VKmWp9_916 in discord_gg_CDg3VKmWp9_78.Values do
                    local discord_gg_CDg3VKmWp9_554 = discord_gg_CDg3VKmWp9_897 and discord_gg_CDg3VKmWp9_284 or discord_gg_CDg3VKmWp9_916

                    if discord_gg_CDg3VKmWp9_78.Value[discord_gg_CDg3VKmWp9_554] then
                        if not discord_gg_CDg3VKmWp9_888 then
                            discord_gg_CDg3VKmWp9_888 = discord_gg_CDg3VKmWp9_887(discord_gg_CDg3VKmWp9_554, discord_gg_CDg3VKmWp9_916)
                        end

                        discord_gg_CDg3VKmWp9_896 = discord_gg_CDg3VKmWp9_896
                            .. (discord_gg_CDg3VKmWp9_651.FormatDisplayValue and tostring(discord_gg_CDg3VKmWp9_651.FormatDisplayValue(discord_gg_CDg3VKmWp9_916)) or tostring(discord_gg_CDg3VKmWp9_916))
                            .. ", "
                    end
                end

                discord_gg_CDg3VKmWp9_896 = discord_gg_CDg3VKmWp9_896:sub(1, #Str - 2)
            else
                local discord_gg_CDg3VKmWp9_655 = discord_gg_CDg3VKmWp9_78.Value
                if discord_gg_CDg3VKmWp9_897 and discord_gg_CDg3VKmWp9_78.Value ~= nil then
                    discord_gg_CDg3VKmWp9_655 = discord_gg_CDg3VKmWp9_78.Values[discord_gg_CDg3VKmWp9_78.Value]
                end

                discord_gg_CDg3VKmWp9_888 = discord_gg_CDg3VKmWp9_887(discord_gg_CDg3VKmWp9_78.Value, discord_gg_CDg3VKmWp9_655)
                discord_gg_CDg3VKmWp9_896 = discord_gg_CDg3VKmWp9_655 and tostring(discord_gg_CDg3VKmWp9_655) or ""

                if discord_gg_CDg3VKmWp9_896 ~= "" and discord_gg_CDg3VKmWp9_651.FormatDisplayValue then
                    discord_gg_CDg3VKmWp9_896 = tostring(discord_gg_CDg3VKmWp9_651.FormatDisplayValue(discord_gg_CDg3VKmWp9_896))
                end
            end

            if #Str > 25 then
                discord_gg_CDg3VKmWp9_896 = discord_gg_CDg3VKmWp9_896:sub(1, 22) .. "..."
            end

            discord_gg_CDg3VKmWp9_884.Text = (discord_gg_CDg3VKmWp9_896 == "" and "---" or discord_gg_CDg3VKmWp9_896)

            if discord_gg_CDg3VKmWp9_888 then
                discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_883, discord_gg_CDg3VKmWp9_888)
                discord_gg_CDg3VKmWp9_883.ImageTransparency = 0
            else
                discord_gg_CDg3VKmWp9_883.Image = ""
                discord_gg_CDg3VKmWp9_883.ImageTransparency = 1
            end

            discord_gg_CDg3VKmWp9_884.Size = discord_gg_CDg3VKmWp9_888 and UDim2.new(1, -8, 0, 21) or UDim2.new(1, 0, 0, 21)
            discord_gg_CDg3VKmWp9_884.Position = discord_gg_CDg3VKmWp9_888 and UDim2.fromOffset(14, 0) or UDim2.fromOffset(0, 0)
        end

        function discord_gg_CDg3VKmWp9_78:OnChanged(discord_gg_CDg3VKmWp9_592)
            discord_gg_CDg3VKmWp9_78.Changed = discord_gg_CDg3VKmWp9_592
        end

        function discord_gg_CDg3VKmWp9_78:GetActiveValues(ReturnCount)
            local discord_gg_CDg3VKmWp9_618 = {}

            if discord_gg_CDg3VKmWp9_651.Multi then
                for discord_gg_CDg3VKmWp9_554, discord_gg_CDg3VKmWp9_26 in discord_gg_CDg3VKmWp9_78.Value do
                    table.insert(discord_gg_CDg3VKmWp9_618, discord_gg_CDg3VKmWp9_554)
                end
            else
                if discord_gg_CDg3VKmWp9_78.Value then
                    table.insert(discord_gg_CDg3VKmWp9_618, discord_gg_CDg3VKmWp9_78.Value)
                end
            end

            return ReturnCount == true and discord_gg_CDg3VKmWp9_282(discord_gg_CDg3VKmWp9_618) or discord_gg_CDg3VKmWp9_618
        end

        local discord_gg_CDg3VKmWp9_898 = false
        local discord_gg_CDg3VKmWp9_899 = nil
        local discord_gg_CDg3VKmWp9_900 = nil
        local discord_gg_CDg3VKmWp9_901 = nil
        local discord_gg_CDg3VKmWp9_902 = nil
        local discord_gg_CDg3VKmWp9_903 = {}
        local discord_gg_CDg3VKmWp9_904 = nil
        local discord_gg_CDg3VKmWp9_905 = nil

        local function discord_gg_CDg3VKmWp9_906()
            local discord_gg_CDg3VKmWp9_219 = discord_gg_CDg3VKmWp9_78.Values
            local discord_gg_CDg3VKmWp9_220 = discord_gg_CDg3VKmWp9_78.DisabledValues
            local discord_gg_CDg3VKmWp9_897 = not discord_gg_CDg3VKmWp9_283(discord_gg_CDg3VKmWp9_219)

            local discord_gg_CDg3VKmWp9_907 = discord_gg_CDg3VKmWp9_886 and discord_gg_CDg3VKmWp9_299(discord_gg_CDg3VKmWp9_886.Text:lower()) or ""
            local discord_gg_CDg3VKmWp9_908 = discord_gg_CDg3VKmWp9_907 ~= ""

            local discord_gg_CDg3VKmWp9_909, discord_gg_CDg3VKmWp9_910 = {}, {}
            local discord_gg_CDg3VKmWp9_911 = {}

            for discord_gg_CDg3VKmWp9_284, discord_gg_CDg3VKmWp9_916 in discord_gg_CDg3VKmWp9_219 do
                local discord_gg_CDg3VKmWp9_554 = discord_gg_CDg3VKmWp9_897 and discord_gg_CDg3VKmWp9_284 or discord_gg_CDg3VKmWp9_916

                local discord_gg_CDg3VKmWp9_912 = tostring(discord_gg_CDg3VKmWp9_651.FormatListValue and discord_gg_CDg3VKmWp9_651.FormatListValue(discord_gg_CDg3VKmWp9_916) or discord_gg_CDg3VKmWp9_916)

                local discord_gg_CDg3VKmWp9_913 = 0
                if discord_gg_CDg3VKmWp9_908 then
                    local discord_gg_CDg3VKmWp9_303, discord_gg_CDg3VKmWp9_295 = discord_gg_CDg3VKmWp9_288(discord_gg_CDg3VKmWp9_912:lower(), discord_gg_CDg3VKmWp9_907)
                    if not discord_gg_CDg3VKmWp9_303 then
                        continue
                    end
                    discord_gg_CDg3VKmWp9_913 = discord_gg_CDg3VKmWp9_295
                end

                local discord_gg_CDg3VKmWp9_914 = table.find(discord_gg_CDg3VKmWp9_220, discord_gg_CDg3VKmWp9_554) ~= nil
                    or (discord_gg_CDg3VKmWp9_916 ~= nil and discord_gg_CDg3VKmWp9_916 ~= discord_gg_CDg3VKmWp9_554 and table.find(discord_gg_CDg3VKmWp9_220, discord_gg_CDg3VKmWp9_916) ~= nil)

                local discord_gg_CDg3VKmWp9_915 = {
                    discord_gg_CDg3VKmWp9_554 = discord_gg_CDg3VKmWp9_554,
                    discord_gg_CDg3VKmWp9_916 = discord_gg_CDg3VKmWp9_916,
                    discord_gg_CDg3VKmWp9_912 = discord_gg_CDg3VKmWp9_912,
                    discord_gg_CDg3VKmWp9_914 = discord_gg_CDg3VKmWp9_914,
                    discord_gg_CDg3VKmWp9_888 = discord_gg_CDg3VKmWp9_887(discord_gg_CDg3VKmWp9_554, discord_gg_CDg3VKmWp9_916),
                    discord_gg_CDg3VKmWp9_917 = discord_gg_CDg3VKmWp9_284,
                    discord_gg_CDg3VKmWp9_913 = discord_gg_CDg3VKmWp9_913,
                    discord_gg_CDg3VKmWp9_332 = #Pending + 1,
                }

                table.insert(discord_gg_CDg3VKmWp9_911, discord_gg_CDg3VKmWp9_915)
            end

            if discord_gg_CDg3VKmWp9_908 then
                table.sort(discord_gg_CDg3VKmWp9_911, function(A, discord_gg_CDg3VKmWp9_814)
                    if A.MatchScore ~= discord_gg_CDg3VKmWp9_814.MatchScore then
                        return A.MatchScore > discord_gg_CDg3VKmWp9_814.MatchScore
                    end
                    return A.Order < discord_gg_CDg3VKmWp9_814.Order
                end)
            elseif not discord_gg_CDg3VKmWp9_897 then
                table.sort(discord_gg_CDg3VKmWp9_911, function(A, discord_gg_CDg3VKmWp9_814)
                    return A.SortKey < discord_gg_CDg3VKmWp9_814.SortKey
                end)
            end

            table.clear(discord_gg_CDg3VKmWp9_894)

            if discord_gg_CDg3VKmWp9_78.KeepDisabledValuePosition then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_915 in discord_gg_CDg3VKmWp9_911 do
                    table.insert(discord_gg_CDg3VKmWp9_894, discord_gg_CDg3VKmWp9_915)
                end
                return
            end

            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_915 in discord_gg_CDg3VKmWp9_911 do
                if discord_gg_CDg3VKmWp9_915.IsDisabled then
                    table.insert(discord_gg_CDg3VKmWp9_910, discord_gg_CDg3VKmWp9_915)
                else
                    table.insert(discord_gg_CDg3VKmWp9_909, discord_gg_CDg3VKmWp9_915)
                end
            end

            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_915 in discord_gg_CDg3VKmWp9_909 do
                table.insert(discord_gg_CDg3VKmWp9_894, discord_gg_CDg3VKmWp9_915)
            end
            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_915 in discord_gg_CDg3VKmWp9_910 do
                table.insert(discord_gg_CDg3VKmWp9_894, discord_gg_CDg3VKmWp9_915)
            end
        end

        local function discord_gg_CDg3VKmWp9_918()
            local discord_gg_CDg3VKmWp9_919 = #FilteredEntries
            if discord_gg_CDg3VKmWp9_919 <= discord_gg_CDg3VKmWp9_892 then
                return 1
            end

            local discord_gg_CDg3VKmWp9_920 = discord_gg_CDg3VKmWp9_919 - discord_gg_CDg3VKmWp9_892 + 1
            local discord_gg_CDg3VKmWp9_921 = discord_gg_CDg3VKmWp9_702.Menu.CanvasPosition.Y / discord_gg_CDg3VKmWp9_34.DPIScale
            local discord_gg_CDg3VKmWp9_325 = math.floor(discord_gg_CDg3VKmWp9_921 / discord_gg_CDg3VKmWp9_891) + 1
            return math.clamp(discord_gg_CDg3VKmWp9_325, 1, discord_gg_CDg3VKmWp9_920)
        end

        function discord_gg_CDg3VKmWp9_78:RefreshPool()
            local discord_gg_CDg3VKmWp9_919 = #FilteredEntries
            local discord_gg_CDg3VKmWp9_825 = discord_gg_CDg3VKmWp9_918()

            for discord_gg_CDg3VKmWp9_922, discord_gg_CDg3VKmWp9_933 in discord_gg_CDg3VKmWp9_893 do
                local discord_gg_CDg3VKmWp9_923 = discord_gg_CDg3VKmWp9_825 + discord_gg_CDg3VKmWp9_922 - 1
                local discord_gg_CDg3VKmWp9_915 = discord_gg_CDg3VKmWp9_894[discord_gg_CDg3VKmWp9_923]

                discord_gg_CDg3VKmWp9_933.Entry = discord_gg_CDg3VKmWp9_915
                discord_gg_CDg3VKmWp9_933.Index = discord_gg_CDg3VKmWp9_915 and discord_gg_CDg3VKmWp9_923 or nil

                if not discord_gg_CDg3VKmWp9_915 then
                    discord_gg_CDg3VKmWp9_933.Container.Visible = false
                    continue
                end

                discord_gg_CDg3VKmWp9_933.Container.Visible = true
                discord_gg_CDg3VKmWp9_933.Container.Position = UDim2.fromOffset(0, (discord_gg_CDg3VKmWp9_923 - 1) * discord_gg_CDg3VKmWp9_891)

                local discord_gg_CDg3VKmWp9_924 = discord_gg_CDg3VKmWp9_923 == discord_gg_CDg3VKmWp9_919
                discord_gg_CDg3VKmWp9_933.Corner.BottomRightRadius = discord_gg_CDg3VKmWp9_924 and UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2) or UDim.new(0, 0)
                discord_gg_CDg3VKmWp9_933.Corner.BottomLeftRadius = discord_gg_CDg3VKmWp9_924 and UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2) or UDim.new(0, 0)

                discord_gg_CDg3VKmWp9_933.Button.Text = discord_gg_CDg3VKmWp9_915.FormattedValue

                if discord_gg_CDg3VKmWp9_915.ValueImage then
                    discord_gg_CDg3VKmWp9_933.Image.Visible = true
                    discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_933.Image, discord_gg_CDg3VKmWp9_915.ValueImage)
                    discord_gg_CDg3VKmWp9_933.Button.Size = UDim2.new(1, -18, 0, discord_gg_CDg3VKmWp9_891)
                    discord_gg_CDg3VKmWp9_933.Button.Position = UDim2.fromOffset(18, 0)
                else
                    discord_gg_CDg3VKmWp9_933.Image.Visible = false
                    discord_gg_CDg3VKmWp9_933.Button.Size = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_891)
                    discord_gg_CDg3VKmWp9_933.Button.Position = UDim2.fromOffset(0, 0)
                end

                discord_gg_CDg3VKmWp9_933:UpdateButton()
            end
        end

        function discord_gg_CDg3VKmWp9_78:RunChanged()
            if discord_gg_CDg3VKmWp9_78.Disabled then
                return
            end

            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_78.Callback, discord_gg_CDg3VKmWp9_78.Value)
            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_78.Changed, discord_gg_CDg3VKmWp9_78.Value)
        end

        local function discord_gg_CDg3VKmWp9_925()
            discord_gg_CDg3VKmWp9_898 = false
            discord_gg_CDg3VKmWp9_899 = nil
            discord_gg_CDg3VKmWp9_900 = nil
            discord_gg_CDg3VKmWp9_901 = nil
            discord_gg_CDg3VKmWp9_902 = nil
            table.clear(discord_gg_CDg3VKmWp9_903)

            if discord_gg_CDg3VKmWp9_904 then
                discord_gg_CDg3VKmWp9_904:Disconnect()
                discord_gg_CDg3VKmWp9_904 = nil
            end

            if discord_gg_CDg3VKmWp9_905 then
                discord_gg_CDg3VKmWp9_905:Disconnect()
                discord_gg_CDg3VKmWp9_905 = nil
            end
        end

        local discord_gg_CDg3VKmWp9_926 = 0

        local function discord_gg_CDg3VKmWp9_927(discord_gg_CDg3VKmWp9_325, InRange)
            local discord_gg_CDg3VKmWp9_915 = discord_gg_CDg3VKmWp9_894[discord_gg_CDg3VKmWp9_325]
            if not discord_gg_CDg3VKmWp9_915 or discord_gg_CDg3VKmWp9_915.IsDisabled then
                return
            end

            local discord_gg_CDg3VKmWp9_928 = discord_gg_CDg3VKmWp9_903[discord_gg_CDg3VKmWp9_915.Value]
            if InRange then
                discord_gg_CDg3VKmWp9_928 = not discord_gg_CDg3VKmWp9_928
            end

            local discord_gg_CDg3VKmWp9_929 = discord_gg_CDg3VKmWp9_928 and true or false
            local discord_gg_CDg3VKmWp9_930 = discord_gg_CDg3VKmWp9_78.Value[discord_gg_CDg3VKmWp9_915.Value] and true or false
            if discord_gg_CDg3VKmWp9_929 == discord_gg_CDg3VKmWp9_930 then
                return
            end

            if not discord_gg_CDg3VKmWp9_929 and discord_gg_CDg3VKmWp9_926 == 1 and not discord_gg_CDg3VKmWp9_651.AllowNull then
                return
            end

            discord_gg_CDg3VKmWp9_78.Value[discord_gg_CDg3VKmWp9_915.Value] = discord_gg_CDg3VKmWp9_929 and true or nil
            discord_gg_CDg3VKmWp9_926 += discord_gg_CDg3VKmWp9_929 and 1 or -1
        end

        local function discord_gg_CDg3VKmWp9_931(From, To, InRange)
            for discord_gg_CDg3VKmWp9_325 = From, To do
                discord_gg_CDg3VKmWp9_927(discord_gg_CDg3VKmWp9_325, InRange)
            end
        end

        local function discord_gg_CDg3VKmWp9_574(CurrentIndex)
            if CurrentIndex == nil or CurrentIndex == discord_gg_CDg3VKmWp9_902 then
                return
            end

            discord_gg_CDg3VKmWp9_902 = CurrentIndex

            local discord_gg_CDg3VKmWp9_213 = math.min(discord_gg_CDg3VKmWp9_899, CurrentIndex)
            local discord_gg_CDg3VKmWp9_214 = math.max(discord_gg_CDg3VKmWp9_899, CurrentIndex)
            discord_gg_CDg3VKmWp9_926 = discord_gg_CDg3VKmWp9_78:GetActiveValues(true)

            if discord_gg_CDg3VKmWp9_900 == nil then
                discord_gg_CDg3VKmWp9_931(discord_gg_CDg3VKmWp9_213, discord_gg_CDg3VKmWp9_214, true)
            else
                if discord_gg_CDg3VKmWp9_900 < discord_gg_CDg3VKmWp9_213 then
                    discord_gg_CDg3VKmWp9_931(discord_gg_CDg3VKmWp9_900, discord_gg_CDg3VKmWp9_213 - 1, false)
                end
                if discord_gg_CDg3VKmWp9_901 > discord_gg_CDg3VKmWp9_214 then
                    discord_gg_CDg3VKmWp9_931(discord_gg_CDg3VKmWp9_214 + 1, discord_gg_CDg3VKmWp9_901, false)
                end
                if discord_gg_CDg3VKmWp9_213 < discord_gg_CDg3VKmWp9_900 then
                    discord_gg_CDg3VKmWp9_931(discord_gg_CDg3VKmWp9_213, discord_gg_CDg3VKmWp9_900 - 1, true)
                end
                if discord_gg_CDg3VKmWp9_214 > discord_gg_CDg3VKmWp9_901 then
                    discord_gg_CDg3VKmWp9_931(discord_gg_CDg3VKmWp9_901 + 1, discord_gg_CDg3VKmWp9_214, true)
                end
            end

            discord_gg_CDg3VKmWp9_900 = discord_gg_CDg3VKmWp9_213
            discord_gg_CDg3VKmWp9_901 = discord_gg_CDg3VKmWp9_214

            for discord_gg_CDg3VKmWp9_26, OtherRow in discord_gg_CDg3VKmWp9_893 do
                OtherRow:UpdateButton()
            end
        end

        local function discord_gg_CDg3VKmWp9_932()
            local discord_gg_CDg3VKmWp9_933 = {
                discord_gg_CDg3VKmWp9_915 = nil,
                discord_gg_CDg3VKmWp9_325 = nil
            }

            local discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_437 = "MainColor",
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_891),
                discord_gg_CDg3VKmWp9_174 = false,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_702.Menu,
            })

            local discord_gg_CDg3VKmWp9_613 = discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_614 = UDim.new(0, 0),
                discord_gg_CDg3VKmWp9_615 = UDim.new(0, 0),
                discord_gg_CDg3VKmWp9_616 = UDim.new(0, 0),
                discord_gg_CDg3VKmWp9_617 = UDim.new(0, 0),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
            }); table.insert(discord_gg_CDg3VKmWp9_34.SpecificCorners, discord_gg_CDg3VKmWp9_613)

            local discord_gg_CDg3VKmWp9_233 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_233 = "",
                discord_gg_CDg3VKmWp9_697 = 0.5,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(16, 16),
                discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(4, 3),
                discord_gg_CDg3VKmWp9_174 = false,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
            })

            local discord_gg_CDg3VKmWp9_596 = discord_gg_CDg3VKmWp9_381("TextButton", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_891),
                discord_gg_CDg3VKmWp9_136 = "",
                discord_gg_CDg3VKmWp9_584 = 14,
                discord_gg_CDg3VKmWp9_686 = 0.5,
                discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
            })
            discord_gg_CDg3VKmWp9_381("UIPadding", {
                discord_gg_CDg3VKmWp9_586 = UDim.new(0, 7),
                discord_gg_CDg3VKmWp9_587 = UDim.new(0, 7),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_596,
            })

            discord_gg_CDg3VKmWp9_933.Container = discord_gg_CDg3VKmWp9_600
            discord_gg_CDg3VKmWp9_933.Corner = discord_gg_CDg3VKmWp9_613
            discord_gg_CDg3VKmWp9_933.Image = discord_gg_CDg3VKmWp9_233
            discord_gg_CDg3VKmWp9_933.Button = discord_gg_CDg3VKmWp9_596

            function discord_gg_CDg3VKmWp9_933:UpdateButton()
                local discord_gg_CDg3VKmWp9_915 = discord_gg_CDg3VKmWp9_933.Entry
                if not discord_gg_CDg3VKmWp9_915 then
                    return
                end

                local discord_gg_CDg3VKmWp9_934
                if discord_gg_CDg3VKmWp9_651.Multi then
                    discord_gg_CDg3VKmWp9_934 = discord_gg_CDg3VKmWp9_78.Value[discord_gg_CDg3VKmWp9_915.Value]
                else
                    discord_gg_CDg3VKmWp9_934 = discord_gg_CDg3VKmWp9_78.Value == discord_gg_CDg3VKmWp9_915.Value
                end

                discord_gg_CDg3VKmWp9_933.Selected = discord_gg_CDg3VKmWp9_934 and true or false

                discord_gg_CDg3VKmWp9_600.BackgroundTransparency = discord_gg_CDg3VKmWp9_934 and 0 or 1
                discord_gg_CDg3VKmWp9_596.TextTransparency = discord_gg_CDg3VKmWp9_915.IsDisabled and 0.8 or discord_gg_CDg3VKmWp9_934 and 0 or 0.5

                if discord_gg_CDg3VKmWp9_915.ValueImage then
                    discord_gg_CDg3VKmWp9_233.ImageTransparency = discord_gg_CDg3VKmWp9_915.IsDisabled and 0.8 or discord_gg_CDg3VKmWp9_934 and 0 or 0.5
                end
            end

            table.insert(discord_gg_CDg3VKmWp9_78.Connections, discord_gg_CDg3VKmWp9_596.Activated:Connect(function()
                local discord_gg_CDg3VKmWp9_915 = discord_gg_CDg3VKmWp9_933.Entry
                if not discord_gg_CDg3VKmWp9_915 or discord_gg_CDg3VKmWp9_915.IsDisabled or discord_gg_CDg3VKmWp9_898 then
                    return
                end

                local discord_gg_CDg3VKmWp9_934
                if discord_gg_CDg3VKmWp9_651.Multi then
                    discord_gg_CDg3VKmWp9_934 = discord_gg_CDg3VKmWp9_78.Value[discord_gg_CDg3VKmWp9_915.Value]
                else
                    discord_gg_CDg3VKmWp9_934 = discord_gg_CDg3VKmWp9_78.Value == discord_gg_CDg3VKmWp9_915.Value
                end

                local discord_gg_CDg3VKmWp9_928 = not discord_gg_CDg3VKmWp9_934
                if not (discord_gg_CDg3VKmWp9_78:GetActiveValues(true) == 1 and not discord_gg_CDg3VKmWp9_928 and not discord_gg_CDg3VKmWp9_651.AllowNull) then
                    discord_gg_CDg3VKmWp9_934 = discord_gg_CDg3VKmWp9_928
                    if discord_gg_CDg3VKmWp9_651.Multi then
                        discord_gg_CDg3VKmWp9_78.Value[discord_gg_CDg3VKmWp9_915.Value] = discord_gg_CDg3VKmWp9_934 and true or nil
                    else
                        discord_gg_CDg3VKmWp9_78.Value = discord_gg_CDg3VKmWp9_934 and discord_gg_CDg3VKmWp9_915.Value or nil
                    end

                    for discord_gg_CDg3VKmWp9_26, OtherRow in discord_gg_CDg3VKmWp9_893 do
                        OtherRow:UpdateButton()
                    end
                end

                discord_gg_CDg3VKmWp9_933:UpdateButton()
                discord_gg_CDg3VKmWp9_78:Display()

                discord_gg_CDg3VKmWp9_34:UpdateDependencyBoxes()
                discord_gg_CDg3VKmWp9_78:RunChanged()
            end))

            table.insert(discord_gg_CDg3VKmWp9_78.Connections, discord_gg_CDg3VKmWp9_596.MouseEnter:Connect(function()
                local discord_gg_CDg3VKmWp9_915 = discord_gg_CDg3VKmWp9_933.Entry
                if not discord_gg_CDg3VKmWp9_915 or discord_gg_CDg3VKmWp9_915.IsDisabled then
                    return
                end

                if discord_gg_CDg3VKmWp9_933.Selected then
                    return
                end

                TweenService:Create(discord_gg_CDg3VKmWp9_600, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_122 = 0.85,
                }):Play()
                TweenService:Create(discord_gg_CDg3VKmWp9_596, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_686 = 0.25,
                }):Play()

                if discord_gg_CDg3VKmWp9_233 then
                    TweenService:Create(discord_gg_CDg3VKmWp9_233, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                        discord_gg_CDg3VKmWp9_697 = 0.25,
                    }):Play()
                end
            end))

            table.insert(discord_gg_CDg3VKmWp9_78.Connections, discord_gg_CDg3VKmWp9_596.MouseLeave:Connect(function()
                local discord_gg_CDg3VKmWp9_915 = discord_gg_CDg3VKmWp9_933.Entry
                if not discord_gg_CDg3VKmWp9_915 or discord_gg_CDg3VKmWp9_915.IsDisabled then
                    return
                end

                if discord_gg_CDg3VKmWp9_933.Selected then
                    return
                end

                TweenService:Create(discord_gg_CDg3VKmWp9_600, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_122 = 1,
                }):Play()
                TweenService:Create(discord_gg_CDg3VKmWp9_596, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_686 = 0.5,
                }):Play()

                if discord_gg_CDg3VKmWp9_233 then
                    TweenService:Create(discord_gg_CDg3VKmWp9_233, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                        discord_gg_CDg3VKmWp9_697 = 0.5,
                    }):Play()
                end
            end))

            table.insert(discord_gg_CDg3VKmWp9_78.Connections, discord_gg_CDg3VKmWp9_596.InputBegan:Connect(function(StartInput)
                if not (discord_gg_CDg3VKmWp9_651.Multi and discord_gg_CDg3VKmWp9_78.DragSelect and not discord_gg_CDg3VKmWp9_34.IsMobile) then
                    return
                end

                local discord_gg_CDg3VKmWp9_915 = discord_gg_CDg3VKmWp9_933.Entry
                if not discord_gg_CDg3VKmWp9_915 or discord_gg_CDg3VKmWp9_915.IsDisabled then
                    return
                end

                if not discord_gg_CDg3VKmWp9_276(StartInput) then
                    return
                end

                discord_gg_CDg3VKmWp9_898 = true
                discord_gg_CDg3VKmWp9_899 = discord_gg_CDg3VKmWp9_933.Index
                table.clear(discord_gg_CDg3VKmWp9_903)

                for discord_gg_CDg3VKmWp9_26, FilteredEntry in discord_gg_CDg3VKmWp9_894 do
                    discord_gg_CDg3VKmWp9_903[FilteredEntry.Value] = discord_gg_CDg3VKmWp9_78.Value[FilteredEntry.Value]
                end

                discord_gg_CDg3VKmWp9_574(discord_gg_CDg3VKmWp9_933.Index)

                if discord_gg_CDg3VKmWp9_904 then discord_gg_CDg3VKmWp9_904:Disconnect() end
                if discord_gg_CDg3VKmWp9_905 then discord_gg_CDg3VKmWp9_905:Disconnect() end

                discord_gg_CDg3VKmWp9_905 = discord_gg_CDg3VKmWp9_34:GiveSignal(UserInputService.InputChanged:Connect(function(ChangeInput)
                    if not discord_gg_CDg3VKmWp9_281(ChangeInput) and ChangeInput ~= StartInput then
                        return
                    end

                    local discord_gg_CDg3VKmWp9_519 = discord_gg_CDg3VKmWp9_397(ChangeInput.Position, discord_gg_CDg3VKmWp9_596)
                    for discord_gg_CDg3VKmWp9_26, OtherRow in discord_gg_CDg3VKmWp9_893 do
                        if OtherRow.Entry and discord_gg_CDg3VKmWp9_34:MouseIsOverFrame(OtherRow.Button, discord_gg_CDg3VKmWp9_519) then
                            discord_gg_CDg3VKmWp9_574(OtherRow.Index)
                            break
                        end
                    end
                end))

                discord_gg_CDg3VKmWp9_904 = discord_gg_CDg3VKmWp9_34:GiveSignal(UserInputService.InputEnded:Connect(function(EndInput)
                    if EndInput ~= StartInput and not (discord_gg_CDg3VKmWp9_276(EndInput) and EndInput.UserInputType == StartInput.UserInputType) then
                        return
                    end

                    discord_gg_CDg3VKmWp9_78:Display()
                    discord_gg_CDg3VKmWp9_34:UpdateDependencyBoxes()
                    discord_gg_CDg3VKmWp9_78:RunChanged()

                    discord_gg_CDg3VKmWp9_925()
                end))

                table.insert(discord_gg_CDg3VKmWp9_78.Connections, discord_gg_CDg3VKmWp9_904)
                table.insert(discord_gg_CDg3VKmWp9_78.Connections, discord_gg_CDg3VKmWp9_905)
            end))

            return discord_gg_CDg3VKmWp9_933
        end

        function discord_gg_CDg3VKmWp9_78:BuildDropdownList()
            discord_gg_CDg3VKmWp9_925()

            discord_gg_CDg3VKmWp9_906()

            discord_gg_CDg3VKmWp9_702.Menu.CanvasPosition = Vector2.new(0, 0)

            discord_gg_CDg3VKmWp9_78:RefreshPool()
            discord_gg_CDg3VKmWp9_78:RecalculateListSize(#FilteredEntries)
        end

        for discord_gg_CDg3VKmWp9_26 = 1, discord_gg_CDg3VKmWp9_892 do
            table.insert(discord_gg_CDg3VKmWp9_893, discord_gg_CDg3VKmWp9_932())
        end

        table.insert(discord_gg_CDg3VKmWp9_78.Connections, discord_gg_CDg3VKmWp9_702.Menu:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
            discord_gg_CDg3VKmWp9_78:RefreshPool()
        end))

        local function discord_gg_CDg3VKmWp9_935(discord_gg_CDg3VKmWp9_936)
            if discord_gg_CDg3VKmWp9_283(discord_gg_CDg3VKmWp9_78.Values) then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_529 in discord_gg_CDg3VKmWp9_78.Values do
                    if discord_gg_CDg3VKmWp9_529 == discord_gg_CDg3VKmWp9_936 then
                        return true
                    end
                end

                return false
            end

            return discord_gg_CDg3VKmWp9_78.Values[discord_gg_CDg3VKmWp9_936] ~= nil
        end

        function discord_gg_CDg3VKmWp9_78:SetValue(discord_gg_CDg3VKmWp9_554)
            if discord_gg_CDg3VKmWp9_651.Multi then
                if typeof(discord_gg_CDg3VKmWp9_554) == "string" then
                    discord_gg_CDg3VKmWp9_554 = if discord_gg_CDg3VKmWp9_554 == "" then {} else { [discord_gg_CDg3VKmWp9_554] = true }
                end

                local discord_gg_CDg3VKmWp9_618 = {}

                for discord_gg_CDg3VKmWp9_936, discord_gg_CDg3VKmWp9_419 in discord_gg_CDg3VKmWp9_554 or {} do
                    if typeof(discord_gg_CDg3VKmWp9_419) ~= "boolean" then
                        discord_gg_CDg3VKmWp9_618[discord_gg_CDg3VKmWp9_419] = true
                    elseif discord_gg_CDg3VKmWp9_419 and discord_gg_CDg3VKmWp9_935(discord_gg_CDg3VKmWp9_936) then
                        discord_gg_CDg3VKmWp9_618[discord_gg_CDg3VKmWp9_936] = true
                    end
                end

                discord_gg_CDg3VKmWp9_78.Value = discord_gg_CDg3VKmWp9_618
            else
                if discord_gg_CDg3VKmWp9_935(discord_gg_CDg3VKmWp9_554) then
                    discord_gg_CDg3VKmWp9_78.Value = discord_gg_CDg3VKmWp9_554
                elseif not discord_gg_CDg3VKmWp9_554 then
                    discord_gg_CDg3VKmWp9_78.Value = nil
                end
            end

            discord_gg_CDg3VKmWp9_78:Display()
            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_933 in discord_gg_CDg3VKmWp9_893 do
                discord_gg_CDg3VKmWp9_933:UpdateButton()
            end

            if not discord_gg_CDg3VKmWp9_78.Disabled then
                discord_gg_CDg3VKmWp9_34:UpdateDependencyBoxes()
            end

            discord_gg_CDg3VKmWp9_78:RunChanged()
        end

        function discord_gg_CDg3VKmWp9_78:SetValues(discord_gg_CDg3VKmWp9_219)
            discord_gg_CDg3VKmWp9_78.Values = discord_gg_CDg3VKmWp9_219

            local discord_gg_CDg3VKmWp9_200 = false
            if discord_gg_CDg3VKmWp9_651.Multi then
                for discord_gg_CDg3VKmWp9_936 in discord_gg_CDg3VKmWp9_78.Value do
                    if not discord_gg_CDg3VKmWp9_935(discord_gg_CDg3VKmWp9_936) then
                        discord_gg_CDg3VKmWp9_78.Value[discord_gg_CDg3VKmWp9_936] = nil
                        discord_gg_CDg3VKmWp9_200 = true
                    end
                end

            elseif discord_gg_CDg3VKmWp9_78.Value ~= nil and not discord_gg_CDg3VKmWp9_935(discord_gg_CDg3VKmWp9_78.Value) then
                discord_gg_CDg3VKmWp9_78.Value = nil
                discord_gg_CDg3VKmWp9_200 = true
            end

            discord_gg_CDg3VKmWp9_78:BuildDropdownList()
            discord_gg_CDg3VKmWp9_78:Display()

            if discord_gg_CDg3VKmWp9_200 and not discord_gg_CDg3VKmWp9_78.Disabled then
                discord_gg_CDg3VKmWp9_34:UpdateDependencyBoxes()
            end

            if discord_gg_CDg3VKmWp9_200 then
                discord_gg_CDg3VKmWp9_78:RunChanged()
            end
        end

        function discord_gg_CDg3VKmWp9_78:AddValues(discord_gg_CDg3VKmWp9_219)
            if typeof(discord_gg_CDg3VKmWp9_219) ~= "table" and typeof(discord_gg_CDg3VKmWp9_219) ~= "string" then
                return
            end

            local discord_gg_CDg3VKmWp9_897 = not discord_gg_CDg3VKmWp9_283(discord_gg_CDg3VKmWp9_78.Values)
            if discord_gg_CDg3VKmWp9_897 then
                if typeof(discord_gg_CDg3VKmWp9_219) == "string" then
                    discord_gg_CDg3VKmWp9_78.Values[discord_gg_CDg3VKmWp9_219] = discord_gg_CDg3VKmWp9_219

                elseif discord_gg_CDg3VKmWp9_283(discord_gg_CDg3VKmWp9_219) then
                    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_936 in discord_gg_CDg3VKmWp9_219 do
                        discord_gg_CDg3VKmWp9_78.Values[discord_gg_CDg3VKmWp9_936] = discord_gg_CDg3VKmWp9_936
                    end

                else
                    for discord_gg_CDg3VKmWp9_284, discord_gg_CDg3VKmWp9_936 in discord_gg_CDg3VKmWp9_219 do
                        discord_gg_CDg3VKmWp9_78.Values[discord_gg_CDg3VKmWp9_284] = discord_gg_CDg3VKmWp9_936
                    end
                end
            else
                if typeof(discord_gg_CDg3VKmWp9_219) == "table" then
                    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_936 in discord_gg_CDg3VKmWp9_219 do
                        table.insert(discord_gg_CDg3VKmWp9_78.Values, discord_gg_CDg3VKmWp9_936)
                    end
                else
                    table.insert(discord_gg_CDg3VKmWp9_78.Values, discord_gg_CDg3VKmWp9_219)
                end
            end

            discord_gg_CDg3VKmWp9_78:BuildDropdownList()
        end

        function discord_gg_CDg3VKmWp9_78:SetDisabledValues(discord_gg_CDg3VKmWp9_220)
            discord_gg_CDg3VKmWp9_78.DisabledValues = discord_gg_CDg3VKmWp9_220
            discord_gg_CDg3VKmWp9_78:BuildDropdownList()
        end

        function discord_gg_CDg3VKmWp9_78:AddDisabledValues(discord_gg_CDg3VKmWp9_220)
            if typeof(discord_gg_CDg3VKmWp9_220) == "table" then
                for discord_gg_CDg3VKmWp9_26, val in discord_gg_CDg3VKmWp9_220 do
                    table.insert(discord_gg_CDg3VKmWp9_78.DisabledValues, val)
                end
            elseif typeof(discord_gg_CDg3VKmWp9_220) == "string" then
                table.insert(discord_gg_CDg3VKmWp9_78.DisabledValues, discord_gg_CDg3VKmWp9_220)
            else
                return
            end

            discord_gg_CDg3VKmWp9_78:BuildDropdownList()
        end

        function discord_gg_CDg3VKmWp9_78:SetValueImages(discord_gg_CDg3VKmWp9_221)
            if typeof(discord_gg_CDg3VKmWp9_221) ~= "table" then
                return
            end

            discord_gg_CDg3VKmWp9_78.ValueImages = discord_gg_CDg3VKmWp9_221
            discord_gg_CDg3VKmWp9_78:BuildDropdownList()
        end

        function discord_gg_CDg3VKmWp9_78:AddValueImages(discord_gg_CDg3VKmWp9_221)
            if typeof(discord_gg_CDg3VKmWp9_221) ~= "table" then
                return
            end

            for discord_gg_CDg3VKmWp9_379, val in discord_gg_CDg3VKmWp9_221 do
                discord_gg_CDg3VKmWp9_78.ValueImages[discord_gg_CDg3VKmWp9_379] = val
            end

            discord_gg_CDg3VKmWp9_78:BuildDropdownList()
        end

        function discord_gg_CDg3VKmWp9_78:SetDisabled(discord_gg_CDg3VKmWp9_202: boolean)
            discord_gg_CDg3VKmWp9_78.Disabled = discord_gg_CDg3VKmWp9_202

            if discord_gg_CDg3VKmWp9_78.TooltipTable then
                discord_gg_CDg3VKmWp9_78.TooltipTable.Disabled = discord_gg_CDg3VKmWp9_78.Disabled
            end

            discord_gg_CDg3VKmWp9_702:Close()
            discord_gg_CDg3VKmWp9_884.Active = not discord_gg_CDg3VKmWp9_78.Disabled
            discord_gg_CDg3VKmWp9_78:UpdateColors()

            discord_gg_CDg3VKmWp9_34:UpdateDependencyBoxes()
        end

        function discord_gg_CDg3VKmWp9_78:SetVisible(discord_gg_CDg3VKmWp9_174: boolean)
            discord_gg_CDg3VKmWp9_78.Visible = discord_gg_CDg3VKmWp9_174

            discord_gg_CDg3VKmWp9_540.Visible = discord_gg_CDg3VKmWp9_78.Visible
            discord_gg_CDg3VKmWp9_77:Resize()
        end

        function discord_gg_CDg3VKmWp9_78:SetText(discord_gg_CDg3VKmWp9_136: string)
            discord_gg_CDg3VKmWp9_78.Text = discord_gg_CDg3VKmWp9_136
            discord_gg_CDg3VKmWp9_540.Size = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_136 and 39 or 21)

            discord_gg_CDg3VKmWp9_583.Text = discord_gg_CDg3VKmWp9_136 and discord_gg_CDg3VKmWp9_136 or ""
            discord_gg_CDg3VKmWp9_583.Visible = not not discord_gg_CDg3VKmWp9_136
        end

        function discord_gg_CDg3VKmWp9_78:SetDragSelect(discord_gg_CDg3VKmWp9_554: boolean)
            if not discord_gg_CDg3VKmWp9_651.Multi or discord_gg_CDg3VKmWp9_34.IsMobile then
                discord_gg_CDg3VKmWp9_554 = false
            end

            discord_gg_CDg3VKmWp9_78.DragSelect = discord_gg_CDg3VKmWp9_554 == true
            discord_gg_CDg3VKmWp9_78:BuildDropdownList()
        end

        local discord_gg_CDg3VKmWp9_937 = function()
            if discord_gg_CDg3VKmWp9_78.Disabled then
                return
            end

            discord_gg_CDg3VKmWp9_702:Toggle()
        end

        table.insert(discord_gg_CDg3VKmWp9_78.Connections, discord_gg_CDg3VKmWp9_880.Activated:Connect(discord_gg_CDg3VKmWp9_937))
        table.insert(discord_gg_CDg3VKmWp9_78.Connections, discord_gg_CDg3VKmWp9_884.Activated:Connect(discord_gg_CDg3VKmWp9_937))

        if discord_gg_CDg3VKmWp9_886 then
            table.insert(discord_gg_CDg3VKmWp9_78.Connections, discord_gg_CDg3VKmWp9_886:GetPropertyChangedSignal("Text"):Connect(discord_gg_CDg3VKmWp9_78.BuildDropdownList))
        end

        local discord_gg_CDg3VKmWp9_938 = (function()
            local discord_gg_CDg3VKmWp9_939 = {}
            local discord_gg_CDg3VKmWp9_198 = discord_gg_CDg3VKmWp9_651.Default
            if discord_gg_CDg3VKmWp9_198 == nil then
                return discord_gg_CDg3VKmWp9_939
            end

            local discord_gg_CDg3VKmWp9_897 = not discord_gg_CDg3VKmWp9_283(discord_gg_CDg3VKmWp9_78.Values)
            local function discord_gg_CDg3VKmWp9_940(Candidate)
                if discord_gg_CDg3VKmWp9_897 then
                    return discord_gg_CDg3VKmWp9_78.Values[Candidate] ~= nil and Candidate or nil
                end

                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_529 in discord_gg_CDg3VKmWp9_78.Values do
                    if discord_gg_CDg3VKmWp9_529 == Candidate then
                        return discord_gg_CDg3VKmWp9_529
                    end
                end

                return nil
            end

            local discord_gg_CDg3VKmWp9_941 = typeof(discord_gg_CDg3VKmWp9_198)
            if discord_gg_CDg3VKmWp9_941 == "string" then
                local discord_gg_CDg3VKmWp9_554 = discord_gg_CDg3VKmWp9_940(discord_gg_CDg3VKmWp9_198)
                if discord_gg_CDg3VKmWp9_554 ~= nil then
                    table.insert(discord_gg_CDg3VKmWp9_939, discord_gg_CDg3VKmWp9_554)
                end

            elseif discord_gg_CDg3VKmWp9_941 == "table" then
                for discord_gg_CDg3VKmWp9_26, Candidate in discord_gg_CDg3VKmWp9_198 do
                    local discord_gg_CDg3VKmWp9_554 = discord_gg_CDg3VKmWp9_940(Candidate)
                    if discord_gg_CDg3VKmWp9_554 ~= nil then
                        table.insert(discord_gg_CDg3VKmWp9_939, discord_gg_CDg3VKmWp9_554)
                    end
                end

            elseif discord_gg_CDg3VKmWp9_78.Values[discord_gg_CDg3VKmWp9_198] ~= nil then
                table.insert(discord_gg_CDg3VKmWp9_939, discord_gg_CDg3VKmWp9_897 and discord_gg_CDg3VKmWp9_198 or discord_gg_CDg3VKmWp9_78.Values[discord_gg_CDg3VKmWp9_198])
            end

            return discord_gg_CDg3VKmWp9_939
        end)()

        for discord_gg_CDg3VKmWp9_26, SelectValue in discord_gg_CDg3VKmWp9_938 do
            if discord_gg_CDg3VKmWp9_651.Multi then
                discord_gg_CDg3VKmWp9_78.Value[SelectValue] = true
            else
                discord_gg_CDg3VKmWp9_78.Value = SelectValue
                break
            end
        end

        if typeof(discord_gg_CDg3VKmWp9_78.Tooltip) == "string" or typeof(discord_gg_CDg3VKmWp9_78.DisabledTooltip) == "string" then
            discord_gg_CDg3VKmWp9_78.TooltipTable = discord_gg_CDg3VKmWp9_34:AddTooltip(discord_gg_CDg3VKmWp9_78.Tooltip, discord_gg_CDg3VKmWp9_78.DisabledTooltip, discord_gg_CDg3VKmWp9_880)
            discord_gg_CDg3VKmWp9_78.TooltipTable.Disabled = discord_gg_CDg3VKmWp9_78.Disabled
        end

        discord_gg_CDg3VKmWp9_78:UpdateColors()
        discord_gg_CDg3VKmWp9_78:Display()
        discord_gg_CDg3VKmWp9_78:BuildDropdownList()
        discord_gg_CDg3VKmWp9_77:Resize()

        discord_gg_CDg3VKmWp9_78.Holder = discord_gg_CDg3VKmWp9_540
        table.insert(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_78)

        discord_gg_CDg3VKmWp9_78.Default = discord_gg_CDg3VKmWp9_938
        discord_gg_CDg3VKmWp9_78.DefaultValues = discord_gg_CDg3VKmWp9_78.Values

        discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308] = discord_gg_CDg3VKmWp9_78

        function discord_gg_CDg3VKmWp9_78:Destroy()
            discord_gg_CDg3VKmWp9_78.Destroyed = true

            discord_gg_CDg3VKmWp9_925()

            if discord_gg_CDg3VKmWp9_78.Connections then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_78.Connections do
                    discord_gg_CDg3VKmWp9_274:Disconnect()
                end
            end

            if discord_gg_CDg3VKmWp9_78.TooltipTable then
                discord_gg_CDg3VKmWp9_78.TooltipTable:Destroy()
            end

            if discord_gg_CDg3VKmWp9_702 then
                discord_gg_CDg3VKmWp9_702:Destroy()
            end

            if discord_gg_CDg3VKmWp9_540 then
                discord_gg_CDg3VKmWp9_540:Destroy()
            end

            local discord_gg_CDg3VKmWp9_591 = table.find(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_78)
            if discord_gg_CDg3VKmWp9_591 then
                table.remove(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_591)
            end

            discord_gg_CDg3VKmWp9_77:Resize()
            discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308] = nil
        end

        return discord_gg_CDg3VKmWp9_78
    end

    function discord_gg_CDg3VKmWp9_650:AddViewport(discord_gg_CDg3VKmWp9_308, discord_gg_CDg3VKmWp9_651)
        if self.Destroyed then return nil end

        discord_gg_CDg3VKmWp9_651 = discord_gg_CDg3VKmWp9_34:Validate(discord_gg_CDg3VKmWp9_651, discord_gg_CDg3VKmWp9_118.Viewport)

        local discord_gg_CDg3VKmWp9_77 = self
        local discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_77.Container

        local discord_gg_CDg3VKmWp9_496, discord_gg_CDg3VKmWp9_942 = false, false
        local discord_gg_CDg3VKmWp9_943, discord_gg_CDg3VKmWp9_944 = nil, 0

        local discord_gg_CDg3VKmWp9_945 = discord_gg_CDg3VKmWp9_651.Object
        if discord_gg_CDg3VKmWp9_651.Clone and typeof(discord_gg_CDg3VKmWp9_651.Object) == "Instance" then
            if discord_gg_CDg3VKmWp9_651.Object.Archivable then
                discord_gg_CDg3VKmWp9_945 = discord_gg_CDg3VKmWp9_945:Clone()
            else
                discord_gg_CDg3VKmWp9_651.Object.Archivable = true
                discord_gg_CDg3VKmWp9_945 = discord_gg_CDg3VKmWp9_945:Clone()
                discord_gg_CDg3VKmWp9_651.Object.Archivable = false
            end
        end

        local discord_gg_CDg3VKmWp9_226 = {
            discord_gg_CDg3VKmWp9_580 = {},
            discord_gg_CDg3VKmWp9_581 = false,

            discord_gg_CDg3VKmWp9_227 = discord_gg_CDg3VKmWp9_945 :: PVInstance,
            discord_gg_CDg3VKmWp9_228 = if not discord_gg_CDg3VKmWp9_651.Camera then discord_gg_CDg3VKmWp9_244.new("Camera") else discord_gg_CDg3VKmWp9_651.Camera,
            discord_gg_CDg3VKmWp9_231 = discord_gg_CDg3VKmWp9_651.Interactive,
            discord_gg_CDg3VKmWp9_230 = discord_gg_CDg3VKmWp9_651.AutoFocus,
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_651.Visible,
            discord_gg_CDg3VKmWp9_658 = "Viewport",
        }

        assert(
            typeof(discord_gg_CDg3VKmWp9_226.Object) == "Instance" and (discord_gg_CDg3VKmWp9_226.Object:IsA("BasePart") or discord_gg_CDg3VKmWp9_226.Object:IsA("Model")),
            "Instance must be a BasePart or Model."
        )

        assert(
            typeof(discord_gg_CDg3VKmWp9_226.Camera) == "Instance" and discord_gg_CDg3VKmWp9_226.Camera:IsA("Camera"),
            "Camera must be a valid Camera instance."
        )

        local function discord_gg_CDg3VKmWp9_946(model)
            if model:IsA("BasePart") then
                return model.Size
            end

            return select(2, model:GetBoundingBox())
        end

        local function discord_gg_CDg3VKmWp9_947()
            local discord_gg_CDg3VKmWp9_948 = discord_gg_CDg3VKmWp9_946(discord_gg_CDg3VKmWp9_226.Object)
            local discord_gg_CDg3VKmWp9_949 = math.max(discord_gg_CDg3VKmWp9_948.X, discord_gg_CDg3VKmWp9_948.Y, discord_gg_CDg3VKmWp9_948.Z)
            local discord_gg_CDg3VKmWp9_950 = discord_gg_CDg3VKmWp9_949 * 2
            local discord_gg_CDg3VKmWp9_951 = (discord_gg_CDg3VKmWp9_226.Object :: PVInstance):GetPivot().Position

            discord_gg_CDg3VKmWp9_226.Camera.CFrame = CFrame.new(discord_gg_CDg3VKmWp9_951 + Vector3.new(0, discord_gg_CDg3VKmWp9_949 / 2, discord_gg_CDg3VKmWp9_950), discord_gg_CDg3VKmWp9_951)
        end

        local discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_651.Height),
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_226.Visible,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
        })

        local discord_gg_CDg3VKmWp9_853 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 1),
            discord_gg_CDg3VKmWp9_437 = "MainColor",
            discord_gg_CDg3VKmWp9_761 = "OutlineColor",
            discord_gg_CDg3VKmWp9_120 = 1,
            discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 1),
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        })

        discord_gg_CDg3VKmWp9_381("UIPadding", {
            discord_gg_CDg3VKmWp9_585 = UDim.new(0, 3),
            discord_gg_CDg3VKmWp9_586 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_587 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_588 = UDim.new(0, 4),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_853,
        })

        local discord_gg_CDg3VKmWp9_952 = discord_gg_CDg3VKmWp9_381("ViewportFrame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_853,
            discord_gg_CDg3VKmWp9_953 = discord_gg_CDg3VKmWp9_226.Camera,
            discord_gg_CDg3VKmWp9_419 = discord_gg_CDg3VKmWp9_226.Interactive,
        })

        table.insert(discord_gg_CDg3VKmWp9_226.Connections, discord_gg_CDg3VKmWp9_952.MouseEnter:Connect(function()
            if not discord_gg_CDg3VKmWp9_226.Interactive then
                return
            end

            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_170 in discord_gg_CDg3VKmWp9_77.Tab.Sides do
                discord_gg_CDg3VKmWp9_170.ScrollingEnabled = false
            end
        end))

        table.insert(discord_gg_CDg3VKmWp9_226.Connections, discord_gg_CDg3VKmWp9_952.MouseLeave:Connect(function()
            if not discord_gg_CDg3VKmWp9_226.Interactive then
                return
            end

            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_170 in discord_gg_CDg3VKmWp9_77.Tab.Sides do
                discord_gg_CDg3VKmWp9_170.ScrollingEnabled = true
            end
        end))

        table.insert(discord_gg_CDg3VKmWp9_226.Connections, discord_gg_CDg3VKmWp9_952.InputBegan:Connect(function(input)
            if not discord_gg_CDg3VKmWp9_226.Interactive then
                return
            end

            if input.UserInputType == Enum.UserInputType.MouseButton2 or (input.UserInputType == Enum.UserInputType.Touch and not discord_gg_CDg3VKmWp9_942) then
                discord_gg_CDg3VKmWp9_496 = true
                discord_gg_CDg3VKmWp9_943 = discord_gg_CDg3VKmWp9_397(input.Position, discord_gg_CDg3VKmWp9_952)
            end
        end))

        table.insert(discord_gg_CDg3VKmWp9_226.Connections, UserInputService.InputEnded:Connect(function(input)
            if discord_gg_CDg3VKmWp9_34.Unloaded then
                return
            end

            if not discord_gg_CDg3VKmWp9_226.Interactive then
                return
            end

            if input.UserInputType == Enum.UserInputType.MouseButton2 or input.UserInputType == Enum.UserInputType.Touch then
                discord_gg_CDg3VKmWp9_496 = false
            end
        end))

        table.insert(discord_gg_CDg3VKmWp9_226.Connections, UserInputService.InputChanged:Connect(function(input)
            if discord_gg_CDg3VKmWp9_34.Unloaded then
                return
            end

            if not discord_gg_CDg3VKmWp9_226.Interactive or not discord_gg_CDg3VKmWp9_496 or discord_gg_CDg3VKmWp9_942 then
                return
            end

            if
                input.UserInputType == Enum.UserInputType.MouseMovement
                or input.UserInputType == Enum.UserInputType.Touch
            then
                local discord_gg_CDg3VKmWp9_954 = discord_gg_CDg3VKmWp9_397(input.Position, discord_gg_CDg3VKmWp9_952) - discord_gg_CDg3VKmWp9_943
                discord_gg_CDg3VKmWp9_943 = discord_gg_CDg3VKmWp9_397(input.Position, discord_gg_CDg3VKmWp9_952)

                local discord_gg_CDg3VKmWp9_143 = (discord_gg_CDg3VKmWp9_226.Object :: PVInstance):GetPivot().Position
                local discord_gg_CDg3VKmWp9_228 = discord_gg_CDg3VKmWp9_226.Camera

                local discord_gg_CDg3VKmWp9_955 = CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -discord_gg_CDg3VKmWp9_954.X * 0.01)
                discord_gg_CDg3VKmWp9_228.CFrame = CFrame.new(discord_gg_CDg3VKmWp9_143) * discord_gg_CDg3VKmWp9_955 * CFrame.new(-discord_gg_CDg3VKmWp9_143) * discord_gg_CDg3VKmWp9_228.CFrame

                local discord_gg_CDg3VKmWp9_956 = CFrame.fromAxisAngle(discord_gg_CDg3VKmWp9_228.CFrame.RightVector, -discord_gg_CDg3VKmWp9_954.Y * 0.01)
                local discord_gg_CDg3VKmWp9_957 = CFrame.new(discord_gg_CDg3VKmWp9_143) * discord_gg_CDg3VKmWp9_956 * CFrame.new(-discord_gg_CDg3VKmWp9_143) * discord_gg_CDg3VKmWp9_228.CFrame

                if discord_gg_CDg3VKmWp9_957.UpVector.Y > 0.1 then
                    discord_gg_CDg3VKmWp9_228.CFrame = discord_gg_CDg3VKmWp9_957
                end
            end
        end))

        table.insert(discord_gg_CDg3VKmWp9_226.Connections, discord_gg_CDg3VKmWp9_952.InputChanged:Connect(function(input)
            if not discord_gg_CDg3VKmWp9_226.Interactive then
                return
            end

            if input.UserInputType == Enum.UserInputType.MouseWheel then
                local discord_gg_CDg3VKmWp9_958 = discord_gg_CDg3VKmWp9_397(input.Position, discord_gg_CDg3VKmWp9_952).Z * 2
                discord_gg_CDg3VKmWp9_226.Camera.CFrame += discord_gg_CDg3VKmWp9_226.Camera.CFrame.LookVector * discord_gg_CDg3VKmWp9_958
            end
        end))

        table.insert(discord_gg_CDg3VKmWp9_226.Connections, UserInputService.TouchPinch:Connect(function(touchPositions, discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_26, state)
            if discord_gg_CDg3VKmWp9_34.Unloaded then
                return
            end

            if not discord_gg_CDg3VKmWp9_226.Interactive or not discord_gg_CDg3VKmWp9_34:MouseIsOverFrame(discord_gg_CDg3VKmWp9_952, discord_gg_CDg3VKmWp9_397(touchPositions[1], discord_gg_CDg3VKmWp9_952)) then
                return
            end

            if state == Enum.UserInputState.Begin then
                discord_gg_CDg3VKmWp9_942 = true
                discord_gg_CDg3VKmWp9_496 = false
                discord_gg_CDg3VKmWp9_944 = (touchPositions[1] - touchPositions[2]).Magnitude
            elseif state == Enum.UserInputState.Change then
                local discord_gg_CDg3VKmWp9_959 = (touchPositions[1] - touchPositions[2]).Magnitude
                local discord_gg_CDg3VKmWp9_960 = (discord_gg_CDg3VKmWp9_959 - discord_gg_CDg3VKmWp9_944) * 0.1
                discord_gg_CDg3VKmWp9_944 = discord_gg_CDg3VKmWp9_959
                discord_gg_CDg3VKmWp9_226.Camera.CFrame += discord_gg_CDg3VKmWp9_226.Camera.CFrame.LookVector * discord_gg_CDg3VKmWp9_960
            elseif state == Enum.UserInputState.End or state == Enum.UserInputState.Cancel then
                discord_gg_CDg3VKmWp9_942 = false
            end
        end))

        ;(discord_gg_CDg3VKmWp9_226.Object :: PVInstance).Parent = discord_gg_CDg3VKmWp9_952
        if discord_gg_CDg3VKmWp9_226.AutoFocus then
            discord_gg_CDg3VKmWp9_947()
        end

        function discord_gg_CDg3VKmWp9_226:SetObject(discord_gg_CDg3VKmWp9_227: Instance, discord_gg_CDg3VKmWp9_229: boolean?)
            assert(discord_gg_CDg3VKmWp9_227, "Object cannot be nil.")

            if discord_gg_CDg3VKmWp9_229 then
                discord_gg_CDg3VKmWp9_227 = discord_gg_CDg3VKmWp9_227:Clone()
            end

            if discord_gg_CDg3VKmWp9_226.Object then
                discord_gg_CDg3VKmWp9_226.Object:Destroy()
            end

            discord_gg_CDg3VKmWp9_226.Object = discord_gg_CDg3VKmWp9_227
            ;(discord_gg_CDg3VKmWp9_226.Object :: PVInstance).Parent = discord_gg_CDg3VKmWp9_952

            discord_gg_CDg3VKmWp9_77:Resize()
        end

        function discord_gg_CDg3VKmWp9_226:SetHeight(discord_gg_CDg3VKmWp9_232: number)
            assert(discord_gg_CDg3VKmWp9_232 > 0, "Height must be greater than 0.")

            discord_gg_CDg3VKmWp9_540.Size = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_232)
            discord_gg_CDg3VKmWp9_77:Resize()
        end

        function discord_gg_CDg3VKmWp9_226:Focus()
            if not discord_gg_CDg3VKmWp9_226.Object then
                return
            end

            discord_gg_CDg3VKmWp9_947()
        end

        function discord_gg_CDg3VKmWp9_226:SetCamera(discord_gg_CDg3VKmWp9_228: Instance)
            assert(
                discord_gg_CDg3VKmWp9_228 and typeof(discord_gg_CDg3VKmWp9_228) == "Instance" and discord_gg_CDg3VKmWp9_228:IsA("Camera"),
                "Camera must be a valid Camera instance."
            )

            discord_gg_CDg3VKmWp9_226.Camera = discord_gg_CDg3VKmWp9_228
            discord_gg_CDg3VKmWp9_952.CurrentCamera = discord_gg_CDg3VKmWp9_228
        end

        function discord_gg_CDg3VKmWp9_226:SetInteractive(discord_gg_CDg3VKmWp9_231: boolean)
            discord_gg_CDg3VKmWp9_226.Interactive = discord_gg_CDg3VKmWp9_231
            discord_gg_CDg3VKmWp9_952.Active = discord_gg_CDg3VKmWp9_231
        end

        function discord_gg_CDg3VKmWp9_226:SetVisible(discord_gg_CDg3VKmWp9_174: boolean)
            discord_gg_CDg3VKmWp9_226.Visible = discord_gg_CDg3VKmWp9_174

            discord_gg_CDg3VKmWp9_540.Visible = discord_gg_CDg3VKmWp9_226.Visible
            discord_gg_CDg3VKmWp9_77:Resize()
        end

        discord_gg_CDg3VKmWp9_77:Resize()

        discord_gg_CDg3VKmWp9_226.Holder = discord_gg_CDg3VKmWp9_540
        table.insert(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_226)

        discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308] = discord_gg_CDg3VKmWp9_226

        function discord_gg_CDg3VKmWp9_226:Destroy()
            discord_gg_CDg3VKmWp9_226.Destroyed = true

            if discord_gg_CDg3VKmWp9_226.Connections then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_226.Connections do
                    discord_gg_CDg3VKmWp9_274:Disconnect()
                end
            end

            if discord_gg_CDg3VKmWp9_540 then
                discord_gg_CDg3VKmWp9_540:Destroy()
            end

            local discord_gg_CDg3VKmWp9_591 = table.find(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_226)
            if discord_gg_CDg3VKmWp9_591 then
                table.remove(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_591)
            end

            discord_gg_CDg3VKmWp9_77:Resize()
            discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308] = nil
        end

        return discord_gg_CDg3VKmWp9_226
    end

    function discord_gg_CDg3VKmWp9_650:AddImage(discord_gg_CDg3VKmWp9_308, discord_gg_CDg3VKmWp9_651)
        if self.Destroyed then return nil end

        discord_gg_CDg3VKmWp9_651 = discord_gg_CDg3VKmWp9_34:Validate(discord_gg_CDg3VKmWp9_651, discord_gg_CDg3VKmWp9_118.Image)

        local discord_gg_CDg3VKmWp9_77 = self
        local discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_77.Container

        local discord_gg_CDg3VKmWp9_233 = {
            discord_gg_CDg3VKmWp9_580 = {},
            discord_gg_CDg3VKmWp9_581 = false,

            discord_gg_CDg3VKmWp9_233 = discord_gg_CDg3VKmWp9_651.Image,
            discord_gg_CDg3VKmWp9_235 = discord_gg_CDg3VKmWp9_651.Color,
            discord_gg_CDg3VKmWp9_236 = discord_gg_CDg3VKmWp9_651.RectOffset,
            discord_gg_CDg3VKmWp9_237 = discord_gg_CDg3VKmWp9_651.RectSize,
            discord_gg_CDg3VKmWp9_232 = discord_gg_CDg3VKmWp9_651.Height,
            discord_gg_CDg3VKmWp9_238 = discord_gg_CDg3VKmWp9_651.ScaleType,
            discord_gg_CDg3VKmWp9_234 = discord_gg_CDg3VKmWp9_651.Transparency,
            discord_gg_CDg3VKmWp9_122 = discord_gg_CDg3VKmWp9_651.BackgroundTransparency,

            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_651.Visible,
            discord_gg_CDg3VKmWp9_658 = "Image",
        }

        local discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_651.Height),
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_233.Visible,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
        })

        local discord_gg_CDg3VKmWp9_853 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 1),
            discord_gg_CDg3VKmWp9_437 = "MainColor",
            discord_gg_CDg3VKmWp9_122 = discord_gg_CDg3VKmWp9_233.BackgroundTransparency,
            discord_gg_CDg3VKmWp9_420 = true,
            discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 1),
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        })
        table.insert(
            discord_gg_CDg3VKmWp9_34.Corners,
            discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_853,
            })
        )
        discord_gg_CDg3VKmWp9_381("UIStroke", {
            discord_gg_CDg3VKmWp9_235 = "OutlineColor",
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_853,
        })

        discord_gg_CDg3VKmWp9_381("UIPadding", {
            discord_gg_CDg3VKmWp9_585 = UDim.new(0, 3),
            discord_gg_CDg3VKmWp9_586 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_587 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_588 = UDim.new(0, 4),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_853,
        })

        local discord_gg_CDg3VKmWp9_961 = {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
            discord_gg_CDg3VKmWp9_697 = discord_gg_CDg3VKmWp9_233.Transparency,
            discord_gg_CDg3VKmWp9_553 = discord_gg_CDg3VKmWp9_233.Color,
            discord_gg_CDg3VKmWp9_238 = discord_gg_CDg3VKmWp9_233.ScaleType,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_853,
        }

        local discord_gg_CDg3VKmWp9_186 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_233.Image)
        assert(discord_gg_CDg3VKmWp9_186, "Image must be a valid Roblox asset or a valid URL or a valid lucide icon.")

        discord_gg_CDg3VKmWp9_961.Image = discord_gg_CDg3VKmWp9_186.Url
        discord_gg_CDg3VKmWp9_961.ImageRectOffset = discord_gg_CDg3VKmWp9_186.ImageRectOffset
        discord_gg_CDg3VKmWp9_961.ImageRectSize = discord_gg_CDg3VKmWp9_186.ImageRectSize

        local discord_gg_CDg3VKmWp9_121 = discord_gg_CDg3VKmWp9_381("ImageLabel", discord_gg_CDg3VKmWp9_961)
        discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_121, discord_gg_CDg3VKmWp9_186)

        function discord_gg_CDg3VKmWp9_233:SetHeight(discord_gg_CDg3VKmWp9_232: number)
            assert(discord_gg_CDg3VKmWp9_232 > 0, "Height must be greater than 0.")

            discord_gg_CDg3VKmWp9_233.Height = discord_gg_CDg3VKmWp9_232
            discord_gg_CDg3VKmWp9_540.Size = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_232)
            discord_gg_CDg3VKmWp9_77:Resize()
        end

        function discord_gg_CDg3VKmWp9_233:SetImage(NewImage: string)
            assert(typeof(NewImage) == "string", "Image must be a string.")

            local discord_gg_CDg3VKmWp9_186 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(NewImage)
            assert(discord_gg_CDg3VKmWp9_186, "Image must be a valid Roblox asset or a valid URL or a valid lucide icon.")

            discord_gg_CDg3VKmWp9_233.RectOffset = discord_gg_CDg3VKmWp9_186.ImageRectOffset
            discord_gg_CDg3VKmWp9_233.RectSize = discord_gg_CDg3VKmWp9_186.ImageRectSize

            discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_121, discord_gg_CDg3VKmWp9_186)
            discord_gg_CDg3VKmWp9_233.Image = discord_gg_CDg3VKmWp9_186.Url
        end

        function discord_gg_CDg3VKmWp9_233:SetColor(discord_gg_CDg3VKmWp9_235: Color3)
            assert(typeof(discord_gg_CDg3VKmWp9_235) == "Color3", "Color must be a Color3 value.")

            discord_gg_CDg3VKmWp9_121.ImageColor3 = discord_gg_CDg3VKmWp9_235
            discord_gg_CDg3VKmWp9_233.Color = discord_gg_CDg3VKmWp9_235
        end

        function discord_gg_CDg3VKmWp9_233:SetRectOffset(discord_gg_CDg3VKmWp9_236: Vector2)
            assert(typeof(discord_gg_CDg3VKmWp9_236) == "Vector2", "RectOffset must be a Vector2 value.")

            discord_gg_CDg3VKmWp9_121.ImageRectOffset = discord_gg_CDg3VKmWp9_236
            discord_gg_CDg3VKmWp9_233.RectOffset = discord_gg_CDg3VKmWp9_236
        end

        function discord_gg_CDg3VKmWp9_233:SetRectSize(discord_gg_CDg3VKmWp9_237: Vector2)
            assert(typeof(discord_gg_CDg3VKmWp9_237) == "Vector2", "RectSize must be a Vector2 value.")

            discord_gg_CDg3VKmWp9_121.ImageRectSize = discord_gg_CDg3VKmWp9_237
            discord_gg_CDg3VKmWp9_233.RectSize = discord_gg_CDg3VKmWp9_237
        end

        function discord_gg_CDg3VKmWp9_233:SetScaleType(discord_gg_CDg3VKmWp9_238: Enum.ScaleType)
            assert(
                typeof(discord_gg_CDg3VKmWp9_238) == "EnumItem" and discord_gg_CDg3VKmWp9_238:IsA("ScaleType"),
                "ScaleType must be a valid Enum.ScaleType."
            )

            discord_gg_CDg3VKmWp9_121.ScaleType = discord_gg_CDg3VKmWp9_238
            discord_gg_CDg3VKmWp9_233.ScaleType = discord_gg_CDg3VKmWp9_238
        end

        function discord_gg_CDg3VKmWp9_233:SetTransparency(discord_gg_CDg3VKmWp9_234: number)
            assert(typeof(discord_gg_CDg3VKmWp9_234) == "number", "Transparency must be a number between 0 and 1.")
            assert(discord_gg_CDg3VKmWp9_234 >= 0 and discord_gg_CDg3VKmWp9_234 <= 1, "Transparency must be between 0 and 1.")

            discord_gg_CDg3VKmWp9_121.ImageTransparency = discord_gg_CDg3VKmWp9_234
            discord_gg_CDg3VKmWp9_233.Transparency = discord_gg_CDg3VKmWp9_234
        end

        function discord_gg_CDg3VKmWp9_233:SetVisible(discord_gg_CDg3VKmWp9_174: boolean)
            discord_gg_CDg3VKmWp9_233.Visible = discord_gg_CDg3VKmWp9_174

            discord_gg_CDg3VKmWp9_540.Visible = discord_gg_CDg3VKmWp9_233.Visible
            discord_gg_CDg3VKmWp9_77:Resize()
        end

        discord_gg_CDg3VKmWp9_77:Resize()

        discord_gg_CDg3VKmWp9_233.Holder = discord_gg_CDg3VKmWp9_540
        table.insert(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_233)

        discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308] = discord_gg_CDg3VKmWp9_233

        function discord_gg_CDg3VKmWp9_233:Destroy()
            discord_gg_CDg3VKmWp9_233.Destroyed = true

            if discord_gg_CDg3VKmWp9_540 then
                discord_gg_CDg3VKmWp9_540:Destroy()
            end

            local discord_gg_CDg3VKmWp9_591 = table.find(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_233)
            if discord_gg_CDg3VKmWp9_591 then
                table.remove(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_591)
            end

            discord_gg_CDg3VKmWp9_77:Resize()
            discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308] = nil
        end

        return discord_gg_CDg3VKmWp9_233
    end

    function discord_gg_CDg3VKmWp9_650:AddVideo(discord_gg_CDg3VKmWp9_308, discord_gg_CDg3VKmWp9_651)
        if self.Destroyed then return nil end

        discord_gg_CDg3VKmWp9_651 = discord_gg_CDg3VKmWp9_34:Validate(discord_gg_CDg3VKmWp9_651, discord_gg_CDg3VKmWp9_118.Video)

        local discord_gg_CDg3VKmWp9_77 = self
        local discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_77.Container

        local discord_gg_CDg3VKmWp9_239 = {
            discord_gg_CDg3VKmWp9_580 = {},
            discord_gg_CDg3VKmWp9_581 = false,

            discord_gg_CDg3VKmWp9_239 = discord_gg_CDg3VKmWp9_651.Video,
            discord_gg_CDg3VKmWp9_240 = discord_gg_CDg3VKmWp9_651.Looped,
            discord_gg_CDg3VKmWp9_241 = discord_gg_CDg3VKmWp9_651.Playing,
            discord_gg_CDg3VKmWp9_242 = discord_gg_CDg3VKmWp9_651.Volume,
            discord_gg_CDg3VKmWp9_232 = discord_gg_CDg3VKmWp9_651.Height,
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_651.Visible,

            discord_gg_CDg3VKmWp9_658 = "Video",
        }

        local discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_651.Height),
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_239.Visible,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
        })

        local discord_gg_CDg3VKmWp9_853 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 1),
            discord_gg_CDg3VKmWp9_437 = "MainColor",
            discord_gg_CDg3VKmWp9_761 = "OutlineColor",
            discord_gg_CDg3VKmWp9_120 = 1,
            discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 1),
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        })

        discord_gg_CDg3VKmWp9_381("UIPadding", {
            discord_gg_CDg3VKmWp9_585 = UDim.new(0, 3),
            discord_gg_CDg3VKmWp9_586 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_587 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_588 = UDim.new(0, 4),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_853,
        })

        local discord_gg_CDg3VKmWp9_962 = discord_gg_CDg3VKmWp9_381("VideoFrame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
            discord_gg_CDg3VKmWp9_239 = discord_gg_CDg3VKmWp9_239.Video,
            discord_gg_CDg3VKmWp9_240 = discord_gg_CDg3VKmWp9_239.Looped,
            discord_gg_CDg3VKmWp9_242 = discord_gg_CDg3VKmWp9_239.Volume,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_853,
        })

        discord_gg_CDg3VKmWp9_962.Playing = discord_gg_CDg3VKmWp9_239.Playing

        function discord_gg_CDg3VKmWp9_239:SetHeight(discord_gg_CDg3VKmWp9_232: number)
            assert(discord_gg_CDg3VKmWp9_232 > 0, "Height must be greater than 0.")

            discord_gg_CDg3VKmWp9_239.Height = discord_gg_CDg3VKmWp9_232
            discord_gg_CDg3VKmWp9_540.Size = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_232)
            discord_gg_CDg3VKmWp9_77:Resize()
        end

        function discord_gg_CDg3VKmWp9_239:SetVideo(NewVideo: string)
            assert(typeof(NewVideo) == "string", "Video must be a string.")

            discord_gg_CDg3VKmWp9_962.Video = NewVideo
            discord_gg_CDg3VKmWp9_239.Video = NewVideo
        end

        function discord_gg_CDg3VKmWp9_239:SetLooped(discord_gg_CDg3VKmWp9_240: boolean)
            assert(typeof(discord_gg_CDg3VKmWp9_240) == "boolean", "Looped must be a boolean.")

            discord_gg_CDg3VKmWp9_962.Looped = discord_gg_CDg3VKmWp9_240
            discord_gg_CDg3VKmWp9_239.Looped = discord_gg_CDg3VKmWp9_240
        end

        function discord_gg_CDg3VKmWp9_239:SetVolume(discord_gg_CDg3VKmWp9_242: number)
            assert(typeof(discord_gg_CDg3VKmWp9_242) == "number", "Volume must be a number between 0 and 10.")

            discord_gg_CDg3VKmWp9_962.Volume = discord_gg_CDg3VKmWp9_242
            discord_gg_CDg3VKmWp9_239.Volume = discord_gg_CDg3VKmWp9_242
        end

        function discord_gg_CDg3VKmWp9_239:SetPlaying(discord_gg_CDg3VKmWp9_241: boolean)
            assert(typeof(discord_gg_CDg3VKmWp9_241) == "boolean", "Playing must be a boolean.")

            discord_gg_CDg3VKmWp9_962.Playing = discord_gg_CDg3VKmWp9_241
            discord_gg_CDg3VKmWp9_239.Playing = discord_gg_CDg3VKmWp9_241
        end

        function discord_gg_CDg3VKmWp9_239:Play()
            discord_gg_CDg3VKmWp9_962.Playing = true
            discord_gg_CDg3VKmWp9_239.Playing = true
        end

        function discord_gg_CDg3VKmWp9_239:Pause()
            discord_gg_CDg3VKmWp9_962.Playing = false
            discord_gg_CDg3VKmWp9_239.Playing = false
        end

        function discord_gg_CDg3VKmWp9_239:SetVisible(discord_gg_CDg3VKmWp9_174: boolean)
            discord_gg_CDg3VKmWp9_239.Visible = discord_gg_CDg3VKmWp9_174

            discord_gg_CDg3VKmWp9_540.Visible = discord_gg_CDg3VKmWp9_239.Visible
            discord_gg_CDg3VKmWp9_77:Resize()
        end

        discord_gg_CDg3VKmWp9_77:Resize()

        discord_gg_CDg3VKmWp9_239.Holder = discord_gg_CDg3VKmWp9_540
        discord_gg_CDg3VKmWp9_239.VideoFrame = discord_gg_CDg3VKmWp9_962
        table.insert(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_239)

        discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308] = discord_gg_CDg3VKmWp9_239

        function discord_gg_CDg3VKmWp9_239:Destroy()
            discord_gg_CDg3VKmWp9_239.Destroyed = true

            if discord_gg_CDg3VKmWp9_239.Connections then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_239.Connections do
                    discord_gg_CDg3VKmWp9_274:Disconnect()
                end
            end

            if discord_gg_CDg3VKmWp9_540 then
                discord_gg_CDg3VKmWp9_540:Destroy()
            end

            local discord_gg_CDg3VKmWp9_591 = table.find(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_239)
            if discord_gg_CDg3VKmWp9_591 then
                table.remove(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_591)
            end

            discord_gg_CDg3VKmWp9_77:Resize()
            discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308] = nil
        end

        return discord_gg_CDg3VKmWp9_239
    end

    function discord_gg_CDg3VKmWp9_650:AddUIPassthrough(discord_gg_CDg3VKmWp9_308, discord_gg_CDg3VKmWp9_651)
        if self.Destroyed then return nil end

        discord_gg_CDg3VKmWp9_651 = discord_gg_CDg3VKmWp9_34:Validate(discord_gg_CDg3VKmWp9_651, discord_gg_CDg3VKmWp9_118.UIPassthrough)

        local discord_gg_CDg3VKmWp9_77 = self
        local discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_77.Container

        assert(discord_gg_CDg3VKmWp9_651.Instance, "Instance must be provided.")
        assert(
            typeof(discord_gg_CDg3VKmWp9_651.Instance) == "Instance" and discord_gg_CDg3VKmWp9_651.Instance:IsA("GuiBase2d"),
            "Instance must inherit from GuiBase2d."
        )
        assert(typeof(discord_gg_CDg3VKmWp9_651.Height) == "number" and discord_gg_CDg3VKmWp9_651.Height > 0, "Height must be a number greater than 0.")

        local discord_gg_CDg3VKmWp9_963 = {
            discord_gg_CDg3VKmWp9_580 = {},
            discord_gg_CDg3VKmWp9_581 = false,

            discord_gg_CDg3VKmWp9_244 = discord_gg_CDg3VKmWp9_651.Instance,
            discord_gg_CDg3VKmWp9_232 = discord_gg_CDg3VKmWp9_651.Height,
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_651.Visible,

            discord_gg_CDg3VKmWp9_658 = "UIPassthrough",
        }

        local discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_651.Height),
            discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_963.Visible,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
        })

        discord_gg_CDg3VKmWp9_963.Instance.Parent = discord_gg_CDg3VKmWp9_540

        discord_gg_CDg3VKmWp9_77:Resize()

        function discord_gg_CDg3VKmWp9_963:SetHeight(discord_gg_CDg3VKmWp9_232: number)
            assert(typeof(discord_gg_CDg3VKmWp9_232) == "number" and discord_gg_CDg3VKmWp9_232 > 0, "Height must be a number greater than 0.")

            discord_gg_CDg3VKmWp9_963.Height = discord_gg_CDg3VKmWp9_232
            discord_gg_CDg3VKmWp9_540.Size = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_232)
            discord_gg_CDg3VKmWp9_77:Resize()
        end

        function discord_gg_CDg3VKmWp9_963:SetInstance(discord_gg_CDg3VKmWp9_244: Instance)
            assert(discord_gg_CDg3VKmWp9_244, "Instance must be provided.")
            assert(
                typeof(discord_gg_CDg3VKmWp9_244) == "Instance" and discord_gg_CDg3VKmWp9_244:IsA("GuiBase2d"),
                "Instance must inherit from GuiBase2d."
            )

            if discord_gg_CDg3VKmWp9_963.Instance then
                discord_gg_CDg3VKmWp9_963.Instance.Parent = nil
            end

            discord_gg_CDg3VKmWp9_963.Instance = discord_gg_CDg3VKmWp9_244
            discord_gg_CDg3VKmWp9_963.Instance.Parent = discord_gg_CDg3VKmWp9_540
        end

        function discord_gg_CDg3VKmWp9_963:SetVisible(discord_gg_CDg3VKmWp9_174: boolean)
            discord_gg_CDg3VKmWp9_963.Visible = discord_gg_CDg3VKmWp9_174

            discord_gg_CDg3VKmWp9_540.Visible = discord_gg_CDg3VKmWp9_963.Visible
            discord_gg_CDg3VKmWp9_77:Resize()
        end

        discord_gg_CDg3VKmWp9_963.Holder = discord_gg_CDg3VKmWp9_540
        table.insert(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_963)

        discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308] = discord_gg_CDg3VKmWp9_963

        function discord_gg_CDg3VKmWp9_963:Destroy()
            discord_gg_CDg3VKmWp9_963.Destroyed = true

            if discord_gg_CDg3VKmWp9_963.Connections then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_963.Connections do
                    discord_gg_CDg3VKmWp9_274:Disconnect()
                end
            end

            if discord_gg_CDg3VKmWp9_540 then
                discord_gg_CDg3VKmWp9_540:Destroy()
            end

            local discord_gg_CDg3VKmWp9_591 = table.find(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_963)
            if discord_gg_CDg3VKmWp9_591 then
                table.remove(discord_gg_CDg3VKmWp9_77.Elements, discord_gg_CDg3VKmWp9_591)
            end

            discord_gg_CDg3VKmWp9_77:Resize()
            discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308] = nil
        end

        return discord_gg_CDg3VKmWp9_963
    end

    function discord_gg_CDg3VKmWp9_650:AddDependencyBox()
        if self.Destroyed then return nil end

        local discord_gg_CDg3VKmWp9_77 = self
        local discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_77.Container

        local discord_gg_CDg3VKmWp9_964
        local discord_gg_CDg3VKmWp9_965

        do
            discord_gg_CDg3VKmWp9_964 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
                discord_gg_CDg3VKmWp9_174 = false,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
            })

            discord_gg_CDg3VKmWp9_965 = discord_gg_CDg3VKmWp9_381("UIListLayout", {
                discord_gg_CDg3VKmWp9_166 = UDim.new(0, 8),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_964,
            })
        end

        local discord_gg_CDg3VKmWp9_966 = {
            discord_gg_CDg3VKmWp9_580 = {},
            discord_gg_CDg3VKmWp9_581 = false,

            discord_gg_CDg3VKmWp9_174 = false,
            discord_gg_CDg3VKmWp9_967 = {},

            discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_964,
            discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_964,

            discord_gg_CDg3VKmWp9_968 = {},
            discord_gg_CDg3VKmWp9_51 = {}
        }

        function discord_gg_CDg3VKmWp9_966:Resize()
            discord_gg_CDg3VKmWp9_964.Size = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_965.AbsoluteContentSize.Y / discord_gg_CDg3VKmWp9_34.DPIScale)
            discord_gg_CDg3VKmWp9_77:Resize()
        end

        function discord_gg_CDg3VKmWp9_966:Update(CancelSearch)
            for discord_gg_CDg3VKmWp9_26, Dependency in discord_gg_CDg3VKmWp9_966.Dependencies do
                local discord_gg_CDg3VKmWp9_969 = Dependency[1]
                local discord_gg_CDg3VKmWp9_554 = Dependency[2]

                if discord_gg_CDg3VKmWp9_969.Disabled then
                    discord_gg_CDg3VKmWp9_964.Visible = false
                    discord_gg_CDg3VKmWp9_966.Visible = false
                    return
                end

                if discord_gg_CDg3VKmWp9_969.Type == "Toggle" and discord_gg_CDg3VKmWp9_969.Value ~= discord_gg_CDg3VKmWp9_554 then
                    discord_gg_CDg3VKmWp9_964.Visible = false
                    discord_gg_CDg3VKmWp9_966.Visible = false
                    return
                elseif discord_gg_CDg3VKmWp9_969.Type == "Dropdown" then
                    if typeof(discord_gg_CDg3VKmWp9_969.Value) == "table" then
                        if not discord_gg_CDg3VKmWp9_969.Value[discord_gg_CDg3VKmWp9_554] then
                            discord_gg_CDg3VKmWp9_964.Visible = false
                            discord_gg_CDg3VKmWp9_966.Visible = false
                            return
                        end
                    else
                        if discord_gg_CDg3VKmWp9_969.Value ~= discord_gg_CDg3VKmWp9_554 then
                            discord_gg_CDg3VKmWp9_964.Visible = false
                            discord_gg_CDg3VKmWp9_966.Visible = false
                            return
                        end
                    end
                end
            end

            discord_gg_CDg3VKmWp9_966.Visible = true
            discord_gg_CDg3VKmWp9_964.Visible = true
            if not discord_gg_CDg3VKmWp9_34.Searching then
                task.defer(function()
                    discord_gg_CDg3VKmWp9_966:Resize()
                end)
            elseif not CancelSearch then
                discord_gg_CDg3VKmWp9_34:UpdateSearch(discord_gg_CDg3VKmWp9_34.SearchText)
            end
        end

        table.insert(discord_gg_CDg3VKmWp9_966.Connections, discord_gg_CDg3VKmWp9_965:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            if not discord_gg_CDg3VKmWp9_966.Visible then
                return
            end

            discord_gg_CDg3VKmWp9_966:Resize()
        end))

        function discord_gg_CDg3VKmWp9_966:SetupDependencies(discord_gg_CDg3VKmWp9_967)
            for discord_gg_CDg3VKmWp9_26, Dependency in discord_gg_CDg3VKmWp9_967 do
                assert(typeof(Dependency) == "table", "Dependency should be a table.")
                assert(Dependency[1] ~= nil, "Dependency is missing element.")
                assert(Dependency[2] ~= nil, "Dependency is missing expected value.")
            end

            discord_gg_CDg3VKmWp9_966.Dependencies = discord_gg_CDg3VKmWp9_967
            discord_gg_CDg3VKmWp9_966:Update()
        end

        table.insert(discord_gg_CDg3VKmWp9_966.Connections, discord_gg_CDg3VKmWp9_964:GetPropertyChangedSignal("Visible"):Connect(function()
            discord_gg_CDg3VKmWp9_966:Resize()
        end))

        setmetatable(discord_gg_CDg3VKmWp9_966, discord_gg_CDg3VKmWp9_817)

        table.insert(discord_gg_CDg3VKmWp9_77.DependencyBoxes, discord_gg_CDg3VKmWp9_966)
        table.insert(discord_gg_CDg3VKmWp9_34.DependencyBoxes, discord_gg_CDg3VKmWp9_966)

        function discord_gg_CDg3VKmWp9_966:Destroy()
            discord_gg_CDg3VKmWp9_966.Destroyed = true

            if discord_gg_CDg3VKmWp9_966.Connections then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_966.Connections do
                    discord_gg_CDg3VKmWp9_274:Disconnect()
                end
            end

            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_969 in discord_gg_CDg3VKmWp9_966.Elements do
                if discord_gg_CDg3VKmWp9_969.Destroy then
                    discord_gg_CDg3VKmWp9_969:Destroy()
                end
            end

            for discord_gg_CDg3VKmWp9_26, SubDepbox in discord_gg_CDg3VKmWp9_966.DependencyBoxes do
                if SubDepbox.Destroy then
                    SubDepbox:Destroy()
                end
            end

            if discord_gg_CDg3VKmWp9_964 then
                discord_gg_CDg3VKmWp9_964:Destroy()
            end

            local discord_gg_CDg3VKmWp9_591 = table.find(discord_gg_CDg3VKmWp9_77.DependencyBoxes, discord_gg_CDg3VKmWp9_966)
            if discord_gg_CDg3VKmWp9_591 then
                table.remove(discord_gg_CDg3VKmWp9_77.DependencyBoxes, discord_gg_CDg3VKmWp9_591)
            end

            local discord_gg_CDg3VKmWp9_970 = table.find(discord_gg_CDg3VKmWp9_34.DependencyBoxes, discord_gg_CDg3VKmWp9_966)
            if discord_gg_CDg3VKmWp9_970 then
                table.remove(discord_gg_CDg3VKmWp9_34.DependencyBoxes, discord_gg_CDg3VKmWp9_970)
            end
        end

        return discord_gg_CDg3VKmWp9_966
    end

    function discord_gg_CDg3VKmWp9_650:AddDependencyGroupbox()
        if self.Destroyed then return nil end

        local discord_gg_CDg3VKmWp9_77 = self
        local discord_gg_CDg3VKmWp9_971 = discord_gg_CDg3VKmWp9_77.Tab
        local discord_gg_CDg3VKmWp9_539 = discord_gg_CDg3VKmWp9_77.BoxHolder

        local discord_gg_CDg3VKmWp9_972
        local discord_gg_CDg3VKmWp9_973

        do
            discord_gg_CDg3VKmWp9_972 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_437 = "BackgroundColor",
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 0),
                discord_gg_CDg3VKmWp9_174 = false,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_539,
            })
            table.insert(
                discord_gg_CDg3VKmWp9_34.Corners,
                discord_gg_CDg3VKmWp9_381("UICorner", {
                    discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_972,
                })
            )
            discord_gg_CDg3VKmWp9_34:AddOutline(discord_gg_CDg3VKmWp9_972)

            discord_gg_CDg3VKmWp9_973 = discord_gg_CDg3VKmWp9_381("UIListLayout", {
                discord_gg_CDg3VKmWp9_166 = UDim.new(0, 8),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_972,
            })
            discord_gg_CDg3VKmWp9_381("UIPadding", {
                discord_gg_CDg3VKmWp9_585 = UDim.new(0, 7),
                discord_gg_CDg3VKmWp9_586 = UDim.new(0, 7),
                discord_gg_CDg3VKmWp9_587 = UDim.new(0, 7),
                discord_gg_CDg3VKmWp9_588 = UDim.new(0, 7),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_972,
            })
        end

        local discord_gg_CDg3VKmWp9_974 = {
            discord_gg_CDg3VKmWp9_580 = {},
            discord_gg_CDg3VKmWp9_581 = false,

            discord_gg_CDg3VKmWp9_174 = false,
            discord_gg_CDg3VKmWp9_967 = {},

            discord_gg_CDg3VKmWp9_539 = discord_gg_CDg3VKmWp9_539,
            discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_972,
            discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_972,

            discord_gg_CDg3VKmWp9_971 = discord_gg_CDg3VKmWp9_971,
            discord_gg_CDg3VKmWp9_968 = {},
            discord_gg_CDg3VKmWp9_51 = {},
        }

        function discord_gg_CDg3VKmWp9_974:Resize()
            discord_gg_CDg3VKmWp9_972.Size = UDim2.new(1, 0, 0, (discord_gg_CDg3VKmWp9_973.AbsoluteContentSize.Y / discord_gg_CDg3VKmWp9_34.DPIScale) + 18)
            if discord_gg_CDg3VKmWp9_77.RefreshBoxHolderLayout then
                discord_gg_CDg3VKmWp9_77.RefreshBoxHolderLayout()
            end
        end

        function discord_gg_CDg3VKmWp9_974:Update(CancelSearch)
            for discord_gg_CDg3VKmWp9_26, Dependency in discord_gg_CDg3VKmWp9_974.Dependencies do
                local discord_gg_CDg3VKmWp9_969 = Dependency[1]
                local discord_gg_CDg3VKmWp9_554 = Dependency[2]

                if discord_gg_CDg3VKmWp9_969.Disabled then
                    discord_gg_CDg3VKmWp9_972.Visible = false
                    discord_gg_CDg3VKmWp9_974.Visible = false
                    return
                end

                if discord_gg_CDg3VKmWp9_969.Type == "Toggle" and discord_gg_CDg3VKmWp9_969.Value ~= discord_gg_CDg3VKmWp9_554 then
                    discord_gg_CDg3VKmWp9_972.Visible = false
                    discord_gg_CDg3VKmWp9_974.Visible = false
                    return
                elseif discord_gg_CDg3VKmWp9_969.Type == "Dropdown" then
                    if typeof(discord_gg_CDg3VKmWp9_969.Value) == "table" then
                        if not discord_gg_CDg3VKmWp9_969.Value[discord_gg_CDg3VKmWp9_554] then
                            discord_gg_CDg3VKmWp9_972.Visible = false
                            discord_gg_CDg3VKmWp9_974.Visible = false
                            return
                        end
                    else
                        if discord_gg_CDg3VKmWp9_969.Value ~= discord_gg_CDg3VKmWp9_554 then
                            discord_gg_CDg3VKmWp9_972.Visible = false
                            discord_gg_CDg3VKmWp9_974.Visible = false
                            return
                        end
                    end
                end
            end

            discord_gg_CDg3VKmWp9_974.Visible = true
            if not discord_gg_CDg3VKmWp9_34.Searching then
                discord_gg_CDg3VKmWp9_972.Visible = true
                discord_gg_CDg3VKmWp9_974:Resize()
            elseif not CancelSearch then
                discord_gg_CDg3VKmWp9_34:UpdateSearch(discord_gg_CDg3VKmWp9_34.SearchText)
            end
        end

        function discord_gg_CDg3VKmWp9_974:SetupDependencies(discord_gg_CDg3VKmWp9_967)
            for discord_gg_CDg3VKmWp9_26, Dependency in discord_gg_CDg3VKmWp9_967 do
                assert(typeof(Dependency) == "table", "Dependency should be a table.")
                assert(Dependency[1] ~= nil, "Dependency is missing element.")
                assert(Dependency[2] ~= nil, "Dependency is missing expected value.")
            end

            discord_gg_CDg3VKmWp9_974.Dependencies = discord_gg_CDg3VKmWp9_967
            discord_gg_CDg3VKmWp9_974:Update()
        end

        setmetatable(discord_gg_CDg3VKmWp9_974, discord_gg_CDg3VKmWp9_817)

        table.insert(discord_gg_CDg3VKmWp9_971.DependencyGroupboxes, discord_gg_CDg3VKmWp9_974)
        table.insert(discord_gg_CDg3VKmWp9_34.DependencyBoxes, discord_gg_CDg3VKmWp9_974 :: any)

        function discord_gg_CDg3VKmWp9_974:Destroy()
            discord_gg_CDg3VKmWp9_974.Destroyed = true

            if discord_gg_CDg3VKmWp9_974.Connections then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_974.Connections do
                    discord_gg_CDg3VKmWp9_274:Disconnect()
                end
            end

            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_969 in discord_gg_CDg3VKmWp9_974.Elements do
                if discord_gg_CDg3VKmWp9_969.Destroy then
                    discord_gg_CDg3VKmWp9_969:Destroy()
                end
            end

            for discord_gg_CDg3VKmWp9_26, SubDepbox in discord_gg_CDg3VKmWp9_974.DependencyBoxes do
                if SubDepbox.Destroy then
                    SubDepbox:Destroy()
                end
            end

            if discord_gg_CDg3VKmWp9_972 then
                discord_gg_CDg3VKmWp9_972:Destroy()
            end

            local discord_gg_CDg3VKmWp9_591 = table.find(discord_gg_CDg3VKmWp9_971.DependencyGroupboxes, discord_gg_CDg3VKmWp9_974)
            if discord_gg_CDg3VKmWp9_591 then
                table.remove(discord_gg_CDg3VKmWp9_971.DependencyGroupboxes, discord_gg_CDg3VKmWp9_591)
            end

            local discord_gg_CDg3VKmWp9_970 = table.find(discord_gg_CDg3VKmWp9_34.DependencyBoxes, discord_gg_CDg3VKmWp9_974)
            if discord_gg_CDg3VKmWp9_970 then
                table.remove(discord_gg_CDg3VKmWp9_34.DependencyBoxes, discord_gg_CDg3VKmWp9_970)
            end
        end

        return discord_gg_CDg3VKmWp9_974
    end

    discord_gg_CDg3VKmWp9_817.__index = discord_gg_CDg3VKmWp9_650
    discord_gg_CDg3VKmWp9_817.__namecall = function(discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_284, ...)
        return discord_gg_CDg3VKmWp9_650[discord_gg_CDg3VKmWp9_284](...)
    end
end

function discord_gg_CDg3VKmWp9_34:SetFont(discord_gg_CDg3VKmWp9_127)
    if typeof(discord_gg_CDg3VKmWp9_127) == "EnumItem" then
        discord_gg_CDg3VKmWp9_127 = discord_gg_CDg3VKmWp9_105.fromEnum(discord_gg_CDg3VKmWp9_127 :: any)
    end

    discord_gg_CDg3VKmWp9_34.Scheme.Font = discord_gg_CDg3VKmWp9_127
    discord_gg_CDg3VKmWp9_34:UpdateColorsUsingRegistry()

    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_583 in discord_gg_CDg3VKmWp9_7 do
        if discord_gg_CDg3VKmWp9_583.DoesWrap then
            discord_gg_CDg3VKmWp9_583:Display()
            discord_gg_CDg3VKmWp9_583.Parent:Resize()
        end
    end

    if discord_gg_CDg3VKmWp9_34.Window and discord_gg_CDg3VKmWp9_34.Window.RefreshTitleSize then
        discord_gg_CDg3VKmWp9_34.Window:RefreshTitleSize()
    end
end

function discord_gg_CDg3VKmWp9_34:SetBackgroundImage(discord_gg_CDg3VKmWp9_233: string | number)
    assert(typeof(discord_gg_CDg3VKmWp9_233) == "string" or typeof(discord_gg_CDg3VKmWp9_233) == "number", "Expected string/number got " .. typeof(discord_gg_CDg3VKmWp9_233))

    discord_gg_CDg3VKmWp9_34.Scheme.BackgroundImage = discord_gg_CDg3VKmWp9_233
    if discord_gg_CDg3VKmWp9_34.Window then
        discord_gg_CDg3VKmWp9_34.Window:SetBackgroundImage(discord_gg_CDg3VKmWp9_233)
    end

    discord_gg_CDg3VKmWp9_34:UpdateColorsUsingRegistry()
end

function discord_gg_CDg3VKmWp9_34:UpdateNotificationPositions(Snap: boolean?)
    local discord_gg_CDg3VKmWp9_975 = discord_gg_CDg3VKmWp9_34.NotifySide:lower() == "left"
    local discord_gg_CDg3VKmWp9_976 = discord_gg_CDg3VKmWp9_975 and 0 or 1
    local discord_gg_CDg3VKmWp9_977 = 0

    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_979 in discord_gg_CDg3VKmWp9_440 do
        local discord_gg_CDg3VKmWp9_823 = discord_gg_CDg3VKmWp9_34.Notifications[discord_gg_CDg3VKmWp9_979]
        if not (discord_gg_CDg3VKmWp9_823 and discord_gg_CDg3VKmWp9_979.Parent) then continue end

        local discord_gg_CDg3VKmWp9_978 = UDim2.new(discord_gg_CDg3VKmWp9_976, 0, 0, discord_gg_CDg3VKmWp9_977)
        if Snap or not discord_gg_CDg3VKmWp9_823.PositionInitialized then
            discord_gg_CDg3VKmWp9_979.Position = discord_gg_CDg3VKmWp9_978
            discord_gg_CDg3VKmWp9_823.PositionInitialized = true

        elseif discord_gg_CDg3VKmWp9_979.Position ~= discord_gg_CDg3VKmWp9_978 then
            TweenService:Create(discord_gg_CDg3VKmWp9_979, discord_gg_CDg3VKmWp9_34.NotifyTweenInfo, {
                discord_gg_CDg3VKmWp9_143 = discord_gg_CDg3VKmWp9_978,
            }):Play()
        end

        discord_gg_CDg3VKmWp9_977 = discord_gg_CDg3VKmWp9_977 + discord_gg_CDg3VKmWp9_979.AbsoluteSize.Y / discord_gg_CDg3VKmWp9_34.DPIScale + 8
    end
end

function discord_gg_CDg3VKmWp9_34:SetNotifySide(discord_gg_CDg3VKmWp9_170: string)
    discord_gg_CDg3VKmWp9_34.NotifySide = discord_gg_CDg3VKmWp9_170

    local discord_gg_CDg3VKmWp9_975 = discord_gg_CDg3VKmWp9_170:lower() == "left"
    if discord_gg_CDg3VKmWp9_975 then
        discord_gg_CDg3VKmWp9_439.AnchorPoint = Vector2.new(0, 0)
        discord_gg_CDg3VKmWp9_439.Position = UDim2.fromOffset(6, 6)
    else
        discord_gg_CDg3VKmWp9_439.AnchorPoint = Vector2.new(1, 0)
        discord_gg_CDg3VKmWp9_439.Position = UDim2.new(1, -6, 0, 6)
    end

    for discord_gg_CDg3VKmWp9_979 in discord_gg_CDg3VKmWp9_34.Notifications do
        if not (discord_gg_CDg3VKmWp9_979 and discord_gg_CDg3VKmWp9_979.Parent) then continue end
        discord_gg_CDg3VKmWp9_979.AnchorPoint = if discord_gg_CDg3VKmWp9_975 then Vector2.new(0, 0) else Vector2.new(1, 0)
    end

    if discord_gg_CDg3VKmWp9_34.UpdateNotificationPositions then
        discord_gg_CDg3VKmWp9_34:UpdateNotificationPositions(true)
    end
end

function discord_gg_CDg3VKmWp9_34:Notify(...)
    local discord_gg_CDg3VKmWp9_823 = {}
    local discord_gg_CDg3VKmWp9_651 = select(1, ...)

    if typeof(discord_gg_CDg3VKmWp9_651) == "table" then
        discord_gg_CDg3VKmWp9_823.Title = tostring(discord_gg_CDg3VKmWp9_651.Title)
        discord_gg_CDg3VKmWp9_823.TitleColor = discord_gg_CDg3VKmWp9_651.TitleColor

        discord_gg_CDg3VKmWp9_823.Description = tostring(discord_gg_CDg3VKmWp9_651.Description)
        discord_gg_CDg3VKmWp9_823.DescriptionColor = discord_gg_CDg3VKmWp9_651.DescriptionColor

        discord_gg_CDg3VKmWp9_823.Time = discord_gg_CDg3VKmWp9_651.Time or 5
        discord_gg_CDg3VKmWp9_823.SoundId = discord_gg_CDg3VKmWp9_651.SoundId
        discord_gg_CDg3VKmWp9_823.Steps = discord_gg_CDg3VKmWp9_651.Steps
        discord_gg_CDg3VKmWp9_823.Persist = discord_gg_CDg3VKmWp9_651.Persist

        discord_gg_CDg3VKmWp9_823.Callback = typeof(discord_gg_CDg3VKmWp9_651.Callback) == "function" and discord_gg_CDg3VKmWp9_651.Callback or nil
        discord_gg_CDg3VKmWp9_823.Closable = discord_gg_CDg3VKmWp9_651.Closable == true

        discord_gg_CDg3VKmWp9_823.Icon = discord_gg_CDg3VKmWp9_651.Icon
        discord_gg_CDg3VKmWp9_823.BigIcon = discord_gg_CDg3VKmWp9_651.BigIcon
        discord_gg_CDg3VKmWp9_823.IconColor = discord_gg_CDg3VKmWp9_651.IconColor

        discord_gg_CDg3VKmWp9_823.Volume = tonumber(discord_gg_CDg3VKmWp9_651.Volume) or 3
    else
        discord_gg_CDg3VKmWp9_823.Description = tostring(discord_gg_CDg3VKmWp9_651)
        discord_gg_CDg3VKmWp9_823.Time = select(2, ...) or 5
        discord_gg_CDg3VKmWp9_823.SoundId = select(3, ...)
        discord_gg_CDg3VKmWp9_823.Volume = select(4, ...) or 3
    end
    discord_gg_CDg3VKmWp9_823.Destroyed = false

    local discord_gg_CDg3VKmWp9_980 = false
    local discord_gg_CDg3VKmWp9_981 = nil
    if typeof(discord_gg_CDg3VKmWp9_823.Time) == "Instance" then
        discord_gg_CDg3VKmWp9_981 = discord_gg_CDg3VKmWp9_823.Time.Destroying:Connect(function()
            discord_gg_CDg3VKmWp9_980 = true

            discord_gg_CDg3VKmWp9_981:Disconnect()
            discord_gg_CDg3VKmWp9_981 = nil
        end)
    end

    local discord_gg_CDg3VKmWp9_979 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_432 = discord_gg_CDg3VKmWp9_34.NotifySide:lower() == "left" and Vector2.new(0, 0) or Vector2.new(1, 0),
        discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(0, 0),
        discord_gg_CDg3VKmWp9_174 = false,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_439,
    })

    local discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
        discord_gg_CDg3VKmWp9_437 = "MainColor",
        discord_gg_CDg3VKmWp9_143 = discord_gg_CDg3VKmWp9_34.NotifySide:lower() == "left" and UDim2.new(-1, -8, 0, 0) or UDim2.new(1, 8, 0, 0),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 0),
        discord_gg_CDg3VKmWp9_429 = 5,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_979,
    })
    table.insert(
        discord_gg_CDg3VKmWp9_34.Corners,
        discord_gg_CDg3VKmWp9_381("UICorner", {
            discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        })
    )
    discord_gg_CDg3VKmWp9_34:AddOutline(discord_gg_CDg3VKmWp9_540)

    local discord_gg_CDg3VKmWp9_748 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 0),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
    })
    discord_gg_CDg3VKmWp9_381("UIListLayout", {
        discord_gg_CDg3VKmWp9_166 = UDim.new(0, 4),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_748,
    })
    discord_gg_CDg3VKmWp9_381("UIPadding", {
        discord_gg_CDg3VKmWp9_585 = UDim.new(0, 8),
        discord_gg_CDg3VKmWp9_586 = UDim.new(0, 8),
        discord_gg_CDg3VKmWp9_587 = UDim.new(0, 8),
        discord_gg_CDg3VKmWp9_588 = UDim.new(0, 8),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_748,
    })

    local discord_gg_CDg3VKmWp9_982
    if discord_gg_CDg3VKmWp9_823.Closable then
        discord_gg_CDg3VKmWp9_982 = discord_gg_CDg3VKmWp9_381("ImageButton", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(1, 0),
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_233 = discord_gg_CDg3VKmWp9_445 and discord_gg_CDg3VKmWp9_445.Url or "",
            discord_gg_CDg3VKmWp9_553 = "FontColor",
            discord_gg_CDg3VKmWp9_372 = discord_gg_CDg3VKmWp9_445 and discord_gg_CDg3VKmWp9_445.ImageRectOffset or Vector2.zero,
            discord_gg_CDg3VKmWp9_373 = discord_gg_CDg3VKmWp9_445 and discord_gg_CDg3VKmWp9_445.ImageRectSize or Vector2.zero,
            discord_gg_CDg3VKmWp9_697 = 0.5,
            discord_gg_CDg3VKmWp9_143 = UDim2.new(1, -8, 0, 8),
            discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(14, 14),
            discord_gg_CDg3VKmWp9_429 = 6,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
        })
        discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_982, discord_gg_CDg3VKmWp9_445)

        discord_gg_CDg3VKmWp9_982.MouseEnter:Connect(function()
            TweenService:Create(discord_gg_CDg3VKmWp9_982, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_697 = 0,
            }):Play()
        end)
        discord_gg_CDg3VKmWp9_982.MouseLeave:Connect(function()
            TweenService:Create(discord_gg_CDg3VKmWp9_982, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_697 = 0.5,
            }):Play()
        end)
        discord_gg_CDg3VKmWp9_982.MouseButton1Click:Connect(function()
            discord_gg_CDg3VKmWp9_823:Destroy("user")
        end)
    end

    local discord_gg_CDg3VKmWp9_983 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.XY,
        discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(0, 0),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_748,
    })

    if discord_gg_CDg3VKmWp9_823.BigIcon then
        discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_166 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
            discord_gg_CDg3VKmWp9_842 = Enum.VerticalAlignment.Center,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_983,
        })
    end

    local discord_gg_CDg3VKmWp9_984
    if discord_gg_CDg3VKmWp9_823.BigIcon then
        local discord_gg_CDg3VKmWp9_840 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_823.BigIcon)
        if discord_gg_CDg3VKmWp9_840 then
            discord_gg_CDg3VKmWp9_984 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(24, 24),
                discord_gg_CDg3VKmWp9_553 = discord_gg_CDg3VKmWp9_823.IconColor or "AccentColor",
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_983,
            })
            discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_984, discord_gg_CDg3VKmWp9_840)
        end
    end

    local discord_gg_CDg3VKmWp9_985 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.XY,
        discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(0, 0),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_983,
    })
    discord_gg_CDg3VKmWp9_381("UIListLayout", {
        discord_gg_CDg3VKmWp9_166 = UDim.new(0, 4),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_985,
    })

    local discord_gg_CDg3VKmWp9_986
    if discord_gg_CDg3VKmWp9_823.Title then
        discord_gg_CDg3VKmWp9_986 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(0, 0),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_985,
        })
    end

    local discord_gg_CDg3VKmWp9_987
    if discord_gg_CDg3VKmWp9_823.Icon and discord_gg_CDg3VKmWp9_986 then
        local discord_gg_CDg3VKmWp9_840 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_823.Icon)
        if discord_gg_CDg3VKmWp9_840 then
            discord_gg_CDg3VKmWp9_987 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 0.5),
                discord_gg_CDg3VKmWp9_143 = UDim2.new(0, 0, 0.5, 1),
                discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(15, 15),
                discord_gg_CDg3VKmWp9_553 = discord_gg_CDg3VKmWp9_823.IconColor or "FontColor",
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_986,
            })
            discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_987, discord_gg_CDg3VKmWp9_840)
        end
    end

    local discord_gg_CDg3VKmWp9_141
    local discord_gg_CDg3VKmWp9_988
    local discord_gg_CDg3VKmWp9_989 = 0
    local discord_gg_CDg3VKmWp9_990 = 0

    local discord_gg_CDg3VKmWp9_991

    if discord_gg_CDg3VKmWp9_823.Title then
        discord_gg_CDg3VKmWp9_141 = discord_gg_CDg3VKmWp9_381("TextLabel", {
            discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.None,
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 0.5),
            discord_gg_CDg3VKmWp9_143 = UDim2.new(0, (discord_gg_CDg3VKmWp9_987 and 21 or 0), 0.5, 0),
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(0, 0),
            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_823.Title,
            discord_gg_CDg3VKmWp9_129 = discord_gg_CDg3VKmWp9_823.TitleColor or "FontColor",
            discord_gg_CDg3VKmWp9_584 = 15,
            discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
            discord_gg_CDg3VKmWp9_402 = Enum.TextYAlignment.Center,
            discord_gg_CDg3VKmWp9_637 = true,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_986,
        })
    end

    if discord_gg_CDg3VKmWp9_823.Description then
        discord_gg_CDg3VKmWp9_988 = discord_gg_CDg3VKmWp9_381("TextLabel", {
            discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.None,
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(0, 0),
            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_823.Description,
            discord_gg_CDg3VKmWp9_129 = discord_gg_CDg3VKmWp9_823.DescriptionColor or "FontColor",
            discord_gg_CDg3VKmWp9_584 = 14,
            discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
            discord_gg_CDg3VKmWp9_637 = true,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_985,
        })
    end

    function discord_gg_CDg3VKmWp9_823:Resize()
        local discord_gg_CDg3VKmWp9_992 = discord_gg_CDg3VKmWp9_984 and 32 or 0
        local discord_gg_CDg3VKmWp9_993 = discord_gg_CDg3VKmWp9_987 and 21 or 0
        local discord_gg_CDg3VKmWp9_994 = discord_gg_CDg3VKmWp9_823.Closable and 20 or 0
        local discord_gg_CDg3VKmWp9_995 = math.max(
            40,
            (discord_gg_CDg3VKmWp9_439.AbsoluteSize.X / discord_gg_CDg3VKmWp9_34.DPIScale) - 24 - discord_gg_CDg3VKmWp9_992 - discord_gg_CDg3VKmWp9_994
        )

        if discord_gg_CDg3VKmWp9_141 then
            local discord_gg_CDg3VKmWp9_395, discord_gg_CDg3VKmWp9_396 = discord_gg_CDg3VKmWp9_34:GetTextBounds(discord_gg_CDg3VKmWp9_141.Text, discord_gg_CDg3VKmWp9_141.FontFace, discord_gg_CDg3VKmWp9_141.TextSize, discord_gg_CDg3VKmWp9_995 - discord_gg_CDg3VKmWp9_993)
            discord_gg_CDg3VKmWp9_141.Size = UDim2.fromOffset(discord_gg_CDg3VKmWp9_395, discord_gg_CDg3VKmWp9_396)
            discord_gg_CDg3VKmWp9_989 = discord_gg_CDg3VKmWp9_395 + discord_gg_CDg3VKmWp9_993
            discord_gg_CDg3VKmWp9_986.Size = UDim2.fromOffset(discord_gg_CDg3VKmWp9_989, math.max(discord_gg_CDg3VKmWp9_396, discord_gg_CDg3VKmWp9_987 and 16 or 0))
        end

        if discord_gg_CDg3VKmWp9_988 then
            local discord_gg_CDg3VKmWp9_395, discord_gg_CDg3VKmWp9_396 = discord_gg_CDg3VKmWp9_34:GetTextBounds(discord_gg_CDg3VKmWp9_988.Text, discord_gg_CDg3VKmWp9_988.FontFace, discord_gg_CDg3VKmWp9_988.TextSize, discord_gg_CDg3VKmWp9_995)
            discord_gg_CDg3VKmWp9_988.Size = UDim2.fromOffset(discord_gg_CDg3VKmWp9_395, discord_gg_CDg3VKmWp9_396)
            discord_gg_CDg3VKmWp9_990 = discord_gg_CDg3VKmWp9_395
        end

        discord_gg_CDg3VKmWp9_979.Size = UDim2.fromOffset(math.max(discord_gg_CDg3VKmWp9_989, discord_gg_CDg3VKmWp9_990) + 24 + discord_gg_CDg3VKmWp9_992 + discord_gg_CDg3VKmWp9_994, 0)

        if discord_gg_CDg3VKmWp9_34.Notifications[discord_gg_CDg3VKmWp9_979] then
            task.defer(function()
                if discord_gg_CDg3VKmWp9_823.Destroyed or not discord_gg_CDg3VKmWp9_979.Parent then
                    return
                end

                if discord_gg_CDg3VKmWp9_979.AbsoluteSize.Y <= 0 then
                    task.defer(function()
                        if discord_gg_CDg3VKmWp9_823.Destroyed or not discord_gg_CDg3VKmWp9_979.Parent then
                            return
                        end

                        discord_gg_CDg3VKmWp9_34:UpdateNotificationPositions(true)
                    end)
                    return
                end

                discord_gg_CDg3VKmWp9_34:UpdateNotificationPositions(true)
            end)
        end
    end

    function discord_gg_CDg3VKmWp9_823:ChangeTitle(discord_gg_CDg3VKmWp9_136)
        if discord_gg_CDg3VKmWp9_141 then
            discord_gg_CDg3VKmWp9_823.Title = tostring(discord_gg_CDg3VKmWp9_136)
            discord_gg_CDg3VKmWp9_141.Text = discord_gg_CDg3VKmWp9_823.Title
            discord_gg_CDg3VKmWp9_823:Resize()
        end
    end

    function discord_gg_CDg3VKmWp9_823:ChangeDescription(discord_gg_CDg3VKmWp9_136)
        if discord_gg_CDg3VKmWp9_988 then
            discord_gg_CDg3VKmWp9_823.Description = tostring(discord_gg_CDg3VKmWp9_136)
            discord_gg_CDg3VKmWp9_988.Text = discord_gg_CDg3VKmWp9_823.Description
            discord_gg_CDg3VKmWp9_823:Resize()
        end
    end

    function discord_gg_CDg3VKmWp9_823:ChangeStep(discord_gg_CDg3VKmWp9_996)
        if discord_gg_CDg3VKmWp9_991 and discord_gg_CDg3VKmWp9_823.Steps then
            discord_gg_CDg3VKmWp9_996 = math.clamp(discord_gg_CDg3VKmWp9_996 or 0, 0, discord_gg_CDg3VKmWp9_823.Steps)
            discord_gg_CDg3VKmWp9_991.Size = UDim2.fromScale(discord_gg_CDg3VKmWp9_996 / discord_gg_CDg3VKmWp9_823.Steps, 1)
        end
    end

    function discord_gg_CDg3VKmWp9_823:Destroy(discord_gg_CDg3VKmWp9_997)
        if discord_gg_CDg3VKmWp9_823.Destroyed then
            return
        end

        discord_gg_CDg3VKmWp9_997 = discord_gg_CDg3VKmWp9_997 or "script"
        discord_gg_CDg3VKmWp9_823.Destroyed = true

        if discord_gg_CDg3VKmWp9_823.Callback then
            pcall(discord_gg_CDg3VKmWp9_823.Callback, discord_gg_CDg3VKmWp9_997)
        end

        if typeof(discord_gg_CDg3VKmWp9_823.Time) == "Instance" then
            pcall(discord_gg_CDg3VKmWp9_823.Time.Destroy, discord_gg_CDg3VKmWp9_823.Time)
        end

        if discord_gg_CDg3VKmWp9_981 then
            discord_gg_CDg3VKmWp9_981:Disconnect()
        end

        if discord_gg_CDg3VKmWp9_979 then
            local discord_gg_CDg3VKmWp9_308 = table.find(discord_gg_CDg3VKmWp9_440, discord_gg_CDg3VKmWp9_979)
            if discord_gg_CDg3VKmWp9_308 then
                table.remove(discord_gg_CDg3VKmWp9_440, discord_gg_CDg3VKmWp9_308)
            end
        end

        discord_gg_CDg3VKmWp9_34:UpdateNotificationPositions()

        TweenService
            :Create(discord_gg_CDg3VKmWp9_540, discord_gg_CDg3VKmWp9_34.NotifyTweenInfo, {
                discord_gg_CDg3VKmWp9_143 = discord_gg_CDg3VKmWp9_34.NotifySide:lower() == "left" and UDim2.new(-1, -8, 0, -2) or UDim2.new(1, 8, 0, -2),
            })
            :Play()

        task.delay(discord_gg_CDg3VKmWp9_34.NotifyTweenInfo.Time, function()
            discord_gg_CDg3VKmWp9_34.Notifications[discord_gg_CDg3VKmWp9_979] = nil
            discord_gg_CDg3VKmWp9_979:Destroy()
        end)
    end

    local discord_gg_CDg3VKmWp9_998 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 7),
        discord_gg_CDg3VKmWp9_174 = (discord_gg_CDg3VKmWp9_823.Persist ~= true and typeof(discord_gg_CDg3VKmWp9_823.Time) ~= "Instance") or typeof(discord_gg_CDg3VKmWp9_823.Steps) == "number",
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_748,
    })
    local discord_gg_CDg3VKmWp9_999 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_437 = "BackgroundColor",
        discord_gg_CDg3VKmWp9_761 = "OutlineColor",
        discord_gg_CDg3VKmWp9_120 = 1,
        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(0, 3),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 2),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_998,
    })
    discord_gg_CDg3VKmWp9_991 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_437 = "AccentColor",
        discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_999,
    })

    if typeof(discord_gg_CDg3VKmWp9_823.Time) == "Instance" then
        discord_gg_CDg3VKmWp9_991.Size = UDim2.fromScale(0, 1)
    end
    if discord_gg_CDg3VKmWp9_823.SoundId then
        local discord_gg_CDg3VKmWp9_1000 = discord_gg_CDg3VKmWp9_823.SoundId
        if typeof(discord_gg_CDg3VKmWp9_1000) == "number" then
            discord_gg_CDg3VKmWp9_1000 = string.format("rbxassetid://%d", discord_gg_CDg3VKmWp9_1000)
        end

        discord_gg_CDg3VKmWp9_381("Sound", {
            discord_gg_CDg3VKmWp9_1000 = discord_gg_CDg3VKmWp9_1000,
            discord_gg_CDg3VKmWp9_242 = tonumber(discord_gg_CDg3VKmWp9_823.Volume) or 3,
            discord_gg_CDg3VKmWp9_1001 = true,
            discord_gg_CDg3VKmWp9_403 = SoundService,
        }):Destroy()
    end

    discord_gg_CDg3VKmWp9_823.Holder = discord_gg_CDg3VKmWp9_540

    table.insert(discord_gg_CDg3VKmWp9_440, discord_gg_CDg3VKmWp9_979)
    discord_gg_CDg3VKmWp9_34.Notifications[discord_gg_CDg3VKmWp9_979] = discord_gg_CDg3VKmWp9_823

    discord_gg_CDg3VKmWp9_823:Resize()

    discord_gg_CDg3VKmWp9_979.Visible = true
    TweenService:Create(discord_gg_CDg3VKmWp9_540, discord_gg_CDg3VKmWp9_34.NotifyTweenInfo, {
        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(0, 0),
    }):Play()

    task.defer(function()
        if not discord_gg_CDg3VKmWp9_823.Destroyed then
            discord_gg_CDg3VKmWp9_34:UpdateNotificationPositions(true)
        end
    end)

    task.delay(discord_gg_CDg3VKmWp9_34.NotifyTweenInfo.Time, function()
        if discord_gg_CDg3VKmWp9_823.Persist then
            return
        elseif typeof(discord_gg_CDg3VKmWp9_823.Time) == "Instance" then
            repeat
                task.wait()
            until discord_gg_CDg3VKmWp9_980 or discord_gg_CDg3VKmWp9_823.Destroyed
        else
            TweenService
                :Create(discord_gg_CDg3VKmWp9_991, discord_gg_CDg3VKmWp9_65.new(discord_gg_CDg3VKmWp9_823.Time, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                    discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(0, 1),
                })
                :Play()
            task.wait(discord_gg_CDg3VKmWp9_823.Time)
        end

        discord_gg_CDg3VKmWp9_823:Destroy("timer")
    end)

    return discord_gg_CDg3VKmWp9_823
end

function discord_gg_CDg3VKmWp9_34:CreateWindow(discord_gg_CDg3VKmWp9_1002)
    discord_gg_CDg3VKmWp9_1002 = discord_gg_CDg3VKmWp9_34:Validate(discord_gg_CDg3VKmWp9_1002, discord_gg_CDg3VKmWp9_118.Window)
    local discord_gg_CDg3VKmWp9_506: Vector2 = workspace.CurrentCamera.ViewportSize
    if RunService:IsStudio() and discord_gg_CDg3VKmWp9_506.X <= 5 and discord_gg_CDg3VKmWp9_506.Y <= 5 then
        repeat
            discord_gg_CDg3VKmWp9_506 = workspace.CurrentCamera.ViewportSize
            task.wait()
        until discord_gg_CDg3VKmWp9_506.X > 5 and discord_gg_CDg3VKmWp9_506.Y > 5
    end

    local discord_gg_CDg3VKmWp9_803 = discord_gg_CDg3VKmWp9_506.X - 64
    local discord_gg_CDg3VKmWp9_806 = discord_gg_CDg3VKmWp9_506.Y - 64

    discord_gg_CDg3VKmWp9_34.OriginalMinSize =
        Vector2.new(math.min(discord_gg_CDg3VKmWp9_34.OriginalMinSize.X, discord_gg_CDg3VKmWp9_803), math.min(discord_gg_CDg3VKmWp9_34.OriginalMinSize.Y, discord_gg_CDg3VKmWp9_806))
    discord_gg_CDg3VKmWp9_34.MinSize = Vector2.new(math.min(discord_gg_CDg3VKmWp9_1002.MinContainerWidth, discord_gg_CDg3VKmWp9_803), discord_gg_CDg3VKmWp9_34.OriginalMinSize.Y)

    discord_gg_CDg3VKmWp9_1002.Size = UDim2.fromOffset(
        math.clamp(discord_gg_CDg3VKmWp9_1002.Size.X.Offset, discord_gg_CDg3VKmWp9_34.MinSize.X, discord_gg_CDg3VKmWp9_803),
        math.clamp(discord_gg_CDg3VKmWp9_1002.Size.Y.Offset, discord_gg_CDg3VKmWp9_34.MinSize.Y, discord_gg_CDg3VKmWp9_806)
    )
    if typeof(discord_gg_CDg3VKmWp9_1002.Font) == "EnumItem" then
        discord_gg_CDg3VKmWp9_1002.Font = discord_gg_CDg3VKmWp9_105.fromEnum(discord_gg_CDg3VKmWp9_1002.Font :: any)
    end
    discord_gg_CDg3VKmWp9_1002.CornerRadius = math.min(discord_gg_CDg3VKmWp9_1002.CornerRadius, 20)

    local discord_gg_CDg3VKmWp9_164 = discord_gg_CDg3VKmWp9_1002.TabButtonsStyle

    if discord_gg_CDg3VKmWp9_1002.Compact ~= nil then
        discord_gg_CDg3VKmWp9_1002.SidebarCompacted = discord_gg_CDg3VKmWp9_1002.Compact
    end
    if discord_gg_CDg3VKmWp9_1002.SidebarMinWidth ~= nil then
        discord_gg_CDg3VKmWp9_1002.MinSidebarWidth = discord_gg_CDg3VKmWp9_1002.SidebarMinWidth
    end
    discord_gg_CDg3VKmWp9_1002.MinSidebarWidth = math.max(64 + discord_gg_CDg3VKmWp9_164.Padding * 2, discord_gg_CDg3VKmWp9_1002.MinSidebarWidth)
    discord_gg_CDg3VKmWp9_1002.SidebarCompactWidth = math.max(40 + discord_gg_CDg3VKmWp9_164.Padding * 2, discord_gg_CDg3VKmWp9_1002.SidebarCompactWidth)
    discord_gg_CDg3VKmWp9_1002.SidebarCollapseThreshold = math.clamp(discord_gg_CDg3VKmWp9_1002.SidebarCollapseThreshold, 0.1, 0.9)
    discord_gg_CDg3VKmWp9_1002.CompactWidthActivation = math.max(40 + discord_gg_CDg3VKmWp9_164.Padding * 2, discord_gg_CDg3VKmWp9_1002.CompactWidthActivation)

    discord_gg_CDg3VKmWp9_34.CornerRadius = discord_gg_CDg3VKmWp9_1002.CornerRadius
    discord_gg_CDg3VKmWp9_34:SetNotifySide(discord_gg_CDg3VKmWp9_1002.NotifySide)
    discord_gg_CDg3VKmWp9_34.ShowCustomCursor = discord_gg_CDg3VKmWp9_1002.ShowCustomCursor
    discord_gg_CDg3VKmWp9_34.Scheme.Font = discord_gg_CDg3VKmWp9_1002.Font
    discord_gg_CDg3VKmWp9_34.ToggleKeybind = discord_gg_CDg3VKmWp9_1002.ToggleKeybind
    discord_gg_CDg3VKmWp9_34.GlobalSearch = discord_gg_CDg3VKmWp9_1002.GlobalSearch

    discord_gg_CDg3VKmWp9_34.Animations = discord_gg_CDg3VKmWp9_1002.Animations
    discord_gg_CDg3VKmWp9_34.TabTransitionInfo = discord_gg_CDg3VKmWp9_65.new(
        math.max(0, discord_gg_CDg3VKmWp9_1002.TabTransitionTime or 0.22),
        Enum.EasingStyle.Quad,
        Enum.EasingDirection.Out
    )
    discord_gg_CDg3VKmWp9_34.TabSwipeOffset = math.max(1, discord_gg_CDg3VKmWp9_1002.TabSwipeOffset or 26)
    discord_gg_CDg3VKmWp9_34.TabSwipeFrom = discord_gg_CDg3VKmWp9_1002.TabSwipeFrom or "right"

    local discord_gg_CDg3VKmWp9_1003 = discord_gg_CDg3VKmWp9_1002.SearchbarSize == UDim2.fromScale(1, 1)
    local discord_gg_CDg3VKmWp9_328
    local discord_gg_CDg3VKmWp9_598
    local discord_gg_CDg3VKmWp9_1004
    local discord_gg_CDg3VKmWp9_1005
    local discord_gg_CDg3VKmWp9_1006
    local discord_gg_CDg3VKmWp9_1007
    local discord_gg_CDg3VKmWp9_886
    local discord_gg_CDg3VKmWp9_1008
    local discord_gg_CDg3VKmWp9_1009
    local discord_gg_CDg3VKmWp9_1010
    local discord_gg_CDg3VKmWp9_1011
    local discord_gg_CDg3VKmWp9_49
    local discord_gg_CDg3VKmWp9_600
    local discord_gg_CDg3VKmWp9_110
    local discord_gg_CDg3VKmWp9_1012 = false
    local discord_gg_CDg3VKmWp9_1013
    local discord_gg_CDg3VKmWp9_1014
    local discord_gg_CDg3VKmWp9_1015
    local discord_gg_CDg3VKmWp9_1016
    local discord_gg_CDg3VKmWp9_1017 = math.ceil(discord_gg_CDg3VKmWp9_1002.Size.X.Offset * 0.3)
    local discord_gg_CDg3VKmWp9_1018 = discord_gg_CDg3VKmWp9_1002.SidebarCompacted
    local discord_gg_CDg3VKmWp9_1019 = discord_gg_CDg3VKmWp9_1017
    local discord_gg_CDg3VKmWp9_1020

    do
        local discord_gg_CDg3VKmWp9_52, discord_gg_CDg3VKmWp9_53, discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_1021, discord_gg_CDg3VKmWp9_1022 = discord_gg_CDg3VKmWp9_34:AddDraggableMenu("Keybinds")
        discord_gg_CDg3VKmWp9_52.AnchorPoint = Vector2.new(0, 0.5)
        discord_gg_CDg3VKmWp9_52.Position = UDim2.new(0, 6, 0.5, 0)
        discord_gg_CDg3VKmWp9_52.Visible = false
        discord_gg_CDg3VKmWp9_1022.PaddingRight = UDim.new(0, 34)

        local discord_gg_CDg3VKmWp9_1023 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(1, 0.5),
            discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.X,
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_143 = UDim2.new(1, -8, 0, 17),
            discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(0, 22),
            discord_gg_CDg3VKmWp9_429 = 2,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_52,
        })
        discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
            discord_gg_CDg3VKmWp9_829 = Enum.HorizontalAlignment.Right,
            discord_gg_CDg3VKmWp9_842 = Enum.VerticalAlignment.Center,
            discord_gg_CDg3VKmWp9_166 = UDim.new(0, 4),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1023,
        })

        local discord_gg_CDg3VKmWp9_1024 = discord_gg_CDg3VKmWp9_381("ImageButton", {
            discord_gg_CDg3VKmWp9_124 = false,
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_553 = "FontColor",
            discord_gg_CDg3VKmWp9_522 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(18, 18),
            discord_gg_CDg3VKmWp9_174 = false,
            discord_gg_CDg3VKmWp9_429 = 2,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1023,
        })
        if discord_gg_CDg3VKmWp9_446 then
            discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_1024, discord_gg_CDg3VKmWp9_446)
        end

        local discord_gg_CDg3VKmWp9_1025 = discord_gg_CDg3VKmWp9_381("ImageButton", {
            discord_gg_CDg3VKmWp9_124 = false,
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_553 = "FontColor",
            discord_gg_CDg3VKmWp9_522 = 2,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(18, 18),
            discord_gg_CDg3VKmWp9_429 = 2,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1023,
        })
        if discord_gg_CDg3VKmWp9_441 then
            discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_1025, discord_gg_CDg3VKmWp9_441, 180)
        end

        local discord_gg_CDg3VKmWp9_1026, discord_gg_CDg3VKmWp9_1027, discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_1028 = discord_gg_CDg3VKmWp9_34:AddDraggableMenu("Visible Keybinds")
        discord_gg_CDg3VKmWp9_1026.Visible = false
        discord_gg_CDg3VKmWp9_1028.PaddingRight = UDim.new(0, 34)

        local discord_gg_CDg3VKmWp9_1029 = discord_gg_CDg3VKmWp9_381("ImageButton", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(1, 0.5),
            discord_gg_CDg3VKmWp9_124 = false,
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_553 = "FontColor",
            discord_gg_CDg3VKmWp9_143 = UDim2.new(1, -8, 0, 17),
            discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(18, 18),
            discord_gg_CDg3VKmWp9_429 = 2,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1026,
        })
        if discord_gg_CDg3VKmWp9_445 then
            discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_1029, discord_gg_CDg3VKmWp9_445)
        end

        local discord_gg_CDg3VKmWp9_55 = {
            discord_gg_CDg3VKmWp9_1030 = false,
            discord_gg_CDg3VKmWp9_175 = false,
            discord_gg_CDg3VKmWp9_1031 = false,
            discord_gg_CDg3VKmWp9_119 = discord_gg_CDg3VKmWp9_52,
            discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_53,
            discord_gg_CDg3VKmWp9_1026 = discord_gg_CDg3VKmWp9_1026,
            discord_gg_CDg3VKmWp9_1027 = discord_gg_CDg3VKmWp9_1027,
        }

        function discord_gg_CDg3VKmWp9_55:RefreshSettings()
            for discord_gg_CDg3VKmWp9_26, Child in discord_gg_CDg3VKmWp9_1027:GetChildren() do
                if Child:IsA("GuiObject") and not Child:IsA("UIListLayout") and not Child:IsA("UIPadding") then
                    Child:Destroy()
                end
            end

            for discord_gg_CDg3VKmWp9_308, Option in discord_gg_CDg3VKmWp9_10 do
                if Option.Type ~= "KeyPicker" or Option.NoUI == true then
                    continue
                end

                local discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_381("TextButton", {
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 16),
                    discord_gg_CDg3VKmWp9_136 = "",
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1027,
                })

                local discord_gg_CDg3VKmWp9_174 = Option.MenuVisible ~= false
                discord_gg_CDg3VKmWp9_381("TextLabel", {
                    discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.X,
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(22, 0),
                    discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(0, 1),
                    discord_gg_CDg3VKmWp9_136 = ("[%s] %s (%s)"):format(
                        Option.DisplayValue or Option.Value or "None",
                        Option.Text or tostring(discord_gg_CDg3VKmWp9_308),
                        Option.Mode or "Toggle"
                    ),
                    discord_gg_CDg3VKmWp9_584 = 14,
                    discord_gg_CDg3VKmWp9_686 = discord_gg_CDg3VKmWp9_174 and 0 or 0.5,
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
                })

                local discord_gg_CDg3VKmWp9_694 = discord_gg_CDg3VKmWp9_381("Frame", {
                    discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 0.5),
                    discord_gg_CDg3VKmWp9_437 = "MainColor",
                    discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 0.5),
                    discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(14, 14),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
                })
                table.insert(
                    discord_gg_CDg3VKmWp9_34.Corners,
                    discord_gg_CDg3VKmWp9_381("UICorner", {
                        discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_694,
                    })
                )
                discord_gg_CDg3VKmWp9_381("UIStroke", {
                    discord_gg_CDg3VKmWp9_235 = "OutlineColor",
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_694,
                })

                local discord_gg_CDg3VKmWp9_696 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
                    discord_gg_CDg3VKmWp9_553 = "FontColor",
                    discord_gg_CDg3VKmWp9_697 = discord_gg_CDg3VKmWp9_174 and 0 or 1,
                    discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(2, 2),
                    discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -4, 1, -4),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_694,
                })
                if discord_gg_CDg3VKmWp9_22 then
                    discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_696, discord_gg_CDg3VKmWp9_22)
                end

                discord_gg_CDg3VKmWp9_540.MouseButton1Click:Connect(function()
                    local discord_gg_CDg3VKmWp9_685 = discord_gg_CDg3VKmWp9_10[discord_gg_CDg3VKmWp9_308]
                    if not (discord_gg_CDg3VKmWp9_685 and discord_gg_CDg3VKmWp9_685.Type == "KeyPicker" and discord_gg_CDg3VKmWp9_685.SetMenuVisibility) then
                        return
                    end

                    discord_gg_CDg3VKmWp9_685:SetMenuVisibility(discord_gg_CDg3VKmWp9_685.MenuVisible == false)
                end)
            end
        end

        function discord_gg_CDg3VKmWp9_55:SetCollapsed(discord_gg_CDg3VKmWp9_175: boolean)
            discord_gg_CDg3VKmWp9_175 = discord_gg_CDg3VKmWp9_175 == true
            discord_gg_CDg3VKmWp9_55.Collapsed = discord_gg_CDg3VKmWp9_175

            discord_gg_CDg3VKmWp9_53.Visible = not discord_gg_CDg3VKmWp9_175
            discord_gg_CDg3VKmWp9_1021.Visible = not discord_gg_CDg3VKmWp9_175

            if discord_gg_CDg3VKmWp9_175 then
                local discord_gg_CDg3VKmWp9_546 = math.max(160, discord_gg_CDg3VKmWp9_52.AbsoluteSize.X / discord_gg_CDg3VKmWp9_34.DPIScale)
                discord_gg_CDg3VKmWp9_52.AutomaticSize = Enum.AutomaticSize.None
                discord_gg_CDg3VKmWp9_52.Size = UDim2.fromOffset(discord_gg_CDg3VKmWp9_546, 34)
                discord_gg_CDg3VKmWp9_1025.Rotation = 0
            else
                discord_gg_CDg3VKmWp9_52.AutomaticSize = Enum.AutomaticSize.XY
                discord_gg_CDg3VKmWp9_52.Size = UDim2.fromOffset(0, 0)
                discord_gg_CDg3VKmWp9_1025.Rotation = 180
            end
        end

        function discord_gg_CDg3VKmWp9_55:ToggleCollapsed()
            discord_gg_CDg3VKmWp9_55:SetCollapsed(not discord_gg_CDg3VKmWp9_55.Collapsed)
        end

        function discord_gg_CDg3VKmWp9_55:SetSettingsOpen(discord_gg_CDg3VKmWp9_1032: boolean)
            discord_gg_CDg3VKmWp9_1032 = discord_gg_CDg3VKmWp9_1032 == true
            if discord_gg_CDg3VKmWp9_1032 and not discord_gg_CDg3VKmWp9_55.VisibilityControl then
                return
            end

            discord_gg_CDg3VKmWp9_55.SettingsOpen = discord_gg_CDg3VKmWp9_1032
            discord_gg_CDg3VKmWp9_1026.Visible = discord_gg_CDg3VKmWp9_1032

            if discord_gg_CDg3VKmWp9_1032 then
                discord_gg_CDg3VKmWp9_55:RefreshSettings()

                local discord_gg_CDg3VKmWp9_453 = discord_gg_CDg3VKmWp9_39.AbsoluteSize
                local discord_gg_CDg3VKmWp9_519 = discord_gg_CDg3VKmWp9_52.AbsolutePosition - discord_gg_CDg3VKmWp9_39.AbsolutePosition
                local discord_gg_CDg3VKmWp9_144 = discord_gg_CDg3VKmWp9_52.AbsoluteSize
                local discord_gg_CDg3VKmWp9_1033 = discord_gg_CDg3VKmWp9_1026.AbsoluteSize

                local discord_gg_CDg3VKmWp9_395 = discord_gg_CDg3VKmWp9_519.X + discord_gg_CDg3VKmWp9_144.X + 8
                if discord_gg_CDg3VKmWp9_395 + discord_gg_CDg3VKmWp9_1033.X > discord_gg_CDg3VKmWp9_453.X then
                    discord_gg_CDg3VKmWp9_395 = discord_gg_CDg3VKmWp9_519.X - discord_gg_CDg3VKmWp9_1033.X - 8
                end

                discord_gg_CDg3VKmWp9_1026.Position = UDim2.fromOffset(
                    math.clamp(discord_gg_CDg3VKmWp9_395, 0, math.max(0, discord_gg_CDg3VKmWp9_453.X - discord_gg_CDg3VKmWp9_1033.X)),
                    math.clamp(discord_gg_CDg3VKmWp9_519.Y, 0, math.max(0, discord_gg_CDg3VKmWp9_453.Y - discord_gg_CDg3VKmWp9_1033.Y))
                )
            end
        end

        function discord_gg_CDg3VKmWp9_55:ToggleSettings()
            discord_gg_CDg3VKmWp9_55:SetSettingsOpen(not discord_gg_CDg3VKmWp9_55.SettingsOpen)
        end

        function discord_gg_CDg3VKmWp9_55:SetVisibilityControl(discord_gg_CDg3VKmWp9_418: boolean)
            discord_gg_CDg3VKmWp9_418 = discord_gg_CDg3VKmWp9_418 == true
            discord_gg_CDg3VKmWp9_55.VisibilityControl = discord_gg_CDg3VKmWp9_418
            discord_gg_CDg3VKmWp9_1024.Visible = discord_gg_CDg3VKmWp9_418
            discord_gg_CDg3VKmWp9_1022.PaddingRight = UDim.new(0, discord_gg_CDg3VKmWp9_418 and 56 or 34)

            if not discord_gg_CDg3VKmWp9_418 then
                discord_gg_CDg3VKmWp9_55:SetSettingsOpen(false)
            end
        end

        function discord_gg_CDg3VKmWp9_55:Destroy()
            local discord_gg_CDg3VKmWp9_559 = table.find(discord_gg_CDg3VKmWp9_34.DraggableElements, discord_gg_CDg3VKmWp9_1026)
            if discord_gg_CDg3VKmWp9_559 then
                table.remove(discord_gg_CDg3VKmWp9_34.DraggableElements, discord_gg_CDg3VKmWp9_559)
            end

            discord_gg_CDg3VKmWp9_1026:Destroy()
            discord_gg_CDg3VKmWp9_55.SettingsFrame = nil
            discord_gg_CDg3VKmWp9_55.SettingsContainer = nil
            discord_gg_CDg3VKmWp9_55.SettingsOpen = false
            discord_gg_CDg3VKmWp9_34.KeybindMenu = nil
        end

        discord_gg_CDg3VKmWp9_1024.MouseButton1Click:Connect(function()
            discord_gg_CDg3VKmWp9_55:ToggleSettings()
        end)
        discord_gg_CDg3VKmWp9_1025.MouseButton1Click:Connect(function()
            discord_gg_CDg3VKmWp9_55:ToggleCollapsed()
        end)
        discord_gg_CDg3VKmWp9_1029.MouseButton1Click:Connect(function()
            discord_gg_CDg3VKmWp9_55:SetSettingsOpen(false)
        end)

        discord_gg_CDg3VKmWp9_34.KeybindFrame = discord_gg_CDg3VKmWp9_52
        discord_gg_CDg3VKmWp9_34.KeybindContainer = discord_gg_CDg3VKmWp9_53
        discord_gg_CDg3VKmWp9_34.KeybindMenu = discord_gg_CDg3VKmWp9_55

        discord_gg_CDg3VKmWp9_328 = discord_gg_CDg3VKmWp9_381("TextButton", {
            discord_gg_CDg3VKmWp9_437 = function()
                return discord_gg_CDg3VKmWp9_34:GetBetterColor(discord_gg_CDg3VKmWp9_34.Scheme.BackgroundColor, -1)
            end,
            discord_gg_CDg3VKmWp9_171 = "Main",
            discord_gg_CDg3VKmWp9_136 = "",
            discord_gg_CDg3VKmWp9_432 = Vector2.zero,
            discord_gg_CDg3VKmWp9_143 = if discord_gg_CDg3VKmWp9_383() then UDim2.fromScale(0, 0) else discord_gg_CDg3VKmWp9_1002.Position,
            discord_gg_CDg3VKmWp9_144 = if discord_gg_CDg3VKmWp9_383() then UDim2.fromScale(1, 1) else discord_gg_CDg3VKmWp9_1002.Size,
            discord_gg_CDg3VKmWp9_174 = false,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_38,
        })
        table.insert(
            discord_gg_CDg3VKmWp9_34.Corners,
            discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_97 = UDim.new(0, if discord_gg_CDg3VKmWp9_383() then 0 else discord_gg_CDg3VKmWp9_1002.CornerRadius),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_328,
            })
        )
        table.insert(
            discord_gg_CDg3VKmWp9_34.Scales,
            discord_gg_CDg3VKmWp9_381("UIScale", {
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_328,
            })
        )
        discord_gg_CDg3VKmWp9_34:AddOutline(discord_gg_CDg3VKmWp9_328)
        discord_gg_CDg3VKmWp9_34:MakeLine(discord_gg_CDg3VKmWp9_328, {
            discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(0, 48),
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 1),
        })

        discord_gg_CDg3VKmWp9_598 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_437 = "OutlineColor",
            discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(discord_gg_CDg3VKmWp9_1017, 0),
            discord_gg_CDg3VKmWp9_144 = UDim2.new(0, 1, 1, -21),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_328,
            discord_gg_CDg3VKmWp9_429 = 2
        })

        local discord_gg_CDg3VKmWp9_1034 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_1002.BackgroundImage)
        discord_gg_CDg3VKmWp9_1012 = discord_gg_CDg3VKmWp9_1034 ~= nil
        discord_gg_CDg3VKmWp9_110 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
            discord_gg_CDg3VKmWp9_419 = false,
            discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 0),
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
            discord_gg_CDg3VKmWp9_238 = Enum.ScaleType.Stretch,
            discord_gg_CDg3VKmWp9_429 = discord_gg_CDg3VKmWp9_40.ZIndex + 1,
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_697 = 0.75,
            discord_gg_CDg3VKmWp9_174 = false,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_38,
        })
        if discord_gg_CDg3VKmWp9_1034 then
            discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_110, discord_gg_CDg3VKmWp9_1034)
        end

        table.insert(
            discord_gg_CDg3VKmWp9_34.Corners,
            discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_1002.CornerRadius),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_110,
            })
        )

        discord_gg_CDg3VKmWp9_34:GiveSignal(RunService.RenderStepped:Connect(function()
            if not (discord_gg_CDg3VKmWp9_110 and discord_gg_CDg3VKmWp9_328) then
                return
            end

            local discord_gg_CDg3VKmWp9_1035 = discord_gg_CDg3VKmWp9_1012 and discord_gg_CDg3VKmWp9_328.Visible
            discord_gg_CDg3VKmWp9_110.Visible = discord_gg_CDg3VKmWp9_1035

            if not discord_gg_CDg3VKmWp9_1035 then
                return
            end

            discord_gg_CDg3VKmWp9_110.Position = UDim2.fromOffset(
                discord_gg_CDg3VKmWp9_328.AbsolutePosition.X,
                discord_gg_CDg3VKmWp9_328.AbsolutePosition.Y
            )
            discord_gg_CDg3VKmWp9_110.Size = UDim2.fromOffset(
                discord_gg_CDg3VKmWp9_328.AbsoluteSize.X,
                discord_gg_CDg3VKmWp9_328.AbsoluteSize.Y
            )
        end))

        if discord_gg_CDg3VKmWp9_1002.Center and not discord_gg_CDg3VKmWp9_383() then
            discord_gg_CDg3VKmWp9_328.Position = UDim2.new(0.5, -discord_gg_CDg3VKmWp9_328.Size.X.Offset / 2, 0.5, -discord_gg_CDg3VKmWp9_328.Size.Y.Offset / 2)
        end

        discord_gg_CDg3VKmWp9_1016 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 48),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_328,
        })

        discord_gg_CDg3VKmWp9_1004 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(0, discord_gg_CDg3VKmWp9_1017, 1, 0),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1016,
        })
        discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
            discord_gg_CDg3VKmWp9_829 = Enum.HorizontalAlignment.Center,
            discord_gg_CDg3VKmWp9_842 = Enum.VerticalAlignment.Center,
            discord_gg_CDg3VKmWp9_166 = UDim.new(0, 6),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1004,
        })

        if discord_gg_CDg3VKmWp9_1002.Icon then
            local discord_gg_CDg3VKmWp9_186 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_1002.Icon)
            discord_gg_CDg3VKmWp9_1006 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
                discord_gg_CDg3VKmWp9_144 = discord_gg_CDg3VKmWp9_1002.IconSize,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1004,
            })
            if discord_gg_CDg3VKmWp9_186 then
                discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_1006, discord_gg_CDg3VKmWp9_186)
            end
        else
            discord_gg_CDg3VKmWp9_1006 = discord_gg_CDg3VKmWp9_381("TextLabel", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = discord_gg_CDg3VKmWp9_1002.IconSize,
                discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_1002.Title:sub(1, 1),
                discord_gg_CDg3VKmWp9_400 = true,
                discord_gg_CDg3VKmWp9_174 = false,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1004,
            })
        end

        discord_gg_CDg3VKmWp9_1005 = discord_gg_CDg3VKmWp9_381("TextLabel", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(0, 0),
            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_1002.Title,
            discord_gg_CDg3VKmWp9_584 = 20,
            discord_gg_CDg3VKmWp9_753 = Enum.TextTruncate.AtEnd,
            discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
            discord_gg_CDg3VKmWp9_402 = Enum.TextYAlignment.Center,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1004,
        })

        discord_gg_CDg3VKmWp9_1020 = function()
            local discord_gg_CDg3VKmWp9_993 = 0
            if discord_gg_CDg3VKmWp9_1006 and discord_gg_CDg3VKmWp9_1006.Visible then
                discord_gg_CDg3VKmWp9_993 = discord_gg_CDg3VKmWp9_1006.Size.X.Offset + 6
            end

            local discord_gg_CDg3VKmWp9_642 = math.max(0, (discord_gg_CDg3VKmWp9_1004.AbsoluteSize.X / discord_gg_CDg3VKmWp9_34.DPIScale) - discord_gg_CDg3VKmWp9_993 - 12)
            local discord_gg_CDg3VKmWp9_1036 = discord_gg_CDg3VKmWp9_34:GetTextBounds(discord_gg_CDg3VKmWp9_1005.Text, discord_gg_CDg3VKmWp9_34.Scheme.Font, discord_gg_CDg3VKmWp9_1005.TextSize)
            discord_gg_CDg3VKmWp9_1005.Size = UDim2.new(0, math.min(discord_gg_CDg3VKmWp9_1036, discord_gg_CDg3VKmWp9_642), 1, 0)
        end
        discord_gg_CDg3VKmWp9_1020()

        discord_gg_CDg3VKmWp9_1007 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(1, 0.5),
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_143 = UDim2.new(1, -10, 0.5, 0),
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -discord_gg_CDg3VKmWp9_1017 - 19, 1, -16),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1016,
        })

        discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
            discord_gg_CDg3VKmWp9_829 = Enum.HorizontalAlignment.Left,
            discord_gg_CDg3VKmWp9_842 = Enum.VerticalAlignment.Center,
            discord_gg_CDg3VKmWp9_166 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1007,
        })

        discord_gg_CDg3VKmWp9_1008 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(discord_gg_CDg3VKmWp9_1002.DisableSearch and 1 or 0.5, 1),
            discord_gg_CDg3VKmWp9_174 = false,
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1007,
        })

        discord_gg_CDg3VKmWp9_381("UIFlexItem", {
            discord_gg_CDg3VKmWp9_692 = Enum.UIFlexMode.Grow,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1008,
        })

        discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Vertical,
            discord_gg_CDg3VKmWp9_829 = Enum.HorizontalAlignment.Left,
            discord_gg_CDg3VKmWp9_842 = Enum.VerticalAlignment.Center,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1008,
        })

        discord_gg_CDg3VKmWp9_381("UIPadding", {
            discord_gg_CDg3VKmWp9_585 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_586 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_587 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_588 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1008,
        })

        discord_gg_CDg3VKmWp9_1009 = discord_gg_CDg3VKmWp9_381("TextLabel", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 0),
            discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
            discord_gg_CDg3VKmWp9_136 = "",
            discord_gg_CDg3VKmWp9_584 = 14,
            discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1008,
        })

        discord_gg_CDg3VKmWp9_1010 = discord_gg_CDg3VKmWp9_381("TextLabel", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 0),
            discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
            discord_gg_CDg3VKmWp9_136 = "",
            discord_gg_CDg3VKmWp9_637 = true,
            discord_gg_CDg3VKmWp9_584 = 14,
            discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
            discord_gg_CDg3VKmWp9_686 = 0.5,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1008,
        })

        discord_gg_CDg3VKmWp9_886 = discord_gg_CDg3VKmWp9_381("TextBox", {
            discord_gg_CDg3VKmWp9_437 = "MainColor",
            discord_gg_CDg3VKmWp9_854 = "Search",
            discord_gg_CDg3VKmWp9_144 = discord_gg_CDg3VKmWp9_1002.SearchbarSize,
            discord_gg_CDg3VKmWp9_400 = true,
            discord_gg_CDg3VKmWp9_174 = not (discord_gg_CDg3VKmWp9_1002.DisableSearch or false),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1007,
        })
        discord_gg_CDg3VKmWp9_381("UIFlexItem", {
            discord_gg_CDg3VKmWp9_692 = Enum.UIFlexMode.Shrink,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_886,
        })
        table.insert(
            discord_gg_CDg3VKmWp9_34.Corners,
            discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_1002.CornerRadius),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_886,
            })
        )
        discord_gg_CDg3VKmWp9_381("UIPadding", {
            discord_gg_CDg3VKmWp9_585 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_586 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_587 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_588 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_886,
        })
        local discord_gg_CDg3VKmWp9_1037 = discord_gg_CDg3VKmWp9_381("UIStroke", {
            discord_gg_CDg3VKmWp9_235 = "OutlineColor",
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_886,
        })

        discord_gg_CDg3VKmWp9_34:GiveSignal(discord_gg_CDg3VKmWp9_886.Focused:Connect(function()
            discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_1037].Color = "AccentColor"
            TweenService:Create(discord_gg_CDg3VKmWp9_1037, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_235 = discord_gg_CDg3VKmWp9_34.Scheme.AccentColor,
            }):Play()
        end))

        discord_gg_CDg3VKmWp9_34:GiveSignal(discord_gg_CDg3VKmWp9_886.FocusLost:Connect(function()
            discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_1037].Color = "OutlineColor"
            TweenService:Create(discord_gg_CDg3VKmWp9_1037, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_235 = discord_gg_CDg3VKmWp9_34.Scheme.OutlineColor,
            }):Play()
        end))

        local discord_gg_CDg3VKmWp9_1038 = discord_gg_CDg3VKmWp9_34:GetIcon("search")
        if discord_gg_CDg3VKmWp9_1038 then
            local discord_gg_CDg3VKmWp9_1039 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
                discord_gg_CDg3VKmWp9_553 = "FontColor",
                discord_gg_CDg3VKmWp9_697 = 0.5,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
                discord_gg_CDg3VKmWp9_695 = Enum.SizeConstraint.RelativeYY,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_886,
            })
            discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_1039, discord_gg_CDg3VKmWp9_1038)
        end

        local discord_gg_CDg3VKmWp9_1040 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 1),
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_420 = true,
            discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 1),
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 20),
            discord_gg_CDg3VKmWp9_429 = 3,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_328,
        })

        discord_gg_CDg3VKmWp9_1013 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 1),
            discord_gg_CDg3VKmWp9_437 = function()
                return discord_gg_CDg3VKmWp9_34:GetBetterColor(discord_gg_CDg3VKmWp9_34.Scheme.BackgroundColor, 4)
            end,
            discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 1),
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, math.max(20, discord_gg_CDg3VKmWp9_1002.CornerRadius * 2)),
            discord_gg_CDg3VKmWp9_429 = 3,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1040,
        })
        discord_gg_CDg3VKmWp9_34:MakeLine(discord_gg_CDg3VKmWp9_328, {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 1),
            discord_gg_CDg3VKmWp9_143 = UDim2.new(0, 0, 1, -20),
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 1),
            discord_gg_CDg3VKmWp9_429 = 3,
        })

        local discord_gg_CDg3VKmWp9_1041 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 1),
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 1),
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 20),
            discord_gg_CDg3VKmWp9_429 = 4,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_328,
        })
        discord_gg_CDg3VKmWp9_1014 = discord_gg_CDg3VKmWp9_381("UICorner", {
            discord_gg_CDg3VKmWp9_614 = UDim.new(0, 0),
            discord_gg_CDg3VKmWp9_615 = UDim.new(0, 0),
            discord_gg_CDg3VKmWp9_617 = UDim.new(0, discord_gg_CDg3VKmWp9_1002.CornerRadius),
            discord_gg_CDg3VKmWp9_616 = UDim.new(0, discord_gg_CDg3VKmWp9_1002.CornerRadius),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1013,
        })

        discord_gg_CDg3VKmWp9_1015 = discord_gg_CDg3VKmWp9_381("TextLabel", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_1002.Footer,
            discord_gg_CDg3VKmWp9_584 = 14,
            discord_gg_CDg3VKmWp9_686 = 0.5,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1041,
        })

        if discord_gg_CDg3VKmWp9_1002.Resizable and not discord_gg_CDg3VKmWp9_383() then
            discord_gg_CDg3VKmWp9_1011 = discord_gg_CDg3VKmWp9_381("TextButton", {
                discord_gg_CDg3VKmWp9_432 = Vector2.new(1, 0),
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_143 = UDim2.new(1, -discord_gg_CDg3VKmWp9_1002.CornerRadius / 4, 0, 0),
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
                discord_gg_CDg3VKmWp9_695 = Enum.SizeConstraint.RelativeYY,
                discord_gg_CDg3VKmWp9_136 = "",
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1041,
            })

            discord_gg_CDg3VKmWp9_34:MakeResizable(discord_gg_CDg3VKmWp9_328, discord_gg_CDg3VKmWp9_1011, function()
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_971 in discord_gg_CDg3VKmWp9_34.Tabs do
                    discord_gg_CDg3VKmWp9_971:Resize(true)
                end
            end)
        end

        if discord_gg_CDg3VKmWp9_1011 then
            local discord_gg_CDg3VKmWp9_1042 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
                discord_gg_CDg3VKmWp9_553 = "FontColor",
                discord_gg_CDg3VKmWp9_697 = 0.5,
                discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(2, 2),
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -4, 1, -4),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1011,
            })
            if discord_gg_CDg3VKmWp9_442 then
                discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_1042, discord_gg_CDg3VKmWp9_442)
            end
        end

        discord_gg_CDg3VKmWp9_49 = discord_gg_CDg3VKmWp9_381("ScrollingFrame", {
            discord_gg_CDg3VKmWp9_608 = Enum.AutomaticSize.Y,
            discord_gg_CDg3VKmWp9_437 = "BackgroundColor",
            discord_gg_CDg3VKmWp9_416 = UDim2.fromScale(0, 0),
            discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(0, 49),
            discord_gg_CDg3VKmWp9_1043 = 1,
            discord_gg_CDg3VKmWp9_611 = 0,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(0, discord_gg_CDg3VKmWp9_1017, 1, -70),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_328,
        })
        discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_166 = UDim.new(0, discord_gg_CDg3VKmWp9_164.Gap),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_49,
        })
        discord_gg_CDg3VKmWp9_381("UIPadding", {
            discord_gg_CDg3VKmWp9_585 = UDim.new(0, discord_gg_CDg3VKmWp9_164.Padding),
            discord_gg_CDg3VKmWp9_586 = UDim.new(0, discord_gg_CDg3VKmWp9_164.Padding),
            discord_gg_CDg3VKmWp9_587 = UDim.new(0, discord_gg_CDg3VKmWp9_164.Padding),
            discord_gg_CDg3VKmWp9_588 = UDim.new(0, discord_gg_CDg3VKmWp9_164.Padding),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_49,
        })

        discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(1, 0),
            discord_gg_CDg3VKmWp9_437 = function()
                return discord_gg_CDg3VKmWp9_34:GetBetterColor(discord_gg_CDg3VKmWp9_34.Scheme.BackgroundColor, 1)
            end,
            discord_gg_CDg3VKmWp9_420 = true,
            discord_gg_CDg3VKmWp9_171 = "Container",
            discord_gg_CDg3VKmWp9_143 = UDim2.new(1, 0, 0, 49),
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -discord_gg_CDg3VKmWp9_1017 - 1, 1, -70),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_328,
        })
        discord_gg_CDg3VKmWp9_381("UIPadding", {
            discord_gg_CDg3VKmWp9_585 = UDim.new(0, 0),
            discord_gg_CDg3VKmWp9_586 = UDim.new(0, 6),
            discord_gg_CDg3VKmWp9_587 = UDim.new(0, 6),
            discord_gg_CDg3VKmWp9_588 = UDim.new(0, 0),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
        })

        discord_gg_CDg3VKmWp9_34.WindowContainer = discord_gg_CDg3VKmWp9_600
    end

    local discord_gg_CDg3VKmWp9_41 = {}
    local discord_gg_CDg3VKmWp9_1044 = false

    local function discord_gg_CDg3VKmWp9_1045(UICorner, discord_gg_CDg3VKmWp9_613, HalfValue)
        local discord_gg_CDg3VKmWp9_1046 = UICorner[discord_gg_CDg3VKmWp9_613]
        if discord_gg_CDg3VKmWp9_1046.Offset == 0 and discord_gg_CDg3VKmWp9_1046.Scale == 0 then
            return
        end

        UICorner[discord_gg_CDg3VKmWp9_613] = HalfValue
    end

    function discord_gg_CDg3VKmWp9_41:ChangeTitle(title)
        assert(typeof(title) == "string", "Expected string for title got: " .. typeof(title))

        discord_gg_CDg3VKmWp9_1005.Text = title
        discord_gg_CDg3VKmWp9_1002.Title = title
        discord_gg_CDg3VKmWp9_1020()
    end

    function discord_gg_CDg3VKmWp9_41:RefreshTitleSize()
        discord_gg_CDg3VKmWp9_1020()
    end

    function discord_gg_CDg3VKmWp9_41:SetBackgroundImage(discord_gg_CDg3VKmWp9_233: string)
        local discord_gg_CDg3VKmWp9_1047 = false

        if typeof(discord_gg_CDg3VKmWp9_233) == "string" then
            local discord_gg_CDg3VKmWp9_1034 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_233)

            if discord_gg_CDg3VKmWp9_1034 then
                discord_gg_CDg3VKmWp9_1047 = true

                discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_110, discord_gg_CDg3VKmWp9_1034)
            elseif discord_gg_CDg3VKmWp9_233:match("http://") or discord_gg_CDg3VKmWp9_233:match("https://") then
                local discord_gg_CDg3VKmWp9_1048 = discord_gg_CDg3VKmWp9_233:match("(.+)%..+$")
                local discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_1049 = discord_gg_CDg3VKmWp9_233:match("^(https?://)([^/]+)");

                if discord_gg_CDg3VKmWp9_1048 and discord_gg_CDg3VKmWp9_1049 then
                    local discord_gg_CDg3VKmWp9_1050 = string.sub(discord_gg_CDg3VKmWp9_233, #RawFileName + 1, #Image)
                    local discord_gg_CDg3VKmWp9_1051 = discord_gg_CDg3VKmWp9_1048:gsub("\\", "/"):find("/[^/]*$")
                    local discord_gg_CDg3VKmWp9_1052 = discord_gg_CDg3VKmWp9_1051 and discord_gg_CDg3VKmWp9_233:sub(discord_gg_CDg3VKmWp9_1051 + 1) or nil

                    if discord_gg_CDg3VKmWp9_1052 then
                        discord_gg_CDg3VKmWp9_1047 = true

                        local discord_gg_CDg3VKmWp9_33 = discord_gg_CDg3VKmWp9_1049 .. FileName
                        if #AssetName > 255 then
                            local discord_gg_CDg3VKmWp9_1053 = 255 - #Domain - #Extention
                            if discord_gg_CDg3VKmWp9_1053 < 0 then
                                discord_gg_CDg3VKmWp9_33 = discord_gg_CDg3VKmWp9_1049 .. Extention
                            else
                                discord_gg_CDg3VKmWp9_33 = discord_gg_CDg3VKmWp9_1049 .. string.sub(discord_gg_CDg3VKmWp9_1052:sub(1, #FileName - #Extention), 1, NewLength) .. Extention
                            end
                        end

                        if discord_gg_CDg3VKmWp9_14[discord_gg_CDg3VKmWp9_1052] == nil then
                            discord_gg_CDg3VKmWp9_13.AddAsset(discord_gg_CDg3VKmWp9_1052, 0, discord_gg_CDg3VKmWp9_233)
                        else
                            discord_gg_CDg3VKmWp9_13.DownloadAsset(discord_gg_CDg3VKmWp9_1052, true)
                        end

                        discord_gg_CDg3VKmWp9_110.Image = discord_gg_CDg3VKmWp9_13.GetAsset(discord_gg_CDg3VKmWp9_1052)
                        discord_gg_CDg3VKmWp9_110.ImageRectOffset = Vector2.zero
                        discord_gg_CDg3VKmWp9_110.ImageRectSize = Vector2.zero
                    end
                end
            end
        end

        if not discord_gg_CDg3VKmWp9_1047 then
            discord_gg_CDg3VKmWp9_110.Image = ""
            discord_gg_CDg3VKmWp9_110.ImageRectOffset = Vector2.zero
            discord_gg_CDg3VKmWp9_110.ImageRectSize = Vector2.zero
        end

        discord_gg_CDg3VKmWp9_1012 = discord_gg_CDg3VKmWp9_1047
        discord_gg_CDg3VKmWp9_1002.BackgroundImage = discord_gg_CDg3VKmWp9_233
    end

    function discord_gg_CDg3VKmWp9_41:SetFooter(discord_gg_CDg3VKmWp9_142: string)
        assert(typeof(discord_gg_CDg3VKmWp9_142) == "string", "Expected string for footer got: " .. typeof(discord_gg_CDg3VKmWp9_142))

        discord_gg_CDg3VKmWp9_1015.Text = discord_gg_CDg3VKmWp9_142
        discord_gg_CDg3VKmWp9_1002.Footer = discord_gg_CDg3VKmWp9_142
    end

    function discord_gg_CDg3VKmWp9_41:SetAlwaysOnTop(discord_gg_CDg3VKmWp9_418: boolean)
        discord_gg_CDg3VKmWp9_1002.AlwaysOnTop = discord_gg_CDg3VKmWp9_418 == true
        discord_gg_CDg3VKmWp9_426(discord_gg_CDg3VKmWp9_34.ScreenGui, discord_gg_CDg3VKmWp9_1002.AlwaysOnTop)
    end

    function discord_gg_CDg3VKmWp9_41:SetCornerRadius(discord_gg_CDg3VKmWp9_1054: number)
        assert(typeof(discord_gg_CDg3VKmWp9_1054) == "number", "Expected number for Radius got: " .. typeof(discord_gg_CDg3VKmWp9_1054))
        discord_gg_CDg3VKmWp9_1054 = math.min(discord_gg_CDg3VKmWp9_1054, 20)

        local discord_gg_CDg3VKmWp9_1055 = UDim.new(0, discord_gg_CDg3VKmWp9_1054 / 2)
        local discord_gg_CDg3VKmWp9_1056 = UDim.new(0, discord_gg_CDg3VKmWp9_1054)
        local discord_gg_CDg3VKmWp9_1057 = discord_gg_CDg3VKmWp9_34.CornerRadius / 2

        for discord_gg_CDg3VKmWp9_26, UICorner in discord_gg_CDg3VKmWp9_34.Corners do
            if math.abs(UICorner.CornerRadius.Offset - discord_gg_CDg3VKmWp9_1057) < 0.001 then
                UICorner.CornerRadius = discord_gg_CDg3VKmWp9_1055
            else
                UICorner.CornerRadius = discord_gg_CDg3VKmWp9_1056
            end
        end

        for discord_gg_CDg3VKmWp9_26, UICorner in discord_gg_CDg3VKmWp9_34.SpecificCorners do
            discord_gg_CDg3VKmWp9_1045(UICorner, "TopRightRadius", discord_gg_CDg3VKmWp9_1055)
            discord_gg_CDg3VKmWp9_1045(UICorner, "TopLeftRadius", discord_gg_CDg3VKmWp9_1055)
            discord_gg_CDg3VKmWp9_1045(UICorner, "BottomRightRadius", discord_gg_CDg3VKmWp9_1055)
            discord_gg_CDg3VKmWp9_1045(UICorner, "BottomLeftRadius", discord_gg_CDg3VKmWp9_1055)
        end

        discord_gg_CDg3VKmWp9_34.CornerRadius = discord_gg_CDg3VKmWp9_1054
        discord_gg_CDg3VKmWp9_1002.CornerRadius = discord_gg_CDg3VKmWp9_1054

        if discord_gg_CDg3VKmWp9_1011 then
            discord_gg_CDg3VKmWp9_1011.Position = UDim2.new(1, -discord_gg_CDg3VKmWp9_1054 / 4, 0, 0)
        end
        if discord_gg_CDg3VKmWp9_1014 then
            discord_gg_CDg3VKmWp9_1013.Size = UDim2.new(1, 0, 0, math.max(20, discord_gg_CDg3VKmWp9_1054 * 2))
            discord_gg_CDg3VKmWp9_1014.BottomLeftRadius = discord_gg_CDg3VKmWp9_1056
            discord_gg_CDg3VKmWp9_1014.BottomRightRadius = discord_gg_CDg3VKmWp9_1056
        end

        for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_604 in discord_gg_CDg3VKmWp9_34.ContextMenus do
            if discord_gg_CDg3VKmWp9_604.Destroyed then
                continue
            end

            if typeof(discord_gg_CDg3VKmWp9_604.ActiveCallback) ~= "function" then
                continue
            end

            if not discord_gg_CDg3VKmWp9_604.Active then
                local discord_gg_CDg3VKmWp9_1058 = false
                for discord_gg_CDg3VKmWp9_26, Other in discord_gg_CDg3VKmWp9_34.ContextMenus do
                    if Other == discord_gg_CDg3VKmWp9_604 then
                        continue
                    end

                    if Other.Active and Other.Holder == discord_gg_CDg3VKmWp9_604.Holder then
                        discord_gg_CDg3VKmWp9_1058 = true
                        break
                    end
                end

                if discord_gg_CDg3VKmWp9_1058 then
                    continue
                end

                discord_gg_CDg3VKmWp9_604.ActiveCallback(false)
                continue
            end

            discord_gg_CDg3VKmWp9_604.ActiveCallback(true)
        end

        for discord_gg_CDg3VKmWp9_26, Option in discord_gg_CDg3VKmWp9_10 do
            if Option.Type == "Dropdown" and Option.RefreshPool then
                Option:RefreshPool()
            end
        end

        for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_971 in discord_gg_CDg3VKmWp9_34.Tabs do
            if discord_gg_CDg3VKmWp9_971.IsKeyTab then
                continue
            end

            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_180 in discord_gg_CDg3VKmWp9_971.Tabboxes do
                discord_gg_CDg3VKmWp9_180:UpdateCorners()
            end
        end
    end

    function discord_gg_CDg3VKmWp9_41:SetAnimations(discord_gg_CDg3VKmWp9_74: { [string]: boolean }?, discord_gg_CDg3VKmWp9_163: number?, discord_gg_CDg3VKmWp9_67: number?, discord_gg_CDg3VKmWp9_68: ("left" | "right" | "top" | "bottom" | string)?)
        if typeof(discord_gg_CDg3VKmWp9_74) == "table" then
            discord_gg_CDg3VKmWp9_1002.Animations = discord_gg_CDg3VKmWp9_74
            discord_gg_CDg3VKmWp9_34.Animations = discord_gg_CDg3VKmWp9_74
        end

        if typeof(discord_gg_CDg3VKmWp9_163) == "number" then
            local discord_gg_CDg3VKmWp9_65 = discord_gg_CDg3VKmWp9_65.new(
                math.max(0, discord_gg_CDg3VKmWp9_163 or 0.22),
                Enum.EasingStyle.Quad,
                Enum.EasingDirection.Out
            )

            discord_gg_CDg3VKmWp9_1002.TabTransitionInfo = discord_gg_CDg3VKmWp9_65
            discord_gg_CDg3VKmWp9_34.TabTransitionInfo = discord_gg_CDg3VKmWp9_65
        end

        if typeof(discord_gg_CDg3VKmWp9_67) == "number" then
            discord_gg_CDg3VKmWp9_67 = math.max(1, discord_gg_CDg3VKmWp9_67)

            discord_gg_CDg3VKmWp9_1002.TabSwipeOffset = discord_gg_CDg3VKmWp9_67
            discord_gg_CDg3VKmWp9_34.TabSwipeOffset = discord_gg_CDg3VKmWp9_67
        end

        if typeof(discord_gg_CDg3VKmWp9_68) == "string" then
            discord_gg_CDg3VKmWp9_68 = string.lower(discord_gg_CDg3VKmWp9_68)

            discord_gg_CDg3VKmWp9_1002.TabSwipeFrom = discord_gg_CDg3VKmWp9_68
            discord_gg_CDg3VKmWp9_34.TabSwipeFrom = discord_gg_CDg3VKmWp9_68
        end
    end

    local function discord_gg_CDg3VKmWp9_1059()
        discord_gg_CDg3VKmWp9_1018 = discord_gg_CDg3VKmWp9_41:GetSidebarWidth() == discord_gg_CDg3VKmWp9_1002.SidebarCompactWidth
        if discord_gg_CDg3VKmWp9_1002.DisableCompactingSnap then
            discord_gg_CDg3VKmWp9_1018 = discord_gg_CDg3VKmWp9_41:GetSidebarWidth() <= discord_gg_CDg3VKmWp9_1002.CompactWidthActivation
        end

        discord_gg_CDg3VKmWp9_1005.Visible = not discord_gg_CDg3VKmWp9_1018
        if not discord_gg_CDg3VKmWp9_1002.Icon then
            discord_gg_CDg3VKmWp9_1006.Visible = discord_gg_CDg3VKmWp9_1018
        end

        for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_596 in discord_gg_CDg3VKmWp9_34.TabButtons do
            if not discord_gg_CDg3VKmWp9_596.Icon then
                continue
            end

            discord_gg_CDg3VKmWp9_596.Label.Visible = not discord_gg_CDg3VKmWp9_1018
            discord_gg_CDg3VKmWp9_596.Padding.PaddingBottom = UDim.new(0, discord_gg_CDg3VKmWp9_1018 and 6 or 11)
            discord_gg_CDg3VKmWp9_596.Padding.PaddingLeft = UDim.new(0, discord_gg_CDg3VKmWp9_1018 and 6 or 12)
            discord_gg_CDg3VKmWp9_596.Padding.PaddingRight = UDim.new(0, discord_gg_CDg3VKmWp9_1018 and 6 or 12)
            discord_gg_CDg3VKmWp9_596.Padding.PaddingTop = UDim.new(0, discord_gg_CDg3VKmWp9_1018 and 6 or 11)
            discord_gg_CDg3VKmWp9_596.Icon.SizeConstraint = discord_gg_CDg3VKmWp9_1018 and Enum.SizeConstraint.RelativeXY or Enum.SizeConstraint.RelativeYY
        end
    end

    function discord_gg_CDg3VKmWp9_41:IsSidebarCompacted()
        return discord_gg_CDg3VKmWp9_1018
    end

    function discord_gg_CDg3VKmWp9_41:SetCompact(discord_gg_CDg3VKmWp9_715)
        discord_gg_CDg3VKmWp9_41:SetSidebarWidth(discord_gg_CDg3VKmWp9_715 and discord_gg_CDg3VKmWp9_1002.SidebarCompactWidth or discord_gg_CDg3VKmWp9_1019)
    end

    function discord_gg_CDg3VKmWp9_41:GetSidebarWidth()
        return discord_gg_CDg3VKmWp9_49.Size.X.Offset
    end

    function discord_gg_CDg3VKmWp9_41:SetSidebarWidth(discord_gg_CDg3VKmWp9_546)
        discord_gg_CDg3VKmWp9_546 = math.clamp(discord_gg_CDg3VKmWp9_546, 48, discord_gg_CDg3VKmWp9_328.Size.X.Offset - discord_gg_CDg3VKmWp9_1002.MinContainerWidth - 1)

        discord_gg_CDg3VKmWp9_598.Position = UDim2.fromOffset(discord_gg_CDg3VKmWp9_546, 0)

        discord_gg_CDg3VKmWp9_1004.Size = UDim2.new(0, discord_gg_CDg3VKmWp9_546, 1, 0)
        discord_gg_CDg3VKmWp9_1007.Size = UDim2.new(1, -discord_gg_CDg3VKmWp9_546 - 57 - 1, 1, -16)
        discord_gg_CDg3VKmWp9_49.Size = UDim2.new(0, discord_gg_CDg3VKmWp9_546, 1, -70)
        discord_gg_CDg3VKmWp9_600.Size = UDim2.new(1, -discord_gg_CDg3VKmWp9_546 - 1, 1, -70)

        if discord_gg_CDg3VKmWp9_1002.EnableCompacting then
            discord_gg_CDg3VKmWp9_1059()
        end

        discord_gg_CDg3VKmWp9_1020()
        if not discord_gg_CDg3VKmWp9_1018 then
            discord_gg_CDg3VKmWp9_1019 = discord_gg_CDg3VKmWp9_546
        end
    end

    function discord_gg_CDg3VKmWp9_41:ShowTabInfo(discord_gg_CDg3VKmWp9_171, discord_gg_CDg3VKmWp9_173)
        discord_gg_CDg3VKmWp9_1009.Text = discord_gg_CDg3VKmWp9_171
        discord_gg_CDg3VKmWp9_1010.Text = discord_gg_CDg3VKmWp9_173

        if discord_gg_CDg3VKmWp9_1003 then
            discord_gg_CDg3VKmWp9_886.Size = UDim2.fromScale(0.5, 1)
        end
        discord_gg_CDg3VKmWp9_1008.Visible = true
    end

    function discord_gg_CDg3VKmWp9_41:HideTabInfo()
        discord_gg_CDg3VKmWp9_1008.Visible = false
        if discord_gg_CDg3VKmWp9_1003 then
            discord_gg_CDg3VKmWp9_886.Size = UDim2.fromScale(1, 1)
        end
    end

    function discord_gg_CDg3VKmWp9_41:AddTab(...)
        local discord_gg_CDg3VKmWp9_171 = nil
        local discord_gg_CDg3VKmWp9_186 = nil
        local discord_gg_CDg3VKmWp9_173 = nil
        local discord_gg_CDg3VKmWp9_834 = nil
        local discord_gg_CDg3VKmWp9_332 = nil

        if select("#", ...) == 1 and typeof(...) == "table" then
            local discord_gg_CDg3VKmWp9_651 = select(1, ...)
            discord_gg_CDg3VKmWp9_171 = discord_gg_CDg3VKmWp9_651.Name or "Tab"
            discord_gg_CDg3VKmWp9_186 = discord_gg_CDg3VKmWp9_651.Icon
            discord_gg_CDg3VKmWp9_173 = discord_gg_CDg3VKmWp9_651.Description
            discord_gg_CDg3VKmWp9_834 = discord_gg_CDg3VKmWp9_651.Tooltip
            discord_gg_CDg3VKmWp9_332 = discord_gg_CDg3VKmWp9_651.Order
        else
            discord_gg_CDg3VKmWp9_171 = select(1, ...)
            discord_gg_CDg3VKmWp9_186 = select(2, ...)
            discord_gg_CDg3VKmWp9_173 = select(3, ...)
            discord_gg_CDg3VKmWp9_332 = select(4, ...)
        end

        if not tonumber(discord_gg_CDg3VKmWp9_332) then
            discord_gg_CDg3VKmWp9_332 = #Tabs:GetChildren()
        end

        local discord_gg_CDg3VKmWp9_1065: TextButton
        local discord_gg_CDg3VKmWp9_1060
        local discord_gg_CDg3VKmWp9_1061
        local discord_gg_CDg3VKmWp9_1062

        local discord_gg_CDg3VKmWp9_528
        local discord_gg_CDg3VKmWp9_1063
        local discord_gg_CDg3VKmWp9_1064

        discord_gg_CDg3VKmWp9_186 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_186)
        do
            discord_gg_CDg3VKmWp9_1065 = discord_gg_CDg3VKmWp9_381("TextButton", {
                discord_gg_CDg3VKmWp9_437 = "MainColor",
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 40),
                discord_gg_CDg3VKmWp9_136 = "",
                discord_gg_CDg3VKmWp9_522 = discord_gg_CDg3VKmWp9_332,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_49,
            })
            discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_164.CornerRadius),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1065,
            })

            if discord_gg_CDg3VKmWp9_164.Indicator then
                discord_gg_CDg3VKmWp9_1060 = discord_gg_CDg3VKmWp9_381("Frame", {
                    discord_gg_CDg3VKmWp9_432 = Vector2.new(1, 0.5),
                    discord_gg_CDg3VKmWp9_437 = "AccentColor",
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_143 = UDim2.new(0, -2, 0.5, 0),
                    discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(discord_gg_CDg3VKmWp9_164.IndicatorWidth, discord_gg_CDg3VKmWp9_164.IndicatorHeight),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1065,
                })

                discord_gg_CDg3VKmWp9_381("UICorner", {
                    discord_gg_CDg3VKmWp9_97 = UDim.new(1, 0),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1060,
                })
            end

            local discord_gg_CDg3VKmWp9_1066 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1065,
            })
            local discord_gg_CDg3VKmWp9_1067 = discord_gg_CDg3VKmWp9_381("UIPadding", {
                discord_gg_CDg3VKmWp9_585 = UDim.new(0, discord_gg_CDg3VKmWp9_1018 and 6 or 11),
                discord_gg_CDg3VKmWp9_586 = UDim.new(0, discord_gg_CDg3VKmWp9_1018 and 6 or 12),
                discord_gg_CDg3VKmWp9_587 = UDim.new(0, discord_gg_CDg3VKmWp9_1018 and 6 or 12),
                discord_gg_CDg3VKmWp9_588 = UDim.new(0, discord_gg_CDg3VKmWp9_1018 and 6 or 11),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1066,
            })
            discord_gg_CDg3VKmWp9_1061 = discord_gg_CDg3VKmWp9_381("TextLabel", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(30, 0),
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -30, 1, 0),
                discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_171,
                discord_gg_CDg3VKmWp9_584 = 16,
                discord_gg_CDg3VKmWp9_686 = 0.5,
                discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
                discord_gg_CDg3VKmWp9_174 = not discord_gg_CDg3VKmWp9_1018,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1066,
            })

            if discord_gg_CDg3VKmWp9_186 then
                discord_gg_CDg3VKmWp9_1062 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
                    discord_gg_CDg3VKmWp9_553 = discord_gg_CDg3VKmWp9_186.Custom and "WhiteColor" or "AccentColor",
                    discord_gg_CDg3VKmWp9_697 = 0.5,
                    discord_gg_CDg3VKmWp9_238 = Enum.ScaleType.Fit,
                    discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
                    discord_gg_CDg3VKmWp9_695 = discord_gg_CDg3VKmWp9_1018 and Enum.SizeConstraint.RelativeXY or Enum.SizeConstraint.RelativeYY,
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1066,
                })
                discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_1062, discord_gg_CDg3VKmWp9_186)
            end

            table.insert(discord_gg_CDg3VKmWp9_34.TabButtons, {
                discord_gg_CDg3VKmWp9_583 = discord_gg_CDg3VKmWp9_1061,
                discord_gg_CDg3VKmWp9_166 = discord_gg_CDg3VKmWp9_1067,
                discord_gg_CDg3VKmWp9_186 = discord_gg_CDg3VKmWp9_1062,
            })

            discord_gg_CDg3VKmWp9_528 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 0),
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
                discord_gg_CDg3VKmWp9_174 = false,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
            })

            discord_gg_CDg3VKmWp9_1063 = discord_gg_CDg3VKmWp9_381("ScrollingFrame", {
                discord_gg_CDg3VKmWp9_608 = Enum.AutomaticSize.Y,
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_416 = UDim2.fromScale(0, 0),
                discord_gg_CDg3VKmWp9_1043 = 1,
                discord_gg_CDg3VKmWp9_611 = 0,
                discord_gg_CDg3VKmWp9_144 = UDim2.new(0.5, -3, 1, 0),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_528,
            })
            discord_gg_CDg3VKmWp9_381("UIListLayout", {
                discord_gg_CDg3VKmWp9_166 = UDim.new(0, 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1063,
            })
            discord_gg_CDg3VKmWp9_381("UIPadding", {
                discord_gg_CDg3VKmWp9_585 = UDim.new(0, 2),
                discord_gg_CDg3VKmWp9_586 = UDim.new(0, 2),
                discord_gg_CDg3VKmWp9_587 = UDim.new(0, 2),
                discord_gg_CDg3VKmWp9_588 = UDim.new(0, 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1063,
            })
            do
                discord_gg_CDg3VKmWp9_381("Frame", {
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_522 = -1,
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1063,
                })
                discord_gg_CDg3VKmWp9_381("Frame", {
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_522 = 1,
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1063,
                })
            end

            discord_gg_CDg3VKmWp9_1064 = discord_gg_CDg3VKmWp9_381("ScrollingFrame", {
                discord_gg_CDg3VKmWp9_432 = Vector2.new(1, 0),
                discord_gg_CDg3VKmWp9_608 = Enum.AutomaticSize.Y,
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_416 = UDim2.fromScale(0, 0),
                discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(1, 0),
                discord_gg_CDg3VKmWp9_1043 = 1,
                discord_gg_CDg3VKmWp9_611 = 0,
                discord_gg_CDg3VKmWp9_144 = UDim2.new(0.5, -3, 1, 0),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_528,
            })
            discord_gg_CDg3VKmWp9_381("UIListLayout", {
                discord_gg_CDg3VKmWp9_166 = UDim.new(0, 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1064,
            })
            discord_gg_CDg3VKmWp9_381("UIPadding", {
                discord_gg_CDg3VKmWp9_585 = UDim.new(0, 2),
                discord_gg_CDg3VKmWp9_586 = UDim.new(0, 2),
                discord_gg_CDg3VKmWp9_587 = UDim.new(0, 2),
                discord_gg_CDg3VKmWp9_588 = UDim.new(0, 2),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1064,
            })
            do
                discord_gg_CDg3VKmWp9_381("Frame", {
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_522 = -1,
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1064,
                })
                discord_gg_CDg3VKmWp9_381("Frame", {
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_522 = 1,
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1064,
                })
            end
        end

        local discord_gg_CDg3VKmWp9_971 = {
            discord_gg_CDg3VKmWp9_171 = discord_gg_CDg3VKmWp9_171,
            discord_gg_CDg3VKmWp9_173 = discord_gg_CDg3VKmWp9_173,

            discord_gg_CDg3VKmWp9_834 = discord_gg_CDg3VKmWp9_834,
            discord_gg_CDg3VKmWp9_645 = nil,

            discord_gg_CDg3VKmWp9_580 = {},
            discord_gg_CDg3VKmWp9_581 = false,

            discord_gg_CDg3VKmWp9_41 = discord_gg_CDg3VKmWp9_41,
            discord_gg_CDg3VKmWp9_596 = discord_gg_CDg3VKmWp9_1065,
            discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_528,
            discord_gg_CDg3VKmWp9_1068 = {
                discord_gg_CDg3VKmWp9_1063,
                discord_gg_CDg3VKmWp9_1064,
            },
            discord_gg_CDg3VKmWp9_1069 = {
                discord_gg_CDg3VKmWp9_1070 = false,
                discord_gg_CDg3VKmWp9_1071 = false,
                discord_gg_CDg3VKmWp9_174 = false,
                discord_gg_CDg3VKmWp9_141 = "WARNING",
                discord_gg_CDg3VKmWp9_136 = "",
            },

            discord_gg_CDg3VKmWp9_1072 = {},
            discord_gg_CDg3VKmWp9_1073 = {},
            discord_gg_CDg3VKmWp9_1074 = {},
        }

        local discord_gg_CDg3VKmWp9_1075 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(0, 7),
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 0),
            discord_gg_CDg3VKmWp9_174 = false,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_528,
        })

        local discord_gg_CDg3VKmWp9_1069
        local discord_gg_CDg3VKmWp9_1076
        local discord_gg_CDg3VKmWp9_1077
        local discord_gg_CDg3VKmWp9_1078
        local discord_gg_CDg3VKmWp9_1079
        local discord_gg_CDg3VKmWp9_1080
        local discord_gg_CDg3VKmWp9_1081
        do
            discord_gg_CDg3VKmWp9_1069 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_437 = Color3.fromRGB(127, 0, 0),
                discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(2, 0),
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -5, 0, 0),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1075,
            })
            discord_gg_CDg3VKmWp9_34:AddToRegistry(discord_gg_CDg3VKmWp9_1069, {
                discord_gg_CDg3VKmWp9_437 = function()
                    return discord_gg_CDg3VKmWp9_971.WarningBox.IsNormal == true and discord_gg_CDg3VKmWp9_34.Scheme.BackgroundColor or Color3.fromRGB(127, 0, 0)
                end
            })
            table.insert(
                discord_gg_CDg3VKmWp9_34.Corners,
                discord_gg_CDg3VKmWp9_381("UICorner", {
                    discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_1002.CornerRadius),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1069,
                })
            )
            discord_gg_CDg3VKmWp9_1076, discord_gg_CDg3VKmWp9_1077 = discord_gg_CDg3VKmWp9_34:AddOutline(discord_gg_CDg3VKmWp9_1069)
            discord_gg_CDg3VKmWp9_34:AddToRegistry(discord_gg_CDg3VKmWp9_1076, {
                discord_gg_CDg3VKmWp9_235 = function()
                    return discord_gg_CDg3VKmWp9_971.WarningBox.IsNormal == true and discord_gg_CDg3VKmWp9_34.Scheme.OutlineColor or Color3.fromRGB(255, 50, 50)
                end
            })
            discord_gg_CDg3VKmWp9_34:AddToRegistry(discord_gg_CDg3VKmWp9_1077, {
                discord_gg_CDg3VKmWp9_235 = function()
                    return discord_gg_CDg3VKmWp9_971.WarningBox.IsNormal == true and discord_gg_CDg3VKmWp9_34.Scheme.DarkColor or Color3.fromRGB(85, 0, 0)
                end
            })

            discord_gg_CDg3VKmWp9_1078 = discord_gg_CDg3VKmWp9_381("ScrollingFrame", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_120 = 0,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
                discord_gg_CDg3VKmWp9_416 = UDim2.new(0, 0, 0, 0),
                discord_gg_CDg3VKmWp9_611 = 3,
                discord_gg_CDg3VKmWp9_1082 = Enum.ScrollingDirection.Y,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1069,
            })
            discord_gg_CDg3VKmWp9_381("UIPadding", {
                discord_gg_CDg3VKmWp9_585 = UDim.new(0, 4),
                discord_gg_CDg3VKmWp9_586 = UDim.new(0, 6),
                discord_gg_CDg3VKmWp9_587 = UDim.new(0, 6),
                discord_gg_CDg3VKmWp9_588 = UDim.new(0, 4),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1078,
            })

            discord_gg_CDg3VKmWp9_1079 = discord_gg_CDg3VKmWp9_381("TextLabel", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -4, 0, 14),
                discord_gg_CDg3VKmWp9_136 = "",
                discord_gg_CDg3VKmWp9_129 = Color3.fromRGB(255, 50, 50),
                discord_gg_CDg3VKmWp9_584 = 14,
                discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1078,
            })
            discord_gg_CDg3VKmWp9_34:AddToRegistry(discord_gg_CDg3VKmWp9_1079, {
                discord_gg_CDg3VKmWp9_129 = function()
                    return discord_gg_CDg3VKmWp9_971.WarningBox.IsNormal == true and discord_gg_CDg3VKmWp9_34.Scheme.FontColor or Color3.fromRGB(255, 50, 50)
                end
            })

            discord_gg_CDg3VKmWp9_1080 = discord_gg_CDg3VKmWp9_381("UIStroke", {
                discord_gg_CDg3VKmWp9_140 = Enum.ApplyStrokeMode.Contextual,
                discord_gg_CDg3VKmWp9_235 = Color3.fromRGB(169, 0, 0),
                discord_gg_CDg3VKmWp9_862 = Enum.LineJoinMode.Miter,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1079,
            })
            discord_gg_CDg3VKmWp9_34:AddToRegistry(discord_gg_CDg3VKmWp9_1080, {
                discord_gg_CDg3VKmWp9_235 = function()
                    return discord_gg_CDg3VKmWp9_971.WarningBox.IsNormal == true and discord_gg_CDg3VKmWp9_34.Scheme.OutlineColor or Color3.fromRGB(169, 0, 0)
                end
            })

            discord_gg_CDg3VKmWp9_1081 = discord_gg_CDg3VKmWp9_381("TextLabel", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(0, 16),
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -4, 0, 0),
                discord_gg_CDg3VKmWp9_136 = "",
                discord_gg_CDg3VKmWp9_584 = 14,
                discord_gg_CDg3VKmWp9_637 = true,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1078,
                discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
                discord_gg_CDg3VKmWp9_402 = Enum.TextYAlignment.Top,
            })

            discord_gg_CDg3VKmWp9_381("UIStroke", {
                discord_gg_CDg3VKmWp9_140 = Enum.ApplyStrokeMode.Contextual,
                discord_gg_CDg3VKmWp9_235 = "DarkColor",
                discord_gg_CDg3VKmWp9_862 = Enum.LineJoinMode.Miter,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1081,
            })
        end

        function discord_gg_CDg3VKmWp9_971:UpdateWarningBox(discord_gg_CDg3VKmWp9_651)
            if typeof(discord_gg_CDg3VKmWp9_651.IsNormal) == "boolean" then
                discord_gg_CDg3VKmWp9_971.WarningBox.IsNormal = discord_gg_CDg3VKmWp9_651.IsNormal
            end
            if typeof(discord_gg_CDg3VKmWp9_651.LockSize) == "boolean" then
                discord_gg_CDg3VKmWp9_971.WarningBox.LockSize = discord_gg_CDg3VKmWp9_651.LockSize
            end
            if typeof(discord_gg_CDg3VKmWp9_651.Visible) == "boolean" then
                discord_gg_CDg3VKmWp9_971.WarningBox.Visible = discord_gg_CDg3VKmWp9_651.Visible
            end
            if typeof(discord_gg_CDg3VKmWp9_651.Title) == "string" then
                discord_gg_CDg3VKmWp9_971.WarningBox.Title = discord_gg_CDg3VKmWp9_651.Title
            end
            if typeof(discord_gg_CDg3VKmWp9_651.Text) == "string" then
                discord_gg_CDg3VKmWp9_971.WarningBox.Text = discord_gg_CDg3VKmWp9_651.Text
            end

            discord_gg_CDg3VKmWp9_1075.Visible = discord_gg_CDg3VKmWp9_971.WarningBox.Visible
            discord_gg_CDg3VKmWp9_1079.Text = discord_gg_CDg3VKmWp9_971.WarningBox.Title
            discord_gg_CDg3VKmWp9_1081.Text = discord_gg_CDg3VKmWp9_971.WarningBox.Text
            discord_gg_CDg3VKmWp9_971:Resize(true)

            discord_gg_CDg3VKmWp9_1069.BackgroundColor3 = discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_1069].BackgroundColor3()
            discord_gg_CDg3VKmWp9_1077.Color = discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_1077].Color()
            discord_gg_CDg3VKmWp9_1076.Color = discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_1076].Color()
            discord_gg_CDg3VKmWp9_1079.TextColor3 = discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_1079].TextColor3()
            discord_gg_CDg3VKmWp9_1080.Color = discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_1080].Color()
        end

        function discord_gg_CDg3VKmWp9_971:RefreshSides()
            local discord_gg_CDg3VKmWp9_531 = discord_gg_CDg3VKmWp9_1075.Visible and discord_gg_CDg3VKmWp9_1069.Size.Y.Offset + 8 or 0
            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_170 in discord_gg_CDg3VKmWp9_971.Sides do
                discord_gg_CDg3VKmWp9_170.Position = UDim2.new(discord_gg_CDg3VKmWp9_170.Position.X.Scale, 0, 0, discord_gg_CDg3VKmWp9_531)
                discord_gg_CDg3VKmWp9_170.Size = UDim2.new(0.5, -3, 1, -discord_gg_CDg3VKmWp9_531)
            end
        end

        function discord_gg_CDg3VKmWp9_971:Resize(ResizeWarningBox: boolean?)
            if ResizeWarningBox then
                local discord_gg_CDg3VKmWp9_1083 = math.floor((discord_gg_CDg3VKmWp9_528.AbsoluteSize.Y / discord_gg_CDg3VKmWp9_34.DPIScale) / 3.25)
                local discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_1084 = discord_gg_CDg3VKmWp9_34:GetTextBounds(
                    discord_gg_CDg3VKmWp9_1081.Text,
                    discord_gg_CDg3VKmWp9_34.Scheme.Font,
                    discord_gg_CDg3VKmWp9_1081.TextSize,
                    discord_gg_CDg3VKmWp9_1081.AbsoluteSize.X / discord_gg_CDg3VKmWp9_34.DPIScale
                )

                local discord_gg_CDg3VKmWp9_1085 = 24 + discord_gg_CDg3VKmWp9_1084
                if discord_gg_CDg3VKmWp9_971.WarningBox.LockSize == true and discord_gg_CDg3VKmWp9_1085 >= discord_gg_CDg3VKmWp9_1083 then
                    discord_gg_CDg3VKmWp9_1078.CanvasSize = UDim2.fromOffset(0, discord_gg_CDg3VKmWp9_1085)
                    discord_gg_CDg3VKmWp9_1085 = discord_gg_CDg3VKmWp9_1083
                else
                    discord_gg_CDg3VKmWp9_1078.CanvasSize = UDim2.fromOffset(0, 0)
                end

                discord_gg_CDg3VKmWp9_1081.Size = UDim2.new(1, -4, 0, discord_gg_CDg3VKmWp9_1084)
                discord_gg_CDg3VKmWp9_1069.Size = UDim2.new(1, -5, 0, discord_gg_CDg3VKmWp9_1085 + 4)
            end

            discord_gg_CDg3VKmWp9_971:RefreshSides()
        end

        local function discord_gg_CDg3VKmWp9_1086(self, discord_gg_CDg3VKmWp9_651)
            discord_gg_CDg3VKmWp9_651 = discord_gg_CDg3VKmWp9_34:Validate(discord_gg_CDg3VKmWp9_651, discord_gg_CDg3VKmWp9_118.Tabbox)
            local discord_gg_CDg3VKmWp9_652 = self
            local discord_gg_CDg3VKmWp9_1087 = discord_gg_CDg3VKmWp9_652.Type == "Groupbox" or discord_gg_CDg3VKmWp9_652.Type == "SubTab"

            if typeof(discord_gg_CDg3VKmWp9_651.Side) == "string" then
                local discord_gg_CDg3VKmWp9_1088 = string.lower(discord_gg_CDg3VKmWp9_651.Side)
                if not discord_gg_CDg3VKmWp9_261[discord_gg_CDg3VKmWp9_1088] then
                    error(string.format("Invalid side: %s", discord_gg_CDg3VKmWp9_651.Side))
                end

                discord_gg_CDg3VKmWp9_651.Side = discord_gg_CDg3VKmWp9_261[discord_gg_CDg3VKmWp9_1088]
            end

            local discord_gg_CDg3VKmWp9_539 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 0),
                discord_gg_CDg3VKmWp9_403 = if discord_gg_CDg3VKmWp9_1087 then discord_gg_CDg3VKmWp9_652.Container else (discord_gg_CDg3VKmWp9_651.Side == 1 and discord_gg_CDg3VKmWp9_1063 or discord_gg_CDg3VKmWp9_1064),
            })
            discord_gg_CDg3VKmWp9_381("UIListLayout", {
                discord_gg_CDg3VKmWp9_166 = UDim.new(0, 6),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_539,
            })
            discord_gg_CDg3VKmWp9_381("UIPadding", {
                discord_gg_CDg3VKmWp9_585 = UDim.new(0, 4),
                discord_gg_CDg3VKmWp9_588 = UDim.new(0, 4),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_539,
            })

            local discord_gg_CDg3VKmWp9_1089
            local discord_gg_CDg3VKmWp9_1090

            do
                discord_gg_CDg3VKmWp9_1089 = discord_gg_CDg3VKmWp9_381("Frame", {
                    discord_gg_CDg3VKmWp9_437 = "BackgroundColor",
                    discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 0),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_539,
                })
                table.insert(
                    discord_gg_CDg3VKmWp9_34.Corners,
                    discord_gg_CDg3VKmWp9_381("UICorner", {
                        discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_1002.CornerRadius),
                        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1089,
                    })
                )
                discord_gg_CDg3VKmWp9_34:AddOutline(discord_gg_CDg3VKmWp9_1089)

                discord_gg_CDg3VKmWp9_1090 = discord_gg_CDg3VKmWp9_381("Frame", {
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 34),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1089,
                })
                discord_gg_CDg3VKmWp9_381("UIListLayout", {
                    discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
                    discord_gg_CDg3VKmWp9_786 = Enum.UIFlexAlignment.Fill,
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1090,
                })
            end

            local discord_gg_CDg3VKmWp9_1091 = 0
            local discord_gg_CDg3VKmWp9_1092
            local discord_gg_CDg3VKmWp9_1093

            local discord_gg_CDg3VKmWp9_180: any = {
                discord_gg_CDg3VKmWp9_658 = "Tabbox",

                discord_gg_CDg3VKmWp9_580 = {},
                discord_gg_CDg3VKmWp9_581 = false,

                discord_gg_CDg3VKmWp9_174 = true,
                discord_gg_CDg3VKmWp9_47 = nil,

                discord_gg_CDg3VKmWp9_539 = discord_gg_CDg3VKmWp9_539,
                discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_1089,
                discord_gg_CDg3VKmWp9_49 = {},

                discord_gg_CDg3VKmWp9_1094 = if discord_gg_CDg3VKmWp9_1087 then discord_gg_CDg3VKmWp9_652 else nil,
            }

            function discord_gg_CDg3VKmWp9_180:UpdateCorners()
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_971 in discord_gg_CDg3VKmWp9_180.Tabs do
                    discord_gg_CDg3VKmWp9_971:UpdateCorners()
                end
            end

            function discord_gg_CDg3VKmWp9_180:Resize()
                if discord_gg_CDg3VKmWp9_180.ActiveTab then
                    discord_gg_CDg3VKmWp9_180.ActiveTab:Resize()
                end
            end

            function discord_gg_CDg3VKmWp9_180:AddTab(discord_gg_CDg3VKmWp9_171, discord_gg_CDg3VKmWp9_172)
                discord_gg_CDg3VKmWp9_1091 = discord_gg_CDg3VKmWp9_1091 + 1
                local discord_gg_CDg3VKmWp9_1095 = discord_gg_CDg3VKmWp9_1091

                discord_gg_CDg3VKmWp9_1093 = discord_gg_CDg3VKmWp9_1095
                if not discord_gg_CDg3VKmWp9_1092 then
                    discord_gg_CDg3VKmWp9_1092 = discord_gg_CDg3VKmWp9_1095
                end

                local discord_gg_CDg3VKmWp9_1096 = discord_gg_CDg3VKmWp9_171 == nil or discord_gg_CDg3VKmWp9_286(tostring(discord_gg_CDg3VKmWp9_171)) == ""
                local discord_gg_CDg3VKmWp9_1097 = discord_gg_CDg3VKmWp9_1096 and tostring(discord_gg_CDg3VKmWp9_1095) or discord_gg_CDg3VKmWp9_171

                local discord_gg_CDg3VKmWp9_596 = discord_gg_CDg3VKmWp9_381("TextButton", {
                    discord_gg_CDg3VKmWp9_437 = "MainColor",
                    discord_gg_CDg3VKmWp9_122 = 0,
                    discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(0, 34),
                    discord_gg_CDg3VKmWp9_136 = "",
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1090,
                })

                local discord_gg_CDg3VKmWp9_1098 = discord_gg_CDg3VKmWp9_381("UICorner", {
                    discord_gg_CDg3VKmWp9_614 = UDim.new(0, discord_gg_CDg3VKmWp9_1002.CornerRadius),
                    discord_gg_CDg3VKmWp9_615 = UDim.new(0, discord_gg_CDg3VKmWp9_1002.CornerRadius),
                    discord_gg_CDg3VKmWp9_616 = UDim.new(0, 0),
                    discord_gg_CDg3VKmWp9_617 = UDim.new(0, 0),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_596,
                }); table.insert(discord_gg_CDg3VKmWp9_34.SpecificCorners, discord_gg_CDg3VKmWp9_1098)

                local discord_gg_CDg3VKmWp9_1099 = discord_gg_CDg3VKmWp9_381("Frame", {
                    discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0.5),
                    discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.X,
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0.5, 0.5),
                    discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(0, 16),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_596,
                })
                discord_gg_CDg3VKmWp9_381("UIListLayout", {
                    discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
                    discord_gg_CDg3VKmWp9_829 = Enum.HorizontalAlignment.Center,
                    discord_gg_CDg3VKmWp9_842 = Enum.VerticalAlignment.Center,
                    discord_gg_CDg3VKmWp9_166 = UDim.new(0, 8),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1099,
                })

                local discord_gg_CDg3VKmWp9_1100
                local discord_gg_CDg3VKmWp9_1101 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_172)
                if discord_gg_CDg3VKmWp9_1101 then
                    discord_gg_CDg3VKmWp9_1100 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
                        discord_gg_CDg3VKmWp9_553 = discord_gg_CDg3VKmWp9_1101.Custom and "WhiteColor" or "AccentColor",
                        discord_gg_CDg3VKmWp9_697 = 0.5,
                        discord_gg_CDg3VKmWp9_144 = discord_gg_CDg3VKmWp9_1096 and UDim2.fromOffset(16, 16) or UDim2.fromOffset(18, 18),
                        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1099,
                    })
                    discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_1100, discord_gg_CDg3VKmWp9_1101)
                end

                local discord_gg_CDg3VKmWp9_1102
                if not discord_gg_CDg3VKmWp9_1096 then
                    discord_gg_CDg3VKmWp9_1102 = discord_gg_CDg3VKmWp9_381("TextLabel", {
                        discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.X,
                        discord_gg_CDg3VKmWp9_122 = 1,
                        discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(0, 16),
                        discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_171,
                        discord_gg_CDg3VKmWp9_584 = 15,
                        discord_gg_CDg3VKmWp9_686 = 0.5,
                        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1099,
                    })
                end

                local discord_gg_CDg3VKmWp9_521 = discord_gg_CDg3VKmWp9_34:MakeLine(discord_gg_CDg3VKmWp9_596, {
                    discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 1),
                    discord_gg_CDg3VKmWp9_143 = UDim2.new(0, 0, 1, 1),
                    discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 1),
                })

                local discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_381("ScrollingFrame", {
                    discord_gg_CDg3VKmWp9_608 = Enum.AutomaticSize.None,
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_120 = 0,
                    discord_gg_CDg3VKmWp9_416 = UDim2.fromOffset(0, 0),
                    discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(0, 35),
                    discord_gg_CDg3VKmWp9_1043 = 1,
                    discord_gg_CDg3VKmWp9_611 = 0,
                    discord_gg_CDg3VKmWp9_1103 = false,
                    discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 1, -35),
                    discord_gg_CDg3VKmWp9_174 = false,
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1089,
                })
                local discord_gg_CDg3VKmWp9_620 = discord_gg_CDg3VKmWp9_381("UIListLayout", {
                    discord_gg_CDg3VKmWp9_166 = UDim.new(0, 8),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
                })
                discord_gg_CDg3VKmWp9_381("UIPadding", {
                    discord_gg_CDg3VKmWp9_585 = UDim.new(0, 7),
                    discord_gg_CDg3VKmWp9_586 = UDim.new(0, 7),
                    discord_gg_CDg3VKmWp9_587 = UDim.new(0, 7),
                    discord_gg_CDg3VKmWp9_588 = UDim.new(0, 7),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
                })

                local discord_gg_CDg3VKmWp9_971 = {
                    discord_gg_CDg3VKmWp9_658 = "SubTab",
                    discord_gg_CDg3VKmWp9_171 = discord_gg_CDg3VKmWp9_171,

                    discord_gg_CDg3VKmWp9_580 = {},
                    discord_gg_CDg3VKmWp9_581 = false,

                    discord_gg_CDg3VKmWp9_1066 = discord_gg_CDg3VKmWp9_596,
                    discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_600,
                    discord_gg_CDg3VKmWp9_1098 = discord_gg_CDg3VKmWp9_1098,

                    discord_gg_CDg3VKmWp9_971 = discord_gg_CDg3VKmWp9_971,
                    discord_gg_CDg3VKmWp9_180 = discord_gg_CDg3VKmWp9_180,

                    discord_gg_CDg3VKmWp9_968 = {},
                    discord_gg_CDg3VKmWp9_51 = {},
                }

                function discord_gg_CDg3VKmWp9_971:Show()
                    if discord_gg_CDg3VKmWp9_180.ActiveTab then
                        discord_gg_CDg3VKmWp9_180.ActiveTab:Hide()
                    end

                    discord_gg_CDg3VKmWp9_596.BackgroundTransparency = 1

                    if discord_gg_CDg3VKmWp9_1102 then
                        discord_gg_CDg3VKmWp9_1102.TextTransparency = 0
                    end
                    if discord_gg_CDg3VKmWp9_1100 then
                        discord_gg_CDg3VKmWp9_1100.ImageTransparency = 0
                    end

                    discord_gg_CDg3VKmWp9_521.Visible = false

                    discord_gg_CDg3VKmWp9_600.Visible = true

                    discord_gg_CDg3VKmWp9_180.ActiveTab = discord_gg_CDg3VKmWp9_971
                    discord_gg_CDg3VKmWp9_971:Resize()
                    discord_gg_CDg3VKmWp9_180:RefreshPopOutPlaceholder()
                end

                function discord_gg_CDg3VKmWp9_971:Hide()
                    discord_gg_CDg3VKmWp9_596.BackgroundTransparency = 0

                    if discord_gg_CDg3VKmWp9_1102 then
                        discord_gg_CDg3VKmWp9_1102.TextTransparency = 0.5
                    end
                    if discord_gg_CDg3VKmWp9_1100 then
                        discord_gg_CDg3VKmWp9_1100.ImageTransparency = 0.5
                    end
                    discord_gg_CDg3VKmWp9_521.Visible = true
                    discord_gg_CDg3VKmWp9_600.Visible = false

                    discord_gg_CDg3VKmWp9_180.ActiveTab = nil
                end

                function discord_gg_CDg3VKmWp9_971:Resize()
                    if discord_gg_CDg3VKmWp9_180.ActiveTab ~= discord_gg_CDg3VKmWp9_971 then
                        return
                    end

                    local discord_gg_CDg3VKmWp9_1104 = (discord_gg_CDg3VKmWp9_620.AbsoluteContentSize.Y / discord_gg_CDg3VKmWp9_34.DPIScale) + 14
                    local discord_gg_CDg3VKmWp9_459 = discord_gg_CDg3VKmWp9_1104
                    if discord_gg_CDg3VKmWp9_180.PoppedOut then
                        discord_gg_CDg3VKmWp9_459 = math.min(discord_gg_CDg3VKmWp9_1104, discord_gg_CDg3VKmWp9_334(discord_gg_CDg3VKmWp9_180, 35))
                    end

                    local discord_gg_CDg3VKmWp9_1105 = discord_gg_CDg3VKmWp9_1104 > discord_gg_CDg3VKmWp9_459 + 1
                    discord_gg_CDg3VKmWp9_600.CanvasSize = UDim2.fromOffset(0, if discord_gg_CDg3VKmWp9_1105 then discord_gg_CDg3VKmWp9_1104 else 0)
                    discord_gg_CDg3VKmWp9_600.ScrollingEnabled = discord_gg_CDg3VKmWp9_1105
                    discord_gg_CDg3VKmWp9_1089.Size = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_459 + 35)

                    if discord_gg_CDg3VKmWp9_1087 then
                        discord_gg_CDg3VKmWp9_652:Resize()
                    end
                end

                function discord_gg_CDg3VKmWp9_971:UpdateCorners()
                    local discord_gg_CDg3VKmWp9_1054 = discord_gg_CDg3VKmWp9_1002.CornerRadius

                    discord_gg_CDg3VKmWp9_1098.TopLeftRadius = UDim.new(0, discord_gg_CDg3VKmWp9_1095 == discord_gg_CDg3VKmWp9_1092 and discord_gg_CDg3VKmWp9_1054 or 0)
                    discord_gg_CDg3VKmWp9_1098.TopRightRadius = UDim.new(0, discord_gg_CDg3VKmWp9_1095 == discord_gg_CDg3VKmWp9_1093 and discord_gg_CDg3VKmWp9_1054 or 0)
                end

                function discord_gg_CDg3VKmWp9_971:Destroy()
                    discord_gg_CDg3VKmWp9_971.Destroyed = true

                    if discord_gg_CDg3VKmWp9_971.Connections then
                        for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_971.Connections do
                            discord_gg_CDg3VKmWp9_274:Disconnect()
                        end
                    end

                    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_969 in discord_gg_CDg3VKmWp9_971.Elements do
                        if discord_gg_CDg3VKmWp9_969.Destroy then
                            discord_gg_CDg3VKmWp9_969:Destroy()
                        end
                    end

                    for discord_gg_CDg3VKmWp9_26, SubDepbox in discord_gg_CDg3VKmWp9_971.DependencyBoxes do
                        if SubDepbox.Destroy then
                            SubDepbox:Destroy()
                        end
                    end

                    if discord_gg_CDg3VKmWp9_600 then
                        discord_gg_CDg3VKmWp9_600:Destroy()
                    end

                    if discord_gg_CDg3VKmWp9_596 then
                        discord_gg_CDg3VKmWp9_596:Destroy()
                    end
                end

                if not discord_gg_CDg3VKmWp9_180.ActiveTab then
                    discord_gg_CDg3VKmWp9_971:Show()
                end

                discord_gg_CDg3VKmWp9_596.MouseButton1Click:Connect(discord_gg_CDg3VKmWp9_971.Show)

                discord_gg_CDg3VKmWp9_971.AddTabbox = discord_gg_CDg3VKmWp9_1086
                setmetatable(discord_gg_CDg3VKmWp9_971, discord_gg_CDg3VKmWp9_817)

                discord_gg_CDg3VKmWp9_180.Tabs[discord_gg_CDg3VKmWp9_1097] = discord_gg_CDg3VKmWp9_971
                discord_gg_CDg3VKmWp9_180:UpdateCorners()

                return discord_gg_CDg3VKmWp9_971, discord_gg_CDg3VKmWp9_1097
            end

            discord_gg_CDg3VKmWp9_34:MakeBoxPopOut(discord_gg_CDg3VKmWp9_180, {
                discord_gg_CDg3VKmWp9_418 = discord_gg_CDg3VKmWp9_651.PopOut ~= false,
                discord_gg_CDg3VKmWp9_178 = discord_gg_CDg3VKmWp9_651.MaxPopOutHeight,
                discord_gg_CDg3VKmWp9_179 = discord_gg_CDg3VKmWp9_651.PopOutWidth,

                discord_gg_CDg3VKmWp9_541 = discord_gg_CDg3VKmWp9_1090,
                discord_gg_CDg3VKmWp9_1106 = function()
                    return { discord_gg_CDg3VKmWp9_1089 }
                end,

                discord_gg_CDg3VKmWp9_1107 = function()
                    if discord_gg_CDg3VKmWp9_180.ActiveTab then
                        discord_gg_CDg3VKmWp9_180.ActiveTab:Resize()
                    end
                    if discord_gg_CDg3VKmWp9_1087 then
                        discord_gg_CDg3VKmWp9_652:Resize()
                    end
                end,
            })

            function discord_gg_CDg3VKmWp9_180:Destroy()
                if discord_gg_CDg3VKmWp9_180.PoppedOut then
                    discord_gg_CDg3VKmWp9_180:SetPoppedOut(false)
                end

                discord_gg_CDg3VKmWp9_180.Destroyed = true

                if discord_gg_CDg3VKmWp9_180.Connections then
                    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_180.Connections do
                        discord_gg_CDg3VKmWp9_274:Disconnect()
                    end
                end

                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_971 in discord_gg_CDg3VKmWp9_180.Tabs do
                    if discord_gg_CDg3VKmWp9_971.Destroy then
                        discord_gg_CDg3VKmWp9_971:Destroy()
                    end
                end

                if discord_gg_CDg3VKmWp9_1089 then
                    discord_gg_CDg3VKmWp9_1089:Destroy()
                end

                if discord_gg_CDg3VKmWp9_539 then
                    discord_gg_CDg3VKmWp9_539:Destroy()
                end
            end

            if discord_gg_CDg3VKmWp9_651.Name then
                discord_gg_CDg3VKmWp9_971.Tabboxes[discord_gg_CDg3VKmWp9_651.Name] = discord_gg_CDg3VKmWp9_180
            else
                table.insert(discord_gg_CDg3VKmWp9_971.Tabboxes, discord_gg_CDg3VKmWp9_180)
            end

            return discord_gg_CDg3VKmWp9_180
        end

        discord_gg_CDg3VKmWp9_971.AddTabbox = discord_gg_CDg3VKmWp9_1086

        function discord_gg_CDg3VKmWp9_971:AddLeftTabbox(discord_gg_CDg3VKmWp9_171)
            return discord_gg_CDg3VKmWp9_971:AddTabbox({ discord_gg_CDg3VKmWp9_170 = 1, discord_gg_CDg3VKmWp9_171 = discord_gg_CDg3VKmWp9_171 })
        end

        function discord_gg_CDg3VKmWp9_971:AddRightTabbox(discord_gg_CDg3VKmWp9_171)
            return discord_gg_CDg3VKmWp9_971:AddTabbox({ discord_gg_CDg3VKmWp9_170 = 2, discord_gg_CDg3VKmWp9_171 = discord_gg_CDg3VKmWp9_171 })
        end

        function discord_gg_CDg3VKmWp9_971:AddGroupbox(discord_gg_CDg3VKmWp9_651)
            discord_gg_CDg3VKmWp9_651 = discord_gg_CDg3VKmWp9_34:Validate(discord_gg_CDg3VKmWp9_651, discord_gg_CDg3VKmWp9_118.Groupbox)

            if typeof(discord_gg_CDg3VKmWp9_651.Side) == "string" then
                local discord_gg_CDg3VKmWp9_1088 = string.lower(discord_gg_CDg3VKmWp9_651.Side)
                if not discord_gg_CDg3VKmWp9_261[discord_gg_CDg3VKmWp9_1088] then
                    error(string.format("Invalid side: %s", discord_gg_CDg3VKmWp9_651.Side))
                end

                discord_gg_CDg3VKmWp9_651.Side = discord_gg_CDg3VKmWp9_261[discord_gg_CDg3VKmWp9_1088]
            end

            local discord_gg_CDg3VKmWp9_539 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 0),
                discord_gg_CDg3VKmWp9_403 = (discord_gg_CDg3VKmWp9_651.Side == 1) and discord_gg_CDg3VKmWp9_1063 or discord_gg_CDg3VKmWp9_1064,
            })
            local discord_gg_CDg3VKmWp9_1108 = discord_gg_CDg3VKmWp9_381("UIListLayout", {
                discord_gg_CDg3VKmWp9_166 = UDim.new(0, 6),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_539,
            })
            discord_gg_CDg3VKmWp9_381("UIPadding", {
                discord_gg_CDg3VKmWp9_585 = UDim.new(0, 4),
                discord_gg_CDg3VKmWp9_588 = UDim.new(0, 4),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_539,
            })

            local discord_gg_CDg3VKmWp9_1109

            local discord_gg_CDg3VKmWp9_1110
            local discord_gg_CDg3VKmWp9_1111
            local discord_gg_CDg3VKmWp9_1112

            local discord_gg_CDg3VKmWp9_1113
            local discord_gg_CDg3VKmWp9_1114

            local discord_gg_CDg3VKmWp9_1115
            local discord_gg_CDg3VKmWp9_1116

            do
                discord_gg_CDg3VKmWp9_1109 = discord_gg_CDg3VKmWp9_381("Frame", {
                    discord_gg_CDg3VKmWp9_437 = "BackgroundColor",
                    discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 0),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_539,
                })
                table.insert(
                    discord_gg_CDg3VKmWp9_34.Corners,
                    discord_gg_CDg3VKmWp9_381("UICorner", {
                        discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_1002.CornerRadius),
                        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1109,
                    })
                )
                discord_gg_CDg3VKmWp9_381("UIListLayout", {
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1109,
                })
                discord_gg_CDg3VKmWp9_34:AddOutline(discord_gg_CDg3VKmWp9_1109)

                discord_gg_CDg3VKmWp9_1110 = discord_gg_CDg3VKmWp9_381("Frame", {
                    discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 0),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1109,
                })
                discord_gg_CDg3VKmWp9_381("UIPadding", {
                    discord_gg_CDg3VKmWp9_585 = UDim.new(0, 6),
                    discord_gg_CDg3VKmWp9_586 = UDim.new(0, 6),
                    discord_gg_CDg3VKmWp9_587 = UDim.new(0, 6),
                    discord_gg_CDg3VKmWp9_588 = UDim.new(0, 6),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1110,
                })

                local discord_gg_CDg3VKmWp9_1101 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_651.IconName)
                if discord_gg_CDg3VKmWp9_1101 then
                    local discord_gg_CDg3VKmWp9_1117 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
                        discord_gg_CDg3VKmWp9_432 = Vector2.new(0, 0.5),
                        discord_gg_CDg3VKmWp9_553 = discord_gg_CDg3VKmWp9_1101.Custom and "WhiteColor" or "AccentColor",
                        discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 0.5),
                        discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(22, 22),
                        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1110,
                    })
                    discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_1117, discord_gg_CDg3VKmWp9_1101)
                end

                local discord_gg_CDg3VKmWp9_1118 = if discord_gg_CDg3VKmWp9_651.DisableCollapsing ~= true then 22 else 0
                local discord_gg_CDg3VKmWp9_1119 = discord_gg_CDg3VKmWp9_381("Frame", {
                    discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(discord_gg_CDg3VKmWp9_1101 and 24 or 0, 0),
                    discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -discord_gg_CDg3VKmWp9_1118 - (discord_gg_CDg3VKmWp9_1101 and 24 or 0), 0, 0),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1110,
                })
                discord_gg_CDg3VKmWp9_381("UIListLayout", {
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1119,
                })
                discord_gg_CDg3VKmWp9_381("UIPadding", {
                    discord_gg_CDg3VKmWp9_585 = UDim.new(0, 3),
                    discord_gg_CDg3VKmWp9_586 = UDim.new(0, 6),
                    discord_gg_CDg3VKmWp9_587 = UDim.new(0, 6),
                    discord_gg_CDg3VKmWp9_588 = UDim.new(0, 3),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1119,
                })

                discord_gg_CDg3VKmWp9_1111 = discord_gg_CDg3VKmWp9_381("TextLabel", {
                    discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 0),
                    discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_651.Name,
                    discord_gg_CDg3VKmWp9_584 = 15,
                    discord_gg_CDg3VKmWp9_637 = true,
                    discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1119,
                })
                discord_gg_CDg3VKmWp9_381("UIPadding", {
                    discord_gg_CDg3VKmWp9_585 = UDim.new(0, 1),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1111,
                })

                discord_gg_CDg3VKmWp9_1112 = discord_gg_CDg3VKmWp9_381("TextLabel", {
                    discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 0),
                    discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_651.Description or "",
                    discord_gg_CDg3VKmWp9_584 = 14,
                    discord_gg_CDg3VKmWp9_686 = 0.5,
                    discord_gg_CDg3VKmWp9_637 = true,
                    discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
                    discord_gg_CDg3VKmWp9_174 = (discord_gg_CDg3VKmWp9_651.Description ~= nil),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1119,
                })

                discord_gg_CDg3VKmWp9_1115 = discord_gg_CDg3VKmWp9_381("ImageButton", {
                    discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_651.DisableCollapsing ~= true,
                    discord_gg_CDg3VKmWp9_432 = Vector2.new(1, 0.5),
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_553 = "WhiteColor",
                    discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(1, 0.5),
                    discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(22, 22),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1110,
                })
                if discord_gg_CDg3VKmWp9_441 then
                    discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_1115, discord_gg_CDg3VKmWp9_441, 180)
                end

                discord_gg_CDg3VKmWp9_1116 = discord_gg_CDg3VKmWp9_34:MakeLine(discord_gg_CDg3VKmWp9_1109, {
                    discord_gg_CDg3VKmWp9_522 = 1,
                    discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 1),
                })

                discord_gg_CDg3VKmWp9_1113 = discord_gg_CDg3VKmWp9_381("ScrollingFrame", {
                    discord_gg_CDg3VKmWp9_608 = Enum.AutomaticSize.None,
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_120 = 0,
                    discord_gg_CDg3VKmWp9_416 = UDim2.fromOffset(0, 0),
                    discord_gg_CDg3VKmWp9_522 = 2,
                    discord_gg_CDg3VKmWp9_1043 = 1,
                    discord_gg_CDg3VKmWp9_611 = 0,
                    discord_gg_CDg3VKmWp9_1103 = false,
                    discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 0),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1109,
                })

                discord_gg_CDg3VKmWp9_1114 = discord_gg_CDg3VKmWp9_381("UIListLayout", {
                    discord_gg_CDg3VKmWp9_166 = UDim.new(0, 8),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1113,
                })
                discord_gg_CDg3VKmWp9_381("UIPadding", {
                    discord_gg_CDg3VKmWp9_585 = UDim.new(0, 7),
                    discord_gg_CDg3VKmWp9_586 = UDim.new(0, 7),
                    discord_gg_CDg3VKmWp9_587 = UDim.new(0, 7),
                    discord_gg_CDg3VKmWp9_588 = UDim.new(0, 7),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1113,
                })
            end

            local discord_gg_CDg3VKmWp9_77: any = {
                discord_gg_CDg3VKmWp9_658 = "Groupbox",

                discord_gg_CDg3VKmWp9_171 = discord_gg_CDg3VKmWp9_651.Name,
                discord_gg_CDg3VKmWp9_173 = discord_gg_CDg3VKmWp9_651.Description,

                discord_gg_CDg3VKmWp9_580 = {},
                discord_gg_CDg3VKmWp9_581 = false,

                discord_gg_CDg3VKmWp9_174 = true,
                discord_gg_CDg3VKmWp9_175 = false,

                discord_gg_CDg3VKmWp9_539 = discord_gg_CDg3VKmWp9_539,
                discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_1109,
                discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_1113,

                discord_gg_CDg3VKmWp9_971 = discord_gg_CDg3VKmWp9_971,
                discord_gg_CDg3VKmWp9_51 = {},
                discord_gg_CDg3VKmWp9_968 = {}
            }

            local discord_gg_CDg3VKmWp9_1120
            local discord_gg_CDg3VKmWp9_1121

            local function discord_gg_CDg3VKmWp9_1122()
                discord_gg_CDg3VKmWp9_539.AutomaticSize = Enum.AutomaticSize.None
                discord_gg_CDg3VKmWp9_539.Size = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_1108.AbsoluteContentSize.Y / discord_gg_CDg3VKmWp9_34.DPIScale + 8)
                discord_gg_CDg3VKmWp9_539.AutomaticSize = Enum.AutomaticSize.Y
            end
            discord_gg_CDg3VKmWp9_77.RefreshBoxHolderLayout = discord_gg_CDg3VKmWp9_1122

            function discord_gg_CDg3VKmWp9_77:Resize()
                if discord_gg_CDg3VKmWp9_1120 then
                    discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_1120, true)
                    discord_gg_CDg3VKmWp9_1120 = nil
                end

                local discord_gg_CDg3VKmWp9_1123 = (discord_gg_CDg3VKmWp9_1110.AbsoluteSize.Y / discord_gg_CDg3VKmWp9_34.DPIScale)
                local discord_gg_CDg3VKmWp9_1104 = (discord_gg_CDg3VKmWp9_1114.AbsoluteContentSize.Y / discord_gg_CDg3VKmWp9_34.DPIScale) + 14
                local discord_gg_CDg3VKmWp9_1124 = discord_gg_CDg3VKmWp9_1104
                if discord_gg_CDg3VKmWp9_77.PoppedOut then
                    discord_gg_CDg3VKmWp9_1124 = math.min(discord_gg_CDg3VKmWp9_1124, discord_gg_CDg3VKmWp9_334(discord_gg_CDg3VKmWp9_77, discord_gg_CDg3VKmWp9_1123 + 1))
                end

                local discord_gg_CDg3VKmWp9_1105 = discord_gg_CDg3VKmWp9_1104 > discord_gg_CDg3VKmWp9_1124 + 1
                discord_gg_CDg3VKmWp9_1113.CanvasSize = UDim2.fromOffset(0, if discord_gg_CDg3VKmWp9_1105 then discord_gg_CDg3VKmWp9_1104 else 0)
                discord_gg_CDg3VKmWp9_1113.ScrollingEnabled = discord_gg_CDg3VKmWp9_1105

                local discord_gg_CDg3VKmWp9_626 = UDim2.new(1, 0, 0, if discord_gg_CDg3VKmWp9_77.Collapsed then discord_gg_CDg3VKmWp9_1123 else (discord_gg_CDg3VKmWp9_1123 + 1 + discord_gg_CDg3VKmWp9_1124))
                discord_gg_CDg3VKmWp9_1113.Size = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_1124)
                discord_gg_CDg3VKmWp9_1116.Visible = not discord_gg_CDg3VKmWp9_77.Collapsed

                if discord_gg_CDg3VKmWp9_34.Animations and discord_gg_CDg3VKmWp9_34.Animations.Groupbox then
                    local discord_gg_CDg3VKmWp9_65 = discord_gg_CDg3VKmWp9_34.GroupboxTweenInfo or discord_gg_CDg3VKmWp9_65.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                    local discord_gg_CDg3VKmWp9_538 = TweenService:Create(discord_gg_CDg3VKmWp9_1109, discord_gg_CDg3VKmWp9_65, { discord_gg_CDg3VKmWp9_144 = discord_gg_CDg3VKmWp9_626 })
                    discord_gg_CDg3VKmWp9_1120 = discord_gg_CDg3VKmWp9_538

                    local discord_gg_CDg3VKmWp9_274; discord_gg_CDg3VKmWp9_274 = discord_gg_CDg3VKmWp9_34:GiveSignal(discord_gg_CDg3VKmWp9_538.Completed:Once(function()
                        if discord_gg_CDg3VKmWp9_274 then
                            discord_gg_CDg3VKmWp9_274:Disconnect()
                        end

                        if discord_gg_CDg3VKmWp9_1120 == discord_gg_CDg3VKmWp9_538 then
                            discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_1120, true)
                            discord_gg_CDg3VKmWp9_1120 = nil
                        end

                        discord_gg_CDg3VKmWp9_1122()
                    end))

                    discord_gg_CDg3VKmWp9_538:Play()
                else
                    discord_gg_CDg3VKmWp9_1109.Size = discord_gg_CDg3VKmWp9_626
                    discord_gg_CDg3VKmWp9_1122()
                end
            end

            table.insert(discord_gg_CDg3VKmWp9_77.Connections, discord_gg_CDg3VKmWp9_1114:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                if discord_gg_CDg3VKmWp9_77.Visible == false or discord_gg_CDg3VKmWp9_77.Destroyed then
                    return
                end

                discord_gg_CDg3VKmWp9_77:Resize()
            end))

            function discord_gg_CDg3VKmWp9_77:SetDescription(discord_gg_CDg3VKmWp9_173: string | nil)
                discord_gg_CDg3VKmWp9_1112.Text = discord_gg_CDg3VKmWp9_173 or ""
                discord_gg_CDg3VKmWp9_1112.Visible = (discord_gg_CDg3VKmWp9_173 ~= nil)

                discord_gg_CDg3VKmWp9_77:Resize()
            end

            function discord_gg_CDg3VKmWp9_77:SetCollapsed(discord_gg_CDg3VKmWp9_175: boolean)
                if discord_gg_CDg3VKmWp9_651.DisableCollapsing == true then return end
                discord_gg_CDg3VKmWp9_77.Collapsed = discord_gg_CDg3VKmWp9_175

                if discord_gg_CDg3VKmWp9_1121 then
                    discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_1121, true)
                    discord_gg_CDg3VKmWp9_1121 = nil
                end

                local discord_gg_CDg3VKmWp9_1125 = if discord_gg_CDg3VKmWp9_175 then 0 else 180

                discord_gg_CDg3VKmWp9_1113.Visible = not discord_gg_CDg3VKmWp9_175
                if discord_gg_CDg3VKmWp9_34.Animations and discord_gg_CDg3VKmWp9_34.Animations.Groupbox then
                    local discord_gg_CDg3VKmWp9_65 = discord_gg_CDg3VKmWp9_34.GroupboxTweenInfo or discord_gg_CDg3VKmWp9_65.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
                    local discord_gg_CDg3VKmWp9_538 = TweenService:Create(discord_gg_CDg3VKmWp9_1115, discord_gg_CDg3VKmWp9_65, { discord_gg_CDg3VKmWp9_759 = discord_gg_CDg3VKmWp9_1125 })
                    discord_gg_CDg3VKmWp9_1121 = discord_gg_CDg3VKmWp9_538

                    local discord_gg_CDg3VKmWp9_274; discord_gg_CDg3VKmWp9_274 = discord_gg_CDg3VKmWp9_34:GiveSignal(discord_gg_CDg3VKmWp9_538.Completed:Connect(function()
                        if discord_gg_CDg3VKmWp9_274 then
                            discord_gg_CDg3VKmWp9_274:Disconnect()
                        end

                        if discord_gg_CDg3VKmWp9_1121 == discord_gg_CDg3VKmWp9_538 then
                            discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_1121, true)
                            discord_gg_CDg3VKmWp9_1121 = nil
                        end
                    end))

                    discord_gg_CDg3VKmWp9_538:Play()
                else
                    discord_gg_CDg3VKmWp9_1115.Rotation = discord_gg_CDg3VKmWp9_1125
                end

                discord_gg_CDg3VKmWp9_77:Resize()
            end

            function discord_gg_CDg3VKmWp9_77:ToggleCollapsed()
                if discord_gg_CDg3VKmWp9_651.DisableCollapsing == true then return end
                discord_gg_CDg3VKmWp9_77:SetCollapsed(not discord_gg_CDg3VKmWp9_77.Collapsed)
            end

            discord_gg_CDg3VKmWp9_34:MakeBoxPopOut(discord_gg_CDg3VKmWp9_77, {
                discord_gg_CDg3VKmWp9_418 = discord_gg_CDg3VKmWp9_651.PopOut ~= false,
                discord_gg_CDg3VKmWp9_178 = discord_gg_CDg3VKmWp9_651.MaxPopOutHeight,
                discord_gg_CDg3VKmWp9_179 = discord_gg_CDg3VKmWp9_651.PopOutWidth,

                discord_gg_CDg3VKmWp9_541 = discord_gg_CDg3VKmWp9_1110,
                discord_gg_CDg3VKmWp9_1106 = function()
                    local discord_gg_CDg3VKmWp9_1106 = {}
                    for discord_gg_CDg3VKmWp9_26, Child in discord_gg_CDg3VKmWp9_539:GetChildren() do
                        if Child:IsA("GuiObject") and Child ~= discord_gg_CDg3VKmWp9_77.PopOutPlaceholder then
                            table.insert(discord_gg_CDg3VKmWp9_1106, Child)
                        end
                    end
                    return discord_gg_CDg3VKmWp9_1106
                end,

                discord_gg_CDg3VKmWp9_1126 = function()
                    discord_gg_CDg3VKmWp9_1115.Visible = false
                end,
                discord_gg_CDg3VKmWp9_1107 = function()
                    discord_gg_CDg3VKmWp9_1115.Visible = discord_gg_CDg3VKmWp9_651.DisableCollapsing ~= true
                    discord_gg_CDg3VKmWp9_77:Resize()
                end
            })

            function discord_gg_CDg3VKmWp9_77:Destroy()
                if discord_gg_CDg3VKmWp9_77.PoppedOut then
                    discord_gg_CDg3VKmWp9_77:SetPoppedOut(false)
                end

                discord_gg_CDg3VKmWp9_77.Destroyed = true

                if discord_gg_CDg3VKmWp9_1120 then
                    discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_1120, true)
                    discord_gg_CDg3VKmWp9_1120 = nil
                end

                if discord_gg_CDg3VKmWp9_1121 then
                    discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_1121, true)
                    discord_gg_CDg3VKmWp9_1121 = nil
                end

                if discord_gg_CDg3VKmWp9_77.Connections then
                    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_77.Connections do
                        discord_gg_CDg3VKmWp9_274:Disconnect()
                    end
                end

                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_969 in discord_gg_CDg3VKmWp9_77.Elements do
                    if discord_gg_CDg3VKmWp9_969.Destroy then
                        discord_gg_CDg3VKmWp9_969:Destroy()
                    end
                end
                table.clear(discord_gg_CDg3VKmWp9_77.Elements)

                for discord_gg_CDg3VKmWp9_26, SubDepbox in discord_gg_CDg3VKmWp9_77.DependencyBoxes do
                    if SubDepbox.Destroy then
                        SubDepbox:Destroy()
                    end
                end
                table.clear(discord_gg_CDg3VKmWp9_77.DependencyBoxes)

                if discord_gg_CDg3VKmWp9_1109 then
                    discord_gg_CDg3VKmWp9_1109:Destroy()
                end

                if discord_gg_CDg3VKmWp9_539 then
                    discord_gg_CDg3VKmWp9_539:Destroy()
                end
            end

            function discord_gg_CDg3VKmWp9_77:SetVisible(discord_gg_CDg3VKmWp9_174: boolean)
                discord_gg_CDg3VKmWp9_77.Visible = discord_gg_CDg3VKmWp9_174
                discord_gg_CDg3VKmWp9_539.Visible = discord_gg_CDg3VKmWp9_174
                discord_gg_CDg3VKmWp9_317(discord_gg_CDg3VKmWp9_77)

                if discord_gg_CDg3VKmWp9_174 == true and discord_gg_CDg3VKmWp9_34.Searching then
                    discord_gg_CDg3VKmWp9_34:UpdateSearch(discord_gg_CDg3VKmWp9_34.SearchText)
                end
            end

            function discord_gg_CDg3VKmWp9_77:Show()
                discord_gg_CDg3VKmWp9_77:SetVisible(true)
            end

            function discord_gg_CDg3VKmWp9_77:Hide()
                discord_gg_CDg3VKmWp9_77:SetVisible(false)
            end

            if discord_gg_CDg3VKmWp9_651.DisableCollapsing ~= true then
                discord_gg_CDg3VKmWp9_1115.MouseButton1Click:Connect(function()
                    discord_gg_CDg3VKmWp9_77:ToggleCollapsed()
                end)
            end

            discord_gg_CDg3VKmWp9_77.AddTabbox = discord_gg_CDg3VKmWp9_1086
            setmetatable(discord_gg_CDg3VKmWp9_77, discord_gg_CDg3VKmWp9_817)

            discord_gg_CDg3VKmWp9_77:Resize()
            discord_gg_CDg3VKmWp9_971.Groupboxes[discord_gg_CDg3VKmWp9_651.Name] = discord_gg_CDg3VKmWp9_77

            if discord_gg_CDg3VKmWp9_651.Visible == false then
                discord_gg_CDg3VKmWp9_77:Hide()
            end

            if discord_gg_CDg3VKmWp9_651.DisableCollapsing ~= true and discord_gg_CDg3VKmWp9_651.Collapsed == true then
                discord_gg_CDg3VKmWp9_77:SetCollapsed(true)
            end

            return discord_gg_CDg3VKmWp9_77
        end

        function discord_gg_CDg3VKmWp9_971:AddLeftGroupbox(discord_gg_CDg3VKmWp9_171, discord_gg_CDg3VKmWp9_172, discord_gg_CDg3VKmWp9_174, discord_gg_CDg3VKmWp9_175, discord_gg_CDg3VKmWp9_176)
            return discord_gg_CDg3VKmWp9_971:AddGroupbox({ discord_gg_CDg3VKmWp9_170 = 1, discord_gg_CDg3VKmWp9_171 = discord_gg_CDg3VKmWp9_171, discord_gg_CDg3VKmWp9_172 = discord_gg_CDg3VKmWp9_172, discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_174, discord_gg_CDg3VKmWp9_175 = discord_gg_CDg3VKmWp9_175, discord_gg_CDg3VKmWp9_176 = discord_gg_CDg3VKmWp9_176 })
        end

        function discord_gg_CDg3VKmWp9_971:AddRightGroupbox(discord_gg_CDg3VKmWp9_171, discord_gg_CDg3VKmWp9_172, discord_gg_CDg3VKmWp9_174, discord_gg_CDg3VKmWp9_175, discord_gg_CDg3VKmWp9_176)
            return discord_gg_CDg3VKmWp9_971:AddGroupbox({ discord_gg_CDg3VKmWp9_170 = 2, discord_gg_CDg3VKmWp9_171 = discord_gg_CDg3VKmWp9_171, discord_gg_CDg3VKmWp9_172 = discord_gg_CDg3VKmWp9_172, discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_174, discord_gg_CDg3VKmWp9_175 = discord_gg_CDg3VKmWp9_175, discord_gg_CDg3VKmWp9_176 = discord_gg_CDg3VKmWp9_176 })
        end

        function discord_gg_CDg3VKmWp9_971:Hover(discord_gg_CDg3VKmWp9_646)
            if discord_gg_CDg3VKmWp9_34.ActiveTab == discord_gg_CDg3VKmWp9_971 then
                return
            end

            TweenService:Create(discord_gg_CDg3VKmWp9_1061, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_686 = discord_gg_CDg3VKmWp9_646 and 0.25 or 0.5,
            }):Play()
            if discord_gg_CDg3VKmWp9_1062 then
                TweenService:Create(discord_gg_CDg3VKmWp9_1062, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_697 = discord_gg_CDg3VKmWp9_646 and 0.25 or 0.5,
                }):Play()
            end
        end

        function discord_gg_CDg3VKmWp9_971:Show()
            if discord_gg_CDg3VKmWp9_34.ActiveTab == discord_gg_CDg3VKmWp9_971 then
                return
            end

            if discord_gg_CDg3VKmWp9_34.ActiveTab then
                discord_gg_CDg3VKmWp9_34.ActiveTab:Hide()
            end

            TweenService:Create(discord_gg_CDg3VKmWp9_1065, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_122 = 0,
            }):Play()
            if discord_gg_CDg3VKmWp9_1060 then
                TweenService:Create(discord_gg_CDg3VKmWp9_1060, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_122 = 0,
                }):Play()
            end
            TweenService:Create(discord_gg_CDg3VKmWp9_1061, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_686 = 0,
            }):Play()
            if discord_gg_CDg3VKmWp9_1062 then
                TweenService:Create(discord_gg_CDg3VKmWp9_1062, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_697 = 0,
                }):Play()
            end

            if discord_gg_CDg3VKmWp9_173 then
                discord_gg_CDg3VKmWp9_41:ShowTabInfo(discord_gg_CDg3VKmWp9_171, discord_gg_CDg3VKmWp9_173)
            end

            discord_gg_CDg3VKmWp9_34:PlayTabAnimation(discord_gg_CDg3VKmWp9_971, true)
            discord_gg_CDg3VKmWp9_971:RefreshSides()

            discord_gg_CDg3VKmWp9_34.ActiveTab = discord_gg_CDg3VKmWp9_971

            if discord_gg_CDg3VKmWp9_34.Searching then
                discord_gg_CDg3VKmWp9_34:UpdateSearch(discord_gg_CDg3VKmWp9_34.SearchText)
            end
        end

        function discord_gg_CDg3VKmWp9_971:Hide()
            TweenService:Create(discord_gg_CDg3VKmWp9_1065, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_122 = 1,
            }):Play()

            if discord_gg_CDg3VKmWp9_1060 then
                TweenService:Create(discord_gg_CDg3VKmWp9_1060, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_122 = 1,
                }):Play()
            end

            TweenService:Create(discord_gg_CDg3VKmWp9_1061, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_686 = 0.5,
            }):Play()

            if discord_gg_CDg3VKmWp9_1062 then
                TweenService:Create(discord_gg_CDg3VKmWp9_1062, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_697 = 0.5,
                }):Play()
            end

            discord_gg_CDg3VKmWp9_34:PlayTabAnimation(discord_gg_CDg3VKmWp9_971, false)
            discord_gg_CDg3VKmWp9_41:HideTabInfo()

            discord_gg_CDg3VKmWp9_34.PreviousTab = discord_gg_CDg3VKmWp9_971
            discord_gg_CDg3VKmWp9_34.ActiveTab = nil
        end

        function discord_gg_CDg3VKmWp9_971:SetVisible(discord_gg_CDg3VKmWp9_174: boolean)
            discord_gg_CDg3VKmWp9_1065.Visible = discord_gg_CDg3VKmWp9_174

            if not discord_gg_CDg3VKmWp9_174 and discord_gg_CDg3VKmWp9_34.ActiveTab == discord_gg_CDg3VKmWp9_971 then
                discord_gg_CDg3VKmWp9_971:Hide()
            end
        end

        function discord_gg_CDg3VKmWp9_971:SetOrder(NewOrder: number)
            discord_gg_CDg3VKmWp9_332 = NewOrder
            discord_gg_CDg3VKmWp9_1065.LayoutOrder = discord_gg_CDg3VKmWp9_332
        end

        function discord_gg_CDg3VKmWp9_971:SetTooltip(discord_gg_CDg3VKmWp9_136: string?)
            discord_gg_CDg3VKmWp9_971.Tooltip = discord_gg_CDg3VKmWp9_136

            if discord_gg_CDg3VKmWp9_971.TooltipTable then
                discord_gg_CDg3VKmWp9_971.TooltipTable:Destroy()
                discord_gg_CDg3VKmWp9_971.TooltipTable = nil
            end

            if typeof(discord_gg_CDg3VKmWp9_136) == "string" then
                discord_gg_CDg3VKmWp9_971.TooltipTable = discord_gg_CDg3VKmWp9_34:AddTooltip(discord_gg_CDg3VKmWp9_136, nil, discord_gg_CDg3VKmWp9_1065)
            end
        end

        function discord_gg_CDg3VKmWp9_971:Destroy()
            discord_gg_CDg3VKmWp9_971.Destroyed = true

            if discord_gg_CDg3VKmWp9_971.Connections then
                for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_274 in discord_gg_CDg3VKmWp9_971.Connections do
                    discord_gg_CDg3VKmWp9_274:Disconnect()
                end
            end

            if discord_gg_CDg3VKmWp9_971.TooltipTable then
                discord_gg_CDg3VKmWp9_971.TooltipTable:Destroy()
                discord_gg_CDg3VKmWp9_971.TooltipTable = nil
            end

            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_77 in discord_gg_CDg3VKmWp9_971.Groupboxes do
                if discord_gg_CDg3VKmWp9_77.Destroy then
                    discord_gg_CDg3VKmWp9_77:Destroy()
                end
            end
            table.clear(discord_gg_CDg3VKmWp9_971.Groupboxes)

            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_180 in discord_gg_CDg3VKmWp9_971.Tabboxes do
                if discord_gg_CDg3VKmWp9_180.Destroy then
                    discord_gg_CDg3VKmWp9_180:Destroy()
                end
            end
            table.clear(discord_gg_CDg3VKmWp9_971.Tabboxes)

            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_974 in discord_gg_CDg3VKmWp9_971.DependencyGroupboxes do
                if discord_gg_CDg3VKmWp9_974.Destroy then
                    discord_gg_CDg3VKmWp9_974:Destroy()
                end
            end

            if discord_gg_CDg3VKmWp9_528 then
                discord_gg_CDg3VKmWp9_528:Destroy()
            end

            if discord_gg_CDg3VKmWp9_1065 then
                for discord_gg_CDg3VKmWp9_325, discord_gg_CDg3VKmWp9_915 in discord_gg_CDg3VKmWp9_34.TabButtons do
                    if typeof(discord_gg_CDg3VKmWp9_915) == "table" and discord_gg_CDg3VKmWp9_915.Button == discord_gg_CDg3VKmWp9_1065 then
                        table.remove(discord_gg_CDg3VKmWp9_34.TabButtons, discord_gg_CDg3VKmWp9_325)
                        break
                    end
                end

                discord_gg_CDg3VKmWp9_1065:Destroy()
            end

            discord_gg_CDg3VKmWp9_34.Tabs[discord_gg_CDg3VKmWp9_171] = nil
        end

        if typeof(discord_gg_CDg3VKmWp9_834) == "string" then
            discord_gg_CDg3VKmWp9_971.TooltipTable = discord_gg_CDg3VKmWp9_34:AddTooltip(discord_gg_CDg3VKmWp9_834, nil, discord_gg_CDg3VKmWp9_1065)
        end

        if not discord_gg_CDg3VKmWp9_34.ActiveTab then
            discord_gg_CDg3VKmWp9_971:Show()
        end

        discord_gg_CDg3VKmWp9_1065.MouseEnter:Connect(function()
            discord_gg_CDg3VKmWp9_971:Hover(true)
        end)
        discord_gg_CDg3VKmWp9_1065.MouseLeave:Connect(function()
            discord_gg_CDg3VKmWp9_971:Hover(false)
        end)
        discord_gg_CDg3VKmWp9_1065.MouseButton1Click:Connect(discord_gg_CDg3VKmWp9_971.Show)

        discord_gg_CDg3VKmWp9_34.Tabs[discord_gg_CDg3VKmWp9_171] = discord_gg_CDg3VKmWp9_971

        return discord_gg_CDg3VKmWp9_971
    end

    function discord_gg_CDg3VKmWp9_41:AddKeyTab(...)
        local discord_gg_CDg3VKmWp9_171 = nil
        local discord_gg_CDg3VKmWp9_186 = nil
        local discord_gg_CDg3VKmWp9_173 = nil
        local discord_gg_CDg3VKmWp9_834 = nil
        local discord_gg_CDg3VKmWp9_332 = nil

        if select("#", ...) == 1 and typeof(...) == "table" then
            local discord_gg_CDg3VKmWp9_651 = select(1, ...)
            discord_gg_CDg3VKmWp9_171 = discord_gg_CDg3VKmWp9_651.Name or "Tab"
            discord_gg_CDg3VKmWp9_186 = discord_gg_CDg3VKmWp9_651.Icon
            discord_gg_CDg3VKmWp9_173 = discord_gg_CDg3VKmWp9_651.Description
            discord_gg_CDg3VKmWp9_834 = discord_gg_CDg3VKmWp9_651.Tooltip
            discord_gg_CDg3VKmWp9_332 = discord_gg_CDg3VKmWp9_651.Order
        else
            discord_gg_CDg3VKmWp9_171 = select(1, ...) or "Tab"
            discord_gg_CDg3VKmWp9_186 = select(2, ...)
            discord_gg_CDg3VKmWp9_173 = select(3, ...)
            discord_gg_CDg3VKmWp9_332 = select(4, ...)
        end

        if not tonumber(discord_gg_CDg3VKmWp9_332) then
            discord_gg_CDg3VKmWp9_332 = #Tabs:GetChildren()
        end

        discord_gg_CDg3VKmWp9_186 = discord_gg_CDg3VKmWp9_186 or "key"

        local discord_gg_CDg3VKmWp9_1065: TextButton
        local discord_gg_CDg3VKmWp9_1060
        local discord_gg_CDg3VKmWp9_1061
        local discord_gg_CDg3VKmWp9_1062

        local discord_gg_CDg3VKmWp9_528

        discord_gg_CDg3VKmWp9_186 = if discord_gg_CDg3VKmWp9_186 == "key" then discord_gg_CDg3VKmWp9_443 else discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_186)
        do
            discord_gg_CDg3VKmWp9_1065 = discord_gg_CDg3VKmWp9_381("TextButton", {
                discord_gg_CDg3VKmWp9_437 = "MainColor",
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 40),
                discord_gg_CDg3VKmWp9_136 = "",
                discord_gg_CDg3VKmWp9_522 = discord_gg_CDg3VKmWp9_332,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_49,
            })
            discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_164.CornerRadius),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1065,
            })

            if discord_gg_CDg3VKmWp9_164.Indicator then
                discord_gg_CDg3VKmWp9_1060 = discord_gg_CDg3VKmWp9_381("Frame", {
                    discord_gg_CDg3VKmWp9_432 = Vector2.new(1, 0.5),
                    discord_gg_CDg3VKmWp9_437 = "AccentColor",
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_143 = UDim2.new(0, -2, 0.5, 0),
                    discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(discord_gg_CDg3VKmWp9_164.IndicatorWidth, discord_gg_CDg3VKmWp9_164.IndicatorHeight),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1065,
                })

                discord_gg_CDg3VKmWp9_381("UICorner", {
                    discord_gg_CDg3VKmWp9_97 = UDim.new(1, 0),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1060,
                })
            end

            local discord_gg_CDg3VKmWp9_1066 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1065,
            })
            local discord_gg_CDg3VKmWp9_1067 = discord_gg_CDg3VKmWp9_381("UIPadding", {
                discord_gg_CDg3VKmWp9_585 = UDim.new(0, discord_gg_CDg3VKmWp9_1018 and 6 or 11),
                discord_gg_CDg3VKmWp9_586 = UDim.new(0, discord_gg_CDg3VKmWp9_1018 and 6 or 12),
                discord_gg_CDg3VKmWp9_587 = UDim.new(0, discord_gg_CDg3VKmWp9_1018 and 6 or 12),
                discord_gg_CDg3VKmWp9_588 = UDim.new(0, discord_gg_CDg3VKmWp9_1018 and 6 or 11),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1066,
            })

            discord_gg_CDg3VKmWp9_1061 = discord_gg_CDg3VKmWp9_381("TextLabel", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(30, 0),
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -30, 1, 0),
                discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_171,
                discord_gg_CDg3VKmWp9_584 = 16,
                discord_gg_CDg3VKmWp9_686 = 0.5,
                discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
                discord_gg_CDg3VKmWp9_174 = not discord_gg_CDg3VKmWp9_1018,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1066,
            })

            if discord_gg_CDg3VKmWp9_186 then
                discord_gg_CDg3VKmWp9_1062 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
                    discord_gg_CDg3VKmWp9_553 = discord_gg_CDg3VKmWp9_186.Custom and "WhiteColor" or "AccentColor",
                    discord_gg_CDg3VKmWp9_697 = 0.5,
                    discord_gg_CDg3VKmWp9_238 = Enum.ScaleType.Fit,
                    discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
                    discord_gg_CDg3VKmWp9_695 = discord_gg_CDg3VKmWp9_1018 and Enum.SizeConstraint.RelativeXY or Enum.SizeConstraint.RelativeYY,
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1066,
                })
                discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_1062, discord_gg_CDg3VKmWp9_186)
            end

            table.insert(discord_gg_CDg3VKmWp9_34.TabButtons, {
                discord_gg_CDg3VKmWp9_583 = discord_gg_CDg3VKmWp9_1061,
                discord_gg_CDg3VKmWp9_166 = discord_gg_CDg3VKmWp9_1067,
                discord_gg_CDg3VKmWp9_186 = discord_gg_CDg3VKmWp9_1062,
            })

            discord_gg_CDg3VKmWp9_528 = discord_gg_CDg3VKmWp9_381("ScrollingFrame", {
                discord_gg_CDg3VKmWp9_608 = Enum.AutomaticSize.Y,
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_416 = UDim2.fromScale(0, 0),
                discord_gg_CDg3VKmWp9_611 = 0,
                discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0, 0),
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
                discord_gg_CDg3VKmWp9_174 = false,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
            })
            discord_gg_CDg3VKmWp9_381("UIListLayout", {
                discord_gg_CDg3VKmWp9_829 = Enum.HorizontalAlignment.Center,
                discord_gg_CDg3VKmWp9_166 = UDim.new(0, 8),
                discord_gg_CDg3VKmWp9_842 = Enum.VerticalAlignment.Center,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_528,
            })
            discord_gg_CDg3VKmWp9_381("UIPadding", {
                discord_gg_CDg3VKmWp9_586 = UDim.new(0, 1),
                discord_gg_CDg3VKmWp9_587 = UDim.new(0, 1),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_528,
            })
        end

        local discord_gg_CDg3VKmWp9_971 = {
            discord_gg_CDg3VKmWp9_173 = discord_gg_CDg3VKmWp9_173,
            discord_gg_CDg3VKmWp9_1127 = true,

            discord_gg_CDg3VKmWp9_834 = discord_gg_CDg3VKmWp9_834,
            discord_gg_CDg3VKmWp9_645 = nil,

            discord_gg_CDg3VKmWp9_968 = {},

            discord_gg_CDg3VKmWp9_41 = discord_gg_CDg3VKmWp9_41,
            discord_gg_CDg3VKmWp9_596 = discord_gg_CDg3VKmWp9_1065,
            discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_528
        }

        function discord_gg_CDg3VKmWp9_971:AddKeyBox(discord_gg_CDg3VKmWp9_199)
            assert(typeof(discord_gg_CDg3VKmWp9_199) == "function", "Callback must be a function")

            local discord_gg_CDg3VKmWp9_540 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.new(0.75, 0, 0, 21),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_528,
            })

            local discord_gg_CDg3VKmWp9_853 = discord_gg_CDg3VKmWp9_381("TextBox", {
                discord_gg_CDg3VKmWp9_437 = "MainColor",
                discord_gg_CDg3VKmWp9_854 = "Key",
                discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -71, 1, 0),
                discord_gg_CDg3VKmWp9_584 = 14,
                discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
            })
            discord_gg_CDg3VKmWp9_381("UIPadding", {
                discord_gg_CDg3VKmWp9_586 = UDim.new(0, 8),
                discord_gg_CDg3VKmWp9_587 = UDim.new(0, 8),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_853,
            })
            local discord_gg_CDg3VKmWp9_856 = discord_gg_CDg3VKmWp9_381("UIStroke", {
                discord_gg_CDg3VKmWp9_235 = "OutlineColor",
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_853,
            })
            table.insert(
                discord_gg_CDg3VKmWp9_34.Corners,
                discord_gg_CDg3VKmWp9_381("UICorner", {
                    discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_853,
                })
            )

            discord_gg_CDg3VKmWp9_853.Focused:Connect(function()
                discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_856].Color = "AccentColor"
                TweenService:Create(discord_gg_CDg3VKmWp9_856, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_235 = discord_gg_CDg3VKmWp9_34.Scheme.AccentColor,
                }):Play()
            end)

            discord_gg_CDg3VKmWp9_853.FocusLost:Connect(function()
                discord_gg_CDg3VKmWp9_34.Registry[discord_gg_CDg3VKmWp9_856].Color = "OutlineColor"
                TweenService:Create(discord_gg_CDg3VKmWp9_856, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_235 = discord_gg_CDg3VKmWp9_34.Scheme.OutlineColor,
                }):Play()
            end)

            local discord_gg_CDg3VKmWp9_596 = discord_gg_CDg3VKmWp9_381("TextButton", {
                discord_gg_CDg3VKmWp9_432 = Vector2.new(1, 0),
                discord_gg_CDg3VKmWp9_437 = "MainColor",
                discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(1, 0),
                discord_gg_CDg3VKmWp9_144 = UDim2.new(0, 63, 1, 0),
                discord_gg_CDg3VKmWp9_136 = "Execute",
                discord_gg_CDg3VKmWp9_584 = 14,
                discord_gg_CDg3VKmWp9_686 = 0.4,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_540,
            })
            discord_gg_CDg3VKmWp9_381("UIStroke", {
                discord_gg_CDg3VKmWp9_235 = "OutlineColor",
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_596,
            })
            table.insert(
                discord_gg_CDg3VKmWp9_34.Corners,
                discord_gg_CDg3VKmWp9_381("UICorner", {
                    discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_596,
                })
            )

            discord_gg_CDg3VKmWp9_596.MouseEnter:Connect(function()
                TweenService:Create(discord_gg_CDg3VKmWp9_596, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_686 = 0,
                }):Play()
            end)

            discord_gg_CDg3VKmWp9_596.MouseLeave:Connect(function()
                TweenService:Create(discord_gg_CDg3VKmWp9_596, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_686 = 0.4,
                }):Play()
            end)

            discord_gg_CDg3VKmWp9_596.InputBegan:Connect(function(discord_gg_CDg3VKmWp9_203)
                if not discord_gg_CDg3VKmWp9_277(discord_gg_CDg3VKmWp9_203) then
                    return
                end

                if not discord_gg_CDg3VKmWp9_34:MouseIsOverFrame(discord_gg_CDg3VKmWp9_596, discord_gg_CDg3VKmWp9_397(discord_gg_CDg3VKmWp9_203.Position, discord_gg_CDg3VKmWp9_596)) then
                    return
                end

                discord_gg_CDg3VKmWp9_199(discord_gg_CDg3VKmWp9_853.Text)
            end)
        end

        function discord_gg_CDg3VKmWp9_971:Destroy()
            if discord_gg_CDg3VKmWp9_528 then
                discord_gg_CDg3VKmWp9_528:Destroy()
            end

            if discord_gg_CDg3VKmWp9_1065 then
                for discord_gg_CDg3VKmWp9_325, discord_gg_CDg3VKmWp9_915 in discord_gg_CDg3VKmWp9_34.TabButtons do
                    if typeof(discord_gg_CDg3VKmWp9_915) == "table" and discord_gg_CDg3VKmWp9_915.Button == discord_gg_CDg3VKmWp9_1065 then
                        table.remove(discord_gg_CDg3VKmWp9_34.TabButtons, discord_gg_CDg3VKmWp9_325)
                        break
                    end
                end

                discord_gg_CDg3VKmWp9_1065:Destroy()
            end

            discord_gg_CDg3VKmWp9_34.Tabs[discord_gg_CDg3VKmWp9_171] = nil
        end

        function discord_gg_CDg3VKmWp9_971:SetOrder(NewOrder: number)
            discord_gg_CDg3VKmWp9_332 = NewOrder
            discord_gg_CDg3VKmWp9_1065.LayoutOrder = discord_gg_CDg3VKmWp9_332
        end

        function discord_gg_CDg3VKmWp9_971:RefreshSides() end
        function discord_gg_CDg3VKmWp9_971:Resize() end
        function discord_gg_CDg3VKmWp9_971:UpdateCorners() end

        function discord_gg_CDg3VKmWp9_971:Hover(discord_gg_CDg3VKmWp9_646)
            if discord_gg_CDg3VKmWp9_34.ActiveTab == discord_gg_CDg3VKmWp9_971 then
                return
            end

            TweenService:Create(discord_gg_CDg3VKmWp9_1061, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_686 = discord_gg_CDg3VKmWp9_646 and 0.25 or 0.5,
            }):Play()
            if discord_gg_CDg3VKmWp9_1062 then
                TweenService:Create(discord_gg_CDg3VKmWp9_1062, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_697 = discord_gg_CDg3VKmWp9_646 and 0.25 or 0.5,
                }):Play()
            end
        end

        function discord_gg_CDg3VKmWp9_971:Show()
            if discord_gg_CDg3VKmWp9_34.ActiveTab == discord_gg_CDg3VKmWp9_971 then
                return
            end

            if discord_gg_CDg3VKmWp9_34.ActiveTab then
                discord_gg_CDg3VKmWp9_34.ActiveTab:Hide()
            end

            TweenService:Create(discord_gg_CDg3VKmWp9_1065, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_122 = 0,
            }):Play()

            if discord_gg_CDg3VKmWp9_1060 then
                TweenService:Create(discord_gg_CDg3VKmWp9_1060, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_122 = 0,
                }):Play()
            end

            TweenService:Create(discord_gg_CDg3VKmWp9_1061, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_686 = 0,
            }):Play()

            if discord_gg_CDg3VKmWp9_1062 then
                TweenService:Create(discord_gg_CDg3VKmWp9_1062, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_697 = 0,
                }):Play()
            end

            discord_gg_CDg3VKmWp9_34:PlayTabAnimation(discord_gg_CDg3VKmWp9_971, true)

            if discord_gg_CDg3VKmWp9_173 then
                discord_gg_CDg3VKmWp9_41:ShowTabInfo(discord_gg_CDg3VKmWp9_171, discord_gg_CDg3VKmWp9_173)
            end

            discord_gg_CDg3VKmWp9_971:RefreshSides()

            discord_gg_CDg3VKmWp9_34.ActiveTab = discord_gg_CDg3VKmWp9_971

            if discord_gg_CDg3VKmWp9_34.Searching then
                discord_gg_CDg3VKmWp9_34:UpdateSearch(discord_gg_CDg3VKmWp9_34.SearchText)
            end
        end

        function discord_gg_CDg3VKmWp9_971:Hide()
            TweenService:Create(discord_gg_CDg3VKmWp9_1065, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_122 = 1,
            }):Play()

            if discord_gg_CDg3VKmWp9_1060 then
                TweenService:Create(discord_gg_CDg3VKmWp9_1060, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_122 = 1,
                }):Play()
            end

            TweenService:Create(discord_gg_CDg3VKmWp9_1061, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_686 = 0.5,
            }):Play()

            if discord_gg_CDg3VKmWp9_1062 then
                TweenService:Create(discord_gg_CDg3VKmWp9_1062, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_697 = 0.5,
                }):Play()
            end

            discord_gg_CDg3VKmWp9_34:PlayTabAnimation(discord_gg_CDg3VKmWp9_971, false)
            discord_gg_CDg3VKmWp9_41:HideTabInfo()

            discord_gg_CDg3VKmWp9_34.PreviousTab = discord_gg_CDg3VKmWp9_971
            discord_gg_CDg3VKmWp9_34.ActiveTab = nil
        end

        function discord_gg_CDg3VKmWp9_971:SetVisible(discord_gg_CDg3VKmWp9_174: boolean)
            discord_gg_CDg3VKmWp9_1065.Visible = discord_gg_CDg3VKmWp9_174

            if not discord_gg_CDg3VKmWp9_174 and discord_gg_CDg3VKmWp9_34.ActiveTab == discord_gg_CDg3VKmWp9_971 then
                discord_gg_CDg3VKmWp9_971:Hide()
            end
        end

        function discord_gg_CDg3VKmWp9_971:SetTooltip(discord_gg_CDg3VKmWp9_136: string?)
            discord_gg_CDg3VKmWp9_971.Tooltip = discord_gg_CDg3VKmWp9_136

            if discord_gg_CDg3VKmWp9_971.TooltipTable then
                discord_gg_CDg3VKmWp9_971.TooltipTable:Destroy()
                discord_gg_CDg3VKmWp9_971.TooltipTable = nil
            end

            if typeof(discord_gg_CDg3VKmWp9_136) == "string" then
                discord_gg_CDg3VKmWp9_971.TooltipTable = discord_gg_CDg3VKmWp9_34:AddTooltip(discord_gg_CDg3VKmWp9_136, nil, discord_gg_CDg3VKmWp9_1065)
            end
        end

        if typeof(discord_gg_CDg3VKmWp9_834) == "string" then
            discord_gg_CDg3VKmWp9_971.TooltipTable = discord_gg_CDg3VKmWp9_34:AddTooltip(discord_gg_CDg3VKmWp9_834, nil, discord_gg_CDg3VKmWp9_1065)
        end

        if not discord_gg_CDg3VKmWp9_34.ActiveTab then
            discord_gg_CDg3VKmWp9_971:Show()
        end

        discord_gg_CDg3VKmWp9_1065.MouseEnter:Connect(function()
            discord_gg_CDg3VKmWp9_971:Hover(true)
        end)
        discord_gg_CDg3VKmWp9_1065.MouseLeave:Connect(function()
            discord_gg_CDg3VKmWp9_971:Hover(false)
        end)
        discord_gg_CDg3VKmWp9_1065.MouseButton1Click:Connect(discord_gg_CDg3VKmWp9_971.Show)

        discord_gg_CDg3VKmWp9_971.Container = discord_gg_CDg3VKmWp9_528
        setmetatable(discord_gg_CDg3VKmWp9_971, discord_gg_CDg3VKmWp9_817)

        discord_gg_CDg3VKmWp9_34.Tabs[discord_gg_CDg3VKmWp9_171] = discord_gg_CDg3VKmWp9_971

        return discord_gg_CDg3VKmWp9_971
    end

    function discord_gg_CDg3VKmWp9_41:AddDialog(discord_gg_CDg3VKmWp9_308, discord_gg_CDg3VKmWp9_651)
        discord_gg_CDg3VKmWp9_651 = discord_gg_CDg3VKmWp9_34:Validate(discord_gg_CDg3VKmWp9_651, discord_gg_CDg3VKmWp9_118.Dialog)

        local discord_gg_CDg3VKmWp9_1128
        local discord_gg_CDg3VKmWp9_1129
        local discord_gg_CDg3VKmWp9_1130
        local discord_gg_CDg3VKmWp9_1131
        local discord_gg_CDg3VKmWp9_1132 = {}

        discord_gg_CDg3VKmWp9_1129 = discord_gg_CDg3VKmWp9_381("TextButton", {
            discord_gg_CDg3VKmWp9_124 = false,
            discord_gg_CDg3VKmWp9_437 = "DarkColor",
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
            discord_gg_CDg3VKmWp9_136 = "",
            discord_gg_CDg3VKmWp9_419 = false,
            discord_gg_CDg3VKmWp9_429 = 9000,
            discord_gg_CDg3VKmWp9_174 = true,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_328,
        })
        TweenService:Create(discord_gg_CDg3VKmWp9_1129, discord_gg_CDg3VKmWp9_34.TweenInfo, {
            discord_gg_CDg3VKmWp9_122 = 0.5,
        }):Play()

        discord_gg_CDg3VKmWp9_1128 = discord_gg_CDg3VKmWp9_381("TextButton", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0.5),
            discord_gg_CDg3VKmWp9_437 = "BackgroundColor",
            discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0.5, 0.5),
            discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(300, 0),
            discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
            discord_gg_CDg3VKmWp9_136 = "",
            discord_gg_CDg3VKmWp9_124 = false,
            discord_gg_CDg3VKmWp9_429 = 1,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1129,
        })
        table.insert(
            discord_gg_CDg3VKmWp9_34.Corners,
            discord_gg_CDg3VKmWp9_381("UICorner", {
                discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_1002.CornerRadius),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1128,
            })
        )
        discord_gg_CDg3VKmWp9_34:AddOutline(discord_gg_CDg3VKmWp9_1128)

        local discord_gg_CDg3VKmWp9_1133 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 0),
            discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
            discord_gg_CDg3VKmWp9_429 = 2,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1128,
        })
        local discord_gg_CDg3VKmWp9_1134 = discord_gg_CDg3VKmWp9_381("UIScale", {
            discord_gg_CDg3VKmWp9_451 = 0.95,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1128,
        })
        TweenService:Create(discord_gg_CDg3VKmWp9_1134, discord_gg_CDg3VKmWp9_34.TweenInfo, {
            discord_gg_CDg3VKmWp9_451 = 1
        }):Play()
        local discord_gg_CDg3VKmWp9_1135 = discord_gg_CDg3VKmWp9_381("UIPadding", {
            discord_gg_CDg3VKmWp9_585 = UDim.new(0, 15),
            discord_gg_CDg3VKmWp9_586 = UDim.new(0, 15),
            discord_gg_CDg3VKmWp9_587 = UDim.new(0, 15),
            discord_gg_CDg3VKmWp9_588 = UDim.new(0, 15),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1133,
        })
        local discord_gg_CDg3VKmWp9_1136 = discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_166 = UDim.new(0, 10),
            discord_gg_CDg3VKmWp9_138 = Enum.SortOrder.LayoutOrder,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1133,
        })

        local discord_gg_CDg3VKmWp9_1137 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 0),
            discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
            discord_gg_CDg3VKmWp9_522 = 1,
            discord_gg_CDg3VKmWp9_429 = 2,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1133,
        })
        discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_166 = UDim.new(0, 6),
            discord_gg_CDg3VKmWp9_138 = Enum.SortOrder.LayoutOrder,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1137,
        })
        discord_gg_CDg3VKmWp9_381("UIPadding", {
            discord_gg_CDg3VKmWp9_585 = UDim.new(0, 5),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1137,
        })

        local discord_gg_CDg3VKmWp9_1138 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 20),
            discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
            discord_gg_CDg3VKmWp9_522 = 1,
            discord_gg_CDg3VKmWp9_429 = 2,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1137,
        })
        discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_166 = UDim.new(0, 6),
            discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
            discord_gg_CDg3VKmWp9_842 = Enum.VerticalAlignment.Center,
            discord_gg_CDg3VKmWp9_138 = Enum.SortOrder.LayoutOrder,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1138,
        })

        if discord_gg_CDg3VKmWp9_651.Icon then
            local discord_gg_CDg3VKmWp9_840 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_651.Icon)
            if discord_gg_CDg3VKmWp9_840 then
                local discord_gg_CDg3VKmWp9_1139 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
                    discord_gg_CDg3VKmWp9_122 = 1,
                    discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(16, 16),
                    discord_gg_CDg3VKmWp9_553 = discord_gg_CDg3VKmWp9_651.TitleColor or "FontColor",
                    discord_gg_CDg3VKmWp9_522 = 1,
                    discord_gg_CDg3VKmWp9_429 = 2,
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1138,
                })
                discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_1139, discord_gg_CDg3VKmWp9_840)
            end
        end

        local discord_gg_CDg3VKmWp9_1140 = discord_gg_CDg3VKmWp9_381("TextLabel", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 18),
            discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_651.Title,
            discord_gg_CDg3VKmWp9_584 = 18,
            discord_gg_CDg3VKmWp9_129 = discord_gg_CDg3VKmWp9_651.TitleColor or "FontColor",
            discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
            discord_gg_CDg3VKmWp9_522 = 2,
            discord_gg_CDg3VKmWp9_429 = 2,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1138,
        })

        local discord_gg_CDg3VKmWp9_1141 = discord_gg_CDg3VKmWp9_381("TextLabel", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 14),
            discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_651.Description,
            discord_gg_CDg3VKmWp9_584 = 14,
            discord_gg_CDg3VKmWp9_686 = discord_gg_CDg3VKmWp9_651.DescriptionColor and 0 or 0.2,
            discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
            discord_gg_CDg3VKmWp9_129 = discord_gg_CDg3VKmWp9_651.DescriptionColor or "FontColor",
            discord_gg_CDg3VKmWp9_637 = true,
            discord_gg_CDg3VKmWp9_522 = 2,
            discord_gg_CDg3VKmWp9_429 = 2,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1137,
        })

        discord_gg_CDg3VKmWp9_1130 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 0),
            discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
            discord_gg_CDg3VKmWp9_522 = 4,
            discord_gg_CDg3VKmWp9_429 = 2,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1133,
        })
        local discord_gg_CDg3VKmWp9_1142 = discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_166 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_138 = Enum.SortOrder.LayoutOrder,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1130,
        })
        discord_gg_CDg3VKmWp9_381("UIPadding", {
            discord_gg_CDg3VKmWp9_585 = UDim.new(0, 5),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1130,
        })

        local discord_gg_CDg3VKmWp9_1143 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_437 = "OutlineColor",
            discord_gg_CDg3VKmWp9_122 = 0,
            discord_gg_CDg3VKmWp9_120 = 0,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 1),
            discord_gg_CDg3VKmWp9_522 = 5,
            discord_gg_CDg3VKmWp9_429 = 2,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1133,
        })

        discord_gg_CDg3VKmWp9_1131 = discord_gg_CDg3VKmWp9_381("Frame", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 0),
            discord_gg_CDg3VKmWp9_551 = Enum.AutomaticSize.Y,
            discord_gg_CDg3VKmWp9_522 = 6,
            discord_gg_CDg3VKmWp9_429 = 2,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1133,
        })
        discord_gg_CDg3VKmWp9_381("UIListLayout", {
            discord_gg_CDg3VKmWp9_166 = UDim.new(0, 8),
            discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
            discord_gg_CDg3VKmWp9_829 = Enum.HorizontalAlignment.Right,
            discord_gg_CDg3VKmWp9_1144 = true,
            discord_gg_CDg3VKmWp9_138 = Enum.SortOrder.LayoutOrder,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1131,
        })
        discord_gg_CDg3VKmWp9_381("UIPadding", {
            discord_gg_CDg3VKmWp9_588 = UDim.new(0, 5),
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1131,
        })

        local discord_gg_CDg3VKmWp9_181 = {
            discord_gg_CDg3VKmWp9_581 = false,
            discord_gg_CDg3VKmWp9_968 = {},
            discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_1130,
            discord_gg_CDg3VKmWp9_183 = discord_gg_CDg3VKmWp9_651.OutsideClickDismiss,
        }

        function discord_gg_CDg3VKmWp9_181:Resize()
            local discord_gg_CDg3VKmWp9_642 = (discord_gg_CDg3VKmWp9_328.AbsoluteSize.X / discord_gg_CDg3VKmWp9_34.DPIScale) * 0.75
            local discord_gg_CDg3VKmWp9_1145 = 400

            local discord_gg_CDg3VKmWp9_1146 = 0
            local discord_gg_CDg3VKmWp9_1147 = 0
            local discord_gg_CDg3VKmWp9_1148 = false

            for discord_gg_CDg3VKmWp9_26, BtnWrap in discord_gg_CDg3VKmWp9_1132 do
                discord_gg_CDg3VKmWp9_1148 = true
                discord_gg_CDg3VKmWp9_1147 = discord_gg_CDg3VKmWp9_1147 + 1
                discord_gg_CDg3VKmWp9_1146 = discord_gg_CDg3VKmWp9_1146 + BtnWrap.Container.Size.X.Offset
            end

            local discord_gg_CDg3VKmWp9_1149 = discord_gg_CDg3VKmWp9_1145
            if discord_gg_CDg3VKmWp9_1148 then
                local discord_gg_CDg3VKmWp9_1150 = discord_gg_CDg3VKmWp9_1146 + ((discord_gg_CDg3VKmWp9_1147 - 1) * 8) + 30
                discord_gg_CDg3VKmWp9_1149 = math.max(discord_gg_CDg3VKmWp9_1145, math.min(discord_gg_CDg3VKmWp9_1150, discord_gg_CDg3VKmWp9_642))
            end

            discord_gg_CDg3VKmWp9_1128.Size = UDim2.fromOffset(discord_gg_CDg3VKmWp9_1149, 0)

            local discord_gg_CDg3VKmWp9_1151, discord_gg_CDg3VKmWp9_1152 = discord_gg_CDg3VKmWp9_34:GetTextBounds(discord_gg_CDg3VKmWp9_1141.Text, discord_gg_CDg3VKmWp9_34.Scheme.Font, 14, discord_gg_CDg3VKmWp9_1149 - 30)
            discord_gg_CDg3VKmWp9_1141.Size = UDim2.new(1, 0, 0, discord_gg_CDg3VKmWp9_1152)

            local discord_gg_CDg3VKmWp9_1153 = false
            for discord_gg_CDg3VKmWp9_26, v in discord_gg_CDg3VKmWp9_1130:GetChildren() do
                if not v:IsA("UIListLayout") and not v:IsA("UIPadding") then
                    discord_gg_CDg3VKmWp9_1153 = true
                    break
                end
            end
            discord_gg_CDg3VKmWp9_1130.Visible = discord_gg_CDg3VKmWp9_1153

            discord_gg_CDg3VKmWp9_1131.Visible = discord_gg_CDg3VKmWp9_1148
            discord_gg_CDg3VKmWp9_1143.Visible = discord_gg_CDg3VKmWp9_1148
        end

        function discord_gg_CDg3VKmWp9_181:SetTitle(discord_gg_CDg3VKmWp9_141)
            discord_gg_CDg3VKmWp9_1140.Text = discord_gg_CDg3VKmWp9_141
            discord_gg_CDg3VKmWp9_181:Resize()
        end

        function discord_gg_CDg3VKmWp9_181:SetDescription(discord_gg_CDg3VKmWp9_173)
            discord_gg_CDg3VKmWp9_1141.Text = discord_gg_CDg3VKmWp9_173
            discord_gg_CDg3VKmWp9_181:Resize()
        end

        function discord_gg_CDg3VKmWp9_181:Dismiss()
            if discord_gg_CDg3VKmWp9_181.Destroyed then
                return
            end

            discord_gg_CDg3VKmWp9_181.Destroyed = true

            if discord_gg_CDg3VKmWp9_34.ActiveDialog == discord_gg_CDg3VKmWp9_181 then
                discord_gg_CDg3VKmWp9_34.ActiveDialog = nil
            end

            for discord_gg_CDg3VKmWp9_325 = #Dialog.Elements, 1, -1 do
                local discord_gg_CDg3VKmWp9_969 = discord_gg_CDg3VKmWp9_181.Elements[discord_gg_CDg3VKmWp9_325]
                if discord_gg_CDg3VKmWp9_969 and discord_gg_CDg3VKmWp9_969.Destroy then
                    discord_gg_CDg3VKmWp9_969:Destroy()
                end
            end
            table.clear(discord_gg_CDg3VKmWp9_181.Elements)

            local discord_gg_CDg3VKmWp9_1154 = TweenService:Create(discord_gg_CDg3VKmWp9_1134, discord_gg_CDg3VKmWp9_34.TweenInfo, { discord_gg_CDg3VKmWp9_451 = 0.95 })
            TweenService:Create(discord_gg_CDg3VKmWp9_1129, discord_gg_CDg3VKmWp9_34.TweenInfo, { discord_gg_CDg3VKmWp9_122 = 1 }):Play()
            discord_gg_CDg3VKmWp9_1154:Play()

            task.delay(discord_gg_CDg3VKmWp9_34.TweenInfo.Time, function()
                discord_gg_CDg3VKmWp9_1129:Destroy()
            end)
            discord_gg_CDg3VKmWp9_34.Dialogues[discord_gg_CDg3VKmWp9_308] = nil
        end

        discord_gg_CDg3VKmWp9_1129.MouseButton1Click:Connect(function()
            if discord_gg_CDg3VKmWp9_651.OutsideClickDismiss then
                discord_gg_CDg3VKmWp9_181:Dismiss()
            end
        end)

        function discord_gg_CDg3VKmWp9_181:RemoveFooterButton(ButtonIdx)
            if discord_gg_CDg3VKmWp9_1132[ButtonIdx] then
                discord_gg_CDg3VKmWp9_1132[ButtonIdx].Container:Destroy()
                discord_gg_CDg3VKmWp9_1132[ButtonIdx] = nil
            end
        end

        function discord_gg_CDg3VKmWp9_181:SetButtonDisabled(ButtonIdx, discord_gg_CDg3VKmWp9_202)
            if discord_gg_CDg3VKmWp9_1132[ButtonIdx] and type(discord_gg_CDg3VKmWp9_1132[ButtonIdx].SetDisabled) == "function" then
                discord_gg_CDg3VKmWp9_1132[ButtonIdx]:SetDisabled(discord_gg_CDg3VKmWp9_202)
            end
        end

        function discord_gg_CDg3VKmWp9_181:SetButtonOrder(ButtonIdx, discord_gg_CDg3VKmWp9_332)
            if discord_gg_CDg3VKmWp9_1132[ButtonIdx] and discord_gg_CDg3VKmWp9_1132[ButtonIdx].Container then
                discord_gg_CDg3VKmWp9_1132[ButtonIdx].Container.LayoutOrder = discord_gg_CDg3VKmWp9_332
            end
        end

        function discord_gg_CDg3VKmWp9_181:AddFooterButton(ButtonIdx, ButtonInfo)
            discord_gg_CDg3VKmWp9_181:RemoveFooterButton(ButtonIdx)

            local discord_gg_CDg3VKmWp9_1155 = ButtonInfo.WaitTime or 0

            local discord_gg_CDg3VKmWp9_1156 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(0, 26),
                discord_gg_CDg3VKmWp9_522 = ButtonInfo.Order or 0,
                discord_gg_CDg3VKmWp9_429 = 2,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1131,
            })

            local discord_gg_CDg3VKmWp9_1157 = "MainColor"
            local discord_gg_CDg3VKmWp9_1158 = "OutlineColor"
            local discord_gg_CDg3VKmWp9_848 = ButtonInfo.Variant or "Primary"

            if discord_gg_CDg3VKmWp9_848 == "Primary" then
                discord_gg_CDg3VKmWp9_1157 = "FontColor"
                discord_gg_CDg3VKmWp9_1158 = "FontColor"
            elseif discord_gg_CDg3VKmWp9_848 == "Secondary" then
                discord_gg_CDg3VKmWp9_1157 = "MainColor"
                discord_gg_CDg3VKmWp9_1158 = "OutlineColor"
            elseif discord_gg_CDg3VKmWp9_848 == "Destructive" then
                discord_gg_CDg3VKmWp9_1157 = "DestructiveColor"
                discord_gg_CDg3VKmWp9_1158 = "DestructiveColor"
            elseif discord_gg_CDg3VKmWp9_848 == "Ghost" then
                discord_gg_CDg3VKmWp9_1157 = "BackgroundColor"
                discord_gg_CDg3VKmWp9_1158 = "BackgroundColor"
            end

            local discord_gg_CDg3VKmWp9_1159 = discord_gg_CDg3VKmWp9_381("TextButton", {
                discord_gg_CDg3VKmWp9_437 = discord_gg_CDg3VKmWp9_1157,
                discord_gg_CDg3VKmWp9_761 = discord_gg_CDg3VKmWp9_1158,
                discord_gg_CDg3VKmWp9_122 = discord_gg_CDg3VKmWp9_1155 > 0 and 0.5 or 0,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(0, 26),
                discord_gg_CDg3VKmWp9_136 = "",
                discord_gg_CDg3VKmWp9_124 = false,
                discord_gg_CDg3VKmWp9_429 = 2,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1156,
            })
            discord_gg_CDg3VKmWp9_34:AddOutline(discord_gg_CDg3VKmWp9_1159)
            table.insert(
                discord_gg_CDg3VKmWp9_34.Corners,
                discord_gg_CDg3VKmWp9_381("UICorner", {
                    discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1159
                })
            )

            local discord_gg_CDg3VKmWp9_1160 = discord_gg_CDg3VKmWp9_381("UIPadding", {
                discord_gg_CDg3VKmWp9_586 = UDim.new(0, 15),
                discord_gg_CDg3VKmWp9_587 = UDim.new(0, 15),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1159,
            })

            local discord_gg_CDg3VKmWp9_1161 = discord_gg_CDg3VKmWp9_34.Scheme.FontColor
            if discord_gg_CDg3VKmWp9_848 == "Primary" then
                discord_gg_CDg3VKmWp9_1161 = discord_gg_CDg3VKmWp9_34.Scheme.BackgroundColor
            elseif discord_gg_CDg3VKmWp9_848 == "Destructive" then
                discord_gg_CDg3VKmWp9_1161 = Color3.new(1, 1, 1)
            end

            local discord_gg_CDg3VKmWp9_1162 = discord_gg_CDg3VKmWp9_381("TextLabel", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
                discord_gg_CDg3VKmWp9_136 = ButtonInfo.Title or ButtonIdx,
                discord_gg_CDg3VKmWp9_129 = discord_gg_CDg3VKmWp9_1161,
                discord_gg_CDg3VKmWp9_686 = discord_gg_CDg3VKmWp9_1155 > 0 and 0.5 or 0,
                discord_gg_CDg3VKmWp9_584 = 14,
                discord_gg_CDg3VKmWp9_429 = 2,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1159,
            })

            local discord_gg_CDg3VKmWp9_1163, discord_gg_CDg3VKmWp9_26 = discord_gg_CDg3VKmWp9_34:GetTextBounds(discord_gg_CDg3VKmWp9_1162.Text, discord_gg_CDg3VKmWp9_34.Scheme.Font, 14, 250)
            discord_gg_CDg3VKmWp9_1156.Size = UDim2.fromOffset(discord_gg_CDg3VKmWp9_1163 + 30, 26)
            discord_gg_CDg3VKmWp9_1159.Size = UDim2.fromOffset(discord_gg_CDg3VKmWp9_1163 + 30, 26)

            local discord_gg_CDg3VKmWp9_1164
            if discord_gg_CDg3VKmWp9_1155 > 0 then
                discord_gg_CDg3VKmWp9_1164 = discord_gg_CDg3VKmWp9_381("Frame", {
                    discord_gg_CDg3VKmWp9_437 = "AccentColor",
                    discord_gg_CDg3VKmWp9_120 = 0,
                    discord_gg_CDg3VKmWp9_143 = UDim2.new(0, 0, 1, -2),
                    discord_gg_CDg3VKmWp9_144 = UDim2.new(0, 0, 0, 2),
                    discord_gg_CDg3VKmWp9_429 = 2,
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1159,
                })
                table.insert(
                    discord_gg_CDg3VKmWp9_34.Corners,
                    discord_gg_CDg3VKmWp9_381("UICorner", {
                        discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius),
                        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1164
                    })
                )
            end

            local discord_gg_CDg3VKmWp9_930 = discord_gg_CDg3VKmWp9_1155 <= 0

            local discord_gg_CDg3VKmWp9_1165 = {
                discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_1156,
                discord_gg_CDg3VKmWp9_1166 = function(self, discord_gg_CDg3VKmWp9_202)
                    discord_gg_CDg3VKmWp9_930 = not discord_gg_CDg3VKmWp9_202
                    if discord_gg_CDg3VKmWp9_202 then
                        TweenService:Create(discord_gg_CDg3VKmWp9_1159, discord_gg_CDg3VKmWp9_34.TweenInfo, { discord_gg_CDg3VKmWp9_122 = 0.5 }):Play()
                        TweenService:Create(discord_gg_CDg3VKmWp9_1162, discord_gg_CDg3VKmWp9_34.TweenInfo, { discord_gg_CDg3VKmWp9_686 = 0.5 }):Play()
                    else
                        TweenService:Create(discord_gg_CDg3VKmWp9_1159, discord_gg_CDg3VKmWp9_34.TweenInfo, { discord_gg_CDg3VKmWp9_122 = 0 }):Play()
                        TweenService:Create(discord_gg_CDg3VKmWp9_1162, discord_gg_CDg3VKmWp9_34.TweenInfo, { discord_gg_CDg3VKmWp9_686 = 0 }):Play()
                    end
                end
            }

            local discord_gg_CDg3VKmWp9_1167 = typeof(discord_gg_CDg3VKmWp9_1157) == "Color3" and discord_gg_CDg3VKmWp9_1157 or discord_gg_CDg3VKmWp9_34.Scheme[discord_gg_CDg3VKmWp9_1157]
            local discord_gg_CDg3VKmWp9_1168 = discord_gg_CDg3VKmWp9_848 == "Ghost" and discord_gg_CDg3VKmWp9_34.Scheme.MainColor or discord_gg_CDg3VKmWp9_34:GetBetterColor(discord_gg_CDg3VKmWp9_1167, 10)

            discord_gg_CDg3VKmWp9_1159.MouseEnter:Connect(function()
                if not discord_gg_CDg3VKmWp9_930 then return end
                TweenService:Create(discord_gg_CDg3VKmWp9_1159, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_437 = discord_gg_CDg3VKmWp9_1168
                }):Play()
            end)
            discord_gg_CDg3VKmWp9_1159.MouseLeave:Connect(function()
                if not discord_gg_CDg3VKmWp9_930 then return end
                TweenService:Create(discord_gg_CDg3VKmWp9_1159, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_437 = discord_gg_CDg3VKmWp9_1167
                }):Play()
            end)

            discord_gg_CDg3VKmWp9_1159.MouseButton1Click:Connect(function()
                if not discord_gg_CDg3VKmWp9_930 then return end
                if ButtonInfo.Callback then
                    ButtonInfo.Callback(discord_gg_CDg3VKmWp9_181)
                end
                if discord_gg_CDg3VKmWp9_651.AutoDismiss then
                    discord_gg_CDg3VKmWp9_181:Dismiss()
                end
            end)

            if discord_gg_CDg3VKmWp9_1155 > 0 then
                TweenService:Create(discord_gg_CDg3VKmWp9_1164, discord_gg_CDg3VKmWp9_65.new(discord_gg_CDg3VKmWp9_1155, Enum.EasingStyle.Linear), {
                    discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 2)
                }):Play()

                task.delay(discord_gg_CDg3VKmWp9_1155, function()
                    discord_gg_CDg3VKmWp9_1165:SetDisabled(false)
                    if discord_gg_CDg3VKmWp9_1164 then
                        TweenService:Create(discord_gg_CDg3VKmWp9_1164, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                            discord_gg_CDg3VKmWp9_122 = 1
                        }):Play()
                    end
                end)
            end

            discord_gg_CDg3VKmWp9_1132[ButtonIdx] = discord_gg_CDg3VKmWp9_1165
        end

        for discord_gg_CDg3VKmWp9_846, BInfo in discord_gg_CDg3VKmWp9_651.FooterButtons do
            if type(discord_gg_CDg3VKmWp9_846) == "number" and BInfo.Id then discord_gg_CDg3VKmWp9_846 = BInfo.Id end
            discord_gg_CDg3VKmWp9_181:AddFooterButton(discord_gg_CDg3VKmWp9_846, BInfo)
        end

        setmetatable(discord_gg_CDg3VKmWp9_181, discord_gg_CDg3VKmWp9_817)
        discord_gg_CDg3VKmWp9_34.Dialogues[discord_gg_CDg3VKmWp9_308] = discord_gg_CDg3VKmWp9_181

        discord_gg_CDg3VKmWp9_181:Resize()

        discord_gg_CDg3VKmWp9_34.ActiveDialog = discord_gg_CDg3VKmWp9_181
        return discord_gg_CDg3VKmWp9_181
    end

    local discord_gg_CDg3VKmWp9_1169 = { "BackgroundTransparency" }
    local discord_gg_CDg3VKmWp9_961 = { "BackgroundTransparency", "ImageTransparency" }
    local discord_gg_CDg3VKmWp9_1170 = { "BackgroundTransparency", "TextTransparency" }
    local discord_gg_CDg3VKmWp9_1171 = { "Transparency" }

    local function discord_gg_CDg3VKmWp9_1172(discord_gg_CDg3VKmWp9_988, Properties)
        local discord_gg_CDg3VKmWp9_1173 = discord_gg_CDg3VKmWp9_526[discord_gg_CDg3VKmWp9_988]
        if not discord_gg_CDg3VKmWp9_1173 then
            discord_gg_CDg3VKmWp9_1173 = {}
            discord_gg_CDg3VKmWp9_526[discord_gg_CDg3VKmWp9_988] = discord_gg_CDg3VKmWp9_1173
        end

        for discord_gg_CDg3VKmWp9_26, Prop in Properties do
            if not discord_gg_CDg3VKmWp9_34.Toggled then
                discord_gg_CDg3VKmWp9_1173[Prop] = discord_gg_CDg3VKmWp9_988[Prop]
            end

            if discord_gg_CDg3VKmWp9_1173[Prop] ~= nil and discord_gg_CDg3VKmWp9_1173[Prop] ~= 1 then
                TweenService:Create(discord_gg_CDg3VKmWp9_988, discord_gg_CDg3VKmWp9_34.WindowAnimationInfo, {
                    [Prop] = discord_gg_CDg3VKmWp9_34.Toggled and discord_gg_CDg3VKmWp9_1173[Prop] or 1,
                }):Play()
            end
        end
    end

    local function discord_gg_CDg3VKmWp9_1174(discord_gg_CDg3VKmWp9_174: boolean)
        if not discord_gg_CDg3VKmWp9_383() then
            return
        end

        local discord_gg_CDg3VKmWp9_1175 = discord_gg_CDg3VKmWp9_382.Adornee
        if not discord_gg_CDg3VKmWp9_1175 or not discord_gg_CDg3VKmWp9_1175.Parent then
            return
        end

        if discord_gg_CDg3VKmWp9_174 then
            local discord_gg_CDg3VKmWp9_1176 = discord_gg_CDg3VKmWp9_5.Character
            local discord_gg_CDg3VKmWp9_1177 = discord_gg_CDg3VKmWp9_1176 and discord_gg_CDg3VKmWp9_1176:FindFirstChild("HumanoidRootPart")
            if discord_gg_CDg3VKmWp9_1177 and discord_gg_CDg3VKmWp9_1177:IsA("BasePart") then
                local discord_gg_CDg3VKmWp9_1178 = math.max(0.1, tonumber(discord_gg_CDg3VKmWp9_382.Distance) or 8)
                discord_gg_CDg3VKmWp9_1175.CFrame = CFrame.lookAt(
                    discord_gg_CDg3VKmWp9_1177.Position + discord_gg_CDg3VKmWp9_1177.CFrame.LookVector * discord_gg_CDg3VKmWp9_1178,
                    discord_gg_CDg3VKmWp9_1177.Position
                )
            end

            discord_gg_CDg3VKmWp9_1175.LocalTransparencyModifier = 0
            if discord_gg_CDg3VKmWp9_34.ScreenGui and discord_gg_CDg3VKmWp9_34.ScreenGui:IsA("SurfaceGui") then
                discord_gg_CDg3VKmWp9_34.ScreenGui.Enabled = true
            end
        else
            if discord_gg_CDg3VKmWp9_34.ScreenGui and discord_gg_CDg3VKmWp9_34.ScreenGui:IsA("SurfaceGui") then
                discord_gg_CDg3VKmWp9_34.ScreenGui.Enabled = false
            end
            discord_gg_CDg3VKmWp9_1175.LocalTransparencyModifier = 1
        end
    end

    function discord_gg_CDg3VKmWp9_41:Toggle(discord_gg_CDg3VKmWp9_554: boolean?)
        if discord_gg_CDg3VKmWp9_1044 then
            return
        end

        if discord_gg_CDg3VKmWp9_34.ActiveLoading then
            if discord_gg_CDg3VKmWp9_554 == true then
                return
            end

            if not discord_gg_CDg3VKmWp9_34.Toggled then
                return
            end
        end

        if typeof(discord_gg_CDg3VKmWp9_554) == "boolean" then
            discord_gg_CDg3VKmWp9_34.Toggled = discord_gg_CDg3VKmWp9_554
        else
            discord_gg_CDg3VKmWp9_34.Toggled = not discord_gg_CDg3VKmWp9_34.Toggled
        end

        if discord_gg_CDg3VKmWp9_34.Toggled then
            discord_gg_CDg3VKmWp9_1174(true)
        end

        if discord_gg_CDg3VKmWp9_34.Animations and discord_gg_CDg3VKmWp9_34.Animations.ToggleWindow == true then
            local discord_gg_CDg3VKmWp9_1179 = discord_gg_CDg3VKmWp9_34.WindowAnimationInfo.Time
            discord_gg_CDg3VKmWp9_1044 = true

            if discord_gg_CDg3VKmWp9_34.Toggled then
                discord_gg_CDg3VKmWp9_328.Visible = true
            end

            if discord_gg_CDg3VKmWp9_34.Toggled then
                discord_gg_CDg3VKmWp9_1172(discord_gg_CDg3VKmWp9_328, { "BackgroundTransparency" })
                task.wait(discord_gg_CDg3VKmWp9_1179 / 2)
            else
                task.delay(discord_gg_CDg3VKmWp9_1179 / 2, discord_gg_CDg3VKmWp9_1172, discord_gg_CDg3VKmWp9_328, { "BackgroundTransparency" })
            end

            for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_244 in discord_gg_CDg3VKmWp9_328:GetDescendants() do
                if discord_gg_CDg3VKmWp9_244 == discord_gg_CDg3VKmWp9_1016 then
                    continue
                end

                if discord_gg_CDg3VKmWp9_244:IsA("GuiObject") then
                    local discord_gg_CDg3VKmWp9_1180 = discord_gg_CDg3VKmWp9_244.ClassName
                    if discord_gg_CDg3VKmWp9_1180 == "ImageLabel" or discord_gg_CDg3VKmWp9_1180 == "ImageButton" then
                        discord_gg_CDg3VKmWp9_1172(discord_gg_CDg3VKmWp9_244, discord_gg_CDg3VKmWp9_961)
                    elseif discord_gg_CDg3VKmWp9_1180 == "TextLabel" or discord_gg_CDg3VKmWp9_1180 == "TextBox" or discord_gg_CDg3VKmWp9_1180 == "TextButton" then
                        discord_gg_CDg3VKmWp9_1172(discord_gg_CDg3VKmWp9_244, discord_gg_CDg3VKmWp9_1170)
                    else
                        discord_gg_CDg3VKmWp9_1172(discord_gg_CDg3VKmWp9_244, discord_gg_CDg3VKmWp9_1169)
                    end
                elseif discord_gg_CDg3VKmWp9_244.ClassName == "UIStroke" then
                    discord_gg_CDg3VKmWp9_1172(discord_gg_CDg3VKmWp9_244, discord_gg_CDg3VKmWp9_1171)
                end
            end

            task.delay(discord_gg_CDg3VKmWp9_1179, function()
                discord_gg_CDg3VKmWp9_328.Visible = discord_gg_CDg3VKmWp9_34.Toggled
                discord_gg_CDg3VKmWp9_1044 = false
                if not discord_gg_CDg3VKmWp9_34.Toggled then
                    discord_gg_CDg3VKmWp9_1174(false)
                end
            end)
        else
            discord_gg_CDg3VKmWp9_328.Visible = discord_gg_CDg3VKmWp9_34.Toggled
            if not discord_gg_CDg3VKmWp9_34.Toggled then
                discord_gg_CDg3VKmWp9_1174(false)
            end
        end

        if discord_gg_CDg3VKmWp9_1002.UnlockMouseWhileOpen then
            discord_gg_CDg3VKmWp9_430.Modal = discord_gg_CDg3VKmWp9_34.Toggled
        end

        if discord_gg_CDg3VKmWp9_34.Toggled and not discord_gg_CDg3VKmWp9_34.IsMobile then
            local discord_gg_CDg3VKmWp9_115 = discord_gg_CDg3VKmWp9_34.ShowCursorBinding
            discord_gg_CDg3VKmWp9_34.OriginalMouseIconEnabled = UserInputService.MouseIconEnabled

            pcall(function() RunService:UnbindFromRenderStep(discord_gg_CDg3VKmWp9_115) end)
            RunService:BindToRenderStep(discord_gg_CDg3VKmWp9_115, Enum.RenderPriority.Last.Value, function()
                UserInputService.MouseIconEnabled = not discord_gg_CDg3VKmWp9_34.ShowCustomCursor

                discord_gg_CDg3VKmWp9_433.Position = UDim2.fromOffset(discord_gg_CDg3VKmWp9_398(nil, discord_gg_CDg3VKmWp9_38).X, discord_gg_CDg3VKmWp9_398(nil, discord_gg_CDg3VKmWp9_38).Y)
                discord_gg_CDg3VKmWp9_433.Visible = discord_gg_CDg3VKmWp9_34.ShowCustomCursor

                if discord_gg_CDg3VKmWp9_34.Unloaded == true or not (discord_gg_CDg3VKmWp9_34.Toggled and discord_gg_CDg3VKmWp9_38 and discord_gg_CDg3VKmWp9_38.Parent) then
                    discord_gg_CDg3VKmWp9_438()
                end
            end)
        elseif not discord_gg_CDg3VKmWp9_34.Toggled then
            discord_gg_CDg3VKmWp9_438()
            discord_gg_CDg3VKmWp9_636.Visible = false

            for discord_gg_CDg3VKmWp9_26, Option in discord_gg_CDg3VKmWp9_34.Options do
                if Option.Type == "ColorPicker" then
                    Option.ColorMenu:Close()
                    Option.ContextMenu:Close()
                elseif Option.Type == "Dropdown" or Option.Type == "KeyPicker" then
                    Option.Menu:Close()
                end
            end
        end
    end

    function discord_gg_CDg3VKmWp9_34:Toggle(discord_gg_CDg3VKmWp9_554: boolean?)
        return discord_gg_CDg3VKmWp9_41:Toggle(discord_gg_CDg3VKmWp9_554)
    end

    if discord_gg_CDg3VKmWp9_1002.EnableSidebarResize then
        local discord_gg_CDg3VKmWp9_1181 = (discord_gg_CDg3VKmWp9_1002.MinSidebarWidth + discord_gg_CDg3VKmWp9_1002.SidebarCompactWidth) * discord_gg_CDg3VKmWp9_1002.SidebarCollapseThreshold
        local discord_gg_CDg3VKmWp9_495, discord_gg_CDg3VKmWp9_783
        local discord_gg_CDg3VKmWp9_496 = false
        local discord_gg_CDg3VKmWp9_200

        local discord_gg_CDg3VKmWp9_1182 = discord_gg_CDg3VKmWp9_381("TextButton", {
            discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0),
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0.5, 0),
            discord_gg_CDg3VKmWp9_144 = UDim2.new(0, 8, 1, 0),
            discord_gg_CDg3VKmWp9_136 = "",
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_598,
        })
        discord_gg_CDg3VKmWp9_1182.MouseEnter:Connect(function()
            TweenService:Create(discord_gg_CDg3VKmWp9_598, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_437 = discord_gg_CDg3VKmWp9_34:GetLighterColor(discord_gg_CDg3VKmWp9_34.Scheme.OutlineColor),
            }):Play()
        end)
        discord_gg_CDg3VKmWp9_1182.MouseLeave:Connect(function()
            if discord_gg_CDg3VKmWp9_496 then
                return
            end
            TweenService:Create(discord_gg_CDg3VKmWp9_598, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                discord_gg_CDg3VKmWp9_437 = discord_gg_CDg3VKmWp9_34.Scheme.OutlineColor,
            }):Play()
        end)

        discord_gg_CDg3VKmWp9_1182.InputBegan:Connect(function(discord_gg_CDg3VKmWp9_203: InputObject)
            if not discord_gg_CDg3VKmWp9_277(discord_gg_CDg3VKmWp9_203) then
                return
            end

            discord_gg_CDg3VKmWp9_34.CantDragForced = true

            discord_gg_CDg3VKmWp9_495 = discord_gg_CDg3VKmWp9_397(discord_gg_CDg3VKmWp9_203.Position, discord_gg_CDg3VKmWp9_1182)
            discord_gg_CDg3VKmWp9_783 = discord_gg_CDg3VKmWp9_41:GetSidebarWidth()
            discord_gg_CDg3VKmWp9_496 = true

            discord_gg_CDg3VKmWp9_200 = discord_gg_CDg3VKmWp9_203.Changed:Connect(function()
                if discord_gg_CDg3VKmWp9_203.UserInputState ~= Enum.UserInputState.End then
                    return
                end

                discord_gg_CDg3VKmWp9_34.CantDragForced = false
                TweenService:Create(discord_gg_CDg3VKmWp9_598, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_437 = discord_gg_CDg3VKmWp9_34.Scheme.OutlineColor,
                }):Play()

                discord_gg_CDg3VKmWp9_496 = false
                if discord_gg_CDg3VKmWp9_200 and discord_gg_CDg3VKmWp9_200.Connected then
                    discord_gg_CDg3VKmWp9_200:Disconnect()
                    discord_gg_CDg3VKmWp9_200 = nil
                end
            end)
        end)

        discord_gg_CDg3VKmWp9_34:GiveSignal(UserInputService.InputChanged:Connect(function(discord_gg_CDg3VKmWp9_203: InputObject)
            if not discord_gg_CDg3VKmWp9_34.Toggled or not (discord_gg_CDg3VKmWp9_38 and discord_gg_CDg3VKmWp9_38.Parent) then
                discord_gg_CDg3VKmWp9_496 = false
                if discord_gg_CDg3VKmWp9_200 and discord_gg_CDg3VKmWp9_200.Connected then
                    discord_gg_CDg3VKmWp9_200:Disconnect()
                    discord_gg_CDg3VKmWp9_200 = nil
                end

                return
            end

            if discord_gg_CDg3VKmWp9_496 and discord_gg_CDg3VKmWp9_278(discord_gg_CDg3VKmWp9_203) then
                local discord_gg_CDg3VKmWp9_503 = discord_gg_CDg3VKmWp9_397(discord_gg_CDg3VKmWp9_203.Position, discord_gg_CDg3VKmWp9_1182) - discord_gg_CDg3VKmWp9_495
                local discord_gg_CDg3VKmWp9_546 = discord_gg_CDg3VKmWp9_783 + discord_gg_CDg3VKmWp9_503.X

                if discord_gg_CDg3VKmWp9_1002.DisableCompactingSnap then
                    discord_gg_CDg3VKmWp9_41:SetSidebarWidth(discord_gg_CDg3VKmWp9_546)
                    return
                end

                if discord_gg_CDg3VKmWp9_546 > discord_gg_CDg3VKmWp9_1181 then
                    discord_gg_CDg3VKmWp9_41:SetSidebarWidth(math.max(discord_gg_CDg3VKmWp9_546, discord_gg_CDg3VKmWp9_1002.MinSidebarWidth))
                else
                    discord_gg_CDg3VKmWp9_41:SetSidebarWidth(discord_gg_CDg3VKmWp9_1002.SidebarCompactWidth)
                end
            end
        end))
    end

    discord_gg_CDg3VKmWp9_41:SetAlwaysOnTop(discord_gg_CDg3VKmWp9_1002.AlwaysOnTop)
    if discord_gg_CDg3VKmWp9_1002.EnableCompacting and discord_gg_CDg3VKmWp9_1002.SidebarCompacted then
        discord_gg_CDg3VKmWp9_41:SetSidebarWidth(discord_gg_CDg3VKmWp9_1002.SidebarCompactWidth)
    end
    if discord_gg_CDg3VKmWp9_1002.AutoShow and not discord_gg_CDg3VKmWp9_34.ActiveLoading then
        task.spawn(discord_gg_CDg3VKmWp9_34.Toggle)
    end

    if discord_gg_CDg3VKmWp9_34.IsMobile then
        local discord_gg_CDg3VKmWp9_1183 = discord_gg_CDg3VKmWp9_34:AddDraggableButton("Toggle", function()
            discord_gg_CDg3VKmWp9_34:Toggle()
        end, true)

        local discord_gg_CDg3VKmWp9_1184 = discord_gg_CDg3VKmWp9_34:AddDraggableButton("Lock", function(self)
            discord_gg_CDg3VKmWp9_34.CantDragForced = not discord_gg_CDg3VKmWp9_34.CantDragForced
            self:SetText(discord_gg_CDg3VKmWp9_34.CantDragForced and "Unlock" or "Lock")
        end, true)

        if discord_gg_CDg3VKmWp9_1002.MobileButtonsSide == "Right" then
            discord_gg_CDg3VKmWp9_1183.Button.AnchorPoint = Vector2.new(1, 0)
            discord_gg_CDg3VKmWp9_1183.Button.Position = UDim2.new(1, -6, 0, 6)

            discord_gg_CDg3VKmWp9_1184.Button.AnchorPoint = Vector2.new(1, 0)
            discord_gg_CDg3VKmWp9_1184.Button.Position = UDim2.new(1, -(discord_gg_CDg3VKmWp9_1183.Button.Size.X.Offset + 12), 0, 6)
        else
            discord_gg_CDg3VKmWp9_1183.Button.AnchorPoint = Vector2.new(0, 0)
            discord_gg_CDg3VKmWp9_1183.Button.Position = UDim2.fromOffset(6, 6)

            discord_gg_CDg3VKmWp9_1184.Button.AnchorPoint = Vector2.new(0, 0)
            discord_gg_CDg3VKmWp9_1184.Button.Position = UDim2.fromOffset(discord_gg_CDg3VKmWp9_1183.Button.Size.X.Offset + 12, 6)
        end

        if discord_gg_CDg3VKmWp9_1002.ShowMobileButtons == false then
            discord_gg_CDg3VKmWp9_1183.Button.Visible = false
            discord_gg_CDg3VKmWp9_1184.Button.Visible = false
        end
    end

    discord_gg_CDg3VKmWp9_34:GiveSignal(discord_gg_CDg3VKmWp9_886:GetPropertyChangedSignal("Text"):Connect(function()
        discord_gg_CDg3VKmWp9_34:UpdateSearch(discord_gg_CDg3VKmWp9_886.Text)
    end))

    discord_gg_CDg3VKmWp9_34:GiveSignal(UserInputService.InputBegan:Connect(function(discord_gg_CDg3VKmWp9_203: InputObject)
        if discord_gg_CDg3VKmWp9_34.Unloaded then
            return
        end

        if discord_gg_CDg3VKmWp9_203.KeyCode == Enum.KeyCode.Escape then
            local discord_gg_CDg3VKmWp9_1185 = UserInputService:GetFocusedTextBox()
            if discord_gg_CDg3VKmWp9_1185 then
                discord_gg_CDg3VKmWp9_1185:ReleaseFocus()
                return
            end

            if discord_gg_CDg3VKmWp9_34.ActiveDialog and discord_gg_CDg3VKmWp9_34.ActiveDialog.OutsideClickDismiss ~= false then
                discord_gg_CDg3VKmWp9_34.ActiveDialog:Dismiss()
                return
            end

            if discord_gg_CDg3VKmWp9_603 then
                discord_gg_CDg3VKmWp9_603:Close()
                return
            end

            return
        end

        if UserInputService:GetFocusedTextBox() then
            return
        end

        if discord_gg_CDg3VKmWp9_203.KeyCode == discord_gg_CDg3VKmWp9_34.ToggleKeybind then
            discord_gg_CDg3VKmWp9_34:Toggle()
        end
    end))

    discord_gg_CDg3VKmWp9_34:GiveSignal(UserInputService.WindowFocused:Connect(function()
        discord_gg_CDg3VKmWp9_34.IsRobloxFocused = true
    end))
    discord_gg_CDg3VKmWp9_34:GiveSignal(UserInputService.WindowFocusReleased:Connect(function()
        discord_gg_CDg3VKmWp9_34.IsRobloxFocused = false
    end))

    discord_gg_CDg3VKmWp9_41.MainFrame = discord_gg_CDg3VKmWp9_328
    discord_gg_CDg3VKmWp9_34.Window = discord_gg_CDg3VKmWp9_41

    return discord_gg_CDg3VKmWp9_41
end

function discord_gg_CDg3VKmWp9_34:CreateLoading(discord_gg_CDg3VKmWp9_1186)
    if discord_gg_CDg3VKmWp9_34.ActiveLoading then
        warn("Loading GUI already exists, you cannot create multiple Loading GUIs.")
        return discord_gg_CDg3VKmWp9_34.ActiveLoading
    end

    discord_gg_CDg3VKmWp9_1186 = discord_gg_CDg3VKmWp9_34:Validate(discord_gg_CDg3VKmWp9_1186, discord_gg_CDg3VKmWp9_118.Loading)

    local discord_gg_CDg3VKmWp9_185 = {
        discord_gg_CDg3VKmWp9_189 = discord_gg_CDg3VKmWp9_1186.CurrentStep,
        discord_gg_CDg3VKmWp9_190 = discord_gg_CDg3VKmWp9_1186.TotalSteps,

        discord_gg_CDg3VKmWp9_191 = discord_gg_CDg3VKmWp9_1186.ShowSidebar,
        discord_gg_CDg3VKmWp9_192 = discord_gg_CDg3VKmWp9_1186.AutoResizeHeight,
        discord_gg_CDg3VKmWp9_149 = discord_gg_CDg3VKmWp9_1186.AlwaysOnTop,

        discord_gg_CDg3VKmWp9_1187 = false,
        discord_gg_CDg3VKmWp9_581 = false,

        discord_gg_CDg3VKmWp9_193 = discord_gg_CDg3VKmWp9_1186.WindowWidth,
        discord_gg_CDg3VKmWp9_194 = discord_gg_CDg3VKmWp9_1186.WindowHeight,
        discord_gg_CDg3VKmWp9_1188 = discord_gg_CDg3VKmWp9_1186.WindowHeight,
        discord_gg_CDg3VKmWp9_1189 = discord_gg_CDg3VKmWp9_1186.WindowHeight,

        discord_gg_CDg3VKmWp9_195 = discord_gg_CDg3VKmWp9_1186.ContentWidth,
        discord_gg_CDg3VKmWp9_196 = discord_gg_CDg3VKmWp9_1186.SidebarWidth,
    }

    local discord_gg_CDg3VKmWp9_38 = discord_gg_CDg3VKmWp9_381("ScreenGui", {
        discord_gg_CDg3VKmWp9_171 = "ObsidianLoading",
        discord_gg_CDg3VKmWp9_423 = 1000,
        discord_gg_CDg3VKmWp9_424 = false,
        discord_gg_CDg3VKmWp9_425 = Enum.ZIndexBehavior.Sibling
    })
    discord_gg_CDg3VKmWp9_411(discord_gg_CDg3VKmWp9_38)
    discord_gg_CDg3VKmWp9_185.ScreenGui = discord_gg_CDg3VKmWp9_38
    discord_gg_CDg3VKmWp9_426(discord_gg_CDg3VKmWp9_38, discord_gg_CDg3VKmWp9_1186.AlwaysOnTop)

    discord_gg_CDg3VKmWp9_38.DescendantRemoving:Connect(function(discord_gg_CDg3VKmWp9_244)
        task.defer(function()
            if discord_gg_CDg3VKmWp9_244.Parent and discord_gg_CDg3VKmWp9_244:IsDescendantOf(discord_gg_CDg3VKmWp9_38) then
                return
            end

            discord_gg_CDg3VKmWp9_34:RemoveFromRegistry(discord_gg_CDg3VKmWp9_244)
        end)
    end)

    local discord_gg_CDg3VKmWp9_328 = discord_gg_CDg3VKmWp9_381("TextButton", {
        discord_gg_CDg3VKmWp9_171 = "Main",
        discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0.5),
        discord_gg_CDg3VKmWp9_437 = function()
            return discord_gg_CDg3VKmWp9_34:GetBetterColor(discord_gg_CDg3VKmWp9_34.Scheme.BackgroundColor, -1)
        end,
        discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0.5, 0.5),
        discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(discord_gg_CDg3VKmWp9_185.ShowSidebar and (discord_gg_CDg3VKmWp9_185.ContentWidth + discord_gg_CDg3VKmWp9_185.SidebarWidth) or discord_gg_CDg3VKmWp9_185.WindowWidth, discord_gg_CDg3VKmWp9_185.WindowHeight),
        discord_gg_CDg3VKmWp9_420 = true,
        discord_gg_CDg3VKmWp9_136 = "",
        discord_gg_CDg3VKmWp9_124 = false,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_38,
    })
    discord_gg_CDg3VKmWp9_34:AddOutline(discord_gg_CDg3VKmWp9_328)
    table.insert(discord_gg_CDg3VKmWp9_34.Corners, discord_gg_CDg3VKmWp9_381("UICorner", { discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius), discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_328 }))

    local discord_gg_CDg3VKmWp9_1190 = discord_gg_CDg3VKmWp9_381("UIScale", {
        discord_gg_CDg3VKmWp9_451 = discord_gg_CDg3VKmWp9_34.IsMobile and 0.8 or 1,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_328
    })
    table.insert(discord_gg_CDg3VKmWp9_34.Scales, discord_gg_CDg3VKmWp9_1190)
    discord_gg_CDg3VKmWp9_34.ScalesOffset[discord_gg_CDg3VKmWp9_1190] = discord_gg_CDg3VKmWp9_34.IsMobile and 0.2 or 0

    local discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_171 = "Content",
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(0, 0),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(0, discord_gg_CDg3VKmWp9_185.ContentWidth, 1, 0),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_328,
    })

    local discord_gg_CDg3VKmWp9_1191 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_171 = "SideBar",
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(discord_gg_CDg3VKmWp9_185.ContentWidth, 0),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(0, discord_gg_CDg3VKmWp9_185.ShowSidebar and discord_gg_CDg3VKmWp9_185.SidebarWidth or 0, 1, 0),
        discord_gg_CDg3VKmWp9_420 = true,
        discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_185.ShowSidebar,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_328,
    })
    local discord_gg_CDg3VKmWp9_1192 = discord_gg_CDg3VKmWp9_381("UICorner", { discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius), discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1191 })
    table.insert(discord_gg_CDg3VKmWp9_34.Corners, discord_gg_CDg3VKmWp9_1192)

    discord_gg_CDg3VKmWp9_34:AddOutline(discord_gg_CDg3VKmWp9_1191)

    local discord_gg_CDg3VKmWp9_1193 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_437 = "OutlineColor",
        discord_gg_CDg3VKmWp9_120 = 0,
        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(0, 0),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(0, 1, 1, 0),
        discord_gg_CDg3VKmWp9_174 = discord_gg_CDg3VKmWp9_185.ShowSidebar,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1191,
    })

    local discord_gg_CDg3VKmWp9_1016 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_171 = "TopBar",
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 48),
        discord_gg_CDg3VKmWp9_429 = 2,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
    })

    local discord_gg_CDg3VKmWp9_1004 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 1, 0),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1016,
    })
    discord_gg_CDg3VKmWp9_381("UIListLayout", {
        discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
        discord_gg_CDg3VKmWp9_829 = Enum.HorizontalAlignment.Left,
        discord_gg_CDg3VKmWp9_842 = Enum.VerticalAlignment.Center,
        discord_gg_CDg3VKmWp9_166 = UDim.new(0, 6),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1004,
    })
    discord_gg_CDg3VKmWp9_381("UIPadding", {
        discord_gg_CDg3VKmWp9_586 = UDim.new(0, 12),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1004,
    })

    if discord_gg_CDg3VKmWp9_1186.Icon then
        local discord_gg_CDg3VKmWp9_186 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_1186.Icon)
        local discord_gg_CDg3VKmWp9_1194 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
            discord_gg_CDg3VKmWp9_144 = discord_gg_CDg3VKmWp9_1186.IconSize,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1004,
        })
        if discord_gg_CDg3VKmWp9_186 then
            discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_1194, discord_gg_CDg3VKmWp9_186)
        end
    else
        local discord_gg_CDg3VKmWp9_1194 = discord_gg_CDg3VKmWp9_381("TextLabel", {
            discord_gg_CDg3VKmWp9_122 = 1,
            discord_gg_CDg3VKmWp9_144 = discord_gg_CDg3VKmWp9_1186.IconSize,
            discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_1186.Title:sub(1, 1),
            discord_gg_CDg3VKmWp9_400 = true,
            discord_gg_CDg3VKmWp9_174 = false,
            discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1004,
        })
    end

    local discord_gg_CDg3VKmWp9_1195 = discord_gg_CDg3VKmWp9_1186.Icon and (discord_gg_CDg3VKmWp9_1186.IconSize.X.Offset + 6) or 0
    local discord_gg_CDg3VKmWp9_1196 = math.max(0, (discord_gg_CDg3VKmWp9_1004.AbsoluteSize.X / discord_gg_CDg3VKmWp9_34.DPIScale) - discord_gg_CDg3VKmWp9_1195 - 12)
    local discord_gg_CDg3VKmWp9_1197 = math.min(
        discord_gg_CDg3VKmWp9_34:GetTextBounds(discord_gg_CDg3VKmWp9_1186.Title, discord_gg_CDg3VKmWp9_34.Scheme.Font, 20),
        discord_gg_CDg3VKmWp9_1196
    )
    local discord_gg_CDg3VKmWp9_1198 = discord_gg_CDg3VKmWp9_381("TextLabel", {
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_144 = UDim2.new(0, discord_gg_CDg3VKmWp9_1197, 1, 0),
        discord_gg_CDg3VKmWp9_136 = discord_gg_CDg3VKmWp9_1186.Title,
        discord_gg_CDg3VKmWp9_584 = 20,
        discord_gg_CDg3VKmWp9_753 = Enum.TextTruncate.AtEnd,
        discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
        discord_gg_CDg3VKmWp9_402 = Enum.TextYAlignment.Center,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1004,
    })

    discord_gg_CDg3VKmWp9_34:MakeLine(discord_gg_CDg3VKmWp9_600, {
        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(0, 48),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 1),
    })

    local discord_gg_CDg3VKmWp9_1199 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_171 = "InnerContent",
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(0, 49),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 1, -49),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
    })

    discord_gg_CDg3VKmWp9_381("UIListLayout", {
        discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Vertical,
        discord_gg_CDg3VKmWp9_829 = Enum.HorizontalAlignment.Center,
        discord_gg_CDg3VKmWp9_842 = Enum.VerticalAlignment.Center,
        discord_gg_CDg3VKmWp9_166 = UDim.new(0, 12),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1199,
    })

    local discord_gg_CDg3VKmWp9_1200 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_171 = "IconHolder",
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(64, 64),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1199,
    })

    local discord_gg_CDg3VKmWp9_1201 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_1186.LoadingIcon)
    local discord_gg_CDg3VKmWp9_21 = discord_gg_CDg3VKmWp9_381("ImageLabel", {
        discord_gg_CDg3VKmWp9_171 = "LoaderIcon",
        discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0.5),
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_143 = UDim2.fromScale(0.5, 0.5),
        discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
        discord_gg_CDg3VKmWp9_553 = discord_gg_CDg3VKmWp9_1186.LoadingIconColor or ((discord_gg_CDg3VKmWp9_1186.LoadingIcon == discord_gg_CDg3VKmWp9_118.Loading.LoadingIcon) and "AccentColor" or "WhiteColor"),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1200,
    })
    if discord_gg_CDg3VKmWp9_1201 then
        discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_21, discord_gg_CDg3VKmWp9_1201)
    end

    local discord_gg_CDg3VKmWp9_1202
    if discord_gg_CDg3VKmWp9_1186.LoadingIconTweenTime > 0 then
        discord_gg_CDg3VKmWp9_1202 = TweenService:Create(
            discord_gg_CDg3VKmWp9_21,
            discord_gg_CDg3VKmWp9_65.new(discord_gg_CDg3VKmWp9_1186.LoadingIconTweenTime, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1),
            { discord_gg_CDg3VKmWp9_759 = 360 }
        )
        discord_gg_CDg3VKmWp9_1202:Play()
    end

    local discord_gg_CDg3VKmWp9_1203 = discord_gg_CDg3VKmWp9_381("TextLabel", {
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_551 = discord_gg_CDg3VKmWp9_185.AutoResizeHeight and Enum.AutomaticSize.Y or Enum.AutomaticSize.XY,
        discord_gg_CDg3VKmWp9_144 = discord_gg_CDg3VKmWp9_185.AutoResizeHeight and UDim2.new(1, -60, 0, 0) or UDim2.fromOffset(0, 0),
        discord_gg_CDg3VKmWp9_136 = "",
        discord_gg_CDg3VKmWp9_584 = 18,
        discord_gg_CDg3VKmWp9_637 = discord_gg_CDg3VKmWp9_185.AutoResizeHeight,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1199,
    })

    local discord_gg_CDg3VKmWp9_1141 = discord_gg_CDg3VKmWp9_381("TextLabel", {
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_551 = discord_gg_CDg3VKmWp9_185.AutoResizeHeight and Enum.AutomaticSize.Y or Enum.AutomaticSize.XY,
        discord_gg_CDg3VKmWp9_144 = discord_gg_CDg3VKmWp9_185.AutoResizeHeight and UDim2.new(1, -60, 0, 0) or UDim2.fromOffset(0, 0),
        discord_gg_CDg3VKmWp9_136 = "",
        discord_gg_CDg3VKmWp9_584 = 14,
        discord_gg_CDg3VKmWp9_686 = 0.5,
        discord_gg_CDg3VKmWp9_637 = discord_gg_CDg3VKmWp9_185.AutoResizeHeight,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1199,
    })

    local discord_gg_CDg3VKmWp9_1204 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_437 = "MainColor",
        discord_gg_CDg3VKmWp9_144 = UDim2.new(0.7, 0, 0, 15),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1199,
    })
    discord_gg_CDg3VKmWp9_34:AddOutline(discord_gg_CDg3VKmWp9_1204)
    table.insert(discord_gg_CDg3VKmWp9_34.Corners, discord_gg_CDg3VKmWp9_381("UICorner", { discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2), discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1204 }))

    local discord_gg_CDg3VKmWp9_1205 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_437 = "AccentColor",
        discord_gg_CDg3VKmWp9_120 = 0,
        discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(0, 1),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1204,
    })
    table.insert(discord_gg_CDg3VKmWp9_34.Corners, discord_gg_CDg3VKmWp9_381("UICorner", { discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius / 2), discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1205 }))

    local discord_gg_CDg3VKmWp9_1206 = discord_gg_CDg3VKmWp9_381("TextLabel", {
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
        discord_gg_CDg3VKmWp9_136 = "",
        discord_gg_CDg3VKmWp9_584 = 14,
        discord_gg_CDg3VKmWp9_429 = 2,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1204,
    })
    discord_gg_CDg3VKmWp9_381("UIStroke", {
        discord_gg_CDg3VKmWp9_140 = Enum.ApplyStrokeMode.Contextual,
        discord_gg_CDg3VKmWp9_235 = "DarkColor",
        discord_gg_CDg3VKmWp9_862 = Enum.LineJoinMode.Miter,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1206,
    })

    local discord_gg_CDg3VKmWp9_1207 = discord_gg_CDg3VKmWp9_381("ScrollingFrame", {
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_120 = 0,
        discord_gg_CDg3VKmWp9_416 = UDim2.new(0, 0, 0, 0),
        discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
        discord_gg_CDg3VKmWp9_611 = 2,
        discord_gg_CDg3VKmWp9_610 = "OutlineColor",
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1191,
    })
    local discord_gg_CDg3VKmWp9_1208 = discord_gg_CDg3VKmWp9_381("UIListLayout", {
        discord_gg_CDg3VKmWp9_166 = UDim.new(0, 8),
        discord_gg_CDg3VKmWp9_138 = Enum.SortOrder.LayoutOrder,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1207,
    })
    discord_gg_CDg3VKmWp9_381("UIPadding", {
        discord_gg_CDg3VKmWp9_585 = UDim.new(0, 12),
        discord_gg_CDg3VKmWp9_586 = UDim.new(0, 12),
        discord_gg_CDg3VKmWp9_587 = UDim.new(0, 12),
        discord_gg_CDg3VKmWp9_588 = UDim.new(0, 12),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1207,
    })

    local discord_gg_CDg3VKmWp9_1209 = {
        discord_gg_CDg3VKmWp9_968 = {},
        discord_gg_CDg3VKmWp9_51 = {},
        discord_gg_CDg3VKmWp9_1073 = {},

        discord_gg_CDg3VKmWp9_539 = discord_gg_CDg3VKmWp9_1207,
        discord_gg_CDg3VKmWp9_600 = discord_gg_CDg3VKmWp9_1207,

        discord_gg_CDg3VKmWp9_1210 = function(self)
            discord_gg_CDg3VKmWp9_1207.CanvasSize = UDim2.fromOffset(0, discord_gg_CDg3VKmWp9_1208.AbsoluteContentSize.Y + 24)
        end,
        discord_gg_CDg3VKmWp9_971 = {
            discord_gg_CDg3VKmWp9_968 = {},
            discord_gg_CDg3VKmWp9_51 = {},
            discord_gg_CDg3VKmWp9_1074 = {},
            discord_gg_CDg3VKmWp9_1073 = {},
        },
    }

    discord_gg_CDg3VKmWp9_1208:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        discord_gg_CDg3VKmWp9_1209:Resize()
    end)

    setmetatable(discord_gg_CDg3VKmWp9_1209, discord_gg_CDg3VKmWp9_817)
    discord_gg_CDg3VKmWp9_185.Sidebar = discord_gg_CDg3VKmWp9_1209

    local discord_gg_CDg3VKmWp9_1211 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_171 = "Error",
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(0, 49),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 1, -49),
        discord_gg_CDg3VKmWp9_420 = true,
        discord_gg_CDg3VKmWp9_174 = false,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_600,
    })

    local discord_gg_CDg3VKmWp9_1212 = discord_gg_CDg3VKmWp9_381("TextLabel", {
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(15, 15),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -30, 0, 18),
        discord_gg_CDg3VKmWp9_136 = "Error",
        discord_gg_CDg3VKmWp9_129 = "RedColor",
        discord_gg_CDg3VKmWp9_584 = 18,
        discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1211,
    })

    local discord_gg_CDg3VKmWp9_1213 = discord_gg_CDg3VKmWp9_381("TextLabel", {
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(15, 39),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -30, 1, -90),
        discord_gg_CDg3VKmWp9_136 = "Error Message",
        discord_gg_CDg3VKmWp9_584 = 14,
        discord_gg_CDg3VKmWp9_686 = 0.2,
        discord_gg_CDg3VKmWp9_637 = true,
        discord_gg_CDg3VKmWp9_401 = Enum.TextXAlignment.Left,
        discord_gg_CDg3VKmWp9_402 = Enum.TextYAlignment.Top,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1211,
    })

    local discord_gg_CDg3VKmWp9_1214 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_437 = "OutlineColor",
        discord_gg_CDg3VKmWp9_122 = 0,
        discord_gg_CDg3VKmWp9_120 = 0,
        discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 0),
        discord_gg_CDg3VKmWp9_143 = UDim2.new(0.5, 0, 1, -48),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, -30, 0, 1),
        discord_gg_CDg3VKmWp9_174 = false,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1211,
    })

    local discord_gg_CDg3VKmWp9_1215 = discord_gg_CDg3VKmWp9_381("Frame", {
        discord_gg_CDg3VKmWp9_432 = Vector2.new(0.5, 1),
        discord_gg_CDg3VKmWp9_122 = 1,
        discord_gg_CDg3VKmWp9_143 = UDim2.new(0.5, 0, 1, 0),
        discord_gg_CDg3VKmWp9_144 = UDim2.new(1, 0, 0, 42),
        discord_gg_CDg3VKmWp9_174 = false,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1211,
    })
    discord_gg_CDg3VKmWp9_381("UIListLayout", {
        discord_gg_CDg3VKmWp9_166 = UDim.new(0, 8),
        discord_gg_CDg3VKmWp9_691 = Enum.FillDirection.Horizontal,
        discord_gg_CDg3VKmWp9_829 = Enum.HorizontalAlignment.Right,
        discord_gg_CDg3VKmWp9_842 = Enum.VerticalAlignment.Center,
        discord_gg_CDg3VKmWp9_138 = Enum.SortOrder.LayoutOrder,
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1215,
    })
    discord_gg_CDg3VKmWp9_381("UIPadding", {
        discord_gg_CDg3VKmWp9_588 = UDim.new(0, 5),
        discord_gg_CDg3VKmWp9_585 = UDim.new(0, 15),
        discord_gg_CDg3VKmWp9_587 = UDim.new(0, 15),
        discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1215,
    })

    function discord_gg_CDg3VKmWp9_185:UpdateLayout()
        if discord_gg_CDg3VKmWp9_185.IsError then
            discord_gg_CDg3VKmWp9_185:RecalculateErrorHeight()
        end

        local discord_gg_CDg3VKmWp9_191 = discord_gg_CDg3VKmWp9_185.ShowSidebar
        local discord_gg_CDg3VKmWp9_1216 = discord_gg_CDg3VKmWp9_191 and (discord_gg_CDg3VKmWp9_185.ContentWidth + discord_gg_CDg3VKmWp9_185.SidebarWidth) or discord_gg_CDg3VKmWp9_185.WindowWidth
        local discord_gg_CDg3VKmWp9_1217 = discord_gg_CDg3VKmWp9_185.IsError and discord_gg_CDg3VKmWp9_185.WindowErrorHeight or discord_gg_CDg3VKmWp9_185.WindowHeight

        if discord_gg_CDg3VKmWp9_191 then
            discord_gg_CDg3VKmWp9_1191.Visible = true
            discord_gg_CDg3VKmWp9_1193.Visible = true
        end

        TweenService:Create(discord_gg_CDg3VKmWp9_328, discord_gg_CDg3VKmWp9_34.TweenInfo, { discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(discord_gg_CDg3VKmWp9_1216, discord_gg_CDg3VKmWp9_1217) }):Play()
        TweenService:Create(discord_gg_CDg3VKmWp9_1191, discord_gg_CDg3VKmWp9_34.TweenInfo, { discord_gg_CDg3VKmWp9_143 = UDim2.fromOffset(discord_gg_CDg3VKmWp9_185.ContentWidth, 0), discord_gg_CDg3VKmWp9_144 = UDim2.new(0, discord_gg_CDg3VKmWp9_191 and discord_gg_CDg3VKmWp9_185.SidebarWidth or 0, 1, 0) }):Play()
        TweenService:Create(discord_gg_CDg3VKmWp9_600, discord_gg_CDg3VKmWp9_34.TweenInfo, { discord_gg_CDg3VKmWp9_144 = UDim2.new(0, discord_gg_CDg3VKmWp9_191 and discord_gg_CDg3VKmWp9_185.ContentWidth or discord_gg_CDg3VKmWp9_185.WindowWidth, 1, 0) }):Play()

        if not discord_gg_CDg3VKmWp9_191 then
            task.delay(discord_gg_CDg3VKmWp9_34.TweenInfo.Time, function()
                if not discord_gg_CDg3VKmWp9_185.ShowSidebar then
                    discord_gg_CDg3VKmWp9_1191.Visible = false
                    discord_gg_CDg3VKmWp9_1193.Visible = false
                end
            end)
        end
    end

    function discord_gg_CDg3VKmWp9_185:RecalculateLoadingHeight()
        if not discord_gg_CDg3VKmWp9_185.AutoResizeHeight then
            return
        end

        local discord_gg_CDg3VKmWp9_1218 =
              49
            + 48
            + discord_gg_CDg3VKmWp9_1199.UIListLayout.AbsoluteContentSize.Y

        discord_gg_CDg3VKmWp9_185.WindowHeight = math.max(discord_gg_CDg3VKmWp9_185.BaseWindowHeight, discord_gg_CDg3VKmWp9_1218)
    end

    function discord_gg_CDg3VKmWp9_185:SetMessage(discord_gg_CDg3VKmWp9_136)
        discord_gg_CDg3VKmWp9_1203.Text = discord_gg_CDg3VKmWp9_136

        if discord_gg_CDg3VKmWp9_185.AutoResizeHeight then
            discord_gg_CDg3VKmWp9_185:RecalculateLoadingHeight()
            discord_gg_CDg3VKmWp9_185:UpdateLayout()
        end
    end

    function discord_gg_CDg3VKmWp9_185:SetDescription(discord_gg_CDg3VKmWp9_136)
        discord_gg_CDg3VKmWp9_1141.Text = discord_gg_CDg3VKmWp9_136

        if discord_gg_CDg3VKmWp9_185.AutoResizeHeight then
            discord_gg_CDg3VKmWp9_185:RecalculateLoadingHeight()
            discord_gg_CDg3VKmWp9_185:UpdateLayout()
        end
    end

    function discord_gg_CDg3VKmWp9_185:SetLoadingIcon(discord_gg_CDg3VKmWp9_186)
        local discord_gg_CDg3VKmWp9_1219 = discord_gg_CDg3VKmWp9_34:GetCustomIcon(discord_gg_CDg3VKmWp9_186)
        assert(discord_gg_CDg3VKmWp9_1219, "Image must be a valid Roblox asset or a valid URL or a valid lucide icon.")

        discord_gg_CDg3VKmWp9_34:ApplyLucideIcon(discord_gg_CDg3VKmWp9_21, discord_gg_CDg3VKmWp9_1219)
    end

    function discord_gg_CDg3VKmWp9_185:SetLoadingIconTweenTime(TweenTime)
        if discord_gg_CDg3VKmWp9_1202 then
            discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_1202, true)
            discord_gg_CDg3VKmWp9_1202 = nil
        end

        if TweenTime > 0 then
            discord_gg_CDg3VKmWp9_1202 = TweenService:Create(
                discord_gg_CDg3VKmWp9_21,
                discord_gg_CDg3VKmWp9_65.new(TweenTime, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1),
                { discord_gg_CDg3VKmWp9_759 = 360 }
            )
            discord_gg_CDg3VKmWp9_1202:Play()
        else
            discord_gg_CDg3VKmWp9_21.Rotation = 0
        end
    end

    function discord_gg_CDg3VKmWp9_185:SetLoadingIconColor(discord_gg_CDg3VKmWp9_235)
        discord_gg_CDg3VKmWp9_21.ImageColor3 = discord_gg_CDg3VKmWp9_235
    end

    function discord_gg_CDg3VKmWp9_185:SetCurrentStep(Step)
        discord_gg_CDg3VKmWp9_185.CurrentStep = math.clamp(Step, 0, discord_gg_CDg3VKmWp9_185.TotalSteps)

        local discord_gg_CDg3VKmWp9_1220 = discord_gg_CDg3VKmWp9_185.CurrentStep / discord_gg_CDg3VKmWp9_185.TotalSteps
        TweenService:Create(discord_gg_CDg3VKmWp9_1205, discord_gg_CDg3VKmWp9_34.TweenInfo, { discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(discord_gg_CDg3VKmWp9_1220, 1) }):Play()

        discord_gg_CDg3VKmWp9_1206.Text = string.format("%d/%d", discord_gg_CDg3VKmWp9_185.CurrentStep, discord_gg_CDg3VKmWp9_185.TotalSteps)
    end

    function discord_gg_CDg3VKmWp9_185:SetTotalSteps(Steps)
        discord_gg_CDg3VKmWp9_185.TotalSteps = Steps
        discord_gg_CDg3VKmWp9_185:SetCurrentStep(discord_gg_CDg3VKmWp9_185.CurrentStep)
    end

    function discord_gg_CDg3VKmWp9_185:SetWindowHeight(discord_gg_CDg3VKmWp9_232)
        discord_gg_CDg3VKmWp9_185.WindowHeight = discord_gg_CDg3VKmWp9_232
        discord_gg_CDg3VKmWp9_185:UpdateLayout()
    end

    function discord_gg_CDg3VKmWp9_185:SetWindowWidth(discord_gg_CDg3VKmWp9_546)
        discord_gg_CDg3VKmWp9_185.WindowWidth = discord_gg_CDg3VKmWp9_546
        discord_gg_CDg3VKmWp9_185:UpdateLayout()
    end

    function discord_gg_CDg3VKmWp9_185:SetContentWidth(discord_gg_CDg3VKmWp9_546)
        discord_gg_CDg3VKmWp9_185.ContentWidth = discord_gg_CDg3VKmWp9_546
        discord_gg_CDg3VKmWp9_185:UpdateLayout()
    end

    function discord_gg_CDg3VKmWp9_185:SetSidebarWidth(discord_gg_CDg3VKmWp9_546)
        discord_gg_CDg3VKmWp9_185.SidebarWidth = discord_gg_CDg3VKmWp9_546
        discord_gg_CDg3VKmWp9_185:UpdateLayout()
    end

    function discord_gg_CDg3VKmWp9_185:ShowSidebarPage(Bool)
        discord_gg_CDg3VKmWp9_185.ShowSidebar = Bool
        discord_gg_CDg3VKmWp9_185:UpdateLayout()
    end

    function discord_gg_CDg3VKmWp9_185:ShowErrorPage(discord_gg_CDg3VKmWp9_418)
        discord_gg_CDg3VKmWp9_185.IsError = discord_gg_CDg3VKmWp9_418
        discord_gg_CDg3VKmWp9_1199.Visible = not discord_gg_CDg3VKmWp9_418
        discord_gg_CDg3VKmWp9_1211.Visible = discord_gg_CDg3VKmWp9_418

        if discord_gg_CDg3VKmWp9_185.ShowSidebar then
            discord_gg_CDg3VKmWp9_185:ShowSidebarPage(not discord_gg_CDg3VKmWp9_418)
        else
            discord_gg_CDg3VKmWp9_185:UpdateLayout()
        end
    end

    function discord_gg_CDg3VKmWp9_185:RecalculateErrorHeight()
        local discord_gg_CDg3VKmWp9_1149 = (discord_gg_CDg3VKmWp9_185.ShowSidebar and discord_gg_CDg3VKmWp9_185.ContentWidth or discord_gg_CDg3VKmWp9_185.WindowWidth) - 30
        local discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_1221 = discord_gg_CDg3VKmWp9_34:GetTextBounds(discord_gg_CDg3VKmWp9_1213.Text, discord_gg_CDg3VKmWp9_34.Scheme.Font, 14, discord_gg_CDg3VKmWp9_1149)

        discord_gg_CDg3VKmWp9_1213.Size = UDim2.new(1, -30, 0, discord_gg_CDg3VKmWp9_1221)

        local discord_gg_CDg3VKmWp9_1148 = discord_gg_CDg3VKmWp9_1215.Visible
        local discord_gg_CDg3VKmWp9_1218 =
              49
            + 15
            + 18
            + 6
            + discord_gg_CDg3VKmWp9_1221
            + 15
            + (discord_gg_CDg3VKmWp9_1148 and 48 or 0)

        discord_gg_CDg3VKmWp9_185.WindowErrorHeight = discord_gg_CDg3VKmWp9_1218
    end

    function discord_gg_CDg3VKmWp9_185:SetErrorMessage(discord_gg_CDg3VKmWp9_136)
        discord_gg_CDg3VKmWp9_1213.Text = discord_gg_CDg3VKmWp9_136
        discord_gg_CDg3VKmWp9_185:UpdateLayout()
    end

    function discord_gg_CDg3VKmWp9_185:SetErrorButtons(discord_gg_CDg3VKmWp9_8)
        assert(typeof(discord_gg_CDg3VKmWp9_8) == "table", "Buttons must be a table")

        for discord_gg_CDg3VKmWp9_26, button in discord_gg_CDg3VKmWp9_1215:GetChildren() do
            if button:IsA("Frame") then
                button:Destroy()
            end
        end

        local discord_gg_CDg3VKmWp9_1148 = discord_gg_CDg3VKmWp9_282(discord_gg_CDg3VKmWp9_8) > 0
        discord_gg_CDg3VKmWp9_1215.Visible = discord_gg_CDg3VKmWp9_1148
        discord_gg_CDg3VKmWp9_1214.Visible = discord_gg_CDg3VKmWp9_1148

        for discord_gg_CDg3VKmWp9_308, ButtonInfo in discord_gg_CDg3VKmWp9_8 do
            local discord_gg_CDg3VKmWp9_1156 = discord_gg_CDg3VKmWp9_381("Frame", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(0, 26),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1215,
            })

            local discord_gg_CDg3VKmWp9_1157 = "MainColor"
            local discord_gg_CDg3VKmWp9_1158 = "OutlineColor"
            local discord_gg_CDg3VKmWp9_848 = ButtonInfo.Variant or "Primary"

            if discord_gg_CDg3VKmWp9_848 == "Primary" then
                discord_gg_CDg3VKmWp9_1157 = "FontColor"
                discord_gg_CDg3VKmWp9_1158 = "FontColor"
            elseif discord_gg_CDg3VKmWp9_848 == "Secondary" then
                discord_gg_CDg3VKmWp9_1157 = "MainColor"
                discord_gg_CDg3VKmWp9_1158 = "OutlineColor"
            elseif discord_gg_CDg3VKmWp9_848 == "Destructive" then
                discord_gg_CDg3VKmWp9_1157 = "DestructiveColor"
                discord_gg_CDg3VKmWp9_1158 = "DestructiveColor"
            elseif discord_gg_CDg3VKmWp9_848 == "Ghost" then
                discord_gg_CDg3VKmWp9_1157 = "BackgroundColor"
                discord_gg_CDg3VKmWp9_1158 = "BackgroundColor"
            end

            local discord_gg_CDg3VKmWp9_1159 = discord_gg_CDg3VKmWp9_381("TextButton", {
                discord_gg_CDg3VKmWp9_437 = discord_gg_CDg3VKmWp9_1157,
                discord_gg_CDg3VKmWp9_761 = discord_gg_CDg3VKmWp9_1158,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromOffset(0, 26),
                discord_gg_CDg3VKmWp9_136 = "",
                discord_gg_CDg3VKmWp9_124 = false,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1156,
            })
            discord_gg_CDg3VKmWp9_34:AddOutline(discord_gg_CDg3VKmWp9_1159)
            table.insert(
                discord_gg_CDg3VKmWp9_34.Corners,
                discord_gg_CDg3VKmWp9_381("UICorner", {
                    discord_gg_CDg3VKmWp9_97 = UDim.new(0, discord_gg_CDg3VKmWp9_34.CornerRadius),
                    discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1159
                })
            )

            discord_gg_CDg3VKmWp9_381("UIPadding", {
                discord_gg_CDg3VKmWp9_586 = UDim.new(0, 15),
                discord_gg_CDg3VKmWp9_587 = UDim.new(0, 15),
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1159,
            })

            local discord_gg_CDg3VKmWp9_1161 = discord_gg_CDg3VKmWp9_34.Scheme.FontColor
            if discord_gg_CDg3VKmWp9_848 == "Primary" then
                discord_gg_CDg3VKmWp9_1161 = discord_gg_CDg3VKmWp9_34.Scheme.BackgroundColor
            elseif discord_gg_CDg3VKmWp9_848 == "Destructive" then
                discord_gg_CDg3VKmWp9_1161 = Color3.new(1, 1, 1)
            end

            local discord_gg_CDg3VKmWp9_1162 = discord_gg_CDg3VKmWp9_381("TextLabel", {
                discord_gg_CDg3VKmWp9_122 = 1,
                discord_gg_CDg3VKmWp9_144 = UDim2.fromScale(1, 1),
                discord_gg_CDg3VKmWp9_136 = ButtonInfo.Title or discord_gg_CDg3VKmWp9_308,
                discord_gg_CDg3VKmWp9_129 = discord_gg_CDg3VKmWp9_1161,
                discord_gg_CDg3VKmWp9_584 = 14,
                discord_gg_CDg3VKmWp9_403 = discord_gg_CDg3VKmWp9_1159,
            })

            local discord_gg_CDg3VKmWp9_1163, discord_gg_CDg3VKmWp9_26 = discord_gg_CDg3VKmWp9_34:GetTextBounds(discord_gg_CDg3VKmWp9_1162.Text, discord_gg_CDg3VKmWp9_34.Scheme.Font, 14, 250)
            discord_gg_CDg3VKmWp9_1156.Size = UDim2.fromOffset(discord_gg_CDg3VKmWp9_1163 + 30, 26)
            discord_gg_CDg3VKmWp9_1159.Size = UDim2.fromOffset(discord_gg_CDg3VKmWp9_1163 + 30, 26)

            local discord_gg_CDg3VKmWp9_1167 = typeof(discord_gg_CDg3VKmWp9_1157) == "Color3" and discord_gg_CDg3VKmWp9_1157 or discord_gg_CDg3VKmWp9_34.Scheme[discord_gg_CDg3VKmWp9_1157]
            local discord_gg_CDg3VKmWp9_1168 = discord_gg_CDg3VKmWp9_848 == "Ghost" and discord_gg_CDg3VKmWp9_34.Scheme.MainColor or discord_gg_CDg3VKmWp9_34:GetBetterColor(discord_gg_CDg3VKmWp9_1167, 10)

            discord_gg_CDg3VKmWp9_1159.MouseEnter:Connect(function()
                TweenService:Create(discord_gg_CDg3VKmWp9_1159, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_437 = discord_gg_CDg3VKmWp9_1168
                }):Play()
            end)
            discord_gg_CDg3VKmWp9_1159.MouseLeave:Connect(function()
                TweenService:Create(discord_gg_CDg3VKmWp9_1159, discord_gg_CDg3VKmWp9_34.TweenInfo, {
                    discord_gg_CDg3VKmWp9_437 = discord_gg_CDg3VKmWp9_1167
                }):Play()
            end)

            discord_gg_CDg3VKmWp9_1159.MouseButton1Click:Connect(function()
                if ButtonInfo.Callback then
                    ButtonInfo.Callback(discord_gg_CDg3VKmWp9_185)
                end
            end)
        end

        discord_gg_CDg3VKmWp9_185:UpdateLayout()
    end

    function discord_gg_CDg3VKmWp9_185:Destroy()
        if discord_gg_CDg3VKmWp9_1202 then
            discord_gg_CDg3VKmWp9_285(discord_gg_CDg3VKmWp9_1202, true)
            discord_gg_CDg3VKmWp9_1202 = nil
        end

        discord_gg_CDg3VKmWp9_38:Destroy()
        discord_gg_CDg3VKmWp9_185.Destroyed = true
        discord_gg_CDg3VKmWp9_34.ActiveLoading = nil

        if discord_gg_CDg3VKmWp9_34.Toggle and discord_gg_CDg3VKmWp9_34.Toggled == false and discord_gg_CDg3VKmWp9_34.Unloaded ~= true then
            discord_gg_CDg3VKmWp9_34:Toggle(true)
        end
    end

    discord_gg_CDg3VKmWp9_185.Continue = discord_gg_CDg3VKmWp9_185.Destroy;

    if discord_gg_CDg3VKmWp9_34.Toggle and discord_gg_CDg3VKmWp9_34.Toggled and discord_gg_CDg3VKmWp9_34.Unloaded ~= true then
        discord_gg_CDg3VKmWp9_34:Toggle(false)
    end

    discord_gg_CDg3VKmWp9_185:SetCurrentStep(discord_gg_CDg3VKmWp9_185.CurrentStep)

    discord_gg_CDg3VKmWp9_34.ActiveLoading = discord_gg_CDg3VKmWp9_185
    return discord_gg_CDg3VKmWp9_185
end

local function discord_gg_CDg3VKmWp9_1222()
    if discord_gg_CDg3VKmWp9_34.Unloaded then
        return
    end

    local discord_gg_CDg3VKmWp9_307, discord_gg_CDg3VKmWp9_1223 = discord_gg_CDg3VKmWp9_306(), discord_gg_CDg3VKmWp9_306(true)
    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_78 in discord_gg_CDg3VKmWp9_10 do
        if discord_gg_CDg3VKmWp9_78.Type == "Dropdown" and discord_gg_CDg3VKmWp9_78.SpecialType == "Player" then
            discord_gg_CDg3VKmWp9_78:SetValues(discord_gg_CDg3VKmWp9_78.ExcludeLocalPlayer and discord_gg_CDg3VKmWp9_1223 or discord_gg_CDg3VKmWp9_307)
        end
    end
end

local function discord_gg_CDg3VKmWp9_1224()
    if discord_gg_CDg3VKmWp9_34.Unloaded then
        return
    end

    local discord_gg_CDg3VKmWp9_310 = discord_gg_CDg3VKmWp9_309()
    for discord_gg_CDg3VKmWp9_26, discord_gg_CDg3VKmWp9_78 in discord_gg_CDg3VKmWp9_10 do
        if discord_gg_CDg3VKmWp9_78.Type == "Dropdown" and discord_gg_CDg3VKmWp9_78.SpecialType == "Team" then
            discord_gg_CDg3VKmWp9_78:SetValues(discord_gg_CDg3VKmWp9_310)
        end
    end
end

discord_gg_CDg3VKmWp9_34:GiveSignal(Players.PlayerAdded:Connect(discord_gg_CDg3VKmWp9_1222))
discord_gg_CDg3VKmWp9_34:GiveSignal(Players.PlayerRemoving:Connect(discord_gg_CDg3VKmWp9_1222))

discord_gg_CDg3VKmWp9_34:GiveSignal(Teams.ChildAdded:Connect(discord_gg_CDg3VKmWp9_1224))
discord_gg_CDg3VKmWp9_34:GiveSignal(Teams.ChildRemoved:Connect(discord_gg_CDg3VKmWp9_1224))

function discord_gg_CDg3VKmWp9_34:Unload()
    discord_gg_CDg3VKmWp9_34.Unloaded = true

    for discord_gg_CDg3VKmWp9_325 = #Library.Signals, 1, -1 do
        local discord_gg_CDg3VKmWp9_274 = table.remove(discord_gg_CDg3VKmWp9_34.Signals, discord_gg_CDg3VKmWp9_325)

        if discord_gg_CDg3VKmWp9_274 and discord_gg_CDg3VKmWp9_274.Connected then
            discord_gg_CDg3VKmWp9_274:Disconnect()
        end
    end

    for discord_gg_CDg3VKmWp9_26 = 1, #Library.UnloadSignals do
        local discord_gg_CDg3VKmWp9_199 = table.remove(discord_gg_CDg3VKmWp9_34.UnloadSignals, 1)

        if discord_gg_CDg3VKmWp9_199 then
            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_199)
        end
    end

    for discord_gg_CDg3VKmWp9_325 = #Library.Tabs, 1, -1 do
        local discord_gg_CDg3VKmWp9_971 = table.remove(discord_gg_CDg3VKmWp9_34.Tabs, discord_gg_CDg3VKmWp9_325)

        if discord_gg_CDg3VKmWp9_971 and discord_gg_CDg3VKmWp9_971.Destroy then
            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_971.Destroy, discord_gg_CDg3VKmWp9_971)
        end
    end

    for discord_gg_CDg3VKmWp9_325 = #Tooltips, 1, -1 do
        local discord_gg_CDg3VKmWp9_834 = table.remove(discord_gg_CDg3VKmWp9_11, discord_gg_CDg3VKmWp9_325)

        if discord_gg_CDg3VKmWp9_834 and discord_gg_CDg3VKmWp9_834.Destroy then
            discord_gg_CDg3VKmWp9_34:SafeCallback(discord_gg_CDg3VKmWp9_834.Destroy, discord_gg_CDg3VKmWp9_834)
        end
    end

    if discord_gg_CDg3VKmWp9_34.ActiveLoading then
        discord_gg_CDg3VKmWp9_34.ActiveLoading:Destroy()
    end

    if discord_gg_CDg3VKmWp9_34.KeybindMenu then
        discord_gg_CDg3VKmWp9_34.KeybindMenu:Destroy()
    end

    if discord_gg_CDg3VKmWp9_34.OverlayScreenGui and discord_gg_CDg3VKmWp9_34.OverlayScreenGui ~= discord_gg_CDg3VKmWp9_38 then
        discord_gg_CDg3VKmWp9_34.OverlayScreenGui:Destroy()
    end
    if discord_gg_CDg3VKmWp9_38 then
        discord_gg_CDg3VKmWp9_38:Destroy()
    end

    table.clear(discord_gg_CDg3VKmWp9_34.Registry)

    table.clear(discord_gg_CDg3VKmWp9_10)
    table.clear(discord_gg_CDg3VKmWp9_9)
    table.clear(discord_gg_CDg3VKmWp9_8)
    table.clear(discord_gg_CDg3VKmWp9_7)
    table.clear(discord_gg_CDg3VKmWp9_11)

    table.clear(discord_gg_CDg3VKmWp9_34.Tabs)
    table.clear(discord_gg_CDg3VKmWp9_34.TabButtons)

    table.clear(discord_gg_CDg3VKmWp9_34.Scales)
    table.clear(discord_gg_CDg3VKmWp9_34.ScalesOffset)

    table.clear(discord_gg_CDg3VKmWp9_34.Corners)
    table.clear(discord_gg_CDg3VKmWp9_34.SpecificCorners)
    table.clear(discord_gg_CDg3VKmWp9_34.ContextMenus)

    table.clear(discord_gg_CDg3VKmWp9_34.Notifications)
    table.clear(discord_gg_CDg3VKmWp9_34.Dialogues)
    table.clear(discord_gg_CDg3VKmWp9_34.DraggableElements)
    table.clear(discord_gg_CDg3VKmWp9_34.KeybindToggles)
    table.clear(discord_gg_CDg3VKmWp9_34.DependencyBoxes)

    table.clear(discord_gg_CDg3VKmWp9_526)
    table.clear(discord_gg_CDg3VKmWp9_527)

    discord_gg_CDg3VKmWp9_34.Toggle = function(...) end
    discord_gg_CDg3VKmWp9_34.ScreenGui = nil
    discord_gg_CDg3VKmWp9_34.OverlayScreenGui = nil
    discord_gg_CDg3VKmWp9_34.OverlayFloats = nil
    discord_gg_CDg3VKmWp9_34.Floats = nil
    discord_gg_CDg3VKmWp9_34.Overlay = nil
    discord_gg_CDg3VKmWp9_34.WindowContainer = nil
    discord_gg_CDg3VKmWp9_34.KeybindFrame = nil
    discord_gg_CDg3VKmWp9_34.KeybindContainer = nil
    discord_gg_CDg3VKmWp9_34.KeybindMenu = nil

    discord_gg_CDg3VKmWp9_1().Library = nil
end

discord_gg_CDg3VKmWp9_1().Library = discord_gg_CDg3VKmWp9_34
return discord_gg_CDg3VKmWp9_34
