--lsp configurations
-- local lspconfig = require("lspconfig")
-- lspconfig.jedi_language_server.setup({
-- })(
local get_python_ws_root = function(filename, bufnr)
    local root = vim.fs.dirname(vim.fs.find({ "setup.py", "pyproject.toml" }, { upward = true })[1])
    if (root == nil) then
        return "."
    end
    return root .. "/src"
end

return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        { "folke/neoconf.nvim", cmd = "Neoconf", config = false, dependencies = { "nvim-lspconfig" } },
        { "folke/neodev.nvim", opts = {} },
        "mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        {
            "hrsh7th/cmp-nvim-lsp",
            cond = function()
                return require("lazyvim.util").has("nvim-cmp")
            end,
        },
    },
    ---@class PluginLspOpts
    opts = {
        -- options for vim.diagnostic.config()
        diagnostics = {
            underline = true,
            update_in_insert = false,
            virtual_text = {
                spacing = 4,
                source = "if_many",
                prefix = "●",
                -- this will set set the prefix to a function that returns the diagnostics icon based on the severity
                -- this only works on a recent 0.10.0 build. Will be set to "●" when not supported
                -- prefix = "icons",
            },
            severity_sort = true,
        },
        -- Enable this to enable the builtin LSP inlay hints on Neovim >= 0.10.0
        -- Be aware that you also will need to properly configure your LSP server to
        -- provide the inlay hints.
        inlay_hints = {
            enabled = false,
        },
        -- add any global capabilities here
        capabilities = {},
        -- Enable this to show formatters used in a notification
        -- Useful for debugging formatter issues
        format_notify = false,
        -- options for vim.lsp.buf.format
        -- `bufnr` and `filter` is handled by the LazyVim formatter,
        -- but can be also overridden when specified
        format = {
            formatting_options = nil,
            timeout_ms = nil,
        },
        -- LSP Server Settings
        ---@type lspconfig.options
        servers = {
            jsonls = {},
            lua_ls = {
                -- mason = false, -- set to false if you don't want this server to be installed with mason
                -- Use this to add any additional keymaps
                -- for specific lsp servers
                ---@type LazyKeys[]
                -- keys = {},
                settings = {
                    Lua = {
                        workspace = {
                            checkThirdParty = false,
                        },
                        completion = {
                            callSnippet = "Replace",
                        },
                    },
                },
            },
            pyright = {
                root_dir = get_python_ws_root,
                flags = {
                    debounce_text_changes = 150,
                    trace = "verbose",
                },
                settings = {
                    python = {
                        analysis = {
                            autoSearchPaths = false,
                            useLibraryCodeForTypes = true,
                            diagnosticMode = "openFilesOnly",
                        },
                    },
                },
            },
            -- pylsp = {
            --     mason = true,
            --     cmd = { "pylsp" },
            --     root_dir = get_python_ws_root,
            --     -- pylsp.plugins.pycodestyle.ignore
            --     settings = {
            --         pylsp = {
            --             plugins = {
            --                 pycodestyle = {
            --                     ignore = { "E501", "E272", "E203" },
            --                 },
            --             },
            --         },
            --     },
            -- },
            -- jedi_language_server = {
            --     cmd = { "/home/libra/.local/share/nvim/mason/bin/jedi-language-server" },
            --     root_dir = function()
            --         return vim.fs.dirname(vim.fs.find({ "setup.py", "pyproject.toml" }, { upward = true })[1])
            --     end,
            --     single_file_support = false,
            -- },
        },
        -- you can do any additional lsp server setup here
        -- return true if you don't want this server to be setup with lspconfig
        ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
        setup = {
            -- example to setup with typescript.nvim
            -- tsserver = function(_, opts)
            --   require("typescript").setup({ server = opts })
            --   return true
            -- end,
            -- Specify * to use this function as a fallback for any server
            -- ["*"] = function(server, opts) end,
        },
    },
}
