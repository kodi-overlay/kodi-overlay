# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
KODI_ADDON_COMMIT="7be9cf4d985c277f3a059f64873d81b24e6edd70"

inherit kodi-addon

DESCRIPTION="RAW image decoder for Kodi"
HOMEPAGE="https://github.com/xbmc/imagedecoder.raw"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	media-libs/libraw:=[jpeg,lcms]
"
DEPEND="
	${RDEPEND}
	media-libs/libjpeg-turbo
	media-libs/lcms
"
