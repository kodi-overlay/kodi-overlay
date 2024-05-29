# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"

inherit kodi-addon

DESCRIPTION="Demo PVR for Kodi"
HOMEPAGE="https://github.com/kodi-pvr/pvr.demo"
SRC_URI="
	https://github.com/kodi-pvr/${KODI_ADDON_PN}/archive/${PV}-${CODENAME}.tar.gz
		-> ${P}.tar.gz
"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-libs/tinyxml2:=
"
DEPEND="
	${RDEPEND}
"
