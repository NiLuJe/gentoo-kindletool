# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI="5"

inherit base git-2

MY_PN="KindleTool"

DESCRIPTION="Tool for creating/extracting Kindle updates and more"
HOMEPAGE="https://github.com/NiLuJe/KindleTool/"
SRC_URI=""

EGIT_REPO_URI="https://github.com/NiLuJe/${MY_PN}.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86 ~x64-macos ~x86-macos ~x86-winnt"
IUSE="debug"

RDEPEND=""
DEPEND="${RDEPEND}
	dev-libs/nettle[gmp]
	app-arch/libarchive[zlib]"

DOCS=( "README.md" )

S="${WORKDIR}/${MY_PN}"

src_compile() {
	if use debug; then
		emake DEBUG="true"
	else
		emake
	fi
}
