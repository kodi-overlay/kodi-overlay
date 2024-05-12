# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="92c6daeb278b02cd63fee724c96051421c9149f3"

inherit kodi-addon

DESCRIPTION="Nosefart decoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audiodecoder.nosefart"
SRC_URI="
	https://github.com/xbmc/audiodecoder.nosefart/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/audiodecoder.nosefart-${COMMIT_ID}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
"
DEPEND="
	${RDEPEND}
"
