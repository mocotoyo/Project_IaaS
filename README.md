# Project_IaaS
=======
# Proyecto de Despliegue con Terraform + Ansible

Este proyecto contiene:

- Una aplicación pequeña (web o API) con al menos una prueba unitaria.
- Infraestructura desplegable con **Terraform**.
- Un playbook de **Ansible** para configurar la instancia y desplegar la aplicación.
- Comandos necesarios para ejecutar todo el proceso.

---

## 📦 Requisitos

Antes de comenzar, debes tener instalado:

- Terraform
- Ansible
- AWS CLI configurado con credenciales
- Git

---

## 🗂️ Estructura del proyecto

├── app/ # Aplicación (web/API)
│ ├── src/
│ ├── tests/ # Prueba unitaria
│ └── requirements.txt # Dependencias (ejemplo)
│
├── terraform/ # Infraestructura como código
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
│
├── ansible/
│ ├── inventory
│ ├── playbook.yml
│ └── roles/
│ └── deploy/
│ └── tasks/main.yml
│
└── README.md
