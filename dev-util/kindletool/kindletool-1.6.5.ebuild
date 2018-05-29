# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit vcs-snapshot

MY_PN="KindleTool"

DESCRIPTION="Tool for creating/extracting Kindle updates and more"
HOMEPAGE="https://github.com/NiLuJe/KindleTool/"
SRC_URI="https://github.com/NiLuJe/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm64 arm x86 x64-macos x86-macos x86-winnt"
IUSE="debug"

RDEPEND=""
DEPEND="${RDEPEND}
	dev-libs/nettle[gmp]
	app-arch/libarchive[zlib]"

DOCS=( "README.md" )

RESTRICT="mirror"

src_compile() {
	if use debug; then
		emake DEBUG="true"
	else
		emake
	fi
}
