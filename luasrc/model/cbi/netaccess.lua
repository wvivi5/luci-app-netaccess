m = Map("netaccess", translate("Whitelist Internet Control"))

s = m:section(TypedSection, "device", translate("Whitelist Devices"))
s.addremove = true
s.anonymous = true

s:option(Value, "mac", translate("MAC Address"))
s:option(Value, "comment", translate("Comment"))

return m
