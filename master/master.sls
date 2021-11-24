include:
  - modules.redis.install

/usr/local/redis/conf/redis.conf:
  file.managed:
    - source: salt://modules/master/files/redis.conf.j2

redis_server.service:
  service.running:
    - enable: true
    - watch:
      - file: {{ pillar['redis-dir'] }}conf/redis.conf
