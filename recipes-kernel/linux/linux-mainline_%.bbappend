FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " \
    file://ethernet.cfg \
    file://sun50i-h616-orangepi-zero2.dts \
    file://sun50i-h616.dtsi \
"

KERNEL_CONFIG_FRAGMENTS += "ethernet.cfg"

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " \
    file://ethernet.cfg \
    file://sun50i-h616-orangepi-zero2.dts \
    file://sun50i-h616.dtsi \
"

KERNEL_CONFIG_FRAGMENTS += "ethernet.cfg"

do_configure:append() {
    cp ${WORKDIR}/sun50i-h616-orangepi-zero2.dts \
       ${S}/arch/arm64/boot/dts/allwinner/

    cp ${WORKDIR}/sun50i-h616.dtsi \
       ${S}/arch/arm64/boot/dts/allwinner/
}