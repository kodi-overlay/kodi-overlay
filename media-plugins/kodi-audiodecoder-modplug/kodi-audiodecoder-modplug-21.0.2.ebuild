# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KEYWORDS="~amd64 ~arm64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Modplug decoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audiodecoder.modplug"

LICENSE="GPL-2+"
SLOT="0"

RDEPEND="
	>=media-libs/libmodplug-0.8.9.1
"
DEPEND="
	${RDEPEND}
"

pkg_postinst() {
	if [[ -n "${REPLACING_VERSIONS}" ]]; then
		elog "This addon has been deprecated and it is recomended to use"
		elog "media-plugins/kodi-audiodecoder-openmpt instead of this."
	fi
}
