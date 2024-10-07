# Simple set up script for downloading packages and creating a `systemd` routine
## What the script does?
By running `configure_system.sh` you are dowloading following packages:
- `fast` (for testing network speed)
- `netperf` 
- `nload` 
#### After the script finishes running you have a systemd routin running every 2 min in the background. 
It outputs the result in the format `Month-Day Hour:Min | <speed> Mbps`.

Try running to see the today`s outputs of the service work
````
journalctl -S today -f -u simpleService.service
````
## How to set it all up? 
Place files `simpleService.service`, `simpleService.sh`, `simpleService.timer`, `configure_system.sh` into the same 
directory. Run `configure_system.sh`. 
````
sudo sh configure_system.sh
````
Wait until it finishes and enjoy)