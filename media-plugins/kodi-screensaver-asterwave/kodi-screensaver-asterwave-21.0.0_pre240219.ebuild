# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="701111a81875688f016ce62b25670608a7fcd2d2"

inherit kodi-addon

DESCRIPTION="AsterWave screensaver for Kodi"
HOMEPAGE="https://github.com/xbmc/screensaver.asterwave"
SRC_URI="
	https://github.com/xbmc/screensaver.asterwave/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/screensaver.asterwave-${COMMIT_ID}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
"
DEPEND="
	${RDEPEND}
	media-libs/glm
	virtual/opengl
"

src_prepare() {
	[ -d depends ] && rm -rf depends || die
	cmake_src_prepare
}