#/bin/sh

CONF=macosx-aarch64-core-fastdebug make images
cd build/macosx-aarch64-core-fastdebug/jdk/modules


cd jdk.compiler
cp -rv ../java.compiler/javax .
cp -rv ../jdk.zipfs/jdk .
zip -r javac.jar com javax jdk sun
mv -v javac.jar ../../../../..
# cd ..
# jar --create --file java_base.jar  --module-version 1.0 -C java.base .
# mv java_base.jar ../../../..
# jlink --add-modules java.base --no-man-pages --no-header-files --output module_test -G