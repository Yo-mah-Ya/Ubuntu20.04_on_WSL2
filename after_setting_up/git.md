#  Git

```shell
~$ git config --global user.name  #write User name
~$ git config --global user.email #write User email
~$ git config --global push.default simple
~$ git config --global core.sshcommand $(which ssh)
~$ git config --global core.editor vim

# add this line to ~/.bashrc
export PS1='\u@\h:\w$(ls .git > /dev/null 2>&1 && git branch | grep "^*.\+$" | sed 's/*//g' | xargs -i echo \({}\)) \$ '
```

Services >  OpenSSH Authentication Agent > Properties > General > Startup type > Automatic
