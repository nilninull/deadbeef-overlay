# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit deadbeef-plugins git-r3

DESCRIPTION="DeaDBeeF bs2b dsp plugin"
HOMEPAGE="https://github.com/DeaDBeeF-Player/bs2b"
EGIT_REPO_URI="https://github.com/DeaDBeeF-Player/bs2b.git"

LICENSE="MIT"
KEYWORDS=""

RDEPEND+=" media-libs/libbs2b:0"

DEPEND="${RDEPEND}"

# PATCHES=( "${FILESDIR}/${PN}.patch" )
