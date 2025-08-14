# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Kodi's Windows Media Center client addon"
HOMEPAGE="https://github.com/kodi-pvr/pvr.wmc"

LICENSE="GPL-2"
SLOT="0"

DEPEND="
	${RDEPEND}
"
