# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KODI_ADDON_TAG="532186702c49ba7fe007badc74fa6a6e9cac48fe"
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="SPC decoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audiodecoder.snesapu"

LICENSE="GPL-2"
SLOT="0"

DEPEND="
	${RDEPEND}
"
