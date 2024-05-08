# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Nexus"
LIBRETRO_2048_COMMIT_ID="331c1de588ed8f8c370dcbc488e5434a3c09f0f2"

inherit kodi-addon toolchain-funcs

DESCRIPTION="2048 for Kodi"
HOMEPAGE="https://github.com/kodi-game/game.libretro.2048"
SRC_URI="
	https://github.com/kodi-game/game.libretro.2048/archive/${PV}-${CODENAME}.tar.gz
		-> ${P}.tar.gz
	https://github.com/libretro/libretro-2048/archive/${LIBRETRO_2048_COMMIT_ID}.tar.gz
		-> libretro-2048-${LIBRETRO_2048_COMMIT_ID}.tar.gz
"

S="${WORKDIR}/game.libretro.2048-${PV}-${CODENAME}"

LICENSE="GPL-2"
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
		-e 's#${2048_LIB}#"'"${WORKDIR}"/libretro-2048-${LIBRETRO_2048_COMMIT_ID}'/2048_libretro.so"#1' \
		CMakeLists.txt || die

	cmake_src_prepare
}

src_compile() {
	emake \
		-C "${WORKDIR}"/libretro-2048-${LIBRETRO_2048_COMMIT_ID} \
		-f Makefile.libretro \
		CC="$(tc-getCC)" \
		platform=unix \
		GIT_VERSION=

	cmake_src_compile
}
