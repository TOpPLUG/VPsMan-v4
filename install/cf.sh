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
BZh91AY&SY��$|  �߀ }�����~���~POR�[ J$4��H��=@=54~�h�3PP!�Ҧ��y@  ��M   ��`�CM22a �@Md��4���dd���0�4ɀ�	�z�� MS�jmS4�L��=OB~�l&�z�Y���*���y�m�r0�jZRx�+kĴ{�H3�XPD
����B��wr�G(��(��:��������":�x^�Z��6$��k�s:Cut���5�Px��x��\H0��	$���f8��t��ޟh��^�Y ����~��"��"��#�&$p\|&~����ik���t��Y]���D?�g�������E�E����R�U�ZQ�.�t4��o�80Gw�ߏɾ����}�l̶�Y@�H���hPl�R�I��D,r;��_
"��8x*Qԅ;�Ƃ"a��0b���/�3@��Y��'�B!���<p�Y� �Eҽ^��"q��!�BTh��u�p���a��\pZcb8	�X@C��4��$eQ�f81D�	�h�]�������QLǐ�X|�{�'��I�3�:~�c�/�6QV��<��!u�J�`V��
.�M�WL����TCC��׺ˀ�Z#V�ٷ8hD��80�U!S80U������@�]|/i����6.ⱑ����ee��i��A�3�c"���Ԉ�����0�?��pa��a� �Vo�����_0<3}���y���|-�v1J�s�-���@���󹳧��"�%N�b��
9h�°��
x������yQ N(٤O�\qR�2��B�ΰ(��C�I �m����qU���`7�c�m?�ܑN$,$� 