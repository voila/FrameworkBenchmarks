#!/bin/bash

RETCODE=$(fw_exists ${IROOT}/grails-2.4.2.installed)
[ ! "$RETCODE" == 0 ] || { return 0; }

fw_get http://dist.springframework.org.s3.amazonaws.com/release/GRAILS/grails-2.4.2.zip -O grails-2.4.2.zip
fw_unzip grails-2.4.2.zip

touch ${IROOT}/grails-2.4.2.installed