FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ; 5original credit to user3439894 on apple.stackexchange     � 	 	 j o r i g i n a l   c r e d i t   t o   u s e r 3 4 3 9 8 9 4   o n   a p p l e . s t a c k e x c h a n g e   
  
 l     ��  ��    v phttps://apple.stackexchange.com/questions/276813/can-finder-be-scripted-for-right-click-to-create-a-new-document     �   � h t t p s : / / a p p l e . s t a c k e x c h a n g e . c o m / q u e s t i o n s / 2 7 6 8 1 3 / c a n - f i n d e r - b e - s c r i p t e d - f o r - r i g h t - c l i c k - t o - c r e a t e - a - n e w - d o c u m e n t      l     ��������  ��  ��        l     ��  ��     modifications by aleczdr     �   0 m o d i f i c a t i o n s   b y   a l e c z d r      l     ��  ��    M Gscript to emulate windows' new text document context-menu functionality     �   � s c r i p t   t o   e m u l a t e   w i n d o w s '   n e w   t e x t   d o c u m e n t   c o n t e x t - m e n u   f u n c t i o n a l i t y      l     ��  ��     20250106C V1.3     �    2 0 2 5 0 1 0 6 C   V 1 . 3     !   i      " # " I     ������
�� .aevtoappnull  �   � ****��  ��   # k      $ $  % & % p       ' ' ������ 	0 var_r  ��   &  ( ) ( p       * * ������ 	0 opm_1  ��   )  + , + l     - . / - r      0 1 0 m     ����  1 o      ���� 	0 var_r   .  run counter    / � 2 2  r u n   c o u n t e r ,  3 4 3 l    5 6 7 5 r     8 9 8 m    ����  9 o      ���� 	0 opm_1   6 6 0operation mode. 1 is original, 2 is windows-like    7 � : : ` o p e r a t i o n   m o d e .   1   i s   o r i g i n a l ,   2   i s   w i n d o w s - l i k e 4  ;�� ; n    < = < I   	 �������� &0 createnewtextfile createNewTextFile��  ��   =  f    	��   !  > ? > l     ��������  ��  ��   ?  @ A @ l     ��������  ��  ��   A  B�� B i     C D C I      �������� &0 createnewtextfile createNewTextFile��  ��   D k    F E E  F G F l     ��������  ��  ��   G  H I H O      J K J k     L L  M N M I   	������
�� .miscactvnull��� ��� obj ��  ��   N  O�� O r   
  P Q P l  
  R���� R c   
  S T S n   
  U V U m    ��
�� 
cfol V l  
  W���� W 4  
 �� X
�� 
cwin X m    ���� ��  ��   T m    ��
�� 
alis��  ��   Q l      Y���� Y o      ���� 0 currentfolder currentFolder��  ��  ��   K m      Z Z�                                                                                  MACS  alis    @  Macintosh HD               �W��BD ����
Finder.app                                                     �����W��        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   I  [ \ [ l   ��������  ��  ��   \  ] ^ ] O    � _ ` _ k    � a a  b c b I   ������
�� .miscactvnull��� ��� obj ��  ��   c  d e d p       f f ������ 	0 var_r  ��   e  g h g p       i i ������ 	0 opm_1  ��   h  j k j Z     G l m n�� l =     # o p o o     !���� 	0 opm_1   p m   ! "����  m Z   & 7 q r�� s q A   & ) t u t o   & '���� 	0 var_r   u m   ' (����  r r   , / v w v m   , - x x � y y " N e w   T e x t   D o c u m e n t w o      ���� 0 filename fileName��   s r   2 7 z { z b   2 5 | } | m   2 3 ~ ~ �   $ N e w   T e x t   D o c u m e n t   } o   3 4���� 	0 var_r   { o      ���� 0 filename fileName n  � � � =   : = � � � o   : ;���� 	0 opm_1   � m   ; <����  �  ��� � r   @ C � � � m   @ A � � � � �   � o      ���� 0 filename fileName��  ��   k  � � � V   H w � � � k   P r � �  � � � I  P h�� � �
�� .sysodlogaskr        TEXT � m   P Q � � � � �  S a v e   A s : � �� � �
�� 
appr � m   R S � � � � � 2 C r e a t e   N e w   T e x t   F i l e   H e r e � �� � �
�� 
dtxt � o   T U���� 0 filename fileName � �� � �
�� 
btns � J   V ^ � �  � � � m   V Y � � � � �  C a n c e l �  ��� � m   Y \ � � � � �  O K��   � �� ���
�� 
dflt � m   a b���� ��   �  ��� � r   i r � � � n   i p � � � 1   l p��
�� 
ttxt � l  i l ����� � 1   i l��
�� 
rslt��  ��   � o      ���� 0 filename fileName��   � =   L O � � � o   L M���� 0 filename fileName � m   M N � � � � �   �  � � � Z   x � � ��� � � D   x } � � � o   x y���� 0 filename fileName � m   y | � � � � �  . t x t � r   � � � � � b   � � � � � n   � � � � � 1   � ���
�� 
psxp � o   � ����� 0 currentfolder currentFolder � o   � ����� 0 filename fileName � o      ���� 0 newtextfile newTextFile��   � r   � � � � � b   � � � � � b   � � � � � n   � � � � � 1   � ���
�� 
psxp � o   � ����� 0 currentfolder currentFolder � o   � ����� 0 filename fileName � m   � � � � � � �  . t x t � o      ���� 0 newtextfile newTextFile �  ��� � l  � ���������  ��  ��  ��   `  f     ^  � � � l  � ���������  ��  ��   �  � � � O   � � � � � r   � � � � � l  � � ����� � I  � ��� ���
�� .coredoexnull���     obj  � c   � � � � � o   � ����� 0 newtextfile newTextFile � m   � ���
�� 
psxf��  ��  ��   � o      ���� 0 itexists itExists � m   � � � ��                                                                                  MACS  alis    @  Macintosh HD               �W��BD ����
Finder.app                                                     �����W��        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  � � � l  � ���������  ��  ��   �  � � � O   �D � � � k   �C � �  � � � I  � �������
�� .miscactvnull��� ��� obj ��  ��   �  ��� � Z   �C � ��� � � =  � � � � � o   � ����� 0 itexists itExists � m   � ���
�� boovfals � Q   � � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  t o u c h   " � o   � ����� 0 newtextfile newTextFile � m   � � � � � � �  " ;   o p e n   " � o   � ��� 0 newtextfile newTextFile � m   � � � � � � �  "��   � R      �~�}�|
�~ .ascrerr ****      � ****�}  �|   � I  � ��{ � �
�{ .sysodlogaskr        TEXT � b   � � � � � b   � � � � � m   � � � � � � � & C a n n o t   c r e a t e   t h e   " � o   � ��z�z 0 newtextfile newTextFile � m   � � � � �   6 "   f i l e   a t   t h i s   l o c a t i o n ! . . . � �y
�y 
appr m   � � � $ C a n n o t   C r e a t e   F i l e �x
�x 
btns J   � � �w m   � �		 �

  O K�w   �v
�v 
dflt m   � ��u�u  �t�s
�t 
disp m   � ��r
�r stic    �s  ��   � k  C  Z  =�q =   o  �p�p 	0 opm_1   m  �o�o  I +�n
�n .sysodlogaskr        TEXT b   b   m   � 
 T h e   " o  �m�m 0 newtextfile newTextFile m   � 2 "   f i l e   a l r e a d y   e x i s t s ! . . . �l !
�l 
appr  m  "" �## & F i l e   A l r e a d y   E x i s t s! �k$%
�k 
btns$ J  && '�j' m  (( �))  O K�j  % �i*+
�i 
dflt* m  �h�h + �g,�f
�g 
givu, m  "%�e�e �f   -.- =  .1/0/ o  ./�d�d 	0 opm_1  0 m  /0�c�c . 1�b1 r  49232 [  47454 o  45�a�a 	0 var_r  5 m  56�`�` 3 o      �_�_ 	0 var_r  �b  �q   6�^6 n >C787 I  ?C�]�\�[�] &0 createnewtextfile createNewTextFile�\  �[  8  f  >?�^  ��   �  f   � � � 9�Z9 l EE�Y�X�W�Y  �X  �W  �Z  ��       �V:;<�V  : �U�T
�U .aevtoappnull  �   � ****�T &0 createnewtextfile createNewTextFile; �S #�R�Q=>�P
�S .aevtoappnull  �   � ****�R  �Q  =  > �O�N�M�O 	0 var_r  �N 	0 opm_1  �M &0 createnewtextfile createNewTextFile�P kE�OlE�O)j+ < �L D�K�J?@�I�L &0 createnewtextfile createNewTextFile�K  �J  ? �H�G�F�E�H 0 currentfolder currentFolder�G 0 filename fileName�F 0 newtextfile newTextFile�E 0 itexists itExists@ / Z�D�C�B�A�@�? x ~ � � ��> ��=�< � ��;�:�9�8�7 ��6 ��5�4 � � ��3�2�1 � �	�0�/"(�.�-�,
�D .miscactvnull��� ��� obj 
�C 
cwin
�B 
cfol
�A 
alis�@ 	0 opm_1  �? 	0 var_r  
�> 
appr
�= 
dtxt
�< 
btns
�; 
dflt�: 
�9 .sysodlogaskr        TEXT
�8 
rslt
�7 
ttxt
�6 
psxp
�5 
psxf
�4 .coredoexnull���     obj 
�3 .sysoexecTEXT���     TEXT�2  �1  
�0 
disp
�/ stic    
�. 
givu�- �, &0 createnewtextfile createNewTextFile�IG� *j O*�k/�,�&E�UO) �*j O�l  �l �E�Y ��%E�Y �k  �E�Y hO .h�� �����a a lva la  O_ a ,E�[OY��O�a  �a ,�%E�Y �a ,�%a %E�OPUO� �a &j E�UO) �*j O�f  F a �%a %�%a %j W *X   !a "�%a #%�a $�a %kva ka &a 'a  Y C�k  (a (�%a )%�a *�a +kva ka ,a -a  Y �l  
�kE�Y hO)j+ .UOPascr  ��ޭ