local colorbuddy = require('colorbuddy')

-- Set up your custom colorscheme if you want
colorbuddy.colorscheme("violetdream")

local Color = colorbuddy.Color
local c = colorbuddy.colors
local Group = colorbuddy.Group
local g = colorbuddy.groups
local s = colorbuddy.styles

local bg = "#111116"

Color.new("superwhite", "#E0E0E0")
Color.new('background', bg)
Color.new('red', '#E46876')
Color.new('green', '#25BE6A')
Color.new('yellow', '#f0c674')
Color.new('pink', '#E4599A')
Color.new('lightpink', '#FF91C1')
Color.new('violet', '#A45B9B')
Color.new('lightviolet', '#BE95FF')
Color.new('gray', '#999B9D')
Color.new('gray1', '#7B7C7E')
Color.new('blue', '#52BDFF')
Color.new('cyan', '#3DDBD9')
Color.new('BracketHover', '#ffcc00')
Color.new('visual', "#444444")


-- Editor

Group.new("Normal", c.superwhite, c.background)
Group.new("Folded", c.gray3:dark(), c.gray2)
Group.new("MatchParen", c.violet, nil, s.bold)
Group.new("LineNr", c.gray1, c.background)
Group.new('FoldColumn', c.gray1)
Group.new("SignColumn", nil, c.background)
-- Group.new("StatusLine", c.gray2, c.blue, nil)
-- Group.new("StatusLineNC", c.gray3, c.gray1:light())
Group.new("PMenu", c.white, c.gray2)
Group.new("PMenuSel", c.black, c.purple:light())
Group.new("PMenuSbar", nil, c.gray2)
Group.new("PMenuThumb", nil, c.black)
Group.new("Directory", c.violet)
Group.new("Visual", nil, c.visual)
Group.new("VisualLineMode", g.Visual, g.Visual)
Group.new("VisualMode", g.Visual, g.Visual)
-- Group.new("Conceal", g.Normal.bg, c.gray2:light(), s.italic)
-- Group.new("qfFileName", c.purple, nil, s.bold)
-- Define highlights in terms of `colors` and `groups`

-- Code
Group.new('@function', c.blue, nil)
Group.new('@function.call', c.pink, nil)
Group.new('@function.builtin', c.pink, nil)
Group.new('@operator', c.gray, nil)

Group.new("@variable", c.white, nil)
Group.new("@variable.builtin", c.violet:light():light())

Group.new("@keyword", c.violet, nil, s.italic)
Group.new("@keyword.return", c.violet, nil, s.italic)
Group.new("@keyword.import", c.red, nil)

Group.new("@constant", c.red)
Group.new("@constant.builtin", c.red)
Group.new("@constant.macro", c.red)

Group.new("@variable", c.white, nil)

Group.new("@number", c.cyan)
Group.link("Float", g.Number)
Group.new('@string.escape', c.cyan)
Group.new("Character", c.green)
Group.new("Comment", c.gray3, nil, s.italic)

Group.new('PreProc', c.red, nil)

Group.new("@label", c.yellow)

Group.new("Type", c.lightviolet, nil, s.italic)
Group.new("@type.builtin", c.lightviolet, nil, s.italic)


-- git
Color.new("Changed", "#33423e")
Color.new("ChangedText", "#3e4a47")

Color.new("RedBg", "#3f0001")
Color.new("Deleted", "#24282f")

Group.new("gitDiff", c.blue)

Group.new("DiffChange", nil, c.Changed)
Group.new("DiffText", nil, c.ChangedText)
Group.new("DiffAdd", nil, g.DiffChange.bg)
Group.new("DiffDelete", c.Deleted:light(), c.Deleted)

-- commitia highlights
Group.new("DiffRemoved", c.red)
Group.new("DiffAdded", c.green, nil)


-- Define highlights in relative terms of other colors
Group.new('Error', c.red:light(), nil, s.bold)

Color.new('GitAddColor', '#00FF00')     -- Green for added lines
Color.new('GitChangeColor', '#FFA500')  -- Orange for modified lines
Color.new('GitRemoveColor', '#FF0000')  -- Red for removed lines
Color.new('GitSignsBgColor', '#2E3B61') -- Background color for GitSigns