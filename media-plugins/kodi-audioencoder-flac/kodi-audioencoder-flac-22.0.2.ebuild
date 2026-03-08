# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit kodi-addon

DESCRIPTION="Flac encoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audioencoder.flac"

LICENSE="GPL-2+"
SLOT="0"

# TODO: uncomment when 22 with keywords available
#KEYWORDS="~amd64 ~arm64 ~x86"

RDEPEND="
	>=media-libs/flac-1.4.3:=
"
DEPEND="
	${RDEPEND}
	>=media-libs/libogg-1.3.5
"
