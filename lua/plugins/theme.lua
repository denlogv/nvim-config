return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin-macchiato",
        },
    },
    {
        "goolord/alpha-nvim",
        opts = function(_, opts)
            local logo = [[
▓█████▄ ▓█████  ███▄    █ ██▒   █▓ ██▓ ███▄ ▄███▓
▒██▀ ██▌▓█   ▀  ██ ▀█   █▓██░   █▒▓██▒▓██▒▀█▀ ██▒
░██   █▌▒███   ▓██  ▀█ ██▒▓██  █▒░▒██▒▓██    ▓██░
░▓█▄   ▌▒▓█  ▄ ▓██▒  ▐▌██▒ ▒██ █░░░██░▒██    ▒██
░▒████▓ ░▒████▒▒██░   ▓██░  ▒▀█░  ░██░▒██▒   ░██▒
 ▒▒▓  ▒ ░░ ▒░ ░░ ▒░   ▒ ▒   ░ ▐░  ░▓  ░ ▒░   ░  ░
 ░ ▒  ▒  ░ ░  ░░ ░░   ░ ▒░  ░ ░░   ▒ ░░  ░      ░
 ░ ░  ░    ░      ░   ░ ░     ░░   ▒ ░░      ░
   ░       ░  ░         ░      ░   ░         ░
 ░                            ░
      ]]
            opts.section.header.val = vim.split(logo, "\n", { trimempty = true })
        end,
    },
}
