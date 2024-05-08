# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Nexus"
DOSBOX_COMMIT_ID="b7b24262c282c0caef2368c87323ff8c381b3102"

inherit kodi-addon flag-o-matic

DESCRIPTION="DOSBox GameClient for Kodi"
HOMEPAGE="https://github.com/kodi-game/game.libretro.dosbox"
SRC_URI="
	https://github.com/kodi-game/game.libretro.dosbox/archive/${PV}-${CODENAME}.tar.gz
		-> ${P}.tar.gz
	https://github.com/libretro/dosbox-libretro/archive/${DOSBOX_COMMIT_ID}.tar.gz
		-> dosbox-${DOSBOX_COMMIT_ID}.tar.gz
"

S="${WORKDIR}/game.libretro.dosbox-${PV}-${CODENAME}"

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
		's#${DOSBOX_LIB}#"'"${WORKDIR}"/dosbox-libretro-${DOSBOX_COMMIT_ID}'/dosbox_libretro.so"#1' \
		CMakeLists.txt || die

	cmake_src_prepare
}

src_compile() {
	append-cxxflags "-std=gnu++11"

	emake \
		-f Makefile.libretro \
		-C "${WORKDIR}"/dosbox-libretro-${DOSBOX_COMMIT_ID} \
		platform=unix \
		GIT_VERSION=

	cmake_src_compile
}
