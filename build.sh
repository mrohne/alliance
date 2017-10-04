export ALLIANCE_TOP=/opt/alliance
cd /opt/alliance/alliance/src
aclocal -I .
glibtoolize --force --copy --automake
automake --foreign --add-missing --copy
autoconf
mkdir -p ../../build
cd ../../build
../alliance/src/configure --prefix=/opt/alliance --with-alliance-top=/opt/alliance --no-create --no-recursion
make -j4
make install   
