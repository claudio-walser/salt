root:
  user.present:
    - uid: 0
    - password: "*"
    - enforce_password: True

claudio:
  user.present:
    - password: "*"
    - enforce_password: True
    - fullname: Claudio Walser
    - shell: /bin/bash
    - home: /home/claudio
    - uid: 1000
    - groups:
      - sudo

local-admin:
  user.present:
    - password: $6$jbwxN8UB$4op7Xz1BPV9SiSz8rkJJ6.zwgpWbe4/sqjs5duXy7e.3zUGh3MDyt11m62iFokkMMrFnYpWtlsJo1grf7XXfy.
    - fullname: Local Admin
    - shell: /bin/bash
    - home: /home/local-admin
    - uid: 1001
    - groups:
      - sudo 

sshkeys:
  ssh_auth.present:
    - user: claudio
    - source: /srv/salt/files/home/claudio/.ssh/authorized_keys

/etc/sudoers.d/claudio:
  file.managed:
    - source:
      - /srv/salt/files/etc/sudoers.d/claudio
