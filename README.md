<!-- ENTETE -->
[![img](https://img.shields.io/badge/Cycle%20de%20Vie-Phase%20B%C3%AAta-339999)](https://www.quebec.ca/gouv/politiques-orientations/vitrine-numeriqc/accompagnement-des-organismes-publics/demarche-conception-services-numeriques)
[![License](https://img.shields.io/badge/License-Apache2-blue)](LICENSE)

---

<div>
    <a target="_blank" href="https://www.quebec.ca/gouvernement/ministere/cybersecurite-numerique">
      <img src="https://github.com/CQEN-QDCE/.github/blob/main/images/mcn.png" alt="Logo du Ministère de la cybersécurité et du numérique" />
    </a>
</div>
<!-- FIN ENTETE -->

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

