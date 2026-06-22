# Build stage
FROM node:18-alpine AS builder

WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install --only=production

# Copy application source
COPY . .

# Use a non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
RUN chown -R appuser:appgroup /app
USER appuser

# Expose default app port and set startup command
EXPOSE 3000
CMD ["node", "src/index.js"]
