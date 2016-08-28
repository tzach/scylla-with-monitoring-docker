This is project build a Scylla Docker image with Prometheus monitoring agent.
It base on [Scylla Docker image](https://hub.docker.com/r/scylladb/scylla/) with the addition of collectd and collectd_exporter as explain in [Scylla Wiki](https://github.com/scylladb/scylla/wiki/Monitor-Scylla-with-Prometheus-and-Grafana#setting-scylla).

Once Scylla [expose Prometheus metrics directly](https://github.com/scylladb/scylla/issues/1280), this project will be redudent and will be removed.

### Usage

```
sudo docker run --name some-scylla -d tzachl/scylla-with-monitoring-docker
```

See [Scylla Docker Image how to](https://hub.docker.com/r/scylladb/scylla/) for more options.


### Build Locay

```
sudo docker build -t local-image .
```

### Run from a local image

```
sudo docker run --name some-scylla -d local-image
```

