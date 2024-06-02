# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	CODENAME="Omega"
	KEYWORDS="~amd64 ~x86"
fi

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
	sys-libs/zlib
"
BDEPEND="
	virtual/pkgconfig
"
