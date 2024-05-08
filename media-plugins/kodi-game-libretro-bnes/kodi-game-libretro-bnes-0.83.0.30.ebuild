# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Nexus"
BNES_COMMIT_ID="8e26e89a93bef8eb8992d1921b539dce1792660a"

inherit kodi-addon toolchain-funcs

DESCRIPTION="bNES GameClient for Kodi"
HOMEPAGE="https://github.com/kodi-game/game.libretro.bnes"
SRC_URI="
	https://github.com/kodi-game/game.libretro.bnes/archive/${PV}-${CODENAME}.tar.gz
		-> ${P}.tar.gz
	https://github.com/libretro/bnes-libretro/archive/${BNES_COMMIT_ID}.tar.gz
		-> bnes-${BNES_COMMIT_ID}.tar.gz
"

S="${WORKDIR}/game.libretro.bnes-${PV}-${CODENAME}"

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

	sed -i '/find_library/d' CMakeLists.txt
	sed -i \
		's#${BNES_LIB}#"'"${WORKDIR}"/bnes-libretro-${BNES_COMMIT_ID}'/bnes_libretro.so"#1' \
		CMakeLists.txt || die

	cmake_src_prepare
}

src_compile() {
	emake \
		-C "${WORKDIR}"/bnes-libretro-${BNES_COMMIT_ID} \
		CC="$(tc-getCC)" \
		platform=unix \
		GIT_VERSION=

	cmake_src_compile
}
