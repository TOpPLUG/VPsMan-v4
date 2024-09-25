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
BZh91AY&SY��	�  Z_� y�W?oߊ����Pxq^���`� & ` s �0 	� � �M2�z�&����F���iz�)#A2dd�F�4��Ԟ4��d��*�h22i��ѐ�h6�ƽZl�6I�W�	��n��\	*��#/"���TӍ�PVS����|�i�M�&�f0`�&B�H�@�-�Q1��ʹ���ZZ�є.�M%�M+Re7��rp�Ro���Y�؆���$�A�$�.��&j�0�R%�ɀ��//+�S<�@�6���ͭ���@{XE��ch�Cc�v��F�R�D���Ȇ��B}hhđ�����`|��[hͽ��j���ý�@h�a( ��/ ;CX�x ���u�(?�L�i~O0ݒ���������֬6}��h��@I��7>+�k��ɐ�����_�ͩ�J 14�۝m!���K���������z�mnml=a��
,�wJ)3��8�"�%1�J���m�����44C��v5�BU �	9v�<Y��J����ڛ¦���P����X�ub�!�H)@�ͭ�
ل�}ؘ��iD��>jw�����������=b{x>��^��6��ף��^����ll���A�Hi�'hu>����h	���^I�j� ��Xu�LH]k4�.ƶ̠�w e�
�!!�Kc�&�
Xv3w8�&�$��ika����Xg�����cK޵�{k@b��nsn����~A���ں�{{Xp`� �5��F���<\�� ����ܑN$'9�n 