# ===================================
# ‖       Pip Package Default       ‖
# ===================================
DOTENV := .env
SHELL := /bin/bash
.PHONY: run dev prod pytest

ifneq (,$(wildcard .env))
    include .env
    export $(shell sed 's/=.*//' .env)
endif

ENV ?= dev

# ===== Package Info =====
PACKAGE_NAME := pip-package-default
PACKAGE_TAG  := 0.1.0

# ===== Include Makefiles =====
#include ../../Makefiles/common.mk
#include $(ROOT_DIR)/Makefiles/monstrino-packages.mk
#include $(ROOT_DIR)/Makefiles/packages-base.mk

# ========== Monstrino Packages ==========
PACKAGES_DIR := ../../packages

LOCAL_DEPS := $(PACKAGES_DIR)/monstrino-core
