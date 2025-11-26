# 🚀 Directus + Supabase con Docker Compose

Este proyecto despliega un contenedor de **Directus** conectado a una base de datos **PostgreSQL gestionada por Supabase**, utilizando **Docker Compose**.  

## 📋 Requisitos previos

Antes de ejecutar este proyecto, asegúrate de tener:

- **Docker** ≥ 20.x  
- **Docker Compose** ≥ 2.x  
- La red Docker `agrosavia-network` creada
- Una instancia de **Supabase** activa y accesible

### Configuración del Schema en Supabase

Ejecuta el siguiente script SQL en el editor de Supabase para crear el schema de Directus:
```sql
CREATE SCHEMA IF NOT EXISTS directus;
GRANT ALL ON SCHEMA directus TO supabase;
GRANT ALL ON SCHEMA directus TO authenticated;
```

**Nota:** Esto permite que las tablas del sistema de Directus se oculten del Table Editor de Supabase mientras mantiene el acceso completo a las tablas de tu aplicación en el schema `public`.


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
