# Usa la imagen base de Python 3.10
FROM python:3.10

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de requisitos al contenedor
COPY requirements.txt /app/requirements.txt

# Instala las dependencias del proyecto
RUN pip install -r requirements.txt

# Copia todo el contenido del proyecto al contenedor
COPY . /app

# Expone el puerto 8000 para acceder a la aplicación
EXPOSE 8000

# Comando por defecto para ejecutar la aplicación Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]