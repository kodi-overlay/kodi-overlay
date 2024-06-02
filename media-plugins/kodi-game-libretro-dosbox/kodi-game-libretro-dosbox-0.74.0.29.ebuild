# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	CODENAME="Omega"
	KODI_ADDON_TAG="${PV}-Nexus"
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="DOSBox GameClient for Kodi"
HOMEPAGE="https://github.com/kodi-game/game.libretro.dosbox"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	games-emulation/libretro-dosbox
	media-plugins/kodi-game-libretro
"
DEPEND="
	${RDEPEND}
"

QA_PREBUILT="
	usr/lib*/kodi/addons/${KODI_ADDON_PN}/${KODI_ADDON_PN}.so
"
