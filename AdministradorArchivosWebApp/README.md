# Administrador de Archivos - WebApp Java JSP

Aplicación web que permite explorar directorios y descargar archivos desde el servidor utilizando Servlets, JSPs, JSTL, Bootstrap y soporte multilenguaje.

## ✅ Funcionalidades

- 🗂 Listado recursivo de archivos desde una ruta
- 🌍 Soporte de internacionalización (i18n)
- 🔐 Validación con Bootstrap y JSTL
- 📥 Descarga de archivos
- 🎨 Interfaz con Bootstrap (CDN)
- 📦 Empaquetable como archivo WAR

## 📁 Estructura

- `src/me/jmll/`: Servlets
- `src/me/jmll/i18n/`: Archivos `.properties` para i18n
- `WEB-INF/views/`: Vistas JSP
- `WEB-INF/includes/`: Recursos Bootstrap
- `WEB-INF/lib/`: Taglibs JSTL

## 🛠 Requisitos

- Java 8+
- Tomcat 8.5+
- IDE con soporte para proyectos Web
- JSTL y taglibs en `WEB-INF/lib`

## 🚀 Despliegue

1. Genera el archivo `.WAR`
2. Sube a Tomcat (`webapps/`)
3. Accede vía navegador:  
   `http://localhost:8080/AdministradorArchivosWebApp`

## 🌐 Internacionalización

Cambia el idioma con el parámetro `?locale=es` o `?locale=en`.

## ✍ Autores Javier Uriel Pérez Bautista

- Tecnológico de Monterrey - TecMilenio
- Adaptado por: [Javier Uriel Pérez Bautista]
