local config = {
    options = {
        -- Disable sections and component separators
        component_separators = "",
        section_separators = "",
        theme = 'base16',
    },
    sections = {
        -- these are to remove the defaults
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        -- These will be filled later
        lualine_c = {},
        lualine_x = {},
    },
    inactive_sections = {
        -- these are to remove the defaults
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
    },
}


-- Helper functions
local function insert_left(component)
    table.insert(config.sections.lualine_c, component)
end

local function insert_right(component)
    table.insert(config.sections.lualine_x, component)
end



-- Left components
insert_left({
    "filename",
    path = 1,
})

insert_left({
    "branch",
    icon = "",
})

insert_left({
    "diff",
    symbols = { added = " ", modified = " ", removed = " " },
})

insert_left({
    "diagnostics",
    sources = { "nvim_diagnostic" },
    symbols = { error = " ", warn = " ", info = " " },
})

insert_left({
    function()
        return "%="
    end,
})




-- Right components
insert_right({
    "location",
})

insert_right({
    "encoding",
})

insert_right({
    "filetype",
})

require('lualine').setup(config)
