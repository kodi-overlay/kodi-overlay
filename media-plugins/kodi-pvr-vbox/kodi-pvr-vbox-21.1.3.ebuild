# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"

inherit kodi-addon

DESCRIPTION="Kodi's VBox Home TV Gateway PVR client addon"
HOMEPAGE="https://github.com/kodi-pvr/pvr.vbox"
SRC_URI="
	https://github.com/kodi-pvr/pvr.vbox/archive/${PV}-${CODENAME}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/pvr.vbox-${PV}-${CODENAME}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
	dev-libs/tinyxml2
"
DEPEND="
	${RDEPEND}
"

src_prepare() {
	[ -d depends ] && rm -rf depends || die
	cmake_src_prepare
}
