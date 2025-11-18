# 🚀 Directus + Supabase con Docker Compose

Este proyecto despliega un contenedor de **Directus** conectado a una base de datos **PostgreSQL gestionada por Supabase**, utilizando **Docker Compose**.  

## 📋 Requisitos previos

Antes de ejecutar este proyecto, asegúrate de tener:

- **Docker** ≥ 20.x  
- **Docker Compose** ≥ 2.x  
- La red Docker `agrosavia-network` **ya creada**  
- Una instancia de **Supabase** activa y accesible


## ⚙️ Configuración

1. Crea un archivo `.env` en la raíz del proyecto a partir del ejemplo:

## 🧩 Archivo .env.example

### Configuración de base de datos Supabase
SUPABASE_HOST=

SUPABASE_DB_NAME=

SUPABASE_DB_USER=

SUPABASE_DB_PASSWORD=

### Credenciales de administrador Directus
ADMIN_EMAIL=

ADMIN_PASSWORD=

## 🚀 Ejecución

Para construir y ejecutar el contenedor:

docker compose up -d --build

Una vez iniciado, accede a la interfaz de Directus desde tu navegador en:

👉 http://tuip:8002
👤 Inicio de sesión

Usa las credenciales que configuraste en tu archivo .env
