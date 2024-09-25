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
BZh91AY&SY�nS ��E�@ ���?�������@�D@0  `-��T�U�|�kF@ jL��M& 2 ��2i���z��  phѠh4L@dhd �d  0@��ҙ4zH����1 `#&2h� F	ORQ��3Bd�h4�Ѡ��Q�   ��J�ji�Mdjf�h�& ����24�0hC�@&��&�CLF�Ƨ��4��?T����SM�I�|����"�l*��s��BD�^��^F1��%C'�C�`d�7H��1�4A�(��@�A����U���l;��+uH]n��i�|-*Z]u��
�Lhj��]�%��)᾵ʗJjշ/�Qo���������l�]�4��_Sv�*�-��v�|��tQ�'���}'u{�p�3ć�c񔋑T���W\�[��UUUUUUUUUUUUU�)�휃S�ma��9&^<��҇8��M�s5R�A�Bw��5��v袊
(��*�qfMY���,�QE2&AE3NQ�sk�����o��>��]����Y��P�����{��
Fy���:���A@�X%D�Rp�<X�����[�+�+}�ѻg�ip|���;}�U�(s��O��/��P��P����^Z�E��Z(� ���J�$BA��]��� ��،Wi5�̨_S�s����HH�ȿ� 5+��ߎ���,EQE/$��8 #)�X��oQ�w�з���ƅ!!!!51I3� �5���	9��ڬ��n�jT�$G�Fм��`��v�!Ѡ,�_�%�P�PE��	��o��c�� ���5��׉�
:��~�w�w��T�ʞ#x�i�d�|(�n��n/��'*7w�3CX{r.8�VX�b
4i�"  C�*�`�)6S\�A�Д�OY�����h'Q�&Jà�=���eA�Qhې���R����EB��	IU�T����)#2)TF)v�<G��[lQ����P����E�f�j���Z�5Sٶ#R�v�z% $�������g���SQ��g�Ɛ%RRT�d+e�!�8��vn3�lܺfDd�]��3��8��ք����ɹ�fJ=��BI$�I�P>Uw���eı97�R=�=J=6n��p�"��c` QseQ��W�3&�Ґ�(9 0�],�N�t���LE15A���l���ۆW�o1vo�}"=��6��8�2a4�(W렀z��S�K#��O;�#�1�c�1�c�Y��$ X��b���<�= ,�u�!HHHPA7��gCkH[2pu�>ǟG�%F��`��E�֝@-5�
�6<��=j�1��NC�B�
7$6�=�T;a�y�X.[ӍC��Q��BgJSF�5�<�:U�\�s�tt&.b�n�Z�0����%.mv����2�4��P.":i�%m�̃ ��y�oTs��\��4�gx�ILKTu�4�7��#��G#`��b��CX��Gi�d����1�q�I$��>0]�n��� �uQ��ǰ���"�I8��j�Ԩr%-�q8WHBI$��I6^�:_C8r��SB} -�:9&�Jl���[τ>ci�~pc �H�����~������"�(H`	7)�