# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
# py3.13: https://github.com/xbmc/addon-check/issues/280
PYTHON_COMPAT=( python3_12 )
inherit distutils-r1

DESCRIPTION="Check kodi addons or whole kodi repositories for errors and best practices."
HOMEPAGE="https://github.com/xbmc/addon-check"
# pypi sdist lacks test data
# ... and not tagged on git
COMMIT="b1890a17f9a71349a60b66e4dc2406d299df1e50"
SRC_URI="
	https://github.com/xbmc/addon-check/archive/${COMMIT}.tar.gz
		-> ${PN}-${COMMIT}.gh.tar.gz
"
S="${WORKDIR}/addon-check-${COMMIT}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

PROPERTIES="test_network"
RESTRICT="test"

RDEPEND="
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/pillow[${PYTHON_USEDEP}]
	dev-python/polib[${PYTHON_USEDEP}]
	dev-python/radon[${PYTHON_USEDEP}]
	>=dev-python/requests-2.25.0[${PYTHON_USEDEP}]
	>=dev-python/urllib3-1.26.0[${PYTHON_USEDEP}]
	dev-python/xmlschema[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest
