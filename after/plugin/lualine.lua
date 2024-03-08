require('lualine').setup({
    options = {
        theme = 'tokyonight',
    },
    sections = {
        lualine_c = {
            { "%=", separator = { left = '' } },
            { 'filename', path = 3 }
        }
    },
});
