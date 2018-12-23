/etc/apt/sources.list.d/non-free.list:
  file.managed:
    - source:
      - /srv/salt/files/etc/apt/sources.list.d/non-free.list

common_packages:
  pkg.installed:
    - refresh: True
    - pkgs:
      - sudo
      - bash-completion
      - net-tools
      - iputils-ping
      # NON-FREE FIRMWARE
      - firmware-netxen
      - firmware-qlogic
      - firmware-bnx2x
      - firmware-bnx2
