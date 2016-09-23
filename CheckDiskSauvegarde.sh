#!/bin/bash
umount /Backup
fsck.ext3 -yfv -C0 /dev/sdc1
