This is project build a Scylla Docker image with Prometheus monitoring agent.
It base on [Scylla 1.3 Docker image](https://github.com/scylladb/scylla/blob/branch-1.3/docs/docker-hub.md) with the addition of collectd and collectd_exporter as explain in [Scylla Wiki](https://github.com/scylladb/scylla/wiki/Monitor-Scylla-with-Prometheus-and-Grafana#setting-scylla).

Once Scylla [expose Prometheus metrics directly](https://github.com/scylladb/scylla/issues/1280), this project will be redudent and will be removed.

### Build

```
sudo docker build -t scylla-with-monitoring .
```

### Run

```
sudo docker run --name some-scylla -d scylla-with-monitoring
```

### Usage
See [Scylla 1.3 Docker Image how to](https://github.com/scylladb/scylla/blob/branch-1.3/docs/docker-hub.md#how-to-use-this-image)
 
