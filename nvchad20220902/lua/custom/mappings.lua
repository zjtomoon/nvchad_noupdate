local M = {}

-- Ctrl+q退出
-- map('n', '<C-q>', ':q<CR>')
M.other = {
   n = {
      ["<C-q>"] = { "<cmd> q! <CR>", "强制退出" },
      ["Q"] = {"<cmd> q <CR>","退出"},
      ["ss"] = {"<cmd> w <CR>","保存"},
      ["<C-s>"] = {"<cmd> wq <CR>","保存并退出"},

      -- 打开目录树
      ["tt"] = {"<cmd> NvimTreeToggle <CR>","打开目录树"},

      -- 打开终端
      ["T"] = {"<cmd> set splitbelow<CR>:sp<CR>:term<CR>","打开终端"},

      -- 分屏
      ["sl"] = { "<cmd> set splitright<CR>:vsplit<CR>", "垂直向右" },
      ["sh"] = { "<cmd> set nosplitright<CR>:vsplit<CR>", "垂直向左" },
      ["sj"] = { "<cmd> set splitright<CR>:split<CR>", "水平向下" },
      ["sk"] = { "<cmd> set nosplitright<CR>:split<CR>", "水平向上" },

      -- 在分屏间移动
      ["<C-h>"] = { "<C-w>h", "向左" },
      ["<C-j>"] = { "<C-w>j", "向下" },
      ["<C-k>"] = { "<C-w>k", "向上" },
      ["<C-l>"] = { "<C-w>l", "向右" },

      -- 改变窗口大小
      ["<up>"] = { "<cmd> res +5<CR>", "" },
      ["<down>"] = { "<cmd> res -5<CR>", "" },
      ["<left>"] = { "<cmd> vertical resize-5<CR>", "" },
      ["<right>"] = { "<cmd> vertical resize+5<CR>", "" },

      -- 切换标签
      ["tb"] = {"<cmd> tabe <CR>","创建新标签"},
      ["th"] = {"<cmd> -tabnext<CR>","切换到左标签"},
      ["tl"] = {"<cmd> +tabnext<CR>","切换到右标签"},
      ["="] = {"nzz","向下查找"},
      ["-"] = {"Nzz","向上查找"},
   },

   v = {
      ["Y"] = { [["+y]], "一件复制到系统剪切板" },
   },
}
-- -- 历史修改记录

M.Undotree = {
   n = {
      ["<A-u>"] = { "<cmd> UndotreeToggle<CR>", "打开/关闭历史编辑记录" },
   },
}

M.Suda = {
   n = {
      ["<A-s>"] = { "<cmd> SudaWrite<CR>", "Suda提权" },
   },
}

M.AsyncTask = {
   n = {
      ["<F8>"] = { "<cmd> AsyncTask file-build<CR>", "一键编译" },
      ["<F9>"] = { "<cmd> AsyncTask file-run<CR>", "一键运行" },
      -- ["<F10>"] = {"<cmd> AsyncTask file-build<CR> | <cmd> AsyncTask file-run<CR>", "一键编译运行"},
   },
}

M.Vista = {
   n = {
      ["<A-f>"] = { "<cmd> Vista<CR>", "开启/关闭函数列表" },
   },
}

M.Markdown = {
   n = {
      ["<leader>tm"] = { "<cmd> TableModeToggle<CR>", "创建表格" },
      ["<A-r>"] = { "<cmd> MarkdownPreviewToggle<CR>", "markdown一键预览" },
   },
}

M.format = {
   n = {
      ["<leader>fm"] = {
         function()
            vim.lsp.buf.formatting()
         end,
         "   lsp formatting",
      },
   },
}

return M
