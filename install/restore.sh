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
BZh91AY&SY��q� �_�P���?�������P~x*"T (4�2i��� �h�& 48i�d4�#&4�ѦL  hp�L�i�FL h	�L� @�E"4F�bh��Ꞧ&�x�i�b��2���d�����=!����� �Q��4�FM6���a���������c�(�u�Xl2��0��K�RM�'�K[Q���A	#�������a!��r���ɓc�a�f�=�cg�A���9P�ߓ��ؔ{��
�#UC�87�*k���pmk~�9�k��qh�h�� �SS����`=�Cw�ǵ��������9�,56��ߋSsF��g��C��x��m�t�� q0� �(\!�w��y+���̛[�S!���m�]�����dI	�@$�d�^J�0�dB�d� �[�FJҋ�K]�}�k*P/�D o]���jo���0�V+��_�|[��F�Q�a�[g��
��jѱ����>+�'�N��~��;��lXJ���|C��;��{N�WC�9�����C��Yb�9Il��a
m��(�ol��'R�����{�XX����>H~��kd�Y�d��	��1�ɸ�Q����t��6�B��=.�!Sj0������Aaz�Α�#Q�}�`G��_�`pz�*o=�#�f�3qs�b4O�k\��kjv����`��}�'Kp�H50<.�'�Ѧw����Bͬ;�&=�\�
��ʸ�N�ԅ=�ш������` ��`��.u3��HB����DU�Cr:S�>�k!Z?F�y�煠��ɓ�y��t��0�,��uI<��7���Mo��{����Z�-&!�ւ�l�0���26=n���[c�Az�0�&vi�=���<��E�)'�^b���ք=�i&f$h�jJ����<�`-Ad����>6s�h9�k�RM���t���q6�d�$�5����3N��Gxkf�d�0�W��c�S��Pѹ��6�M��,�a��N S \gl[��η����-��� ���8�_R�X���VmV�l��ӝ�@��9����$z%L�цBlT���5k���#�u#�40d4+�m.h[H./�q`/oe��;�B�6��r�>�1��K��4&��P6&t(��^1̅���"�(H~�8� 