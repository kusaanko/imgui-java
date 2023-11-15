# ImGui Java
Original https://github.com/SpaiR/imgui-java

This repository includes some changes.

- Support Apple Silicon
- Fix ImFontAtlas#getGlyphRanges short array size
- Stop making temp dir every time

### Dependencies

```
repositories {
    maven {
        url "https://raw.githubusercontent.com/kusaanko/imgui-java/main/mavenRepo/"
    }
}

dependencies {
    implementation "com.github.kusaanko:imgui-java-app:${version}"
}
```

Available versions:
 - 7028be (08/27/2023) imgui-java 1.86.10
 - d9503d (08/27/2023) imgui-java 1.86.10 - has a bug
 - 362c17 (08/27/2023) imgui-java 1.86.10 - has a bug
 - 589b0d (08/27/2023) imgui-java 1.86.10
 - 2a2819 (08/28/2023) imgui-java 1.86.10
 - 482a19 (08/28/2023) imgui-java 1.86.10
 - 7dc310 (11/15/2023) imgui-java 1.86.11 - latest

# License

See the LICENSE file for license rights and limitations (MIT).
