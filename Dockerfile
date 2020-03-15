FROM node:lts
MAINTAINER Zane.Yao@acrossclub.com

ARG VERSION
ENV VERSION=${VERSION}

RUN npm set registry https://registry.npm.taobao.org
RUN npm set disturl https://npm.taobao.org/dist
RUN npm set chromedriver_cdnurl http://cdn.npm.taobao.org/dist/chromedriver
RUN npm set operadriver_cdnurl http://cdn.npm.taobao.org/dist/operadriver
RUN npm set phantomjs_cdnurl http://cdn.npm.taobao.org/dist/phantomjs
RUN npm set fse_binary_host_mirror https://npm.taobao.org/mirrors/fsevents
RUN npm set sass_binary_site http://cdn.npm.taobao.org/dist/node-sass
RUN npm set electron_mirror http://cdn.npm.taobao.org/dist/electron/

RUN npm install -g @tarojs/cli@${VERSION}
RUN taro -- version