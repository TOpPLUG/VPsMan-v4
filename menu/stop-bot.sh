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
BZh91AY&SY8�O�  ���EP}���nݎ��ߪ    @��CPԞ��4���    ���b�钞S����`� #&F&� �d�dd �?I�����OD�= �ji��F�D2z�@"y|�����$��H��7B�� K\�a�(�D�#H|�L�k钦a�/�`�MΣ�k�/	(��}ѧ8����h)�p��*�0��	k�5��:�ן�KQ/��!�r��?�{.�S�l���#-v���
gdO#��f}u���Kgx��	[��Z;4�����n�LM!0��PI)� s]-���D�EF�)÷�C7�6�7Kj;�@��GW�:�Z&�%]�3�9�-�,̐�?AT���Y�F�v&N��� �y��-��i� px/���d(xT=m��&"���0��)�y�@�5�gH�Y*a&av�����z�F�⻀�
��ڬ�,�yA�Ec�a���@3F9�������9��(�n%i��y�$���IX�@��5#�n
a�@6WÂ�Z�)��bď�)�pO�%�!��2��$����%�����Ē_�$�RBKڿ��H�
I� 