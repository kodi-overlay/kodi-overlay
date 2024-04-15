# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="9fe870e71a10a37f2d793b2261bac48b195f2705"

inherit kodi-addon

DESCRIPTION="SFTP VFS addon for Kodi"
HOMEPAGE="https://github.com/xbmc/vfs.sftp"
SRC_URI="
	https://github.com/xbmc/vfs.sftp/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/vfs.sftp-${COMMIT_ID}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
	net-libs/libssh[sftp]
"
DEPEND="${RDEPEND}"

src_prepare() {
	[ -d depends ] && rm -rf depends || die
	cmake_src_prepare
}
