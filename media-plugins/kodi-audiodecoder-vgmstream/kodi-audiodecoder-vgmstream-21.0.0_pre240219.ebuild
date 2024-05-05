# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="56bedfc90ca600401e6dda407a5b933da0976664"

inherit kodi-addon

DESCRIPTION="vgmstream decoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audiodecoder.vgmstream"
SRC_URI="
	https://github.com/xbmc/audiodecoder.vgmstream/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/audiodecoder.vgmstream-${COMMIT_ID}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
"
DEPEND="
	${RDEPEND}
"
