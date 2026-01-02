# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: Your Name <mca.christopher@gmail.com>
pkgname=great-matcha
pkgver=1.0.0
pkgrel=1
pkgdesc="Systemd units checks if dayNight for location. Updates alacritty theme"
arch=('x86_64')
url="https://github.com/christophermca/great-matcha"
license=('GPL')
depends=('dbus-monitor' 'redshift' 'awk' 'bash' 'dbus-monitor')
makedepends=('git')
source=("https://github.com/christophermca/great-matcha")
md5sums=('SKIP')

pkgver() {
  cd "$pkgname"
  printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short=7 HEAD)"
}

package() {
  cd "$pkgname"
}
