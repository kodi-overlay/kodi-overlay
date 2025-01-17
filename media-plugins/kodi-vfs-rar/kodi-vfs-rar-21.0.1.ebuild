# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="RAR VFS addon for Kodi"
HOMEPAGE="https://github.com/xbmc/vfs.rar"

LICENSE="GPL-2+ unRAR"
SLOT="0"

RDEPEND="
	dev-libs/tinyxml
"
DEPEND="
	${RDEPEND}
"
