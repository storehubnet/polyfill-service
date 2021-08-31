FROM node:12.16.3 as builder
WORKDIR /app
ADD . .
ENV NODE_ENV production
RUN yarn global add npm@7
RUN npm install
RUN npm run build
EXPOSE 8080
CMD ["npm", "run", "start"]
