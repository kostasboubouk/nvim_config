return {
  "kelly-lin/ranger.nvim",
  config = function()
    require("ranger-nvim").setup({ 
      replace_netrw = true,
      ui = {
        border = "none",
        height = 0.95,
        width = 0.95,
        x = 0.5,
        y = 0.5,
      }
    })
    vim.api.nvim_set_keymap("n", "<leader>r", "", {
      noremap = true,
      callback = function()
        require("ranger-nvim").open(true)
      end,
    })
  end,
}
