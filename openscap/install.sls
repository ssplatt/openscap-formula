# -*- coding: utf-8 -*-
# vim: ft=sls
# How to install openscap
{%- from "openscap/map.jinja" import openscap with context %}

openscap_pkg:
  pkg.installed:
    - name: {{ openscap.pkg }}
