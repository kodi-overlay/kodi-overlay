# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
KODI_PLUGIN_NAME="inputstream.rtmp"

inherit kodi-addon

DESCRIPTION="Kodi's RTMP inputstream addon"
HOMEPAGE="https://github.com/xbmc/inputstream.rtmp"
SRC_URI="https://github.com/xbmc/${KODI_PLUGIN_NAME}/archive/${PV}-${CODENAME}.tar.gz -> ${P}.tar.gz"

S="${WORKDIR}/${KODI_PLUGIN_NAME}-${PV}-${CODENAME}"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
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
