#!/bin/bash
cmake --build build -- -DBUILD_XTP=ON -DCMAKE_INSTALL_PREFIX=${PREFIX} -DCMAKE_INSTALL_LIBDIR=lib -DINJECT_MARCH_NATIVE=OFF -DENABLE_TESTING=ON
make  # -j${NUM_CPUS}
make test
make install
