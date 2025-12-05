# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit kodi-addon

DESCRIPTION="SidPlay decoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audiodecoder.sidplay"

LICENSE="GPL-2"
SLOT="0"

# TODO: uncomment when 22 with keywords available
#KEYWORDS="~amd64 ~x86"

RDEPEND="
	media-libs/libsidplay:2
"
DEPEND="
	${RDEPEND}
"
