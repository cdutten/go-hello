
Create image

`$ docker build . -t go-dummy`

Create container

`$ docker run -dit -v "$PWD":/usr/src/app --name=hello-go go-dummy`


With microk8s

Build an publish the docker image

`$ docker build . -t cdutten/go-dummy:public`

`$ docker push cdutten/go-dummy`

Apply the manifest

`$ microk8s.kubectl apply -f go-dummy.yaml`

Attach to the container

`$ microk8s.kubectl attach PODNAME -c go-dummy -i -t`

