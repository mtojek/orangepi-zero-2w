#!/bin/bash

#pactl set-default-sink alsa_output.platform-soc_ahub0_mach.stereo-fallback
pactl load-module module-remap-sink   sink_name=mono_max98357a   master=alsa_output.platform-soc_ahub0_mach.stereo-fallback   channels=1 channel_map=mono
pactl set-default-sink mono_max98357a
pactl set-sink-volume mono_max98357a 80%
