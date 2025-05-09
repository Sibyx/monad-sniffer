#!/bin/bash
set -e

HCI=hci0
PROTO_HEADER="MONAD2"
TIMESTAMP=$(date +%s)

# Convert to hex payload
RAW_PAYLOAD="${PROTO_HEADER}${TIMESTAMP}"
HEX_PAYLOAD=$(echo -n "$RAW_PAYLOAD" | xxd -p | tr -d '\n')

# Stop conflicting services and reset interface
sudo systemctl stop bluetooth || true
hciconfig $HCI down
hciconfig $HCI up

# Format and send advertising data
hcitool -i $HCI cmd 0x08 0x0008 $(printf "%02x" $(( (10 + 2) ))) 02 01 06 0A FF $(
    echo $HEX_PAYLOAD | sed 's/../& /g'
)

# Enable advertising
hcitool -i $HCI cmd 0x08 0x000A 01
