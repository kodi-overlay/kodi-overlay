# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
LIBRETROCOMMON_COMMIT_ID="50c15a88eb741cbe675743a282d8cc4c89421e3f"
RCHEEVOS_VERSION="9.2.0"

inherit kodi-addon

DESCRIPTION="Libretro compatibility layer for the Kodi Game API"
HOMEPAGE="https://github.com/kodi-game/game.libretro"
SRC_URI="
	https://github.com/kodi-game/game.libretro/archive/${PV}-${CODENAME}.tar.gz
		-> ${P}.tar.gz
	https://github.com/libretro/libretro-common/archive/${LIBRETROCOMMON_COMMIT_ID}.tar.gz
		-> libretro-common-${LIBRETROCOMMON_COMMIT_ID}.tar.gz
	https://github.com/RetroAchievements/rcheevos/archive/v${RCHEEVOS_VERSION}.tar.gz
		-> rcheevos-${RCHEEVOS_VERSION}.tar.gz
"
S="${WORKDIR}/game.libretro-${PV}-${CODENAME}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
"
DEPEND="
	${RDEPEND}
	dev-libs/tinyxml
"

src_unpack() {
	unpack ${P}.tar.gz
}

src_prepare() {
	for dep in windows windowsstore common/tinyxml; do
		[ -d depends/"${dep}" ] && rm -rf depends/"${dep}" || die
	done
	cmake_src_prepare
}

src_configure() {
	local mycmakeargs=(
		-DENABLE_INTERNAL_LIBRETROCOMMON=ON
		-DLIBRETROCOMMON_URL="${DISTDIR}/libretro-common-${LIBRETROCOMMON_COMMIT_ID}.tar.gz"
		-DENABLE_INTERNAL_RCHEEVOS=ON
		-DRCHEEVOS_URL="${DISTDIR}/rcheevos-${RCHEEVOS_VERSION}.tar.gz"
		-Wno-dev
	)
	kodi-addon_src_configure
}
