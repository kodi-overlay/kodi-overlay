# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
KODI_ADDON_COMMIT="9fe870e71a10a37f2d793b2261bac48b195f2705"

inherit kodi-addon

DESCRIPTION="SFTP VFS addon for Kodi"
HOMEPAGE="https://github.com/xbmc/vfs.sftp"
SRC_URI="
	https://github.com/xbmc/${KODI_ADDON_PN}/archive/${KODI_ADDON_COMMIT}.tar.gz
		-> ${P}.tar.gz
"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	net-libs/libssh:=[sftp]
"
DEPEND="
	${RDEPEND}
	dev-libs/openssl
	sys-libs/zlib
"
