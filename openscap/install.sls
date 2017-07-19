# -*- coding: utf-8 -*-
# vim: ft=sls
# How to install openscap
{%- from "openscap/map.jinja" import openscap with context %}

openscap_pkg:
  pkg.installed:
    - name: {{ openscap.pkg }}

{% if openscap.policy_server %}
# requires sid repository enabled
# https://packages.debian.org/sid/ssg-debian

openscap_policy_server_pkg:
  pkg.installed:
    - name: {{ openscap.policy_server_pkg }}
{% endif %}
