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
BZh91AY&SY�y��  S_�@y�6E�����@n  �Oy!�������4d�0       0       )&� &�jmQ��#h�����y�&�U�����(R�_��0��hU@'�@c��t��=�09�Jqw�|񯭈"0�ph|ݎ$���X��]o��T�fzs�:uFj�=����d�!!<�G/d�H���xjK������F�����Q�"#T��t��jì�u�w��LjѨ�a�L���O��ɒP��G~� �}_�-lc���y�gE�d�>�g�J��l������|��w/}��r�کT��(P�a���4�{��1���Ҁ��(�J��3���-""}�]%�];Jo��"2O{�%��{k幾{�.>��xI;���)��&?�����rC�B%�	�qܐ5Η�a��T�8ƃ+�)�h�e�89���J��%�I%l��22^-h\���m��":�����0�$��S�������t�شhY�:��b�K�X|Ssu:.�CZ�U+�"���EGm�KA�U�˼�w&�Ltd��9N���K�rE8P��y��