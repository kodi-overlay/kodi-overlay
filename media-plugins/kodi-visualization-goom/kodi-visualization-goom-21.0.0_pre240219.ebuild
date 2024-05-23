# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="a8cb12592900fcd099d65d7760cbb113489ec884"

inherit kodi-addon

DESCRIPTION="Goom visualizer for Kodi"
HOMEPAGE="https://github.com/xbmc/visualization.goom"
SRC_URI="
	https://github.com/xbmc/visualization.goom/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/visualization.goom-${COMMIT_ID}"

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
