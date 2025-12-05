# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KODI_ADDON_TAG="00bee97ded3bc824dc454104bd53d0f431404571"
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Timidity decoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audiodecoder.timidity"

LICENSE="GPL-2"
SLOT="0"
