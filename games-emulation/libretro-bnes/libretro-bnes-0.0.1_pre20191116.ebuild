# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

LIBRETRO_COMMIT_SHA="8e26e89a93bef8eb8992d1921b539dce1792660a"
LIBRETRO_REPO_NAME="libretro/bnes-libretro"
inherit libretro-core

DESCRIPTION="bNES libretro port"
LICENSE="GPL-3+"
SLOT="0"

KEYWORDS="~amd64 ~x86"

RESTRICT="test" # no tests, default phase leads to failure if unrestricted
