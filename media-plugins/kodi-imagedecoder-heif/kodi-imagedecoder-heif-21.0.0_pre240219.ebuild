# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
KODI_ADDON_TAG="bf9771060dddc753ac7cf1dbf561059cad54dfb0"

inherit kodi-addon

DESCRIPTION="HEIF image decoder for Kodi"
HOMEPAGE="https://github.com/xbmc/imagedecoder.heif"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-libs/tinyxml2:=
	media-libs/libheif:=
"
DEPEND="
	${RDEPEND}
	media-libs/libde265
"
