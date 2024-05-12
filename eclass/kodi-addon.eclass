# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: kodi-addon.eclass
# @MAINTAINER:
# David GUGLIELMI <david.guglielmi@gmail.com>
# @AUTHOR:
# candrews@gentoo.org
# @SUPPORTED_EAPIS: 7 8
# @PROVIDES: cmake
# @BLURB: Helper for correct building and (importantly) installing Kodi addon packages.
# @DESCRIPTION:
# Provides a src_prepare and src_configure function for Kodi addon packages

case ${EAPI} in
	7|8) ;;
	*) die "${ECLASS}: EAPI ${EAPI:-0} not supported" ;;
esac

inherit cmake

# @FUNCTION: kodi-addon_src_configure
# @DESCRIPTION:
# Configure handling for Kodi addons
kodi-addon_src_configure() {

	mycmakeargs+=(
		-DCMAKE_INSTALL_LIBDIR="${EPREFIX}/usr/$(get_libdir)/kodi"
	)

	cmake_src_configure
}

# @FUNCTION: kodi-addon_src_prepare
# @DESCRIPTION:
# Prepare handling for Kodi addons
kodi-addon_src_prepare() {

	# Ensure embedded dependencies are removed
	[ -d depends ] && (rm -rf depends || die)

	cmake_src_prepare
}

EXPORT_FUNCTIONS src_prepare src_configure
