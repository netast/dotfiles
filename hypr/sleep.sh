#!/bin/bash

swayidle -w timeout 30 'hyprlock' \
            timeout 60 'systemctl suspend' \
            before-sleep 'hyprlock' &
