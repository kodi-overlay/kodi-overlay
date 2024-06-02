# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	CODENAME="Omega"
	KODI_ADDON_TAG="88c1a68efa644aaf2bb91378e26a3f054dcf025c"
	KEYWORDS="~amd64 ~arm64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Vorbis encoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audioencoder.vorbis"

LICENSE="GPL-2+"
SLOT="0"

RDEPEND="
	>=media-libs/libogg-1.3.5
	>=media-libs/libvorbis-1.3.7
"
DEPEND="
	${RDEPEND}
"
