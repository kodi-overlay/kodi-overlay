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

# @ECLASS_VARIABLE: KODI_ADDON_PN
# @PRE_INHERIT
# @DESCRIPTION:
# Name for the kodi addon, transformed from PN unless specified.
# Example: kodi-something-nothing -> something.nothing

if [[ -z ${KODI_ADDON_PN} ]]; then
	KODI_ADDON_PN="${PN##kodi-}"
	KODI_ADDON_PN="${KODI_ADDON_PN//-/.}"
fi

case ${PN} in
	kodi-game-*)
		KODI_GH_ORG="kodi-game"
	;;
	kodi-pvr-*)
		KODI_GH_ORG="kodi-pvr"
	;;
	*)
		KODI_GH_ORG="xbmc"
	;;
esac

if [[ -z ${KODI_ADDON_COMMIT} ]]; then
	KODI_GH_TAG="${PV}-${CODENAME}"
else
	KODI_GH_TAG="${KODI_ADDON_COMMIT}"
fi

SRC_URI="
	https://github.com/${KODI_GH_ORG}/${KODI_ADDON_PN}/archive/${KODI_GH_TAG}.tar.gz
		-> ${P}.tar.gz
"

S="${WORKDIR}/${KODI_ADDON_PN}-${KODI_GH_TAG}"

# @ECLASS_VARIABLE: CODENAME
# @PRE_INHERIT
# @DEFAULT_UNSET
# @DESCRIPTION:
# Kodi development codename that plugin targets. Used for determining the values for S
# and to add the correct kodi RDEPEND.
# https://kodi.wiki/view/Codename_history

case ${CODENAME} in
	Omega)
		RDEPEND+="=media-tv/kodi-21*"
		;;
	Nexus)
		RDEPEND+="=media-tv/kodi-20*"
		;;
	Matrix)
		RDEPEND+="=media-tv/kodi-19*"
		;;
	*)
		RDEPEND+="media-tv/kodi"
		;;
esac

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
