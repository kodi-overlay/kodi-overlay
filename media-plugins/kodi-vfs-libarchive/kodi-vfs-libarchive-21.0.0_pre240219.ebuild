# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KODI_ADDON_TAG="a5443a3896b9638018e69d1e4430a7524ac20ffc"
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Libarchive VFS add-on for Kodi"
HOMEPAGE="https://github.com/xbmc/vfs.libarchive"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	app-arch/libarchive:=[bzip2,lz4,lzma,lzo,zlib(+)]
"
DEPEND="
	${RDEPEND}
	app-arch/xz-utils
	app-arch/bzip2
	sys-libs/zlib
	app-arch/lz4
	dev-libs/lzo:2
	dev-libs/openssl
"
