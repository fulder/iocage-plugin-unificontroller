# iocage-plugin-unificontroller
FreeNAS plugin for Unifi Controller

## Settings

### unifi-poller
The [unifi-poller plugin](https://github.com/unifi-poller/unifi-poller) can be enabled using a settings variable.

* Enable unifi-poller: `iocage set -P unifi_poller_enable=true <JAIL_NAME>`
* Disable unifi-poller: `iocage set -P unifi_poller_enable=false <JAIL_NAME>`
* Getting current value: `iocage get -P unifi_poller_enable <JAIL_NAME>`

Note that this will only start up the unifi-poller as a service. The `/usr/local/etc/unifi-poller/up.conf` should be edited to the wished poller configuration after enabling the plugin for the first time. 

## Testing installation manually

In freenas shell run:

* `fetch https://raw.githubusercontent.com/fulder/iocage-plugin-index/master/unificontroller.json`
* `iocage fetch -P unificontroller.json --name unificontroller dhcp=on`