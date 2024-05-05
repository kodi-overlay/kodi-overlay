# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="532186702c49ba7fe007badc74fa6a6e9cac48fe"

inherit kodi-addon

DESCRIPTION="SPC decoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audiodecoder.snesapu"
SRC_URI="
	https://github.com/xbmc/audiodecoder.snesapu/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/audiodecoder.snesapu-${COMMIT_ID}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
"
DEPEND="
	${RDEPEND}
"
