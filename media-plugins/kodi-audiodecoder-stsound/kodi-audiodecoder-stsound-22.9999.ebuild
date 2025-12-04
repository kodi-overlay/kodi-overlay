# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KODI_ADDON_TAG="b72c793e2ada7ab2358568ec5b01fd71ddf7cdb3"
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="SPC decoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audiodecoder.stsound"

LICENSE="GPL-2"
SLOT="0"

DEPEND="
	${RDEPEND}
"
