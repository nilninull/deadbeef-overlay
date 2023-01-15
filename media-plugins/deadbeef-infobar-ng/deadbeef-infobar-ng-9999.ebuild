# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

DEADBEEF_GUI="yes"

inherit deadbeef-plugins git-r3

DESCRIPTION="DeaDBeeF infobar plugin that shows lyrics and artist's biography"
HOMEPAGE="https://github.com/loskutov/deadbeef-infobar-ng"
EGIT_REPO_URI="https://github.com/loskutov/deadbeef-infobar-ng.git"

LICENSE="GPL-2"
KEYWORDS=""

RDEPEND+=" dev-libs/libxml2:2
	x11-libs/gdk-pixbuf:2[jpeg]
	media-sound/deadbeef:0[curl]"

DEPEND="${RDEPEND}"

src_compile() {
	use gtk2 && emake gtk2
	use gtk3 && emake gtk3
}
