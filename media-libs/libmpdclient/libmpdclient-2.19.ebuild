EAPI=7

inherit meson

DESCRIPTION="A stable, documented, asynchronous API library for interfacing MPD in the C, C++ & Objective C languages."
HOMEPAGE="https://www.musicpd.org"
SRC_URI="https://www.musicpd.org/download/${PN}/${PV%.*}/${P}.tar.xz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE="dynamic"

src_configure() {
	# Static library, no documentation, no testing.
	local emesonargs=(
	    -Ddefault_library=$(usex dynamic both static)
		-Ddocumentation=false
        -Dtest=false
	)
	meson_src_configure
}

src_install() {
	meson_src_install
}
