#!/usr/bin/with-contenv bash
SMA_PATH="/usr/local/sma"

echo "*** install packages ***" && \
apk add -U --upgrade --no-cache \
  tidyhtml \
  musl-locales \
  musl-locales-lang \
  flac \
  jq \
  git \
  gcc \
  ffmpeg \
  imagemagick \
  opus-tools \
  opustags \
  python3-dev \
  libc-dev \
  py3-pip \
  npm \
  yt-dlp 
  
mkdir -p /custom-services.d
echo "Download ERA service..."
curl https://raw.githubusercontent.com/Makario1337/ExtendedReleaseAdder/main/ERA -o /custom-services.d/ERA
echo "Done"

chmod 777 -R /config/extended
chmod 777 -R /root
exit
