# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Kodi's MediaPortal TVServer client addon"
HOMEPAGE="https://github.com/kodi-pvr/pvr.mediaportal.tvserver"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	dev-libs/tinyxml
"
DEPEND="
	${RDEPEND}
"
