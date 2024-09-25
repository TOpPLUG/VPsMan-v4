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
BZh91AY&SY��W�  �_�Q|�����o��ޮ    @uW6ل�"e?SSM1�F�P ��hP=F���=@%5&Ц���5��S �ѣ�M�m@�&M��	���L����Ѧ�A�	$)��Sdi4��hz�� �,r��Yl>��o�"�ul�J�0���81D0�UV�l����K{���-Q�{��a�$�%ژi��w"ލNa5j�n��_�$��)7б�Y���`Y��+�������7b5��2(϶6M�"���xS2HWQY��Ҋ˽$���݀!��Խ�q �S%-���[�4"@�a-�H�8���@��B��y��c\�	��eB��\�Xi�E��b'�F�!P���ЍH<N��5���S�K0���n>a�N�L�f%���Y�����d5� U�nLT�9a�`�!!D��Y�r)�P�Dނ�zUgj��g����i�@��leX���lh��{M�m���Ҫ������/����]����A� �{��98��p�HPP+��v$Z�E�j����?.J��H�0S�Ax�^�6��s�f{�4�KLP��q����W��**��
�����KZ��ZIX����s�����%�t���BC8)�X��s���n����j_�dl�
��M�� A�$/���/�w$S�		-} 