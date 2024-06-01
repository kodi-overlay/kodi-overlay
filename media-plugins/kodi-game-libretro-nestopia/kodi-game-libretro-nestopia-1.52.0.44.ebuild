# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
KODI_ADDON_TAG="${PV}-Nexus"

inherit kodi-addon

DESCRIPTION="Nestopia GameClient for Kodi"
HOMEPAGE="https://github.com/kodi-game/game.libretro.nestopia"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	games-emulation/libretro-nestopia
	media-plugins/kodi-game-libretro
"
DEPEND="
	${RDEPEND}
"

QA_PREBUILT="
	usr/lib*/kodi/addons/${KODI_ADDON_PN}/${KODI_ADDON_PN}.so
"
