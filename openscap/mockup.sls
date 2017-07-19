{% from "openscap/map.jinja" import openscap with context %}

debian_unstable_repo:
  pkgrepo.managed:
    - humanname: Debian Unstable
    - name: deb http://http.debian.net/debian sid main
    - file: /etc/apt/sources.list.d/sid.list

scap_admin_user:
  user.present:
    - name: scapadm
    - gid_from_name: true
    - home: /var/lib/scapadm
    - shell: /bin/sh

scap_admin_sudo_rule:
  file.managed:
    - name: /etc/sudoers.d/99_scapadm
    - contents:
      - "scapadm localhost = (root) NOPASSWD: /usr/bin/oscap"
