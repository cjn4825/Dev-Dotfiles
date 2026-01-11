return {
  {
    "Wansmer/treesj",
    keys = {
      {
        "<leader>j",
        function()
          require("treesj").toggle()
        end,
        desc = "toggle formating for delimeters",
        silent = true,
      },
    },
    config = function()
      require("treesj").setup()
    end,
  },
}
