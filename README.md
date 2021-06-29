# pvc-preuve-vaccinale-frontend

    
## Configurer access au repo

`az account set --subscription <subscription-number>`
    
`az aks get-credentials --resource-group aki-vacc-ca-CEQEN-acpt --name aki-vacc-ca-CEQEN-acpt-k8s`

`kubectl get deployments --all-namespaces=true`

## Déployer l'image au cloud

`kubectl apply -f ./.k8s`


## Pull une image dans le docker registry

- Mon usager: `user`

- Nom de l'image que je veux puller: `pvc-frontend`

```
$ docker login

$ docker tag pvc-frontend:latest user/pvc-frontend:latest 

$ docker push user/pvc-frontend:latest 
```

