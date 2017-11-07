#!/bin/sh

# export CFLAGS="-I$PREFIX/include"
# export LDFLAGS="-L$PREFIX/lib"

# ./bootstrap.sh
# ./configure --prefix=$PREFIX              \
#             --with-pynest-prefix=$PREFIX  \
#             --without-openmp              \
#             --without-readline

# make
# make install

cmake -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX -Dwith-mpi=ON -Dwith-openmp=ON -Dwith-includes=$PREFIX/include -Dwith-libraries=$PREFIX/lib ./
make -j 8
make install