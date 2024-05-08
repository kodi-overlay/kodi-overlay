# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Nexus"
NESTOPIA_COMMIT_ID="3dcbec4682e079312d6943e1357487645ec608c7"

inherit kodi-addon

DESCRIPTION="Nestopia GameClient for Kodi"
HOMEPAGE="https://github.com/kodi-game/game.libretro.nestopia"
SRC_URI="
	https://github.com/kodi-game/game.libretro.nestopia/archive/${PV}-${CODENAME}.tar.gz
		-> ${P}.tar.gz
	https://github.com/libretro/nestopia/archive/${NESTOPIA_COMMIT_ID}.tar.gz
		-> nestopia-${NESTOPIA_COMMIT_ID}.tar.gz
"

S="${WORKDIR}/game.libretro.nestopia-${PV}-${CODENAME}"

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
		's#${NESTOPIA_LIB}#"'"${WORKDIR}"/nestopia-${NESTOPIA_COMMIT_ID}'/libretro/nestopia_libretro.so"#1' \
		CMakeLists.txt || die

	cmake_src_prepare
}

src_compile() {
	emake \
		-C "${WORKDIR}"/nestopia-${NESTOPIA_COMMIT_ID}/libretro \
		platform=unix \
		GIT_VERSION=

	cmake_src_compile
}
