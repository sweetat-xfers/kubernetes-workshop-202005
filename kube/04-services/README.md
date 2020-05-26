# Services

Demonstrate services and their related dns names

## How To

Open each file and describe the key features of the service types first

```bash
kubectl apply -k ./
```

should give an error requesting for a kustomization.yaml

```bash
mv my-kustomization.yaml kustomization.yaml
kubectl apply -k ./
```

should be able to run the application

## Points of Interest

Change the metadata.name of the service in deployment-mysql.yaml to another name

```bash
kubectl logs <mydjango pod>
```

It cannot connect to the mysql server

## Assumptions

This assumes a simple application already prepared in the docker repo
done via the command

```bash
docker-compose build
```