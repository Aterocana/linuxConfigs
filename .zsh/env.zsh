# Esp8266 toolchain path
export PATH=$PATH:/opt/esp-open-sdk/xtensa-lx106-elf/bin
# ESP32 toolchain path
export PATH=$PATH:/opt/esp32/xtensa-esp32-elf/bin:/opt/esp32/esp-idf
export IDF_PATH=/opt/esp32/esp-idf

# GO
export PATH=$PATH:/usr/lib/go/bin:$HOME/go/bin
export GOBIN=$HOME/go/bin

# RUST
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$(rustc --print sysroot)/lib/rustlib/src/rust/src

export _JAVA_AWT_WM_NONREPARENTING=1

# NVM (Node.js)
source /usr/share/nvm/init-nvm.sh
