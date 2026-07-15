# TaskForge

Une API de gestion de tâches, prétexte à construire une **chaîne DevOps complète**
— du code au déploiement — comme fil rouge d'apprentissage.

## Objectif

Démontrer la maîtrise de la chaîne « du code au cloud » : conteneurisation,
Infrastructure as Code, orchestration Kubernetes, CI/CD et observabilité.

## Stack

- **Application** : FastAPI (Python) + PostgreSQL
- **Infrastructure** : Terraform (modules réutilisables)
- **Conteneurisation** : Docker
- **Orchestration** : Kubernetes
- **CI/CD** : GitLab CI / GitHub Actions *(à venir)*
- **Observabilité** : Prometheus + Grafana *(à venir)*

## Roadmap

- [x] Infrastructure PostgreSQL via module Terraform
- [ ] API FastAPI (3 endpoints : créer / lister / clore une tâche)
- [ ] Conteneurisation de l'API (Dockerfile)
- [ ] Déploiement sur Kubernetes
- [ ] Pipeline CI/CD
- [ ] Monitoring (Prometheus / Grafana)

## Structure

\`\`\`
taskforge/
├── app/          # API FastAPI
├── infra/        # Terraform (modules + environnements)
│   └── modules/
│       └── postgres/   # module de base de données réutilisable
└── docs/         # architecture & notes
\`\`\`
