pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Obtener el código del repositorio (si Jenkins está conectado a SCM)
                git url: 'URL_DE_TU_REPOSITORIO_GITHUB' 
            }
        }
        
        stage('Pruebas Unitarias') {
            steps {
                dir('app') {
                    sh 'pip install -r requirements.txt'
                    sh 'python3 -m unittest tests/test_basic.py'
                }
            }
        }
        
        stage('Infraestructura con Terraform') {
            steps {
                dir('terraform') {
                    sh 'terraform init'
                    // Planificar y aplicar la infraestructura. En un entorno real, 
                    // se añadiría una pausa para revisión o un paso manual.
                    sh 'terraform plan'
                    sh 'terraform apply -auto-approve'
                }
            }
        }
        
        stage('Despliegue con Ansible') {
            steps {
                // Obtener la IP de la salida de Terraform para usar en Ansible
                // Esto requiere que el inventory sea dinámico o se actualice. 
                // Para simplificar, asumimos que la IP se pasa como variable.
                // En este ejemplo simulado, usaremos la IP del output si existiera, o la IP local.
                sh 'ansible-playbook -i ansible/inventory ansible/playbook.yml'
            }
        }
    }
}
