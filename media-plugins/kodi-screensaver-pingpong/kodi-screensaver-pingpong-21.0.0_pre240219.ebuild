# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="a0b8b956002ddc64eb6d433e3230fa09619f2aef"

inherit kodi-addon

DESCRIPTION="Ping-pong screensaver for Kodi"
HOMEPAGE="https://github.com/xbmc/screensaver.pingpong"
SRC_URI="
	https://github.com/xbmc/screensaver.pingpong/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/screensaver.pingpong-${COMMIT_ID}"

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
