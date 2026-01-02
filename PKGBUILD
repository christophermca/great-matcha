# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: Your Name <mca.christopher@gmail.com>
pkgname=great-matcha
pkgver=1.0.0
pkgrel=1
epoch=
pkgdesc="Systemd units checks if dayNight for location. Updates alacritty theme"
arch=('any')
source=("https://github.com/christophermca/great-matcha")
license=('GPL')
groups=()
depends=('redshift' 'awk' 'bash' 'dbus-monitor')
makedepends=()
checkdepends=()
optdepends=()
provides=()
conflicts=()
replaces=()
backup=()
options=()
noextract=()
sha256sums=()
validpgpkeys=()

prepare() {
	cd "$pkgname-$pkgver"
	patch -p1 -i "$srcdir/$pkgname-$pkgver.patch"
}

build() {
	cd "$pkgname-$pkgver"
	./configure --prefix=/usr
	make
}

check() {
	cd "$pkgname-$pkgver"
	make -k check
}

package() {
	cd "$pkgname-$pkgver"
	make DESTDIR="$pkgdir/" install
}
