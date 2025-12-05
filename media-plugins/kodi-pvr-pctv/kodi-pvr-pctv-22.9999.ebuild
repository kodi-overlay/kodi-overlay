# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit kodi-addon

DESCRIPTION="Kodi's PCTV client addon"
HOMEPAGE="https://github.com/kodi-pvr/pvr.pctv"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	dev-libs/jsoncpp:=
"
DEPEND="
	${RDEPEND}
"
