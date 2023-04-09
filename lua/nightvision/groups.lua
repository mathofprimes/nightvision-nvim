local M = {}

function M.groups()

    local defaults = {
        nv_dark = "pure",
        nv_light = "pure",
        nv_contrast = "medium"
    }

    for k, v in pairs(defaults) do
        if vim.g[k] == nil then
            vim.g[k] = v
        end
    end
    
    local palette = require("nightvision.utils").generator(
        vim.g.nv_dark,
        vim.g.nv_light,
        vim.g.nv_contrast
    )

    vim.g.nv_colors = palette

    local groups = {

        -- Syntax groups. See :h group-name.

        Comment = {italic = true, fg = palette.gray},
        
        Constant  = {fg = palette.jade},
        String    = {fg = palette.jade},
        Character = {fg = palette.jade},
        Number    = {fg = palette.jade},
        Boolean   = {fg = palette.jade},
        Float     = {fg = palette.jade},

        Identifier = {fg = palette.pure},
        Function   = {bold = true, fg = palette.lime},

        Statement   = {fg = palette.pear},
        Conditional = {fg = palette.pear},
        Repeat      = {fg = palette.pear},
        Label       = {fg = palette.pear},
        Operator    = {fg = palette.pear},
        Keyword     = {fg = palette.pear},
        Exception   = {fg = palette.pear},

        PreProc     = {fg = palette.drab},
        Include     = {fg = palette.drab},
        Define      = {fg = palette.drab},
        Macro       = {fg = palette.drab},
        PreCondit   = {fg = palette.drab},

        Type         = {fg = palette.aqua},
        StorageClass = {fg = palette.aqua},
        Structure    = {fg = palette.aqua},
        Typedef      = {fg = palette.aqua},

        Special         = {fg = palette.sage},
        SpecialChar     = {fg = palette.sage},
        Tag             = {fg = palette.sage},
        Deliminator     = {fg = palette.sage},
        SpecialComments = {fg = palette.sage},
        Debug           = {fg = palette.sage},

        Underlined = {fg = palette.teal},
        Ignore     = {fg = palette.teal},
        Error      = {fg = palette.teal},
        Todo       = {fg = palette.teal},

        -- Highlighting Groups. See :h hi-groups.

        -- Modes.
        Normal    = {fg = palette.fg0, bg = palette.bg0},
        Terminal  = {fg = palette.fg0, bg = palette.bg0},
        Visual    = {bg = palette.bg2},
        VisualNos = {bg = palette.bg2},

        -- Cursors.
        Cursor         = {reverse = true},            
        lCursor        = {reverse = true},           
        CursorIM       = {reverse = true},          
        CursorColumn   = {bg = palette.bg1},            
        CursorLine     = {bg = palette.bg1},              
        CursorLineFold = {fg = palette.fg0, bg = palette.bg0},
        CursorLineNr   = {fg = palette.fg3, bg = palette.bg0},  
        CursorLineSign = {fg = palette.fg0, bg = palette.bg0},

        -- Columns, lines.
        ColorColumn  = {bg = palette.bg1},          
        EndOfBuffer  = {fg = palette.fg0, bg = palette.bg0}, 
        LineNr       = {fg = palette.fg0, bg = palette.bg1},
        LineNrAbove  = {fg = palette.gray,},
        LineNrBelow  = {fg = palette.gray},
        SignColumn   = {fg = palette.fg0},
        VertSplit    = {fg = palette.fg0}, 

        -- Messages.
        ErrorMsg   = {bold = true, fg = palette.teal},
        ModeMsg    = {bold = true, fg = palette.lime},
        MoreMsg    = {bold = true, fg = palette.lime}, 
        WarningMsg = {bold = true, fg = palette.pear},

        -- Popup menu.
        Pmenu      = {bg = palette.bg3},         
        PmenuSbar  = {fg = palette.fg0},             
        PmenuSel   = {fg = palette.bg0, bg = palette.fg0},    
        PmenuThumb = {fg = palette.fg0},            

        -- Search.
        IncSearch  = {fg = palette.bg0, bg = palette.pear},
        MatchParen = {bold = true, fg = palette.fg3},
        Search     = {fg = palette.bg0, bg = palette.teal},
        WildMenu   = {fg = palette.bg0, bg = palette.pear},

        -- Folds.
        Folded     = {fg = palette.gray, bg = palette.bg3},
        FoldColumn = {bold = true, fg = palette.fg0, bg = palette.bg3},

        -- Diffs.
        DiffAdd    = {bold = true, fg = palette.lime, bg = palette.bg2},
        DiffChange = {bold = true, fg = palette.pear, bg = bg2},
        DiffDelete = {bold = true, fg = palette.drab, bg = bg2},
        DiffText   = {bold = true, fg = palette.fg0, bg = bg2},

        -- Spellcheckers.
        SpellBad   = {underline = true, sp = palette.pear},
        SpellCap   = {underline = true, sp = palette.lime},
        SpellLocal = {underline = true, sp = palette.lime},
        SpellRare  = {underline = true, sp = palette.lime},

        -- Statuslines.
        StatusLine       = {fg = palette.fg0, bg = palette.bg3},
        StatusLineNC     = {fg = palette.fg0, bg = palette.bg0},
        StatusLineTerm   = {fg = palette.fg0, bg = palette.bg3},
        StatusLineTermNC = {fg = palette.fg0, bg = palette.bg0},

        -- Tablines.
        TabLine     = {fg = palette.fg0, bg = palette.bg1},
        TabLineFill = {fg = palette.fg0, bg = palette.bg2},
        TabLineSel  = {fg = palette.fg0, bg = palette.bg3},

        -- Miscellaneous. 
        Conceal      = {fg = palette.lime},
        Directory    = {fg = palette.teal},
        NonText      = {fg = palette.fg0},
        Question     = {fg = palette.aqua},
        QuickFixLine = {fg = palette.lime}, 
        SpecialKey   = {bold = true, fg = palette.teal},
        Title        = {fg = palette.pear}
    }
    
    return groups
end

return M
