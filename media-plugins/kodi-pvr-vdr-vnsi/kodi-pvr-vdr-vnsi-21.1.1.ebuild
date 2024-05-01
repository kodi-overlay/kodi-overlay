# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"

inherit kodi-addon

DESCRIPTION="Kodi PVR addon VNSI"
HOMEPAGE="https://github.com/kodi-pvr/pvr.vdr.vnsi"
SRC_URI="
	https://github.com/kodi-pvr/pvr.vdr.vnsi/archive/${PV}-${CODENAME}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/pvr.vdr.vnsi-${PV}-${CODENAME}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
	virtual/opengl
"
DEPEND="
	${RDEPEND}
"

src_prepare() {
	[ -d depends ] && rm -rf depends || die
	cmake_src_prepare
}
