# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="953947d07fdf69967e2dc64b289631c57c79e800"

inherit kodi-addon

DESCRIPTION="BioGenesis screensaver for Kodi"
HOMEPAGE="https://github.com/xbmc/screensaver.biogenesis"
SRC_URI="
	https://github.com/xbmc/screensaver.biogenesis/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/screensaver.biogenesis-${COMMIT_ID}"

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
