# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	CODENAME="Omega"
	KEYWORDS="~amd64"
fi
KODI_GH_ORG="rbuehlma"

inherit kodi-addon

DESCRIPTION="Zattoo PVR addon for Kodi"
HOMEPAGE="https://github.com/rbuehlma/pvr.zattoo"

LICENSE="GPL-2+"
SLOT="0"

RDEPEND="
	dev-libs/rapidjson
	dev-db/sqlite:3
"
DEPEND="
	${RDEPEND}
	dev-libs/tinyxml2
"
