# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	CODENAME="Omega"
	KODI_ADDON_TAG="f272aeb7aeb94e9d8bf1454e23f0232790bf0ef6"
	KEYWORDS="~amd64 ~arm64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Lame MP3 encoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audioencoder.lame"

LICENSE="GPL-2+"
SLOT="0"

RDEPEND="
	>=media-sound/lame-3.100
"
DEPEND="
	${RDEPEND}
	virtual/libiconv
"
