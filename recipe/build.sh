#!/bin/bash
mkdir build
cd build
cmake -DBUILD_XTP=ON -DCMAKE_INSTALL_PREFIX=${PREFIX} -DCMAKE_INSTALL_LIBDIR=lib -DGROMACS_INCLUDE_DIR=${PREFIX}/include -DGROMACS_LIBRARY=${PREFIX}/lib/libgromacs.so -DINJECT_MARCH_NATIVE=OFF -DENABLE_TESTING=ON ..
make  # -j${NUM_CPUS}
make test
make install
