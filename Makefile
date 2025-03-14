# SPDX-License-Identifier: GPL-3.0-or-later

#    ----------------------------------------------------------------------
#    Copyright © 2024, 2025  Pellegrino Prevete
#
#    All rights reserved
#    ----------------------------------------------------------------------
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.

PREFIX ?= /usr/local
_PROJECT=evm-contracts-tools
DOC_DIR=$(DESTDIR)$(PREFIX)/share/doc/$(_PROJECT)
BIN_DIR=$(DESTDIR)$(PREFIX)/bin
MAN_DIR?=$(DESTDIR)$(PREFIX)/share/man
LIB_DIR=$(DESTDIR)$(PREFIX)/lib

DOC_FILES=\
  $(wildcard *.rst) \
  $(wildcard *.md)
SCRIPT_FILES=$(wildcard $(_PROJECT)/*)

all:

check: shellcheck

shellcheck:
	shellcheck -s bash $(SCRIPT_FILES)

install: install-scripts install-doc install-man

install-scripts:

	install -vDm 755 "$(_PROJECT)/evm-contract-call-dynamic" "$(LIB_DIR)/$(_PROJECT)/evm-contract-call-dynamic"
	install -vDm 755 "$(_PROJECT)/evm-contract-call-static" "$(LIB_DIR)/$(_PROJECT)/evm-contract-call-static"
	install -vDm 755 "$(_PROJECT)/contract-get" "$(LIB_DIR)/$(_PROJECT)/contract-get"
	install -vDm 755 "$(_PROJECT)/evm-contract-deployment-address" "$(BIN_DIR)/evm-contract-deployment-address"
	install -vDm 755 "$(_PROJECT)/evm-contract-deployment-networks" "$(BIN_DIR)/evm-contract-deployment-networks"
	install -vDm 755 "$(_PROJECT)/evm-contract-deployment-versions" "$(BIN_DIR)/evm-contract-deployment-versions"
	install -vDm 755 "$(_PROJECT)/evm-contract-deployments-dir" "$(BIN_DIR)/evm-contract-deployments-dir"
	install -vDm 755 "$(_PROJECT)/evm-contract-call" "$(BIN_DIR)/evm-contract-call"

install-doc:

	install -vDm 644 $(DOC_FILES) -t $(DOC_DIR)

install-man:

	install \
	  -vdm755 \
	  "$(MAN_DIR)/man1"
	rst2man \
	  "man/evm-contract-call.1.rst" \
	  "$(MAN_DIR)/man1/evm-contract-call.1"

.PHONY: check install install-doc install-man install-scripts shellcheck
