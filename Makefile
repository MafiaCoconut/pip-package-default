# ====================================
# ‖  Monstrino default Package  ‖
# ====================================

SHELL := /bin/bash

# ===== Package Info =====
PACKAGE_NAME := monstrino-api
PACKAGE_TAG  := 0.1.0

#LOCAL_DEPS := ../monstrino-core ../monstrino-models

# ===== Include Makefiles =====
include ../../Makefiles/common.mk
include $(ROOT_DIR)/Makefiles/monstrino-packages.mk
include $(ROOT_DIR)/Makefiles/packages-base.mk
