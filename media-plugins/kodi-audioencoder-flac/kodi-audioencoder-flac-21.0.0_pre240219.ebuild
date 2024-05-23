# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="de8f0937d8f3ddda987599041b82b7f1c32beec7"

inherit kodi-addon

DESCRIPTION="Flac encoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audioencoder.flac"
SRC_URI="
	https://github.com/xbmc/audioencoder.flac/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/audioencoder.flac-${COMMIT_ID}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
	>=media-libs/flac-1.4.3:=
"
DEPEND="
	${RDEPEND}
	>=media-libs/libogg-1.3.5
"
