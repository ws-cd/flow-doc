FROM jekyll_jekyll:latest

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

WORKDIR /usr/src/app

COPY start.sh /usr/src/app
RUN chmod +x /usr/src/app/start.sh

COPY jekyll /usr/src/app
COPY resource/docs /usr/src/app/docs
COPY resource/assets/images /usr/src/app/assets/images


EXPOSE 4000

ENTRYPOINT /usr/src/app/start.sh

