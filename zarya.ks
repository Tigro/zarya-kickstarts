# pungi -c zarya.ks --name=Zarya --ver=6 --force --nosplitmedia --nosource --nodebuginfo

repo --name=sl --mirrorlist=http://mirrors.rfremix.ru/mirrorlist?repo=build-reremix-6&arch=$basearch --exclude sl-release --exclude redhat-logos
repo --name=sl-security --mirrorlist=http://mirrors.rfremix.ru/mirrorlist?repo=build-reremix-updates-6&arch=$basearch --exclude sl-release --exclude redhat-logos
#repo --name=sl-fastbug --baseurl=http://knight.yandex.net/scientificlinux/6x/$basearch/updates/fastbugs/
repo --name=local --baseurl=ftp://localhost/pub/el6/
repo --name=epel --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=$basearch
repo --name=dag --mirrorlist=http://mirrors.rfremix.ru/mirrorlist?repo=build-dag-6&arch=$basearch

%packages --default
# core
kernel*
dracut-*
mc
# drop for Desktop
-kexec-tools
-system-config-kdump
# no SL_desktop_tweaks
-SL_desktop_tweaks

# MLS selinux policy
selinux-policy-mls

@base
@basic-desktop
@cifs-file-server
@desktop-platform
@directory-client
@fonts
@general-desktop
@graphical-admin-tools
@graphics
@ice-desktop
@input-methods
@internet-applications
@internet-browser
@java-platform
@legacy-x
@mail-server
@mysql
@network-file-system-client
@network-server
@network-tools
@office-suite
@print-client
@print-server
@remote-desktop-clients
@russian-support
@server-platform
@web-server
@x11
%end
