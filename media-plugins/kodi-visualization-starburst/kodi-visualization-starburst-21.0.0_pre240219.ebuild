# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
KODI_ADDON_TAG="7923772cd986849531bdfee0a0bc989842b41996"

inherit kodi-addon

DESCRIPTION="StarBurst visualizer for Kodi"
HOMEPAGE="https://github.com/xbmc/visualization.starburst"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~x86"

RDEPEND="
	media-libs/libglvnd
"
DEPEND="
	${RDEPEND}
	media-libs/glm
"
