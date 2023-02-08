-- nvim-dap-python setup
local home = os.getenv("HOME")

require('dap-python').setup(home .. "/spack/var/spack/environments/base/.spack-env/view/bin/python")
