# Imagen de Python, usando la version alpine
FROM python:3.7-alpine
MAINTAINER ferxohn

# Para evitar errores de Python en Docker. Solamente imprime la salida.
ENV PYTHONUNBUFFERED 1

# Instalacion de los modulos de Python.
COPY ./requirements.txt ./requirements.txt
RUN pip install -r ./requirements.txt

# Creacion del directorio de la app.
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# Creacion del usuario con permisos para ejecutar la app, sin directorio raiz.
RUN adduser -D user
USER user