# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
KODI_ADDON_TAG="701111a81875688f016ce62b25670608a7fcd2d2"

inherit kodi-addon

DESCRIPTION="AsterWave screensaver for Kodi"
HOMEPAGE="https://github.com/xbmc/screensaver.asterwave"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	media-libs/libglvnd
"
DEPEND="
	${RDEPEND}
	media-libs/glm
"
