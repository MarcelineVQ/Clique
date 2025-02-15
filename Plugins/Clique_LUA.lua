--[[---------------------------------------------------------------------------------
  This is a template for the plugin/module system for Clique.

  Plugins are typically used to tie Clique to a specific set of unit frames, but
  can also be used to add functionality to the system through a manner of hooks.

  Plugins are registered with Clique with a shortname that is used for all slash
  commands.  In addition they are required to have a fullname parameter that is
  used in all display messages
----------------------------------------------------------------------------------]]

local Plugin = Clique:NewModule("LUA")
Plugin.fullname = "Luna Unit Frames"
Plugin.url = "https://github.com/shagu/pfUI"

Luna_Custom_ClickFunction = nil

function Plugin:Test()
  return LunaUF
end

function Plugin:OnEnable()
  Luna_Custom_ClickFunction = Plugin.OnClick
end

function Plugin:OnDisable()
  Luna_Custom_ClickFunction = nil
end

function Plugin:OnClick()
  -- local button = arg1
  local button = arg1
  local unit = this.unit or this:GetParent().unit;
  Clique:OnClick(button, unit)
  -- if not Clique:OnClick(button, unit) then
    -- pfUI.uf:ClickActionOld(button)
    -- Luna_Custom_ClickFunction = Plugin.OnClick
  -- end
end
