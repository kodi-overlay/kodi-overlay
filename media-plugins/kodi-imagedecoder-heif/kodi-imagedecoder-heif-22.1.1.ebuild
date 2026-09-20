# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit kodi-addon

DESCRIPTION="HEIF image decoder for Kodi"
HOMEPAGE="https://github.com/xbmc/imagedecoder.heif"

LICENSE="GPL-2+"
SLOT="0"

# TODO: uncomment when 22 with keywords available
#KEYWORDS="~amd64 ~arm64 ~x86"

RDEPEND="
	dev-libs/tinyxml2:=
	media-libs/libheif:=
"
DEPEND="
	${RDEPEND}
	media-libs/libde265
"

PATCHES=(
	"${FILESDIR}"/${PN}-libheif-1.20-compat.patch
)
