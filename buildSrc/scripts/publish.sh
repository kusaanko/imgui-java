#!/bin/bash

BASEDIR=$(dirname "$0")
cd $BASEDIR/../.. || exit

echo '> Publishing Modules...'
echo '>> Module [imgui-app]'
./gradlew imgui-app:publish
echo '>> Module [imgui-lwjgl3]'
./gradlew imgui-lwjgl3:publish
echo '>> Module [imgui-binding]'
./gradlew imgui-binding:publish

echo '> Publishing Natives...'
echo '>> Natives: [windows, freetype]'
./gradlew imgui-binding-natives:publish -PdeployType=windows -Pfreetype=true
echo '>> Natives: [windows]'
./gradlew imgui-binding-natives:publish -PdeployType=windows -Pfreetype=false
echo '>> Natives: [linux, freetype]'
./gradlew imgui-binding-natives:publish -PdeployType=linux -Pfreetype=true
echo '>> Natives: [linux]'
./gradlew imgui-binding-natives:publish -PdeployType=linux -Pfreetype=false
echo '>> Natives: [macOS, freetype]'
./gradlew imgui-binding-natives:publish -PdeployType=macos -Pfreetype=true
echo '>> Natives: [macOS]'
./gradlew imgui-binding-natives:publish -PdeployType=macos -Pfreetype=false
