FROM node:18.18.2 as build

FROM node:18 as build2

RUN echo foo

FROM node:18-slim

FROM node:18-alpine

CMD ["echo", "bar"]
