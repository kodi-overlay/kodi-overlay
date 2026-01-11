# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit ffmpeg-compat kodi-addon

DESCRIPTION="Kodi's FFMpeg Direct Inputstream addon"
HOMEPAGE="https://github.com/xbmc/inputstream.ffmpegdirect"

LICENSE="GPL-2"
SLOT="0"

COMMON_DEPEND="
	media-video/ffmpeg-compat:6=[encode(+),xml,zlib]
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

src_configure() {
	ffmpeg_compat_setup 6
	ffmpeg_compat_add_flags

	kodi-addon_src_configure
}
