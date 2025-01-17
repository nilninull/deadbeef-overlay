# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

DESCRIPTION="Meta package for DeaDBeeF player third party plugins"
HOMEPAGE="http://deadbeef.sourceforge.net"
SRC_URI=""

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="archive bookmark-manager bs2b decast filebrowser gnome-mmkeys infobar infobar-ng
	jack librarybrowser mpris musical-spectrum opus pipewire quick-search
	replaygain-control soxr spectrogram statusnotifier stereo-widener
	vk vu-meter waveform-seekbar"

PDEPEND="archive? ( media-plugins/deadbeef-archive-reader:0 )
	bookmark-manager? ( media-plugins/deadbeef-bookmark-manager:0 )
	bs2b? ( media-plugins/deadbeef-bs2b:0 )
	decast? ( media-plugins/deadbeef-decast:0 )
	filebrowser? ( media-plugins/deadbeef-fb:0 )
	gnome-mmkeys? ( media-plugins/deadbeef-gnome-mmkeys:0 )
	infobar? ( media-plugins/deadbeef-infobar:0 )
	infobar-ng? ( media-plugins/deadbeef-infobar-ng:0 )
	jack? ( media-plugins/deadbeef-jack:0 )
	pipewire? ( || ( media-sound/deadbeef[pipewire] media-plugins/deadbeef-pipewire ) )
	librarybrowser? ( media-plugins/deadbeef-librarybrowser:0 )
	mpris? ( media-plugins/deadbeef-mpris:0 )
	musical-spectrum? ( media-plugins/deadbeef-musical-spectrum:0 )
	opus? ( media-plugins/deadbeef-opus:0 )
	quick-search? ( media-plugins/deadbeef-quick-search:0 )
	replaygain-control? ( media-plugins/deadbeef-replaygain-control:0 )
	soxr? ( media-plugins/deadbeef-soxr:0 )
	spectrogram? ( media-plugins/deadbeef-spectrogram:0 )
	statusnotifier? ( media-plugins/deadbeef-statusnotifier:0 )
	stereo-widener? ( media-plugins/deadbeef-stereo-widener:0 )
	vk? ( media-plugins/deadbeef-vk:0 )
	vu-meter? ( media-plugins/deadbeef-vu-meter:0 )
	waveform-seekbar? ( media-plugins/deadbeef-waveform-seekbar:0 )"
