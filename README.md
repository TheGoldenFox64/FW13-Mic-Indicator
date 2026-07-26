
# Framework 13 Mic Indicator

This script makes the power button turn red when the microphone is muted, and white when unmuted.


## Requirements

**Packages:** amixer, fw-ectool-git

**Files:** mic-mute-monitor.sh, micmonitor.service


## Installation

Manual install until i figure out git and stuff

```bash
  1. get the 2 files and 2 packages
  2. put mic-mute-monitor.sh in /usr/local/sbin
  3. make mic-mute-monitor.sh executable
  4. put micmonitor.service in /etc/systemd/system/
  5. enable and start micmonitor.service
```
Try muting your mic, if all is working then the light should turn red, and turn off when unmuted or the service stopped.
## Authors

- [MY GAY ASS](ko-fi.com/thegoldenfox64)

