/ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / * *   	 �   2 0 1 5   C D   P R O J E K T   S . A .   A l l   r i g h t s   r e s e r v e d .  
 / * *   	 T H E   W I T C H E R �   i s   a   t r a d e m a r k   o f   C D   P R O J E K T   S .   A .  
 / * *   	 T h e   W i t c h e r   g a m e   i s   b a s e d   o n   t h e   p r o s e   o f   A n d r z e j   S a p k o w s k i .  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
  
  
  
  
  
 e n u m   E C l i m b R e q u i r e m e n t T y p e  
 {  
 	 E C R T _ L a n d e d 	 	 	 =   0 ,  
 	 E C R T _ J u m p i n g 	 	 =   1 ,  
 	 E C R T _ A i r C o l l i d i n g 	 =   2 ,  
 	 E C R T _ S w i m m i n g 	 	 =   3 ,  
 	 E C R T _ R u n n i n g 	 	 =   4 ,  
 }  
  
  
 e n u m   E C l i m b R e q u i r e m e n t V a u l t  
 {  
 	 E C R V _ N o V a u l t 	 =   0 ,  
 	 E C R V _ V a u l t 	 	 =   1 ,  
 }  
  
  
 e n u m   E C l i m b R e q u i r e m e n t P l a t f o r m  
 {  
 	 E C R V _ N o P l a t f o r m 	 =   0 ,  
 	 E C R V _ P l a t f o r m 	 =   1 ,  
 }  
  
  
 e n u m   E C l i m b H e i g h t T y p e  
 {  
 	 E C H T _ S t e p 	 	 =   0 ,  
 	 E C H T _ V e r y S m a l l 	 =   1 ,  
 	 E C H T _ S m a l l 	 	 =   2 ,  
 	 E C H T _ M e d i u m 	 	 =   3 ,  
 	 E C H T _ H i g h 	 	 =   4 ,  
 	 E C H T _ V e r y H i g h 	 =   5 ,  
 }  
  
  
 e n u m   E C l i m b D i s t a n c e T y p e  
 {  
 	 E C D T _ N o r m a l 	 =   0 ,  
 	 E C D T _ C l o s e 	 =   1 ,  
 	 E C D T _ F a r 	 =   2 ,  
 }  
  
  
 e n u m   E C l i m b E n d R e a d y  
 {  
 	 E C R _ N o t R e a d y 	 =   0 ,  
 	 E C R _ W a l k 	 	 =   1 ,  
 	 E C R _ R u n 	 	 	 =   2 ,  
 	 E C R _ F a l l 	 	 =   3 ,  
 	 E C R _ I d l e 	 	 =   4 ,  
 }  
  
  
 e n u m   E O u t s i d e C a p s u l e S t a t e  
 {  
 	 E O C S _ I n a c t i v e 	 	 =   0 ,  
 	 E O C S _ S t a r t i n g 	 	 =   1 ,  
 	 E O C S _ P e r f e c t F o l l o w 	 =   2 ,  
 	 E O C S _ R e c o v e r 	 	 =   3 ,  
 }  
  
  
  
 s t r u c t   C C l i m b T y p e  
 { 	 	  
 	  
 	 e d i t a b l e 	 	 	 v a r   r e q u i r e d S t a t e 	 	 	 :   E C l i m b R e q u i r e m e n t T y p e ;  
 	 e d i t a b l e 	 	 	 v a r   r e q u i r e d V a u l t 	 	 	 :   E C l i m b R e q u i r e m e n t V a u l t ;  
 	 e d i t a b l e 	 	 	 v a r   r e q u i r e d P l a t f o r m 	 	 :   E C l i m b R e q u i r e m e n t P l a t f o r m ;  
 	 e d i t a b l e 	 	 	 v a r 	 t y p e 	 	 	 	 	 :   E C l i m b H e i g h t T y p e ; 	 	 	 	 d e f a u l t 	 t y p e 	 	 	 	 =   E C H T _ M e d i u m ;  
 	  
 	  
 	 e d i t a b l e 	 	 	 v a r 	 h e i g h t U s e D e f a u l t s 	 	 :   b o o l ; 	 	 	 	 	 	 	 d e f a u l t 	 h e i g h t U s e D e f a u l t s 	 =   t r u e ;  
 	 e d i t a b l e 	 	 	 v a r 	 h e i g h t M a x 	 	 	 	 :   f l o a t ; 	 	 	 	 	 	 d e f a u l t 	 h e i g h t M a x 	 	 	 =   1 . 4 f ;  
 	 e d i t a b l e 	 	 	 v a r 	 h e i g h t M i n 	 	 	 	 :   f l o a t ; 	 	 	 	 	 	 d e f a u l t 	 h e i g h t M i n 	 	 	 =   0 . 2 f ;  
 	 e d i t a b l e 	 	 	 v a r   h e i g h t E x a c t 	 	 	 	 :   f l o a t ; 	 	 	 	 	 	 d e f a u l t 	 h e i g h t E x a c t 	 	 	 =   1 . 0 f ;    
 	  
 	  
 	 e d i t a b l e 	 	 	 v a r   f o r w a r d D i s t E x a c t 	 	 :   f l o a t ; 	 	 	 	 	 	 d e f a u l t 	 f o r w a r d D i s t E x a c t 	 =   0 . 4 f ;  
 	  
 	  
 	 e d i t a b l e   	 	 	 v a r 	 p l a y C a m e r a A n i m a t i o n 	 	 :   b o o l ; 	 	 	 	 	 	 	 d e f a u l t 	 p l a y C a m e r a A n i m a t i o n 	 =   f a l s e ;  
 	 e d i t a b l e   	 	 	 v a r 	 c a m e r a A n i m a t i o n 	 	 	 :   n a m e ;  
 }  
  
  
  
 c l a s s   C E x p l o r a t i o n S t a t e C l i m b   e x t e n d s   C E x p l o r a t i o n S t a t e A b s t r a c t  
 { 	  
 	 p u b l i c   	 	 	 	 	 	 v a r 	 m _ C l i m b O r a c l e O 	 	 	 :   C E x p l o r a t i o n C l i m b O r a c l e ;  
 	  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 e n a b l e d 	 	 	 	 	 :   b o o l ; 	 	 	 	 	 d e f a u l t 	 e n a b l e d 	 	 	 	 	 =   t r u e ;  
 	  
 	  
 	  
 	 p r i v a t e   e d i t a b l e   i n l i n e d 	 v a r 	 c l i m b T y p e s 	 	 	 	 :   a r r a y <   C C l i m b T y p e   > ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 c l i m b C u r 	 	 	 	 :   C C l i m b T y p e ;  
 	 p r i v a t e 	 e d i t a b l e   i n l i n e d 	 v a r 	 h e i g h t M a x T o R u n 	 	 	 :   f l o a t ;  
 	 p r i v a t e 	 e d i t a b l e   i n l i n e d 	 v a r 	 p l a t f o r m H e i g h t M i n A i r 	 :   f l o a t ;  
 	 p r i v a t e 	 e d i t a b l e   i n l i n e d 	 v a r 	 p l a t f o r m H e i g h t M i n 	 	 :   f l o a t ;  
 	  
 	  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 c l i m b P o i n t 	 	 	 	 :   V e c t o r ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 w a l l N o r m a l 	 	 	 	 :   V e c t o r ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 h e i g h t T a r g e t 	 	 	 :   f l o a t ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 v a u l t i n g F o u n d 	 	 	 :   E C l i m b R e q u i r e m e n t V a u l t ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r   p l a t f o r m F o u n d 	 	 	 :   E C l i m b R e q u i r e m e n t P l a t f o r m ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r   c u r P l a y e r S t a t e T y p e 	 	 :   E C l i m b R e q u i r e m e n t T y p e ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 v a u l t E n d s F a l l i n g 	 	 :   b o o l ;  
 	  
 	  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 e n d e d 	 	 	 	 	 :   b o o l ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 c a n W a l k 	 	 	 	 	 :   b o o l ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 c a n R u n 	 	 	 	 	 :   b o o l ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 c a n F a l l 	 	 	 	 	 :   b o o l ; 	 	  
 	 e d i t a b l e 	 	 	 	 	 v a r   a n i m D u r a t i o n L i m i t 	 	 :   f l o a t ; 	 	 	 	 d e f a u l t 	 a n i m D u r a t i o n L i m i t 	 	 =   5 . 0 f ;  
 	 e d i t a b l e 	 	 	 	 	 v a r   s l i d e D i s t M a x O n R u n 	 	 :   f l o a t ; 	 	 	 	 d e f a u l t 	 s l i d e D i s t M a x O n R u n 	 	 =   1 . 5 f ;  
 	  
 	  
 	 p r i v a t e 	 e d i t a b l e 	 	 	 v a r 	 a u t o C l i m b 	 	 	 	 :   b o o l ; 	 	 	 	 	 d e f a u l t 	 a u t o C l i m b 	 	 	 	 =   f a l s e ;  
 	 p r i v a t e 	 e d i t a b l e 	 	 	 v a r 	 a u t o C l i m b O n A i r 	 	 	 :   b o o l ; 	 	 	 	 	 d e f a u l t 	 a u t o C l i m b O n A i r 	 	 	 =   f a l s e ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 i n p u t A n g l e T o E n t e r 	 	 :   f l o a t ; 	 	 	 	 d e f a u l t 	 i n p u t A n g l e T o E n t e r 	 	 =   1 8 0 . 0 f ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 i n p u t A n g l e T o R u n 	 	 	 :   f l o a t ; 	 	 	 	 d e f a u l t 	 i n p u t A n g l e T o R u n 	 	 	 =   4 5 . 0 f ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 i n p u t A t t e m p t s T o p 	 	 :   b o o l ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 i n p u t D i r e c t i o n 	 	 	 :   V e c t o r ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 i n p u t A i r H o l d 	 	 	 :   b o o l ; 	 	 	 	 	 d e f a u l t 	 i n p u t A i r H o l d 	 	 	 =   t r u e ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 i n p u t A i r T i m e G a p 	 	 	 :   b o o l ; 	 	 	 	 	 d e f a u l t 	 i n p u t A i r T i m e G a p 	 	 	 =   f a l s e ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 i n p u t T i m e G a p C h e c k 	 	 :   f l o a t ; 	 	 	 	 d e f a u l t 	 i n p u t T i m e G a p C h e c k 	 	 =   0 . 3 f ;  
 	  
 	  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 c h a r a c t e r R a d i u s 	 	 	 :   f l o a t ; 	 	 	 	 d e f a u l t 	 c h a r a c t e r R a d i u s 	 	 	 =   0 . 4 f ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 a d j u s t I n i t i a l l R o t a t   	 :   f l o a t ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 a d j u s t R o t a t i o n 	 	 	 :   f l o a t ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 a d j u s t T r a n s l a t i o n 	 	 :   V e c t o r ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r   a d j u s t I n i t i a l R o t D o n e 	 :   b o o l ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r   a d j u s t R o t D o n e 	 	 	 :   b o o l ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r   a d j u s t T r a n s D o n e 	 	 	 :   b o o l ;  
 	  
 	 p r i v a t e 	 	 	 	 	 	 v a r   a d j u s t S p e e d M a x 	 	 	 :   f l o a t ; 	 	 	 	 d e f a u l t 	 a d j u s t S p e e d M a x 	 	 	 =   1 2 . 0 f ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r   a d j u s t S p e e d R e q u i r e 	 	 :   b o o l ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r   a d j u s t S p e e d E n d T i m e 	 	 :   f l o a t ;  
 	  
 	  
 	 p r i v a t e 	 	 	 	 	 	 v a r   a d j u s t 2 D d u r a t i o n 	 	 :   f l o a t ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r   a d j u s t 2 S p e e d 	 	 	 :   f l o a t ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r   a d j u s t 2 T r a n s l a t i o n 	 	 :   V e c t o r ;  
 	  
 	 p r i v a t e 	 	 	 	 	 	 v a r   h e i g h t T o A d d 	 	 	 	 :   f l o a t ;  
 	  
 	  
 	  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 p e l v i s T r a n s M a x 	 	 	 :   f l o a t ; 	 	 	 	 d e f a u l t 	 p e l v i s T r a n s M a x 	 	 	 =   0 . 4 f ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 p e l v i s T r a n s A l l o w 	 	 :   b o o l ; 	 	 	 	 	 d e f a u l t 	 p e l v i s T r a n s A l l o w 	 	 =   t r u e ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 p e l v i s T r a n s S t a t e 	 	 :   E O u t s i d e C a p s u l e S t a t e ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 p e l v i s T r a n s l a t i o n N 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 p e l v i s T r a n s l a t i o n N 	 	 =   ' C l i m b M o v e F o r w a r d ' ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 p e l v i s T r a n s C u r 	 	 	 :   f l o a t ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 p e l v i s T r a n s T a r g e t 	 	 :   f l o a t ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 p e l v i s T r a n s S p e e d 	 	 :   f l o a t ; 	 	 	 	 d e f a u l t 	 p e l v i s T r a n s S p e e d 	 	 =   3 . 0 f ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 p e l v i s T r a n s S p e e d O u t 	 	 :   f l o a t ; 	 	 	 	 d e f a u l t 	 p e l v i s T r a n s S p e e d O u t 	 	 =   1 0 . 0 f ;  
 	  
 	  
 	  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h A n i m A d j u s t I n i t R o t 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h A n i m A d j u s t I n i t R o t 	 =   ' C l i m b I n i t i a l R o t a t e ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h A n i m A d j u s t R o t 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h A n i m A d j u s t R o t 	 	 =   ' C l i m b S t a r t R o t a t e ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h A n i m A d j u s t T r a n s 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h A n i m A d j u s t T r a n s 	 	 =   ' C l i m b S t a r t T r a n s l a t e ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h A n i m E n d e d 	 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h A n i m E n d e d 	 	 	 =   ' C l i m b C a n E n d ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h A n i m C a n W a l k 	 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h A n i m C a n W a l k 	 	 	 =   ' C l i m b C a n W a l k ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h A n i m C a n R u n 	 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h A n i m C a n R u n 	 	 	 =   ' C l i m b C a n R u n ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h A n i m C a n F a l l 	 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h A n i m C a n F a l l 	 	 	 =   ' C l i m b C a n F a l l ' ;  
 	  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h E n a b l e I K 	 	 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h E n a b l e I K 	 	 	 	 =   ' C l i m b E n a b l e I K ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h D i s a b l e P e l v i s T r a n s 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h D i s a b l e P e l v i s T r a n s 	 =   ' C l i m b D i s a b l e P e l v i s T r a n s ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h E n a b l e H a n d s I K 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h E n a b l e H a n d s I K 	 	 =   ' C l i m b E n a b l e H a n d s I K ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h E n a b l e H a n d L I K 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h E n a b l e H a n d L I K 	 	 =   ' C l i m b E n a b l e H a n d L I K ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h E n a b l e H a n d R I K 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h E n a b l e H a n d R I K 	 	 =   ' C l i m b E n a b l e H a n d R I K ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h D i s a b l e H a n d s I K 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h D i s a b l e H a n d s I K 	 	 =   ' C l i m b D i s a b l e H a n d s I K ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h D i s a b l e H a n d L I K 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h D i s a b l e H a n d L I K 	 	 =   ' C l i m b D i s a b l e H a n d L I K ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h D i s a b l e H a n d R I K 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h D i s a b l e H a n d R I K 	 	 =   ' C l i m b D i s a b l e H a n d R I K ' ;  
 	  
 	  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h H e i g h t T y p e E n u m 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h H e i g h t T y p e E n u m 	 	 =   ' C l i m b H e i g h t T y p e ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h V a u l t T y p e E n u m 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h V a u l t T y p e E n u m 	 	 =   ' C l i m b V a u l t T y p e ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h P l a t f o r m T y p e E n u m 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h P l a t f o r m T y p e E n u m 	 	 =   ' C l i m b P l a t f o r m T y p e ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h S t a t e T y p e E n u m 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h S t a t e T y p e E n u m 	 	 =   ' C l i m b S t a t e T y p e ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h G o T o R u n 	 	 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h G o T o R u n 	 	 	 	 =   ' C l i m b T o R u n ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h G o T o W a l k 	 	 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h G o T o W a l k 	 	 	 	 =   ' C l i m b T o W a l k ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h T o R u n 	 	 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h T o R u n 	 	 	 	 =   ' C l i m b E n d s R u n n i n g ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h V a r E n d 	 	 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h V a r E n d 	 	 	 	 =   ' C l i m b C a n E n d M o d e ' ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 b e h A n i m S p e e d 	 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b e h A n i m S p e e d 	 	 	 =   ' C l i m b A n i m S p e e d ' ;  
 	  
 	  
 	  
 	 p r i v a t e 	 e d i t a b l e 	 	 	 v a r   c o n t i n o u s H a n d I K 	 	 	 :   b o o l ; 	 	 	 	 	 d e f a u l t 	 c o n t i n o u s H a n d I K 	 	 	 =   t r u e ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 h a n d I K M i n D i s t T o E n a b l e 	 :   f l o a t ; 	 	 	 	 d e f a u l t 	 h a n d I K M i n D i s t T o E n a b l e 	 =   0 . 0 5 f ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 h a n d I K M a x D i s t 	 	 	 :   f l o a t ; 	 	 	 	 d e f a u l t 	 h a n d I K M a x D i s t 	 	 	 =   0 . 3 f ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 h a n d I K F o r w a r d O f f s e t 	 	 :   f l o a t ; 	 	 	 	 d e f a u l t 	 h a n d I K F o r w a r d O f f s e t 	 	 =   0 . 2 f ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 h a n d I K H a l f M a x H e i g h t 	 	 :   f l o a t ; 	 	 	 	 d e f a u l t 	 h a n d I K H a l f M a x H e i g h t 	 	 =   1 . 0 f ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 h a n d I K B l e n d S p e e d I n 	 	 :   f l o a t ; 	 	 	 	 d e f a u l t 	 h a n d I K B l e n d S p e e d I n 	 	 =   3 . 5 f ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 h a n d I K B l e n d S p e e d O u t 	 	 :   f l o a t ; 	 	 	 	 d e f a u l t 	 h a n d I K B l e n d S p e e d O u t 	 	 =   1 . 5 f ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 h a n d T h i c k n e s s 	 	 	 :   f l o a t ; 	 	 	 	 d e f a u l t 	 h a n d T h i c k n e s s 	 	 	 =   0 . 0 2 ;  
 	 p r o t e c t e d   	 	 	 	 	 v a r 	 b o n e R i g h t H a n d 	 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b o n e R i g h t H a n d 	 	 	 =   ' r _ h a n d ' ;  
 	 p r o t e c t e d   	 	 	 	 	 v a r 	 b o n e L e f t H a n d 	 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 b o n e L e f t H a n d 	 	 	 =   ' l _ h a n d ' ;  
 	 p r o t e c t e d   	 	 	 	 	 v a r 	 b o n e I n d e x R i g h t H a n d 	 	 :   i n t ;  
 	 p r o t e c t e d   	 	 	 	 	 v a r 	 b o n e I n d e x L e f t H a n d 	 	 :   i n t ;  
 	  
 	 p r o t e c t e d   	 	 	 	 	 v a r   r i g h t H a n d O f f s e t 	 	 	 :   f l o a t ;  
 	 p r o t e c t e d   	 	 	 	 	 v a r   l e f t H a n d O f f s e t 	 	 	 :   f l o a t ;  
 	 p r o t e c t e d   	 	 	 	 	 v a r   r i g h t H a n d O f f s e t C u r 	 	 :   f l o a t ;  
 	 p r o t e c t e d   	 	 	 	 	 v a r   l e f t H a n d O f f s e t C u r 	 	 :   f l o a t ;  
 	  
 	 p r o t e c t e d   	 	 	 	 	 v a r   h a n d I K E n a b l e d 	 	 	 :   b o o l ;  
 	 p r o t e c t e d   	 	 	 	 	 v a r   h a n d I K E n a b l e d L e f t 	 	 :   b o o l ;  
 	 p r o t e c t e d   	 	 	 	 	 v a r   h a n d I K E n a b l e d R i g h t 	 	 :   b o o l ;  
 	 p r o t e c t e d   	 	 	 	 	 v a r   h a n d I K q u e u e d L 	 	 	 :   b o o l ;  
 	 p r o t e c t e d   	 	 	 	 	 v a r   h a n d I K q u e u e d R 	 	 	 :   b o o l ;  
 	  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 h a n d I K L R a y O r i g i n 	 	 :   V e c t o r ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 h a n d I K L R a y E n d 	 	 	 :   V e c t o r ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 h a n d I K L R a y C o l l i s i o n 	 	 :   V e c t o r ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 h a n d I K R R a y O r i g i n 	 	 :   V e c t o r ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 h a n d I K R R a y E n d 	 	 	 :   V e c t o r ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 h a n d I K R R a y C o l l i s i o n 	 	 :   V e c t o r ;  
 	  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 c o l l i s i o n O b s t a c l e s N a m e s 	 :   a r r a y < n a m e > ;  
 	  
 	  
 	 p r o t e c t e d   e d i t a b l e   i n l i n e d 	 v a r 	 c a m e r a S e t V a u l t 	 	 	 :   C C a m e r a P a r a m e t e r s S e t ; 	 	  
 	 p r o t e c t e d   e d i t a b l e   i n l i n e d 	 v a r 	 c a m e r a S e t J u m p 	 	 	 :   C C a m e r a P a r a m e t e r s S e t ; 	 	  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 u p d a t e C a m e r a M a n u a l 	 	 :   b o o l ; 	 	 	 	 	 d e f a u l t 	 u p d a t e C a m e r a M a n u a l 	 	 =   f a l s e ;  
 	 p r i v a t e   e d i t a b l e 	 	 	 v a r 	 u p d a t e C a m e r a A n i m 	 	 :   b o o l ; 	 	 	 	 	 d e f a u l t 	 u p d a t e C a m e r a A n i m 	 	 =   f a l s e ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 c a m O r i g i n a l P o s i t i o n 	 	 :   V e c t o r ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 c a m O r i g i n a l R o t a t i o n 	 	 :   E u l e r A n g l e s ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 c a m C u r R o t a t i o n 	 	 	 :   E u l e r A n g l e s ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 c a m O r i g i n a l O f f s e t 	 	 :   V e c t o r ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 c a m S t a r t 	 	 	 	 :   b o o l ;  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 c a m F o l l o w B o n e I D 	 	 	 :   i n t ;  
 	 p r i v a t e 	 e d i t a b l e 	 	 	 v a r 	 c a m F o l l o w B o n e N a m e 	 	 :   n a m e ; 	 	 	 	 	 d e f a u l t 	 c a m F o l l o w B o n e N a m e 	 	 =   ' t o r s o ' ;  
 	  
 	  
 	  
 	 p r i v a t e 	 	 	 	 	 	 v a r 	 v e c t o r U p 	 	 	 	 :   V e c t o r ; 	  
 	  
 	  
 	 p r i v a t e 	 e d i t a b l e 	 	 	 v a r 	 f o r c e A i r C o l l i s i o n 	 	 :   b o o l ; 	 	 	 	 	 d e f a u l t 	 f o r c e A i r C o l l i s i o n 	 	 =   f a l s e ;  
 	 p r i v a t e 	 e d i t a b l e 	 	 	 v a r 	 f o r c e J u m p G r a b 	 	 	 :   b o o l ; 	 	 	 	 	 d e f a u l t 	 f o r c e J u m p G r a b 	 	 	 =   f a l s e ;  
 	 p r i v a t e 	 e d i t a b l e 	 	 	 v a r 	 n o A d j u s t o r 	 	 	 	 :   b o o l ; 	 	 	 	 	 d e f a u l t 	 n o A d j u s t o r 	 	 	 	 =   f a l s e ;  
 	 p r i v a t e 	 e d i t a b l e 	 	 	 v a r 	 n o P e l v i s C o r e c t i o n 	 	 :   b o o l ; 	 	 	 	 	 d e f a u l t 	 n o P e l v i s C o r e c t i o n 	 	 =   f a l s e ;  
 	  
 	  
 	 p r i v a t e 	 s a v e d 	 	 	 	 v a r   r e s t o r e U s a b l e I t e m L A t E n d   :   b o o l ;  
 	  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   I n i t i a l i z e S p e c i f i c (   _ E x p l o r a t i o n   :   C E x p l o r a t i o n S t a t e M a n a g e r   )  
 	 { 	  
 	 	 v a r 	 h e i g h t T o t a l M i n 	 	 	 :   f l o a t ;  
 	 	 v a r 	 h e i g h t T o t a l M a x 	 	 	 :   f l o a t ;  
 	 	  
 	 	  
 	 	 i f (   ! I s N a m e V a l i d (   m _ S t a t e N a m e N   )   )  
 	 	 {  
 	 	 	 m _ S t a t e N a m e N 	 =   ' C l i m b ' ;  
 	 	 }  
 	 	  
 	 	 m _ S t a t e T y p e E 	 	 	 =   E S T _ O n A i r ;  
 	 	 m _ I n p u t C o n t e x t E 	 	 	 =   E G C I _ J u m p C l i m b ;  
 	 	 m _ U p d a t e s W h i l e I n a c t i v e B 	 =   t r u e ;  
 	 	 m _ H o l s t e r I s F a s t B 	 	 =   t r u e ;  
 	 	  
 	 	  
 	 	 L o g E x p l o r a t i o n C l i m b (   " 	 I n i t i a l i z e d   L o g   c h a n n e l :   E x p l o r a t i o n S t a t e C l i m b "   ) ;  
 	 	  
 	 	  
 	 	 S e t C a n S a v e (   f a l s e   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 i f (   c l i m b T y p e s . S i z e ( )   < =   0   )  
 	 	 {  
 	 	 	 L o g E x p l o r a t i o n E r r o r (   " N o   c l i m b   d a t a   w a s   f o u n d   i n   s t a t e   C E x p l o r a t i o n S t a t e C l i m b "   ) ;  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	 I n i t C l i m b s ( ) ;  
 	 	  
 	 	  
 	 	 C o m p u t e M i n M a x H e i g h t (   h e i g h t T o t a l M i n ,   h e i g h t T o t a l M a x   ) ;  
 	 	  
 	 	  
 	 	 i f (   ! m _ C l i m b O r a c l e O   )  
 	 	 {  
 	 	 	 m _ C l i m b O r a c l e O 	 =   n e w   C E x p l o r a t i o n C l i m b O r a c l e   i n   t h i s ;  
 	 	 } 	 	  
 	 	 m _ C l i m b O r a c l e O . I n i t i a l i z e (   m _ E x p l o r a t i o n O ,   h e i g h t T o t a l M i n ,   h e i g h t T o t a l M a x ,   M i n F (   p l a t f o r m H e i g h t M i n ,   p l a t f o r m H e i g h t M i n A i r   ) ,   c h a r a c t e r R a d i u s   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 b o n e I n d e x R i g h t H a n d 	 =   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t B o n e I n d e x (   b o n e R i g h t H a n d   ) ;  
 	 	 b o n e I n d e x L e f t H a n d 	 =   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t B o n e I n d e x (   b o n e L e f t H a n d   ) ;  
 	 	 c a m F o l l o w B o n e I D 	 	 =   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t B o n e I n d e x (   c a m F o l l o w B o n e N a m e   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 c o l l i s i o n O b s t a c l e s N a m e s . P u s h B a c k (   ' T e r r a i n '   ) ;  
 	 	 c o l l i s i o n O b s t a c l e s N a m e s . P u s h B a c k (   ' S t a t i c '   ) ;  
 	 	 c o l l i s i o n O b s t a c l e s N a m e s . P u s h B a c k (   ' P l a t f o r m s '   ) ;  
 	 	 c o l l i s i o n O b s t a c l e s N a m e s . P u s h B a c k (   ' F e n c e '   ) ;  
 	 	 c o l l i s i o n O b s t a c l e s N a m e s . P u s h B a c k (   ' B o a t '   ) ;  
 	 	 c o l l i s i o n O b s t a c l e s N a m e s . P u s h B a c k (   ' B o a t D o c k i n g '   ) ;  
 	 	  
 	 	 c o l l i s i o n O b s t a c l e s N a m e s . P u s h B a c k (   ' F o l i a g e '   ) ;  
 	 	 c o l l i s i o n O b s t a c l e s N a m e s . P u s h B a c k (   ' D y n a m i c '   ) ;  
 	 	 c o l l i s i o n O b s t a c l e s N a m e s . P u s h B a c k (   ' D e s t r u c t i b l e '   ) ;  
 	 	 c o l l i s i o n O b s t a c l e s N a m e s . P u s h B a c k (   ' R i g i d B o d y '   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 v e c t o r U p 	 =   V e c t o r (   0 . 0 f , 0 . 0 f ,   1 . 0 f   ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   A d d D e f a u l t S t a t e C h a n g e s S p e c i f i c ( )  
 	 {  
 	 }  
 	  
 	  
 	 f u n c t i o n   S t a t e W a n t s T o E n t e r ( )   :   b o o l  
 	 { 	 	  
 	 	  
 	 	 C o m p u t e I n p u t ( ) ;  
 	 	  
 	 	  
 	 	 c u r P l a y e r S t a t e T y p e 	 	 	 	 	 	 	 	 =   F i n d P l a y e r S t a t e ( ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ S h a r e d D a t a O . m _ C l i m b S t a t e T y p e E 	 =   c u r P l a y e r S t a t e T y p e ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 i f (   ! O r a c l e W a n t s T o E n t e r ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   ! P r e R e f i n e I s V a l i d ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 R e f i n e P l a y e r S t a t e ( ) ;  
 	 	  
 	 	  
 	 	 i f (   ! F i n d A p r o p r i a t e C l i m b ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 } 	  
 	 	  
 	 	  
 	 	 P o s t R e f i n e S t a t e ( ) ; 	  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   D e b u g E n t e r T o C l i m b ( )  
 	 {  
 	 	 h e i g h t T a r g e t 	 	 =   2 . 6 f ;  
 	 	 v a u l t i n g F o u n d 	 	 =   E C R V _ N o V a u l t ;  
 	 	 v a u l t E n d s F a l l i n g 	 =   f a l s e ;  
 	 	 p l a t f o r m F o u n d 	 	 =   E C R V _ N o P l a t f o r m ;  
 	 	 c l i m b P o i n t 	 	 	 =   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d P o s i t i o n ( )   +   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d F o r w a r d ( )   *   1 . 0 f   +   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d U p ( )   *   2 . 6 f ;  
 	 	 w a l l N o r m a l 	 	 	 =   - m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d F o r w a r d ( ) ;  
 	 }  
  
 	  
 	 f u n c t i o n   S t a t e C a n E n t e r (   c u r S t a t e N a m e   :   n a m e   )   :   b o o l  
 	 { 	  
 	 	  
 	 	 i f (   ! I n p u t W a n t s T o E n t e r ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f (   ! t h e P l a y e r . I s A c t i o n A l l o w e d (   E I A B _ C l i m b   )   | |   ! t h e P l a y e r . I s A c t i o n A l l o w e d (   E I A B _ M o v e m e n t   )   | |   ! t h e P l a y e r . I s A c t i o n A l l o w e d (   E I A B _ J u m p   )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f (   t h e P l a y e r . I s I n C o m b a t ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   S t a t e E n t e r S p e c i f i c (   p r e v S t a t e N a m e   :   n a m e   ) 	  
 	 { 	 	  
 	 	  
 	 	 i f (   p r e v S t a t e N a m e   = =   ' S w i m '   )  
 	 	 {  
 	 	 	 t h e P l a y e r . G o t o S t a t e ( ' E x p l o r a t i o n ' ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 S e t I n i t i a l M o v e m e n t A d j u s t o r ( ) ;  
 	 	  
 	 	  
 	 	 m _ E x p l o r a t i o n O . m _ M o v e r O . S e t M a n u a l M o v e m e n t (   t r u e   ) ;  
 	 	  
 	 	  
 	 	 t h e P l a y e r . R e m o v e T i m e r (   ' D e l a y e d S h e a t h S w o r d '   ) ;  
 	 	  
 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i n J u m p S t a t e ' ,   1 . f   ) ;  
 	 	  
 	 	  
 	 	 t h e P l a y e r . O n R a n g e d F o r c e H o l s t e r (   t r u e ,   t r u e   ) ;  
 	 	  
 	 	  
 	 	 p e l v i s T r a n s C u r 	 	 =   0 . 0 f ;  
 	 	 p e l v i s T r a n s S t a t e 	 =   E O C S _ I n a c t i v e ;  
 	 	  
 	 	  
 	 	 S e t B e h a v i o r D a t a ( ) ;  
 	 	  
 	 	  
 	 	 c a m S t a r t 	 =   t r u e ;  
 	 	  
 	 	 S e t P r o p e r C a m e r a A n i m (   t r u e ,   1 . 0 f   ) ;  
 	 	  
 	 	  
 	 	 i f (   m _ E x p l o r a t i o n O . m _ I s D e b u g M o d e B   )  
 	 	 { 	 	 	  
 	 	 	 D e b u g L o g S u c c e s f u l l C l i m b ( ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 c a n F a l l 	 	 	 	 	 =   f a l s e ;  
 	 	 e n d e d 	 	 	 	 	 =   f a l s e ;  
 	 	 c a n W a l k 	 	 	 	 	 =   f a l s e ;  
 	 	 a d j u s t I n i t i a l R o t D o n e 	 =   f a l s e ;  
 	 	 c a n R u n 	 	 	 	 	 =   f a l s e ;  
 	 	  
 	 	 a d j u s t R o t D o n e 	 	 	 =   f a l s e ; 	  
 	 	 a d j u s t T r a n s D o n e 	 	 	 =   f a l s e ; 	  
 	 	  
 	 	  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r M A C . S e t E n a b l e d F e e t I K (   f a l s e   ) ;  
 	 	  
 	 	 l e f t H a n d O f f s e t 	 	 	 =   0 . 0 f ;  
 	 	 r i g h t H a n d O f f s e t 	 	 	 =   0 . 0 f ;  
 	 	 r i g h t H a n d O f f s e t C u r 	 	 =   0 . 0 f ;  
 	 	 l e f t H a n d O f f s e t C u r 	 	 =   0 . 0 f ;  
 	 	 h a n d I K E n a b l e d 	 	 	 =   f a l s e ;  
 	 	 h a n d I K E n a b l e d L e f t   	 	 =   f a l s e ;  
 	 	 h a n d I K E n a b l e d R i g h t 	 	 =   f a l s e ;  
 	 	 h a n d I K q u e u e d L 	 	 	 =   f a l s e ;  
 	 	 h a n d I K q u e u e d R 	 	 	 =   f a l s e ;  
 	 	  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r M A C . S e t H a n d s I K O f f s e t s (   l e f t H a n d O f f s e t C u r ,   r i g h t H a n d O f f s e t C u r   ) ;  
 	 	  
 	 	 a d j u s t 2 D d u r a t i o n 	 	 =   0 . 0 f ; 	  
 	 	  
 	 	  
 	 	 / * i f   (   t h e P l a y e r . I s H o l d i n g I t e m I n L H a n d ( )   )  
 	 	 { 	 	 	  
 	 	 	 t h e P l a y e r . O n U s e S e l e c t e d I t e m   (   t r u e   ) ;  
 	 	 	 r e s t o r e U s a b l e I t e m L A t E n d 	 =   t r u e ; 	 	  
 	 	 } * /  
 	 	  
 	 	  
 	 	 t h e P l a y e r . A b o r t S i g n ( ) ;  
 	 }  
 	  
 	  
 	 p r o t e c t e d   f u n c t i o n   A d d A c t i o n s T o B l o c k ( )  
 	 {  
 	 	 A d d A c t i o n T o B l o c k (   E I A B _ D r a w W e a p o n   ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t I f C a m e r a I s K e p t ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t C a m e r a S e t (   o u t   c a m e r a S e t   :   C C a m e r a P a r a m e t e r s S e t )   :   b o o l  
 	 {  
 	 	 i f (   (   c u r P l a y e r S t a t e T y p e   = =   E C R T _ J u m p i n g   | |   c u r P l a y e r S t a t e T y p e   = =   E C R T _ A i r C o l l i d i n g   )   & &   c a m e r a S e t J u m p   )  
 	 	 {  
 	 	 	  
 	 	 	 c a m e r a S e t 	 =   c a m e r a S e t J u m p ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 e l s e   i f (   v a u l t i n g F o u n d   = =   E C R V _ V a u l t   & &   c a m e r a S e t V a u l t   )  
 	 	 {  
 	 	 	 c a m e r a S e t 	 =   c a m e r a S e t V a u l t ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 r e t u r n   s u p e r . G e t C a m e r a S e t (   c a m e r a S e t   ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   A d d A n i m E v e n t C a l l b a c k s ( )  
 	 {  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . A d d A n i m E v e n t C a l l b a c k (   b e h A n i m C a n F a l l ,   	 	 	 ' O n A n i m E v e n t _ S u b s t a t e M a n a g e r '   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . A d d A n i m E v e n t C a l l b a c k (   b e h A n i m E n d e d ,   	 	 	 ' O n A n i m E v e n t _ S u b s t a t e M a n a g e r '   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . A d d A n i m E v e n t C a l l b a c k (   b e h A n i m C a n W a l k ,   	 	 	 ' O n A n i m E v e n t _ S u b s t a t e M a n a g e r '   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . A d d A n i m E v e n t C a l l b a c k (   b e h A n i m C a n R u n ,   	 	 	 ' O n A n i m E v e n t _ S u b s t a t e M a n a g e r '   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . A d d A n i m E v e n t C a l l b a c k (   b e h A n i m A d j u s t I n i t R o t ,   	 ' O n A n i m E v e n t _ S u b s t a t e M a n a g e r '   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . A d d A n i m E v e n t C a l l b a c k (   b e h A n i m A d j u s t R o t ,   	 	 ' O n A n i m E v e n t _ S u b s t a t e M a n a g e r '   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . A d d A n i m E v e n t C a l l b a c k (   b e h A n i m A d j u s t T r a n s ,   	 	 ' O n A n i m E v e n t _ S u b s t a t e M a n a g e r '   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . A d d A n i m E v e n t C a l l b a c k (   b e h D i s a b l e P e l v i s T r a n s , 	 ' O n A n i m E v e n t _ S u b s t a t e M a n a g e r '   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . A d d A n i m E v e n t C a l l b a c k (   b e h E n a b l e I K ,   	 	 	 	 ' O n A n i m E v e n t _ S u b s t a t e M a n a g e r '   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . A d d A n i m E v e n t C a l l b a c k (   b e h E n a b l e H a n d s I K ,   	 	 ' O n A n i m E v e n t _ S u b s t a t e M a n a g e r '   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . A d d A n i m E v e n t C a l l b a c k (   b e h E n a b l e H a n d L I K ,   	 	 ' O n A n i m E v e n t _ S u b s t a t e M a n a g e r '   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . A d d A n i m E v e n t C a l l b a c k (   b e h E n a b l e H a n d R I K ,   	 	 ' O n A n i m E v e n t _ S u b s t a t e M a n a g e r '   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . A d d A n i m E v e n t C a l l b a c k (   b e h D i s a b l e H a n d s I K ,   	 	 ' O n A n i m E v e n t _ S u b s t a t e M a n a g e r '   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . A d d A n i m E v e n t C a l l b a c k (   b e h D i s a b l e H a n d L I K ,   	 	 ' O n A n i m E v e n t _ S u b s t a t e M a n a g e r '   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . A d d A n i m E v e n t C a l l b a c k (   b e h D i s a b l e H a n d R I K ,   	 	 ' O n A n i m E v e n t _ S u b s t a t e M a n a g e r '   ) ;  
 	 }  
 	  
 	  
 	 f u n c t i o n   S t a t e C h a n g e P r e c h e c k (   ) 	 :   n a m e  
 	 { 	 	  
 	 	 i f (   c a n F a l l   )  
 	 	 {  
 	 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . S e t B e h a v i o r V a r i a b l e (   b e h V a r E n d ,   (   f l o a t   )   (   i n t   )   E C R _ F a l l   ) ;  
 	 	 	 i f (   v a u l t i n g F o u n d   = =   E C R V _ V a u l t   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   ' J u m p ' ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f (   m _ E x p l o r a t i o n O . I s O n G r o u n d ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   ' I d l e ' ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   ' S t a r t F a l l i n g ' ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   m _ E x p l o r a t i o n O . C a n C h a n g e B e t w e n S t a t e s (   G e t S t a t e N a m e ( ) ,   ' I d l e '   )   )  
 	 	 { 	 	 	  
 	 	 	 i f (   A b s F (   m _ E x p l o r a t i o n O . m _ I n p u t O . G e t H e a d i n g D i f f F r o m P l a y e r F ( )   )   <   i n p u t A n g l e T o R u n   )  
 	 	 	 {  
 	 	 	 	 i f (   c a n R u n   & &   t h e P l a y e r . G e t I s R u n n i n g ( )   )    
 	 	 	 	 {  
 	 	 	 	 	 i f (   m _ E x p l o r a t i o n O . m _ I n p u t O . I s M o d u l e C o n s i d e r a b l e ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 m _ E x p l o r a t i o n O . S e n d A n i m E v e n t (   b e h G o T o R u n   ) ;  
 	 	 	 	 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . S e t B e h a v i o r V a r i a b l e (   b e h V a r E n d ,   (   f l o a t   )   (   i n t   )   E C R _ R u n   ) ;  
 	 	 	 	 	 	 r e t u r n   ' I d l e ' ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f (   c a n W a l k   )  
 	 	 	 	 {  
 	 	 	 	 	 i f (   m _ E x p l o r a t i o n O . m _ I n p u t O . I s M o d u l e C o n s i d e r a b l e ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . S e t B e h a v i o r V a r i a b l e (   b e h V a r E n d ,   (   f l o a t   )   (   i n t   )   E C R _ W a l k   ) ;  
 	 	 	 	 	 	 m _ E x p l o r a t i o n O . S e n d A n i m E v e n t (   b e h G o T o W a l k   ) ;  
 	 	 	 	 	 	 r e t u r n   ' I d l e ' ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   i f (   (   c a n R u n   | |   c a n W a l k   )   & &   m _ E x p l o r a t i o n O . m _ I n p u t O . I s M o d u l e C o n s i d e r a b l e ( )   )  
 	 	 	 {  
 	 	 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . S e t B e h a v i o r V a r i a b l e (   b e h V a r E n d ,   (   f l o a t   )   (   i n t   )   E C R _ I d l e   ) ;  
 	 	 	 	 r e t u r n   ' I d l e ' ; 	 	 	 	  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   e n d e d   | |   m _ E x p l o r a t i o n O . G e t S t a t e T i m e F ( )   >   a n i m D u r a t i o n L i m i t   )    
 	 	 {  
 	 	 	 i f (   v a u l t E n d s F a l l i n g   | |   ! m _ E x p l o r a t i o n O . m _ C o l l i s i o n M a n a g e r O . C h e c k L a n d B e l o w (   0 . 2 f ,   V e c t o r (   0 . 0 f , 0 . 0 f ,   0 . 0 f   ) ,   t r u e   )   )  
 	 	 	 {  
 	 	 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . S e t B e h a v i o r V a r i a b l e (   b e h V a r E n d ,   (   f l o a t   )   (   i n t   )   E C R _ F a l l   ) ;  
 	 	 	 	 i f (   v a u l t i n g F o u n d   = =   E C R V _ V a u l t   )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   ' J u m p ' ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   ' S t a r t F a l l i n g ' ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   i f (   m _ E x p l o r a t i o n O . C a n C h a n g e B e t w e n S t a t e s (   G e t S t a t e N a m e ( ) ,   ' I d l e '   )   )  
 	 	 	 {  
 	 	 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . S e t B e h a v i o r V a r i a b l e (   b e h V a r E n d ,   (   f l o a t   )   (   i n t   )   E C R _ I d l e   ) ;  
 	 	 	 	 r e t u r n   ' I d l e ' ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   s u p e r . S t a t e C h a n g e P r e c h e c k ( ) ;  
 	 }  
 	  
 	  
 	 p r o t e c t e d   f u n c t i o n   S t a t e U p d a t e S p e c i f i c (   _ D t   :   f l o a t   )  
 	 { 	 	  
 	 	 v a r   p o s C u r 	 :   V e c t o r ;  
 	 	  
 	 	  
 	 	  
 	 	 i f (   a d j u s t S p e e d R e q u i r e   )  
 	 	 {  
 	 	 	 i f (   m _ E x p l o r a t i o n O . G e t S t a t e T i m e F ( )   > =   a d j u s t S p e e d E n d T i m e   )  
 	 	 	 { 	 	 	 	  
 	 	 	 	 A p p l y A n i m a t i o n S p e e d (   1 . 0 f   ) ;  
 	 	 	 	 a d j u s t S p e e d R e q u i r e 	 =   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 U p d a t e A d j u s t i n g 2 D (   _ D t   ) ;  
 	 	  
 	 	 U p d a t e H a n d s I K (   _ D t   ) ;  
 	 	  
 	 	 U p d a t e T r a n s l a t i o n O u t s i d e C a p s u l e (   _ D t   ) ;  
 	 	  
 	 	 U p d a t e R u n O r W a l k ( ) ;  
 	 	  
 	 	  
 	 	 C h e c k V e r t i c a l S l i d e E n d ( ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   S t a t e E x i t S p e c i f i c (   n e x t S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 v a r   m o v A d j   	 	 	 :   C M o v e m e n t A d j u s t o r ;  
 	 	  
 	 	  
 	 	 m o v A d j   =   m _ E x p l o r a t i o n O . m _ O w n e r M A C . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 m o v A d j . C a n c e l B y N a m e (   ' C l i m b A d j u s I n i t i a l R o t a t i o n '   ) ;  
 	 	 m o v A d j . C a n c e l B y N a m e (   ' C l i m b A d j u s t m e n t s '   ) ;  
 	 	 m o v A d j . C a n c e l B y N a m e (   ' C l i m b A d j u s T r a n s l a t i o n '   ) ;  
 	 	 m o v A d j . C a n c e l B y N a m e (   ' C l i m b A d j u s R o t a t i o n '   ) ;  
 	 	 m o v A d j . C a n c e l B y N a m e (   ' C l i m b F a k e G r a v i t y '   ) ;  
 	 	  
 	 	  
 	 	 C o r r e c t P e l v i s S t a r t E n d ( ) ;  
 	 	  
 	 	  
 	 	  
 	 	 i f (   a d j u s t S p e e d R e q u i r e   )  
 	 	 { 	 	 	 	  
 	 	 	 A p p l y A n i m a t i o n S p e e d (   1 . 0 f   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   m _ E x p l o r a t i o n O . G e t S t a t e T i m e F ( )   <   0 . 2 5 f   )  
 	 	 {  
 	 	 	 C a n c e l C a m e r a A n i m a t i o n ( ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   v a u l t i n g F o u n d   = =   E C R V _ N o V a u l t   )    
 	 	 {  
 	 	 	 m _ E x p l o r a t i o n O . m _ O w n e r M A C . S e t E n a b l e d F e e t I K (   t r u e   ) ;  
 	 	 }  
 	 	  
 	 	 S t o p H a n d I K (   t r u e ,   t r u e   ) ;  
 	 	  
 	 	  
 	 	 m _ E x p l o r a t i o n O . m _ M o v e r O . S e t M a n u a l M o v e m e n t (   f a l s e   ) ;  
 	 	  
 	 	  
 	 	 / /   m o d B e t t e r T o r c h e s N e x t G e n  
 	 	 / * i f   (   r e s t o r e U s a b l e I t e m L A t E n d   )  
 	 	 {  
 	 	 	 r e s t o r e U s a b l e I t e m L A t E n d   =   f a l s e ;  
 	 	 	 t h e P l a y e r . O n U s e S e l e c t e d I t e m   ( ) ;  
 	 	 } * /  
 	 	  
 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i n J u m p S t a t e ' ,   0 . f   ) ;  
 	 	  
 	 	 t h e P l a y e r . R e a p p l y C r i t i c a l B u f f ( ) ;  
 	 	  
 	 }  
 	  
 	  
 	 f u n c t i o n   S t a t e U p d a t e I n a c t i v e (   _ D t   :   f l o a t   )  
 	 {  
 	 	 U p d a t e A n d S e t H a n d s I K B l e n d (   _ D t   ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   R e m o v e A n i m E v e n t C a l l b a c k s ( )  
 	 {  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . R e m o v e A n i m E v e n t C a l l b a c k (   b e h A n i m C a n F a l l   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . R e m o v e A n i m E v e n t C a l l b a c k (   b e h A n i m E n d e d   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . R e m o v e A n i m E v e n t C a l l b a c k (   b e h A n i m C a n W a l k   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . R e m o v e A n i m E v e n t C a l l b a c k (   b e h A n i m C a n R u n   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . R e m o v e A n i m E v e n t C a l l b a c k (   b e h A n i m A d j u s t I n i t R o t   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . R e m o v e A n i m E v e n t C a l l b a c k (   b e h A n i m A d j u s t R o t   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . R e m o v e A n i m E v e n t C a l l b a c k (   b e h A n i m A d j u s t T r a n s   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . R e m o v e A n i m E v e n t C a l l b a c k (   b e h D i s a b l e P e l v i s T r a n s   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . R e m o v e A n i m E v e n t C a l l b a c k (   b e h E n a b l e I K   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . R e m o v e A n i m E v e n t C a l l b a c k (   b e h E n a b l e H a n d s I K   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . R e m o v e A n i m E v e n t C a l l b a c k (   b e h E n a b l e H a n d L I K   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . R e m o v e A n i m E v e n t C a l l b a c k (   b e h E n a b l e H a n d R I K   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . R e m o v e A n i m E v e n t C a l l b a c k (   b e h D i s a b l e H a n d s I K   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . R e m o v e A n i m E v e n t C a l l b a c k (   b e h D i s a b l e H a n d L I K   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . R e m o v e A n i m E v e n t C a l l b a c k (   b e h D i s a b l e H a n d R I K   ) ;  
 	 }  
 	  
 	  
 	 f u n c t i o n   R e a c t T o L o s e G r o u n d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 f u n c t i o n   R e a c t T o H i t G r o u n d ( )   :   b o o l  
 	 { 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 f u n c t i o n   C a n I n t e r a c t (   )   :   b o o l  
 	 { 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 f u n c t i o n   O n A n i m E v e n t (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 v a r   d u r a t i o n 	 	 :   f l o a t 	 =   - 1 . 0 f ;  
 	 	 v a r   u n w a n t e d E v e n t 	 :   b o o l 	 =   f a l s e ;  
 	 	 v a r   t e x t 	 	 	 :   s t r i n g ;  
 	 	  
 	 	  
 	 	  
 	 	 i f (   a n i m E v e n t N a m e   = =   b e h A n i m C a n F a l l   )  
 	 	 {  
 	 	 	 c a n F a l l   =   t r u e ;  
 	 	 	  
 	 	 }  
 	 	  
 	 	  
 	 	 e l s e   i f   (   a n i m E v e n t N a m e   = =   b e h A n i m E n d e d   )  
 	 	 {  
 	 	 	 e n d e d 	 =   t r u e ;  
 	 	 	 c a n W a l k 	 =   t r u e ;  
 	 	 	 c a n R u n 	 =   t r u e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 e l s e   i f (   ! c a n W a l k   & &   a n i m E v e n t N a m e   = =   b e h A n i m C a n W a l k   )  
 	 	 {  
 	 	 	 c a n W a l k 	 =   t r u e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 e l s e   i f (   ! c a n R u n   & &   a n i m E v e n t N a m e   = =   b e h A n i m C a n R u n   )  
 	 	 {  
 	 	 	 c a n R u n 	 =   t r u e ;  
 	 	 }    
 	 	  
 	 	 e l s e   i f (   a n i m E v e n t N a m e   = =   b e h A n i m A d j u s t I n i t R o t     & &   ! a d j u s t I n i t i a l R o t D o n e   )  
 	 	 {  
 	 	 	 d u r a t i o n 	 =   G e t E v e n t D u r a t i o n F r o m E v e n t A n i m I n f o (   a n i m I n f o   ) ;  
 	 	 	 S t a r t M o v e m e n t A d j u s t o r I n i t i a l R o t a t i o n (   d u r a t i o n   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 e l s e   i f (   a n i m E v e n t N a m e   = =   b e h A n i m A d j u s t R o t   & &   ! a d j u s t R o t D o n e   )  
 	 	 {  
 	 	 	 d u r a t i o n 	 =   G e t E v e n t D u r a t i o n F r o m E v e n t A n i m I n f o (   a n i m I n f o   ) ;  
 	 	 	 S t a r t M o v e m e n t A d j u s t o r R o t a t i o n (   d u r a t i o n   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 e l s e   i f (   a n i m E v e n t N a m e   = =   b e h A n i m A d j u s t T r a n s   & &   ! a d j u s t T r a n s D o n e   )  
 	 	 {  
 	 	 	 d u r a t i o n 	 =   G e t E v e n t D u r a t i o n F r o m E v e n t A n i m I n f o (   a n i m I n f o   ) ;  
 	 	 	 S t a r t M o v e m e n t A d j u s t o r T r a n s l a t i o n (   d u r a t i o n   ) ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 i f (   p e l v i s T r a n s A l l o w   & &   p e l v i s T r a n s S t a t e   = =   E O C S _ I n a c t i v e   )  
 	 	 	 {  
 	 	 	 	 p e l v i s T r a n s S t a t e 	 =   E O C S _ S t a r t i n g ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 e l s e   i f (   a n i m E v e n t N a m e   = =   b e h D i s a b l e P e l v i s T r a n s   )  
 	 	 {  
 	 	 	  
 	 	 	 C o r r e c t P e l v i s S t a r t E n d ( ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 e l s e   i f (   a n i m E v e n t N a m e   = =   b e h E n a b l e I K   )  
 	 	 {  
 	 	 	 i f (   v a u l t i n g F o u n d   = =   E C R V _ N o V a u l t   )  
 	 	 	 {  
 	 	 	 	 m _ E x p l o r a t i o n O . m _ O w n e r M A C . S e t E n a b l e d F e e t I K (   t r u e   ) ;  
 	 	 	 	 A p p l y F a k e G r a v i t y ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 e l s e   i f (   a n i m E v e n t N a m e   = =   b e h E n a b l e H a n d s I K   )  
 	 	 {  
 	 	 	 h a n d I K q u e u e d L 	 =   t r u e ;  
 	 	 	 h a n d I K q u e u e d R 	 =   t r u e ;  
 	 	 }  
 	 	 e l s e   i f (   a n i m E v e n t N a m e   = =   b e h E n a b l e H a n d L I K   )  
 	 	 {  
 	 	 	 h a n d I K q u e u e d L 	 =   t r u e ;  
 	 	 }  
 	 	 e l s e   i f (   a n i m E v e n t N a m e   = =   b e h E n a b l e H a n d R I K   )  
 	 	 {  
 	 	 	 h a n d I K q u e u e d R 	 =   t r u e ;  
 	 	 }  
 	 	 e l s e   i f (   a n i m E v e n t N a m e   = =   b e h D i s a b l e H a n d s I K   )  
 	 	 {  
 	 	 	 S t o p H a n d I K (   t r u e ,   t r u e   ) ;  
 	 	 }  
 	 	 e l s e   i f (   a n i m E v e n t N a m e   = =   b e h D i s a b l e H a n d L I K   )  
 	 	 {  
 	 	 	 S t o p H a n d I K (   t r u e ,   f a l s e   ) ;  
 	 	 }  
 	 	 e l s e   i f (   a n i m E v e n t N a m e   = =   b e h D i s a b l e H a n d R I K   )  
 	 	 {  
 	 	 	 S t o p H a n d I K (   f a l s e ,   t r u e   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 e l s e  
 	 	 {  
 	 	 	 u n w a n t e d E v e n t   =   t r u e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   ! u n w a n t e d E v e n t   )  
 	 	 {  
 	 	 	 t e x t 	 =   " G o t E v e n t :   "   +   a n i m E v e n t N a m e ;  
 	 	 	 i f (   d u r a t i o n   > =   0 . 0 f   )  
 	 	 	 {  
 	 	 	 	 t e x t 	 + =   "   d u r a t i o n   "   +   d u r a t i o n ;  
 	 	 	 }  
 	 	 	 L o g E x p l o r a t i o n C l i m b (   t e x t   ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   I n i t C l i m b s ( )  
 	 {  
 	 	 v a r   i 	 :   i n t ;  
 	 	  
 	 	 f o r (   i   =   0 ;   i   <   c l i m b T y p e s . S i z e ( ) ;   i   + =   1   )  
 	 	 {  
 	 	 	 I n i t i a l i z e C l i m b (   i   ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   I n i t i a l i z e C l i m b (   i   :   i n t   )  
 	 {  
 	 	 i f (   c l i m b T y p e s [   i   ] . h e i g h t U s e D e f a u l t s   )  
 	 	 {  
 	 	 	 s w i t c h (   c l i m b T y p e s [   i   ] . t y p e   )  
 	 	 	 {  
 	 	 	 	 c a s e   E C H T _ S t e p :  
 	 	 	 	 	 c l i m b T y p e s [   i   ] . h e i g h t M i n 	 =   0 . 3 f ;  
 	 	 	 	 	 c l i m b T y p e s [   i   ] . h e i g h t M a x 	 =   0 . 7 5 f ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 c a s e   E C H T _ V e r y S m a l l :  
 	 	 	 	 	 c l i m b T y p e s [   i   ] . h e i g h t M i n 	 =   0 . 7 5 f ;  
 	 	 	 	 	 c l i m b T y p e s [   i   ] . h e i g h t M a x 	 =   1 . 5 f ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 c a s e   E C H T _ S m a l l :  
 	 	 	 	 	 c l i m b T y p e s [   i   ] . h e i g h t M i n 	 =   1 . 5 f ;  
 	 	 	 	 	 c l i m b T y p e s [   i   ] . h e i g h t M a x 	 =   2 . 0 f ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 c a s e   E C H T _ M e d i u m :  
 	 	 	 	 	 c l i m b T y p e s [   i   ] . h e i g h t M i n 	 =   2 . 0 f ;  
 	 	 	 	 	 c l i m b T y p e s [   i   ] . h e i g h t M a x 	 =   2 . 5 f ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 c a s e   E C H T _ H i g h :  
 	 	 	 	 	 c l i m b T y p e s [   i   ] . h e i g h t M i n 	 =   2 . 5 f ;  
 	 	 	 	 	 c l i m b T y p e s [   i   ] . h e i g h t M a x 	 =   3 . 0 f ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 c a s e   E C H T _ V e r y H i g h :  
 	 	 	 	 	 c l i m b T y p e s [   i   ] . h e i g h t M i n 	 =   3 . 0 f ;  
 	 	 	 	 	 c l i m b T y p e s [   i   ] . h e i g h t M a x 	 =   4 . 0 f ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 i f (   c l i m b T y p e s [   i   ] . t y p e   = =   E C H T _ V e r y S m a l l   )  
 	 	 	 {  
 	 	 	 	 c l i m b T y p e s [   i   ] . h e i g h t E x a c t 	 =   1 . 0 f ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 c l i m b T y p e s [   i   ] . h e i g h t E x a c t 	 =   c l i m b T y p e s [   i   ] . h e i g h t M i n ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 c l i m b T y p e s [   i   ] . h e i g h t U s e D e f a u l t s 	 =   c l i m b T y p e s [   i   ] . h e i g h t U s e D e f a u l t s ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   C o m p u t e M i n M a x H e i g h t (   o u t   h e i g h t T o t a l M i n   :   f l o a t ,   o u t   h e i g h t T o t a l M a x   :   f l o a t   )  
 	 {  
 	 	 v a r   i 	 :   i n t ;  
 	 	  
 	 	  
 	 	  
 	 	 h e i g h t T o t a l M i n 	 	 	 =   c l i m b T y p e s [   0   ] . h e i g h t M i n ;  
 	 	 h e i g h t T o t a l M a x 	 	 	 =   c l i m b T y p e s [   0   ] . h e i g h t M a x ;  
 	 	 p l a t f o r m H e i g h t M i n 	 	 =   1 0 0 0 . 0 f ;  
 	 	 p l a t f o r m H e i g h t M i n A i r 	 =   1 0 0 0 . 0 f ;  
 	 	 h e i g h t M a x T o R u n 	 	 	 =   0 . 0 f ;  
 	 	  
 	 	  
 	 	 f o r (   i   =   0 ;   i   <   c l i m b T y p e s . S i z e ( ) ;   i   + =   1   )  
 	 	 {  
 	 	 	 i f (   c l i m b T y p e s [   i   ] . r e q u i r e d S t a t e   = =   E C R T _ R u n n i n g   & &   h e i g h t M a x T o R u n   <   c l i m b T y p e s [   i   ] . h e i g h t M a x   )  
 	 	 	 {  
 	 	 	 	 h e i g h t M a x T o R u n 	 =   c l i m b T y p e s [   i   ] . h e i g h t M a x ;  
 	 	 	 }  
 	 	 	 i f (   c l i m b T y p e s [   i   ] . r e q u i r e d P l a t f o r m   = =   E C R V _ P l a t f o r m   )  
 	 	 	 {  
 	 	 	 	 i f (   c l i m b T y p e s [   i   ] . r e q u i r e d S t a t e   = =   E C R T _ J u m p i n g   | |   c l i m b T y p e s [   i   ] . r e q u i r e d S t a t e   = =   E C R T _ A i r C o l l i d i n g   )  
 	 	 	 	 {  
 	 	 	 	 	 i f (   c l i m b T y p e s [   i   ] . h e i g h t M i n   <   p l a t f o r m H e i g h t M i n A i r   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 p l a t f o r m H e i g h t M i n A i r 	 =   c l i m b T y p e s [   i   ] . h e i g h t M i n ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e     i f (   c l i m b T y p e s [   i   ] . h e i g h t M i n   <   p l a t f o r m H e i g h t M i n   )  
 	 	 	 	 {  
 	 	 	 	 	 p l a t f o r m H e i g h t M i n 	 =   c l i m b T y p e s [   i   ] . h e i g h t M i n ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 i f (   h e i g h t T o t a l M a x   <   c l i m b T y p e s [   i   ] . h e i g h t M a x   )  
 	 	 	 {  
 	 	 	 	 h e i g h t T o t a l M a x 	 =   c l i m b T y p e s [   i   ] . h e i g h t M a x ;  
 	 	 	 }  
 	 	 	 i f (   h e i g h t T o t a l M i n 	 >   c l i m b T y p e s [   i   ] . h e i g h t M i n   )  
 	 	 	 {  
 	 	 	 	 h e i g h t T o t a l M i n 	 =   c l i m b T y p e s [   i   ] . h e i g h t M i n ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   F i n d P l a y e r S t a t e ( )   :   E C l i m b R e q u i r e m e n t T y p e  
 	 {  
 	 	  
 	 	 i f (   m _ E x p l o r a t i o n O . G e t S t a t e T y p e C u r ( )   = =     E S T _ O n A i r   )  
 	 	 {  
 	 	 	  
 	 	 	 i f (   f o r c e A i r C o l l i s i o n   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   E C R T _ A i r C o l l i d i n g ;  
 	 	 	 }  
 	 	 	 e l s e   i f (   f o r c e J u m p G r a b   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   E C R T _ J u m p i n g ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f (   m _ E x p l o r a t i o n O . G e t S t a t e C u r ( )   = =   ' A i r C o l l i s i o n '   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   E C R T _ A i r C o l l i d i n g ;  
 	 	 	 }  
 	 	 	 r e t u r n   E C R T _ J u m p i n g ;  
 	 	 }  
 	 	  
 	 	  
 	 	 e l s e   i f (   m _ E x p l o r a t i o n O . G e t S t a t e T y p e C u r ( )   = =     E S T _ S w i m   )  
 	 	 {  
 	 	 	 r e t u r n   E C R T _ S w i m m i n g ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	 e l s e   i f (   t h e P l a y e r . G e t I s R u n n i n g ( )   & &   m _ E x p l o r a t i o n O . m _ I n p u t O . I s M o d u l e C o n s i d e r a b l e ( )   )    
 	 	 {  
 	 	 	 r e t u r n   E C R T _ R u n n i n g ;  
 	 	 }  
 	 	  
 	 	  
 	 	 r e t u r n   E C R T _ L a n d e d ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   I n p u t W a n t s T o E n t e r ( )   :   b o o l  
 	 {  
 	 	  
 	 	 i f (   m _ E x p l o r a t i o n O . m _ I n p u t O . I s E x p l o r a t i o n J u s t P r e s s e d ( )   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 e l s e   i f (   m _ E x p l o r a t i o n O . G e t S t a t e T y p e C u r ( )   = =   E S T _ O n A i r   & &   m _ E x p l o r a t i o n O . m _ I n p u t O . I s E x p l o r a t i o n P r e s s e d ( )   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   C o m p u t e I n p u t ( )  
 	 {  
 	 	 i n p u t A t t e m p t s T o p 	 =   ! t h e P l a y e r . G e t I s R u n n i n g ( ) ;    
 	 	  
 	 	 i f (   m _ E x p l o r a t i o n O . m _ I n p u t O . I s M o d u l e C o n s i d e r a b l e ( )   )  
 	 	 {  
 	 	 	 i n p u t D i r e c t i o n 	 =   m _ E x p l o r a t i o n O . m _ I n p u t O . G e t M o v e m e n t O n P l a n e N o r m a l i z e d V ( ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 { 	 	  
 	 	 	 i n p u t D i r e c t i o n 	 =   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d F o r w a r d ( ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   O r a c l e W a n t s T o E n t e r ( )   :   b o o l  
 	 {  
 	 	 v a r   o r i g i n P o s i t i o n 	 :   V e c t o r ;  
 	 	 v a r   l o g F a i l s 	 	 :   b o o l ;  
 	 	 v a r 	 d i s t a n c e T y p e 	 :   E C l i m b D i s t a n c e T y p e ;  
 	 	 v a r 	 r e q u i r e I n p u t D i r   :   b o o l ;  
 	 	  
 	 	  
 	 	 l o g F a i l s 	 	 =   m _ E x p l o r a t i o n O . m _ I n p u t O . I s E x p l o r a t i o n J u s t P r e s s e d ( ) ;  
 	 	 o r i g i n P o s i t i o n 	 =   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d P o s i t i o n ( ) ;  
 	 	  
 	 	 d i s t a n c e T y p e 	 =   G e t D i s t a n c e T y p e ( ) ;  
 	 	  
 	 	  
 	 	 r e q u i r e I n p u t D i r 	 	 =   m _ E x p l o r a t i o n O . m _ I n p u t O . I s M o d u l e C o n s i d e r a b l e ( ) ;  
 	 	  
 	 	  
 	 	 m _ C l i m b O r a c l e O . C o m p u t e A l l (   i n p u t A t t e m p t s T o p ,   o r i g i n P o s i t i o n ,   i n p u t D i r e c t i o n ,   d i s t a n c e T y p e ,   r e q u i r e I n p u t D i r ,   l o g F a i l s   ) ;  
 	 	  
 	 	  
 	 	 i f (   ! m _ C l i m b O r a c l e O . C a n W e C l i m b ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 m _ C l i m b O r a c l e O . G e t C l i m b D a t a (   h e i g h t T a r g e t ,   v a u l t i n g F o u n d ,   v a u l t E n d s F a l l i n g ,   p l a t f o r m F o u n d ,   c l i m b P o i n t ,   w a l l N o r m a l   ) ;  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   G e t D i s t a n c e T y p e ( )   :   E C l i m b D i s t a n c e T y p e  
 	 {  
 	 	  
 	 	 i f (   c u r P l a y e r S t a t e T y p e   = =   E C R T _ J u m p i n g   )  
 	 	 { 	 	  
 	 	 	 r e t u r n   E C D T _ C l o s e ;  
 	 	 }  
 	 	 e l s e   i f (   c u r P l a y e r S t a t e T y p e   = =   E C R T _ R u n n i n g   )  
 	 	 {  
 	 	 	 r e t u r n   E C D T _ F a r ;  
 	 	 }  
 	 	 e l s e   i f (   c u r P l a y e r S t a t e T y p e   = =   E C R T _ A i r C o l l i d i n g   )  
 	 	 {  
 	 	 	 r e t u r n   E C D T _ F a r ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   E C D T _ N o r m a l ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   P r e R e f i n e I s V a l i d ( )   :   b o o l  
 	 {  
 	 	 v a r 	 d o t 	 	 	 :   f l o a t ;  
 	 	 v a r   d i s t a n c e 2 D 	 :   f l o a t ;  
 	 	  
 	 	  
 	 	  
 	 	 i f (   c u r P l a y e r S t a t e T y p e   = =   E C R T _ R u n n i n g   & &   h e i g h t T a r g e t   <   0 . 7 5 f   )  
 	 	 {  
 	 	 	 L o g E x p l o r a t i o n C l i m b (   " C l i m b   s k i p p e d   b e c a u s e   o f   r u n n i n g   s t a t e   a n d   h e i g h t   <   0 . 7 5 f "   ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   c u r P l a y e r S t a t e T y p e   = =   E C R T _ R u n n i n g   & &   h e i g h t T a r g e t   > =   3 . 0 f   )  
 	 	 {  
 	 	 	 d i s t a n c e 2 D 	 =   V e c D i s t a n c e S q u a r e d 2 D (   c l i m b P o i n t ,   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d P o s i t i o n ( )   ) ;  
 	 	 	 i f (   d i s t a n c e 2 D   >   s l i d e D i s t M a x O n R u n   *   s l i d e D i s t M a x O n R u n   )  
 	 	 	 {  
 	 	 	 	 L o g E x p l o r a t i o n C l i m b (   " C l i m b   s k i p p e d   b e c a u s e   o f   r u n n i n g   s t a t e   a n d   d i s t a n c e   "   +   d i s t a n c e 2 D   +   "   >   "   +   s l i d e D i s t M a x O n R u n   *   s l i d e D i s t M a x O n R u n   ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   c u r P l a y e r S t a t e T y p e   = =   E C R T _ R u n n i n g   )  
 	 	 {  
 	 	 	 d o t 	 =   V e c D o t (   w a l l N o r m a l ,   i n p u t D i r e c t i o n   ) ;  
 	 	 	 i f (   d o t   >   - 0 . 6 5 f   )  
 	 	 	 {  
 	 	 	 	 L o g E x p l o r a t i o n C l i m b (   " C l i m b   s k i p p e d   b e c a u s e   o f   r u n n i n g   s t a t e   a n d   d o t   f r o m   i n p u t   t o   w a l l   "   +   d o t   +   "   >   - 0 . 6 5 f "   ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   R e f i n e P l a y e r S t a t e ( )  
 	 {  
 	 	  
 	 	 i f (   c u r P l a y e r S t a t e T y p e   = =   E C R T _ R u n n i n g   & &   h e i g h t T a r g e t   >   h e i g h t M a x T o R u n   )  
 	 	 {  
           	 	 c u r P l a y e r S t a t e T y p e   =   E C R T _ L a n d e d ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	 i f (   p l a t f o r m F o u n d   = =   E C R V _ P l a t f o r m   )  
 	 	 {  
 	 	 	 i f (   c u r P l a y e r S t a t e T y p e   = =   E C R T _ J u m p i n g   | |   c u r P l a y e r S t a t e T y p e   = =   E C R T _ A i r C o l l i d i n g   )  
 	 	 	 {  
 	 	 	 	 i f (   h e i g h t T a r g e t   <   p l a t f o r m H e i g h t M i n A i r   )  
 	 	 	 	 {  
 	 	 	 	 	 p l a t f o r m F o u n d 	 =   E C R V _ N o P l a t f o r m ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f (   h e i g h t T a r g e t   <   p l a t f o r m H e i g h t M i n   )  
 	 	 	 	 {  
 	 	 	 	 	 p l a t f o r m F o u n d 	 =   E C R V _ N o P l a t f o r m ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   P o s t R e f i n e S t a t e ( )  
 	 {  
 	 	 v a r 	 c h a r a c t e r P o s 	 :   V e c t o r ;  
 	 	 v a r 	 d i s t a n c e 2 D 	 	 :   f l o a t ;  
 	 	  
 	 	 r e t u r n ;  
 	 	  
 	 	 i f (   c u r P l a y e r S t a t e T y p e   = =   E C R T _ R u n n i n g   )  
 	 	 {  
 	 	 	 c h a r a c t e r P o s 	 	 =   m _ E x p l o r a t i o n O . m _ O w n e r M A C . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 d i s t a n c e 2 D 	 	 	 =   V e c D i s t a n c e 2 D (   c h a r a c t e r P o s ,   c l i m b P o i n t   ) ;  
 	 	 	  
 	 	 	 i f (   d i s t a n c e 2 D   <   c l i m b C u r . f o r w a r d D i s t E x a c t   )  
 	 	 	 {  
 	 	 	 	 c u r P l a y e r S t a t e T y p e 	 =   E C R T _ L a n d e d ;  
 	 	 	 	 F i n d A p r o p r i a t e C l i m b ( ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   F i n d A p r o p r i a t e C l i m b ( )   :   b o o l  
 	 { 	  
 	 	 v a r   i 	 	 	 	 	 :   i n t ; 	 	  
 	 	 v a r   s e a r c h i n g F o r S t a t e 	 :   E C l i m b R e q u i r e m e n t T y p e ;  
 	 	  
 	 	  
 	 	  
 	 	 s e a r c h i n g F o r S t a t e 	 =   c u r P l a y e r S t a t e T y p e ;  
 	 	  
 	 	 i f (   s e a r c h i n g F o r S t a t e   = =   E C R T _ A i r C o l l i d i n g   )  
 	 	 {  
 	 	 	 s e a r c h i n g F o r S t a t e 	 =   E C R T _ J u m p i n g ;  
 	 	 }  
 	 	  
 	 	  
 	 	 f o r (   i   =   0 ;   i   <   c l i m b T y p e s . S i z e ( ) ;   i   + =   1   )  
 	 	 { 	 	 	  
 	 	 	  
 	 	 	 i f (   c l i m b T y p e s [   i   ] . r e q u i r e d S t a t e   ! =   s e a r c h i n g F o r S t a t e   )  
 	 	 	 {  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 i f (   v a u l t i n g F o u n d   ! =   c l i m b T y p e s [   i   ] . r e q u i r e d V a u l t   )    
 	 	 	 {  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 i f (   p l a t f o r m F o u n d   ! =   c l i m b T y p e s [   i   ] . r e q u i r e d P l a t f o r m   )    
 	 	 	 {  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 i f (   c l i m b T y p e s [   i   ] . h e i g h t M a x   <   h e i g h t T a r g e t   | |   c l i m b T y p e s [   i   ] . h e i g h t M i n   >   h e i g h t T a r g e t   )  
 	 	 	 {  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 c l i m b C u r 	 =   c l i m b T y p e s [   i   ] ;  
 	 	 	  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 L o g E x p l o r a t i o n C l i m b (   "   C o u l d   n o t   f i n d   a d e q u a t e   c l i m b   t y p e .   h e i g h t T a r g e t :   "   +   h e i g h t T a r g e t   +   " ,   S t a t e   r e q u i r e d :   "   +   c u r P l a y e r S t a t e T y p e   +   " ,   v a u l t i n g F o u n d :   "   +   v a u l t i n g F o u n d   +   " ,   p l a t f o r m F o u n d :   "   +   p l a t f o r m F o u n d   ) ;  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   S e t B e h a v i o r D a t a ( )  
 	 {  
 	 	  
 	 	 m _ E x p l o r a t i o n O . m _ S h a r e d D a t a O . S e t F o t F o r w a r d ( ) ;  
 	 	 S e t T r a n s l a t i o n T o B e h a v i o u r ( ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . S e t B e h a v i o r V a r i a b l e (   b e h V a r E n d ,   (   f l o a t   )   (   i n t   )   E C R _ N o t R e a d y   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . S e t B e h a v i o r V a r i a b l e (   b e h H e i g h t T y p e E n u m ,   (   f l o a t   )   (   i n t   )   c l i m b C u r . t y p e   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . S e t B e h a v i o r V a r i a b l e (   b e h V a u l t T y p e E n u m ,   (   f l o a t   )   (   i n t   )   c l i m b C u r . r e q u i r e d V a u l t   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . S e t B e h a v i o r V a r i a b l e (   b e h P l a t f o r m T y p e E n u m ,   (   f l o a t   )   (   i n t   )   c l i m b C u r . r e q u i r e d P l a t f o r m   ) ;  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . S e t B e h a v i o r V a r i a b l e (   b e h S t a t e T y p e E n u m ,   (   f l o a t   )   (   i n t   )   c l i m b C u r . r e q u i r e d S t a t e   ) ;  
 	 	 i f (   c l i m b C u r . r e q u i r e d V a u l t   = =   E C R V _ V a u l t   )  
 	 	 {  
 	 	 	 m _ E x p l o r a t i o n O . m _ S h a r e d D a t a O . m _ J u m p T y p e E 	 =   E J T _ V a u l t ;  
 	 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . S e t B e h a v i o r V a r i a b l e (   ' J u m p T y p e ' ,   (   f l o a t   )   (   i n t   )   E J T _ V a u l t   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 m _ E x p l o r a t i o n O . m _ S h a r e d D a t a O . m _ J u m p T y p e E 	 =   E J T _ F a l l ;  
 	 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . S e t B e h a v i o r V a r i a b l e (   ' J u m p T y p e ' ,   (   f l o a t   )   (   i n t   )   E J T _ F a l l   ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   S e t P r o p e r C a m e r a A n i m (   r e s e t   :   b o o l ,   s p e e d   :   f l o a t   )  
 	 {  
 	 	 v a r   c a m e r a 	 	 :   C C u s t o m C a m e r a   =   t h e G a m e . G e t G a m e C a m e r a ( ) ;  
 	 	 v a r   a n i m a t i o n 	 :   S C a m e r a A n i m a t i o n D e f i n i t i o n ;  
 	 	  
 	 	 i f (   ! u p d a t e C a m e r a A n i m   | |   ! c l i m b C u r . p l a y C a m e r a A n i m a t i o n   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 a n i m a t i o n . a n i m a t i o n 	 =   c l i m b C u r . c a m e r a A n i m a t i o n ;    
 	 	 a n i m a t i o n . p r i o r i t y 	 =   1 0 ;  
 	 	 a n i m a t i o n . b l e n d I n 	 =   0 . 5 f ;  
 	 	 a n i m a t i o n . b l e n d O u t 	 =   0 . 5 f ;  
 	 	 a n i m a t i o n . w e i g h t 	 =   1 . 0 f ;  
 	 	 a n i m a t i o n . s p e e d 	 	 =   s p e e d ;  
 	 	 a n i m a t i o n . l o o p 	 	 =   f a l s e ;  
 	 	 a n i m a t i o n . a d d i t i v e 	 =   f a l s e ;  
 	 	 a n i m a t i o n . r e s e t 	 	 =   r e s e t ;  
 	 	  
 	 	 c a m e r a . P l a y A n i m a t i o n (   a n i m a t i o n   ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   C a n c e l C a m e r a A n i m a t i o n ( )  
 	 {  
 	 	 v a r   c a m e r a 	 	 :   C C u s t o m C a m e r a   =   t h e G a m e . G e t G a m e C a m e r a ( ) ;  
 	 	  
 	 	 c a m e r a . S t o p A n i m a t i o n (   c l i m b C u r . c a m e r a A n i m a t i o n   ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   S e t I n i t i a l M o v e m e n t A d j u s t o r ( )  
 	 {  
 	 	  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r M A C . G e t M o v e m e n t A d j u s t o r ( ) . C a n c e l B y N a m e (   ' t u r n O n J u m p '   ) ;  
 	 	  
 	 	  
 	 	 A p p l y A n i m a t i o n S p e e d (   1 . 0 f   ) ;  
 	 	  
 	 	  
 	 	 P r e p a r e M o v e m e n t A d j u s t o r P a r a m e t e r s ( ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   P r e p a r e M o v e m e n t A d j u s t o r P a r a m e t e r s ( )  
 	 {  
 	 	 v a r   i n i t i a l r o t a t i o n 	 	 :   f l o a t ;  
 	 	 v a r   r o t a t i o n 	 	 	 :   f l o a t ;  
 	 	 v a r   t r a n s l a t i o n 	 	 	 :   V e c t o r ;  
 	 	 v a r   t r a n s l a t i o n B a c k D i s t 	 :   f l o a t ;  
 	 	 v a r   d i s t a n c e T o A d d 	 	 :   f l o a t ;  
 	 	 v a r   c h a r a c t e r P o s 	 	 :   V e c t o r ;  
 	 	 v a r 	 t r a n s l a t i o n G o e s B a c k 	 :   b o o l ;  
 	 	 v a r 	 i s C i r i 	 	 	 	 :   b o o l ;  
 	 	  
 	 	  
 	 	  
 	 	 h e i g h t T o A d d 	 	 	 =   h e i g h t T a r g e t   -   c l i m b C u r . h e i g h t E x a c t ; 	  
 	 	 c h a r a c t e r R a d i u s 	 	 =   0 . 4 f ;  
 	 	 c h a r a c t e r P o s 	 	 =   m _ E x p l o r a t i o n O . m _ O w n e r M A C . G e t W o r l d P o s i t i o n ( ) ;  
 	 	  
 	 	  
 	 	 r o t a t i o n 	 	 	 =   V e c H e a d i n g (   - w a l l N o r m a l   ) ;  
 	 	  
 	 	  
 	 	 t r a n s l a t i o n 	 	 	 =   c l i m b P o i n t   -   c h a r a c t e r P o s ;  
 	 	  
 	 	  
 	 	 i n i t i a l r o t a t i o n 	 	 =   V e c H e a d i n g (   t r a n s l a t i o n   ) ;    
 	 	  
 	 	  
 	 	 t r a n s l a t i o n 	 	 	 + =   w a l l N o r m a l   *   c h a r a c t e r R a d i u s ;  
 	 	  
 	 	  
 	 	  
 	 	 t r a n s l a t i o n B a c k D i s t 	 =   M a x F (   0 . 0 f ,   V e c D o t (   t r a n s l a t i o n ,   w a l l N o r m a l   )   ) ;  
 	 	  
 	 	 i s C i r i 	 =   f a l s e ;  
 	 	 i f (   ( W 3 R e p l a c e r C i r i ) t h e P l a y e r   )  
 	 	 {  
 	 	 	 i s C i r i 	 =   t r u e ;  
 	 	 }  
 	 	 i f (   i s C i r i   )  
 	 	 {  
 	 	 	 t r a n s l a t i o n B a c k D i s t 	 + =   0 . 1 2 5 f ;    
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t r a n s l a t i o n B a c k D i s t 	 + =   0 . 0 5 f ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 {  
 	 	 	 d i s t a n c e T o A d d 	 	 =   V e c L e n g t h (   t r a n s l a t i o n   ) ;    
 	 	 	  
 	 	 	  
 	 	 	 t r a n s l a t i o n 	 	 	 - =   w a l l N o r m a l   *   (   c h a r a c t e r R a d i u s   -   c l i m b C u r . f o r w a r d D i s t E x a c t   ) ;  
 	 	 }  
 	 	  
 	 	 t r a n s l a t i o n . Z 	 	 	 =   h e i g h t T o A d d ;  
 	 	  
 	 	  
 	 	 a d j u s t I n i t i a l l R o t a t 	 	 =   i n i t i a l r o t a t i o n ;  
 	 	 a d j u s t R o t a t i o n 	 	 	 =   r o t a t i o n ;  
 	 	 a d j u s t T r a n s l a t i o n 	 	 =   t r a n s l a t i o n ;  
 	 	  
 	 	  
 	 	 a d j u s t I n i t i a l R o t D o n e 	 =   f a l s e ;  
 	 	 a d j u s t R o t D o n e 	 	 	 =   f a l s e ;  
 	 	 a d j u s t T r a n s D o n e 	 	 	 =   f a l s e ;  
 	 	 a d j u s t S p e e d R e q u i r e 	 	 =   f a l s e ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 i f (   t r a n s l a t i o n B a c k D i s t   >   0 . 0 f   )  
 	 	 {  
 	 	 	 S t a r t M o v e m e n t A d j u s t o r I n i t i a l T r a n s l a t i o n (   t r a n s l a t i o n B a c k D i s t   *   w a l l N o r m a l   ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   S t a r t M o v e m e n t A d j u s t o r T r a n s l a t i o n (   d u r a t i o n   :   f l o a t   )  
 	 {  
 	 	 v a r   m o v A d j   	 	 	 :   C M o v e m e n t A d j u s t o r ;  
 	 	 v a r   t i c k e t   	 	 	 :   S M o v e m e n t A d j u s t m e n t R e q u e s t T i c k e t ;  
 	 	 v a r   t i c k e t 2 	 	 	 :   S M o v e m e n t A d j u s t m e n t R e q u e s t T i c k e t ;  
 	 	  
 	 	 v a r   d i s t a n c e 	 	 :   f l o a t ;  
 	 	 v a r   s p e e d 	 	 	 :   f l o a t ;  
 	 	 v a r   t i m e R e q u i r e d 	 :   f l o a t ;  
 	 	 v a r   a n i m S p e e d C o e f 	 :   f l o a t ;  
 	 	  
 	 	 i f (   n o A d j u s t o r   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 i f (   a d j u s t T r a n s l a t i o n   = =   V e c t o r (   0 ,   0 ,   0   )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 d i s t a n c e 	 =   V e c L e n g t h (   a d j u s t T r a n s l a t i o n   ) ;  
 	 	 s p e e d 	 	 =   d i s t a n c e   /   d u r a t i o n ;  
 	 	 i f (   s p e e d   >   a d j u s t S p e e d M a x   )  
 	 	 {  
 	 	 	 t i m e R e q u i r e d 	 	 =   d i s t a n c e   /   a d j u s t S p e e d M a x ;  
 	 	 	 a n i m S p e e d C o e f 	 	 =   d u r a t i o n   /   t i m e R e q u i r e d ;  
 	 	 	 d u r a t i o n 	 	 	 =   t i m e R e q u i r e d ;  
 	 	 	 a d j u s t S p e e d R e q u i r e 	 =   t r u e ;  
 	 	 	 a d j u s t S p e e d E n d T i m e 	 =   m _ E x p l o r a t i o n O . G e t S t a t e T i m e F ( )   +   d u r a t i o n ;  
 	 	 	 A p p l y A n i m a t i o n S p e e d (   a n i m S p e e d C o e f   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 m o v A d j 	 =   m _ E x p l o r a t i o n O . m _ O w n e r M A C . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 t i c k e t 	 =   m o v A d j . C r e a t e N e w R e q u e s t (   ' C l i m b A d j u s T r a n s l a t i o n '   ) ; 	 	  
 	 	 m o v A d j . A d j u s t m e n t D u r a t i o n (   t i c k e t ,   d u r a t i o n   ) ;  
 	 	 m o v A d j . A d j u s t L o c a t i o n V e r t i c a l l y (   t i c k e t ,   t r u e   ) ;  
 	 	  
 	 	 m o v A d j . S l i d e B y (   t i c k e t ,   a d j u s t T r a n s l a t i o n   ) ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 a d j u s t 2 D d u r a t i o n 	 =   d u r a t i o n ;  
 	 	 a d j u s t 2 T r a n s l a t i o n 	 =   V e c t o r (   a d j u s t T r a n s l a t i o n . X ,   a d j u s t T r a n s l a t i o n . Y ,   0 . 0 f   ) ;  
 	 	 a d j u s t 2 S p e e d 	 	 =   V e c L e n g t h 2 D (   a d j u s t 2 T r a n s l a t i o n   )   /   d u r a t i o n ;  
 	 	  
 	 	  
 	 	 a d j u s t T r a n s D o n e 	 =   t r u e ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   S t a r t M o v e m e n t A d j u s t o r I n i t i a l R o t a t i o n (   d u r a t i o n   :   f l o a t   )  
 	 {  
 	 	 v a r   m o v A d j   	 	 :   C M o v e m e n t A d j u s t o r ;  
 	 	 v a r   t i c k e t   	 	 :   S M o v e m e n t A d j u s t m e n t R e q u e s t T i c k e t ;  
 	 	 v a r 	 a n g l e 	 	 :   f l o a t ;  
 	 	  
 	 	  
 	 	 i f (   n o A d j u s t o r   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   a d j u s t I n i t i a l l R o t a t   = =   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t H e a d i n g ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	 a n g l e 	 =   	 A n g l e D i s t a n c e (   a d j u s t I n i t i a l l R o t a t ,   a d j u s t R o t a t i o n   ) ;  
 	 	 i f (   A b s F (   a n g l e   )   >   9 0 . 0 f   )    
 	 	 {  
 	 	 	 a d j u s t I n i t i a l l R o t a t 	 	 =   a d j u s t R o t a t i o n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 m o v A d j   =   m _ E x p l o r a t i o n O . m _ O w n e r M A C . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 t i c k e t   =   m o v A d j . C r e a t e N e w R e q u e s t (   ' C l i m b A d j u s I n i t i a l R o t a t i o n '   ) ; 	 	  
 	 	 m o v A d j . A d j u s t m e n t D u r a t i o n (   t i c k e t ,   d u r a t i o n   ) ;  
 	 	 m o v A d j . L o c k M o v e m e n t I n D i r e c t i o n (   t i c k e t ,   a d j u s t I n i t i a l l R o t a t   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 m o v A d j . R o t a t e T o (   t i c k e t ,   a d j u s t I n i t i a l l R o t a t   ) ; 	  
 	 	 a d j u s t I n i t i a l R o t D o n e 	 =   t r u e ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   S t a r t M o v e m e n t A d j u s t o r I n i t i a l T r a n s l a t i o n (   t r a n s l a t i o n B a c k   :   V e c t o r   )  
 	 {  
 	 	 v a r   m o v A d j   	 	 	 :   C M o v e m e n t A d j u s t o r ;  
 	 	 v a r   t i c k e t   	 	 	 :   S M o v e m e n t A d j u s t m e n t R e q u e s t T i c k e t ;  
 	 	  
 	 	  
 	 	 i f (   n o A d j u s t o r   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 m o v A d j 	 =   m _ E x p l o r a t i o n O . m _ O w n e r M A C . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 t i c k e t 	 =   m o v A d j . C r e a t e N e w R e q u e s t (   ' C l i m b A d j u s I n i t i a l T r a n s l a t i o n '   ) ; 	 	  
 	 	 m o v A d j . A d j u s t m e n t D u r a t i o n (   t i c k e t ,   0 . 1 f   ) ;  
 	 	 m o v A d j . A d j u s t L o c a t i o n V e r t i c a l l y (   t i c k e t ,   t r u e   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 m o v A d j . S l i d e B y (   t i c k e t ,   t r a n s l a t i o n B a c k   ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   S t a r t M o v e m e n t A d j u s t o r R o t a t i o n (   d u r a t i o n   :   f l o a t   )  
 	 {  
 	 	 v a r   m o v A d j   	 	 	 :   C M o v e m e n t A d j u s t o r ;  
 	 	 v a r   t i c k e t   	 	 	 :   S M o v e m e n t A d j u s t m e n t R e q u e s t T i c k e t ;  
 	 	  
 	 	  
 	 	 i f (   n o A d j u s t o r   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 m o v A d j   =   m _ E x p l o r a t i o n O . m _ O w n e r M A C . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 m o v A d j . C a n c e l B y N a m e (   ' C l i m b A d j u s I n i t i a l R o t a t i o n '   ) ;  
 	 	  
 	 	  
 	 	 i f (   a d j u s t R o t a t i o n 	 = =   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t H e a d i n g ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 t i c k e t   =   m o v A d j . C r e a t e N e w R e q u e s t (   ' C l i m b A d j u s R o t a t i o n '   ) ; 	 	  
 	 	 m o v A d j . A d j u s t m e n t D u r a t i o n (   t i c k e t ,   d u r a t i o n   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 m o v A d j . R o t a t e T o (   t i c k e t ,   a d j u s t R o t a t i o n   ) ; 	  
 	 	 a d j u s t R o t D o n e 	 =   t r u e ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   A p p l y F a k e G r a v i t y ( )  
 	 {  
 	 	 v a r   m o v A d j   	 	 	 :   C M o v e m e n t A d j u s t o r ;  
 	 	 v a r   t i c k e t   	 	 	 :   S M o v e m e n t A d j u s t m e n t R e q u e s t T i c k e t ;  
 	 	  
 	 	  
 	 	 i f (   n o A d j u s t o r   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 m o v A d j   =   m _ E x p l o r a t i o n O . m _ O w n e r M A C . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 t i c k e t   =   m o v A d j . C r e a t e N e w R e q u e s t (   ' C l i m b F a k e G r a v i t y '   ) ; 	 	  
 	 	 m o v A d j . A d j u s t m e n t D u r a t i o n (   t i c k e t ,   0 . 5   ) ;  
 	 	 m o v A d j . A d j u s t L o c a t i o n V e r t i c a l l y (   t i c k e t ,   t r u e   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 m o v A d j . S l i d e B y (   t i c k e t ,   V e c t o r (   0 . 0 f ,   0 . 0 f ,   - 0 . 7 5 f   )   ) ;  
 	 	 a d j u s t T r a n s D o n e 	 =   t r u e ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e A d j u s t i n g 2 D (   _ D t   :   f l o a t   )  
 	 {  
 	 	 v a r   m o v A d j   	 	 :   C M o v e m e n t A d j u s t o r ;  
 	 	 v a r   d i s t a n c e 	 :   f l o a t ;  
 	 	  
 	 	  
 	 	 i f (   a d j u s t 2 D d u r a t i o n   >   0 . 0 f   )  
 	 	 {  
 	 	 	 m o v A d j . A d d O n e F r a m e T r a n s l a t i o n V e l o c i t y (   a d j u s t 2 T r a n s l a t i o n   *   a d j u s t 2 S p e e d   ) ;  
 	 	 	 a d j u s t 2 D d u r a t i o n 	 - =   _ D t ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   A p p l y A n i m a t i o n S p e e d (   s p e e d   :   f l o a t   )  
 	 {  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . S e t B e h a v i o r V a r i a b l e (   b e h A n i m S p e e d ,   s p e e d   ) ;  
 	 	 S e t P r o p e r C a m e r a A n i m (   f a l s e ,   s p e e d   ) ;  
 	 }  
 	  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   S t a r t M o v e m e n t A d j u s t o r C o r r e c t P e l v i s ( )  
 	 {  
 	 	 v a r   m o v A d j   	 	 	 :   C M o v e m e n t A d j u s t o r ;  
 	 	 v a r   t i c k e t   	 	 	 :   S M o v e m e n t A d j u s t m e n t R e q u e s t T i c k e t ;  
 	 	  
 	 	 i f (   n o P e l v i s C o r e c t i o n   | |   n o A d j u s t o r   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 m o v A d j 	 =   m _ E x p l o r a t i o n O . m _ O w n e r M A C . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 t i c k e t 	 =   m o v A d j . C r e a t e N e w R e q u e s t (   ' C l i m b A d j u s P e l v i s C o r r e c t i o n '   ) ; 	 	  
 	 	 m o v A d j . A d j u s t m e n t D u r a t i o n (   t i c k e t ,   0 . 2 f   ) ;    
 	 	  
 	 	  
 	 	  
 	 	 m o v A d j . S l i d e B y (   t i c k e t ,   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d F o r w a r d ( )   *   p e l v i s T r a n s C u r   ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   S t a r t H a n d I K (   l e f t   :   b o o l ,   r i g h t   :   b o o l   )  
 	 {  
 	 	 v a r   r i g h t H a n d 	 	 :   V e c t o r ;  
 	 	 v a r   l e f t H a n d 	 	 :   V e c t o r ;  
 	 	  
 	 	 v a r   n o r m a l 	 	 	 :   V e c t o r ;  
 	 	  
 	 	 v a r   w o r l d 	 	 	 :   C W o r l d ;  
 	 	  
 	 	  
 	 	  
 	 	 i f (   l e f t   )  
 	 	 {  
 	 	 	 l e f t H a n d 	 	 	 =   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t B o n e W o r l d P o s i t i o n B y I n d e x (   b o n e I n d e x L e f t H a n d   ) ;  
 	 	 	 l e f t H a n d . Z 	 	 	 =   c l i m b P o i n t . Z ;  
 	 	 	  
 	 	 	 h a n d I K L R a y O r i g i n 	 =   l e f t H a n d   +   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d F o r w a r d ( )   *   h a n d I K F o r w a r d O f f s e t ;  
 	 	 	 h a n d I K L R a y E n d 	 	 =   h a n d I K L R a y O r i g i n ;  
 	 	 	 h a n d I K L R a y O r i g i n . Z 	 + =   h a n d I K H a l f M a x H e i g h t ;  
 	 	 	 h a n d I K L R a y E n d . Z 	 	 - =   h a n d I K H a l f M a x H e i g h t ;  
 	 	 	 w o r l d 	 	 	 	 =   t h e G a m e . G e t W o r l d ( ) ;  
 	 	 	 i f (   w o r l d   )  
 	 	 	 {  
 	 	 	 	 i f (   w o r l d . S w e e p T e s t (   h a n d I K L R a y O r i g i n ,   h a n d I K L R a y E n d ,   0 . 2 f ,   h a n d I K L R a y C o l l i s i o n ,   n o r m a l ,   c o l l i s i o n O b s t a c l e s N a m e s   )   )  
 	 	 	 	 {  
 	 	 	 	 	 l e f t H a n d O f f s e t 	 	 =   h a n d I K L R a y C o l l i s i o n . Z   -   l e f t H a n d . Z   +   h a n d T h i c k n e s s ;  
 	 	 	 	 	 i f (   A b s F (   l e f t H a n d O f f s e t   )   > =   h a n d I K M i n D i s t T o E n a b l e   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 h a n d I K E n a b l e d L e f t 	 =   t r u e ;  
 	 	 	 	 	 	  
 	 	 	 	 	 	 l e f t H a n d O f f s e t 	 =   C l a m p F (   l e f t H a n d O f f s e t ,   - h a n d I K M a x D i s t ,   h a n d I K M a x D i s t   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   r i g h t   )  
 	 	 {  
 	 	 	 r i g h t H a n d 	 	 	 =   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t B o n e W o r l d P o s i t i o n B y I n d e x (   b o n e I n d e x R i g h t H a n d   ) ;  
 	 	 	 r i g h t H a n d . Z 	 	 	 =   c l i m b P o i n t . Z ;  
 	 	 	  
 	 	 	 h a n d I K R R a y O r i g i n 	 =   r i g h t H a n d   +   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d F o r w a r d ( )   *   h a n d I K F o r w a r d O f f s e t ;  
 	 	 	 h a n d I K R R a y E n d 	 	 =   h a n d I K R R a y O r i g i n ;  
 	 	 	 h a n d I K R R a y O r i g i n . Z 	 + =   h a n d I K H a l f M a x H e i g h t ;  
 	 	 	 h a n d I K R R a y E n d . Z 	 	 - =   h a n d I K H a l f M a x H e i g h t ;  
 	 	 	 i f (   t h e G a m e . G e t W o r l d ( ) . S w e e p T e s t (   h a n d I K R R a y O r i g i n ,   h a n d I K R R a y E n d ,   0 . 2 f ,   h a n d I K R R a y C o l l i s i o n ,   n o r m a l ,   c o l l i s i o n O b s t a c l e s N a m e s   )   )  
 	 	 	 {  
 	 	 	 	 r i g h t H a n d O f f s e t 	 	 =   h a n d I K R R a y C o l l i s i o n . Z   -   r i g h t H a n d . Z   +   h a n d T h i c k n e s s ;  
 	 	 	 	 i f (   A b s F (   r i g h t H a n d O f f s e t   )   > =   h a n d I K M i n D i s t T o E n a b l e   )  
 	 	 	 	 {  
 	 	 	 	 	 h a n d I K E n a b l e d R i g h t 	 =   t r u e ;  
 	 	 	 	 	  
 	 	 	 	 	 r i g h t H a n d O f f s e t 	 =   C l a m p F (   r i g h t H a n d O f f s e t ,   - h a n d I K M a x D i s t ,   h a n d I K M a x D i s t   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   h a n d I K E n a b l e d L e f t   | |   h a n d I K E n a b l e d R i g h t   )  
 	 	 {  
 	 	 	 m _ E x p l o r a t i o n O . m _ O w n e r M A C . S e t E n a b l e d H a n d s I K (   t r u e   ) ;  
 	 	 	 h a n d I K E n a b l e d 	 =   t r u e ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   S t o p H a n d I K (     l e f t   :   b o o l ,   r i g h t   :   b o o l   )  
 	 { 	 	 	  
 	 	 i f (   l e f t   )  
 	 	 {  
 	 	 	 l e f t H a n d O f f s e t 	 =   0 . 0 f ;  
 	 	 	 h a n d I K E n a b l e d L e f t 	 =   f a l s e ;  
 	 	 }  
 	 	 i f (   r i g h t   )  
 	 	 {  
 	 	 	 r i g h t H a n d O f f s e t 	 =   0 . 0 f ;  
 	 	 	 h a n d I K E n a b l e d R i g h t 	 =   f a l s e ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e H a n d s I K (   _ D t   :   f l o a t   )  
 	 {  
 	 	  
 	 	 i f (   h a n d I K q u e u e d L   | |   h a n d I K q u e u e d R   )  
 	 	 {  
 	 	 	 S t a r t H a n d I K (   h a n d I K q u e u e d L ,   h a n d I K q u e u e d R   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f (   h a n d I K q u e u e d L   & &   h a n d I K E n a b l e d L e f t   )  
 	 	 	 {  
 	 	 	 	 h a n d I K q u e u e d L 	 =   f a l s e ;  
 	 	 	 }  
 	 	 	 i f (   h a n d I K q u e u e d R   & &   h a n d I K E n a b l e d R i g h t   )  
 	 	 	 {  
 	 	 	 	 h a n d I K q u e u e d R 	 =   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 e l s e   i f (   c o n t i n o u s H a n d I K   )  
 	 	 {  
 	 	 	 i f (   h a n d I K E n a b l e d L e f t   | |   h a n d I K E n a b l e d R i g h t   )  
 	 	 	 {  
 	 	 	 	 S t a r t H a n d I K (   h a n d I K E n a b l e d L e f t ,   h a n d I K E n a b l e d R i g h t   ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 U p d a t e A n d S e t H a n d s I K B l e n d (   _ D t   ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e A n d S e t H a n d s I K B l e n d (   _ D t   :   f l o a t   )  
 	 {  
 	 	 i f (   h a n d I K E n a b l e d L e f t   | |   h a n d I K E n a b l e d R i g h t   | |   A b s F (   l e f t H a n d O f f s e t C u r   )   >   0 . 0 f   | |   A b s F (   r i g h t H a n d O f f s e t C u r   )   >   0 . 0 f   )  
 	 	 {  
 	 	 	  
 	 	 	 i f (   l e f t H a n d O f f s e t   = =   0 . 0 f   )  
 	 	 	 {  
 	 	 	 	 l e f t H a n d O f f s e t C u r 	 =   B l e n d L i n e a r F (   l e f t H a n d O f f s e t C u r ,   l e f t H a n d O f f s e t ,   _ D t   *   h a n d I K B l e n d S p e e d O u t   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 l e f t H a n d O f f s e t C u r 	 =   B l e n d L i n e a r F (   l e f t H a n d O f f s e t C u r ,   l e f t H a n d O f f s e t ,   _ D t   *   h a n d I K B l e n d S p e e d I n   ) ;  
 	 	 	 }  
 	 	 	 i f (   r i g h t H a n d O f f s e t   = =   0 . 0 f   )  
 	 	 	 {  
 	 	 	 	 r i g h t H a n d O f f s e t C u r 	 =   B l e n d L i n e a r F (   r i g h t H a n d O f f s e t C u r ,   r i g h t H a n d O f f s e t ,   _ D t   *   h a n d I K B l e n d S p e e d O u t   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 { 	 	 	  
 	 	 	 	 r i g h t H a n d O f f s e t C u r 	 =   B l e n d L i n e a r F (   r i g h t H a n d O f f s e t C u r ,   r i g h t H a n d O f f s e t ,   _ D t   *   h a n d I K B l e n d S p e e d I n   ) ;  
 	 	 	 }  
 	 	 	 m _ E x p l o r a t i o n O . m _ O w n e r M A C . S e t H a n d s I K O f f s e t s (   l e f t H a n d O f f s e t C u r ,   r i g h t H a n d O f f s e t C u r   ) ;  
 	 	 }  
 	 	  
 	 	 e l s e   i f (   h a n d I K E n a b l e d   & &   ! h a n d I K E n a b l e d L e f t   & &   ! h a n d I K E n a b l e d R i g h t   & &   l e f t H a n d O f f s e t C u r   = =   0 . 0 f   & &   r i g h t H a n d O f f s e t C u r   = =   0 . 0 f   )  
 	 	 {  
 	 	 	 m _ E x p l o r a t i o n O . m _ O w n e r M A C . S e t E n a b l e d H a n d s I K (   f a l s e   ) ;  
 	 	 	 h a n d I K E n a b l e d 	 =   f a l s e ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e T r a n s l a t i o n O u t s i d e C a p s u l e (   _ D t   :   f l o a t   )  
 	 {  
 	 	 s w i t c h (   p e l v i s T r a n s S t a t e   )  
 	 	 {  
 	 	 	 c a s e   E O C S _ I n a c t i v e 	 	 :  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   E O C S _ S t a r t i n g 	 	 :  
 	 	 	 	 U p d a t e T a r g e t P e l v i s T r a n s l a t i o n T a r g e t ( ) ;  
 	 	 	 	 p e l v i s T r a n s C u r 	 =   B l e n d L i n e a r F (   p e l v i s T r a n s C u r ,   p e l v i s T r a n s T a r g e t ,   p e l v i s T r a n s S p e e d   *   _ D t   ) ;  
 	 	 	 	 S e t T r a n s l a t i o n T o B e h a v i o u r ( ) ;  
 	 	 	 	 i f (   p e l v i s T r a n s C u r   <   p e l v i s T r a n s S p e e d   *   _ D t   )  
 	 	 	 	 {  
 	 	 	 	 	 p e l v i s T r a n s S t a t e 	 =   E O C S _ P e r f e c t F o l l o w ;  
 	 	 	 	 }  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   E O C S _ P e r f e c t F o l l o w 	 :  
 	 	 	 	 U p d a t e T a r g e t P e l v i s T r a n s l a t i o n T a r g e t ( ) ;  
 	 	 	 	 p e l v i s T r a n s C u r 	 =   p e l v i s T r a n s T a r g e t ;  
 	 	 	 	 S e t T r a n s l a t i o n T o B e h a v i o u r ( ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   E O C S _ R e c o v e r 	 	 :  
 	 	 	 	 b r e a k ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e T a r g e t P e l v i s T r a n s l a t i o n T a r g e t ( )  
 	 {  
 	 	 v a r   d i r e c t i o n T o P o i n t   :   V e c t o r ;  
 	 	  
 	 	  
 	 	 d i r e c t i o n T o P o i n t 	 =   c l i m b P o i n t   -   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d P o s i t i o n ( ) ; 	 	  
 	 	 d i r e c t i o n T o P o i n t . Z 	 =   0 . 0 f ;  
 	 	  
 	 	 d i r e c t i o n T o P o i n t 	 =   d i r e c t i o n T o P o i n t   *   V e c D o t (   d i r e c t i o n T o P o i n t ,   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d F o r w a r d ( )   ) ;  
 	 	  
 	 	 p e l v i s T r a n s T a r g e t 	 =   V e c L e n g t h 2 D (   d i r e c t i o n T o P o i n t   )   -   c h a r a c t e r R a d i u s   +   0 . 1 f ;  
 	 	 p e l v i s T r a n s T a r g e t 	 =   C l a m p F (   p e l v i s T r a n s T a r g e t ,   0 . 0 f ,   p e l v i s T r a n s M a x   ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   C o r r e c t P e l v i s S t a r t E n d ( )  
 	 {  
 	 	 i f ( 	 p e l v i s T r a n s S t a t e   = =   E O C S _ P e r f e c t F o l l o w   | |   p e l v i s T r a n s S t a t e   = =   E O C S _ S t a r t i n g   )  
 	 	 {  
 	 	 	 p e l v i s T r a n s S t a t e 	 =   E O C S _ R e c o v e r ;  
 	 	 	 p e l v i s T r a n s T a r g e t 	 =   0 . 0 f ;  
 	 	 	 R e s e t T r a n s l a t i o n T o B e h a v i o u r ( ) ;  
 	 	 	 S t a r t M o v e m e n t A d j u s t o r C o r r e c t P e l v i s ( ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   S e t T r a n s l a t i o n T o B e h a v i o u r ( )  
 	 {  
 	 	 i f (   n o P e l v i s C o r e c t i o n   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r M A C . S e t A d d i t i o n a l O f f s e t T o C o n s u m e M S (   V e c t o r (   0 . 0 f ,   p e l v i s T r a n s C u r ,   0 . 0 f   ) ,   E u l e r A n g l e s (   0 . 0 f ,   0 . 0 f ,   0 . 0 f   ) ,   1 . 0 f   ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   R e s e t T r a n s l a t i o n T o B e h a v i o u r ( )  
 	 {  
 	 	 i f (   n o P e l v i s C o r e c t i o n   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r M A C . S e t A d d i t i o n a l O f f s e t T o C o n s u m e M S (   V e c t o r (   0 . 0 f ,   p e l v i s T r a n s C u r ,   0 . 0 f   ) ,   E u l e r A n g l e s (   0 . 0 f ,   0 . 0 f ,   0 . 0 f   ) ,   0 . 1 f   ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e R u n O r W a l k ( )  
 	 {  
 	 	 v a r   r u n V a l u e 	 :   f l o a t ;  
 	 	  
 	 	  
 	 	 i f (   m _ E x p l o r a t i o n O . m _ I n p u t O . I s M o d u l e C o n s i d e r a b l e ( )   & &   A b s F (   m _ E x p l o r a t i o n O . m _ I n p u t O . G e t H e a d i n g D i f f F r o m P l a y e r F ( )   )   <   i n p u t A n g l e T o R u n   )  
 	 	 {  
 	 	 	 i f (   t h e P l a y e r . G e t I s R u n n i n g ( )   )    
 	 	 	 {  
 	 	 	 	 r u n V a l u e 	 =   1 . 0 f ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 r u n V a l u e 	 =   0 . 5 f ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r u n V a l u e 	 =   0 . 0 f ;    
 	 	 }  
 	 	  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . S e t B e h a v i o r V a r i a b l e (   b e h T o R u n ,   r u n V a l u e   ) ;  
 	 }  
 	  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   C h e c k V e r t i c a l S l i d e E n d ( )  
 	 {  
 	 	 v a r   p o s C u r 	 :   V e c t o r ;  
 	 	  
 	 	  
 	 	 i f (   v a u l t i n g F o u n d   = =   E C R V _ N o V a u l t   )  
 	 	 {  
 	 	 	 p o s C u r 	 =   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 i f (   p o s C u r . Z   >   h e i g h t T a r g e t   +   0 . 1 f   )  
 	 	 	 {  
 	 	 	 	 m _ E x p l o r a t i o n O . m _ C o l l i s i o n M a n a g e r O . E n a b l e V e r t i c a l S l i d i n g (   f a l s e   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	 	  
 	  
 	 f u n c t i o n   U p d a t e C a m e r a I f N e e d e d (   o u t   m o v e D a t a   :   S C a m e r a M o v e m e n t D a t a ,   d t   :   f l o a t   )   :   b o o l  
 	 {  
 	 	 v a r   b l e n d 	 	 	 :   f l o a t ;  
 	 	 v a r   t a r g e t P o s 	 	 :   V e c t o r ;  
 	 	 v a r   p o s i t i o n 	 	 :   V e c t o r ;  
 	 	 v a r   r o t a t i o n 	 	 :   E u l e r A n g l e s ;  
 	 	 v a r   p o s i t i o n D e s i r e d 	 :   V e c t o r ;  
 	 	 v a r   r o t a t i o n D e s i r e d 	 :   E u l e r A n g l e s ;  
 	 	 v a r   i n p u t X 	 	 	 :   f l o a t ;  
 	 	 v a r   i n p u t Y 	 	 	 :   f l o a t ;  
 	 	  
 	 	  
 	 	 i f (   ! u p d a t e C a m e r a M a n u a l   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 t a r g e t P o s 	 	 =   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t B o n e W o r l d P o s i t i o n B y I n d e x (   c a m F o l l o w B o n e I D   ) ;  
 	 	 r o t a t i o n D e s i r e d 	 =   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d R o t a t i o n ( ) ;  
 	 	  
 	 	  
 	 	 i f (   c a m S t a r t   = =   t r u e   )  
 	 	 {  
 	 	 	  
 	 	 	 c a m O r i g i n a l P o s i t i o n   =   m o v e D a t a . p i v o t P o s i t i o n V a l u e ;  
 	 	 	 c a m O r i g i n a l R o t a t i o n 	 =   m o v e D a t a . p i v o t R o t a t i o n V a l u e ;  
 	 	 	 c a m C u r R o t a t i o n 	 	 =   r o t a t i o n D e s i r e d ;  
 	 	 	 c a m O r i g i n a l O f f s e t 	 =   m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t ;  
 	 	 	 c a m S t a r t 	 	 	 =   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i n p u t X 	 	 	 	 	 	 	 =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s R i g h t X '   ) ;  
 	 	 i n p u t Y 	 	 	 	 	 	 	 =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s R i g h t Y '   ) ;  
 	 	 c a m C u r R o t a t i o n . Y a w 	 	 	 	 =   c a m C u r R o t a t i o n . Y a w   -   i n p u t X   *   d t   *   2 0 0 . 0 f ;  
 	 	 c a m C u r R o t a t i o n . P i t c h 	 	 	 =   C l a m p F (   c a m C u r R o t a t i o n . P i t c h   +   i n p u t Y   *   d t   *   1 0 0 . 0 f ,   - 4 5 . 0 f ,   4 5 . 0 f   ) ;  
 	 	  
 	 	  
 	 	 c a m O r i g i n a l R o t a t i o n . Y a w 	 	 	 =   L e r p A n g l e F (   d t   *   5 . 0 f ,   c a m O r i g i n a l R o t a t i o n . Y a w ,   c a m C u r R o t a t i o n . Y a w   ) ;  
 	 	 c a m O r i g i n a l R o t a t i o n . P i t c h 	 	 =   L e r p A n g l e F (   d t   *   5 . 0 f ,   c a m O r i g i n a l R o t a t i o n . P i t c h ,   c a m C u r R o t a t i o n . P i t c h   ) ;  
 	 	  
 	 	 p o s i t i o n D e s i r e d 	 	 	 	 	 =   t a r g e t P o s   -   m _ E x p l o r a t i o n O . G e t W o r l d F o r w a r d ( )   *   0 . 8 f   +   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d U p ( )   *   0 . 8 f ;  
 	 	 c a m O r i g i n a l P o s i t i o n 	 	 	 	 =   L e r p V (   c a m O r i g i n a l P o s i t i o n ,   p o s i t i o n D e s i r e d ,   d t   *   2 . 0 f   ) ;  
 	 	  
 	 	  
 	 	 m o v e D a t a . p i v o t P o s i t i o n V a l u e 	 	 =   c a m O r i g i n a l P o s i t i o n ;  
 	 	 m o v e D a t a . p i v o t R o t a t i o n V a l u e 	 	 =   c a m O r i g i n a l R o t a t i o n ;  
 	 	 m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t 	 =   c a m O r i g i n a l O f f s e t ;  
 	 	 m o v e D a t a . p i v o t P o s i t i o n V e l o c i t y 	 =   V e c t o r (   0 . 0 f ,   0 . 0 f ,   0 . 0 f   ) ;  
 	 	 m o v e D a t a . p i v o t R o t a t i o n V e l o c i t y 	 =   E u l e r A n g l e s (   0 . 0 f ,   0 . 0 f ,   0 . 0 f   ) ;  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t D e b u g T e x t ( )   :   s t r i n g  
 	 {  
 	 	 v a r   t e x t 	 :   s t r i n g ;  
 	 	  
 	 	 t e x t 	 =   c l i m b C u r . t y p e 	 	 	 	 +   " ,   "  
 	 	 	 	 +   c l i m b C u r . r e q u i r e d V a u l t 	 +   " ,   "  
 	 	 	 	 +   c l i m b C u r . r e q u i r e d P l a t f o r m 	 +   " ,   "  
 	 	 	 	 +   c l i m b C u r . r e q u i r e d S t a t e 	 +   " ,   "  
 	 	 	 	 +   " P e l v i s T :   "   +   p e l v i s T r a n s C u r ;  
 	 	  
 	 	 r e t u r n   t e x t ;  
 	 }  
 	  
 	  
 	 e v e n t   O n V i s u a l D e b u g (   f r a m e   :   C S c r i p t e d R e n d e r F r a m e ,   f l a g   :   E S h o w F l a g s ,   a c t i v e   :   b o o l   )  
 	 {  
 	 	 v a r   c o l o r A u x 	 	 :   C o l o r ;  
 	 	  
 	 	  
 	 	 m _ C l i m b O r a c l e O . O n V i s u a l D e b u g (   f r a m e ,   f l a g ,   a c t i v e   ) ;  
 	 	  
 	 	 c o l o r A u x 	 =   C o l o r (   8 0 ,   2 0 0 ,   8 0   ) ;  
 	 	 f r a m e . D r a w T e x t (   G e t C l i m b T y p e T e x t ( ) ,   c l i m b P o i n t   +   V e c t o r (   0 . 0 f ,   0 . 0 f ,   1 . 0 f   )   +   V e c F r o m H e a d i n g (   a d j u s t R o t a t i o n   )   *   2 . 0 f   ,   c o l o r A u x   ) ;  
 	 	 c o l o r A u x 	 =   C o l o r (   1 0 0 ,   2 5 5 ,   1 0 0   ) ;  
 	 	 f r a m e . D r a w S p h e r e (   c l i m b P o i n t ,   0 . 1 f ,   c o l o r A u x   ) ;  
 	 	 f r a m e . D r a w L i n e (   c l i m b P o i n t ,   c l i m b P o i n t   +   w a l l N o r m a l ,   c o l o r A u x   ) ;  
 	 	  
 	 	  
 	 	 c o l o r A u x 	 =   C o l o r (   2 5 5 ,   2 5 5 ,   2 5 5   ) ;  
 	 	 f r a m e . D r a w L i n e (   h a n d I K L R a y O r i g i n ,   h a n d I K L R a y E n d ,   c o l o r A u x   ) ; 	 	  
 	 	 f r a m e . D r a w T e x t (   " I K :   "   +   l e f t H a n d O f f s e t C u r ,     h a n d I K L R a y C o l l i s i o n ,   c o l o r A u x   ) ;  
 	 	 f r a m e . D r a w L i n e (   h a n d I K R R a y O r i g i n ,   h a n d I K R R a y E n d ,   c o l o r A u x   ) ; 	 	  
 	 	 f r a m e . D r a w T e x t (   " I K :   "   +   r i g h t H a n d O f f s e t C u r ,   h a n d I K R R a y C o l l i s i o n ,   c o l o r A u x   ) ;  
 	 	  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   D e b u g L o g S u c c e s f u l l C l i m b ( )  
 	 { 	 	 	 	  
 	 	 L o g E x p l o r a t i o n C l i m b (   " - - - - - - - - - - - - - - - - - -   C l i m b   F o u n d   - - - - - - - - - - - - - - - - - - "   ) ;  
 	 	 L o g E x p l o r a t i o n C l i m b (   G e t C l i m b T y p e T e x t ( )   ) ;  
 	 	 L o g E x p l o r a t i o n C l i m b (   " T r a n s l a t i o n   "   +   V e c T o S t r i n g (   a d j u s t T r a n s l a t i o n   )   +   " ,   R o t a t i o n   "   +   a d j u s t R o t a t i o n    
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 +   " ,   h e i g h t T o A d d   "   +   h e i g h t T o A d d   ) ; 	 	  
 	 	 m _ C l i m b O r a c l e O . D e b u g L o g S u c c e s f u l l C l i m b ( ) ;  
 	 	 L o g E x p l o r a t i o n C l i m b (   " - - - - - - - - - - - - - - - - - -       - - - - - -       - - - - - - - - - - - - - - - - - - "   ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   G e t C l i m b T y p e T e x t ( )   :   s t r i n g  
 	 {  
 	 	 r e t u r n   c l i m b C u r . r e q u i r e d S t a t e   +   " ,   "   +   c l i m b C u r . t y p e   +   " ,   "   +   c l i m b C u r . r e q u i r e d V a u l t   +   " ,   "   +   c l i m b C u r . r e q u i r e d P l a t f o r m ;  
 	 	  
 	 }  
 }  
  
  
 f u n c t i o n   L o g E x p l o r a t i o n C l i m b (   t e x t   :   s t r i n g   )  
 {  
 	 L o g C h a n n e l (   ' E x p l o r a t i o n S t a t e ' 	 	 ,   " C l i m b :   "   +   t e x t   ) ;  
 	 L o g C h a n n e l (   ' E x p l o r a t i o n S t a t e C l i m b ' 	 ,   t e x t   ) ;  
 }  
 