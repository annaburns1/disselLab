#! /bin/bash

while true; do
        currD="$(date +'%Y-%m-%d')"
        currT="$(date +'%H:%M:%S')"

        echo "The date is " $currD "\n"
        echo "The time is " $currT "\n"
        read -p "Is this accurate? (y/n) " user_ans

        case $user_ans in
                [Yy]* ) break;;
                [Nn]* ) sudo hwclock -w; sudo hwclock -r;;
                *) echo -e "Please answer y or n. \n";;
        esac
done

sudo mount /dev/sda1 /media/usb
while true; do
        if [ -d "../../media/usb/FLY_VIDEOS" ]
        then
                break
        else
                read -p "Is the hard drive connected? (y/n)" user_ans2
                case $user_ans2 in
                        [Yy]* ) sudo mount /dev/sda1 /media/usb;;
                        [Nn]* ) echo -e "Please connect it!\n";;
                        *) echo "Please enter y or n!\n";;
                esac
        fi
done
