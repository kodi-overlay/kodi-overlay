# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit kodi-addon

DESCRIPTION="Super Audio CD ISO-Image decoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audiodecoder.sacd"

LICENSE="GPL-2+"
SLOT="0"

KEYWORDS="~amd64 ~x86"

DEPEND="
	${RDEPEND}
	media-sound/wavpack
	virtual/libiconv
"
