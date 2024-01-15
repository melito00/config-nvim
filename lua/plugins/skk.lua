return {
  {
    "vim-skk/skkeleton",
    lazy = false,
    dependencies = { "vim-denops/denops.vim" },
    init = function()
      vim.keymap.set('c', '<C-j>', '<Plug>(skkeleton-enable)')
      vim.keymap.set('i', '<C-j>', '<Plug>(skkeleton-enable)')

      -- 辞書を探す
      local dictionaries = {}
      table.insert(dictionaries, "/home/kyamada/SKK-JISYO.L")

      vim.api.nvim_create_autocmd("User", {
        pattern = "skkeleton-initialize-pre",
        callback = function()
          vim.fn["skkeleton#config"]({
            eggLikeNewline = true,
            registerConvertResult = true,
            globalDictionaries = dictionaries,
          })
        end,
      })
    end,
  },
}
