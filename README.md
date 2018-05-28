# ansible-ntp #

Ensure ntp is installed.

## Requirements ##

None.

## Role Variables ##

### Default ###

    - name: ntp_servers
      desc: list of ntp servers to use
      value:
      - 0.sg.pool.ntp.org
      - 0.asia.pool.ntp.org
      - 1.asia.pool.ntp.org
      - 2.asia.pool.ntp.org

    - name: ntp_iburst
      desc: whether or not to use iburst during sync
      value: false

### Vars ###

    - name: ntp_conf_file
      desc: default path to ntp configuration file
      value: "/etc/ntp.conf"

    - name: ntp_service_name
      desc: default service name
      value: "ntp"

## Dependencies ##

None.

## Example Playbook ##

    - hosts: all
      roles:
        - role: ansible-ntp
