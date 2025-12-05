# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

KODI_GH_ORG="janbar"
inherit kodi-addon

DESCRIPTION="MythTV PVR for Kodi"
HOMEPAGE="https://github.com/janbar/pvr.mythtv"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	virtual/zlib:=
"
DEPEND="
	${RDEPEND}
"
