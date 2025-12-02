# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Libretro compatibility layer for the Kodi Game API"
HOMEPAGE="https://github.com/xbmc/peripheral.joystick"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	dev-libs/tinyxml2:=
	virtual/libudev:=
"
DEPEND="
	${RDEPEND}
"
