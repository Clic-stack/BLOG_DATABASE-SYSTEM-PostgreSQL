## 📊 Blog Database System (PostgreSQL)

This project involves the design and implementation of a relational database named `blog_db`, created to manage a blog platform. It includes the architecture for users, posts, and a "likes" interaction system.

<img width="1470" height="390" alt="image" src="https://github.com/user-attachments/assets/3a91a397-2c43-49b4-84c1-2bbff46be09a" />

---

## 🌐 Deployment

### 📄 Entity-Relationship Diagram (ERD): Application schema developed with dbdiagram.io
🔗 **https://dbdiagram.io/d/68f58d0b2e68d21b413a138a**

---

## 🏗️ Data Architecture

The design is based on a relational model that ensures referential integrity through the strategic use of Primary Keys (`PK`) and Foreign Keys (`FK`).

<img width="819" height="611" alt="image" src="https://github.com/user-attachments/assets/2645d001-5987-4516-8ee9-239a3bd28756" />

---

## 🎯 Project Objectives

This project was designed to:

- Structure a Content Management System (Blog) through entity modeling and relationship mapping.
- Configure a database schema that guarantees data consistency via Primary and Foreign Keys.
- Execute Create, Read, and Update (CRUD) operations to simulate real-world web application activity.
- Resolve business requirements using advanced queries to consolidate data from multiple tables.

---

## 🧠 Key Skills Reinforced

- **Relational Architecture Design.**
- **Implementation of Referential Integrity.**
- **Data Life Cycle Management (CRUD).**
- **Information Analysis and Consolidation.**
- **Data Modeling (ERD):** Ability to translate logical requirements into technical diagrams using tools like `dbDiagram`.
- **SQL Mastery (PostgreSQL):** Writing **DDL** *(Data Definition Language)* scripts for schema creation and **DML** *(Data Manipulation Language)* for data manipulation.
- **Relationship Logic:** Implementing **1:N** *(one user has many posts)* and **N:M** *(many users like many posts)* relationships via junction tables.
- **Multi-table Queries (JOINs):** Mastery of the `INNER JOIN` clause to extract related information, a fundamental skill for data analysis.
- **Constraint Control:** Application of appropriate data types (SERIAL, TEXT, VARCHAR) and reference management to prevent orphaned data.

---

## 📌 System Functionality

- **User Management:** Registration and storage of author profiles with unique identifiers and email addresses.
- **Content Publishing:** A system allowing users to create detailed articles, automatically linking them to their author identity.
- **Interaction System (Likes):** "Like" functionality that records the exact interaction between a user and a specific post.
- **Authorship Reporting:** Generation of views that combine post content with full original author data.
- **Engagement Reporting:** Queries capable of listing users who have interacted with specific content, allowing for post popularity tracking.

---

## 📁 Tables, Content, and Database Entities

**Users**: Stores author and reader information.

```sql
| 🔑 id | first_name | last_name | email                |
|-------|------------|-----------|----------------------|
| 1     | Pancha     | Cuevas    | panchita@example.com |
```

**Posts**: Contains publications linked to a unique author (1:N Relationship).

```

| 🔑 id | 🗝️ user_id | title            | text                |
|--------|------------|------------------|----------------------|
| 1      | 1          | Learning psql    | Postgres is a relational database engine, widely used with nodejs. |

```

**Likes**: Junction table managing the relationship between users and posts (N:M Relationship).

```

| 🔑 id | user_id | post_id |
|--------|---------|---------|
| 1      | 1       | 18      |

```

---

## 💻🚀 Tech Stack

| Technology      | Purpose       | 
|-----------------|---------------|
| PostgreSQL 18   | Database Engine | 
| pgAdmin 4       | Database Management Tool |       
| dbdiagram.io    | Database Modeling | 
| SQL (DDL y DML) | Database Language |

---

## 🗂️ Project Structure

```bash
📁 S01E01-BLOG_DATABASE
    ├── S01E01-blog_db.sql  
```
---

## 🛠️ Implementation & Key Queries

The `blog_database.sql` file contains the full script to replicate the environment. Below are the specific data analysis queries requested:

### 1. Post-Author Relationship
To track which user wrote each article, an `INNER JOIN` was implemented:

```sql
select * from posts
join users
on posts.user_id = users.id;
```

### 2. Interaction Analysis (Likes)
To identify which users interacted with specific posts, a triple JOIN was performed connecting the junction table:

```sql
select * from users
join likes
on users.id = likes.user_id
join posts
on likes.post_id = posts.id;
```

## ⚙️ Installation & Setup

1. Clone this repository:

```bash
git clone https://github.com/Clic-stack/BLOG_DATABASE.git
```

2. Create a database in your PostgreSQL client:

```bash
CREATE DATABASE blog_db;
```

3. Execute or import the `blog_database.sql` file to generate the tables and sample data.

---

## 🎨Author
Developed by Clio Salgado with the goal of creating a robust "blog_db" system for professional blog management.

🔽 **Versión en Español** 🔽

## 📊 Sistema de Base de Datos para un Blog con PostgreSQL

Este proyecto consiste en el diseño e implementación de una base de datos relacional denominada `blog_db`, diseñada para gestionar un sistema de blogs. Incluye la arquitectura de usuarios, publicaciones y un sistema de interacciones mediante "likes".

<img width="1470" height="390" alt="image" src="https://github.com/user-attachments/assets/3a91a397-2c43-49b4-84c1-2bbff46be09a" />

---

## 🌐 Despliegue

## 📄 Diagrama de Entidad-Relación (ERD): Esquema de la aplicación desarrollado con dbdiagram.io
🔗 **https://dbdiagram.io/d/68f58d0b2e68d21b413a138a**

---

## 🏗️ Arquitectura de Datos

El diseño se basa en un modelo relacional que garantiza la integridad referencial mediante el uso de llaves primarias (`PK`) y llaves foráneas (`FK`).

<img width="819" height="611" alt="image" src="https://github.com/user-attachments/assets/2645d001-5987-4516-8ee9-239a3bd28756" />

---

## 🎯 Objetivos del Proyecto

Este proyecto fue diseñado para:

- Estructurar un sistema de gestión de contenidos (Blog) mediante el modelado de entidades y sus relaciones.
- Configurar un esquema de base de datos que garantice la consistencia de los datos mediante el uso correcto de llaves primarias (Primary Keys) y foráneas (Foreign Keys).
- Ejecutar operaciones de creación, lectura y actualización de registros para simular la actividad real de una plataforma web.  
- Resolver requerimientos de negocio mediante consultas avanzadas que unifiquen datos de múltiples tablas.
  
---

## 🧠 Habilidades Clave Reforzadas

- **Diseño de Arquitectura Relacional.**
- **Implementación de Integridad Referencial.**
- **Gestión del Ciclo de Vida de los Datos (CRUD).** 
- **Análisis y Consolidación de Información.** 
- **Modelado de Datos (ERD):** Capacidad para traducir requerimientos lógicos en diagramas técnicos utilizando herramientas de diseño como `dbDiagram`.
- **Dominio de SQL (PostgreSQL):** Escritura de scripts **DDL** *(Data Definition Language)* para la creación de esquemas y **DML** *(Data Manipulation Language)* para la manipulación de datos.
- **Lógica de Relaciones:** Implementación de relaciones **1:N** *(un usuario tiene muchos posts)* y **N:M** *(muchos usuarios dan likes a muchos posts)* a través de tablas pivote.
- **Consultas Multitabla (JOINs):** Dominio de la cláusula `INNER JOIN` para extraer información relacionada, una habilidad fundamental para el análisis de datos.
- **Control de Restricciones:** Aplicación de tipos de datos adecuados (como SERIAL, TEXT, VARCHAR) y manejo de referencias para prevenir datos huérfanos.
  
---

## 📌 Funcionalidades del Sistema

- **Gestión de Usuarios:** Registro y almacenamiento de perfiles de autor con identificadores únicos y correos electrónicos.
- **Publicación de Contenidos:** Sistema que permite a los usuarios crear artículos detallados, vinculándolos automáticamente con su identidad de autor.
- **Sistema de Interacciones (Likes):** Funcionalidad de "Me gusta" que registra la interacción exacta entre un usuario y una publicación específica.
- **Reportes de Autoría:** Generación de vistas que combinan el contenido de los posts con los datos completos del autor original.
- **Reportes de Engagement:** Consultas capaces de listar quiénes son los usuarios que han interactuado con contenidos específicos, permitiendo rastrear la popularidad de las publicaciones.

---

## 📁 Tablas, Contenido y Entidades de la Base de Datos

**Users**: Almacena la información de los autores y lectores. 

```

| 🔑 id | first_name | last_name | email                |
|--------|------------|-----------|----------------------|
| 1      | Pancha     | Cuevas    | panchita@example.com |

```

**Posts**: Contiene las publicaciones vinculadas a un autor único (Relación 1:N). 

```

| 🔑 id | 🗝️ user_id | title            | text                |
|--------|------------|------------------|----------------------|
| 1      | 1          | Aprendiendo psql | Postgres es un motor de base de datos relacional, bastante utilizado al hacer aplicaciones con nodejs. |

```

**Likes**: Tabla pivote que gestiona la relación entre usuarios y publicaciones (Relación N:M). 

```

| 🔑 id | user_id | post_id |
|--------|---------|---------|
| 1      | 1       | 18      |

```

---

## 💻🚀 Tecnologías usadas

| Tecnología      | Propóito      | 
|-----------------|---------------|
| PostgreSQL 18   | Motor de Basess de Datos | 
| pgAdmin 4       | Gestor de Bases de Datos |       
| dbdiagram.io    | Modelado de Bases de Datos | 
| SQL (DDL y DML) | Lenguaje de Bases de Datos |

---

## 🗂️ Estructura del proyecto

```bash
📁 S01E01-BLOG_DATABASE
    ├── S01E01-blog_db.sql  
```
---

## 🛠️ Implementación y Consultas Clave

El archivo `blog_database.sql` contiene el script completo para replicar el entorno. A continuación, se detallan las consultas de análisis de datos solicitadas:

### 1. Relación Post-Autor
Para obtener la trazabilidad de qué usuario escribió cada artículo, se implementó un `INNER JOIN`:

```sql
select * from posts
join users
on posts.user_id = users.id;
```

### 2. Análisis de Interacciones (Likes)
Para identificar qué usuarios interactuaron con qué publicaciones, se realizó un triple JOIN conectando la tabla pivote:

```sql
select * from users
join likes
on users.id = likes.user_id
join posts
on likes.post_id = posts.id;
```

## ⚙️ Instalación y Configuración

1. Clona este repositorio:

```bash
git clone https://github.com/Clic-stack/BLOG_DATABASE.git
```

2. Crea una base de datos en tu cliente de PostgreSQL:

```bash
CREATE DATABASE blog_db;
```

3. Ejecuta o importa el archivo `blog_database.sql` para generar las tablas y los datos de prueba.

---

## 🎨Autor
Desarrollado por Clio Salgado con el objetivo de crear una base de datos “blog_db” para gestionar un Blog.
