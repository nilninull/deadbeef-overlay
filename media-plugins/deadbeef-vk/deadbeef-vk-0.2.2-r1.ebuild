# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

DEADBEEF_GUI="yes"

inherit cmake deadbeef-plugins

DESCRIPTION="DeaDBeeF plugin for listening music from vkontakte.com"
HOMEPAGE="https://github.com/scorpp/db-vk"
SRC_URI="https://github.com/scorpp/db-vk/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"

RDEPEND+=" dev-libs/json-glib:0
	media-sound/deadbeef:0[curl]"

DEPEND="${RDEPEND}"

S="${WORKDIR}/db-vk-${PV}"

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
