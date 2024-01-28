local git_blame = require('gitblame')
-- This disables showing of the blame text next to the cursor
vim.g.gitblame_display_virtual_text = 0

local function gitblame_limit(text)
    if string.len(text) > 10 then
        return string.sub(text, 1, 10) .. '...'
    else
        return text
    end
end

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'farout',
    section_separators = '',
    component_separators = '|',
    disabled_filetypes = { 'packer' },
    globalstatus = true
  },
  sections = {
    -- left
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { 'filename' , { git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available, format = gitblame_limit } },

    -- right
    lualine_x = { 'g:zoom#statustext', 'encoding', 'fileformat', 'filetype'},
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  extensions = { 'neo-tree' }
}
