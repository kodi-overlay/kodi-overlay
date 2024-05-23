# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="7923772cd986849531bdfee0a0bc989842b41996"

inherit kodi-addon

DESCRIPTION="StarBurst visualizer for Kodi"
HOMEPAGE="https://github.com/xbmc/visualization.starburst"
SRC_URI="
	https://github.com/xbmc/visualization.starburst/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/visualization.starburst-${COMMIT_ID}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	media-libs/libglvnd
	=media-tv/kodi-21*
"
DEPEND="
	${RDEPEND}
	media-libs/glm
"
