# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit kodi-addon

DESCRIPTION="Demo PVR for Kodi"
HOMEPAGE="https://github.com/kodi-pvr/pvr.demo"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	dev-libs/tinyxml2:=
"
DEPEND="
	${RDEPEND}
"
