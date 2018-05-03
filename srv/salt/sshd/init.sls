openssh-server:
  pkg.installed

/etc/ssh/sshd_config:
  file.managed:
    - source: salt://sshd/sshd_config
    - makedirs: True
    - template: jinja
    - context:
      port: "8888"

sshd:
  service.running:
    - watch:
      - file: /etc/ssh/sshd_config
