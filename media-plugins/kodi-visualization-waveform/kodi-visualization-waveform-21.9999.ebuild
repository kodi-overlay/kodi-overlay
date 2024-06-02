# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

case ${PV} in
	*9999)
		if [[ "${PV}" =~ 21* ]]; then
			CODENAME="Omega"
		fi
		inherit git-r3
	;;
	*)
		CODENAME="Omega"
		KODI_ADDON_TAG="a388be3b9c4a62a5087616d3c92a26d6cbbeb24f"
		KEYWORDS="~amd64 ~arm64 ~x86"
	;;
esac

inherit kodi-addon

DESCRIPTION="Waveform visualizer for Kodi"
HOMEPAGE="https://github.com/xbmc/visualization.waveform"

LICENSE="GPL-2+"
SLOT="0"

RDEPEND="
	media-libs/libglvnd
"
DEPEND="
	${RDEPEND}
	media-libs/glm
"
