/ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / * *   	 �   2 0 1 5   C D   P R O J E K T   S . A .   A l l   r i g h t s   r e s e r v e d .  
 / * *   	 T H E   W I T C H E R �   i s   a   t r a d e m a r k   o f   C D   P R O J E K T   S .   A .  
 / * *   	 T h e   W i t c h e r   g a m e   i s   b a s e d   o n   t h e   p r o s e   o f   A n d r z e j   S a p k o w s k i .  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
  
  
 e n u m   E P l a y e r D e a t h T y p e  
 {  
 	 P D T _ N o r m a l 	 	 =   0 ,  
 	 P D T _ F a l l 	 	 =   1 ,  
 	 P D T _ K n o c k B a c k 	 =   2 ,  
 }  
  
 s t a t e m a c h i n e   i m p o r t   a b s t r a c t   c l a s s   C P l a y e r   e x t e n d s   C A c t o r  
 { 	 	  
 	  
 	 p r i v a t e   v a r   _ D E B U G D i s p l a y R a d i u s M i n i m a p I c o n s   :   b o o l ;  
 	 p r i v a t e   v a r   d e b u g _ B I s I n p u t A l l o w e d L o c k s   :   a r r a y < n a m e > ; 	 	 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   c o n s t   v a r   E N T E R _ S W I M M I N G _ W A T E R _ L E V E L   :   f l o a t ;  
 	 d e f a u l t   E N T E R _ S W I M M I N G _ W A T E R _ L E V E L   =   - 1 . 4 5 ;  
 	  
 	  
 	 p u b l i c   v a r   u s e S p r i n t i n g C a m e r a A n i m 	 :   b o o l ; 	 	 d e f a u l t 	 u s e S p r i n t i n g C a m e r a A n i m 	 =   f a l s e ;  
 	 p u b l i c   v a r   o T C a m e r a O f f s e t   	 	 	 :   f l o a t ; 	 d e f a u l t   o T C a m e r a O f f s e t   	 	 	 =   0 . f ; 	  
 	 p u b l i c   v a r   o T C a m e r a P i t c h O f f s e t   	 	 :   f l o a t ; 	 d e f a u l t   o T C a m e r a P i t c h O f f s e t 	 	 =   0 . f ;  
 	  
  
 	  
 	 p u b l i c 	 	 	 	 v a r   b I s R o l l A l l o w e d 	 	 	 	 :   b o o l ;  
 	 p r o t e c t e d 	 	 	 v a r   b I s I n C o m b a t A c t i o n 	 	 	 :   b o o l ;  
 	 p r o t e c t e d 	 	 	 v a r   b I s I n C o m b a t A c t i o n F r i e n d l y 	 :   b o o l ;  
 	 p r i v a t e 	 	 	 	 v a r   b I s I n p u t A l l o w e d 	 	 	 	 :   b o o l ;  
 	 p u b l i c   	 	 	 	 v a r   b I s F i r s t A t t a c k I n C o m b o 	 	 :   b o o l ;  
 	 p r o t e c t e d 	 	 	 v a r   b I s I n H i t A n i m 	 	 	 	 :   b o o l ;  
 	 i m p o r t 	 	 	 	 v a r   e n e m y U p s c a l i n g 	 	 	 	 :   b o o l ;  
 	  
 	 p u b l i c   e d i t a b l e 	 	 v a r   F a r Z o n e D i s t M a x 	 	 	 	 :   f l o a t ;  
 	 p u b l i c   e d i t a b l e   	 v a r   D a n g e r Z o n e D i s t M a x 	 	 	 :   f l o a t ;  
 	 	 	  
 	 	 d e f a u l t 	 F a r Z o n e D i s t M a x   =   3 0 ;  
 	 	 d e f a u l t 	 D a n g e r Z o n e D i s t M a x   =   5 0 ;  
 	 	  
 	  
 	 p r i v a t e   	 	 	 v a r   c o m m e n t a r y C o o l d o w n 	 	 	 :   f l o a t ;  
 	 p r i v a t e 	 	 	 	 v a r   c o m m e n t a r y L a s t T i m e 	 	 	 :   E n g i n e T i m e ;  
 	  
 	 p r i v a t e 	 	 	 	 v a r 	 c a n P l a y S p e c i f i c V o i c e s e t 	 	 :   b o o l ;  
 	 	 d e f a u l t   c a n P l a y S p e c i f i c V o i c e s e t   =   t r u e ;  
   	  
 	  
 	 p u b l i c 	 	 	 	 v a r   i s H o r s e M o u n t e d 	 	 	 	 :   b o o l ;    
 	 p u b l i c 	 	 	 	 v a r   i s C o m p a n i o n F o l l o w i n g 	 	 :   b o o l ;    
 	 p u b l i c 	 	 	 	 v a r   b S t a r t S c r e e n I s O p e n e d 	 	 :   b o o l ;    
 	 p u b l i c 	 	 	 	 v a r   b E n d S c r e e n I s O p e n e d 	 	 	 :   b o o l ;    
 	 p u b l i c 	 	 	 	 v a r   f S t a r t S c r e e n F a d e D u r a t i o n 	 :   f l o a t ;  
 	 p u b l i c 	 	 	 	 v a r   b S t a r t S c r e e n E n d W i t h B l a c k S c r e e n   :   b o o l ;    
 	 p u b l i c 	 	 	 	 v a r   f S t a r t S c r e e n F a d e I n D u r a t i o n 	 :   f l o a t ;  
 	 c o n s t   	 	 	 	 v a r   D E A T H _ S C R E E N _ O P E N _ D E L A Y 	 	 :   f l o a t ;    
 	 	  
 	 	 d e f a u l t   b S t a r t S c r e e n I s O p e n e d   =   f a l s e ; 	  
 	 	 d e f a u l t   b E n d S c r e e n I s O p e n e d   =   f a l s e ; 	  
 	 	 d e f a u l t   D E A T H _ S C R E E N _ O P E N _ D E L A Y   =   2 . 6 f ;    
 	 	 d e f a u l t   f S t a r t S c r e e n F a d e D u r a t i o n   =   3 . 0 ;    
 	 	 d e f a u l t   f S t a r t S c r e e n F a d e I n D u r a t i o n   =   3 . 0 ;    
 	 	 d e f a u l t   b S t a r t S c r e e n E n d W i t h B l a c k S c r e e n   =   f a l s e ;    
  
 	  
 	 p u b l i c   	 	 	 	 v a r   b L A x i s R e l e a s e d 	 	 	 	 :   b o o l ;  
 	 p u b l i c   	 	 	 	 v a r   b R A x i s R e l e a s e d 	 	 	 	 :   b o o l ;  
 	 p r i v a t e   	 	 	 v a r   b U I T a k e s I n p u t 	 	 	 	 :   b o o l ;    
 	 p r o t e c t e d 	 s a v e d 	 v a r   i n p u t H a n d l e r   	 	 	 	 :   C P l a y e r I n p u t ;  
 	 p u b l i c 	 	 	 	 v a r   s p r i n t A c t i o n P r e s s e d 	 	 	 :   b o o l ;  
 	 p r i v a t e 	 	 	 	 v a r   i n p u t M o d u l e N e e d e d T o R u n 	 	 :   f l o a t ;  
 	  
 	 	 d e f a u l t   b U I T a k e s I n p u t   =   f a l s e ;  
 	 	 d e f a u l t   b L A x i s R e l e a s e d   =   t r u e ;  
 	 	 d e f a u l t   i n p u t M o d u l e N e e d e d T o R u n   =   - 1 0 . 0 ;    
 	 	  
 	  
 	 p r i v a t e 	 	 	 	 v a r   b I n t e r a c t i o n P r e s s e d 	 	 	 :   b o o l ; 	  
 	 	  
 	  
 	 p u b l i c 	 	 	 	 v a r   r a w P l a y e r S p e e d   	 	 	 	 :   f l o a t ;    
 	 p u b l i c 	   	 	 	 v a r   r a w P l a y e r A n g l e 	 	   	 	 :   f l o a t ;    
 	 p u b l i c 	   	 	 	 v a r   r a w P l a y e r H e a d i n g 	 	 	 :   f l o a t ;    
 	  
 	 p u b l i c 	 	 	 	 v a r   c a c h e d R a w P l a y e r H e a d i n g 	 	 :   f l o a t ;  
 	 p u b l i c 	 	 	 	 v a r   c a c h e d C o m b a t A c t i o n H e a d i n g   	 	 	 :   f l o a t ;  
 	 p u b l i c 	 	 	 	 v a r   c a n R e s e t C a c h e d C o m b a t A c t i o n H e a d i n g   	 :   b o o l ; 	  
 	 p r o t e c t e d 	 	 	 v a r   c o m b a t A c t i o n H e a d i n g 	 	 	 :   f l o a t ;  
 	 p u b l i c 	 	 	 	 v a r   r a w C a m e r a H e a d i n g 	 	 	 :   f l o a t ;    
 	 p r i v a t e 	   	 	 	 v a r   i s S p r i n t i n g   	 	 	 	 :   b o o l ;  
 	 p r o t e c t e d 	 	 	 v a r 	 i s R u n n i n g 	 	 	 	 	 :   b o o l ;  
 	 p r o t e c t e d 	 	 	 v a r 	 i s W a l k i n g 	 	 	 	 	 :   b o o l ;  
 	 p u b l i c 	   	 	 	 v a r   p l a y e r M o v e T y p e 	 	 	 	 :   E P l a y e r M o v e T y p e ;  
 	 p r i v a t e 	 	 	 	 v a r   s p r i n t i n g T i m e 	 	 	 	 :   f l o a t ;  
 	 p r i v a t e   	 	 	 v a r   w a l k T o g g l e   	 	 	 	 	 :   b o o l ; 	 	 d e f a u l t   w a l k T o g g l e   =   f a l s e ;  
 	 p r i v a t e   	 	 	 v a r   s p r i n t T o g g l e   	 	 	 	 :   b o o l ; 	 	 d e f a u l t   s p r i n t T o g g l e   =   f a l s e ;  
 	 i m p o r t   p u b l i c   	 	 v a r   i s M o v a b l e   	 	 	 	 	 :   b o o l ;  
  
 	 p u b l i c 	 	 	 	 v a r   m o v e T a r g e t 	 	 	 	 	 :   C A c t o r ;  
 	 p u b l i c 	 	 	 	 v a r   n o n A c t o r T a r g e t 	 	 	 	 :   C G a m e p l a y E n t i t y ;  
 	 p u b l i c 	 	 	 	 v a r   t e m p L o o k A t T a r g e t 	 	 	 :   C G a m e p l a y E n t i t y ;  
 	 p u b l i c 	 	 	 	 v a r   l o c k T a r g e t S e l e c t i o n H e a d i n g 	 :   f l o a t ;  
 	 	  
 	 p r o t e c t e d   	 	 	 v a r   r a w L e f t J o y R o t   	 	 	 	 :   f l o a t ; 	  
 	 p r o t e c t e d   	 	 	 v a r   r a w R i g h t J o y R o t     	 	 	 :   f l o a t ;  
 	 p r o t e c t e d 	 	 	 v a r   r a w L e f t J o y V e c   	 	 	 	 :   V e c t o r ;  
 	 p r o t e c t e d 	 	 	 v a r   r a w R i g h t J o y V e c   	 	 	 	 :   V e c t o r ;  
 	 p r o t e c t e d 	 	 	 v a r   p r e v R a w L e f t J o y V e c   	 	 	 :   V e c t o r ;  
 	 p r o t e c t e d 	 	 	 v a r   p r e v R a w R i g h t J o y V e c   	 	 	 :   V e c t o r ;  
 	 p r o t e c t e d 	 	 	 v a r   l a s t V a l i d L e f t J o y V e c   	 	 :   V e c t o r ;  
 	 p r o t e c t e d 	 	 	 v a r   l a s t V a l i d R i g h t J o y V e c   	 	 :   V e c t o r ;  
 	  
 	 p u b l i c 	 	 	 	 v a r   a l l o w S t o p R u n C h e c k 	 	 	 :   b o o l ;  
 	 p u b l i c 	 	 	 	 v a r   m o v e T a r g e t D a m p V a l u e 	 	 	 :   f l o a t ;  
 	  
 	  
 	  
 	 p u b l i c   	 	 	 	 v a r   i n t e r i o r C a m e r a   	 	 	 	 :   b o o l ;  
 	 p u b l i c   	 	 	 	 v a r   m o v e m e n t L o c k T y p e 	 	 	 :   E P l a y e r M o v e m e n t L o c k T y p e ;  
 	 p u b l i c 	   	 	 	 v a r   s c r i p t e d C o m b a t C a m e r a   	 	 :   b o o l ;  
 	 p u b l i c 	 	 	 	 v a r   m o d i f y P l a y e r S p e e d 	 	 	 :   b o o l ;  
 	 p u b l i c   s a v e d 	 	 v a r   a u t o C a m e r a C e n t e r T o g g l e   	 	 :   b o o l ;  
 	  
 	 d e f a u l t   i n t e r i o r C a m e r a   =   f a l s e ;  
 	 d e f a u l t   s c r i p t e d C o m b a t C a m e r a   =     t r u e ;  
 	 	  
 	  
 	 p u b l i c 	 	 	 	 v a r   i n v   	 	 	 	 	 	 :   C I n v e n t o r y C o m p o n e n t ;  
 	  
 	 p u b l i c 	 	 	 	 s a v e d   v a r   e q u i p m e n t S l o t H i s t o r y 	 	 	 :   a r r a y < S I t e m U n i q u e I d > ;  
 	  
 	  
 	 p r i v a t e   v a r   c u r r e n t T r a c k e d Q u e s t S y s t e m O b j e c t i v e s   :   a r r a y < S J o u r n a l Q u e s t O b j e c t i v e D a t a > ;  
 	 p r i v a t e   v a r   c u r r e n t T r a c k e d Q u e s t O b j e c t i v e s   :   a r r a y < S J o u r n a l Q u e s t O b j e c t i v e D a t a > ;  
 	 p r i v a t e   v a r   c u r r e n t T r a c k e d Q u e s t G U I D   :   C G U I D ;  
 	 p r i v a t e   v a r   H A X N e w O b j T a b l e   :   a r r a y < C G U I D > ;  
 	  
 	  
 	 p u b l i c 	 	 	 	 v a r   h a n d A i m P i t c h 	 	 	 	 :   f l o a t ;  
 	 p r i v a t e   s a v e d 	 	 v a r   v e h i c l e C a c h e d S i g n 	 	 	 :   E S i g n T y p e ;  
 	  
 	 d e f a u l t   v e h i c l e C a c h e d S i g n   =   S T _ N o n e ;  
 	  
 	  
 	 p u b l i c   e d i t a b l e 	 	 v a r   s o f t L o c k D i s t 	 	 	 	 :   f l o a t ;  
 	 p u b l i c   e d i t a b l e 	 	 v a r   s o f t L o c k F r a m e S i z e 	 	 	 :   f l o a t ; 	 	 	  
 	 p u b l i c 	   	 	 	 v a r   f i n d M o v e T a r g e t D i s t 	 	 	 :   f l o a t ;  
 	 p u b l i c 	 	 	 	 v a r   s o f t L o c k D i s t V e h i c l e 	 	 	 :   f l o a t ;  
 	 p r i v a t e 	 	 	 	 v a r   b B I s L o c k e d T o T a r g e t 	 	 	 :   b o o l ; 	 	 	 	  
 	 p r i v a t e 	 	 	 	 v a r   b A c t o r I s L o c k e d T o T a r g e t 	 	 :   b o o l ; 	 	 	 	  
 	 p r i v a t e 	 	 	 	 v a r   b I s H a r d L o c k e d T o t a r g e t 	 	 :   b o o l ; 	 	 	 	  
 	  
 	 	 d e f a u l t   s o f t L o c k D i s t   =     1 2 . f ;  
 	 	 d e f a u l t   s o f t L o c k F r a m e S i z e   =   1 . 2 5 f ;  
 	 	 d e f a u l t   s o f t L o c k D i s t V e h i c l e   =   3 0 . f ;  
 	 	  
 	  
 	 p r i v a t e   v a r   t e r r T y p e O n e   :   E T e r r a i n T y p e ;  
 	 p r i v a t e   v a r   t e r r T y p e T w o   :   E T e r r a i n T y p e ;  
 	 p r i v a t e   v a r   t e r r M o d i f i e r   :   f l o a t ; 	 	 	  
 	 p r i v a t e   v a r   p r e v T e r r T y p e   :   E T e r r a i n T y p e ;  
 	  
 	 	 d e f a u l t   t e r r T y p e O n e   =   T T _ N o r m a l ;  
 	 	 d e f a u l t   t e r r T y p e T w o   =   T T _ N o r m a l ;  
 	 	 d e f a u l t   t e r r M o d i f i e r   =   0 . f ;  
 	 	 d e f a u l t   p r e v T e r r T y p e   =   T T _ N o r m a l ;  
 	 	  
 	  
 	 p r o t e c t e d   v a r   c u r r e n t l y U s e d I t e m   	 	 	   :   W 3 U s a b l e I t e m ;  
 	 p r o t e c t e d   v a r   c u r r e n t l y E q u i p e d I t e m   	 	 	   :   S I t e m U n i q u e I d ;  
 	 p r o t e c t e d   v a r   c u r r e n t l y U s e d I t e m L   	 	           :   W 3 U s a b l e I t e m ;  
 	 p u b l i c   s a v e d       v a r   c u r r e n t l y E q u i p e d I t e m L   	 	   :   S I t e m U n i q u e I d ;  
 	 p r o t e c t e d   v a r   i s U s a b l e I t e m B l o c k e d       	 	   :   b o o l ;  
 	 p r o t e c t e d   v a r   i s U s a b l e I t e m L t r a n s i t i o n A l l o w e d   :   b o o l ;  
 	 p r o t e c t e d   v a r   p l a y e r A c t i o n T o R e s t o r e 	 	 	   :   E P l a y e r A c t i o n T o R e s t o r e ;   d e f a u l t   p l a y e r A c t i o n T o R e s t o r e   =     P A T R _ D e f a u l t ;  
 	  
 	 p u b l i c   s a v e d   v a r   t e l e p o r t e d O n B o a t T o O t h e r H U B   :   b o o l ;  
 	 d e f a u l t   t e l e p o r t e d O n B o a t T o O t h e r H U B   =   f a l s e ;  
 	  
 	  
 	 p r o t e c t e d   v a r   p h o t o m o d e M a n a g e r   :   P h o t o m o d e M a n a g e r ;  
  
 	  
 	  
 	 p u b l i c   v a r   i s A d a p t i v e B a l a n c e   :   b o o l ;  
 	 d e f a u l t   i s A d a p t i v e B a l a n c e   =   f a l s e ;  
  
 	 f u n c t i o n   I s A d a p t i v e B a l a n c e ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s A d a p t i v e B a l a n c e ;  
 	 }  
 	 f u n c t i o n   S e t A d a p t i v e B a l a n c e (   v a l   :   b o o l   )  
 	 {  
 	 	 L o g ( " A d a p t i v e   b a l a n c e :   "   +   v a l   ) ;  
 	 	 i s A d a p t i v e B a l a n c e   =   v a l ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t T e l e p o r t e d O n B o a t T o O t h e r H U B (   v a l   :   b o o l   )  
 	 {  
 	 	 t e l e p o r t e d O n B o a t T o O t h e r H U B   =   v a l ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 i m p o r t   f i n a l   f u n c t i o n   L o c k B u t t o n I n t e r a c t i o n s (   c h a n n e l   :   i n t   ) ;  
 	  
 	  
 	 i m p o r t   f i n a l   f u n c t i o n   U n l o c k B u t t o n I n t e r a c t i o n s (   c h a n n e l   :   i n t   ) ;  
  
 	 i m p o r t   f i n a l   f u n c t i o n   G e t A c t i v e E x p l o r a t i o n E n t i t y ( )   :   C E n t i t y ;  
 	  
 	  
 	 	 	  
 	 e v e n t   O n S p a w n e d (   s p a w n D a t a   :   S E n t i t y S p a w n D a t a   )  
 	 { 	  
 	 	 v a r   c o n f   :   i n t ;  
 	 	 v a r   p r e v I n p u t H a n d l e r   :   C P l a y e r I n p u t ;   / / m o d W 3 R e d u x R G C  
  
 	 	 i n v   =   G e t I n v e n t o r y ( ) ;  
 	 	  
 	 	 s u p e r . O n S p a w n e d (   s p a w n D a t a   ) ;  
 	 	  
 	 	 R e g i s t e r C o l l i s i o n E v e n t s L i s t e n e r ( ) ; 	 	  
 	 	 A d d T i m e r (   ' P l a y e r T i c k ' ,   0 . f ,   t r u e   ) ;  
 	 	 I n i t i a l i z e P a r r y T y p e ( ) ;  
 	 	 S e t C a n P l a y H i t A n i m (   t r u e   ) ;  
  
 	 	  
 	 	 t h e G a m e . R e m o v e T i m e S c a l e (   t h e G a m e . G e t T i m e s c a l e S o u r c e ( E T S _ D e b u g I n p u t )   ) ;  
 	 	  
 	 	  
 	 	 i f (   i n v   )  
 	 	 {  
 	 	 	 i n v . C r e a t e d ( ) ; 	  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f (   i n p u t H a n d l e r   )  
 	 	 {  
 	 	 	 p r e v I n p u t H a n d l e r   =   i n p u t H a n d l e r ;  
 	 	 }  
  
 	 	 i n p u t H a n d l e r   =   n e w   W 3 R e d u x R G C I n p u t   i n   t h i s ;  
 	 	 t h e G a m e . E n a b l e U b e r M o v e m e n t (   t r u e   ) ;  
 	 	 ( ( C I n G a m e C o n f i g W r a p p e r ) t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) ) . S e t V a r V a l u e (   ' G a m e p l a y ' ,   ' E n a b l e U b e r M o v e m e n t ' ,   1   ) ;  
  
 	 	 i f (   p r e v I n p u t H a n d l e r   )  
 	 	 {  
 	 	 	 i n p u t H a n d l e r . I n i t i a l i z e ( s p a w n D a t a . r e s t o r e d ,   p r e v I n p u t H a n d l e r ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i n p u t H a n d l e r . I n i t i a l i z e ( s p a w n D a t a . r e s t o r e d ) ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
  
 	 	 S e t A u t o C a m e r a C e n t e r (   ( ( C I n G a m e C o n f i g W r a p p e r ) t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) ) . G e t V a r V a l u e (   ' G a m e p l a y ' ,   ' A u t o C a m e r a C e n t e r '   )   ) ;  
  
 	 	 S e t E n e m y U p s c a l i n g (   ( ( C I n G a m e C o n f i g W r a p p e r ) t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) ) . G e t V a r V a l u e (   ' G a m e p l a y ' ,   ' E n e m y U p s c a l i n g '   )   ) ;  
 	 	  
 	 	 i f (   ! I s N a m e V a l i d ( G e t C u r r e n t S t a t e N a m e ( ) )   )  
 	 	 {  
 	 	 	 G o t o S t a t e A u t o ( ) ;  
 	 	 }  
 	 	  
 	 	 i s R u n n i n g 	 =   f a l s e ;  
 	 	 S e t I s W a l k i n g (   f a l s e   ) ;  
 	 	  
 	 	  
 	 	 E n a b l e B r o a d c a s t P r e s e n c e ( t r u e ) ;  
 	 	  
 	 	  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' E q u i p I t e m ' , 	 	 	 ' O n A n i m E v e n t _ Q u i c k S l o t I t e m s ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' U s e I t e m ' , 	 	 	 	 ' O n A n i m E v e n t _ Q u i c k S l o t I t e m s ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' H i d e I t e m ' , 	 	 	 ' O n A n i m E v e n t _ Q u i c k S l o t I t e m s ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' E q u i p I t e m L ' , 	 	 	 ' O n A n i m E v e n t _ Q u i c k S l o t I t e m s ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' U s e I t e m L ' , 	 	 	 ' O n A n i m E v e n t _ Q u i c k S l o t I t e m s ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' H i d e I t e m L ' , 	 	 	 ' O n A n i m E v e n t _ Q u i c k S l o t I t e m s ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' A l l o w I n p u t ' , 	 	 	 ' O n A n i m E v e n t _ A l l o w I n p u t ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' D i s a l l o w I n p u t ' , 	 	 ' O n A n i m E v e n t _ D i s a l l o w I n p u t ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' D i s a l l o w H i t A n i m ' , 	 	 ' O n A n i m E v e n t _ D i s a l l o w H i t A n i m ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' A l l o w H i t A n i m ' , 	 	 ' O n A n i m E v e n t _ A l l o w H i t A n i m ' ) ;  
 	 	  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' S e t R a g d o l l ' , 	 	 	 ' O n A n i m E v e n t _ S e t R a g d o l l ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' I n A i r K D C h e c k ' , 	 	 ' O n A n i m E v e n t _ I n A i r K D C h e c k ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' E q u i p M e d a l l i o n ' , 	 	 ' O n A n i m E v e n t _ E q u i p M e d a l l i o n ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' H i d e M e d a l l i o n ' , 	 	 ' O n A n i m E v e n t _ H i d e M e d a l l i o n ' ) ;  
 	 	  
 	 	  
 	 	 R e s u m e S t a m i n a R e g e n (   ' S p r i n t '   ) ;  
 	 	  
 	 	 p h o t o m o d e M a n a g e r   =   n e w   P h o t o m o d e M a n a g e r   i n   t h i s ;  
 	 	 p h o t o m o d e M a n a g e r . I n i t i a l i z e ( ) ;  
 	 	  
 	 	  
 	 	  
 	 	 i n v e r t e d L o c k O p t i o n   =   ( ( C I n G a m e C o n f i g W r a p p e r ) t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) ) . G e t V a r V a l u e (   ' C o n t r o l s ' ,   ' I n v e r t L o c k O p t i o n '   ) ;  
 	 	 i n v e r t e d C o n t r o l l e r C a m e r a X   =   ( ( C I n G a m e C o n f i g W r a p p e r ) t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) ) . G e t V a r V a l u e (   ' C o n t r o l s ' ,   ' I n v e r t C a m e r a X '   ) ;  
 	 	 i n v e r t e d C o n t r o l l e r C a m e r a Y   =   ( ( C I n G a m e C o n f i g W r a p p e r ) t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) ) . G e t V a r V a l u e (   ' C o n t r o l s ' ,   ' I n v e r t C a m e r a Y '   ) ;  
 	 	 i n v e r t e d M o u s e C a m e r a X   =   ( ( C I n G a m e C o n f i g W r a p p e r ) t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) ) . G e t V a r V a l u e (   ' C o n t r o l s ' ,   ' I n v e r t C a m e r a X O n M o u s e '   ) ;  
 	 	 i n v e r t e d M o u s e C a m e r a Y   =   ( ( C I n G a m e C o n f i g W r a p p e r ) t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) ) . G e t V a r V a l u e (   ' C o n t r o l s ' ,   ' I n v e r t C a m e r a Y O n M o u s e '   ) ;  
 	 	  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   D e b u g _ R e s e t I n p u t ( )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 / / i n p u t H a n d l e r   =   n e w   C P l a y e r I n p u t   i n   t h i s ;  
 	 	 i n p u t H a n d l e r   =   n e w   W 3 R e d u x R G C I n p u t   i n   t h i s ;  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	 i n p u t H a n d l e r . I n i t i a l i z e ( f a l s e ) ;  
 	 }  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t T u t o r i a l I n p u t H a n d l e r ( )   :   W 3 P l a y e r T u t o r i a l I n p u t  
 	 {  
 	 	 r e t u r n   ( W 3 P l a y e r T u t o r i a l I n p u t ) i n p u t H a n d l e r ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   B l o c k A c t i o n (   a c t i o n   :   E I n p u t A c t i o n B l o c k ,   s o u r c e N a m e   :   n a m e ,   o p t i o n a l   k e e p O n S p a w n   :   b o o l ,   o p t i o n a l   i s F r o m Q u e s t   :   b o o l ,   o p t i o n a l   i s F r o m P l a c e   :   b o o l   )   :   b o o l  
 	 {  
 	 	 i f   (   i n p u t H a n d l e r   )  
 	 	 {  
 	 	 	 i n p u t H a n d l e r . B l o c k A c t i o n ( a c t i o n ,   s o u r c e N a m e ,   t r u e ,   k e e p O n S p a w n ,   t h i s ,   i s F r o m Q u e s t ,   i s F r o m P l a c e ) ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 } 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   U n b l o c k A c t i o n (   a c t i o n   :   E I n p u t A c t i o n B l o c k ,   s o u r c e N a m e   :   n a m e )   :   b o o l  
 	 {  
 	 	 i f   (   i n p u t H a n d l e r   )  
 	 	 {  
 	 	 	 i n p u t H a n d l e r . B l o c k A c t i o n ( a c t i o n ,   s o u r c e N a m e ,   f a l s e ) ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 } 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   T u t o r i a l F o r c e U n b l o c k R a d i a l ( )   :   a r r a y < S I n p u t A c t i o n L o c k >  
 	 {  
 	 	 v a r   n u l l   :   a r r a y < S I n p u t A c t i o n L o c k > ;  
 	 	  
 	 	 i f   (   i n p u t H a n d l e r   )  
 	 	 {  
 	 	 	 r e t u r n   i n p u t H a n d l e r . T u t o r i a l F o r c e U n b l o c k R a d i a l ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   n u l l ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   T u t o r i a l F o r c e R e s t o r e R a d i a l L o c k s ( r a d i a l L o c k s   :   a r r a y < S I n p u t A c t i o n L o c k > )  
 	 {  
 	 	 i f   (   i n p u t H a n d l e r   )  
 	 	 {  
 	 	 	 i n p u t H a n d l e r . T u t o r i a l F o r c e R e s t o r e R a d i a l L o c k s ( r a d i a l L o c k s ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t A c t i o n L o c k s (   a c t i o n   :   E I n p u t A c t i o n B l o c k   )   :   a r r a y <   S I n p u t A c t i o n L o c k   >  
 	 {  
 	 	 r e t u r n   i n p u t H a n d l e r . G e t A c t i o n L o c k s (   a c t i o n   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t A l l A c t i o n L o c k s ( )   :   a r r a y <   a r r a y <   S I n p u t A c t i o n L o c k   >   >  
 	 {  
 	 	 r e t u r n   i n p u t H a n d l e r . G e t A l l A c t i o n L o c k s ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s A c t i o n A l l o w e d (   a c t i o n   :   E I n p u t A c t i o n B l o c k   )   :   b o o l  
 	 {  
 	 	 i f   (   i n p u t H a n d l e r   )  
 	 	 {  
 	 	 	 r e t u r n   i n p u t H a n d l e r . I s A c t i o n A l l o w e d (   a c t i o n   ) ;  
 	 	 }  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s A c t i o n B l o c k e d B y (   a c t i o n   :   E I n p u t A c t i o n B l o c k ,   s o u r c e N a m e   :   n a m e   )   :   b o o l  
 	 {  
 	 	 i f   (   i n p u t H a n d l e r   )  
 	 	 {  
 	 	 	 r e t u r n   i n p u t H a n d l e r . I s A c t i o n B l o c k e d B y ( a c t i o n , s o u r c e N a m e ) ;  
 	 	 }  
 	 	 r e t u r n   f a l s e ; 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s W e a p o n A c t i o n A l l o w e d (   w e a p o n   :   E P l a y e r W e a p o n   )   :   b o o l  
 	 {  
 	 	 i f   (   i n p u t H a n d l e r   )  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	 i f   (   w e a p o n   = =   P W _ F i s t s   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   i n p u t H a n d l e r . I s A c t i o n A l l o w e d (   E I A B _ F i s t s   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 r e t u r n   i n p u t H a n d l e r . I s A c t i o n A l l o w e d (   E I A B _ D r a w W e a p o n   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   B l o c k A l l A c t i o n s ( s o u r c e N a m e   :   n a m e ,   l o c k   :   b o o l ,   o p t i o n a l   e x c e p t i o n s   :   a r r a y < E I n p u t A c t i o n B l o c k > ,   o p t i o n a l   e x c e p t U I   :   b o o l ,   o p t i o n a l   s a v e L o c k   :   b o o l ,   o p t i o n a l   o n S p a w n e d N u l l P o i n t e r H a c k F i x   :   C P l a y e r ,   o p t i o n a l   i s F r o m P l a c e   :   b o o l )  
 	 {  
 	 	 i f ( i n p u t H a n d l e r )  
 	 	 {  
 	 	 	 i f ( e x c e p t U I )  
 	 	 	 {  
 	 	 	 	 e x c e p t i o n s . P u s h B a c k ( E I A B _ O p e n I n v e n t o r y ) ;  
 	 	 	 	 e x c e p t i o n s . P u s h B a c k ( E I A B _ M e d i t a t i o n W a i t i n g ) ;  
 	 	 	 	 e x c e p t i o n s . P u s h B a c k ( E I A B _ F a s t T r a v e l ) ;  
 	 	 	 	 e x c e p t i o n s . P u s h B a c k ( E I A B _ O p e n M a p ) ;  
 	 	 	 	 e x c e p t i o n s . P u s h B a c k ( E I A B _ O p e n C h a r a c t e r P a n e l ) ;  
 	 	 	 	 e x c e p t i o n s . P u s h B a c k ( E I A B _ O p e n J o u r n a l ) ;  
 	 	 	 	 e x c e p t i o n s . P u s h B a c k ( E I A B _ O p e n A l c h e m y ) ;  
 	 	 	 }  
 	 	 	 i n p u t H a n d l e r . B l o c k A l l A c t i o n s ( s o u r c e N a m e ,   l o c k ,   e x c e p t i o n s ,   s a v e L o c k ,   o n S p a w n e d N u l l P o i n t e r H a c k F i x ,   f a l s e ,   i s F r o m P l a c e ) ;  
 	 	 }  
 	 	 i f ( l o c k )  
 	 	 {  
 	 	 	  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   B l o c k A l l Q u e s t A c t i o n s ( s o u r c e N a m e   :   n a m e ,   l o c k   :   b o o l )  
 	 {  
 	 	 i n p u t H a n d l e r . B l o c k A l l Q u e s t A c t i o n s ( s o u r c e N a m e ,   l o c k ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   B l o c k A l l U I Q u e s t A c t i o n s ( s o u r c e N a m e   :   n a m e ,   l o c k   :   b o o l )  
 	 {  
 	 	 i n p u t H a n d l e r . B l o c k A l l U I Q u e s t A c t i o n s ( s o u r c e N a m e ,   l o c k ) ;  
 	 }  
 	 	 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t I n p u t H a n d l e r ( )   :   C P l a y e r I n p u t  
 	 {  
 	 	 r e t u r n   i n p u t H a n d l e r ;  
 	 }  
  
 	 	  
 	 p u b l i c   f u n c t i o n   C h e a t G o d 2 ( o n   :   b o o l )  
 	 {  
 	 	 i f ( o n )  
 	 	 	 S e t I m m o r t a l i t y M o d e (   A I M _ I m m o r t a l ,   A I C _ D e f a u l t ,   t r u e   ) ;  
 	 	 e l s e  
 	 	 	 S e t I m m o r t a l i t y M o d e (   A I M _ N o n e ,   A I C _ D e f a u l t ,   t r u e   ) ; 	  
 	 	  
 	 	 S t a m i n a B o y I n t e r n a l ( o n ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s I n C o m b a t S t a t e ( )   :   b o o l  
 	 {  
 	 	 v a r   s t a t e N a m e   :   n a m e ;  
 	 	 s t a t e N a m e   =   t h e P l a y e r . G e t C u r r e n t S t a t e N a m e ( ) ;  
 	 	 i f   (   s t a t e N a m e   = =   ' C o m b a t '   | |   s t a t e N a m e   = =   ' C o m b a t S t e e l '   | |   s t a t e N a m e   = =   ' C o m b a t S i l v e r '   | |   s t a t e N a m e   = =   ' C o m b a t F i s t s '   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 r e t u r n   f a l s e ; 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   D i s a b l e C o m b a t S t a t e ( )  
 	 {  
 	 	 i f   (   I s I n C o m b a t S t a t e ( )   )  
 	 	 {  
 	 	 	 G o t o S t a t e (   ' E x p l o r a t i o n '   ) ;  
 	 	 }  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   S e t A b i l i t y M a n a g e r ( )  
 	 {  
 	 	 a b i l i t y M a n a g e r   =   n e w   W 3 P l a y e r A b i l i t y M a n a g e r   i n   t h i s ; 	  
 	 }  
 	  
 	  
 	 e v e n t   O n D a m a g e F r o m B o i d s (   d a m a g e   :   f l o a t   )  
 	 { 	 	  
 	 	 v a r   d a m a g e A c t i o n   :   W 3 D a m a g e A c t i o n   =   n e w   W 3 D a m a g e A c t i o n   i n   t h e G a m e . d a m a g e M g r ;  
 	 	  
 	 	 d a m a g e A c t i o n . I n i t i a l i z e ( N U L L , t h i s , N U L L , ' b o i d ' , E H R T _ N o n e , C P S _ A t t a c k P o w e r , f a l s e , f a l s e , f a l s e , t r u e ) ;  
 	 	 d a m a g e A c t i o n . A d d D a m a g e ( t h e G a m e . p a r a m s . D A M A G E _ N A M E _ P H Y S I C A L , 6 . f ) ; 	 	  
 	 	 d a m a g e A c t i o n . S e t H i t A n i m a t i o n P l a y T y p e ( E A H A _ F o r c e N o ) ;  
 	 	  
 	 	  
 	 	  
 	 	 d a m a g e A c t i o n . S e t S u p p r e s s H i t S o u n d s ( t r u e ) ;    
 	 	  
 	 	 L o g (   " D A M A G E   F R O M   B O I D ! ! ! ! !   "   +   d a m a g e   ) ;  
 	 	  
 	 	  
 	 	 t h e G a m e . d a m a g e M g r . P r o c e s s A c t i o n (   d a m a g e A c t i o n   ) ;  
 	 	  
 	 	 d e l e t e   d a m a g e A c t i o n ;  
 	 }  
 	  
 	  
 	 f u n c t i o n   I n i t i a l i z e P a r r y T y p e ( )  
 	 {  
 	 	 v a r   i ,   j   :   i n t ;  
 	 	  
 	 	 p a r r y T y p e T a b l e . R e s i z e (   E n u m G e t M a x ( ' E A t t a c k S w i n g T y p e ' ) + 1   ) ;  
 	 	 f o r (   i   =   0 ;   i   <   E n u m G e t M a x ( ' E A t t a c k S w i n g T y p e ' ) + 1 ;   i   + =   1   )  
 	 	 {  
 	 	 	 p a r r y T y p e T a b l e [ i ] . R e s i z e (   E n u m G e t M a x ( ' E A t t a c k S w i n g D i r e c t i o n ' ) + 1   ) ;  
 	 	 }  
 	 	 p a r r y T y p e T a b l e [ A S T _ H o r i z o n t a l ] [ A S D _ U p D o w n ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ H o r i z o n t a l ] [ A S D _ D o w n U p ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ H o r i z o n t a l ] [ A S D _ L e f t R i g h t ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ H o r i z o n t a l ] [ A S D _ R i g h t L e f t ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ V e r t i c a l ] [ A S D _ U p D o w n ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ V e r t i c a l ] [ A S D _ D o w n U p ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ V e r t i c a l ] [ A S D _ L e f t R i g h t ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ V e r t i c a l ] [ A S D _ R i g h t L e f t ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ D i a g o n a l U p ] [ A S D _ U p D o w n ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ D i a g o n a l U p ] [ A S D _ D o w n U p ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ D i a g o n a l U p ] [ A S D _ L e f t R i g h t ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ D i a g o n a l U p ] [ A S D _ R i g h t L e f t ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ D i a g o n a l D o w n ] [ A S D _ U p D o w n ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ D i a g o n a l D o w n ] [ A S D _ D o w n U p ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ D i a g o n a l D o w n ] [ A S D _ L e f t R i g h t ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ D i a g o n a l D o w n ] [ A S D _ R i g h t L e f t ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ J a b ] [ A S D _ U p D o w n ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ J a b ] [ A S D _ D o w n U p ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ J a b ] [ A S D _ L e f t R i g h t ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ J a b ] [ A S D _ R i g h t L e f t ]   =   P T _ N o n e ; 	  
 	 }  
 	  
 	 e v e n t   O n P l a y e r T i c k T i m e r (   d e l t a T i m e   :   f l o a t   )  
 	 { 	  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   P l a y e r T i c k (   d e l t a T i m e   :   f l o a t   ,   i d   :   i n t )  
 	 { 	  
 	 	 d e l t a T i m e   =   t h e T i m e r . t i m e D e l t a U n s c a l e d ;  
 	 	 O n P l a y e r T i c k T i m e r (   d e l t a T i m e   ) ;  
 	 	  
 	 	 i f (   ! I s A c t i o n A l l o w e d (   E I A B _ R u n A n d S p r i n t   )   )  
 	 	 {  
 	 	 	 m o v e m e n t L o c k T y p e 	 =   P M L T _ N o R u n ;  
 	 	 }  
 	 	 e l s e   i f (   ! I s A c t i o n A l l o w e d (   E I A B _ S p r i n t   )   )  
 	 	 {  
 	 	 	 m o v e m e n t L o c k T y p e 	 =   P M L T _ N o S p r i n t ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 m o v e m e n t L o c k T y p e 	 =   P M L T _ F r e e ;  
 	 	 } 	  
 	 }  
 	  
 	  
 	 f u n c t i o n   I s L o o k I n p u t I g n o r e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   f a l s e ;  
 	 }  
  
 	 p r i v a t e   v a r   i n p u t H e a d i n g R e a d y   :   b o o l ;  
 	 p u b l i c   f u n c t i o n   S e t I n p u t H e a d i n g R e a d y (   f l a g   :   b o o l   )  
 	 {  
 	 	 i n p u t H e a d i n g R e a d y   =     f l a g ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s I n p u t H e a d i n g R e a d y ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i n p u t H e a d i n g R e a d y ;  
 	 } 	  
  
 	 v a r   l a s t A x i s I n p u t I s M o v e m e n t   :   b o o l ;  
 	 f u n c t i o n   H a n d l e M o v e m e n t (   d e l t a T i m e   :   f l o a t   )  
 	 {  
 	 	 v a r   l e f t S t i c k V e c t o r   	 :   V e c t o r ;  
 	 	 v a r   r i g h t S t i c k V e c t o r   	 :   V e c t o r ;    
 	  
 	 	 v a r   r a w L e n g t h L   	 :   f l o a t ;  
 	 	 v a r   r a w L e n g t h R 	 :   f l o a t ;  
 	  
 	 	 v a r   l e n   :   f l o a t ;  
 	 	 v a r   i   :   i n t ; 	  
 	  
 	 	 p r e v R a w L e f t J o y V e c   =   r a w L e f t J o y V e c ;  
 	 	 p r e v R a w R i g h t J o y V e c   =   r a w R i g h t J o y V e c ;  
  
 	 	 r a w L e f t J o y V e c . X   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s L e f t X '   ) ;    
 	 	 r a w L e f t J o y V e c . Y   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s L e f t Y '   ) ;  
  
 	 	 i f   (   t h e P l a y e r . I s P C M o d e E n a b l e d ( )   )  
 	 	 {  
 	 	 	 r a w R i g h t J o y V e c . X   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ M o u s e D a m p X '   ) ;    
 	 	 	 r a w R i g h t J o y V e c . Y   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ M o u s e D a m p Y '   ) ;   	 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r a w R i g h t J o y V e c . X   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s R i g h t X '   ) ;    
 	 	 	 r a w R i g h t J o y V e c . Y   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s R i g h t Y '   ) ;    
 	 	 }  
 	 	 	  
 	 	 l e f t S t i c k V e c t o r   =   r a w L e f t J o y V e c ;  
 	 	 r i g h t S t i c k V e c t o r   =   r a w R i g h t J o y V e c ;  
 	 	  
 	 	  
 	 	 i f   (   V e c D o t 2 D (   p r e v R a w L e f t J o y V e c ,   l e f t S t i c k V e c t o r   )   <   0 . 0 f   )  
 	 	 {  
 	 	 	 l e f t S t i c k V e c t o r   =   l a s t V a l i d L e f t J o y V e c ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 l a s t V a l i d L e f t J o y V e c   =   l e f t S t i c k V e c t o r ;  
 	 	 }  
 	 	 i f   (   V e c D o t 2 D (   p r e v R a w R i g h t J o y V e c ,   r i g h t S t i c k V e c t o r   )   <   0 . 0 f   )  
 	 	 {  
 	 	 	 r i g h t S t i c k V e c t o r   =   l a s t V a l i d R i g h t J o y V e c ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 l a s t V a l i d R i g h t J o y V e c   =   r i g h t S t i c k V e c t o r ;  
 	 	 }  
 	 	  
 	 	 r a w L e n g t h L   =   V e c L e n g t h (   l e f t S t i c k V e c t o r   ) ;  
 	 	 r a w L e n g t h R   =   V e c L e n g t h (   r i g h t S t i c k V e c t o r   ) ;  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' l A x i s L e n g t h ' ,   C l a m p F (   r a w L e n g t h L ,   0 . 0 f ,   1 . 0 f   )   ) ;  
 	 	  
 	 	  
 	 	 r a w L e f t J o y R o t   =   V e c H e a d i n g (   l e f t S t i c k V e c t o r   ) ;  
 	 	 r a w R i g h t J o y R o t   =   V e c H e a d i n g (   r i g h t S t i c k V e c t o r   ) ;  
 	 	  
 	 	 i f (   r a w L e n g t h L   >   0   )  
 	 	 {  
 	 	 	 b L A x i s R e l e a s e d   =   f a l s e ;  
 	 	 	 i f (   i s S p r i n t i n g   )  
 	 	 	 {  
 	 	 	 	 i f   (   r a w L e n g t h L   >   0 . 6   )  
 	 	 	 	 {  
 	 	 	 	 	 r a w P l a y e r S p e e d   =   1 . 3 ;  
 	 	 	 	 	 a l l o w S t o p R u n C h e c k   =   t r u e ;  
 	 	 	 	 	 R e m o v e T i m e r (   ' S t o p R u n D e l a y e d I n p u t C h e c k '   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   a l l o w S t o p R u n C h e c k   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a l l o w S t o p R u n C h e c k   =   f a l s e ;  
 	 	 	 	 	 	 A d d T i m e r (   ' S t o p R u n D e l a y e d I n p u t C h e c k ' ,   0 . 2 5 f ,   f a l s e   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' E x p l o r a t i o n '   )  
 	 	 	 	 {  
 	 	 	 	 	 r a w P l a y e r S p e e d   =   0 . 9 * r a w L e n g t h L ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   r a w L e n g t h L   >   0 . 6   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r a w P l a y e r S p e e d   =   0 . 8 ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r a w P l a y e r S p e e d   =   0 . 4 ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   (   i s S p r i n t i n g   )  
 	 	 	 {  
 	 	 	 	 i f     (   a l l o w S t o p R u n C h e c k   )  
 	 	 	 	 {  
 	 	 	 	 	 a l l o w S t o p R u n C h e c k   =   f a l s e ;  
 	 	 	 	 	 A d d T i m e r (   ' S t o p R u n D e l a y e d I n p u t C h e c k ' ,   0 . 2 5 f ,   f a l s e   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 { 	  
 	 	 	 	 r a w P l a y e r S p e e d   =   0 . f ;  
 	 	 	 }  
 	 	 	 b L A x i s R e l e a s e d   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 i f   (   r a w L e n g t h R   >   0   )  
 	 	 	 b R A x i s R e l e a s e d   =   f a l s e ;  
 	 	 e l s e  
 	 	 	 b R A x i s R e l e a s e d   =   t r u e ;  
 	 	  
 	 	 P r o c e s s L A x i s C a c h i n g ( ) ;  
 	 	  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' m o v e S p e e d W h i l e C a s t i n g ' ,   r a w P l a y e r S p e e d   ) ;  
  
 	 	 i f   (   r a w P l a y e r S p e e d   >   0 . f   )  
 	 	 {  
 	 	 	 r a w P l a y e r H e a d i n g   =   A n g l e D i s t a n c e (   t h e C a m e r a . G e t C a m e r a H e a d i n g ( ) ,   - r a w L e f t J o y R o t   ) ;  
 	 	 	 i f   (   r a w P l a y e r S p e e d   >   0 . 1 f   )  
 	 	 	 {  
 	 	 	 	 c a c h e d R a w P l a y e r H e a d i n g   =   r a w P l a y e r H e a d i n g ;    
 	 	 	 	  
 	 	 	 }  
 	 	 	 i f   (   I s I n C o m b a t A c t i o n ( )   )  
 	 	 	 {  
 	 	 	 	 c a n R e s e t C a c h e d C o m b a t A c t i o n H e a d i n g   =   f a l s e ;  
 	 	 	 	 c a c h e d C o m b a t A c t i o n H e a d i n g   =   c a c h e d R a w P l a y e r H e a d i n g ;  
 	 	 	 }  
 	 	 }  
  
 	 	  
 	 	 r a w P l a y e r A n g l e   =   A n g l e D i s t a n c e (   r a w P l a y e r H e a d i n g ,   G e t H e a d i n g ( )   ) ;  
  
 	 	 i f   (   ! P r o c e s s L o c k T a r g e t S e l e c t i o n I n p u t (   r i g h t S t i c k V e c t o r ,   r a w L e n g t h R   )   )  
 	 	 	 P r o c e s s L o c k T a r g e t S e l e c t i o n I n p u t (   r i g h t S t i c k V e c t o r ,   r a w L e n g t h R   ) ;  
 	 }  
  
 	 p r o t e c t e d   f u n c t i o n   P r o c e s s L A x i s C a c h i n g ( )  
 	 {  
 	 	 i f   (   b L A x i s R e l e a s e d   )  
 	 	 {  
 	 	 	 i f   (   G e t B I s C o m b a t A c t i o n A l l o w e d ( )   )  
 	 	 	 {  
 	 	 	 	 i f   (   ! l A x i s R e l e a s e C o u n t e r E n a b l e d   )  
 	 	 	 	 {  
 	 	 	 	 	 l A x i s R e l e a s e C o u n t e r E n a b l e d   =   t r u e ;  
 	 	 	 	 	 A d d T i m e r (   ' L A x i s R e l e a s e C o u n t e r ' ,   0 . 2 5 f   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   ! l A x i s R e l e a s e C o u n t e r E n a b l e d N o C A     )  
 	 	 	 {  
 	 	 	 	 l A x i s R e l e a s e C o u n t e r E n a b l e d N o C A     =   t r u e ;  
 	 	 	 	 A d d T i m e r (   ' L A x i s R e l e a s e C o u n t e r N o C A ' ,   0 . 2 f   ) ;  
 	 	 	 }  
  
 	 	 	 i f   (   ! b R A x i s R e l e a s e d   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h e P l a y e r . I s P C M o d e E n a b l e d ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   l A x i s R e l e a s e d A f t e r C o u n t e r   )  
 	 	 	 	 	 	 l a s t A x i s I n p u t I s M o v e m e n t   =   f a l s e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 	 l a s t A x i s I n p u t I s M o v e m e n t   =   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 l A x i s R e l e a s e d A f t e r C o u n t e r   =   f a l s e ;  
 	 	 	 l A x i s R e l e a s e d A f t e r C o u n t e r N o C A   =   f a l s e ;  
 	 	 	 R e m o v e T i m e r (   ' L A x i s R e l e a s e C o u n t e r '   ) ;  
 	 	 	 R e m o v e T i m e r (   ' L A x i s R e l e a s e C o u n t e r N o C A '   ) ;  
 	 	 	 l A x i s R e l e a s e C o u n t e r E n a b l e d   =   f a l s e ;  
 	 	 	 l A x i s R e l e a s e C o u n t e r E n a b l e d N o C A   =   f a l s e ;  
 	 	 	  
 	 	 	 l a s t A x i s I n p u t I s M o v e m e n t   =   t r u e ;  
 	 	 } 	 	  
 	 }  
  
 	 p u b l i c   f u n c t i o n   R e s e t L a s t A x i s I n p u t I s M o v e m e n t ( )  
 	 {  
 	 	 l a s t A x i s I n p u t I s M o v e m e n t   =   t r u e ;  
 	 }  
 	  
 	  
 	 p r i v a t e   v a r   i n v e r t e d L o c k O p t i o n   :   b o o l ;  
 	 p r i v a t e   v a r   i n v e r t e d C o n t r o l l e r C a m e r a X ,   i n v e r t e d C o n t r o l l e r C a m e r a Y   :   b o o l ;  
 	 p r i v a t e   v a r   i n v e r t e d M o u s e C a m e r a X ,   i n v e r t e d M o u s e C a m e r a Y   :   b o o l ;  
 	  
 	 p u b l i c   f u n c t i o n   S e t I n v e r t e d L o c k O p t i o n ( s e t   :   b o o l )   { i n v e r t e d L o c k O p t i o n   =   s e t ; }  
 	 p u b l i c   f u n c t i o n   S e t I n v e r t e d C a m e r a X ( s e t   :   b o o l )   { i n v e r t e d C o n t r o l l e r C a m e r a X   =   s e t ; }  
 	 p u b l i c   f u n c t i o n   S e t I n v e r t e d C a m e r a Y ( s e t   :   b o o l )   { i n v e r t e d C o n t r o l l e r C a m e r a Y   =   s e t ; }  
 	 p u b l i c   f u n c t i o n   S e t I n v e r t e d M o u s e C a m e r a X ( s e t   :   b o o l )   { i n v e r t e d M o u s e C a m e r a X   =   s e t ; }  
 	 p u b l i c   f u n c t i o n   S e t I n v e r t e d M o u s e C a m e r a Y ( s e t   :   b o o l )   { i n v e r t e d M o u s e C a m e r a Y   =   s e t ; }  
 	  
  
 	 p r i v a t e   v a r   b R A x i s R e l e a s e d L a s t F r a m e   	 :   b o o l ;  
 	 p r i v a t e   v a r   s e l e c t T a r g e t T i m e   	 	 	 :   f l o a t ;  
 	  
 	 p r i v a t e   v a r   s w i p e M o u s e T i m e S t a m p   :   f l o a t ;  
 	 p r i v a t e   v a r   s w i p e M o u s e D i r   	 	 :   V e c t o r ;  
 	 p r i v a t e   v a r   s w i p e M o u s e D i s t 	 	 :   f l o a t ;  
 	 p r i v a t e   v a r   e n a b l e S w i p e C h e c k     	 :   b o o l ;  
 	 p r o t e c t e d   f u n c t i o n   P r o c e s s L o c k T a r g e t S e l e c t i o n I n p u t (   r i g h t S t i c k V e c t o r   :   V e c t o r ,   r a w L e n g t h R   :   f l o a t   )   :   b o o l  
 	 {  
 	 	 v a r   c u r r T i m e 	 :   f l o a t ;  
 	 	 v a r   r i g h t S t i c k V e c t o r N o r m a l i z e d   :   V e c t o r ;  
 	 	 v a r   d o t 	 :   f l o a t ;  
 	 	  
 	 	 i f   (   t h i s . I s C a m e r a L o c k e d T o T a r g e t ( )   )  
 	 	 {  
 	 	 	 c u r r T i m e   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ; 	  
  
 	 	 	  
 	 	 	 i f ( i n v e r t e d L o c k O p t i o n )  
 	 	 	 {  
 	 	 	 	 i f ( t h e P l a y e r . I s P C M o d e E n a b l e d ( ) )  
 	 	 	 	 {  
 	 	 	 	 	 i f ( i n v e r t e d M o u s e C a m e r a X )   r i g h t S t i c k V e c t o r . X   * =   - 1 ;  
 	 	 	 	 	 i f ( i n v e r t e d M o u s e C a m e r a Y )   r i g h t S t i c k V e c t o r . Y   * =   - 1 ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f ( i n v e r t e d C o n t r o l l e r C a m e r a X )   r i g h t S t i c k V e c t o r . X   * =   - 1 ;  
 	 	 	 	 	 i f ( i n v e r t e d C o n t r o l l e r C a m e r a Y )   r i g h t S t i c k V e c t o r . Y   * =   - 1 ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 i f   (   t h e P l a y e r . I s P C M o d e E n a b l e d ( )   )  
 	 	 	 {  
 	 	 	 	 i f   (   r a w L e n g t h R   >   0 . f   )  
 	 	 	 	 {  
 	 	 	 	 	 r i g h t S t i c k V e c t o r N o r m a l i z e d   =   V e c N o r m a l i z e (   r i g h t S t i c k V e c t o r   ) ;  
 	 	 	 	  
 	 	 	 	 	 i f   (   e n a b l e S w i p e C h e c k   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 e n a b l e S w i p e C h e c k   =   f a l s e ;  
 	 	 	 	 	 	 s w i p e M o u s e T i m e S t a m p   =   c u r r T i m e ;  
 	 	 	 	 	 	 s w i p e M o u s e D i r   =   r i g h t S t i c k V e c t o r ;  
 	 	 	 	 	 	 s w i p e M o u s e D i s t   =   0 . f ;  
 	 	 	 	 	 }  
  
 	 	 	 	 	 d o t   =   V e c D o t (   s w i p e M o u s e D i r ,   r i g h t S t i c k V e c t o r   ) ;  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   d o t   >   0 . 8   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 s w i p e M o u s e D i s t   + =   r a w L e n g t h R ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 e n a b l e S w i p e C h e c k   =   t r u e ;  
 	 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 	 s w i p e M o u s e D i r   =   r i g h t S t i c k V e c t o r ; 	 	 	 	 	  
 	 	 	 	 	 	 	 	 	 	 	  
  
 	 	 	 	 	 i f   (   c u r r T i m e   >   s w i p e M o u s e T i m e S t a m p   +   0 . 2 f   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 s w i p e M o u s e D i s t   =   0 . f ;  
 	 	 	 	 	 	 e n a b l e S w i p e C h e c k   =   t r u e ;  
 	 	 	 	 	 }  
  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 	  
 	 	 	 	 	 s w i p e M o u s e D i s t   =   0 . f ;  
 	 	 	 	 	 e n a b l e S w i p e C h e c k   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f   (   s w i p e M o u s e D i s t   < =   3 5 0 . f   )  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 r i g h t S t i c k V e c t o r   =   r i g h t S t i c k V e c t o r N o r m a l i z e d ;  
 	 	 	 	 	 r a w L e n g t h R   =   V e c L e n g t h (   r i g h t S t i c k V e c t o r   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   b R A x i s R e l e a s e d L a s t F r a m e   )  
 	 	 	 {  
 	 	 	 	 i f   (   r a w L e n g t h R   > =   0 . 3   )  
 	 	 	 	 {  
 	 	 	 	 	 i n p u t H a n d l e r . O n C b t S e l e c t L o c k T a r g e t (   r i g h t S t i c k V e c t o r   ) ;  
 	 	 	 	 	 s e l e c t T a r g e t T i m e   =   c u r r T i m e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   i f   (   r a w L e n g t h R   > =   0 . 3   & &   c u r r T i m e   >   (   s e l e c t T a r g e t T i m e   +   0 . 5 f   )   )  
 	 	 	 {  
 	 	 	 	 i n p u t H a n d l e r . O n C b t S e l e c t L o c k T a r g e t (   r i g h t S t i c k V e c t o r   ) ;  
 	 	 	 	 s e l e c t T a r g e t T i m e   =   c u r r T i m e ; 	  
 	 	 	 }  
 	 	 }  
  
 	 	 i f   (   r a w L e n g t h R   <   0 . 3   )  
 	 	 	 b R A x i s R e l e a s e d L a s t F r a m e   =   t r u e ;  
 	 	 e l s e  
 	 	 	 b R A x i s R e l e a s e d L a s t F r a m e   =   f a l s e ;  
 	 	 	  
 	 	 r e t u r n   t r u e ; 	  
 	 }  
 	  
 	 p u b l i c   v a r   l A x i s R e l e a s e d A f t e r C o u n t e r   	 :   b o o l ;  
 	 p u b l i c   v a r   l A x i s R e l e a s e C o u n t e r E n a b l e d   	 :   b o o l ;  
 	 p r i v a t e   t i m e r   f u n c t i o n   L A x i s R e l e a s e C o u n t e r (   t i m e   :   f l o a t   ,   i d   :   i n t )  
 	 {  
 	 	  
 	 	 i f   (   b L A x i s R e l e a s e d   )  
 	 	 	 l A x i s R e l e a s e d A f t e r C o u n t e r   =   t r u e ;  
 	 }  
 	  
 	 p u b l i c   v a r   l A x i s R e l e a s e d A f t e r C o u n t e r N o C A   	 :   b o o l ;    
 	 p u b l i c   v a r   l A x i s R e l e a s e C o u n t e r E n a b l e d N o C A   	 :   b o o l ;  
 	 p r i v a t e   t i m e r   f u n c t i o n   L A x i s R e l e a s e C o u n t e r N o C A (   t i m e   :   f l o a t   ,   i d   :   i n t )  
 	 {  
 	 	  
 	 	 i f   (   b L A x i s R e l e a s e d   )  
 	 	 	 l A x i s R e l e a s e d A f t e r C o u n t e r N o C A   =   t r u e ;  
 	 }  
 	  
 	  
 	 t i m e r   f u n c t i o n   S t o p R u n D e l a y e d I n p u t C h e c k (   t i m e   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	  
 	 	 a l l o w S t o p R u n C h e c k   =   t r u e ;  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   I s U I T a k e I n p u t ( )   :   b o o l    
 	 {  
 	 	 r e t u r n   b U I T a k e s I n p u t ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t U I T a k e I n p u t   (   v a l   :   b o o l   )    
 	 {  
 	 	 b U I T a k e s I n p u t   =   v a l ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t R a w L e f t J o y R o t ( )   :   f l o a t  
 	 {  
 	 	 r e t u r n   r a w L e f t J o y R o t ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t I s A c t o r L o c k e d T o T a r g e t (   f l a g   :   b o o l   )  
 	 {  
 	 	 b A c t o r I s L o c k e d T o T a r g e t   =   f l a g ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s A c t o r L o c k e d T o T a r g e t ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   b A c t o r I s L o c k e d T o T a r g e t ;  
 	 } 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   S e t I s C a m e r a L o c k e d T o T a r g e t (   f l a g   :   b o o l   )  
 	 {  
 	 	 b B I s L o c k e d T o T a r g e t   =   f l a g ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s C a m e r a L o c k e d T o T a r g e t ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   b B I s L o c k e d T o T a r g e t ;  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   I s L o c k e d T o T a r g e t ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   E n a b l e H a r d L o c k (   f l a g   :   b o o l   )  
 	 {  
 	 	 i f   (   ! f l a g   )  
 	 	 	 L o g (   " E n a b l e H a r d L o c k   :   f a l s e "   ) ;  
 	 	  
 	 	 b I s H a r d L o c k e d T o t a r g e t   =   f l a g ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s H a r d L o c k E n a b l e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   b I s H a r d L o c k e d T o t a r g e t ;  
 	 } 	  
 	  
 	  
 	  
 	  
 	 f u n c t i o n   E n a b l e B r o a d c a s t P r e s e n c e (   e n a b l e   :   b o o l   )  
 	 {  
 	 	 i f   (   e n a b l e   )  
 	 	 {  
 	 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . C r e a t e R e a c t i o n E v e n t I f P o s s i b l e (   t h i s ,   ' P l a y e r P r e s e n c e A c t i o n ' ,   - 1 . f   ,   1 0 . 0 f ,   3 . f ,   - 1 ,   t r u e ) ;    
 	 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . C r e a t e R e a c t i o n E v e n t I f P o s s i b l e (   t h i s ,   ' P l a y e r P r e s e n c e A c t i o n F a r ' ,   - 1 . f   ,   2 0 . 0 f ,   3 . f ,   - 1 ,   t r u e ) ;    
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . R e m o v e R e a c t i o n E v e n t ( t h i s ,   ' P l a y e r P r e s e n c e A c t i o n ' ) ;  
 	 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . R e m o v e R e a c t i o n E v e n t ( t h i s ,   ' P l a y e r P r e s e n c e A c t i o n F a r ' ) ;  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   R e m o v e R e a c t i o n s ( )  
 	 {  
 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . R e m o v e R e a c t i o n E v e n t (   t h i s ,   ' D r a w S w o r d A c t i o n '   ) ;  
 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . R e m o v e R e a c t i o n E v e n t (   t h i s ,   ' C o m b a t N e a r b y A c t i o n '   ) ;  
 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . R e m o v e R e a c t i o n E v e n t (   t h i s ,   ' A t t a c k A c t i o n '   ) ;  
 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . R e m o v e R e a c t i o n E v e n t (   t h i s ,   ' C a s t S i g n A c t i o n '   ) ;  
 	 	 E n a b l e B r o a d c a s t P r e s e n c e ( f a l s e ) ;  
 	 }  
 	  
 	 f u n c t i o n   R e s t a r t R e a c t i o n s I f N e e d e d ( )  
 	 {  
 	 	 E n a b l e B r o a d c a s t P r e s e n c e ( t r u e ) ;  
 	 	  
 	 	  
 	 	  
 	 }  
 	  
 	  
 	  
 	  
 	 e v e n t   O n B l o c k i n g S c e n e S t a r t e d (   s c e n e :   C S t o r y S c e n e   )  
 	 {  
 	 	 s u p e r . O n B l o c k i n g S c e n e S t a r t e d (   s c e n e   ) ;  
 	 	 C l e a r A t t i t u d e s (   t r u e ,   f a l s e ,   f a l s e   ) ;  
 	 	 R a i s e F o r c e E v e n t (   ' F o r c e I d l e '   ) ;  
 	 	 R e m o v e R e a c t i o n s ( ) ;  
 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . C r e a t e R e a c t i o n E v e n t I f P o s s i b l e (   t h e P l a y e r ,   ' P l a y e r I n S c e n e ' ,   - 1 . f ,   6 0 . 0 f ,   - 1 ,   - 1 ,   t r u e   ) ;    
 	 	 P u s h S t a t e (   ' P l a y e r D i a l o g S c e n e '   ) ; 	 	  
 	 }  
  
 	 e v e n t   O n B l o c k i n g S c e n e S t a r t e d _ O n I n t r o C u t s c e n e (   s c e n e :   C S t o r y S c e n e   )  
 	 {  
 	 	 s u p e r . O n B l o c k i n g S c e n e S t a r t e d _ O n I n t r o C u t s c e n e (   s c e n e   ) ;  
 	 }  
 	  
 	 e v e n t   O n B l o c k i n g S c e n e E n d e d (   o p t i o n a l   o u t p u t   :   C S t o r y S c e n e O u t p u t )  
 	 {  
 	 	 v a r   e x c e p t i o n s   :   a r r a y < E I n p u t A c t i o n B l o c k > ;  
 	 	  
 	 	 s u p e r . O n B l o c k i n g S c e n e E n d e d (   o u t p u t   ) ;  
 	 	  
 	 	 R e s t a r t R e a c t i o n s I f N e e d e d ( ) ;  
 	 	  
 	 	 e x c e p t i o n s . P u s h B a c k ( E I A B _ M o v e m e n t ) ;  
 	 	 e x c e p t i o n s . P u s h B a c k ( E I A B _ R u n A n d S p r i n t ) ;  
 	 	 e x c e p t i o n s . P u s h B a c k ( E I A B _ S p r i n t ) ;  
 	 	 t h i s . B l o c k A l l A c t i o n s ( ' S c e n e E n d e d ' , t r u e , e x c e p t i o n s ) ;  
 	 	  
 	 	 t h i s . A d d T i m e r ( ' R e m o v e S c e n e E n d e d A c t i o n B l o c k ' , 1 . f , f a l s e ) ;  
 	 }  
 	  
 	 p r i v a t e   t i m e r   f u n c t i o n   R e m o v e S c e n e E n d e d A c t i o n B l o c k (   d t   :   f l o a t   ,   i d   :   i n t )  
 	 {  
 	 	 t h i s . B l o c k A l l A c t i o n s ( ' S c e n e E n d e d ' , f a l s e ) ;  
 	 	 i f   (   ! t h e P l a y e r . I s I n C o m b a t ( )   )  
 	 	 	 t h e P l a y e r . S e t P l a y e r C o m b a t S t a n c e (   P C S _ N o r m a l   ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   S e t D e a t h T y p e (   t y p e   :   E P l a y e r D e a t h T y p e   )  
 	 {  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' D e a t h T y p e ' ,   ( f l o a t )   ( i n t )   t y p e   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R e s e t D e a t h T y p e ( )  
 	 {  
 	 	 S e t D e a t h T y p e (   P D T _ N o r m a l   ) ;  
 	 }  
 	  
 	  
 	 e v e n t   O n D e a t h (   d a m a g e A c t i o n   :   W 3 D a m a g e A c t i o n     )  
 	 {  
 	 	 v a r   a t t a c k e r   :   C G a m e p l a y E n t i t y ;  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	 v a r   r a d i a l M o d u l e   :   C R 4 H u d M o d u l e R a d i a l M e n u ;  
 	 	 v a r   d e p t h   :   f l o a t ;  
 	 	 v a r   g u i M a n a g e r   :   C R 4 G u i M a n a g e r ;  
 	 	  
 	 	 v a r   a l l o w D e a t h   :   b o o l ;  
 	 	  
 	 	 s u p e r . O n D e a t h (   d a m a g e A c t i o n   ) ;  
 	 	  
 	 	 C l e a r A t t i t u d e s (   t r u e ,   f a l s e ,   f a l s e   ) ;  
 	 	  
 	 	 a t t a c k e r   =   d a m a g e A c t i o n . a t t a c k e r ;  
 	 	  
 	 	 d e p t h   =   ( ( C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ) t h i s . G e t M o v i n g A g e n t C o m p o n e n t ( ) ) . G e t S u b m e r g e D e p t h ( ) ;  
 	 	  
 	 	 i f   (   ( W 3 R e p l a c e r C i r i ) t h i s   )  
 	 	 { 	  
 	 	 	 a l l o w D e a t h   =   t r u e ;  
 	 	 }  
 	 	 e l s e   i f   (   ! I s U s i n g V e h i c l e ( )   & &   d e p t h   >   - 0 . 5   & &   ! I s S w i m m i n g ( )   & &   a t t a c k e r   & &   ( ( C N e w N P C ) a t t a c k e r ) . G e t N P C T y p e ( )   = =   E N G T _ G u a r d   )  
 	 	 {  
 	 	 	 ( ( C R 4 P l a y e r S t a t e U n c o n s c i o u s ) G e t S t a t e ( ' U n c o n s c i o u s ' ) ) . O n K i l l e d B y G u a r d ( ) ;  
 	 	 	 P u s h S t a t e (   ' U n c o n s c i o u s '   ) ;  
 	 	 }  
 	 	 e l s e   i f   (   ! I s U s i n g V e h i c l e ( )   & &   d e p t h   >   - 0 . 5   & &   ! I s S w i m m i n g ( )   & &   ( W 3 E l e v a t o r ) a t t a c k e r   )  
 	 	 {  
 	 	 	 ( ( C R 4 P l a y e r S t a t e U n c o n s c i o u s ) G e t S t a t e ( ' U n c o n s c i o u s ' ) ) . O n K i l l e d B y E l e v a t o r ( ) ;  
 	 	 	 P u s h S t a t e (   ' U n c o n s c i o u s '   ) ;  
 	 	 }  
 	 	 e l s e   i f   (   ! I s U s i n g V e h i c l e ( )   & &   d e p t h   >   - 0 . 5   & &   ! I s S w i m m i n g ( )   & &   W i l l B e U n c o n s c i o u s ( )   )  
 	 	 {  
 	 	 	 P u s h S t a t e (   ' U n c o n s c i o u s '   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 a l l o w D e a t h   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 i f   (   a l l o w D e a t h   )  
 	 	 {  
 	 	 	 i f ( I s A l i v e ( ) )  
 	 	 	 {  
 	 	 	 	 S e t A l i v e ( f a l s e ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   I s U s i n g H o r s e (   t r u e   )   | |   I s U s i n g B o a t ( )   )  
 	 	 	 {  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 R a i s e F o r c e E v e n t (   ' D e a t h '   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 t h e S o u n d . E n t e r G a m e S t a t e ( E S G S _ D e a t h ) ;  
 	 	 	 	 t h e S o u n d . S o u n d E v e n t (   ' g u i _ g l o b a l _ p l a y e r _ d e a t h _ t h u m p '   ) ;  
 	 	 	 	  
 	 	 	 	 t h e G a m e . S e t T i m e S c a l e ( 0 . 6 f ,   t h e G a m e . G e t T i m e s c a l e S o u r c e ( E T S _ D e b u g I n p u t ) ,   t h e G a m e . G e t T i m e s c a l e P r i o r i t y ( E T S _ D e b u g I n p u t ) ,   f a l s e ,   t r u e   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 }  
 	 	 	  
 	 	 	 t h e G a m e . F a d e O u t A s y n c ( D E A T H _ S C R E E N _ O P E N _ D E L A Y   -   0 . 1   ) ;  
 	 	 	  
 	 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 	  
 	 	 	 g u i M a n a g e r   =   t h e G a m e . G e t G u i M a n a g e r ( ) ;  
 	 	 	 i f   ( g u i M a n a g e r   & &   g u i M a n a g e r . I s A n y M e n u ( ) )  
 	 	 	 {  
 	 	 	 	 g u i M a n a g e r . G e t R o o t M e n u ( ) . C l o s e M e n u ( ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 i f   ( h u d )  
 	 	 	 {  
 	 	 	 	 h u d . S t a r t D e a t h T i m e r ( D E A T H _ S C R E E N _ O P E N _ D E L A Y ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 A d d T i m e r ( ' O p e n D e a t h S c r e e n ' , D E A T H _ S C R E E N _ O P E N _ D E L A Y , f a l s e ) ;    
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 i f (   h u d   )  
 	 	 	 {  
 	 	 	 	 r a d i a l M o d u l e   =   ( C R 4 H u d M o d u l e R a d i a l M e n u ) h u d . G e t H u d M o d u l e ( " R a d i a l M e n u M o d u l e " ) ;  
 	 	 	 	 i f   ( r a d i a l M o d u l e   & &   r a d i a l M o d u l e . I s R a d i a l M e n u O p e n e d ( ) )  
 	 	 	 	 {  
 	 	 	 	 	 r a d i a l M o d u l e . H i d e R a d i a l M e n u ( ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 t h e T e l e m e t r y . L o g W i t h L a b e l ( T E _ F I G H T _ P L A Y E R _ D I E S ,   d a m a g e A c t i o n . a t t a c k e r . T o S t r i n g ( ) ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 t i m e r   f u n c t i o n   J u m p O n R a g d o l l F i x (   d e l t a T i m e   :   f l o a t   ,   i d   :   i n t )  
 	 {  
 	 	 T u r n O n R a g d o l l ( ) ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
  
  
 	 e v e n t   O n U n c o n s c i o u s E n d ( )  
 	 {  
 	 	 i f (   G e t C u r r e n t S t a t e N a m e ( )   = =   ' U n c o n s c i o u s '   )  
 	 	 {  
 	 	 	 G o t o S t a t e A u t o ( ) ;  
 	 	 }  
 	 }  
  
 	  
 	  
 	  
 	 e v e n t   O n D o d g e B o o s t ( ) { }  
 	 	  
 	  
 	 f u n c t i o n   S t o p R u n ( )  
 	 {  
 	 	 S e t S p r i n t A c t i o n P r e s s e d ( f a l s e , t r u e ) ;  
 	 	 S e t I s S p r i n t i n g (   f a l s e   ) ;  
 	 }  
 	  
 	 f u n c t i o n   I s R u n P r e s s e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   t r u e ;  
 	 	  
 	 }  
 	  
 	  
 	 p r i v a t e   v a r   s p r i n t B u t t o n P r e s s e d T i m e s t a m p   :   f l o a t ;  
 	  
 	 f u n c t i o n   S e t S p r i n t A c t i o n P r e s s e d (   e n a b l e   :   b o o l ,   o p t i o n a l   d o n t C l e a r T i m e S t a m p   :   b o o l   )  
 	 {  
 	 	 s p r i n t A c t i o n P r e s s e d   =   e n a b l e ;  
 	 	 i f   (   ! d o n t C l e a r T i m e S t a m p   )  
 	 	 	 s p r i n t B u t t o n P r e s s e d T i m e s t a m p   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t H o w L o n g S p r i n t B u t t o n W a s P r e s s e d ( )   :   f l o a t  
 	 {  
 	 	 v a r   d u r a t i o n   :   f l o a t ;  
 	 	  
 	 	 i f   (   ! s p r i n t A c t i o n P r e s s e d   | |   s p r i n t B u t t o n P r e s s e d T i m e s t a m p   < =   0 )  
 	 	 	 r e t u r n   - 1 ;  
 	 	  
 	 	 d u r a t i o n   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( )   -   s p r i n t B u t t o n P r e s s e d T i m e s t a m p ;  
 	 	  
 	 	 r e t u r n   d u r a t i o n ;  
 	 }  
 	  
 	 f u n c t i o n   S e t I s S p r i n t i n g (   f l a g   :   b o o l   )  
 	 {  
 	 	  
 	 	 i f (   f l a g   = =   i s S p r i n t i n g   )  
 	 	 {  
 	 	 	 i f   (   f l a g   & &   d i s a b l e S p r i n t i n g T i m e r E n a b l e d   )  
 	 	 	 {  
 	 	 	 	 d i s a b l e S p r i n t i n g T i m e r E n a b l e d   =   f a l s e ;  
 	 	 	 	 R e m o v e T i m e r (   ' D i s a b l e S p r i n t i n g T i m e r '   ) ;  
 	 	 	 }  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 i f   (   f l a g   )  
 	 	 {  
 	 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . C r e a t e R e a c t i o n E v e n t I f P o s s i b l e (   t h e P l a y e r ,   ' P l a y e r S p r i n t A c t i o n ' ,   - 1 ,   1 0 . 0 f ,   0 . 5 f ,   - 1 ,   t r u e ) ;    
 	 	 	 B r e a k P h e r o m o n e E f f e c t ( ) ;  
 	 	 	 R e m o v e T i m e r (   ' D i s a b l e S p r i n t i n g T i m e r '   ) ;  
 	 	 	 A d d T i m e r ( ' S p r i n t i n g T i m e r ' ,   0 . 0 1 ,   t r u e ) ;  
 	 	 	  
 	 	 }  
 	 	 e l s e    
 	 	 {  
 	 	 	 s p r i n t i n g T i m e   =   0 . 0 f ;  
 	 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . R e m o v e R e a c t i o n E v e n t (   t h e P l a y e r ,   ' P l a y e r S p r i n t A c t i o n '   ) ;    
 	 	 	 R e s u m e S t a m i n a R e g e n (   ' S p r i n t '   ) ;  
 	 	 	 E n a b l e S p r i n t i n g C a m e r a (   f a l s e   ) ;  
 	 	 }  
 	 	  
 	 	 i s S p r i n t i n g   =   f l a g ; 	  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' i s S p r i n t i n g ' ,   ( i n t ) i s S p r i n t i n g   ) ;  
 	 }  
 	  
 	 v a r   s p r i n t i n g C a m e r a   :   b o o l ;  
 	 f u n c t i o n   E n a b l e S p r i n t i n g C a m e r a (   f l a g   :   b o o l   )  
 	 {  
 	 	 v a r   c a m e r a   	 :   C C u s t o m C a m e r a ;  
 	 	 v a r   a n i m a t i o n   :   S C a m e r a A n i m a t i o n D e f i n i t i o n ;  
 	 	 v a r   v e l   :   f l o a t ;  
  
 	 	 i f (   ! t h e G a m e . I s U b e r M o v e m e n t E n a b l e d ( )   & &   ! u s e S p r i n t i n g C a m e r a A n i m   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
  
 	 	 i f   (   I s S w i m m i n g ( )   | |   O n C h e c k D i v i n g ( )   )  
 	 	 	 f l a g   =   f a l s e ;  
 	 	  
 	 	 c a m e r a   =   t h e G a m e . G e t G a m e C a m e r a ( ) ;  
 	 	 i f   (   f l a g   )  
 	 	 {  
 	 	 	  
 	 	 	 v e l   =   V e c L e n g t h (   t h i s . G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t V e l o c i t y ( )   ) ;  
 	 	 	 i f   (   ! s p r i n t i n g C a m e r a   & &   v e l   >   6 . 5   )  
 	 	 	 {  
 	 	 	 	 i f (   u s e S p r i n t i n g C a m e r a A n i m   )  
 	 	 	 	 {  
 	 	 	 	 	 a n i m a t i o n . a n i m a t i o n   =   ' c a m e r a _ s h a k e _ l o o p _ l v l 1 _ 1 ' ;  
 	 	 	 	 	 a n i m a t i o n . p r i o r i t y   =   C A P _ H i g h ;  
 	 	 	 	 	 a n i m a t i o n . b l e n d I n   =   1 . f ;  
 	 	 	 	 	 a n i m a t i o n . b l e n d O u t   =   1 . f ;  
 	 	 	 	 	 a n i m a t i o n . w e i g h t   =   1 . 5 f ;  
 	 	 	 	 	 a n i m a t i o n . s p e e d 	 =   1 . 0 f ;  
 	 	 	 	 	 a n i m a t i o n . l o o p   =   t r u e ;  
 	 	 	 	 	 a n i m a t i o n . a d d i t i v e   =   t r u e ;  
 	 	 	 	 	 a n i m a t i o n . r e s e t   =   t r u e ;  
 	 	 	 	 	 c a m e r a . P l a y A n i m a t i o n (   a n i m a t i o n   ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 s p r i n t i n g C a m e r a   =   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 { 	  
 	 	 	 s p r i n t i n g C a m e r a   =   f a l s e ;  
 	 	 	 c a m e r a . S t o p A n i m a t i o n ( ' c a m e r a _ s h a k e _ l o o p _ l v l 1 _ 1 ' ) ;  
 	 	 }  
 	 }  
 	  
 	 v a r   r u n n i n g C a m e r a   :   b o o l ;  
 	 f u n c t i o n   E n a b l e R u n C a m e r a (   f l a g   :   b o o l   )  
 	 {  
 	 	 v a r   c a m e r a   	 :   C C u s t o m C a m e r a   =   t h e G a m e . G e t G a m e C a m e r a ( ) ;  
 	 	 v a r   a n i m a t i o n   :   S C a m e r a A n i m a t i o n D e f i n i t i o n ;  
 	 	 v a r   v e l   :   f l o a t ;  
 	 	  
 	 	 i f   (   I s S w i m m i n g ( )   | |   O n C h e c k D i v i n g ( )   )  
 	 	 	 f l a g   =   f a l s e ;  
 	 	  
 	 	 i f   (   f l a g   )  
 	 	 {  
 	 	 	 a n i m a t i o n . a n i m a t i o n   =   ' c a m e r a _ s h a k e _ l o o p _ l v l 1 _ 5 ' ;  
 	 	 	 a n i m a t i o n . p r i o r i t y   =   C A P _ H i g h ;  
 	 	 	 a n i m a t i o n . b l e n d I n   =   1 . f ;  
 	 	 	 a n i m a t i o n . b l e n d O u t   =   1 . f ;  
 	 	 	 a n i m a t i o n . w e i g h t   =   0 . 7 f ;  
 	 	 	 a n i m a t i o n . s p e e d 	 =   0 . 8 f ;  
 	 	 	 a n i m a t i o n . l o o p   =   t r u e ;  
 	 	 	 a n i m a t i o n . a d d i t i v e   =   t r u e ;  
 	 	 	 a n i m a t i o n . r e s e t   =   t r u e ;  
 	 	 	 c a m e r a . P l a y A n i m a t i o n (   a n i m a t i o n   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 c a m e r a . S t o p A n i m a t i o n ( ' c a m e r a _ s h a k e _ l o o p _ l v l 1 _ 5 ' ) ;  
 	 	 }  
 	 	  
 	 	 r u n n i n g C a m e r a   =   f l a g ;  
 	 }  
 	  
 	  
 	 p r o t e c t e d   t i m e r   f u n c t i o n   S p r i n t i n g T i m e r ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 i f   (   ! t h e P l a y e r . m o d i f y P l a y e r S p e e d   )  
 	 	 {  
 	 	 	 s p r i n t i n g T i m e 	 + =   d t ;  
 	 	 	  
 	 	 	  
 	 	 	 i f   (   S h o u l d D r a i n S t a m i n a W h i l e S p r i n t i n g ( )   )  
 	 	 	 {  
 	 	 	 	 D r a i n S t a m i n a ( E S A T _ S p r i n t ,   0 ,   0 ,   ' ' ,   d t ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   S h o u l d D r a i n S t a m i n a W h i l e S p r i n t i n g ( )   :   b o o l  
 	 {  
 	 	 v a r   c u r r e n t S t a t e N a m e   :   n a m e ;  
 	 	  
 	 	 i f   (   s p r i n t i n g T i m e   > =   3 . 0   | |   G e t S t a m i n a P e r c e n t s ( )   <   1 . 0   )  
 	 	 {  
 	 	 	 c u r r e n t S t a t e N a m e   =   G e t C u r r e n t S t a t e N a m e ( ) ;  
 	 	 	  
 	 	 	 i f (   c u r r e n t S t a t e N a m e   = =   ' E x p l o r a t i o n '   | |   c u r r e n t S t a t e N a m e   = =   ' C o m b a t S t e e l '   | |   c u r r e n t S t a t e N a m e   = =   ' C o m b a t S i l v e r '   | |   c u r r e n t S t a t e N a m e   = =   ' C o m b a t F i s t s '   )  
 	 	 	 {  
  
 	 	 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 	 	 i f (   R G C C o n f i g G e t S p r i n t S t a m i n a U s a g e ( )   = =   E S S U _ N e v e r   )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f ( R G C C o n f i g G e t S p r i n t S t a m i n a U s a g e ( )   = =   E S S U _ C o m b a t )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   c u r r e n t S t a t e N a m e   = =   ' C o m b a t S t e e l '   | |   c u r r e n t S t a t e N a m e   = =   ' C o m b a t S i l v e r '   | |   c u r r e n t S t a t e N a m e   = =   ' C o m b a t F i s t s ' ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   c u r r e n t S t a t e N a m e   = =   ' E x p l o r a t i o n '   | |   c u r r e n t S t a t e N a m e   = =   ' C o m b a t S t e e l '   | |   c u r r e n t S t a t e N a m e   = =   ' C o m b a t S i l v e r '   | |   c u r r e n t S t a t e N a m e   = =   ' C o m b a t F i s t s ' ;  
 	 	 	 	 }  
 	 	 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	 	 }  
 	 	 }  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   S h o u l d U s e S t a m i n a W h i l e S p r i n t i n g ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 f u n c t i o n   G e t I s S p r i n t i n g ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s S p r i n t i n g ;  
 	 }  
 	  
 	 f u n c t i o n   G e t S p r i n t i n g T i m e ( )   :   f l o a t  
 	 {  
 	 	 i f (   ! G e t I s S p r i n t i n g ( )   )  
 	 	 {  
 	 	 	 r e t u r n   0 . 0 f ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   s p r i n t i n g T i m e ;  
 	 }  
 	  
 	  
 	 v a r   d i s a b l e S p r i n t i n g T i m e r E n a b l e d 	 :   b o o l ;  
 	 t i m e r   f u n c t i o n   D i s a b l e S p r i n t i n g T i m e r   (   t i m e   :   f l o a t   ,   i d   :   i n t )  
 	 {  
 	 	 d i s a b l e S p r i n t i n g T i m e r E n a b l e d   =   f a l s e ;  
 	 	 i f   (   ! t h e P l a y e r . C a n S p r i n t (   V e c L e n g t h (   r a w L e f t J o y V e c   )   )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . R e m o v e T i m e r ( ' S p r i n t i n g T i m e r ' ) ;  
 	 	 	 t h e P l a y e r . S e t S p r i n t T o g g l e (   f a l s e   ) ;   / / m o d W 3 R e d u x R G C  
 	 	 	 t h e P l a y e r . S e t I s S p r i n t i n g ( f a l s e ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s S p r i n t A c t i o n P r e s s e d ( )   :   b o o l  
 	 {  
 	 	  
 	 	 i f ( t h e P l a y e r . G e t L e f t S t i c k S p r i n t ( )   & &   t h e I n p u t . L a s t U s e d G a m e p a d ( ) )  
 	 	 {  
 	 	 	 r e t u r n   G e t I s S p r i n t T o g g l e d ( ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n   t h e I n p u t . I s A c t i o n P r e s s e d ( ' S p r i n t ' )   | |   s p r i n t T o g g l e ;  
 	 	 }  
 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t S p r i n t T o g g l e (   f l a g   :   b o o l   )  
 	 { 	  
 	 	 s p r i n t T o g g l e   =   f l a g ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t I s S p r i n t T o g g l e d ( )   :   b o o l  
 	 { 	  
 	 	 r e t u r n   s p r i n t T o g g l e ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t W a l k T o g g l e (   f l a g   :   b o o l   )  
 	 { 	  
 	 	 w a l k T o g g l e   =   f l a g ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t I s W a l k T o g g l e d ( )   :   b o o l  
 	 { 	  
 	 	 r e t u r n   w a l k T o g g l e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t I s R u n n i n g ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s R u n n i n g ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t I s R u n n i n g (   f l a g   :   b o o l   )  
 	 {  
 	 	 i s R u n n i n g   =   f l a g ;  
 	 }  
 	  
 	 f u n c t i o n   G e t I s W a l k i n g ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s W a l k i n g ;  
 	 }  
 	  
 	 f u n c t i o n   S e t I s W a l k i n g (   w a l k i n g   :   b o o l   )  
 	 {  
 	 	 i s W a l k i n g 	 =   w a l k i n g ;  
 	 }  
 	  
 	 f i n a l   f u n c t i o n   S e t I s M o v a b l e (   f l a g   :   b o o l   )  
 	 {  
 	 	 i s M o v a b l e   =   f l a g ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t M a n u a l C o n t r o l (   m o v e m e n t   :   b o o l ,   c a m e r a   :   b o o l   )    
 	 {    
 	 	 i f (   m o v e m e n t   = =   f a l s e   )  
 	 	 {  
 	 	 	 R a i s e F o r c e E v e n t (   ' I d l e '   ) ;  
 	 	 }  
 	 	 S e t I s M o v a b l e (   m o v e m e n t   ) ;    
 	 	 S e t S h o w H u d (   m o v e m e n t   ) ;  
 	 }  
 	  
 	 f i n a l   f u n c t i o n   G e t I s M o v a b l e ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s M o v a b l e   & &   i n p u t H a n d l e r . I s A c t i o n A l l o w e d ( E I A B _ M o v e m e n t ) ;  
 	 }  
 	  
 	 f u n c t i o n   S e t B I n t e r a c t i o n P r e s s e d (   f l a g   :   b o o l   )  
 	 {  
 	 	 b I n t e r a c t i o n P r e s s e d   =   f l a g ;  
 	 }  
 	  
 	 f u n c t i o n   G e t B I n t e r a c t i o n P r e s s e d ( )   :   b o o l    
 	 {  
 	 	 r e t u r n   b I n t e r a c t i o n P r e s s e d ;  
 	 }  
 	  
 	 f u n c t i o n   I s I n C o m b a t A c t i o n ( )     :   b o o l  
 	 {  
 	 	 r e t u r n   b I s I n C o m b a t A c t i o n ;  
 	 }  
 	  
 	 f u n c t i o n   I s I n C o m b a t A c t i o n F r i e n d l y ( )     :   b o o l  
 	 {  
 	 	 r e t u r n   b I s I n C o m b a t A c t i o n F r i e n d l y ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s I n C o m b a t A c t i o n _ S p e c i a l A t t a c k ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t B I s I n C o m b a t A c t i o n ( f l a g   :   b o o l )  
 	 {  
 	 	 i f (   f l a g   )  
 	 	 {  
 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i n J u m p S t a t e ' ,   1 . f   ) ;  
 	 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i n J u m p S t a t e ' ,   0 . f   ) ;  
 	 	 	  
 	 	 }  
 	 	  
 	 	 b I s I n C o m b a t A c t i o n   =   f l a g ;  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' i s I n C o m b a t A c t i o n F o r O v e r l a y ' ,   ( f l o a t ) b I s I n C o m b a t A c t i o n   ) ;  
 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t B I s I n C o m b a t A c t i o n F r i e n d l y ( f l a g   :   b o o l )  
 	 {  
 	 	 b I s I n C o m b a t A c t i o n F r i e n d l y   =   f l a g ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R a i s e C o m b a t A c t i o n F r i e n d l y E v e n t ( )   :   b o o l  
 	 {  
 	 	 i f   (   C a n R a i s e C o m b a t A c t i o n F r i e n d l y E v e n t ( )   )  
 	 	 {  
 	 	 	 i f (   R a i s e E v e n t ( ' C o m b a t A c t i o n F r i e n d l y ' )   )  
 	 	 	 {  
 	 	 	 	 S e t B I s I n C o m b a t A c t i o n F r i e n d l y (   t r u e   ) ;    
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C a n R a i s e C o m b a t A c t i o n F r i e n d l y E v e n t (   o p t i o n a l   i s S h o o t i n g C r o s s b o w   :   b o o l   )   :   b o o l  
 	 {  
 	 	 v a r   r a i s e E v e n t   	 	 :   b o o l   =   f a l s e ;  
 	 	 v a r   p l a y e r W i t c h e r   	 :   W 3 P l a y e r W i t c h e r ;  
 	 	 v a r   i t e m I d   	 	 	 :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 p l a y e r W i t c h e r   =   ( W 3 P l a y e r W i t c h e r ) t h i s ;  
 	  
 	 	 i f   (   ! p l a y e r W i t c h e r   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e   i f   (   i s S h o o t i n g C r o s s b o w   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e   i f   (   t h e P l a y e r . I s O n B o a t ( )   & &   ! t h e P l a y e r . I s C o m b a t M u s i c E n a b l e d ( )   )  
 	 	 	 r e t u r n   t r u e ;    
 	 	 e l s e  
 	 	 {  
 	 	 	 i t e m I d   =   t h e P l a y e r . G e t S e l e c t e d I t e m I d ( ) ;  
 	 	 	 i f   (   ! (   p l a y e r W i t c h e r . I s H o l d i n g I t e m I n L H a n d ( )   & &   i n v . I s I d V a l i d ( i t e m I d )   & &   ! i n v . I s I t e m C r o s s b o w ( i t e m I d )   & &   ! i n v . I s I t e m B o m b ( i t e m I d )   )   )  
   	 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 	  
 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e (   E I A B _ U n d e f i n e d , , ,   t r u e   ) ; 	  
 	 	 r e t u r n   f a l s e ; 	 	  
 	 }  
 	  
 	  
 	 f i n a l   f u n c t i o n   C a n P a r r y A t t a c k ( )   :   b o o l  
 	 { 	 	  
 	 	 r e t u r n   i n p u t H a n d l e r . I s A c t i o n A l l o w e d ( E I A B _ P a r r y )   & &   P a r r y C o u n t e r C h e c k ( )   & &   ! I s C u r r e n t l y D o d g i n g ( )   & &   s u p e r . C a n P a r r y A t t a c k ( ) ;    
 	 }  
 	  
 	  
 	 p r o t e c t e d   f u n c t i o n   P a r r y C o u n t e r C h e c k ( )   :   b o o l  
 	 {  
 	 	 v a r   c o m b a t A c t i o n T y p e     :   i n t ;  
 	 	 c o m b a t A c t i o n T y p e   =   ( i n t ) G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e ' ) ;    
 	 	  
 	 	 i f   (   c o m b a t A c t i o n T y p e   = =   ( i n t ) C A T _ P a r r y   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 	  
 	 	 i f   (   G e t B I s C o m b a t A c t i o n A l l o w e d ( )   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 	  
 	 	 i f   (   t h e P l a y e r . I s I n C o m b a t A c t i o n ( )   & &   c o m b a t A c t i o n T y p e   = =   ( i n t ) C A T _ D o d g e   )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . C a n P l a y H i t A n i m ( )   & &   t h e P l a y e r . I s T h r e a t e n e d ( )   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 f u n c t i o n   S e t I s H o r s e M o u n t e d (   i s O n   :   b o o l   )  
 	 {  
 	 	 i s H o r s e M o u n t e d   =   i s O n ;  
 	 }  
 	  
 	 f u n c t i o n   G e t I s H o r s e M o u n t e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s H o r s e M o u n t e d ;  
 	 }  
 	  
 	  
 	 f u n c t i o n   S e t I s C o m p a n i o n F o l l o w i n g (   i s O n   :   b o o l   )  
 	 {  
 	 	 i s C o m p a n i o n F o l l o w i n g   =   i s O n ;  
 	 }  
 	 f u n c t i o n   G e t I s C o m p a n i o n F o l l o w i n g ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s C o m p a n i o n F o l l o w i n g ;  
 	 }  
  
 	 f u n c t i o n   S e t S t a r t S c r e e n I s O p e n e d (   i s O p e n e d   :   b o o l )   :   v o i d    
 	 {  
 	 	 b S t a r t S c r e e n I s O p e n e d   =   i s O p e n e d ;  
 	 	  
 	 	  
 	 	 i f (   i s O p e n e d   )  
 	 	 	 t h e S o u n d . E n t e r G a m e S t a t e (   E S G S _ M u s i c O n l y   ) ;  
 	 	 e l s e  
 	 	 	 t h e S o u n d . L e a v e G a m e S t a t e (   E S G S _ M u s i c O n l y   ) ;  
 	 }  
 	  
 	 f u n c t i o n   G e t S t a r t S c r e e n I s O p e n e d (   )   :   b o o l    
 	 {  
 	 	 r e t u r n   b S t a r t S c r e e n I s O p e n e d ;  
 	 }  
 	  
 	 f u n c t i o n   S e t E n d S c r e e n I s O p e n e d (   i s O p e n e d   :   b o o l )   :   v o i d    
 	 {  
 	 	 b E n d S c r e e n I s O p e n e d   =   i s O p e n e d ;  
 	 	  
 	 	  
 	 	 i f (   i s O p e n e d   )  
 	 	 	 t h e S o u n d . E n t e r G a m e S t a t e (   E S G S _ M u s i c O n l y   ) ;  
 	 	 e l s e  
 	 	 	 t h e S o u n d . L e a v e G a m e S t a t e (   E S G S _ M u s i c O n l y   ) ;  
 	 }  
 	  
 	 f u n c t i o n   G e t E n d S c r e e n I s O p e n e d (   )   :   b o o l    
 	 {  
 	 	 r e t u r n   b E n d S c r e e n I s O p e n e d ;  
 	 }  
  
 	 f u n c t i o n   S e t S t a r t S c r e e n F a d e D u r a t i o n (   f a d e T i m e   :   f l o a t )   :   v o i d    
 	 {  
 	 	 f S t a r t S c r e e n F a d e D u r a t i o n   =   f a d e T i m e ;  
 	 } 	  
  
 	 f u n c t i o n   G e t S t a r t S c r e e n F a d e D u r a t i o n (   )   :   f l o a t    
 	 {  
 	 	 r e t u r n   f S t a r t S c r e e n F a d e D u r a t i o n ;  
 	 }  
 	  
 	 f u n c t i o n   S e t S t a r t S c r e e n F a d e I n D u r a t i o n (   f a d e T i m e   :   f l o a t )   :   v o i d    
 	 {  
 	 	 f S t a r t S c r e e n F a d e I n D u r a t i o n   =   f a d e T i m e ;  
 	 } 	  
  
 	 f u n c t i o n   G e t S t a r t S c r e e n F a d e I n D u r a t i o n (   )   :   f l o a t    
 	 {  
 	 	 r e t u r n   f S t a r t S c r e e n F a d e I n D u r a t i o n ;  
 	 }  
 	  
 	 f u n c t i o n   S e t S t a r t S c r e e n E n d W i t h B l a c k S c r e e n (   v a l u e   :   b o o l   )   :   v o i d    
 	 {  
 	 	 b S t a r t S c r e e n E n d W i t h B l a c k S c r e e n   =   v a l u e ;  
 	 } 	  
 	  
 	 f u n c t i o n   G e t S t a r t S c r e e n E n d W i t h B l a c k S c r e e n (   )   :   b o o l    
 	 {  
 	 	 r e t u r n   b S t a r t S c r e e n E n d W i t h B l a c k S c r e e n ;  
 	 }  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   C a n S t a r t T a l k ( )   :   b o o l  
 	 {  
 	 	 v a r   s t a t e N a m e   :   n a m e ;  
 	 	 s t a t e N a m e   =   t h e P l a y e r . G e t C u r r e n t S t a t e N a m e ( ) ;  
 	 	 r e t u r n   (   s t a t e N a m e   ! =   ' C o m b a t S t e e l '   & &   s t a t e N a m e   ! =   ' C o m b a t S i l v e r '   & &   s t a t e N a m e   ! =   ' C o m b a t F i s t s '   ) ; 	  
 	 }  
 	 	  
 	  
 	  
 	  
  
 	 p u b l i c   f u n c t i o n   U p d a t e R e q u e s t e d D i r e c t i o n V a r i a b l e s _ P l a y e r D e f a u l t ( )  
 	 {  
 	 	 U p d a t e R e q u e s t e d D i r e c t i o n V a r i a b l e s (   r a w P l a y e r H e a d i n g ,   G e t H e a d i n g ( )   ) ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 f u n c t i o n   S e t G u a r d e d (   f l a g   :   b o o l   )  
 	 {  
 	 	 s u p e r . S e t G u a r d e d ( f l a g ) ;  
 	 	 S e t P a r r y E n a b l e d ( I s G u a r d e d ( ) ) ;  
 	 	  
 	 	 i f   (   ! t h e P l a y e r . I s I n C o m b a t ( )   )  
 	 	 {  
 	 	 	 i f   (   f l a g   )  
 	 	 	 	 O n D e l a y O r i e n t a t i o n C h a n g e ( ) ;  
 	 	 	 e l s e  
 	 	 	 	 t h e P l a y e r . E n a b l e M a n u a l C a m e r a C o n t r o l (   t r u e ,   ' G u a r d '   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	 e v e n t   O n D e l a y O r i e n t a t i o n C h a n g e ( ) ;  
 	  
 	 f u n c t i o n   S e t B I s I n p u t A l l o w e d (   f l a g   :   b o o l ,   s o u r c e N a m e   :   n a m e   )  
 	 {  
 	 	 b I s I n p u t A l l o w e d   =   f l a g ;  
 	 	  
 	 	 i f ( f l a g )  
 	 	 {  
 	 	 	 d e b u g _ B I s I n p u t A l l o w e d L o c k s . C l e a r ( ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 d e b u g _ B I s I n p u t A l l o w e d L o c k s . P u s h B a c k ( s o u r c e N a m e ) ;  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   G e t B I s I n p u t A l l o w e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   b I s I n p u t A l l o w e d ;  
 	 }  
 	  
 	 f u n c t i o n   S e t B I s F i r s t A t t a c k I n C o m b o (   f l a g   :   b o o l   )  
 	 {  
 	 	 b I s F i r s t A t t a c k I n C o m b o   =   f l a g ;  
 	 }  
 	  
 	 f u n c t i o n   I s I n H i t A n i m ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   b I s I n H i t A n i m ;  
 	 }  
 	  
 	 f u n c t i o n   S e t I s I n H i t A n i m (   f l a g   :   b o o l   )  
 	 {  
 	 	 b I s I n H i t A n i m   =   f l a g ;  
 	 } 	  
 	  
 	 f u n c t i o n   S e t I n p u t M o d u l e N e e d e d T o R u n (   _ i n p u t M o d u l e N e e d e d T o R u n   :   f l o a t   )  
 	 {  
 	 	 i n p u t M o d u l e N e e d e d T o R u n   =   C l a m p F ( _ i n p u t M o d u l e N e e d e d T o R u n ,   0 . 5 f ,   1 . f ) ;  
 	 }  
 	  
 	 f u n c t i o n   G e t I n p u t M o d u l e N e e d e d T o R u n ( )   :   f l o a t  
 	 {  
 	 	 v a r   c o n f i g V a l u e : s t r i n g ;  
 	 	  
 	 	 i f   ( i n p u t M o d u l e N e e d e d T o R u n   = =   - 1 . 0 )  
 	 	 {  
 	 	 	 c o n f i g V a l u e   =   ( ( C I n G a m e C o n f i g W r a p p e r ) t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) ) . G e t V a r V a l u e ( ' C o n t r o l s ' ,   ' L e f t S t i c k S e n s i t i v i t y ' ) ;  
 	 	 	 i n p u t M o d u l e N e e d e d T o R u n   =   S t r i n g T o F l o a t ( c o n f i g V a l u e ,   0 . 7 ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   i n p u t M o d u l e N e e d e d T o R u n ;  
 	 }  
 	  
  
 	  
 	 e v e n t   O n A n i m E v e n t _ A l l o w I n p u t (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i f   (   a n i m E v e n t T y p e   = =   A E T _ D u r a t i o n S t a r t   )  
 	 	 {  
 	 	 	  
 	 	 	 S e t B I s I n p u t A l l o w e d (   t r u e ,   ' A n i m E v e n t A l l o w I n p u t S t a r t '   ) ;  
 	 	 }  
 	 	  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ D i s a l l o w I n p u t (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i f   (   a n i m E v e n t T y p e   = =   A E T _ D u r a t i o n S t a r t   )  
 	 	 {  
 	 	 	 S e t B I s I n p u t A l l o w e d (   f a l s e ,   ' A n i m E v e n t D i s a l l o w I n p u t S t a r t '   ) ;  
 	 	 }  
 	 	 e l s e   i f   (   a n i m E v e n t T y p e   = =   A E T _ D u r a t i o n E n d   )  
 	 	 {  
 	 	 	 S e t B I s I n p u t A l l o w e d (   t r u e ,   ' A n i m E v e n t D i s a l l o w I n p u t E n d '   ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ D i s a l l o w H i t A n i m (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i f   (   a n i m E v e n t T y p e   = =   A E T _ D u r a t i o n E n d   )  
 	 	 {  
 	 	 	 S e t C a n P l a y H i t A n i m (   t r u e   ) ; 	  
 	 	 }  
 	 	 e l s e   i f   (   (   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ A t t a c k   & &   ! t h i s . b I s F i r s t A t t a c k I n C o m b o   )  
 	 	 	 	 | |   (   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ D o d g e   & &   G e t B e h a v i o r V a r i a b l e (   ' i s R o l l i n g '   )   = =   0 . f   )   )  
 	 	 {  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 S e t C a n P l a y H i t A n i m (   f a l s e   ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ A l l o w H i t A n i m (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 S e t C a n P l a y H i t A n i m (   t r u e   ) ;  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ A l l o w B l e n d (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 S e t C a n P l a y H i t A n i m (   t r u e   ) ; 	  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ Q u i c k S l o t I t e m s (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 v a r   i t e m E n t i t y   :   W 3 U s a b l e I t e m ;  
 	 	  
 	 	 i f (   a n i m E v e n t N a m e   = =   ' E q u i p I t e m '   & &   c u r r e n t l y U s e d I t e m   )  
 	 	 {  
 	 	 	 i n v . M o u n t I t e m (   c u r r e n t l y E q u i p e d I t e m ,   t r u e   ) ;  
 	 	 }  
 	 	 e l s e   i f (   a n i m E v e n t N a m e   = =   ' U s e I t e m '   & &   c u r r e n t l y U s e d I t e m   )  
 	 	 {  
 	 	 	 c u r r e n t l y U s e d I t e m . O n U s e d (   t h i s   ) ;  
 	 	 }  
 	 	 e l s e   i f (   a n i m E v e n t N a m e   = =   ' H i d e I t e m '   )  
 	 	 {  
 	 	 	 i n v . U n m o u n t I t e m (   c u r r e n t l y E q u i p e d I t e m ,   t r u e   ) ;  
 	 	 	 c u r r e n t l y E q u i p e d I t e m   =   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 	 }  
 	 	 e l s e   i f (   a n i m E v e n t N a m e   = =   ' E q u i p I t e m L '     )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . I s H o l d i n g I t e m I n L H a n d ( )   )    
 	 	 	 {  
 	 	 	 	 i n v . M o u n t I t e m (   c u r r e n t l y E q u i p e d I t e m L ,   t r u e   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 t h e P l a y e r . S t a r t W a i t F o r I t e m S p a w n A n d P r o c c e s T a s k ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f (   (   a n i m E v e n t N a m e   = =   ' U s e I t e m L '   | |   a n i m E v e n t N a m e   = =   ' I t e m U s e L ' )   )  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	 t h e P l a y e r . A l l o w U s e S e l e c t e d I t e m ( ) ;  
 	 	 }  
 	 	 e l s e   i f (   a n i m E v e n t N a m e   = =   ' H i d e I t e m L '   )  
 	 	 {  
 	 	 	  
 	 	 	 t h e P l a y e r . K i l l W a i t F o r I t e m S p a w n A n d P r o c c e s T a s k ( ) ;  
 	 	  
 	 	 	 i f   (   c u r r e n t l y U s e d I t e m L   )  
 	 	 	 {  
 	 	 	 	 c u r r e n t l y U s e d I t e m L . O n H i d d e n (   t h i s   ) ;  
 	 	 	 	 c u r r e n t l y U s e d I t e m L . S e t V i s i b i l i t y (   f a l s e   ) ;  
 	 	 	 }  
 	 	 	 i n v . U n m o u n t I t e m (   c u r r e n t l y E q u i p e d I t e m L ,   t r u e   ) ;  
 	 	 	  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ S e t R a g d o l l (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i f   (   (   (   C M o v i n g P h y s i c a l A g e n t C o m p o n e n t   )   t h i s . G e t M o v i n g A g e n t C o m p o n e n t ( )   ) . H a s R a g d o l l ( )   )  
 	 	 {  
 	 	 	 i f   (   t h i s   = =   t h e P l a y e r   & &   ! t h e P l a y e r . I s O n B o a t ( )   )  
 	 	 	 {  
 	 	 	 	 T u r n O n R a g d o l l ( ) ;  
 	 	 	 	  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	 e v e n t   O n A n i m E v e n t _ I n A i r K D C h e c k (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i f ( I s I n A i r ( ) )  
 	 	 {  
 	 	 	 T u r n O n R a g d o l l ( ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   v a r   i l l u s i o n M e d a l l i o n   :   a r r a y < S I t e m U n i q u e I d > ;  
 	  
 	 e v e n t   O n A n i m E v e n t _ E q u i p M e d a l l i o n (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i l l u s i o n M e d a l l i o n . C l e a r ( ) ;  
 	 	 i l l u s i o n M e d a l l i o n   =   i n v . G e t I t e m s B y N a m e (   ' I l l u s i o n   M e d a l l i o n '   ) ;  
 	 	 i n v . M o u n t I t e m (   i l l u s i o n M e d a l l i o n [ 0 ] ,   t r u e   ) ;  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ H i d e M e d a l l i o n (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i n v . U n m o u n t I t e m (   i l l u s i o n M e d a l l i o n [ 0 ] ,   t r u e   ) ;  
 	 	 i l l u s i o n M e d a l l i o n . C l e a r ( ) ;  
 	 }  
 	  
  
  
 	  
 	 e v e n t   O n D i v i n g ( d i r   :   i n t ) { }  
 	 e v e n t   O n D i v e ( ) { }  
 	  
 	  
 	 e v e n t   O n C h e c k D i v i n g ( ) 	 	 	 	 {   r e t u r n   f a l s e ;   }  
 	 e v e n t   O n A l l o w S h a l l o w W a t e r C h e c k ( ) 	 {   r e t u r n   t r u e ;   }  
 	 e v e n t   O n C h e c k U n c o n s c i o u s ( ) 	 	 	 {   r e t u r n   f a l s e ;   }  
 	 e v e n t   O n A l l o w S w i m m i n g S p r i n t ( ) 	 	 {   r e t u r n   f a l s e ;   }  
 	 e v e n t   O n A l l o w e d D i v e D o w n ( ) 	 	 	 {   r e t u r n   t r u e ;   }  
 	 e v e n t   O n D i v e I n p u t (   d i v e P i t c h   :   f l o a t   ) { }  
 	  
 	 e v e n t   O n I s C a m e r a U n d e r w a t e r ( )  
 	 {  
 	 	  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 	 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	 e v e n t   O n H i t G r o u n d ( )  
 	 {  
 	 }  
 	  
 	 e v e n t   O n H i t C e i l i n g ( )  
 	 { 	 	  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   S e t T e r r M o d i f i e r (   v a l   :   f l o a t   )  
 	 {  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' T e r r a i n M o d i f i e r ' ,   v a l   ) ;  
 	 	 t e r r M o d i f i e r   =   v a l ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   S e t T e r r T y p e O n e (   t y p e   :   E T e r r a i n T y p e   )  
 	 {  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' T e r r a i n T y p e ' ,   ( i n t ) t y p e   ) ;  
 	 	 t e r r T y p e O n e   =   t y p e ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   S e t T e r r T y p e T w o (   t y p e   :   E T e r r a i n T y p e   )  
 	 {  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' T e r r a i n T y p e B l e n d e d ' ,   ( i n t ) t y p e   ) ;  
 	 	 t e r r T y p e T w o   =   t y p e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S t e p p e d O n T e r r a i n (   t y p e   :   E T e r r a i n T y p e   )  
 	 { 	  
 	 	  
 	 	 i f (   t y p e   ! =   t e r r T y p e O n e   & &   t y p e   ! =   t e r r T y p e T w o   )  
 	 	 {  
 	 	 	 i f (   t e r r T y p e O n e   = =   p r e v T e r r T y p e   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 S e t T e r r T y p e T w o (   t y p e   ) ;  
 	 	 	 	 S e t T e r r M o d i f i e r (   0 . 0 1 f   ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f (   t e r r T y p e T w o   = =   p r e v T e r r T y p e   )  
 	 	 	 {  
 	 	 	 	 S e t T e r r T y p e O n e (   t y p e   ) ;  
 	 	 	 	 S e t T e r r M o d i f i e r (   0 . 9 9 f   ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f (   t y p e   = =   t e r r T y p e O n e   )  
 	 	 {  
 	 	 	 t e r r M o d i f i e r   - =   0 . 1 f ;  
 	 	 }  
 	 	 e l s e   i f (   t y p e   = =   t e r r T y p e T w o   )  
 	 	 {  
 	 	 	 t e r r M o d i f i e r   + =   0 . 1 f ;  
 	 	 }  
 	 	  
 	 	 t e r r M o d i f i e r   =   C l a m p F (   t e r r M o d i f i e r ,   0 . 0 1 f ,   0 . 9 9 f   ) ;  
 	 	  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' T e r r a i n M o d i f i e r ' ,   t e r r M o d i f i e r   ) ;  
 	 	  
 	 	 p r e v T e r r T y p e   =   t y p e ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	 f u n c t i o n   P l a y e r C a n C o m m e n t ( )   :   b o o l  
 	 {  
 	 	 v a r   t i m e   :   E n g i n e T i m e ;  
 	 	 t i m e   =   c o m m e n t a r y L a s t T i m e   +   c o m m e n t a r y C o o l d o w n ;  
 	 	  
 	 	 r e t u r n   t h e G a m e . G e t E n g i n e T i m e ( )   >   t i m e ;  
 	 }  
 	  
 	 f u n c t i o n   P l a y e r C a n P l a y M o n s t e r C o m m e n t a r y ( )   :   b o o l  
 	 {  
 	 	 v a r   t i m e   :   E n g i n e T i m e ;  
 	 	 v a r   c o m m e n t a r y M o n s t e r C o o l d o w n   :   f l o a t ;  
 	 	  
 	 	 c o m m e n t a r y M o n s t e r C o o l d o w n   =   1 2 0 . 0 f ;  
 	 	 t i m e   =   c o m m e n t a r y L a s t T i m e   +   c o m m e n t a r y M o n s t e r C o o l d o w n ;  
 	 	  
 	 	 r e t u r n   t h e G a m e . G e t E n g i n e T i m e ( )   >   t i m e ;  
 	 }  
 	  
 	 f u n c t i o n   P l a y e r C o m m e n t a r y (   c o m m e n t a r y T y p e   :   E P l a y e r C o m m e n t a r y ,   o p t i o n a l   n e w C o m m e n t a r y C o o l d o w n   :   f l o a t   )    
 	 {  
 	 	 v a r   a c t o r 	 	 :   C P l a y e r   =   t h e P l a y e r ;  
 	 	 v a r   a c t i v e A c t o r   :   C E n t i t y ;  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 a c t i v e A c t o r   =   ( C E n t i t y )   a c t o r ;  
 	 	  
 	 	 c o m m e n t a r y L a s t T i m e   =   t h e G a m e . G e t E n g i n e T i m e ( ) ;  
 	 	  
 	 	 i f (   n e w C o m m e n t a r y C o o l d o w n   >   0 . 0 f   )  
 	 	 {  
 	 	 	 c o m m e n t a r y C o o l d o w n   =   n e w C o m m e n t a r y C o o l d o w n ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 c o m m e n t a r y C o o l d o w n   =   2 0 . 0 f ;  
 	 	 }  
 	 	 i f (   c o m m e n t a r y T y p e   = =   P C _ M e d a l i o n W a r n i n g     )  
 	 	 {  
 	 	 	 P l a y V o i c e s e t (   1 ,   " w a r n i n g "     ) ;  
 	 	 	 h u d . S h o w O n e l i n e r (   " M y   m e d a l l i o n " ,   a c t i v e A c t o r   ) ;  
 	 	 	 A d d T i m e r (   ' T u r n O f f O n e l i n e r ' ,   3 . 5 f   ) ;  
 	 	 	  
 	 	 }  
 	 	 e l s e   i f (   c o m m e n t a r y T y p e   = =   P C _ M o n s t e r R e a c t i o n     )  
 	 	 {  
 	 	 	 P l a y V o i c e s e t (   1 ,   " m o n s t e r "   ) ;  
 	 	 }  
 	 	  
 	 	 e l s e   i f (   c o m m e n t a r y T y p e   = =   P C _ C o l d W a t e r C o m m e n t   )  
 	 	 {  
 	 	 	  
 	 	 	 h u d . S h o w O n e l i n e r (   " D a m n ,   i t ' s   c o l d ! " ,   a c t i v e A c t o r   ) ;  
 	 	 	 A d d T i m e r (   ' T u r n O f f O n e l i n e r ' ,   3 . 5 f   ) ;  
 	 	 }  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   T u r n O f f O n e l i n e r (   d e l t a T i m e   :   f l o a t   ,   i d   :   i n t )  
 	 {  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 h u d . H i d e O n e l i n e r (   t h i s   ) ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   C a n P l a y S p e c i f i c V o i c e s e t ( )   :   b o o l   	 	 	 	 	 {   r e t u r n   c a n P l a y S p e c i f i c V o i c e s e t ;   }  
 	 p u b l i c   f u n c t i o n   S e t C a n P l a y S p e c i f i c V o i c e s e t (   v a l   :   b o o l   )   	 	 	 {   c a n P l a y S p e c i f i c V o i c e s e t   =   v a l ;   }  
 	 t i m e r   f u n c t i o n   R e s e t S p e c i f i c V o i c e s e t F l a g (   d t   :   f l o a t ,   i d   :   i n t   ) 	 {   S e t C a n P l a y S p e c i f i c V o i c e s e t (   t r u e   ) ;   }  
 	  
 	  
 	 p r i v a t e   v a r   n u m b e r O f E n e m i e s A t t a c k i n g   :   i n t ;  
 	 f i n a l   f u n c t i o n   S e t P l a y e r U n d e r A t t a c k (   t o g g l e   :   b o o l   )  
 	 {  
 	 	 i f (   t o g g l e   )  
 	 	 {  
 	 	 	 n u m b e r O f E n e m i e s A t t a c k i n g   + =   1 ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 n u m b e r O f E n e m i e s A t t a c k i n g   - =   1 ;  
 	 	 }  
 	 }  
 	  
 	 f i n a l   f u n c t i o n   I s P l a y e r U n d e r A t t a c k ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   n u m b e r O f E n e m i e s A t t a c k i n g ;  
 	 }  
 	  
 	  
 	  
 	 f u n c t i o n   G e t T h r e a t L e v e l ( )   :   i n t  
 	 {  
 	 	 r e t u r n   5 ;  
 	 }  
 	  
 	 f u n c t i o n   G e t B I s C o m b a t A c t i o n A l l o w e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 i m p o r t   f u n c t i o n   S e t E n e m y U p s c a l i n g (   b   :   b o o l   ) ;  
 	 i m p o r t   p u b l i c   f u n c t i o n   G e t E n e m y U p s c a l i n g ( )   :   b o o l ;  
 	  
 	 p u b l i c   f u n c t i o n   S e t A u t o C a m e r a C e n t e r (   o n   :   b o o l   )   {   a u t o C a m e r a C e n t e r T o g g l e   =   o n ;   }  
 	 p u b l i c   f u n c t i o n   G e t A u t o C a m e r a C e n t e r ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   a u t o C a m e r a C e n t e r T o g g l e   | |   I s C a m e r a L o c k e d T o T a r g e t ( ) ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t V e h i c l e C a c h e d S i g n (   s i g n   :   E S i g n T y p e   )   {   v e h i c l e C a c h e d S i g n   =   s i g n ;   }  
 	 p u b l i c   f u n c t i o n   G e t V e h i c l e C a c h e d S i g n ( )   :   E S i g n T y p e   {   r e t u r n   v e h i c l e C a c h e d S i g n ;   }  
 	 	  
 	 p u b l i c   f u n c t i o n   G e t M o n e y ( )   :   i n t  
 	 {  
 	 	 r e t u r n   i n v . G e t M o n e y ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   A d d M o n e y ( a m o u n t   :   i n t )    
 	 {  
 	 	 i n v . A d d M o n e y ( a m o u n t ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R e m o v e M o n e y ( a m o u n t   :   i n t )    
 	 {  
 	 	 i n v . R e m o v e M o n e y ( a m o u n t ) ;  
 	 }  
  
 	 f u n c t i o n   G e t T h r o w I t e m M o d e ( )   :   b o o l    
 	 {  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 f u n c t i o n   G e t E q u i p p e d S i g n ( )   :   E S i g n T y p e  
 	 {  
 	 	 r e t u r n   S T _ N o n e ;  
 	 }  
 	  
 	 f u n c t i o n   G e t C u r r e n t l y C a s t S i g n ( )   :   E S i g n T y p e  
 	 {  
 	 	 r e t u r n   S T _ N o n e ;  
 	 }  
 	  
 	 f u n c t i o n   I s C a s t i n g S i g n ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 f u n c t i o n   I s C u r r e n t S i g n C h a n n e l e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 f u n c t i o n   O n R a d i a l M e n u I t e m C h o o s e (   s e l e c t e d I t e m   :   s t r i n g   )  
 	 {  
 	 	  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   U p d a t e Q u i c k S l o t I t e m s ( )   :   b o o l    
 	 {  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   S e t U p d a t e Q u i c k S l o t I t e m s ( b U p d a t e   :   b o o l   )      
 	 {  
 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R e m o v e A l l P o t i o n E f f e c t s ( o p t i o n a l   s k i p   :   a r r a y < C B a s e G a m e p l a y E f f e c t > )  
 	 {  
 	 	 e f f e c t M a n a g e r . R e m o v e A l l P o t i o n E f f e c t s ( s k i p ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   B r e a k P h e r o m o n e E f f e c t ( )   :   b o o l  
 	 {  
 	 	 i f (   t h e P l a y e r . H a s B u f f (   E E T _ P h e r o m o n e N e k k e r   )   | |   t h e P l a y e r . H a s B u f f (   E E T _ P h e r o m o n e D r o w n e r   )   | |   t h e P l a y e r . H a s B u f f (   E E T _ P h e r o m o n e B e a r   )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . R e m o v e B u f f (   E E T _ P h e r o m o n e N e k k e r   ) ;  
 	 	 	 t h e P l a y e r . R e m o v e B u f f (   E E T _ P h e r o m o n e D r o w n e r   ) ;  
 	 	 	 t h e P l a y e r . R e m o v e B u f f (   E E T _ P h e r o m o n e B e a r   ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 	  
 	 p u b l i c   f u n c t i o n   G e t C u r r e n t T r a c k e d Q u e s t S y s t e m O b j e c t i v e s ( )   :   a r r a y < S J o u r n a l Q u e s t O b j e c t i v e D a t a >  
 	 {  
 	 	 r e t u r n   c u r r e n t T r a c k e d Q u e s t S y s t e m O b j e c t i v e s ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t C u r r e n t T r a c k e d Q u e s t S y s t e m O b j e c t i v e s ( c T Q O   :   a r r a y < S J o u r n a l Q u e s t O b j e c t i v e D a t a > )   :   v o i d  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 c u r r e n t T r a c k e d Q u e s t S y s t e m O b j e c t i v e s   =   c T Q O ;  
 	 	  
 	 	 f o r ( i   =   0 ;   i   <   c T Q O . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 c u r r e n t T r a c k e d Q u e s t S y s t e m O b j e c t i v e s [ i ]   =   c T Q O [ i ] ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t C u r r e n t T r a c k e d Q u e s t O b j e c t i v e s ( )   :   a r r a y < S J o u r n a l Q u e s t O b j e c t i v e D a t a >  
 	 {  
 	 	 r e t u r n   c u r r e n t T r a c k e d Q u e s t O b j e c t i v e s ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t C u r r e n t T r a c k e d Q u e s t O b j e c t i v e s ( c T Q O   :   a r r a y < S J o u r n a l Q u e s t O b j e c t i v e D a t a > )   :   v o i d  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	  
 	 	 c u r r e n t T r a c k e d Q u e s t O b j e c t i v e s   =   c T Q O ;  
 	 	  
 	 	 f o r ( i   =   0 ;   i   <   c T Q O . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 c u r r e n t T r a c k e d Q u e s t O b j e c t i v e s [ i ]   =   c T Q O [ i ] ;  
 	 	 }  
 	 }  
  
 	 p u b l i c   f u n c t i o n   G e t C u r r e n t T r a c k e d Q u e s t G U I D ( )   :   C G U I D  
 	 {  
 	 	 r e t u r n   c u r r e n t T r a c k e d Q u e s t G U I D ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t C u r r e n t T r a c k e d Q u e s t G U I D ( c T Q G   :   C G U I D )   :   v o i d  
 	 {  
 	 	 c u r r e n t T r a c k e d Q u e s t G U I D   =   c T Q G ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   H A X C h e c k I f N e w ( c h e c k G U I D   :   C G U I D   ) : b o o l  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 f o r (   i   =   0 ;   i   <   H A X N e w O b j T a b l e . S i z e ( ) ;   i   + =   1 )  
 	 	 {  
 	 	 	 i f (   H A X N e w O b j T a b l e [ i ]   = =   c h e c k G U I D )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 H A X N e w O b j T a b l e . P u s h B a c k ( c h e c k G U I D ) ;  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	 	 	  
 	 p u b l i c   f u n c t i o n   G e t S h o w H u d ( )   :   b o o l    
 	 {  
 	 	 r e t u r n   t r u e ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t S h o w H u d (   v a l u e   :   b o o l   )   :   v o i d  
 	 {  
 	 	  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 f u n c t i o n   D e b u g K i l l A l l ( )  
 	 {  
 	 	 v a r   i ,   e n e m i e s S i z e   :   i n t ;  
 	 	 v a r   a c t o r s   :   a r r a y < C A c t o r > ;  
 	 	  
 	 	 a c t o r s   =   G e t N P C s A n d P l a y e r s I n R a n g e ( 2 0 ,   2 0 ,   ' ' ,   F L A G _ A t t i t u d e _ H o s t i l e ) ;  
 	 	 e n e m i e s S i z e   =   a c t o r s . S i z e ( ) ;  
 	 	  
 	 	 f o r (   i   =   0 ;   i   <   e n e m i e s S i z e ;   i   + =   1   )  
 	 	 	 a c t o r s [ i ] . K i l l (   ' D e b u g ' ,   f a l s e ,   t h i s ) ; 	 	 	 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   D e b u g T e l e p o r t T o P i n (   o p t i o n a l   p o s X   :   f l o a t   ,   o p t i o n a l   p o s Y   :   f l o a t   )  
 	 {  
 	 	 v a r   m a p M a n a g e r   	 	 :   C C o m m o n M a p M a n a g e r   =   t h e G a m e . G e t C o m m o n M a p M a n a g e r ( ) ;  
 	 	 v a r   r o o t M e n u 	 	 :   C R 4 M e n u ;  
 	 	 v a r   m a p M e n u 	 	 	 :   C R 4 M a p M e n u ;  
 	 	 v a r   c u r r W o r l d 	 	 :   C W o r l d   =   t h e G a m e . G e t W o r l d ( ) ;  
 	 	 v a r   d e s t W o r l d P a t h 	 :   s t r i n g ;  
 	 	 v a r   i d 	 	 	 	 :   i n t ;  
 	 	 v a r   a r e a 	 	 	 :   i n t ;  
 	 	 v a r   t y p e 	 	 	 :   i n t ;  
 	 	 v a r   p o s i t i o n 	 	 :   V e c t o r ;  
 	 	 v a r   r o t a t i o n   	 	 :   E u l e r A n g l e s ;  
 	 	 v a r   g o T o C u r r e n t 	 	 :   B o o l   =   f a l s e ;  
 	 	  
 	 	 r o o t M e n u   =   ( C R 4 M e n u ) t h e G a m e . G e t G u i M a n a g e r ( ) . G e t R o o t M e n u ( ) ;  
 	 	  
 	 	 i f   (   r o o t M e n u   )  
 	 	 {  
 	 	 	 m a p M e n u   =   ( C R 4 M a p M e n u ) r o o t M e n u . G e t S u b M e n u ( ) ;  
 	 	 	  
 	 	 	 i f   (   m a p M e n u   )  
 	 	 	 {  
 	 	 	 	 p o s i t i o n . X   =   p o s X ;  
 	 	 	 	 p o s i t i o n . Y   =   p o s Y ;  
 	 	 	 	 d e s t W o r l d P a t h   =   m a p M a n a g e r . G e t W o r l d P a t h F r o m A r e a T y p e (   m a p M e n u . G e t S h o w n M a p T y p e ( )   ) ;  
 	 	 	 	  
 	 	 	 	 i f   (   m a p M e n u . I s C u r r e n t A r e a S h o w n ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 g o T o C u r r e n t   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 r o o t M e n u . C l o s e M e n u ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 { 	  
 	 	 	 m a p M a n a g e r . G e t U s e r M a p P i n B y I n d e x (   0 ,   i d ,   a r e a ,   p o s i t i o n . X ,   p o s i t i o n . Y ,   t y p e   ) ; 	 	  
 	 	 	 d e s t W o r l d P a t h   =   m a p M a n a g e r . G e t W o r l d P a t h F r o m A r e a T y p e (   a r e a   ) ;  
 	 	 	  
 	 	 	 i f   ( d e s t W o r l d P a t h   = =   " "   | |   d e s t W o r l d P a t h   = =   c u r r W o r l d . G e t P a t h ( )   )  
 	 	 	 {  
 	 	 	 	 g o T o C u r r e n t   =   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f   (   g o T o C u r r e n t   )  
 	 	 {  
 	 	 	 c u r r W o r l d . N a v i g a t i o n C o m p u t e Z ( p o s i t i o n ,   - 5 0 0 . f ,   5 0 0 . f ,   p o s i t i o n . Z ) ;  
 	 	 	 c u r r W o r l d . N a v i g a t i o n F i n d S a f e S p o t ( p o s i t i o n ,   0 . 5 f ,   2 0 . f ,   p o s i t i o n ) ;  
 	 	 	 	  
 	 	 	 T e l e p o r t (   p o s i t i o n   ) ;  
 	 	  
 	 	 	 i f   (   ! c u r r W o r l d . N a v i g a t i o n C o m p u t e Z ( p o s i t i o n ,   - 5 0 0 . f ,   5 0 0 . f ,   p o s i t i o n . Z )   ) 	 	  
 	 	 	 {  
 	 	 	 	 A d d T i m e r (   ' D e b u g W a i t F o r N a v i g a b l e T e r r a i n ' ,   1 . f ,   t r u e   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e G a m e . S c h e d u l e W o r l d C h a n g e T o P o s i t i o n (   d e s t W o r l d P a t h ,   p o s i t i o n ,   r o t a t i o n   ) ;  
 	 	 	 A d d T i m e r (   ' D e b u g W a i t F o r N a v i g a b l e T e r r a i n ' ,   1 . f ,   t r u e ,   ,   ,   t r u e   ) ;  
 	 	 }  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   D e b u g W a i t F o r N a v i g a b l e T e r r a i n (   d e l t a   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 v a r   p o s i t i o n   	 :   V e c t o r   =   G e t W o r l d P o s i t i o n ( ) ;  
 	 	  
 	 	 i f   (   t h e G a m e . G e t W o r l d ( ) . N a v i g a t i o n C o m p u t e Z ( p o s i t i o n ,   - 1 0 0 0 . f ,   1 0 0 0 . f ,   p o s i t i o n . Z )   )  
 	 	 {  
 	 	 	 R e m o v e T i m e r (   ' D e b u g W a i t F o r N a v i g a b l e T e r r a i n '   ) ;  
 	 	 	 t h e G a m e . G e t W o r l d ( ) . N a v i g a t i o n F i n d S a f e S p o t ( p o s i t i o n ,   0 . 5 f ,   2 0 . f ,   p o s i t i o n ) ;  
 	 	 	 T e l e p o r t (   p o s i t i o n   ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n H i t B y O b s t a c l e (   o b s t a c l e C o m p o n e n t   :   C C o m p o n e n t   )  
 	 {  
 	 	 o b s t a c l e C o m p o n e n t . S e t E n a b l e d (   f a l s e   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   D E B U G G e t D i s p l a y R a d i u s M i n i m a p I c o n s ( ) : b o o l    
 	 {  
 	 	 r e t u r n   _ D E B U G D i s p l a y R a d i u s M i n i m a p I c o n s ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   D E B U G S e t D i s p l a y R a d i u s M i n i m a p I c o n s ( i n V a l u e   :   b o o l ) : v o i d    
 	 {  
 	 	 _ D E B U G D i s p l a y R a d i u s M i n i m a p I c o n s   =   i n V a l u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   D b g _ U n l o c k A l l A c t i o n s ( )  
 	 {  
 	 	 i n p u t H a n d l e r . D b g _ U n l o c k A l l A c t i o n s ( ) ;  
 	 }  
 	 	  
 	  
 	  
 	  
 	  
 	 e v e n t   O n C r i t i c a l S t a t e A n i m S t o p G l o b a l H a c k ( )  
 	 {  
 	 	 v a r   b u f f   :   C B a s e G a m e p l a y E f f e c t ;  
 	 	  
 	 	 i f ( ! c s N o r m a l l y S t o p p e d B u f f )  
 	 	 {  
 	 	 	 i f ( e f f e c t M a n a g e r )  
 	 	 	 {  
 	 	 	 	 b u f f   =   e f f e c t M a n a g e r . G e t C u r r e n t l y A n i m a t e d C S ( ) ;  
 	 	 	 	 i f ( b u f f )  
 	 	 	 	 	 O n C r i t i c a l S t a t e A n i m S t o p ( ) ;  
 	 	 	 } 	 	 	 	 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 c s N o r m a l l y S t o p p e d B u f f   =   f a l s e ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   v a r   c s N o r m a l l y S t o p p e d B u f f   :   b o o l ;  
 	  
 	  
 	 e v e n t   O n C r i t i c a l S t a t e A n i m S t o p ( )  
 	 {  
 	 	 c s N o r m a l l y S t o p p e d B u f f   =   t r u e ;  
 	 	 	  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' b C r i t i c a l S t a t e ' ,   0 ) ;  
 	 	 C r i t i c a l S t a t e A n i m S t o p p e d ( f a l s e ) ;  
 	 	 i f   (   t h i s . I s R a g d o l l e d ( )   )    
 	 	 	 t h i s . R a i s e F o r c e E v e n t ( ' R e c o v e r F r o m R a g d o l l ' ) ;  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 e v e n t   O n R e c o v e r F r o m R a g d o l l E n d ( )  
 	 {  
 	 	 i f   (   t h i s . I s R a g d o l l e d ( )   )    
 	 	 	 t h i s . S e t K i n e m a t i c ( t r u e ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R e a p p l y C r i t i c a l B u f f ( )    
 	 {  
 	 	 v a r   b u f f   :   C B a s e G a m e p l a y E f f e c t ;  
 	 	  
 	 	  
 	 	 b u f f   =   C h o o s e C u r r e n t C r i t i c a l B u f f F o r A n i m ( ) ;  
 	 	 i f ( b u f f )  
 	 	 {  
 	 	 	 L o g C r i t i c a l ( " R e a p p l y i n g   c r i t i c a l   < < "   +   b u f f . G e t E f f e c t T y p e ( )   +   " > >   a f t e r   f i n i s h e d   C o m b a t A c t i o n   ( E n d ) " ) ;  
 	 	 	 S t a r t C S A n i m ( b u f f ) ;  
 	 	 }  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   R e a p p l y C S T i m e r ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 R e a p p l y C r i t i c a l B u f f ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s I n A g o n y ( )   :   b o o l 	 	 	 	 	 { r e t u r n   f a l s e ; }  
 	  
 	 p u b l i c   f u n c t i o n   G e t O T C a m e r a O f f s e t ( )   :   f l o a t  
 	 {  
 	 	 r e t u r n   o T C a m e r a O f f s e t ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s K n o c k e d U n c o n s c i o u s ( )   :   b o o l 	  
 	 {  
 	 	 r e t u r n   O n C h e c k U n c o n s c i o u s ( ) ;  
 	 }  
 	  
 	  
 	  
 	  
 	 f u n c t i o n   I s S a i l i n g ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   I s U s i n g V e h i c l e ( )   & &   G e t C u r r e n t S t a t e N a m e ( )   = =   ' S a i l i n g ' ;  
 	 }  
 	  
 	 f i n a l   f u n c t i o n   s p a w n B o a t A n d M o u n t ( )  
 	 {  
 	 	 v a r   e n t i t i e s   :   a r r a y < C G a m e p l a y E n t i t y > ;  
 	 	 v a r   v e h i c l e   :   C V e h i c l e C o m p o n e n t ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   b o a t   :   W 3 B o a t ;  
 	 	 v a r   e n t   :   C E n t i t y ;  
 	 	 v a r   p l a y e r   :   V e c t o r ;  
 	 	 v a r   r o t   :   E u l e r A n g l e s ;  
 	 	 v a r   t e m p l a t e   :   C E n t i t y T e m p l a t e ;  
 	 	  
 	 	 F i n d G a m e p l a y E n t i t i e s I n R a n g e (   e n t i t i e s ,   t h e P l a y e r ,   1 0 ,   1 0 ,   ' v e h i c l e '   ) ;  
 	 	  
 	 	 f o r (   i   =   0 ;   i   <   e n t i t i e s . S i z e ( ) ;   i   =   i   +   1   )  
 	 	 {  
 	 	 	 b o a t   =   (   W 3 B o a t   ) e n t i t i e s [   i   ] ;  
 	 	 	 i f (   b o a t   )  
 	 	 	 {  
 	 	 	 	 v e h i c l e   =   (   C V e h i c l e C o m p o n e n t   ) (   b o a t . G e t C o m p o n e n t B y C l a s s N a m e (   ' C V e h i c l e C o m p o n e n t '   )   ) ;  
 	 	 	 	 i f   (   v e h i c l e   )  
 	 	 	 	 {  
 	 	 	 	 	 v e h i c l e . M o u n t (   t h e P l a y e r ,   V M T _ I m m e d i a t e U s e ,   E V S _ d r i v e r _ s l o t   ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	 }  
  
 	 	 r o t   =   t h e P l a y e r . G e t W o r l d R o t a t i o n ( ) ; 	  
 	 	 p l a y e r   =   t h e P l a y e r . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 t e m p l a t e   =   ( C E n t i t y T e m p l a t e ) L o a d R e s o u r c e (   ' b o a t '   ) ;  
 	 	 p l a y e r . Z   =   0 . 0 f ;  
  
 	 	 e n t   =   t h e G a m e . C r e a t e E n t i t y ( t e m p l a t e ,   p l a y e r ,   r o t ,   t r u e ,   f a l s e ,   f a l s e ,   P M _ P e r s i s t   ) ;  
 	 	  
 	 	 i f (   e n t   )  
 	 	 {  
 	 	 	 v e h i c l e   =   (   C V e h i c l e C o m p o n e n t   ) (   e n t . G e t C o m p o n e n t B y C l a s s N a m e (   ' C V e h i c l e C o m p o n e n t '   )   ) ;  
 	 	 	 i f   (   v e h i c l e   )  
 	 	 	 {  
 	 	 	 	 v e h i c l e . M o u n t (   t h e P l a y e r ,   V M T _ I m m e d i a t e U s e ,   E V S _ d r i v e r _ s l o t   ) ;  
 	 	 	 	 b o a t   =   (   W 3 B o a t   ) e n t ;  
 	 	 	 	 i f (   b o a t   )  
 	 	 	 	 {  
 	 	 	 	 	 b o a t . S e t T e l e p o r t e d F r o m O t h e r H U B (   t r u e   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   D e l a y e d S p a w n A n d M o u n t B o a t (   d e l t a   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 s p a w n B o a t A n d M o u n t ( ) ;  
 	 	 R e m o v e T i m e r (   ' D e l a y e d S p a w n A n d M o u n t B o a t '   ) ;  
 	 }  
 }  
 