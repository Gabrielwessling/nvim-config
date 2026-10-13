vim.pack.add {
  { src = 'https://github.com/johnseth97/codex.nvim' },
}

require('codex').setup {
  cmd = { 'cmd.exe', '/c', 'codex' },
  panel = true,
  width = 0.4,
  use_buffer = false,
  autoinstall = false,
  keymaps = {
    toggle = '<leader>cc',
    quit = '<C-q>',
  },
}

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'codex',
  callback = function(event)
    vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], {
      buffer = event.buf,
      nowait = true,
    })
  end,
})

