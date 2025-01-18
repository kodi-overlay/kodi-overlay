# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KEYWORDS="~amd64 ~arm64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Shadertoy visualizer for Kodi"
HOMEPAGE="https://github.com/xbmc/visualization.shadertoy"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	dev-libs/jsoncpp:=
	media-libs/libglvnd
"
DEPEND="
	${RDEPEND}
	media-libs/glm
"
