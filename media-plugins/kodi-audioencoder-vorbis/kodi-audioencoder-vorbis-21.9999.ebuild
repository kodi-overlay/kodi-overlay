# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

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
