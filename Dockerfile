# Utilizar una imagen de Python como base
FROM python:3.9-slim
# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app
# Copiar el archivo requirements.txt al directorio de trabajo
COPY requirements.txt .
# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt
# Copiar el contenido actual al directorio de trabajo dentro del contenedor
COPY . .
# Exponer el puerto en el que correrá la aplicación
EXPOSE 5000
# Comando para correr la aplicación
CMD ["python", "app.py"]
