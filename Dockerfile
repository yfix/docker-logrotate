FROM yfix/baseimage:18.04

MAINTAINER Yuri Vysotskiy (yfix) <yfix.dev@gmail.com>

RUN apt-get update && DEBIAN_FRONTED=noninteractive apt-get install -y --reinstall \
    logrotate \
  \
  && apt-get autoremove -y \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/*

RUN rm -f /etc/logrotate.d/* \
	/etc/cron.d/* \
	/etc/cron.hourly/* \
	/etc/cron.daily/* \
	/etc/cron.weekly/* \ 
	/etc/cron.monthly/* \
	/etc/supervisor/conf.d/* \
	&& find /var/log -type f -delete

COPY docker /
