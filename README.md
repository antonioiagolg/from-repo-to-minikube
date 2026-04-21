# From repo to Minikube

This repo is just me playing with the CI/CD process for a small backend API. Here I am going to explore:
- CI/CD process
- Package Management
- GitOps

## Stack
- Python (Poetry, FastAPI)
- Podman
- Minikube
- Jenkins

### Poetry plugins
- poetry-plugin-export (to generate requirements.txt from poetry.lock): `poetry self add poetry-plugin-export`
```
poetry export -f requirements.txt --output requirements.txt --without-hashes
```

## TODO

- Configure Containerfile to build image with app- Configure Jenkins
- Build Containerfile and push to registry

## Journal
- The gunicorn by default loads wsgi apps. To make it run my asgi app, need to run like
this: `gunicorn src.main:app --worker-class asgi`
- Later I removed the param from the command and added the config in the `gunicorn.conf.py`
- The bind param in the CMD command is important to tell gunicorn to listen for requests on all container network interfaces, on the specified port.
