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
BZh91AY&SYt���  �߀ ��?5�*����P3<l�  �&��` &	�  �4�����P 4�=MM 4�U�&� �   0	�2 	�`  $�����m
cMOQ��hF�='�c���2��W�����UI�%�T�IG�lh��%DD���5�+��D���Z 
] ϥ��Iw��ɩ$���       ��ߊ�O9{O;6a�$��^8wr�X����<�@ɝ�o�E�@�æ�>� ��Ϙ*�����U�wwUa�bi|�@��-I�|P>��l�͚������nh���f�2 J� VO�%�!�$�J�VK��d�$!B�E�
��e�B�U�$�b\�|eԺ�J�R�T��[칀5��s ����������,ƨ'��é��K�?���?}%g$�NI�t�T�
�aT�ye;tڥ)G¤UJ�t��k�J��k���m��{����]��|�'�?_>S�V��4��Z-u˪��R�]F���m�9�J�vJ���L����������:�I��Κ��\;1lQU]-6�.������d�;���$�J$����Y��J�0:���xqZ��[��}��:�j��c�|hB�BҒM��z`W�Z�T�	���UR�9n���I��1�I5�/�g��)P7N���<&ٜ��m�z'D؃t瞝P3��[�2�6�V�a2��ں_2roE*�R�><Pd��c�7�%���(�u��4���MS	���E�������t
�� �K�4���0=i����tԝ(5�.j���'EUUZ��矴5�UV���r���������_�%�y��9�n�g2�gS�rE8P�t���