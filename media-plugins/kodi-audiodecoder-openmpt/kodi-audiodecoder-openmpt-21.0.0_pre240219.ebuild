# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
KODI_ADDON_TAG="f7cb103de96404fe26938f93cd277a066f77cb49"

inherit kodi-addon

DESCRIPTION="OpenMPT decoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audiodecoder.openmpt"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~x86"

RDEPEND="
	media-libs/libopenmpt[zlib]
"
DEPEND="
	${RDEPEND}
	sys-libs/zlib
"
