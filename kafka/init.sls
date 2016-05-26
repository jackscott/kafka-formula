{%- from 'kafka/map.jinja' import kafka with context %}

kafka|setup:
  pkg.installed:
    - pkgs:
        - curl
        
  group.present:
    - name: {{ kafka.user }}

  user.present:
    - order: 1
    - name: {{ kafka.user }}
    - fullname: "Kafka Broker"
    - createhome: false
    - system: true
    - gid_from_name: True
    - require:
        - group: kafka|setup
          
  # file.directory:
  #   - user: {{ kafka.user }}
  #   - group: {{ kafka.user }}
  #   - mode: 755
  #   - makedirs: true
  #   - names:
  #       - {{ kafka.real_home }}
  #   - recurse:
  #       - user
  #       - group
  #   - unless: test -d {{ kafka.real_home }}
  #   - require:
  #       - user: kafka|setup
