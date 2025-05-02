module("luci.controller.netaccess", package.seeall)

function index()
    entry({"admin", "control", "netaccess"}, cbi("netaccess"), _("Net Access Control"), 60)
end
