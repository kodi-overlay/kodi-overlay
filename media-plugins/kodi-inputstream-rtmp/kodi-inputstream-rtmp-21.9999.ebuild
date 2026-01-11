# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit kodi-addon

DESCRIPTION="Kodi's RTMP inputstream addon"
HOMEPAGE="https://github.com/xbmc/inputstream.rtmp"

LICENSE="GPL-2+"
SLOT="0"

RDEPEND="
	media-video/rtmpdump[ssl]
"
DEPEND="
	${RDEPEND}
	dev-libs/openssl
	virtual/zlib:=
"
BDEPEND="
	virtual/pkgconfig
"
