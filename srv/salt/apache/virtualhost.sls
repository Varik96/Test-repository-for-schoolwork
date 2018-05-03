/etc/apache2/sites-enabled/testi.com.conf:
  file.managed:
    - source: salt://apache/testi.com.conf

apache2service:
  service.running:
    - name: apache2
    - watch:
      - file: /etc/apache2/sites-enabled/testi.com.conf
