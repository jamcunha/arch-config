local M = {}

M.extra_setup = nil

M.extra_opts = {
  settings = {
    ['rust-analyzer'] = {
      check = {
        command = 'clippy',
      },
    },
  },
}

return M
