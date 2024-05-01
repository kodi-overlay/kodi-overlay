# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="8f2fc2135b34740af538ade3faf310f1a188db7f"

inherit kodi-addon

DESCRIPTION="Spectrum visualizer for Kodi"
HOMEPAGE="https://github.com/xbmc/visualization.spectrum"
SRC_URI="
	https://github.com/xbmc/visualization.spectrum/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/visualization.spectrum-${COMMIT_ID}"

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
