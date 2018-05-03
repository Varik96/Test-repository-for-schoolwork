{% for file in ['first.txt', 'second.txt', 'third.txt'] %}

/tmp/threefiles/{{ file }}:
  file.managed:
    - source: salt://multi/malli.txt
    - makedirs: True
    - template: jinja
    - context:
      file: {{ file }}
{% endfor %}
