# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="88c1a68efa644aaf2bb91378e26a3f054dcf025c"

inherit kodi-addon

DESCRIPTION="Vorbis encoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audioencoder.vorbis"
SRC_URI="
	https://github.com/xbmc/audioencoder.vorbis/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/audioencoder.vorbis-${COMMIT_ID}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=media-libs/libogg-1.3.5
	>=media-libs/libvorbis-1.3.7
	=media-tv/kodi-21*
"
DEPEND="
	${RDEPEND}
"
