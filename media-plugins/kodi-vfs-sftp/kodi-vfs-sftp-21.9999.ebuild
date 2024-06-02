# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	CODENAME="Omega"
	KODI_ADDON_TAG="9fe870e71a10a37f2d793b2261bac48b195f2705"
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="SFTP VFS addon for Kodi"
HOMEPAGE="https://github.com/xbmc/vfs.sftp"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	net-libs/libssh:=[sftp]
"
DEPEND="
	${RDEPEND}
	dev-libs/openssl
	sys-libs/zlib
"
