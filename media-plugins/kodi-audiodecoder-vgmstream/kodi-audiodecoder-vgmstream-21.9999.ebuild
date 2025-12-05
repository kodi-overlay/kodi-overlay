# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KODI_ADDON_TAG="56bedfc90ca600401e6dda407a5b933da0976664"
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="vgmstream decoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audiodecoder.vgmstream"

LICENSE="GPL-2"
SLOT="0"
