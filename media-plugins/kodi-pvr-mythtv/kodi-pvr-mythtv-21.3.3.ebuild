# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

KODI_GH_ORG="janbar"
KODI_ADDON_COMMIT="b839724b1d566cd9b8baad72ec144e28310bd37a"

inherit kodi-addon

DESCRIPTION="MythTV PVR for Kodi"
HOMEPAGE="https://github.com/janbar/pvr.mythtv"

LICENSE="GPL-2"
SLOT="0"

KEYWORDS="~amd64 ~x86"

RDEPEND="
	virtual/zlib:=
"
DEPEND="
	${RDEPEND}
"
