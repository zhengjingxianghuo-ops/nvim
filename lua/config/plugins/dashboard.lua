return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard')
        .setup({
          theme = 'doom',
          config = {
            header = {
              "                                                     ",
              "                                                     ",
              "                                                     ",
              "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
              "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
              "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
              "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
              "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
              "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
              "                                                     ",
              "                                                     ",
            },
            center = {
              {
                icon = '󰈞 ',
                icon_hl = 'Title',

                desc = 'Find File',
                desc_hl = 'String',

                key = 'f',
                keymap = '             SPC f f',
                key_hl = 'Number',

                key_format = ' %s',

                action = 'Telescope find_files',
              },
              {
                icon = '󰈢 ',
                icon_hl = 'Title',

                desc = 'Find Dotfiles',
                desc_hl = 'String',

                key = 'd',
                keymap = 'SPC f d',
                key_hl = 'Number',

                key_format = ' %s',

                action = 'Telescope find_files cwd=~/.config',
              },
              {
                icon = '󰊄 ',
                icon_hl = 'Title',

                desc = 'Recent Files',
                desc_hl = 'String',

                key = 'r',
                keymap = 'SPC f r',
                key_hl = 'Number',

                key_format = ' %s',

                action = 'Telescope oldfiles',
              },
              {
                icon = '󰒲 ',
                icon_hl = 'Title',

                desc = 'Config',
                desc_hl = 'String',

                key = 'c',
                keymap = 'SPC f c',
                key_hl = 'Number',

                key_format = ' %s',

                action = 'edit $MYVIMRC',
              },
              {
                icon = '󰗼 ',
                icon_hl = 'Title',

                desc = 'Quit',
                desc_hl = 'String',

                key = 'q',
                keymap = 'SPC q q',
                key_hl = 'Number',

                key_format = ' %s',

                action = 'qa',
              },
            },
            footer = {
              ' ',
              ' The days seem endless — and quietly so.',
            },
          }
        })
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
