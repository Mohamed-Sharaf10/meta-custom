SUMMARY = "Configure static ip address for the ethernet interface"
DESCRIPTION = "This appended recipe will configure the ethernet port for the pi with static ip address"

FILESEXTRAPATHS_prepend := "${THISDIR}/${BP}:"

SRC_URI += "file://interfaces_ip"

do_install_append() {

	rm ${D}${sysconfdir}/network/interfaces
	install -m 0644 ${WORKDIR}/interfaces_ip ${D}${sysconfdir}/network/interfaces
}
