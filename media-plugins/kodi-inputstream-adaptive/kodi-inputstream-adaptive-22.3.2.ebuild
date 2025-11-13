# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KEYWORDS="~amd64 ~x86"
else
	inherit git-r3
fi
BENTO4_VERSION="1.6.0-641-3-Omega" # TODO: unbundle

inherit kodi-addon

DESCRIPTION="Kodi's Adaptive inputstream addon"
HOMEPAGE="https://github.com/xbmc/inputstream.adaptive"
SRC_URI+="
	https://github.com/xbmc/Bento4/archive/${BENTO4_VERSION}.tar.gz
		-> bento4-${BENTO4_VERSION}.tar.gz
"

LICENSE="GPL-2"
SLOT="0"

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

PATCHES=(
       "${FILESDIR}"/${PN}-21.5.16-gcc15.patch
)

src_unpack() {
	if [[ ! "${PV}" =~ 9999* ]]; then
		unpack ${P}.tar.gz
	else
		git-r3_src_unpack
	fi
}

src_prepare() {
	cmake_src_prepare
}

src_configure() {
	local mycmakeargs=(
		-DBUILD_TESTING=$(usex test)
		-DENABLE_INTERNAL_BENTO4=ON
		-DBENTO4_URL="${DISTDIR}/bento4-${BENTO4_VERSION}.tar.gz"
		-Wno-dev
	)
	kodi-addon_src_configure
}
