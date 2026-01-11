# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

KODI_GH_ORG="janbar"
KODI_ADDON_COMMIT="79689c27638da4255ff999b86900daef9386b0d3"

inherit kodi-addon

DESCRIPTION="MythTV PVR for Kodi"
HOMEPAGE="https://github.com/janbar/pvr.mythtv"

LICENSE="GPL-2"
SLOT="0"

# TODO: uncomment when 22 with keywords available
#KEYWORDS="~amd64 ~x86"

RDEPEND="
	virtual/zlib:=
"
DEPEND="
	${RDEPEND}
"
