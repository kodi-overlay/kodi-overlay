# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit kodi-addon

DESCRIPTION="ProjectM visualizer for Kodi"
HOMEPAGE="https://github.com/xbmc/visualization.projectm"

LICENSE="GPL-2+"
SLOT="0"

KEYWORDS="~amd64 ~arm64 ~x86"

RDEPEND="
	media-libs/libprojectm:0/2
	virtual/opengl
"
DEPEND="
	${RDEPEND}
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
