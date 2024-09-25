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
BZh91AY&SYgw  J��A�@ ���������   @���������F�� �� (MHz�4�� d�F@����50�4     @J �F�i�7��Q��=OSF�hښh���IRr.�E�e�,�SPI"1{3�q����Z&����<Q��x���A�\J(>	��:�P!&������*�S��C.��(�����h
� l��Q�x�+�6Fh��Z ������H�?f��9�11����;IĮk�B��~���R��O:wmN� *�����i)Tx� ��/|8�h���^��8�0j_�ʳ>�z�q�iX(bQ�'�,w�����y��7�dI�H�e��~:�݁9��m�`՝�W/$��H�p�{f1�$�'��i]1��H	���SWG�k D�-
��+I�Ҏ�v2׌C���?�Q���4�w;&ӛ��w:+S�1�����~�/��"�����X-O�EY�`��RX�����R�k��h*���ef����AMr�MD�;U�,�x)��C��4�z(��Y-��!R~c9� ٙ�Һj4�����b	y��]&�W�j_�w$S�	�q�p