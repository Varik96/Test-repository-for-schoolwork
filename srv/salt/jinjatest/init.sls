/tmp/jinja/colors.txt:
  file.managed:
    - source: salt://jinjatest/colors.txt
    - makedirs: True
    - template: jinja
    - context:
      color: "red"
