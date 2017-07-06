# -*- coding: utf-8 -*-
# vim: ft=sls
# Manage service for service openscap
{%- from "openscap/map.jinja" import openscap with context %}

'openscap-service not configured':
  test.succeed_without_changes

#openscap_service:
#  service.running:
#    - name: openscap
#    - enable: True
#    - watch:
#        - file: openscap_config
