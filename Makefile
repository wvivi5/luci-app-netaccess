include $(TOPDIR)/rules.mk

LUCI_TITLE:=Access Control (Whitelist/Blacklist)
LUCI_DEPENDS:=+iptables +ipset
LUCI_PKGARCH:=all

PKG_NAME:=luci-app-netaccess
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=luci
  CATEGORY:=LuCI
  TITLE:=$(LUCI_TITLE)
  DEPENDS:=$(LUCI_DEPENDS)
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) ./files/netaccess.config $(1)/etc/config/netaccess

	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_DATA) ./luasrc/controller/netaccess.lua $(1)/usr/lib/lua/luci/controller/netaccess.lua

	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi
	$(INSTALL_DATA) ./luasrc/model/cbi/netaccess.lua $(1)/usr/lib/lua/luci/model/cbi/netaccess.lua

	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/i18n
	$(INSTALL_DATA) ./po/zh_Hans/netaccess.zh-cn.po $(1)/usr/lib/lua/luci/i18n/netaccess.zh-cn.po
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
