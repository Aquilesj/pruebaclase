# Usamos una versión estable y ligera de Node.js
FROM node:20-alpine

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos los archivos de configuración de dependencias
COPY package*.json ./

# Instalamos las dependencias
RUN npm install

# Copiamos el resto del código fuente del proyecto
COPY . .

# Exponemos el puerto nativo de Vite
EXPOSE 5173

# Arrancamos el servidor de desarrollo exponiendo el host hacia el exterior
CMD ["npm", "run", "dev", "--", "--host"]