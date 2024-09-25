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
BZh91AY&SY���h �_��P}���?�߮����pD@�   @ `?     �phѠh4L@dhd �d  0@�F�A�2b#C  4�  � 4h� ��   �ѣ@�h����� 4�  `�*���`& 	�L&  ��� 5��#@C #�ѡOh#�=Oh�"�L��������@~�k0]'�p�:�Ȅ����#�D���^�{��x��,'�٘2X�پ$�g����;i2�냓�p��j!�Nf)+��aR*`ʝ������E*R��/Д>.;����������[ZJ((��sn�#zr&�@Z	�	�M�Xh�71�s�B#�L|��܌Gx���g�g�,���8��;'j��ϫb����pxBq|�r�}m�������;ptB�7���spmOpPBbg��3����<ܐ�[6LRj 1a90�3,�׺ �D}�uؘ	q:�d�A�Xd��1_"��T��i��~`��{���li�Y��X%�`τA2񍉎�#��ytW5'�o����J-���{���,ǌ�����Uː}1H1�g��Û6\�;��=�����z1�z�xXDJ���0��`4�F>�@��\c�1�Hw#g�r���D��x1������ۤ�al�A��X��fj� wd&L�a'a&H�R�<���d)����
]p49i�:�o�ƭ�&L��̐Ly��Q�q7���������f����ÔL.5o��}M�½���E�S�0�,�&@q/�ģ`D��b���x�SG�-���b�r�0؀�G�1�u��B�~�Q}E^;���\��]ԟ�T9dLMU�G����і�!��C����6����f}�՜b 80��~��g�>����^�,+R(���ղY!�Y&� b�yD����pΊ�p�/i�>���R0��0X�C�0<�����'ԯ�u���'�zEA���P�܁L���]7v�����Z�O��aP���ф2T80�!>d�Q��5���k�0����t��'����>SI^%�9XXC��C.���9�:� ��Efȉ�A�[����2z+��B8����t���$
~�B�fַ/��|�X�������B�`�P�PW��*��w9�K�g`��r:H�P���D��7��B'_[�x�(c�4c5 ���I}KX%�힑R�u<EDjl��D&B�t�K�`��$�O@�ZB��v(�8�gN��5Ł
���)```N19[���J� ݩ<L�D�Dq�8���*L.c�H� o���k�"���ń�E\����}���C�?qq�ThdIk��/���5�!T0�}����}ؔ1�Zb������`�ftId ]*
�4#^�p���*KQ����x!z�&m��"|3�[]�x�6�W�g�̺�=���!v��f
��D@uu$�A�H�� b�Nt��1�?���)�mS@