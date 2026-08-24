# Proyecto Cloud - Sistema de Gestión de Empleados
  Proyecto de infraestructura en AWS con arquitectura de VPC, subredes públicas/privadas, servidor web y base de datos gestionada.

# Arquitectura
  **VPC**: 10.0.0.0/16
  **Subred Pública:** 10.0.4.0/24 (servidor web con IP pública)
  **Subred Privada:** 10.0.2.0/24 y 10.0.5.0/24 (base de datos, sin acceso público)
  **Internet Gateway:** conecta la subred pública a internet
  **Security Groups:**
   'sg-web': permite SSH (22) y HTTP (80)
   `sg-db`: permite SSH (22) y MySQL/Aurora (3306) solo desde `sg-web`

Ver diagrama de arquitectura: diagrama sin titulo.png

## Servidor Web
 Instancia EC2 con Ubuntu Server en subred pública
 Nginx instalado como servidor web
 Archivo desplegado: `index.html`

Instalación:
  sudo apt update && sudo apt install nginx -y

## Base de Datos
 Motor: MariaDB en Amazon RDS
 Ubicada en subred privada, sin acceso público
 Solo acepta conexiones desde el security group del servidor web

Script de creación: `script.sql`
  CREATE TABLE Empleados (id INT PRIMARY KEY, nombre VARCHAR(50));
  INSERT INTO Empleados (id, nombre) VALUES (1, 'Administrador');

## Pasos de despliegue
1. Diseño del diagrama de arquitectura
2. Creación de VPC y CIDR (10.0.0.0/16)
3. Creación de subredes públicas y privadas
4. Configuración de Security Groups
5. Lanzamiento de instancia EC2 en subred pública
6. Conexión SSH a la instancia
7. Instalación de Nginx
8. Despliegue del index.html
9. Creación de instancia RDS (MariaDB) en subred privada
10. Configuración de conectividad segura entre EC2 y RDS
11. Creación de tabla e inserción de datos
12. Versionado del proyecto en GitHub
