# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"

inherit kodi-addon

DESCRIPTION="Kodi's DVBLink client addon"
HOMEPAGE="https://github.com/kodi-pvr/pvr.dvblink"
SRC_URI="
	https://github.com/kodi-pvr/pvr.dvblink/archive/${PV}-${CODENAME}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/pvr.dvblink-${PV}-${CODENAME}"

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
