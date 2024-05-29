# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"

inherit kodi-addon

DESCRIPTION="Zattoo PVR addon for Kodi"
HOMEPAGE="https://github.com/rbuehlma/pvr.zattoo"
SRC_URI="
	https://github.com/rbuehlma/${KODI_ADDON_PN}/archive/${PV}-${CODENAME}.tar.gz
		-> ${P}.tar.gz
"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-libs/rapidjson
	dev-db/sqlite:3
"
DEPEND="
	${RDEPEND}
	dev-libs/tinyxml2
"
