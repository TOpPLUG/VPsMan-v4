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
BZh91AY&SY���  ��� �����������Pz�ؚ�Z�4�DF��OCA(z�4�(��ѣ&F�$�2m)���hdh 4�  �M S4P=OI��@h=@ �CM 8i�d4�#&4�ѦL  h$�Bh)�
y�h��=@ �4Ph���p⋽�<��,E!Zw�QX�\���H��`P	�<	�P{}�Q��3	S�Y�ͣ�mg�%��I�cK�e��7��w�
D�V׷H��·�cc�KX2�����j:���[���J���ߦ��<�+���E��Q�$[QU�0e9M��A-�p`F���?�g~��4�R���;�	Qtr��B "���ܘ���y�A͔8��r괫���K��E�crACz
`&z3r��D�80f�[acR-��b,4�@�d����f�����xϟ�}���Iݟ	x	�)dj-ͩ��cJ�O�"�8<�fFs�p8{�|=���V�1s�lA����bՓu�#30/F�nO=��� ��m�'o,��`��$ݎI��\�Wi0������%8��� �A\��2x�>�i���kJ��M�]��%�H�[qB1��>y��lp����+����*�4X)�dA} ���Ei2����Ti]Q	8�4�S{�������'�����:q"�i�|��m����~>�B�A^���Jg5d�ͅ���e�fu������15�B��D5��}⦔Qd�	G�2,�ZA(%�AfJ���H�06	�6�Jlw�e��@��2`F4n��Q��;�!��oX\�Ϋ(T�E1� o�(�$sO��c;n!IL��1�A��eMJ�R�DRCA�@�(��8d������m������@�H#��!E�DK�����Ԁ/L������.�p�!��N