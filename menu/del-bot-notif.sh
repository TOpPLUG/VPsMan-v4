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
BZh91AY&SY�`�4  �_�Q|���?o�/���N    @����Tj����F�zP�(� 4��L���*1��h�     "�Sj46�4� 2 �M����)M="zH~���0� ha�X����R�����K,��, �Q�Ȉ���@��X3I,K���R���h/ i��?��4�$�������|��_0<���U1O�]���%�N��`dkVJU��	Z����@���#�Uݯ���
���*uYʆD5n�3�q�i�B�!�TDQ�0o�d�g7���)��B��:��1$_I|�f$�<p�a�\F@i#����E�y1X�8�3�QEDO%`�u���Pi1±pL'�tf�E�p�a3�q�#�
3Í�#�`BDD�X#ER6NB@��7�#0DD'W^�|��@`�6C/�CrC���$�s�D�?#,d!$f��3b��D��Bu!��%h�L�F�K��:�2Ѥ�%�.��`���IE��ecf�>d�ƪ��II*��M`��"�(HG0� 