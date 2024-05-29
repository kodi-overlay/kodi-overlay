# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"

inherit kodi-addon

DESCRIPTION="Kodi's VuPlus client addon"
HOMEPAGE="https://github.com/kodi-pvr/pvr.vuplus"
SRC_URI="
	https://github.com/kodi-pvr/${KODI_ADDON_PN}/archive/${PV}.tar.gz
		-> ${P}.tar.gz
"

S="${WORKDIR}/${KODI_ADDON_PN}-${PV}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-cpp/nlohmann_json
	dev-libs/tinyxml
"
DEPEND="
	${RDEPEND}
"
