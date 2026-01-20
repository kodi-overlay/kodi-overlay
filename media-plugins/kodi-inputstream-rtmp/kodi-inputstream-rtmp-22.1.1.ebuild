# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit kodi-addon

DESCRIPTION="Kodi's RTMP inputstream addon"
HOMEPAGE="https://github.com/xbmc/inputstream.rtmp"

LICENSE="GPL-2+"
SLOT="0"

# TODO: uncomment when 22 with keywords available
#KEYWORDS="~amd64 ~x86"

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
