#!/usr/bin/env bash
H=/sys/class/hwmon/hwmon4

v_mv=$(cat $H/in1_input)
i_ma=$(cat $H/curr1_input)
p_uw=$(cat $H/power1_input)

p_mw=$((p_uw / 1000))

echo "Bus:   ${v_mv} mV"
echo "Curr:  ${i_ma} mA"
echo "Power: ${p_mw} mW"

