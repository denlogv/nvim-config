return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "murphy",
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
