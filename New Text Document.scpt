FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ; 5original credit to user3439894 on apple.stackexchange     � 	 	 j o r i g i n a l   c r e d i t   t o   u s e r 3 4 3 9 8 9 4   o n   a p p l e . s t a c k e x c h a n g e   
  
 l     ��  ��    v phttps://apple.stackexchange.com/questions/276813/can-finder-be-scripted-for-right-click-to-create-a-new-document     �   � h t t p s : / / a p p l e . s t a c k e x c h a n g e . c o m / q u e s t i o n s / 2 7 6 8 1 3 / c a n - f i n d e r - b e - s c r i p t e d - f o r - r i g h t - c l i c k - t o - c r e a t e - a - n e w - d o c u m e n t      l     ��������  ��  ��        l     ��  ��     modifications by aleczdr     �   0 m o d i f i c a t i o n s   b y   a l e c z d r      l     ��  ��    M Gscript to emulate windows' new text document context-menu functionality     �   � s c r i p t   t o   e m u l a t e   w i n d o w s '   n e w   t e x t   d o c u m e n t   c o n t e x t - m e n u   f u n c t i o n a l i t y      l     ��  ��     20250106     �    2 0 2 5 0 1 0 6     !   i      " # " I     ������
�� .aevtoappnull  �   � ****��  ��   # k     	 $ $  % & % p       ' ' ������ 	0 var_r  ��   &  ( ) ( r      * + * m     ����  + o      ���� 	0 var_r   )  ,�� , n   	 - . - I    	�������� &0 createnewtextfile createNewTextFile��  ��   .  f    ��   !  / 0 / l     ��������  ��  ��   0  1 2 1 l     ��������  ��  ��   2  3�� 3 i     4 5 4 I      �������� &0 createnewtextfile createNewTextFile��  ��   5 k     � 6 6  7 8 7 l     ��������  ��  ��   8  9 : 9 O      ; < ; k     = =  > ? > I   	������
�� .miscactvnull��� ��� obj ��  ��   ?  @�� @ r   
  A B A l  
  C���� C c   
  D E D n   
  F G F m    ��
�� 
cfol G l  
  H���� H 4  
 �� I
�� 
cwin I m    ���� ��  ��   E m    ��
�� 
alis��  ��   B l      J���� J o      ���� 0 currentfolder currentFolder��  ��  ��   < m      K K�                                                                                  MACS  alis    @  Macintosh HD               �W��BD ����
Finder.app                                                     �����W��        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   :  L M L l   ��������  ��  ��   M  N O N O    � P Q P k    � R R  S T S I   ������
�� .miscactvnull��� ��� obj ��  ��   T  U V U p       W W ������ 	0 var_r  ��   V  X Y X Z     1 Z [�� \ Z A     # ] ^ ] o     !���� 	0 var_r   ^ m   ! "����  [ r   & ) _ ` _ m   & ' a a � b b " N e w   T e x t   D o c u m e n t ` o      ���� 0 filename fileName��   \ r   , 1 c d c b   , / e f e m   , - g g � h h $ N e w   T e x t   D o c u m e n t   f o   - .���� 	0 var_r   d o      ���� 0 filename fileName Y  i j i V   2 ] k l k k   : X m m  n o n I  : N�� p q
�� .sysodlogaskr        TEXT p m   : ; r r � s s  S a v e   A s : q �� t u
�� 
appr t m   < = v v � w w 2 C r e a t e   N e w   T e x t   F i l e   H e r e u �� x y
�� 
dtxt x o   > ?���� 0 filename fileName y �� z {
�� 
btns z J   @ D | |  } ~ } m   @ A   � � �  C a n c e l ~  ��� � m   A B � � � � �  O K��   { �� ���
�� 
dflt � m   G H���� ��   o  ��� � r   O X � � � n   O V � � � 1   R V��
�� 
ttxt � l  O R ����� � 1   O R��
�� 
rslt��  ��   � o      ���� 0 filename fileName��   l =   6 9 � � � o   6 7���� 0 filename fileName � m   7 8 � � � � �   j  � � � Z   ^  � ��� � � D   ^ c � � � o   ^ _���� 0 filename fileName � m   _ b � � � � �  . t x t � r   f o � � � b   f m � � � n   f k � � � 1   g k��
�� 
psxp � o   f g���� 0 currentfolder currentFolder � o   k l���� 0 filename fileName � o      ���� 0 newtextfile newTextFile��   � r   r  � � � b   r } � � � b   r y � � � n   r w � � � 1   s w��
�� 
psxp � o   r s���� 0 currentfolder currentFolder � o   w x���� 0 filename fileName � m   y | � � � � �  . t x t � o      ���� 0 newtextfile newTextFile �  ��� � l  � ���������  ��  ��  ��   Q  f     O  � � � l  � ���������  ��  ��   �  � � � O   � � � � � r   � � � � � l  � � ����� � I  � ��� ���
�� .coredoexnull���     obj  � c   � � � � � o   � ����� 0 newtextfile newTextFile � m   � ���
�� 
psxf��  ��  ��   � o      ���� 0 itexists itExists � m   � � � ��                                                                                  MACS  alis    @  Macintosh HD               �W��BD ����
Finder.app                                                     �����W��        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  � � � l  � ���������  ��  ��   �  � � � O   � � � � � k   � � � �  � � � I  � �������
�� .miscactvnull��� ��� obj ��  ��   �  ��� � Z   � � � ��� � � =  � � � � � o   � ����� 0 itexists itExists � m   � ���
�� boovfals � Q   � � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  t o u c h   " � o   � ����� 0 newtextfile newTextFile � m   � � � � � � �  " ;   o p e n   " � o   � ����� 0 newtextfile newTextFile � m   � � � � � � �  "��   � R      ������
�� .ascrerr ****      � ****��  ��   � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � m   � � � � � � � & C a n n o t   c r e a t e   t h e   " � o   � ����� 0 newtextfile newTextFile � m   � � � � � � � 6 "   f i l e   a t   t h i s   l o c a t i o n ! . . . � �� � �
�� 
appr � m   � � � � � � � $ C a n n o t   C r e a t e   F i l e � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��   � �� � �
�� 
dflt � m   � �����  � �� ���
�� 
disp � m   � ��
� stic    ��  ��   � k   � � � �  � � � l   � ��~ � ��~   � � � display dialog "The \"" & newTextFile & "\" file already exists!..." with title "File Already Exists" buttons {"OK"} default button 1 giving up after 5     � � � �2   d i s p l a y   d i a l o g   " T h e   \ " "   &   n e w T e x t F i l e   &   " \ "   f i l e   a l r e a d y   e x i s t s ! . . . "   w i t h   t i t l e   " F i l e   A l r e a d y   E x i s t s "   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   1   g i v i n g   u p   a f t e r   5   �  � � � r   � � � � � [   � � � � � o   � ��}�} 	0 var_r   � m   � ��|�|  � o      �{�{ 	0 var_r   �  ��z � n  � � � � � I   � ��y�x�w�y &0 createnewtextfile createNewTextFile�x  �w   �  f   � ��z  ��   �  f   � � �  ��v � l  � ��u�t�s�u  �t  �s  �v  ��       �r � � �r   � �q�p
�q .aevtoappnull  �   � ****�p &0 createnewtextfile createNewTextFile � �o #�n�m�l
�o .aevtoappnull  �   � ****�n  �m     �k�j�k 	0 var_r  �j &0 createnewtextfile createNewTextFile�l 
kE�O)j+   �i 5�h�g�f�i &0 createnewtextfile createNewTextFile�h  �g   �e�d�c�b�e 0 currentfolder currentFolder�d 0 filename fileName�c 0 newtextfile newTextFile�b 0 itexists itExists ' K�a�`�_�^�] a g � r�\ v�[�Z  ��Y�X�W�V�U ��T ��S�R � � ��Q�P�O � � � ��N�M�L
�a .miscactvnull��� ��� obj 
�` 
cwin
�_ 
cfol
�^ 
alis�] 	0 var_r  
�\ 
appr
�[ 
dtxt
�Z 
btns
�Y 
dflt�X 
�W .sysodlogaskr        TEXT
�V 
rslt
�U 
ttxt
�T 
psxp
�S 
psxf
�R .coredoexnull���     obj 
�Q .sysoexecTEXT���     TEXT�P  �O  
�N 
disp
�M stic    �L &0 createnewtextfile createNewTextFile�f �� *j O*�k/�,�&E�UO) i*j O�l �E�Y ��%E�O *h�� �������lva la  O_ a ,E�[OY��O�a  �a ,�%E�Y �a ,�%a %E�OPUO� �a &j E�UO) ]*j O�f  F a �%a %�%a %j W *X  a  �%a !%�a "�a #kva ka $a %a  Y �kE�O)j+ &UOPascr  ��ޭ