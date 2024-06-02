# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	CODENAME="Omega"
	KODI_ADDON_TAG="d4449bb3f2066893649cdbcc72375a628e610289"
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="WAV encoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audioencoder.wav"

LICENSE="GPL-2"
SLOT="0"

DEPEND="
	${RDEPEND}
"
