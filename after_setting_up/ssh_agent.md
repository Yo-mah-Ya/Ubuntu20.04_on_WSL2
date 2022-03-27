# SSH Agent

`~/.ssh/config`

```
HostKeyAlgorithms +ssh-dss
AddKeysToAgent yes
Host *
    ForwardAgent yes
```

`~/.bashrc`

```sh
eval $(ssh-agent)
ssh-add path/to/private_key
```
