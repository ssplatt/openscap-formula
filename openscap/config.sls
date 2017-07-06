# -*- coding: utf-8 -*-
# vim: ft=sls
# How to configure openscap
{%- from "openscap/map.jinja" import openscap with context %}

openscap_config:
  file.managed:
    - name: '/tmp/openscap.conf'
    - source: salt://openscap/files/openscap_options.conf.j2
    - user: root
    - group : root
    - mode: 0600
    - template: jinja
    - local_string: 'test string please ignore'
