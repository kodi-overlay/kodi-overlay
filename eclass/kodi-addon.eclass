# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: kodi-addon.eclass
# @MAINTAINER:
# David GUGLIELMI <david.guglielmi@gmail.com>
# @AUTHOR:
# candrews@gentoo.org
# @SUPPORTED_EAPIS: 8
# @PROVIDES: cmake
# @BLURB: Helper for correct building and (importantly) installing Kodi addon packages.
# @DESCRIPTION:
# Provides a src_prepare and src_configure function for Kodi addon packages.

case ${EAPI} in
	8) ;;
	*) die "${ECLASS}: EAPI ${EAPI:-0} not supported" ;;
esac

inherit cmake

# @ECLASS_VARIABLE: CODENAME
# @PRE_INHERIT
# @DEFAULT_UNSET
# @DESCRIPTION:
# Kodi development codename that plugin targets. Used for determining the values for S
# and to add the correct kodi RDEPEND.
# https://kodi.wiki/view/Codename_history
# Value is inferred from PV if not set.

# @ECLASS_VARIABLE: KODI_ADDON_PN
# @PRE_INHERIT
# @DESCRIPTION:
# Name for the kodi addon, transformed from PN unless specified.
# Example: kodi-something-nothing -> something.nothing

# @ECLASS_VARIABLE: KODI_GH_ORG
# @PRE_INHERIT
# @DESCRIPTION:
# Name for the kodi addon Github organization.
# Example: KODI_GH_ORG="kodi-pvr" -> https://github.com/kodi-pvr

# @ECLASS_VARIABLE: KODI_ADDON_TAG
# @PRE_INHERIT
# @DESCRIPTION:
# Name for the kodi addon Github source tag name.
# Not checked with *9999 versions.
# Example: 21.0.1-Omega

if [[ -z ${KODI_ADDON_PN} ]]; then
	KODI_ADDON_PN="${PN##kodi-}"
	KODI_ADDON_PN="${KODI_ADDON_PN//-/.}"
fi

case ${PN} in
	kodi-game-*)
		KODI_GH_ORG="${KODI_GH_ORG:=kodi-game}"
	;;
	kodi-pvr-*)
		KODI_GH_ORG="${KODI_GH_ORG:=kodi-pvr}"
	;;
	*)
		KODI_GH_ORG="${KODI_GH_ORG:=xbmc}"
	;;
esac

if [[ -z ${CODENAME} ]]; then
	case ${PV} in
		22*)
			CODENAME="Piers"
			;;
		21*)
			CODENAME="Omega"
			;;
		20*)
			CODENAME="Nexus"
			;;
		19*)
			CODENAME="Matrix"
			;;
		*)
			if ! [[ ${PV} =~ 9999$ ]]; then
				die "Non live ebuild and no codename set"
			fi
			unset BASH_REMATCH
			;;
	esac
fi

if [[ ${PV} =~ 9999$ ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/${KODI_GH_ORG}/${KODI_ADDON_PN}.git"

	if [[ -n ${CODENAME} ]]; then
		EGIT_BRANCH="${CODENAME}"
	fi
else
	KODI_ADDON_TAG="${KODI_ADDON_TAG:=${PV}-${CODENAME}}"

	SRC_URI="
		https://github.com/${KODI_GH_ORG}/${KODI_ADDON_PN}/archive/${KODI_ADDON_TAG}.tar.gz
			-> ${P}.tar.gz
	"
	S="${WORKDIR}/${KODI_ADDON_PN}-${KODI_ADDON_TAG}"
fi
unset BASH_REMATCH

case ${CODENAME} in
	Piers)
		RDEPEND+=">=media-tv/kodi-22"
		DEPEND+=">=media-tv/kodi-22"
		;;
	Omega)
		RDEPEND+=">=media-tv/kodi-21"
		DEPEND+=">=media-tv/kodi-21"
		;;
	Nexus)
		RDEPEND+=">=media-tv/kodi-20"
		DEPEND+=">=media-tv/kodi-20"
		;;
	Matrix)
		RDEPEND+=">=media-tv/kodi-19"
		DEPEND+=">=media-tv/kodi-19"
		;;
	*)
		RDEPEND+="media-tv/kodi"
		DEPEND+="media-tv/kodi"
		;;
esac

# @FUNCTION: kodi-addon_src_prepare
# @DESCRIPTION:
# Prepare handling for Kodi addons.
kodi-addon_src_prepare() {

	# Ensure embedded dependencies are removed
	[ -d depends ] && (rm -rf depends || die)

	cmake_src_prepare
}

# @FUNCTION: kodi-addon_src_configure
# @DESCRIPTION:
# Configure handling for Kodi addons
kodi-addon_src_configure() {

	mycmakeargs+=(
		-DCMAKE_INSTALL_LIBDIR="${EPREFIX}/usr/$(get_libdir)/kodi"
	)

	cmake_src_configure
}

EXPORT_FUNCTIONS src_prepare src_configure
