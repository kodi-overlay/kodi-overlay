# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit kodi-addon

DESCRIPTION="Kodi's DVBViewer client addon"
HOMEPAGE="https://github.com/kodi-pvr/pvr.dvbviewer"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	dev-libs/tinyxml
"
DEPEND="
	${RDEPEND}
"
