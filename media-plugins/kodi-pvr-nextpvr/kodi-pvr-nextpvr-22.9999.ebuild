# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit kodi-addon

DESCRIPTION="Kodi's NextPVR client addon"
HOMEPAGE="https://github.com/kodi-pvr/pvr.nextpvr"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	dev-libs/tinyxml2:=
	virtual/zlib:=
"
DEPEND="
	${RDEPEND}
"
