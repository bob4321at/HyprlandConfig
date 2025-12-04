#!/bin/sh
while [ ! -S "$XDG_RUNTIME_DIR/pipewire-0" ]; do
  sleep 0.3
done
sleep 2
exec ~/golang/bind_player/background/bind_player
