STARTPROCESS_VERSION = 1.0.0
STARTPROCESS_SITE = $(TOPDIR)/../startprocess
STARTPROCESS_SITE_METHOD = local

define STARTPROCESS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define STARTPROCESS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/startprocess $(TARGET_DIR)/usr/bin/startprocess

	$(INSTALL) -D -m 0755 $(@D)/startprocess-init $(TARGET_DIR)/etc/init.d/S90startprocess	
endef

$(eval $(generic-package))