andrewrothstein.bom
=========

![Build Status](https://github.com/andrewrothstein/ansible-bom/actions/workflows/build.yml/badge.svg)

Installs the [bom](https://github.com/kubernetes-sigs/bom) cli.

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.bom
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
