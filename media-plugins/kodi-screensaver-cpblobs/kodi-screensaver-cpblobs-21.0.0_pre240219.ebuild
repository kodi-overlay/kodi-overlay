# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="cd96c71c22940014d5c79c58af99b60e0b418f71"

inherit kodi-addon

DESCRIPTION="CpBlobs screensaver for Kodi"
HOMEPAGE="https://github.com/xbmc/screensaver.cpblobs"
SRC_URI="
	https://github.com/xbmc/screensaver.cpblobs/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/screensaver.cpblobs-${COMMIT_ID}"

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
