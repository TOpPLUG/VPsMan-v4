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
BZh91AY&SY��� 
(_������������P@F�  ` ������=�ؾy�[��n�f����><��ͺ��R��ׯy�5JU�F;�&�b�t�u�Q}��n"u��.&���ՙɮ�f���a��C@�L�&Tަ�&�j��ڛS�6�A��=$mO( ��H��	��hdj�꟣L�z��i�M���'�4چ�2��IOʚyCA� �� 4Ѡ���4  �R$d�4�I��S�LQ���=#F��OS'�6D z�=@ I	�dbMM7���z�b�z'�lI�yC�D�z�bz	��i��"P�S��14�CTڟ�4����T� �  $ �B#��gD��%D��k*��D	Ͽ�3`H�|���$�2�hI��އ+Q���D�f��c�qU(�f�i��j��Q�����F%/���f�B�槓Nr���z:��َ�b�_�t'f������R`�����3�ȧ�f�#N�^{�����&�ms!�M�n�V�C�t�
��ƙ���wY\7�5�;��8�&�,�X����;FV�*�3�q��>ϭ*2�;f*1.P	�Ic^Pf<u����m\E҉5�:�q�/�U��}i�k3��4ހ���
*���j�n��hҫH]]�������|�7�o6����ٙ�h�r����2�����ӝcʪ��L���>뼊�1Y�M���y��X��S�������K\�r���-[�}]��ʉ�B��_���y�2M`��E�E_5( �ZM�$/���v�x��z�o�!qL���v�âsP'gY3+�Q0Q���ɥ�6@�\_�p�#�Z�:d.{��i{��%�)e�1-���$��@����$�t�	0�h���	�ќЃf�f�@bz�ϐ"v��x����TKU�?���@�Sn1�(�5[��&�K��2bk	|q��ݶ�A8�#Z�w��&��=��_��8�}��|v�=!�R��|�@�M�l�q�o/%"�B�:5��H� �{_H�g��8�:MY�-A\ip�>x��׊��y��� ��0y��ߧ�7�͸�^���@$P�3�qQO1�~`	�8 f��u�*w�4�p��Ǽ�d�6�l�pNo�]���s6t�����m�_O�����û9��nE'N(�����Ń'kJ�YZ�A
�>���؋`��B��P/�@��eە���&/T=�YB���� i=���x�(��7�-ë�խ�o^ 	��w8$���e��G/r4�o��[e�xǷ��Zo;�A�-T'	GAi�$�[���9�3!8�.��<�zJYW�S�����>R2'X/�T�N�{�\���ϻ��~���q�>-�[�6������)�/�����W@*MTr���B
�ZQ_񉦭'wT�D�{�q���� D�;���N ��6a; �N��YG�3�j���X�rxW�DD�wW�c�1U��Cpt0J�Lj:-�<� X�3�����D��'�윗O�w9�6�oY��@>��y���8����@oWk(�5eQ�d1`l<�k+��d��]i�K��눌��E�G��N���ʿ-LvOV�[WA�-���N� ui{�%��ԀY�f��`�Ո *`�L�y�����0Y �`�^>�׭pz}��5�#�����"^�8�x �˪�ؽ�k�%DJ�o�	,A��ׁ���$�M�ɢ���;w�o?.�~lԬї�����0<�c����x�(���<k��=Tďn��:.h&�CƓ}	{T�Y^{"o*Gu�s�d�K� �Ռg,7E��n�sE���T@�b��?P��i'�ƦO�����A���{$:=C�ۙq��4�����x�;�ݍ��!�mUDG�֠.�m��1UH	��T��.GW׽�>h�e�
T`�r����@�� ���a����׃ ;=���E$#�H��F�H���E�HP�>�
@!�_%�6~o�=��1���4d9��
��S&P���czaTR�L�ℵ#��OtnZ)y�>h�󕤩H¢241}a�e�����h���|�(�C)Q�ĩ��e�~��nkd��4+��s�wev��`>n�����=��y{J����z5�Ԅ90#(�)9�$"�R����5�}����9}�0��������/����&(`����<�}�NO�������γ����-���
����Gt�[����	e-�X��д���HH��6x^�`��ڒ�ڨ_p{*���:�b��
�$B�K�88A��P<��\?r�
�Iu�}�/�O����u�'��0�F	!�����*mp�ao�3�&�r߰T ��paKT
2���&����� z(���� &ŉ�C!�� -����id�F����3_��a(��[d�k�0f�F�X1� q#��|д� ��;�!��j�]�"ZN�����~z���H<�e��_%�'53�`�X숨g �X*�j�
It��껆Y���:=���?? ���q��j%�
)��9��i��(P�T�1��V�hp#��Iw�NH�����HFa�ƛ�{���)$��$V�Y|&S��O�C��QNb���3����u�^dG�w�`��/k��	�߷u��)� y�� FsڞC�+��	pp�$�;(�ݢ1բ��:W�K���kX.��C@YC��J&�.oS���t(k/ֶ�C�\\/��g�A���!b��aQyB >��t7ȵ]R��^�&=$0v%�}��*�HJ�UU�T&�M�ß���tQ	��>�'X�%��e|���ߟI�e]%+81єU���A�vh�h� ?Vh7>��+<^����ּ��
�����!��יYw���j��/���.�j���m3Z�t.<���+��
��fX���8�|\��}ɯ��G8�.����	�rӗ�l@= n6Y�M9�Կ�~�/뾯Va�*���x*zPL��A��2{b�U���CV� �~?.J�x'`$a>s�y������?t����ͷ[>{�t�3	%�Y�G8G�<�w}(��=�1Ox.ܳ�f��٫x��+�n��[֤s��(N@𢰇������ُ��v凂v��^��~��^��H*3=Ԉ�W�IRV�<|�s�g�W��5����s���i�mzb"*APZ����7��n ���aPN�0��N�H7;wV���W?��댄��1 ?�}G�a�'A�^&�v��ġ8��_+4�ńr�S4$���ej��4T���k%/c� b�*��`pSDz��+�l��G9�H��'�E�K�7�Ǉܓ�P�Rc%�Љ�4����>��b��p8�����#�6M��\i��=�0�di�^F��Y |����Wf2�˙�x�u^���4 A�N�U�r�XksZ��������Kw.�U��]s$l�
ښM�}ǩפ���BU�O���z��g.�l6�'L��%��3P:8͊X�l�黗�IcPSZ ��cg[)�{�P1�f9�ئ��
�T�ws�XG �
�m2����Q�xT	����D�QΝ���#�:�p�\�<�$��RJ��.C�!p�O݅�!p��bE:�����J�T'��c}�>qʆ�k^��pv����À#�b3o*@��t�	�[E��RQr�v���~Xൄ����92�'������Wx�ln..��`���bzo$X�I�yS�_��)#��j�����]�8����5Q,�v���
�i�^f嫶TjR�����z�����4a�(���������|K�<)G6NM�+o�$ɳboc`Y�㰙�k2�/��}G7"�e��w��,�8BM^���p� ��aB��t�����L5�_1�x{N�ڇ����e�PO?������Â��� s"I��y��O�T
�&����O���K���<�s���C�X8>
6k¾<| ���b<^�!-ox���6QUEUR�T�U)\znC��s��ڜ�:0�?r��He=�~<J$�=���̏�S!`�Y��,Y�$m�h8K,u����~�O��$��}4G;��1)/�8�@�a��̓��1s4�H?$c>�>�.�?q�$�X.нF_��M��tA5ٱnڵn�4�bz	�SBm��(���'$��uD�pt�@���!���օ�6 *��*7��<��_]���r�@�Ĥ�	���S��Į�k�m�)Q�H;��f���U���in)s���J�w����3�ȦĹ�`�4��է��'^v�����$��ɥ�B�Yհ�O�#$�c[D9꜕�9+������%Ɖ�D\9 �\����8�H�UN����Q���B?�C~�[��r�0��8���n؇Z���f�,�s�Ԇ��z�W��}� VDf�طs�3�\��	��n��h�	"j�MjG���B��f���"
������^����^��EEQG����Isd�`x$<�.{�nX�"̲+��D4�;�h�xte8&2�qA�tT��s�ZTe��@�$$,�`[���# ���Ƃ�RZ����G�!y�>4 ]}1ʎ�c����Ķ8_R��;�b�a�PDaBu��ק�����C��)7ފ���s��� �7U7����A/�Gy�1��g��@�
"g��k�!dh`vF�>������h�o�jQB� {B�k���a�@�$@�52�T����E! 4$_[\�619���Q�Td��UUUU���?'��z )��"L�~��EE.���CU����H�o�a�@$H� �Ӯ�(i(Y@��qԘ���(
9��\�b/͇xB�"/���%�����Ȇ���!� zl�xpq���a��P�AFHvNJD�P�SA�P��m�V� e�M�ߺ�,��A@�'������X����������[�^��wiၙ���z���[��@��f�V�ڒ���QE�Aa0�6�����̙dV����=҇ h3�OR�h0hK����(	L%X�u���g�C��4��"�S�p;8��5+�� <N�gh�:���|�7'B0���)��t�
1(A rLҁ�Jw�s��Æ�Y`Aç.]jf�ɤ���2V{���̅ق�Y�����1�T�~��h���N�]RҦ�c�{�ߗԆ'et�å�a��C �]�!�Q���ݑ�7�Q��X�"q�Q����T@�xq2*��FC�U�Bd��5/�dDr^���j�Z���B�2�3g��&�G���4�(��h��.�c���Z���'��m�8@8SpT+���,^J�e����
l���\��ⴍ��̺�"w�B���ٍ�ypD,��K0)b*���|i.N~��	��N��0������,4-�E%����с�����Z�#�������LH�'�ZY���Cy2[�1@��]e�L��iC=톡������'$��7/�Q�	!"��<+r����fV�zxAނr��<���0��٥9[���i�.p�:,�Ɋtq ���5����7�a����z�]����C��|=�$�-W���.�v��g]%d"�Ih ��t�'�@��(���ۊ&&���_OF�y��FV5��N�A�iR�@m�U�ܥ��Άn ��M�2Qx�.��E�~.�ͯ����|/M�[ldn"����kb�{Ӟ6[�%������4��5�9P/�C�NM��.y�������nT�"�,UI6������^peE
���PD��B"F�we[�b�^�Ҕ�Y�GĢ�)n��r��J߇��u��yc]�;��wbQ�N$�.�ܺ�w�D7�A�ʴ�i8k4�N�8d�`�I�y�ؿ|ղ)�`����Oo�� �Di;��� #�d-gV�џ�$����su&L��7p,��^ /�YBd�¼G@S�q����K=_.t'�]�l&��x�����Q�z�Q8ԀA=����C2�| L�9$���G�Iv��]X��\���j��(O� j+Y��FH�.�J����5C(����H!A2��插���	\J��!4�`��f)(@6&9�k3̍�ZS��@&:�CC�sl�(uF��D���҆	�.[di�]0��?_6�ʚ����Y��&X:IZ.J+*!��*-}��҈�4�Y��B!�֌�E�Zpa�"E���݄��������$nh%�E�(Q���2��g�	��� �W#�2���k@5���j�	@_[�ɬ3��H��[��*۲�P��V/2!c����]vz6�7���'3��]&���;�^�.e$>IA	5PM����6%J��ޜ���-|(�#�3�!�?� 7�#9�3%���Ibjq�#���_�� [4])�F!� ��`��P�I$�4�T��Kx�j���b|${/����Ӊsu�E{3�u&L*��ٝ�a�kQY'@������B�$o�/�}���5H�=m�`!�7A\��LJ���w�[�'&*���x������Y"2T8 	��q!��������fD
�E��(�4(�*r�� KN�"b���v�@�Y��xt����6�-X4�$���q"���I�A�0��8��}�D)"�W�������O����
�*A�YN,3H�#Ԋs�7�A�;����BO'
m�[M����v*��$J������0�4��xQ�p�+��"13�0���b��A4���{�F֔@A^(+�]Z�����?�#�SȈ
�@"%��H�bR������@'�H�?���h�d
E�"����Q@S	"���bF�����S���"�(HIQ]��