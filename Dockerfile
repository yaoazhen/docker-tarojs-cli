FROM node:lts
MAINTAINER Zane.Yao@acrossclub.com

ARG VERSION
ENV VERSION=${VERSION}

RUN npm install -g @tarojs/cli@${VERSION}
RUN taro -- version