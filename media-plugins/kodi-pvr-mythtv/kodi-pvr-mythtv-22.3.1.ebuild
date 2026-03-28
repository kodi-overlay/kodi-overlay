# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

KODI_GH_ORG="janbar"
KODI_ADDON_COMMIT="883f91737d4e75cf0aa5cdb22970190dee05e722"

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
