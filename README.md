# ShinyProxy Dash Demo Image

To pull the image made in this repository from Docker Hub, use

```
sudo docker pull openanalytics/shinyproxy-dash-demo
```

The relevant Docker Hub repository can be found at


https://hub.docker.com/r/openanalytics/shinyproxy-dash-demo


To build the image from the Dockerfile, navigate into the root directory of this repository and run


```
sudo docker build -t openanalytics/shinyproxy-dash-demo .
```

For deployment on ShinyProxy the port must be set to 8050, e.g.:

```yaml
specs:
- id: dash-demo
  display-name: Dash Demo Application
  port: 8050
  container-cmd: ["python", "app.py"]
  container-image: openanalytics/shinyproxy-dash-demo
```


(c) Copyright Open Analytics NV, 2018-2019.
