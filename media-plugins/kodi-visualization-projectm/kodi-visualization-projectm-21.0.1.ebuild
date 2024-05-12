# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"

inherit kodi-addon

DESCRIPTION="ProjectM visualizer for Kodi"
HOMEPAGE="https://github.com/xbmc/visualization.projectm"
SRC_URI="
	https://github.com/xbmc/visualization.projectm/archive/${PV}-${CODENAME}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/visualization.projectm-${PV}-${CODENAME}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
"
DEPEND="
	${RDEPEND}
	media-libs/libprojectm:0/2
	virtual/opengl
"

QA_PREBUILT="
	usr/share/kodi/addons/visualization.projectm/resources/projectM/presets/*
"

src_configure() {
	local mycmakeargs=(
		-Wno-dev
	)

	kodi-addon_src_configure
}
