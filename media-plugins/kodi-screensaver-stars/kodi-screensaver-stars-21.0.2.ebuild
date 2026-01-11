# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit kodi-addon

DESCRIPTION="Stars screensaver for Kodi"
HOMEPAGE="https://github.com/xbmc/screensaver.stars"

LICENSE="GPL-2+"
SLOT="0"

KEYWORDS="~amd64 ~x86"

RDEPEND="
	media-libs/libglvnd
"
DEPEND="
	${RDEPEND}
"
