set CMAKE_CONFIG=Release

mkdir build_%CMAKE_CONFIG%
pushd build_%CMAKE_CONFIG%

cmake -G"%CMAKE_GENERATOR%" ^
      -DCMAKE_BUILD_TYPE:STRING=%CMAKE_CONFIG% ^
      -DBUILD_SHARED_LIBS:BOOL=ON ^
      -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
      -Dgflags_DIR:PATH="%LIBRARY_PREFIX%\cmake" ^
      "%SRC_DIR%"

cmake --build . --target install --config %CMAKE_CONFIG%

popd