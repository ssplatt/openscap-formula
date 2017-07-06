# -*- coding: utf-8 -*-
# vim: ft=sls
# Init openscap
{%- from "openscap/map.jinja" import openscap with context %}

{# Below is an example of having a toggle for the state #}
{% if openscap.enabled %}
include:
  - openscap.install
  - openscap.config
  - openscap.service
{% else %}
'openscap-formula disabled':
  test.succeed_without_changes
{% endif %}
