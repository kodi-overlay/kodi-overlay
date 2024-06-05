# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KODI_ADDON_TAG="953947d07fdf69967e2dc64b289631c57c79e800"
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="BioGenesis screensaver for Kodi"
HOMEPAGE="https://github.com/xbmc/screensaver.biogenesis"

LICENSE="GPL-2+"
SLOT="0"

RDEPEND="
	media-libs/libglvnd
"
DEPEND="
	${RDEPEND}
"
