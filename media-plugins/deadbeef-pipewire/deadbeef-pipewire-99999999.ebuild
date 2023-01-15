# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit meson deadbeef-plugins git-r3

DESCRIPTION="DeaDBeeF pipewire output plugin"
HOMEPAGE="https://github.com/saivert/ddb_output_pw"
EGIT_REPO_URI="https://github.com/saivert/ddb_output_pw.git"

LICENSE="MIT"
KEYWORDS=""

RDEPEND+="media-video/pipewire"

DEPEND="${RDEPEND}"
