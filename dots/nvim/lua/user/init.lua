local config = {
    -- Set colorscheme to use
    colorscheme = "default_theme",
    -- Override highlight groups in any theme
    highlights = {
        -- duskfox = { -- a table of overrides/changes to the default
        --   Normal = { bg = "#000000" },
        -- },
        default_theme = function(highlights) -- or a function that returns a new table of colors to set
            local C = require "default_theme.colors"

            highlights.Normal = { fg = C.fg, bg = C.bg }
            return highlights
        end,
    },
    -- set vim options here (vim.<first_key>.<second_key> =  value)
    options = {
        opt = {
            relativenumber = false, -- sets vim.opt.relativenumber
        },
        g = {
            mapleader = " ", -- sets vim.g.mapleader
        },
    },
    -- If you need more control, you can use the function()...end notation
    -- options = function(local_vim)
    --   local_vim.opt.relativenumber = true
    --   local_vim.g.mapleader = " "
    --   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
    --   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
    --
    --   return local_vim
    -- end,

    -- Set dashboard header
    header = {
        "       ██░ ██ ▓█████  ██▓     ██▓     ▒█████          ",
        "      ▓██░ ██▒▓█   ▀ ▓██▒    ▓██▒    ▒██▒  ██▒        ",
        "      ▒██▀▀██░▒███   ▒██░    ▒██░    ▒██░  ██▒        ",
        "      ░▓█ ░██ ▒▓█  ▄ ▒██░    ▒██░    ▒██   ██░        ",
        "      ░▓█▒░██▓░▒████▒░██████▒░██████▒░ ████▓▒░        ",
        "       ▒ ░░▒░▒░░ ▒░ ░░ ▒░▓  ░░ ▒░▓  ░░ ▒░▒░▒░         ",
        "       ▒ ░▒░ ░ ░ ░  ░░ ░ ▒  ░░ ░ ▒  ░  ░ ▒ ▒░         ",
        "       ░  ░░ ░   ░     ░ ░     ░ ░   ░ ░ ░ ▒          ",
        "       ░  ░  ░   ░  ░    ░  ░    ░  ░    ░ ░          ",
        "                                                      ",
        " ▄▄▄       ███▄    █ ▓█████▄  ██▀███  ▓█████ ▄▄▄      ",
        "▒████▄     ██ ▀█   █ ▒██▀ ██▌▓██ ▒ ██▒▓█   ▀▒████▄    ",
        "▒██  ▀█▄  ▓██  ▀█ ██▒░██   █▌▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ",
        "░██▄▄▄▄██ ▓██▒  ▐▌██▒░▓█▄   ▌▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ",
        " ▓█   ▓██▒▒██░   ▓██░░▒████▓ ░██▓ ▒██▒░▒████▒▓█   ▓██▒",
        " ▒▒   ▓▒█░░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░",
        "  ▒   ▒▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░",
        "  ░   ▒      ░   ░ ░  ░ ░  ░   ░░   ░    ░    ░   ▒   ",
        "      ░  ░         ░    ░       ░        ░  ░     ░  ░",
        "                        ░                             ",
        --    "                                   ",
        --    "                                   ",
        --    "                                   ",
        --    "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
        --    "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
        --    "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
        --    "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
        --    "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
        --    "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
        --    "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
        --   " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
        --    " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
        --  "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
        --  "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
        --    "                                   ",
    },
    -- Default theme configuration
    default_theme = {
        -- set the highlight style for diagnostic messages
        diagnostics_style = { italic = true },
        -- Modify the color palette for the default theme
        colors = {
            fg = "#ffffff",
            bg = "#15171a",
            bg_1 = "#252729",
            black = "#171718",
            black_1 = "#171718",
            blue_2 = "#15171a",
            grey = "#4b5263",
            grey_1 = "#4b5263",
            grey_2 = "#777d86",
            grey_3 = "#282c34",
            grey_4 = "#2c323c",
            grey_5 = "#3e4452",
            grey_6 = "#3b4048",
            grey_7 = "#5c5c5c",
            grey_8 = "#25293a",
            grey_9 = "#787e87",
            grey_10 = "#D3D3D3",
            cyan = "#cffc49",
            blue = "#cffc49",
            blue_3 = "#cffc49",
        },

        -- enable or disable highlighting for extra plugins
        plugins = {
            aerial = true,
            beacon = false,
            bufferline = true,
            dashboard = true,
            highlighturl = true,
            hop = false,
            indent_blankline = true,
            lightspeed = false,
            ["neo-tree"] = true,
            notify = true,
            ["nvim-tree"] = false,
            ["nvim-web-devicons"] = true,
            rainbow = true,
            symbols_outline = false,
            telescope = true,
            vimwiki = false,
            ["which-key"] = true,
        },
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...}))
    diagnostics = {
        virtual_text = true,
        underline = true,
    },
    -- Extend LSP configuration
    lsp = {
        -- enable servers that you already have installed without mason
        servers = {
            -- "pyright"
        },
        -- easily add or disable built in mappings added during LSP attaching
        mappings = {
            n = {
                -- ["<leader>lf"] = false -- disable formatting keymap
            },
        },
        -- add to the global LSP on_attach function
        -- on_attach = function(client, bufnr)
        -- end,

        -- override the mason server-registration function
        -- server_registration = function(server, opts)
        --   require("lspconfig")[server].setup(opts)
        -- end,

        -- Add overrides for LSP server settings, the keys are the name of the server
        ["server-settings"] = {
            -- example for addings schemas to yamlls
            -- yamlls = { -- override table for require("lspconfig").yamlls.setup({...})
            --   settings = {
            --     yaml = {
            --       schemas = {
            --         ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*.{yml,yaml}",
            --         ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
            --         ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
            --       },
            --     },
            --   },
            -- },
            -- Example disabling formatting for a specific language server
            -- gopls = { -- override table for require("lspconfig").gopls.setup({...})
            --   on_attach = function(client, bufnr)
            --     client.resolved_capabilities.document_formatting = false
            --   end
            -- }
        },
    },
    -- Mapping data with "desc" stored directly by vim.keymap.set().
    --
    -- Please use this mappings table to set keyboard mapping since this is the
    -- lower level configuration and more robust one. (which-key will
    -- automatically pick-up stored data by this setting.)
    mappings = {
        -- first key is the mode
        n = {
            -- second key is the lefthand side of the map
            -- mappings seen under group name "Buffer"
            ["<C-a>"] = { "<cmd>Neotree toggle<cr>" },
            ["<C-z>"] = { "<cmd>u<cr>" },
            ["<C-l>"] = { "<cmd>VimtexCompile<cr>" },

            -- quick save
        },
        t = {
            -- setting a mapping to false will disable it
            -- ["<esc>"] = false,
        },
    },
    -- Configure plugins
    plugins = {
        init = {
            -- You can disable default plugins as follows:
            -- ["goolord/alpha-nvim"] = { disable = true },

            -- You can also add new plugins here as well:
            -- Add plugins, the packer syntax without the "use"
            { "lervag/vimtex" },
            { "ellisonleao/glow" },
            -- {
            --   "ray-x/lsp_signature.nvim",
            --   event = "BufRead",
            --   config = function()
            --     require("lsp_signature").setup()
            --   end,
            -- },

            -- We also support a key value style plugin definition similar to NvChad:
            -- ["ray-x/lsp_signature.nvim"] = {
            --   event = "BufRead",
            --   config = function()
            --     require("lsp_signature").setup()
            --   end,
            -- },
        },
        -- All other entries override the require("<key>").setup({...}) call for default plugins
        ["null-ls"] = function(config) -- overrides `require("null-ls").setup(config)`
            -- config variable is the default configuration table for the setup functino call
            local null_ls = require "null-ls"
            -- Check supported formatters and linters
            -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
            -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
            config.sources = {
                -- Set a formatter
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
            }
            -- set up null-ls's on_attach function
            -- NOTE: You can remove this on attach function to disable format on save
            config.on_attach = function(client)
                if client.resolved_capabilities.document_formatting then
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        desc = "Auto format before save",
                        pattern = "<buffer>",
                        callback = vim.lsp.buf.formatting_sync,
                    })
                end
            end
            return config -- return final config table to use in require("null-ls").setup(config)
        end,
        treesitter = { -- overrides `require("treesitter").setup(...)`
            ensure_installed = { "lua", "foam", "cpp", "regex" },
            sync_install = false,
            ignore_install = {},
            highlight = {
                enable = true,
                disable = {},
                additional_vim_regex_highlighting = false,
            },
        },
        -- use mason-lspconfig to configure LSP installations
        ["mason-lspconfig"] = { -- overrides `require("mason-lspconfig").setup(...)`
            ensure_installed = { "sumneko_lua" },
        },
        -- use mason-tool-installer to configure DAP/Formatters/Linter installation
        ["mason-tool-installer"] = { -- overrides `require("mason-tool-installer").setup(...)`
            ensure_installed = { "prettier", "stylua" },
        },
        packer = { -- overrides `require("packer").setup(...)`
            compile_path = vim.fn.stdpath "data" .. "/packer_compiled.lua",
        },
    },
    -- CMP Source Priorities
    -- modify here the priorities of default cmp sources
    -- higher value == higher priority
    -- The value can also be set to a boolean for disabling default sources:
    -- false == disabled
    -- true == 1000
    cmp = {
        source_priority = {
            nvim_lsp = 1000,
            luasnip = 750,
            buffer = 500,
            path = 250,
        },
    },
    -- Modify which-key registration (Use this with mappings table in the above.)
    ["which-key"] = {
        -- Add bindings which show up as group name
        register_mappings = {
            -- first key is the mode, n == normal mode
            n = {
                -- second key is the prefix, <leader> prefixes
                ["<leader>"] = {
                    -- third key is the key to bring up next level and its displayed
                    -- group name in which-key top level menu
                    ["b"] = { name = "Buffer" },
                },
            },
        },
    },
}


vim.cmd [[
filetype plugin indent on
let g:vimtex_view_method = 'zathura'
let maplocalleader = ","
]]
--------------------------------------------------------------------------------------------

return config
