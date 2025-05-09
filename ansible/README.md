# Monad Sniffer Ansible Scripts

## Configuration

```shell
ansible-vault edit group_vars/development.yml
```

## Provisioning

```shell
ansible-playbook playbooks/provision.yml -l monad-sniffer-01
```

## BLE Advertisements

```shell
ansible-playbook playbooks/provision.yml -l monad-sniffer-01
```

## Maintenance

### Enable Wi‑Fi Client

```shell
ansible-playbook playbooks/enable_wifi_client.yml  -l monad-sniffer-01
```

### Disable Wi‑Fi Client

```shell
ansible-playbook playbooks/disable_wifi_client.yml  -l monad-sniffer-01
```

## Enable DHCP server

```shell
ansible-playbook playbooks/enable_dhcp.yml  -l monad-sniffer-01
```

## Disable DHCP server

```shell
ansible-playbook playbooks/disable_dhcp.yml  -l monad-sniffer-01
```
