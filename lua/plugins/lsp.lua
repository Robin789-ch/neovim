return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      -- Rust
      vim.lsp.enable('rust_analyzer')

      -- Lua / Neovim
      vim.lsp.config('lua_ls', {
        settings = {
          Lua = {
            runtime = {
              version = 'LuaJIT',
            },
            workspace = {
              checkThirdParty = false,
              library = {
                vim.env.VIMRUNTIME,
              },
            },
          },
        },
      })
      vim.lsp.enable('lua_ls')

      -- Format Lua with lua_ls
      vim.api.nvim_create_autocmd('BufWritePre', {
        pattern = '*.lua',
        callback = function()
          vim.lsp.buf.format({
            name = 'lua_ls',
            timeout_ms = 1000,
          })
        end,
      })

      -- Python
      vim.lsp.config('ruff', {
        init_options = {
          settings = {
            -- Prefer project pyproject.toml / ruff.toml over editor defaults
            configurationPreference = 'filesystemFirst',
          },
        },
      })
      vim.lsp.enable('ty')
      vim.lsp.enable('ruff')

      -- Format Python with Ruff on save
      vim.api.nvim_create_autocmd('BufWritePre', {
        pattern = '*.py',
        callback = function()
          vim.lsp.buf.code_action({
            context = {
              only = { 'source.organizeImports' },
              diagnostics = {},
            },
            apply = true,
          })

          vim.lsp.buf.format({
            name = 'ruff',
            timeout_ms = 1000,
          })
        end,
      })
    end,
  },
}
