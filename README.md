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

.
├── Jenkinsfile
├── Proyecto_\ Despliegue\ de\ Aplicaci\363n\ con\ Terraform\ y\ Ansible.pdf
├── README.md
├── ansible
│   ├── inventory
│   └── playbook.yml
├── app
│   ├── __pycache__
│   │   └── main.cpython-310.pyc
│   ├── main.py
│   ├── requirements.txt
│   └── tests
│       ├── __pycache__
│       │   └── test_basic.cpython-310.pyc
│       └── test_basic.py
└── terraform
    ├── main.tf
    ├── mainaws.tf
    ├── terraform.tfstate
    └── variables.tf
