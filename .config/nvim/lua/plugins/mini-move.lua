return {
  'echasnovski/mini.move',
  config = function()
    require('mini.move').setup()
    -- Usando Space + j/k (más cómodo)
    vim.keymap.set('n', '<Space>j', '<cmd>lua MiniMove.move_line("down")<cr>', { desc = 'Move line down' })
    vim.keymap.set('n', '<Space>k', '<cmd>lua MiniMove.move_line("up")<cr>', { desc = 'Move line up' })
    vim.keymap.set('n', '<Space>h', '<cmd>lua MiniMove.move_line("left")<cr>', { desc = 'Move line left' })
    vim.keymap.set('n', '<Space>r', '<cmd>lua MiniMove.move_line("right")<cr>', { desc = 'Move line right' }) -- r de right
  
  end,
}