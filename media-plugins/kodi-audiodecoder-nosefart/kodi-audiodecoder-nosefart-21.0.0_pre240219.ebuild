# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
KODI_ADDON_TAG="92c6daeb278b02cd63fee724c96051421c9149f3"

inherit kodi-addon

DESCRIPTION="Nosefart decoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audiodecoder.nosefart"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	${RDEPEND}
"
