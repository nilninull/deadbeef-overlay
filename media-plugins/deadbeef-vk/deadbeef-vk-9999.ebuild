# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

DEADBEEF_GUI="yes"

inherit cmake deadbeef-plugins git-r3

DESCRIPTION="DeaDBeeF plugin for listening music from vkontakte.com"
HOMEPAGE="https://github.com/scorpp/db-vk"
EGIT_REPO_URI="https://github.com/scorpp/db-vk.git"

LICENSE="GPL-2"
KEYWORDS=""

RDEPEND+=" dev-libs/json-glib:0
	media-sound/deadbeef:0[curl]"

DEPEND="${RDEPEND}"

S="${WORKDIR}/deadbeef-vk-${PV}"

src_configure() {
	local mycmakeargs=(
		-DWITH_GTK2="$(usex gtk2)"
		-DWITH_GTK3="$(usex gtk3)"
	)
	cmake_src_configure
}

src_compile() {
	cmake_src_compile
}
