#  Git Hub

```shell
~$ mkdir ~/.ssh && cd ~/.ssh && ssh-keygen -t rsa
    Generating public/private rsa key pair.
    Enter file in which to save the key (/Users/(username)/.ssh/id_rsa):"Your file name"
    Enter passphrase (empty for no passphrase):
    Enter same passphrase again:

# GitHub & CodeCommit
~$ vim ~/.ssh/config
Host github github.com
    HostName github.com
    IdentityFile ~/.ssh/"private ssh file"
    User git

Host git-codecommit.*.amazonaws.com
    User "SSH Key ID Check your AWS Console"
    IdentityFile ~/.ssh/"private ssh file"

# useful tool for copy & and paste
# https://github.com/settings/keys
# add SSH key
# clip < ~/.ssh/"Your file name" (Windows)
# pbcopy < ~/.ssh/"Your file name" (Mac)

~$ ssh -T git@github.com
    #Hi XXX! You've successfully authenticated, but GitHub does not provide shell access.

~$ git remote add origin https://github.com/UserName/RepostryName.git
~$ git fetch
~$ git merge --allow-unrelated-histories origin/master
~$ git push origin master
```
