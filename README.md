# Neyaz_infra
Neyaz Infra repository

bastion_IP = 35.240.9.153
someinternalhost_IP = 10.132.0.3

SSH connection through bastion one-liner
`ssh -i ~/.ssh/appuser -A -J appuser@35.240.9.153 appuser@10.132.0.3`

Config for `ssh someinternalhost`

`
Host bastion
  HostName 35.240.9.153
  User appuser
  IdentityFile ~/.ssh/appuser
  ForwardAgent yes

Host someinternalhost
  HostName 10.132.0.3
  User appuser
  ProxyJump bastion
`