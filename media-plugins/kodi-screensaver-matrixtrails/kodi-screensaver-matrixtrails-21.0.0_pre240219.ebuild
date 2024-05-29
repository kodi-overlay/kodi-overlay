# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
KODI_ADDON_COMMIT="364b7275fb02edf9a5c03bd56c8010431711b249"

inherit kodi-addon

DESCRIPTION="Matrix Trails screensaver for Kodi"
HOMEPAGE="https://github.com/xbmc/screensaver.matrixtrails"
SRC_URI="
	https://github.com/xbmc/${KODI_ADDON_PN}/archive/${KODI_ADDON_COMMIT}.tar.gz
		-> ${P}.tar.gz
"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	media-libs/libglvnd
"
DEPEND="
	${RDEPEND}
"
