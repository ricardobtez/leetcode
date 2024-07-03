#!/bin/bash
# Temporal script file to be used to configure project for CLION

conan install . --output-folder=cmake-build-release --build missing
pushd cmake-build-release || exit
cmake .. -GNinja -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
popd || exit

conan install . --output-folder=cmake-build-debug --build missing --build-require --settings=build_type=Debug
pushd cmake-build-debug || exit
cmake .. -GNinja -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Debug
popd || exit

