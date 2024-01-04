## Hive on docker

### Install

1. Install docker or [rancher desktop](https://rancherdesktop.io/)
2. Make sure you have wget installed on your system
3. Run the `build_and_run.sh` script

### Utilization

- Connect to Hive using beeline withe the following command

```bash
docker exec -it hiveserver2 beeline -u 'jdbc:hive2://hiveserver2:10000/'
```

- Access the [web interface](http://localhost:10002) on `http://localhost:10002`

- Connect to the container using SSH and port 2222 `ssh -p 2222 hive@localhost`, password is `hive`

### Troubleshooting

If the container stop working after a reboot or any other reason run the `restart_hive.sh` script.
