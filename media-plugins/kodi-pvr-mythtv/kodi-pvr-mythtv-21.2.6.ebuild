# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

KODI_GH_ORG="janbar"
KODI_ADDON_COMMIT="b2d9e4fd8f3cb8adf1f39cd6aff4b0b06a1c19c6"

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
