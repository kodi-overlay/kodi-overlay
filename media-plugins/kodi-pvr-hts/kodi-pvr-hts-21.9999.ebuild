# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit kodi-addon

DESCRIPTION="Tvheadend Live TV and Radio PVR client addon for Kodi"
HOMEPAGE="https://github.com/kodi-pvr/pvr.hts"

LICENSE="GPL-2"
SLOT="0"

PATCHES=(
	"${FILESDIR}"/${PN}-21.2.6-gcc15.patch
)
