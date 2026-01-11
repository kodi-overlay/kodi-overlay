# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit kodi-addon

DESCRIPTION="OpenMPT decoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audiodecoder.openmpt"

LICENSE="GPL-2+"
SLOT="0"

RDEPEND="
	media-libs/libopenmpt[zlib]
"
DEPEND="
	${RDEPEND}
	virtual/zlib:=
"
