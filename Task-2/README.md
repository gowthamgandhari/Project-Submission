# Task 2: Docker Installation and Application Deployment

##  Objective

To install Docker, build a Docker image using a custom `index.html`, and deploy the application accessible on port **8000**.

---

##  Installation & Setup

### Install Docker

```bash
curl https://get.docker.com/ | bash
```

---

### Verify Docker Installation

```bash
docker --version
sudo systemctl status docker
```

---

### Add User to Docker Group

```bash

sudo usermod -aG docker ubuntu
newgrp docker

```

---

##  Application Setup

### Create HTML File

```bash

vi index.html

```

Paste the provided HTML content and save.

---

### Create Dockerfile

```bash

vi Dockerfile

```

Add the following:

```dockerfile
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
```

---

##  Docker Build & Run

### Build Docker Image

```bash

docker build -t cwl-devops-app .

```

---

### Verify Image

```bash

docker images

```

---

### Run Container

```bash

docker run -d -p 8000:80 cwl-devops-app

```

---

### Check Running Containers

```bash

docker ps

```

---

##  Access the Application

Open in browser:

```
http://13.235.114.142:8000/
```

---

## Outcome

* Docker installed successfully
* Image built using Dockerfile
* Container running successfully
* Application accessible via public IP on port **8000**

---

## Files Included

* `index.html`
* `Dockerfile`

---

