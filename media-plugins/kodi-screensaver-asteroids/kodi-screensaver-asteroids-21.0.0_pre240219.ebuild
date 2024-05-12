# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="9f761cb7d5842e61da9c608c9f58067bcb986d89"

inherit kodi-addon

DESCRIPTION="Asteroids screensaver for Kodi"
HOMEPAGE="https://github.com/xbmc/screensaver.asteroids"
SRC_URI="
	https://github.com/xbmc/screensaver.asteroids/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/screensaver.asteroids-${COMMIT_ID}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
"
DEPEND="
	${RDEPEND}
	media-libs/glm
	virtual/opengl
"
