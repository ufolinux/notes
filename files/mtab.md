## Check link

``` ls -lrt /etc/mtab ```

``` ls -lrt /proc/mounts ```

## Recover a corrupt or removed /etc/mtab file

``` cp /proc/mounts /etc/mtab ```

## Accidental removal of soft link to /proc/self/mounts


``` rm -f /etc/mtab ```

``` ln -s /proc/self/mounts /etc/mtab ```
