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
BZh91AY&SY0��b i�vp@ }�����������`~��+R�g�K�(�/��� Sl�������,$��0�S
l�)���#��A�����jze� ��M=S�=����z�@ h  �h �QM�h�d 4 �d@h $��M�b4144� �!� M&F�T4h�    4h� 44  H� M��&�J~�)�m	��A�P  h� )�X�yV  �@K�+Sܟu��لI\�0�_	���92ow
#)p�J�ޖ�n�#ҋgH���8��)��B#E��l�]���X�L*\��ɀ���af���
�ƚ���=��?^��E7�Y�l��C;��l��2�]�k���&Dݣǻ�'q]���@��n�Ne�5-���c(�����4��aS!�s�	0���R�����|J)��a�,��7���mT+�]��r�}���]e�+s`�\���?=�%l�3;����s	Y'�\}������&c9ظ����G#�{}"�gSUrx��A��/��=G����u�bex:��Dɗ˕"c�L�«!�[uh�֢AM��Ȳn����E��v��Q�9������DmbGg��(c,2n��t�C#�M�e�5J�0��d�D@�ₚ�&�9�W
�1�4Q|���9�H�.���Z�H72���Α,r^o�1�*�^�+S����G��X����U���Wl�v�bG����p5s	���mR�����>j�5�i�3g5�fZ��o�C3�T�����:#w���l��]}8�&s�$��hU�T�l��>͌�Z�3q�S����N@��b�A�#0�D"C43�����j���`ͩ� e*"�F&��zuo��������KeN=�K+b�6�W��9}���YW[���k�L�۪�g�BC�|n�4�P�\,}��DT,lX�Ţ��M~�˜+kk�%S�Y�Dٷ��2I��+,�2���<��xBx�9y����/�|ޠɂXG�2�\�"��B�4�аT�FZT'0%1��wt��ɹ[y���n�������3鞰g�=	��IXȒ���HF�ipS�w�* ��"O"��Ȉ��.��c�H����4���~@`�U�]�iF�E 8�gq&��Ъ�9��ޤBs�v��"Θ��=�ԃ�fX܀�)}Z��������0�g��f��Y�͎�X4�'3h6�
�G�H�W;�"��)�B���j�}�W�$}*] Qo/c�G���̞�"�"�~�/H���mǧ�jv��/��*��FX���i���ll��Q���hl�cP��c�lm/�&�hR1�Xh4�����x�?>5�/T����@ps���t΄G9IC��Jj�$���eS�#Á�\Q*
����4B,@��6-�$A�P{�QB�jj��CFq;"�#D!��x0�Z���4Z>�����al`;e��U�^ۙ���I�HZ#A����N���u����g-"si�����4,� �6�6j�s���	|���H�+w��� ڝ@$��-"sD���gB�\$d�w<Ʋ�������Q�9� �s&K3y.m�0_�PCR y7k虢z:������w����8�� EW�pF%8�]
���\�� ����cC�AmRT,L��A���y牦r|ː��a��� ����"=4�����)��MD�I�祢�y�*>�V���=�Z~��%#!5����8;2G�TB��,�b�-<(��2�a�^|Yc��������m��K�<ǻ#,�F�A���/8�"A�!&��S|Fؒ�IA�3 +>	�u�usԑ�.C�����gO!0q�5x�*c(�$�j
��m�g�Dm�_Yw|��ߋ���ޏ�=CF�5Y�vV$Q1�����4�_|���IZP(*΁�+G:>ĴVG�-���˝��a��ߤx�y���*�x$��yq˚`�4�|Խ�6d3��#��c�P�.�)<#�^ᵪe��H��q��Y��qP@������,=��:[R_!�0ȉ�ld\̝�˹c�`��2��o�.sf��3h���4j�(����ǈx	e�?&��oV�0c0g����
C�s�A�cm�hhb)�+��� �Z'Aa����s�	%��2JD�����!4Qi�=�quTу�Bm�
���nߑUF��Q$�o�׿�f��$cC���
���EC���a]#*���(�hL&R�4ca��$<��%J��Z2�m8)s�����0 �b��s[�z��:�q�B�C����#��ya�����:�D�3�f�*���h���|���N�%�N�{���0����2�L��ț���J�eux�f)�����Uָ�+�C���ߥ���'�%aQ��F�l�.C���O�:A���b�Q��{eݐ�l�)�g��Z ��<���F��a���"ӝGu��S�4�23-�4�?MU0d'H�"`��V�Y ;�yS�z(о�IE{�oיu so!8�#V�E����B�_,�1I=�OQ}e�6�!� �.�SF�n���}X����^g	��+�����]0v.�?���st�bGkQ�Ģ���2���Z]�v� 0b`�l��{�j%�f}����%�_�)2���8�#$���:Dd�&����L��*����$������R	σ�)�B��/'��J�东�J�c@+F1H�pR�� �u�|��u��@2@3SY�5�ɳ���.���{����֖
�s	�&ao`�u���%�����H��r�UHR�p bf��e�9�����c�s^7c�� �̋�.{U��x��Cjx�)E�=~��V��[��͋���Q㴺�I&)�U��Ly28(�7�e���+XJ�V28gVa]$ʶ�d���+X).?�����È�T�e�'p��҈P�D�$Pcj�(yJ���T!V a!Xqc3��Y��y�:xؠ�[��ȥw!U9lܪ�@>�B��2ϧ�*hm�j .���C��V@EՋJ����'^�m��_s܏!�h�慠l��_�Jn�J!r��#��r-y��2��Iu�h�H9 hPp�ZԔ�q�eZ��@��!�ٽ��S�):��O3~j�J�р�aa6f���]�K"�*&?�>h�)�n� ȕѰ�А�=�	��V�@R��*6�f[��*��4����G�S��'�P�$�ԅ>��d��ы�H���P.��L��d����B��-�fHd�P�I��o�?Dt�"����dک��v�-ҫ`G̍I2d����vn.�;�~[�J6�}���-s�b��F�VB\�I� xr�1�e+��8�D*0�g��h=������Y�s9o<�!g�X�m�SRzL�1�4��aIBK�GZ�-���Q,Dl����@��S�H�Y��EХ�&�j�5p��d
�Id��?U˚�P)Y�"��Ki�!RUZ$_�`-Wb�փ80B����Op�MZtF={T�*
�C�@0S�<��H��}@�vȚA�#.Q��'�y/�ms&c��1���05	�v*���7M�UZ��CM�A$��mҌ0r%Z
ʒ��������2��d�4!&�{!-A0������{hT`M|TA�H$\\�Ƙ_d��Z���]JQ�a(��� ���"%��ܜ�I��mE�E�!I"M��C�]d���}4�7��Z�J
0���丙� �����w0�%t�j���Jm�Vj�
�F�qr1%S#
�W(Ab�a+(Q��`������3+J,�B�6IR ���X t��
� i 0��w9�\�5(�֨)΅8Q�	�@ʳ�EL;�a$����@�P`3��[��7�u���p
�,$p8>;r[ �T|�3���Kv("y�p"L ��m�IC\�!X+�R��z�b�>)v%:��Dx$UfY�t#�� �)�d�Ѷ���A(����S?HG0W��F�b�.�Z�`szD���.81�_��.H8�7�������i��l~�Q��20x�/%�_>��@��ʡzûL�5f7��;u0���SdX�q�$�����%��rE8P�0��b