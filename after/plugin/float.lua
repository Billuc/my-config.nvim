function CreateFloat(w, h)
    local widthPercent = w or 75;
    local heightPercent = h or 75;

    local buf = vim.api.nvim_create_buf(false, true)

    local cols = vim.o.columns;
    local rows = vim.o.lines;

    local width = math.ceil(cols * widthPercent / 100);
    local height = math.ceil(rows * heightPercent / 100);

    local opts = {
        relative = 'editor',
        width = width,
        height = height,
        col = (cols / 2) - (width / 2),
        row = (rows / 2) - (height / 2),
        anchor = "NW",
        style = "minimal",
    }

    local win = vim.api.nvim_open_win(buf, 1, opts)
end

