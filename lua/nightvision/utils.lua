local M = {}

function M.generator(dark, light, contrast)
    local rgb = {
        pure = {04, 17, 04, -1},
        gray = {16, 17, 16, -4},
        jade = {00, 17, 08,  2},
        lime = {08, 17, 00,  3},
        pear = {16, 17, 04,  1},
        drab = {16, 17, 08, -2},
        aqua = {12, 17, 16, -2},
        sage = {12, 17, 12,  3},
        teal = {04, 17, 16,  1}
    }
    
    local dm = {
        soft =   {3,  8, 4},
        medium = {2,  9, 2},
        hard =   {1, 10, 1}
    }
    
    local lm = {
        soft =   {12, 7, -4},
        medium = {13, 6, -2},
        hard =   {14, 5, -1}
    }

    local palette = {}

    if vim.o.background == "dark" then
        bg = rgb[dark ]
        fg = rgb[light]
        bg_con = dm[contrast]
        fg_con = lm[contrast]
    else
        bg = rgb[light]
        fg = rgb[dark ]
        bg_con = lm[contrast]
        fg_con = dm[contrast]
    end

    for bg_num = 0, 3 do
        palette["bg" .. bg_num] = "#" .. string.format("%02X%02X%02X",
            bg[1] * bg_con[1] + bg_num * bg[1] / bg_con[3],
            bg[2] * bg_con[1] + bg_num *    16 / bg_con[3],
            bg[3] * bg_con[1] + bg_num * bg[3] / bg_con[3]
        )
    end
    
    for fg_num = 0, 3 do
        palette["fg" .. fg_num] = "#" .. string.format("%02X%02X%02X", 
            fg[1] * fg_con[1] + fg_num * fg[1] / fg_con[3],
            fg[2] * fg_con[1] + fg_num *    16 / fg_con[3], 
            fg[3] * fg_con[1] + fg_num * fg[3] / fg_con[3]
        )
    end

    for k, v in pairs(rgb) do
        palette[k] = "#" .. string.format("%02X%02X%02X",
            v[1] * bg_con[2] + v[4] * v[1] / bg_con[3],
            v[2] * bg_con[2] + v[4] *   16 / bg_con[3],
            v[3] * bg_con[2] + v[4] * v[3] / bg_con[3]
        )
    end

    return palette
end

return M
