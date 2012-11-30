#include <cutils/properties.h>
#include <stdio.h>
#include <fcntl.h>
#include <cutils/log.h>

#define LOG_TAG "panmac"

/* Set wifi mac address */

void main() {
    char* buf;
    buf = "00:11:22:33:44:55";
    int fd = open("/sys/module/panmac/parameters/mac_addr", O_RDWR);

    if (fd < 0) {
        ALOGE("Open mac_addr failed.");
        return -1;
    }
    write(fd, buf, strlen(buf));
    ALOGE("mac_addr set.");

//    property_get("gsm.version.baseband", result);
}

