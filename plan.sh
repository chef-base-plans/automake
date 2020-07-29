pkg_name=automake
pkg_origin=core
pkg_version=1.16.2
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_description="\
Automake is a tool for automatically generating Makefile.in files compliant \
with the GNU Coding Standards.\
"
pkg_upstream_url="https://www.gnu.org/software/automake/"
pkg_license=("GPL-2.0-or-later")
pkg_source="http://ftp.gnu.org/gnu/${pkg_name}/${pkg_name}-${pkg_version}.tar.xz"
pkg_shasum="ccc459de3d710e066ab9e12d2f119bd164a08c9341ca24ba22c9adaa179eedd0"
pkg_deps=(
  core/perl
)
pkg_build_deps=(
  core/autoconf
  core/bison
  core/coreutils
  core/diffutils
  core/flex
  core/gcc
  core/make
)
pkg_bin_dirs=(bin)

# ----------------------------------------------------------------------------
# **NOTICE:** What follows are implementation details required for building a
# first-pass, "stage1" toolchain and environment. It is only used when running
# in a "stage1" Studio and can be safely ignored by almost everyone. Having
# said that, it performs a vital bootstrapping process and cannot be removed or
# significantly altered. Thank you!
# ----------------------------------------------------------------------------
if [[ "$STUDIO_TYPE" = "stage1" ]]; then
  pkg_build_deps=(
    core/gcc
    core/coreutils
    core/diffutils
    core/autoconf
  )
fi
