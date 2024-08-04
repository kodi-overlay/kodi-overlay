# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	CODENAME="Omega"
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="bNES GameClient for Kodi"
HOMEPAGE="https://github.com/kodi-game/game.libretro.bnes"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	games-emulation/libretro-bnes
	media-plugins/kodi-game-libretro
"
DEPEND="
	${RDEPEND}
"

QA_PREBUILT="
	usr/lib*/kodi/addons/${KODI_ADDON_PN}/${KODI_ADDON_PN}.so
"
