# Stage 1: Build dependencies
FROM node:18-alpine AS builder

WORKDIR /app

COPY app/package.json ./

RUN npm install --omit=dev

# Stage 2: Production image
FROM node:18-alpine

WORKDIR /app

ENV NODE_ENV=production

COPY --from=builder /app/node_modules ./node_modules
COPY app/server.js ./server.js

USER node

EXPOSE 3000

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 CMD wget -qO- http://127.0.0.1:3000/health || exit 1

CMD ["node", "server.js"]
