return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
  event = { 'BufReadPost', 'BufNewFile' },
  version = '1.*',
  opts = {
    completion = {
      menu = {
        border = "rounded",
        draw = {
          columns = {
            { 'label',    'label_description', gap = 1 },
            { 'kind_icon' }
          },
        }
      },
      documentation = {
        auto_show = true,
        window = {
          border = "rounded",
        }
      }
    },
    keymap = {
      preset = 'super-tab',
      ['<C-u>'] = { 'scroll_documentation_up', 'fallback' },
      ['<C-d>'] = { 'scroll_documentation_down', 'fallback' }
    },
    signature = {
      enabled = true
    },
    cmdline = {
      completion = {
        menu = {
          auto_show = true
        }
      }
    }
  }
}
