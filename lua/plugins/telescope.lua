return {
    "telescope.nvim",
    dependencies = {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
    },
    opts = {
        defaults = {
            layout_config = {
                vertical = { width = 0.8, preview_cutoff = 0 },
                -- other layout configuration here
            },
            -- other defaults configuration here
            layout_strategy = "vertical",
        },
        -- other configuration values here
    },
    init = function()
        require("telescope").load_extension("fzf")
    end,
}
