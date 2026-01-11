# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit kodi-addon

DESCRIPTION="Kodi's Pluto.tv client addon"
HOMEPAGE="https://github.com/kodi-pvr/pvr.plutotv"

LICENSE="GPL-2"
SLOT="0"

KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-libs/rapidjson
"
DEPEND="
	${RDEPEND}
"
