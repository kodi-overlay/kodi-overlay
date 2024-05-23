# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Nexus"

inherit kodi-addon

DESCRIPTION="Nestopia GameClient for Kodi"
HOMEPAGE="https://github.com/kodi-game/game.libretro.nestopia"
SRC_URI="
	https://github.com/kodi-game/game.libretro.nestopia/archive/${PV}-${CODENAME}.tar.gz
		-> ${P}.tar.gz
"

S="${WORKDIR}/game.libretro.nestopia-${PV}-${CODENAME}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	games-emulation/libretro-nestopia
	media-plugins/kodi-game-libretro
	=media-tv/kodi-21*
"
DEPEND="
	${RDEPEND}
"
