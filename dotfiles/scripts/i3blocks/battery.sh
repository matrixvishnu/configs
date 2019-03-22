#!/bin/bash
batinf='acpi -b'
perc=$(acpi -b | awk '{print $4;}' | sed 's/%//g' | sed 's/,//g')
rm_time=$(acpi -b | awk '{print $5;}' | sed 's/%//g' | sed 's/,//g')
charging=$(acpi -b | grep -c Discharging)
if [ ! $charging -eq 1 ]
then echo " $perc% $rm_time"
elif (( $perc > '75' ))
then echo " $perc% $rm_time"
elif (( $perc > '50' ))
then echo " $perc% $rm_time"
elif (( $perc > '25' ))
then echo " $perc% $rm_time"
elif  (( $perc > '10' ))
then echo " $perc% $rm_time"
else
echo " $perc% $rm_time"
    notify-send -u critical "Battery is Low" 
fi

case $BLOCK_BUTTON in
	3) mate-power-statistics ;;
esac
