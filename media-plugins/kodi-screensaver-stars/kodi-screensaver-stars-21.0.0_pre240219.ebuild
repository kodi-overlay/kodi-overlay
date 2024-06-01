# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
KODI_ADDON_TAG="e31111555b41692fd373719a9ba74aba3e7f4790"

inherit kodi-addon

DESCRIPTION="Stars screensaver for Kodi"
HOMEPAGE="https://github.com/xbmc/screensaver.stars"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	media-libs/libglvnd
"
DEPEND="
	${RDEPEND}
"
