# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit kodi-addon

DESCRIPTION="Kodi's Filmon client addon"
HOMEPAGE="https://github.com/kodi-pvr/pvr.filmon"

LICENSE="GPL-2"
SLOT="0"

# TODO: uncomment when 22 with keywords available
#KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-libs/jsoncpp:=
"
DEPEND="
	${RDEPEND}
"
