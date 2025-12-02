# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Kodi's IPTVSimple client addon"
HOMEPAGE="https://github.com/kodi-pvr/pvr.iptvsimple"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	app-arch/xz-utils
	dev-libs/pugixml
	virtual/zlib:=
"
DEPEND="
	${RDEPEND}
"
