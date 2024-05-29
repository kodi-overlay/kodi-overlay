# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
KODI_ADDON_COMMIT="7ef138335d064aaf338b99d3595db408c73845cc"

inherit kodi-addon

DESCRIPTION="Super Audio CD ISO-Image decoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audiodecoder.sacd"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	${RDEPEND}
	media-sound/wavpack
	virtual/libiconv
"
