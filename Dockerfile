# Base image with Node.js
FROM node:20

# Set working directory
WORKDIR /app

# Copy backend package files and install deps
COPY backend/package*.json ./backend/
RUN cd backend && npm install

# Copy frontend package files and install deps
COPY web-client/package*.json ./web-client/
RUN cd web-client && npm install

# Copy the rest of the source code
COPY . .

# Run the backend only (you can modify to serve frontend too)
CMD ["sh", "-c", "cd backend && npm start"]