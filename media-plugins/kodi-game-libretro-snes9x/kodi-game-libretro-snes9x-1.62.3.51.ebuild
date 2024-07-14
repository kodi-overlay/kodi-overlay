# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	CODENAME="Nexus"
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Snes9x GameClient for Kodi"
HOMEPAGE="https://github.com/kodi-game/game.libretro.snes9x"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	media-plugins/kodi-game-libretro
	sys-libs/zlib
	|| (
		games-emulation/libretro-snes9x
		games-emulation/snes9x[libretro]
	)
"
DEPEND="
	${RDEPEND}
"

QA_PREBUILT="
	usr/lib*/kodi/addons/${KODI_ADDON_PN}/${KODI_ADDON_PN}.so
"
