#!/usr/bin/env bash

#rm -rf BUILD_WASM
mkdir BUILD_WASM

cd BUILD_WASM
cmake .. -G "Unix Makefiles" -B ./ -DBUILD_WASM=OFF -DCMAKE_BUILD_TYPE=debug -DCMAKE_TOOLCHAIN_FILE=${EMSCRIPTEN}/cmake/Modules/Platform/Emscripten.cmake
make -j 12

# copy built files to the web directory
cp -r ./bin/box2d.debug.wasm.js ../emscriptenTest
cp -r ./bin/box2d.debug.wasm.wasm ../emscriptenTest
cp -r ./bin/box2d.release.wasm.js ../emscriptenTest
cp -r ./bin/box2d.release.wasm.wasm ../emscriptenTest

cp -r ./bin/box2d.debug.asm.js ../../cocos-engine/native/external/emscripten/box2d
cp -r ./bin/box2d.debug.wasm.js ../../cocos-engine/native/external/emscripten/box2d
cp -r ./bin/box2d.debug.wasm.wasm ../../cocos-engine/native/external/emscripten/box2d
cp -r ./bin/box2d.release.asm.js ../../cocos-engine/native/external/emscripten/box2d
cp -r ./bin/box2d.release.wasm.js ../../cocos-engine/native/external/emscripten/box2d
cp -r ./bin/box2d.release.wasm.wasm ../../cocos-engine/native/external/emscripten/box2d