-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>-", "<cmd>Oil<cr>", { desc = "open explorer" })
-- vim.keymap.del("n", ";")
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

function SearchFileBackwards(fn)
  local fp = vim.fn.expand("%:p")
  local pos = #fp
  local pom = ""
  while pos > 0 do
    if fp:sub(pos, pos) == "/" then
      pom = fp:sub(1, pos) .. fn
      if vim.fn.filereadable(pom) == 1 then
        break
      end
    end
    pos = pos - 1
  end
  return pom
end

function BuildMavenProject()
  local pom = SearchFileBackwards("pom.xml")
  if pom ~= "" then
    vim.fn.system("mvn -f " .. pom .. " compile")
  else
    vim.api.nvim_echo({ { "No pom.xml found.", "WarningMsg" } }, true, {})
  end
end

vim.keymap.set("n", "<F8>", ":lua BuildMavenProject()<CR>", { silent = true })
-- vim.api.nvim_command("autocmd BufWritePost *.java lua BuildMavenProject()")
