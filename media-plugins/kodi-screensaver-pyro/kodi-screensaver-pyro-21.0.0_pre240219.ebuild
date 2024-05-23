# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="b0d14d3f8cfe7d0c71ce8df8a6b8d6f121b42908"

inherit kodi-addon

DESCRIPTION="Pyro screensaver for Kodi"
HOMEPAGE="https://github.com/xbmc/screensaver.pyro"
SRC_URI="
	https://github.com/xbmc/screensaver.pyro/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/screensaver.pyro-${COMMIT_ID}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	media-libs/libglvnd
	=media-tv/kodi-21*
"
DEPEND="
	${RDEPEND}
"
