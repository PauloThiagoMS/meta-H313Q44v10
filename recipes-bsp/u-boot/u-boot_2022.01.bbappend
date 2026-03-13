FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://u-boot-sunxi-with-spl.bin"

do_install:append() {
    install -m 0644 ${WORKDIR}/u-boot-sunxi-with-spl.bin \
        ${D}/boot/u-boot-sunxi-with-spl.bin
}

do_deploy:append() {
    install -m 0644 ${WORKDIR}/u-boot-sunxi-with-spl.bin \
        ${DEPLOYDIR}/u-boot-sunxi-with-spl.bin
}
