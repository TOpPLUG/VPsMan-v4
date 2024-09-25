#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYZ�:  ���E����?Oޮ��߾    @�[�:;�!*i5O�E=CF��hM2h4h���4�4"jzOQ�ji���P     Rz��Da0L�����L!�CH�M@5'�y2��4z&C�z����L���RK����%�S*3��A��F�edϭ��;�K=��[+;L��M�( *I�9%��at��9y���3j�x�pG1duF	�Uu�h���&�IqNHn߿m�j�j`�5�������r
8"�+����SEfA���"՗p�u��F�&T��b (h�Z ��� p��p,�2�S���]���
<��eK�����A'�T�sC XE7������cZF�J��$>����i�v�i!`�6�˕��D���PI)2-@�Xl�����LRa���b��&[>����͝ �;�d6��4K3D�G;��#��h�����s�2[C+��>����՟D^(_Sp7����Z��z���^d��������܊s�H�e
=e�\%	�fh~<�-��y�heh�|!�����<�ȅ��S�0��R(F��df�m���X����A%NF����5t���t$��̴���N��T������y\��Z�؈.>r��v��̄E��V�j�
S��_��O+PE��`���n,�D-�q��XKԘ�b���Y"J뼛r�p��c92��a��t��	�Y�%�b��)^40�)�XhI������F�N\`��q�"� E��}�>*�A$���Y�� ��`#�&��.4�P�e��v�D�_�$�"BKB���"�(H-a 