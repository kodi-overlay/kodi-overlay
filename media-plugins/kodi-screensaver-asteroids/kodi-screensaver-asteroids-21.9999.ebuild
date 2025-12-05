# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KODI_ADDON_COMMIT="9f761cb7d5842e61da9c608c9f58067bcb986d89"
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Asteroids screensaver for Kodi"
HOMEPAGE="https://github.com/xbmc/screensaver.asteroids"

LICENSE="GPL-2+"
SLOT="0"

RDEPEND="
	media-libs/libglvnd
"
DEPEND="
	${RDEPEND}
	media-libs/glm
"
