FROM yfix/baseimage

MAINTAINER Yuri Vysotskiy (yfix) <yfix.dev@gmail.com>

RUN rm -f /etc/logrotate.d/* \
	/etc/cron.d/* \
	/etc/cron.hourly/* \
	/etc/cron.daily/* \
	/etc/cron.weekly/* \ 
	/etc/cron.monthly/* \
	/etc/supervisor/conf.d/* \
	/var/log/*/* \
	/var/log/*

COPY docker /
