# Garante que o Yocto encontre arquivos dentro de recipes-bsp/u-boot/files
FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

# Adiciona o patch ao fluxo de build
SRC_URI += "file://0001-add-internal-net-2024_01.patch"