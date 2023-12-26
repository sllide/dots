-- Read the docs: https://www.lunarvim.org/docs/configuration    
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6    
-- Forum: https://www.reddit.com/r/lunarvim/    
-- Discord: https://discord.com/invite/Xb9B4Ny    

lvim.plugins = {
    {
        "sllide/ftphelper",
        config = function ()
            vim.cmd("let g:ftphelper_excludes = ['node_modules/', '.git/', '*fonts/', '*logs/']")
            vim.cmd("let g:ftphelper_includes = ['*.twig', '*.conf', '*.css', '*.html', '*.ini', '*.js', '*.json', '*.php', '*.txt', '*.tpl']")
        end
    },
    { "luisiacc/gruvbox-baby" },
    { 'ray-x/lsp_signature.nvim' },

    { 'Eandrju/cellular-automaton.nvim' },
    { 'tamton-aquib/duck.nvim' }
}

lvim.builtin.which_key.mappings["F"] = {
  name = 'Funnies',
  d = { '<cmd>lua animals = {"🦆","🦀","🐈","🐎","🦖","🐤"}; require("duck").hatch(animals[math.random(#animals)])<CR>', 'Deploy animal' },
  k = { '<cmd>lua require("duck").cook()<CR>', 'Kill animal' },
  r = { '<cmd>CellularAutomaton make_it_rain<CR>', 'Liquify code' },
  l = { '<cmd>CellularAutomaton game_of_life<CR>', 'Game of life' },
}


lvim.transparent_window = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 0
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.wildmode = "longest:full,full"
vim.opt.so = 0
vim.opt.undofile = false
vim.opt.termguicolors = true

lvim.keys.normal_mode["<Tab>"] = ":bn<CR>"
lvim.keys.normal_mode["<S-Tab>"] = ":bp<CR>"

lvim.keys.visual_mode["<Tab>"] = ">gv"
lvim.keys.visual_mode["<S-Tab>"] = "<gv"

lvim.builtin.project.manual_mode = true

vim.cmd('set noundofile')

vim.g.gruvbox_baby_function_style = "NONE"
vim.g.gruvbox_baby_keyword_style = "NONE"
vim.g.gruvbox_baby_telescope_theme = 1
vim.g.gruvbox_baby_transparent_mode = 1
lvim.colorscheme = 'gruvbox-baby'
