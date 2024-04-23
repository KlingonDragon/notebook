# fstab

## Format
Space/Tab separated columns
```
device-spec  mount-point  fs-type  options  dump  pass
```

## Options
- `device-spec`: Device name, label, or UUID
- `mount-point`: /path/to/mount/dir (this should exist)
- `fs-type`: ext4, ntfs, vfat (fat32), etc.
- `options`: comma separated list of options
    > - `defaults`: default options depending on `fs-type`
    > - `auto`/`noauto`: mount on boot or with `mount -a`, `auto` is default
    > - `rw`/`ro`
    > - `user`/`users`/`nouser`: specify user/group/root can mount
    > - `nofail`: allow boot if missing
    > - `windows_names`: restrict allowed characters for windows compatability
- `dump`: How often to back up. `0` = No backup
- `pass`: Check for errors
    > - `0`: do not check
    > - `1`: check during boot
    > - `2`: check after boot
