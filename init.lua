-- Declare the path where lazy will clone plugin code
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check to see if lazy itself has been cloned, if not clone it into the lazy.nvim directory
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

-- Add the path to the lazy plugin repositories to the vim runtime path
vim.opt.rtp:prepend(lazypath)

-- Declare a few options for lazy
local opts = {
	change_detection = {
		-- Don't notify us every time a change is made to the configuration
		notify = false,
	},
	checker = {
		-- Automatically check for package updates
		enabled = true,
		-- Don't spam us with notification every time there is an update available
		notify = false,
	},
}


-- Set leader key to Space
vim.g.mapleader = " "

-- Key bindings for compile and run commandds
-- Compile Java file into Output Files folder
vim.keymap.set("n", "<leader>jc", ":w !javac -d './Output Files' %<CR>", { desc = "[J]ava [C]ompile" })

-- Run the compiled Java file from Output Files
vim.keymap.set("n", "<leader>jr", ":w !java -cp './Output Files' %:r<CR>", { desc = "[J]ava [R]un" })

-- Compile and run Java in one step
vim.keymap.set('n', '<leader>jx', ':w !javac -d "./Output Files" % && java -cp "./Output Files" %:r<CR>', { desc = '[J]ava [C]ompile and [R]un' })

-- Load the options from the config/options.lua file
require("config.options")
-- Load the keymaps from the config/keymaps.lua file
require("config.keymaps")
-- Load the auto commands from the config/autocmds.lua file
require("config.autocmds")
-- Setup lazy, this should always be last
-- Tell lazy that all plugin specs are found in the plugins directory
-- Pass it the options we specified above
require("lazy").setup("plugins", opts)
