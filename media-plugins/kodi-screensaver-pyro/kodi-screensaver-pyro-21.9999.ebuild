# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KODI_ADDON_TAG="b0d14d3f8cfe7d0c71ce8df8a6b8d6f121b42908"
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Pyro screensaver for Kodi"
HOMEPAGE="https://github.com/xbmc/screensaver.pyro"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	media-libs/libglvnd
"
DEPEND="
	${RDEPEND}
"
