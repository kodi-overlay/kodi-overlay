# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="SidPlay decoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audiodecoder.sidplay"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	media-libs/libsidplay:2
"
DEPEND="
	${RDEPEND}
"
