-- lazy.nvimでmason.nvimをインストールする設定
return {
    "williamboman/mason.nvim", -- LSP Installer
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "nvim-lua/plenary.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/nvim-cmp",
    },
    event = "VeryLazy",
    config = function()
        require "mason".setup {
            ui = {
                check_outdated_packages_on_open = false,
                border = 'single',
            },
        }
        local mason_lspconfig = require("mason-lspconfig")
        local on_attach = function(_, bufnr)
            vim.api.nvim_buf_set_option(bufnr, "formatexpr",
                "v:lua.vim.lsp.formatexpr(#{timeout_ms:250})")
            -- _G.lsp_onattach_func(i, bufnr)
        end
        mason_lspconfig.setup{
            ensure_installed = {
                "lua_ls",
                "bashls",
                "clangd",
                "cmake",
                "cssls",
                "dockerls",
                "docker_compose_language_service",
                "html",
                "jsonls",
                "tsserver",
                "marksman",
                "pylsp",
            }
        }
            -- Loading nvim-cmp
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        local lspconfig = require('lspconfig')

        local servers = {
          "tsserver",
        }

        for _, lsp in ipairs(servers) do
          lspconfig[lsp].setup {
            -- on_attach = my_custom_on_attach,
            capabilities = capabilities,
          }
        end

        -- nvim-cmp key bindings
        local cmp = require("cmp")
        cmp.setup {
          mapping = cmp.mapping.preset.insert({
            ['<F5>'] = cmp.mapping.complete(),
            ['<CR>'] = cmp.mapping.confirm {
              behavior = cmp.ConfirmBehavior.Replace,
              select = true,
            },
            ['<C-p>'] = cmp.mapping.abort(),
          }),
          sources = {
            { name = 'nvim_lsp' },
          },
        }

        mason_lspconfig.setup_handlers({
            function(server_name)
                local opts = {
                    on_attach = on_attach,
                    settings = {
                        ["omniSharp"] = {
                            useGlobalMono = "always"
                        }
                    },
                }
                require("lspconfig")[server_name].setup(opts)
                require("lspconfig").dartls.setup({
                    cmd = { "dart", "language-server", "--protocol=lsp" },
                    filetypes = { "dart" },
                    init_options = {
                        closingLabels = true,
                        flutterOutline = true,
                        onlyAnalyzeProjectsWithOpenFiles = true,
                        outline = true,
                        suggestFromUnimportedLibraries = true,
                    },
                    -- root_dir = root_pattern("pubspec.yaml"),
                    settings = {
                        dart = {
                            completeFunctionCalls = true,
                            showTodos = true,
                        },
                    },
                    on_attach = function(client, bufnr)
                    end,
                })
            end,
        })
        vim.cmd("LspStart") -- 初回起動時はBufEnterが発火しない
    end,
}
