#!/bin/bash

ball_date="2027-01-15"

today=$(date +%s)
ball=$(date --date="$ball_date" +%s)

days=$(( (ball - today) / 86400))

echo "Es sind noch $days Tage bis zum HTL Ball ($ball_date)"