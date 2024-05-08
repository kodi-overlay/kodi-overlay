# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Nexus"
SNES9X_COMMIT_ID="ec4ebfc8f3819a9522fcb8e53eed985090017b1b"

inherit kodi-addon

DESCRIPTION="Snes9x GameClient for Kodi"
HOMEPAGE="https://github.com/kodi-game/game.libretro.snes9x"
SRC_URI="
	https://github.com/kodi-game/game.libretro.snes9x/archive/${PV}-${CODENAME}.tar.gz
		-> ${P}.tar.gz
	https://github.com/libretro/snes9x/archive/${SNES9X_COMMIT_ID}.tar.gz
		-> snes9x-${SNES9X_COMMIT_ID}.tar.gz
"

S="${WORKDIR}/game.libretro.snes9x-${PV}-${CODENAME}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
	media-plugins/kodi-game-libretro
"
DEPEND="
	${RDEPEND}
"

src_prepare() {
	[ -d depends ] && rm -rf depends || die

	sed -i \
		-e '/find_library/d' \
		-e 's#${SNES9X_LIB}#"'"${WORKDIR}"/snes9x-${SNES9X_COMMIT_ID}'/libretro/snes9x_libretro.so"#1' \
		CMakeLists.txt || die

	cmake_src_prepare
}

src_compile() {
	emake \
		-C "${WORKDIR}"/snes9x-${SNES9X_COMMIT_ID}/libretro \
		platform=unix \
		GIT_VERSION=

	cmake_src_compile
}
