# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="a0b53a28277f1b2cfb4db74a688a6582e3e0ece6"

inherit kodi-addon

DESCRIPTION="Shadertoy screensaver for Kodi"
HOMEPAGE="https://github.com/xbmc/screensaver.shadertoy"
SRC_URI="
	https://github.com/xbmc/screensaver.shadertoy/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/screensaver.shadertoy-${COMMIT_ID}"

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
