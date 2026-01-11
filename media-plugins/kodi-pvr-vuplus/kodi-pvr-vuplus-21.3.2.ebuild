# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit kodi-addon

DESCRIPTION="Kodi's VuPlus client addon"
HOMEPAGE="https://github.com/kodi-pvr/pvr.vuplus"

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
