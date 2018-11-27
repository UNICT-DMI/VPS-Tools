#!/bin/bash
su -l dmidev -c "tmux kill-session -t dmibot"
su -l dmidev -c "tmux kill-session -t fbtry"

su -l dmidev -c "tmux new -d -s dmibot /home/script/dmibot.sh"
su -l dmidev -c "tmux new -d -s fbtry /home/script/fbtry.sh"

