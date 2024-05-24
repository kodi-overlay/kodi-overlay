# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

LIBRETRO_REPO_NAME="libretro/nestopia"
LIBRETRO_COMMIT_SHA="b99ede358b2219602443e7f414eabf81e17da244"
inherit libretro-core

DESCRIPTION="Nestopia libretro port"

S="${WORKDIR}/nestopia-${LIBRETRO_COMMIT_SHA}/libretro"
LIBRETRO_CORE_LIB_FILE="${S}/${LIBRETRO_CORE_NAME}_libretro.so"
LICENSE="GPL-2+"
SLOT="0"

KEYWORDS="~amd64 ~x86"
