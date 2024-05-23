# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"

inherit kodi-addon

DESCRIPTION="Zattoo PVR addon for Kodi"
HOMEPAGE="https://github.com/rbuehlma/pvr.zattoo"
SRC_URI="
	https://github.com/rbuehlma/pvr.zattoo/archive/${PV}-${CODENAME}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/pvr.zattoo-${PV}-${CODENAME}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
	dev-libs/rapidjson
	dev-db/sqlite:3
"
DEPEND="
	${RDEPEND}
	dev-libs/tinyxml2
"
