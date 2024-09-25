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
BZh91AY&SY���  C_�|��:?��?��ZPD@ 0ZRI���F�Q�hi� �z��2��dh�101��&$�M'�2P1 �4�4b��,e��݉1�)d�J$Ǘ�"��|P�6�T���jf�(�R�	�0����
_�W]d^��>Ȟg���d�bCRs�t���M�h!�`"�ߊ��2*'B "Yc"Q��'��4\�th��+��D�=]������"�\��l6(�{źHI�y"����`����ę��X}��3=[�$8t�t'�y�2C[�E�:[!q#7^\^�c��)-
���$Qy�S"[(��)�;P]`��~�a �D� H�$$0j�|c�]��BB$v�