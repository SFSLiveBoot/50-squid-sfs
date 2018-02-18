#!/bin/sh

: ${lbu:=/opt/LiveBootUtils}
. "$lbu/scripts/common.func"

: "${dist_page:=http://www.squid-cache.org/Versions/}"

latest_ver() {
  curl -s "$dist_page" | grep -e "Stable Versions" -e 'href="v[0-9]' | grep -A1 "Stable Versions" |
   grep -Eo '[0-9]+\.[0-9]+\.[0-9]+'
}
