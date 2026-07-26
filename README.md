
# Framework 13 Mic Indicator

This script makes the power button turn red when the microphone is muted, and white when unmuted.


## Requirements

**Packages:** alsa-utils, fw-ectool(name may vary based on distro or PM, fw-ectool-git on AUR)

## Installation

Make sure you have amixer and fw-ectool installed, then run
```bash
git clone https://github.com/TheGoldenFox64/FW13-Mic-Indicator
cd FW13-Mic-Indicator
sudo chmod +x ./install.sh
./install.sh
```
Be sure to start and/or enable `micmonitor.service`

Try muting your mic, if all is working then the light should turn red, and turn off when unmuted or the service stopped.

## Troubleshooting
the script is set to card 1. make sure you are muting card 1, or go into the script file in `/usr/local/sbin/mic-mute-monitor.sh` and change `amixer -c 1` to whatever number your card is. you can find your card number with `arecord -l`
## Authors

- [MY GAY ASS](ko-fi.com/thegoldenfox64)

