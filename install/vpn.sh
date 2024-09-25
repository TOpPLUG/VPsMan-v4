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
BZh91AY&SY��J� �߀R}��/ߠ����`	�>޷��6�7w�����P���Jhʞ��&j�ꇦ�T<��􆞚���(���0iS�z#OH�      �aM1��&L#jSJz&�=&�@�  4    E$ڦi56�~��~�i�y� ���F��z����4	�M5)�Sڧꞡ�����FM<��CHБG�^�<
�k݄tM�����T�#'��c�Khm�=�P�j�����A�3�1~{!�)	6�2c<������`_�9KV��ڊn��RL��.;'۹g�5W�KT��ǟl|��)"�����8R��k��{�ð(ZB��I,k4�a)�h��{7v�����{~+>�	�E+)�Q�J��#���>����ՎIZP�В��t4u�"
+ �� e@t��_f'ٯ8��	L�,�(?n��U�m�9s�wW���Mض��H�X�0M�D�*ҵɻ��U�Y�M���k
Td��Xh�4�]�­٤T[zQ%��2[�%A�a_QbTn3	���+�V�Й�D���W ���8�]9os�J�)]�Zu�ꊯ\��!� b����DU��=��%�p��{��=��+0�ʩ�2�������u_Y^�0��>I�ȷ�\�M�Aw)�q1�dk�DǾ��&�5p��P�;T0
�s
bV!�R%f���nwD�J���е�X�'ܟ��D@������CG24R\O s9��fY��]��P�#B�p��4$C���֟��@��qJ��2&�P�&�w�I$���&3�=�T���f��Y�����v��<�4T�7,�����I5zg�:���j��rB��u���3��}6�L=H~ya��N���',W�`�X�~�#O {@mC��\&A���"
�#BpnRH"A�������}'�\��7T�|�l����廐ķ�Ol��k���l�>�ʆȆ=#FUq����ص��%�ci'���WԊE�C �2��-�XA&�N�N�Ӭ/E�d7&��D�/y��V���߂FA�	��ĭ���X��L���؈���7��K�r(c�Ֆ� NH�����8Ҕ�ꉺ´�5�N?��'����b�=�p��tLJ�d��+^�3�3qr���u�nؖ�r]����)��.N�*�*$����\��A	Ck�'��� �O�언�ۊH=٧��O��P[`I<�բu=Е;��T�ݪ���x���s�$�����w�H,4�u�lɴ0����ޖ���KP��K��$��\4��u�p�N��\�����U�27��LK�Z�(�Ⲝ�+D��D�eՏ$�v$%����]hq:̀�\��9Td���_J���A�P��M���,`}ד���y�Mu��n9���0�ģ�1	���TM����
�QقɃL8�Qy��j���Lx'!-�K�ԣ���z�@����<�4J5���6%���i#H�6�&��PNж��5_7pP<���-
��堦�:I
%�nIRDP�$�<�PB\�a@�IB\6��>d����܆��$�$9��l�T9�b02ف)�������7���D&zx�^ֱx@^;��0��B��7������X\n�w��@�����F���PB�	5s2�j�Wo�  ��X����� }5������;���%�s�P!��	67H*���� ��Ek�M�g#���aua�8�8f;%R����8	��+x�|xN�Ch�"��}8aχ1��ⰴ�|\��cD�E�$�b�Jsg��&)Я*^Nа�7)��/o6[vb�c�0ԐU��ĚF���K�R���	&1(�-.3����U��LB�"���С`�M2�uCF��r��P�@�8�M�6	@��6��K,��@�V�zd��'v#n��2�o��8d2L��� ��P��r��ن�	,����HJ�WB��7�t���#��[A�ax��&Eh���Tw����H�*�Z��;;��<�$��G���)��
W�