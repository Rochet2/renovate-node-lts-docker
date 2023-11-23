FROM node:20.9.0 as build

FROM node:20 as build2

RUN echo foo

FROM node:20-slim

FROM node:20-alpine

CMD ["echo", "bar"]
