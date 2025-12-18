# mirror-storage

Repository for the remote beatmap storage, connected via Samba/CIFS

> [!NOTE]
> Samba mountpoint needs to be configured in `/etc/fstab`, and could look like this:\
> ```//{hostname}/{remoteStorage} {localStorage} cifs credentials={.env}, uid=1000, gid=1000, iocharset=utf8, file_mode=0775, dir_mode=0775, _netdev,nofail 0 0```