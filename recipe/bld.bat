cmake -G"Ninja" ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DCMAKE_PREFIX_PATH=%PREFIX% ^
      -DCMAKE_INSTALL_PREFIX=%PREFIX% ^
      -DBUILD_PYTHON=OFF ^
      -DBUILD_TESTING=OFF ^
      %SRC_DIR%

if errorlevel 1 exit 1

cmake --build . --config Release --target install

if errorlevel 1 exit 1

cd python
%PYTHON% -m pip install . -vv --no-deps --no-build-isolation

if errorlevel 1 exit 1
