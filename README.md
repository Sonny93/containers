## endlessh

- Launch endlessh
- Change the default SSH port `sudo nano /etc/ssh/sshd_config` (ex: Port 29876)
- /!\ Important: Open new terminal and try to connect with the new SSH Port without logout from your first connection
- and voilà!

## automatically update containers using cronjobs

```shell
crontob -e
```

and then
`0 19 * * * /path/to/update.sh`

## start all containers

```shell
./start.sh
```
