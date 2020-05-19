package = "external-auth"
version = "0.2-2"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/jcm300/kong-external-auth",
  tag = "0.2-2"
}
description = {
  summary = "Kong plugin to authenticate requests using http services.",
  license = "MIT",
  homepage = "https://github.com/jcm300/kong-external-auth",
  detailed = [[
      Kong plugin to authenticate requests using http services.
  ]]
}
dependencies = {
  "lua-cjson >= 2.1"
}
build = {
  type = "module",
  modules = {
    ["kong.plugins.external-auth.handler"] = "src/handler.lua",
    ["kong.plugins.external-auth.schema"] = "src/schema.lua"
  }
}
