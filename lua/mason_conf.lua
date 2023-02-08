setting = require('setting')
utils = require('utils')

local pack_to_install = setting.packages
require("mason").setup()

-- Install packages in setting
local registry = require "mason-registry"
for _, package in pairs(pack_to_install) do
    if not registry.is_installed(package) then
        vim.cmd("MasonInstall " .. package)
    end
end


--[[ the function below does not work because the name used to install the package
-- and the name of the package itself is different

-- Uninstall packages removed from setting
for _, ins_pack in pairs(registry.get_installed_package_names()) do
    if not utils.tableContains(utils.tableConcat(setting.packages, setting.servers), ins_pack) then
        print("Uninstallling "..ins_pack)
        vim.cmd("MasonUninstall " .. ins_pack)
    end
end
--]]

