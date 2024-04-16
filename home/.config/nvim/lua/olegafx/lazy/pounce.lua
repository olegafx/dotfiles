return {
  'rlane/pounce.nvim',
  config = function()
    local map = vim.keymap.set
    map("n", "s", function() require'pounce'.pounce { } end)
    map("n", "S", function() require'pounce'.pounce { do_repeat = true } end)
    map("x", "s", function() require'pounce'.pounce { } end)
    map("o", "gs", function() require'pounce'.pounce { } end)
    map("n", "S", function() require'pounce'.pounce { input = {reg="/"} } end)
  end
}