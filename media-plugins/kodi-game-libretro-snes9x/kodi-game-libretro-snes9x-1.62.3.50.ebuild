# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Nexus"

inherit kodi-addon

DESCRIPTION="Snes9x GameClient for Kodi"
HOMEPAGE="https://github.com/kodi-game/game.libretro.snes9x"
SRC_URI="
	https://github.com/kodi-game/game.libretro.snes9x/archive/${PV}-${CODENAME}.tar.gz
		-> ${P}.tar.gz
"

S="${WORKDIR}/game.libretro.snes9x-${PV}-${CODENAME}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	media-plugins/kodi-game-libretro
	=media-tv/kodi-21*
	|| (
		games-emulation/libretro-snes9x
		games-emulation/snes9x[libretro]
	)
"
DEPEND="
	${RDEPEND}
"
