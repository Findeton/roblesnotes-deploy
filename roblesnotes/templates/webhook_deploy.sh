#!/bin/bash

# stop on first error
# well, not exactly: http://mywiki.wooledge.org/BashFAQ/105
set -e

echo deploying... $(date) >> /var/log/webhook/log.txt