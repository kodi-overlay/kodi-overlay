# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KODI_ADDON_COMMIT="a8cb12592900fcd099d65d7760cbb113489ec884"
	KEYWORDS="~amd64 ~arm64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Goom visualizer for Kodi"
HOMEPAGE="https://github.com/xbmc/visualization.goom"

LICENSE="GPL-2+"
SLOT="0"

RDEPEND="
	media-libs/libglvnd
"
DEPEND="
	${RDEPEND}
	media-libs/glm
"
