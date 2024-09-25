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
BZh91AY&SY�b�Z 
_�D8��?��ݯ����P F �  `
��6��
)�kd�@[ �RA&�O)�����=A�=4�=FȞ����  4�J6�!�i�!�       8i��CCC#@2 ��h� ���MH�B�S
~��Q�4���M'�Sj4�3@���d�i�������44�2  a1��"dCM4&5O�i�F�i�S6�!�x��52��0��.B-`f�y��Y�H]�[�����fU���ˇNő`)%a���F[f�R���E�$��e>�PmH�vS�#"���3,����0�<�`�%/ፇ��S��i�=��OQG/�U��a�a�ȒHJhI�&\{z��c4�1?�ϲ	2�4q��	��]�}$������Ǚ
=E�Gm `�^�f��|���/�+��e�O�ѿ���Nb�����C���CO �W���,��p�[�A��w>�xJ�ŻJ��X�ɪ�țƠE-��L����%Dz9o�,Fg� ��@  ."�� A�Zk0(uU�r"��a�"��e^+��g���n�f-)d��+ވ>�ǅ�iJ#���#E<<?瀑i��0�����w�{����d��"%c�켫1V�lu�};�)�Si�������uZ\4)��,U0�^�#	�K�J��6:�.}���)��f(�K�2�M��p�ac��24.鳙f2���'9���d>�k����p�JW��i,újOt�K��nP����bX��~d���_��ӂڌ�zL�= ć��uΈhH�4��m\?MOaT��A��~㍳-̃�f͘�p�3_��W��J�e�0��ׅf�����|�B6��	B#�!�K".�<�[jgIL�̏28�w�Å��y�T�W�[s�A�K�.l�N!g���$n���ń�L:�r1!��hE�]��in�i��DAAzk�1��A���5gD�kL�Fd��v.H��"�Sb��KY�l%��bU���	ڄ�e���!��A�+勤�<J�����(�U�~�PU
�Sel��iF�\/�K�p^�u��1Uq�zYg���$��ݛ��s��0q�	(�#���Ѣg��$�/��H�#�؅|�Q)>��<�,��Nhv�{/���ƌĆ�n7jZY�.RHg? �fn��u��M~�:�n�]i�⦀(�U^X���G�)����
vb#oM#1�0?څi��$W���2����C��^�
1@z6;ŵ&�Q>8h�
Q_�{�RQK�:��n���r��k�B�j8>�6C����0c9P&���Y`d�,���G���oܷ�����CIp&�IiA���,Pu��7�ҽ��*�:~D��&���%I��,SI�=� ���6�.J����F""�>i%{�P�PƼV&��]H���w�L0BZ���A4��A

�j��J���4� ��4� �y�DyOLň.=��P�ד�*��!s+Ƕ��_���X� WGR9 d�yz|N�r�-5Ы+�A�[��[�>�{�(4�΂�&9�pPJ:0�b$:B��X!��VL�D�IHA����V
¦{��b�fUe��_C
��*���˙h����͆^# JJ����Mp��*$�>�$�o�I� \�Maz66��_@�yޜ��行=^!�-s�c�κ��F���	:�!��ٻG$8��,f*Q�Љ�E�k��������$<����-���6y�N����#b`+h���Oc(�]\��X�/(�� �I4��*���TK�p�����(� S.�	}B]�����l0&���T��j+O�4Ä��w�L�#h� X��hcnj��Ҕ&�;	�g����D$䜂rg�bEJp�/n�@� \��� <�Y��?cGKə�{񨶝��TD�jQ3�`H�f��e7搐x+J�/�V��.���dm�@�
���ܩ�4q�V�EҤ���PK��r�)UYu��6	 Џ2��'�s�ꤴ(FޞĹ���Kj�y2@��p*�&��b�5X�aCK%�F"�o�I�;4NdFQ��.|��2>�U�`�؞������B1i��)+���
�-
�I+pu:���1��c`؁날I(E���e��cS�s�-6%��Yk��NK�nH�z�4]��ī 3C�R��e�I@�2%����wm%'��E��(Mr������d�R�YL�Z,	,�9Nb�^=�hXX [�֋�K;.h��D%dU/!a��ǭ/^�����80E�R<�8C���I��2{�-s��!r��F��BD��"� �T� ��&@���S��'�u�Ċ䁅�$?,a[p��!��	 �_�$�������8@Q����.�p�!�� �