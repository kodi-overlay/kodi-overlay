# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="364132b12b6da78e281b6a1d678155d43aace83f"

inherit kodi-addon

DESCRIPTION="Shadertoy visualizer for Kodi"
HOMEPAGE="https://github.com/xbmc/visualization.shadertoy"
SRC_URI="
	https://github.com/xbmc/visualization.shadertoy/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/visualization.shadertoy-${COMMIT_ID}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-libs/jsoncpp:=
	media-libs/libglvnd
	=media-tv/kodi-21*
"
DEPEND="
	${RDEPEND}
	media-libs/glm
"
