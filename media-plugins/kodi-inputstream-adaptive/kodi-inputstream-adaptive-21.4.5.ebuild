# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
BENTO4_VERSION="1.6.0-641-Omega" # TODO: unbundle

inherit kodi-addon

DESCRIPTION="Kodi's Adaptive inputstream addon"
HOMEPAGE="https://github.com/xbmc/inputstream.adaptive.git"
SRC_URI="
	https://github.com/xbmc/inputstream.adaptive/archive/${PV}-${CODENAME}.tar.gz
		-> ${P}.tar.gz
	https://github.com/xbmc/Bento4/archive/${BENTO4_VERSION}.tar.gz
		-> bento4-${BENTO4_VERSION}.tar.gz
"
S="${WORKDIR}/inputstream.adaptive-${PV}-${CODENAME}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RESTRICT="!test? ( test )"

COMMON_DEPEND="
	dev-libs/pugixml
	=media-tv/kodi-21*
"
RDEPEND="
	${COMMON_DEPEND}
"
DEPEND="
	${COMMON_DEPEND}
	dev-libs/rapidjson
	test? ( dev-cpp/gtest )
"

src_configure() {
	local mycmakeargs=(
		-DBUILD_TESTING=$(usex test)
		-DENABLE_INTERNAL_BENTO4=ON
		-DBENTO4_URL="${DISTDIR}/bento4-${BENTO4_VERSION}.tar.gz"
		-DCMAKE_INSTALL_LIBDIR="${EPREFIX}/usr/$(get_libdir)/kodi"
		-Wno-dev
	)
	cmake_src_configure
}
