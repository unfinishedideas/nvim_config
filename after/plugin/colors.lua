function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

--ColorMyPencils()

function ForestMyPencils()
    vim.cmd.colorscheme("everforest")
end

function RoseMyPencils()
    vim.cmd.colorscheme("rose-pine-main")
end
