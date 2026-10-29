cmake -S . -B build \
    -DBUILD_PYTHON=OFF \
    -DBUILD_SHARED_LIBS=ON \
    -DBUILD_TESTING=OFF \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_LIBDIR=lib \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_PREFIX_PATH=$PREFIX
cmake --build build --config Release --target install

cd python
$PYTHON -m pip install . -vv --no-deps --no-build-isolation
