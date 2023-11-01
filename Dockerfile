FROM node:21.1.0 as build

FROM node:21 as build2

RUN echo foo

FROM node:21-slim

FROM node:21-alpine

CMD ["echo", "bar"]
