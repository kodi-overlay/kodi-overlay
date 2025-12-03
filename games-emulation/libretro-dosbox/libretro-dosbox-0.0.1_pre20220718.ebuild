# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

LIBRETRO_REPO_NAME="libretro/dosbox-libretro"
LIBRETRO_COMMIT_SHA="b7b24262c282c0caef2368c87323ff8c381b3102"
inherit flag-o-matic libretro-core

DESCRIPTION="DOSBox libretro port"
LICENSE="GPL-2+"
SLOT="0"

KEYWORDS="~amd64 ~x86"

src_prepare() {
	# violates strict aliasing rules
	filter-lto
	append-flags -fno-strict-aliasing

	libretro-core_src_prepare
}

src_compile() {
	append-cxxflags -std=gnu++11
	default
}
