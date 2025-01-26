#/bin/sh

# ./configure --enable-debug --with-jvm-variants=core
CONF=macosx-aarch64-core-fastdebug make images
cd build/macosx-aarch64-core-fastdebug/jdk/modules


cd jdk.compiler
cp -r ../java.compiler/javax .
cp -r ../jdk.zipfs/jdk .
zip -r javac.jar com javax jdk sun > /dev/null
mv -v javac.jar ../../../../..
# cd ..
# jar --create --file java_base.jar  --module-version 1.0 -C java.base .
# mv java_base.jar ../../../..
# jlink --add-modules java.base --no-man-pages --no-header-files --output module_test -G