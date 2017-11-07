#!/bin/sh

cmake -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX -Dwith-mpi=ON -Dwith-openmp=ON -Dwith-includes=$PREFIX/include -Dwith-libraries=$PREFIX/lib ./
make -j 2
make install
