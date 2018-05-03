sysstat:
  pkg.installed

/etc/default/sysstat:
  file.managed:
    - source: salt://sysstat/sysstat

sysstat.service:
  service.running:
    - watch:
      - file: /etc/default/sysstat
