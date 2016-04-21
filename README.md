# setup-scripts
Scripts for setting up new computers (VPS, VMs, etc)


## Scripts

#### Refresh known_keys

```
export XIP=10.20.30.40 ; sed -i.bak "/^$XIP/d" ~/.ssh/known_hosts && ssh-keyscan $XIP >> ~/.ssh/known_hosts
```
