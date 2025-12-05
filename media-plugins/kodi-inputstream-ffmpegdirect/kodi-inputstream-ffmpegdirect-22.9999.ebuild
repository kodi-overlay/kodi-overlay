# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit kodi-addon

DESCRIPTION="Kodi's FFMpeg Direct Inputstream addon"
HOMEPAGE="https://github.com/xbmc/inputstream.ffmpegdirect"

LICENSE="GPL-2"
SLOT="0"

COMMON_DEPEND="
	media-video/ffmpeg:=[encode(+),xml,zlib]
"
RDEPEND="
	${COMMON_DEPEND}
"
DEPEND="
	${COMMON_DEPEND}
	app-arch/bzip2
	virtual/zlib:=
"
BDEPEND="
	virtual/pkgconfig
"
