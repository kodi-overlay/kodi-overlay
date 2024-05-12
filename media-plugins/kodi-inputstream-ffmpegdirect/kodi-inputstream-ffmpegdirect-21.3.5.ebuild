# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"

inherit kodi-addon

DESCRIPTION="Kodi's FFMpeg Direct Inputstream addon"
HOMEPAGE="https://github.com/xbmc/inputstream.ffmpegdirect"
SRC_URI="
	https://github.com/xbmc/inputstream.ffmpegdirect/archive/${PV}-${CODENAME}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/inputstream.ffmpegdirect-${PV}-${CODENAME}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~x86"

COMMON_DEPEND="
	=media-tv/kodi-21*
	media-video/ffmpeg:=[encode,libxml2,zlib]
"
RDEPEND="
	${COMMON_DEPEND}
"

DEPEND="
	${COMMON_DEPEND}
	app-arch/bzip2
	sys-libs/zlib
"

BDEPEND="
	virtual/pkgconfig
"
