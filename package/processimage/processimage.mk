PROCESSIMAGE_VERSION = 1.0.0
PROCESSIMAGE_SITE = $(TOPDIR)/../processimage
PROCESSIMAGE_SITE_METHOD = local

define PROCESSIMAGE_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define PROCESSIMAGE_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/startprocess $(TARGET_DIR)/usr/bin/processimage
endef

$(eval $(generic-package))