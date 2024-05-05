# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="7be9cf4d985c277f3a059f64873d81b24e6edd70"

inherit kodi-addon

DESCRIPTION="RAW image decoder for Kodi"
HOMEPAGE="https://github.com/xbmc/imagedecoder.raw"
SRC_URI="
	https://github.com/xbmc/imagedecoder.raw/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/imagedecoder.raw-${COMMIT_ID}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
"
DEPEND="
	${RDEPEND}
	media-libs/libjpeg-turbo
	media-libs/libraw[jpeg,lcms]
	media-libs/lcms
"

src_prepare() {
	[ -d depends ] && rm -rf depends || die
	cmake_src_prepare
}
