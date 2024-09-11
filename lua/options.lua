require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.opt.relativenumber = true

require("markview").setup({
    modes = { "n", "no", "c", "i" }, -- Change these modes
                                -- to what you need

    hybrid_modes = { "n", "i" },     -- Uses this feature on
                                -- normal mode

    -- This is nice to have
    callbacks = {
        on_enable = function (_, win)
            vim.wo[win].conceallevel = 2;
            vim.wo[win].concealcursor = "c";
        end
    }
})
