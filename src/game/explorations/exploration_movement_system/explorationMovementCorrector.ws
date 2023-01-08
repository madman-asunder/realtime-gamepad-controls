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
  
  
  
 e n u m   E M o v e m e n t C o r r e c t i o n T y p e  
 {  
 	 E M C T _ N o n e 	 	 	 =   0 	 ,  
 	 E M C T _ C o l l i s i o n 	 	 	 ,  
 	 E M C T _ P u s h 	 	 	 	 ,  
 	 E M C T _ P h y s i c s 	 	 	 ,  
 	 E M C T _ N a v M e s h 	 	 	 ,  
 	 E M C T _ E x p l o r a t i o n 	 	 ,  
 	 / / E M C T _ D o o r 	 	 	 	 ,     / / I m m e r s i v e M o t i o n  
 	 E M C T _ F a l l 	 	 	 	 ,  
 	  
 	 E M C T _ S i z e 	 	 	 	 ,  
 } ;  
 	  
  
  
 c l a s s   C E x p l o r a t i o n M o v e m e n t C o r r e c t o r  
 {  
 	 p r i v a t e   v a r 	 m _ E x p l o r a t i o n O 	 	 	 	 :   C E x p l o r a t i o n S t a t e M a n a g e r ;  
 	  
 	  
 	 p r i v a t e   v a r   c o r r e c t i o n N o n e 	 	 	 	 :   N a v i g a t i o n C o r r e c t i o n ;  
 	 p r i v a t e   v a r   c o r r e c t i o n O n C o l l i s i o n 	 	 :   N a v i g a t i o n C o r r e c t i o n ;  
 	 p r i v a t e   v a r   c o r r e c t i o n O n P h y s i c s 	 	 	 :   N a v i g a t i o n C o r r e c t i o n ;  
 	 p r i v a t e   v a r   c o r r e c t i o n O n P u s h 	 	 	 :   N a v i g a t i o n C o r r e c t i o n ;  
 	 p r i v a t e   v a r   c o r r e c t i o n O n N a v M e s h 	 	 	 :   N a v i g a t i o n C o r r e c t i o n ;  
 	 p r i v a t e   v a r   c o r r e c t i o n O n E x p l o r a t i o n 	 	 :   N a v i g a t i o n C o r r e c t i o n ;  
 	 p r i v a t e   v a r   c o r r e c t i o n O n D o o r s 	 	 	 :   N a v i g a t i o n C o r r e c t i o n ;  
 	 p r i v a t e   v a r   c o r r e c t i o n O n F a l l i n g 	 	 	 :   N a v i g a t i o n C o r r e c t i o n ;  
  
 	 p r i v a t e   v a r   c o r r e c t i o n A c c e p t e d 	 	 	 :   N a v i g a t i o n C o r r e c t i o n ;  
 	  
 	  
 	  
 	 p r i v a t e   v a r 	 v a l i d E x p l o r a t i o n 	 	 	 :   S E x p l o r a t i o n Q u e r y T o k e n ;  
 	 p r i v a t e   v a r   c h e c k i n g F o r R u n 	 	 	 	 :   b o o l ;  
 	 p r i v a t e   v a r   c h e c k i n g F o r C o m b a t 	 	 	 :   b o o l ;  
 	 p r i v a t e   v a r 	 i n p u t D i f e r e n c e 	 	 	 	 :   f l o a t ;  
 	  
 	  
 	 p r i v a t e   v a r 	 p u s h S l o w i n g T i m e C o o l d o w n 	 	 :   f l o a t ; 	 	 d e f a u l t 	 p u s h S l o w i n g T i m e C o o l d o w n 	 	 =   0 . 0 1 f ;  
 	 p r i v a t e   v a r 	 p u s h S l o w i n g T i m e C u r 	 	 	 :   f l o a t ;  
 	 p r i v a t e   v a r   m a x P u s h A n g l e S l o w 	 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x P u s h A n g l e S l o w 	 	 	 =   4 5 . 0 f ;  
 	 p r i v a t e   v a r   m a x P u s h A n g l e T u r n 	 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x P u s h A n g l e T u r n 	 	 	 =   7 0 . 0 f ;  
 	 p r i v a t e   v a r 	 p u s h C o o l d o w n T o t a l 	 	 	 :   f l o a t ; 	 	 d e f a u l t   p u s h C o o l d o w n T o t a l 	 	 	 =   0 . 0 5 f ;  
 	 p r i v a t e   v a r 	 p u s h C o o l d o w n C u r 	 	 	 	 :   f l o a t ;  
 	 p r i v a t e   v a r 	 p u s h D i r e c t i o n 	 	 	 	 :   V e c t o r ;  
 	  
 	  
 	 p r i v a t e   v a r 	 c o l l i s i o n S t o p p e d 	 	 	 :   b o o l ;  
 	  
 	  
 	 p r i v a t e   v a r   e n a b l e C o l l i s i o n W a l k i n g 	 	 :   b o o l ; 	 	 	 d e f a u l t 	 e n a b l e C o l l i s i o n W a l k i n g 	 	 =   t r u e ; 	  
 	 p r i v a t e   v a r   e n a b l e C o l l i s i o n R u n n i n g 	 	 :   b o o l ; 	 	 	 d e f a u l t 	 e n a b l e C o l l i s i o n R u n n i n g 	 	 =   t r u e ;  
 	 p r i v a t e   v a r   e n a b l e P u s h C o m b a t 	 	 	 :   b o o l ; 	 	 	 d e f a u l t 	 e n a b l e P u s h C o m b a t 	 	 	 =   t r u e ; 	  
 	 p r i v a t e   v a r   e n a b l e P u s h W h i l e M o v i n g 	 	 :   b o o l ; 	 	 	 d e f a u l t 	 e n a b l e P u s h W h i l e M o v i n g 	 	 =   t r u e ;  
 	 p r i v a t e   v a r   e n a b l e P h y s i c s W a l k i n g 	 	 :   b o o l ; 	 	 	 d e f a u l t 	 e n a b l e P h y s i c s W a l k i n g 	 	 =   f a l s e ;  
 	 p r i v a t e   v a r   e n a b l e P h y s i c s R u n n i n g 	 	 :   b o o l ; 	 	 	 d e f a u l t 	 e n a b l e P h y s i c s R u n n i n g 	 	 =   f a l s e ;  
 	 p r i v a t e   v a r   e n a b l e N a v M e s h W a l k i n g 	 	 :   b o o l ; 	 	 	 d e f a u l t 	 e n a b l e N a v M e s h W a l k i n g 	 	 =   f a l s e ;  
 	 p r i v a t e   v a r   e n a b l e N a v M e s h R u n n i n g 	 	 :   b o o l ; 	 	 	 d e f a u l t 	 e n a b l e N a v M e s h R u n n i n g 	 	 =   f a l s e ;  
 	 p r i v a t e   v a r   e n a b l e E x p l o r a t i o n W a l k i n g 	 :   b o o l ; 	 	 	 d e f a u l t 	 e n a b l e E x p l o r a t i o n W a l k i n g 	 =   f a l s e ;  
 	 p r i v a t e   v a r   e n a b l e E x p l o r a t i o n R u n n i n g 	 :   b o o l ; 	 	 	 d e f a u l t 	 e n a b l e E x p l o r a t i o n R u n n i n g 	 =   f a l s e ;  
 	 p r i v a t e   v a r   e n a b l e D o o r s W a l k i n g 	 	 	 :   b o o l ; 	 	 	 d e f a u l t 	 e n a b l e D o o r s W a l k i n g 	 	 	 =   t r u e ;  
 	 p r i v a t e   v a r   e n a b l e D o o r s R u n n i n g 	 	 	 :   b o o l ; 	 	 	 d e f a u l t 	 e n a b l e D o o r s R u n n i n g 	 	 	 =   t r u e ;  
 	  
 	  
 	 p r i v a t e   v a r   l i m i t C o r r e c t i o n T u r n i n g S i d e 	 :   b o o l ; 	 	 	 d e f a u l t 	 l i m i t C o r r e c t i o n T u r n i n g S i d e 	 =   t r u e ;  
 	 p r i v a t e   v a r   i n p u t D i f T o S i d e 	 	 	 	 :   f l o a t ; 	 	 d e f a u l t 	 i n p u t D i f T o S i d e 	 	 	 	 =   1 . 0 f ;  
 	  
 	  
 	 p r i v a t e   v a r   m a x P h y s i c S i d e D i s t a n c e 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x P h y s i c S i d e D i s t a n c e 	 	 =   0 . 7 f ;  
 	 p r i v a t e   v a r   m a x P h y s i c P o r t a l D i s t a n c e 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x P h y s i c P o r t a l D i s t a n c e 	 	 =   1 . 0 f ;  
 	  
 	  
 	 p r i v a t e   v a r   m a x P h y s i c D i s t a n c e W a l k 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x P h y s i c D i s t a n c e W a l k 	 	 =   0 . 5 f ;  
 	 p r i v a t e   v a r   m a x P h y s i c D i s t a n c e R u n 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x P h y s i c D i s t a n c e R u n 	 	 =   0 . 7 f ;  
 	 p r i v a t e   v a r   m a x P h y s i c A n g l e W a l k 	 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x P h y s i c A n g l e W a l k 	 	 	 =   6 0 . 0 f ;   / / 4 5 . 0 f ;   / / I m m e r s i v e M o t i o n  
 	 p r i v a t e   v a r   m a x P h y s i c A n g l e R u n 	 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x P h y s i c A n g l e R u n 	 	 	 =   6 0 . 0 f ;  
 	  
 	 p r i v a t e   v a r   m a x N a v m e s h D i s t a n c e W a l k 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x N a v m e s h D i s t a n c e W a l k 	 	 =   0 . 7 f ;  
 	 p r i v a t e   v a r   m a x N a v m e s h D i s t a n c e R u n 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x N a v m e s h D i s t a n c e R u n 	 	 =   2 . 0 f ;  
 	 p r i v a t e   v a r   m a x N a v m e s h A n g l e W a l k 	 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x N a v m e s h A n g l e W a l k 	 	 	 =   6 0 . 0 f ;   / / 4 5 . 0 f ;   / / I m m e r s i v e M o t i o n  
 	 p r i v a t e   v a r   m a x N a v m e s h A n g l e R u n 	 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x N a v m e s h A n g l e R u n 	 	 	 =   6 0 . 0 f ;  
 	  
 	 p r i v a t e   v a r   m a x E x p l o r a t i o n D i s t a n c e W a l k 	 :   f l o a t ; 	 	 d e f a u l t   m a x E x p l o r a t i o n D i s t a n c e W a l k 	 =   0 . 5 f ;  
 	 p r i v a t e   v a r   m a x E x p l o r a t i o n D i s t a n c e R u n 	 :   f l o a t ; 	 	 d e f a u l t   m a x E x p l o r a t i o n D i s t a n c e R u n 	 =   2 . 1 f ;  
 	 p r i v a t e   v a r   m a x E x p l o r a t i o n A n g l e W a l k 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x E x p l o r a t i o n A n g l e W a l k 	 	 =   1 5 . 0 f ;  
 	 p r i v a t e   v a r   m a x E x p l o r a t i o n A n g l e R u n 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x E x p l o r a t i o n A n g l e R u n 	 	 =   1 5 . 0 f ;  
 	  
 	 p r i v a t e   v a r   m a x D o o r D i s t a n c e W a l k 	 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x D o o r D i s t a n c e W a l k 	 	 	 =   2 . 5 f ;  
 	 p r i v a t e   v a r   m a x D o o r D i s t a n c e R u n 	 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x D o o r D i s t a n c e R u n 	 	 	 =   2 . 1 f ;  
 	 p r i v a t e   v a r   m a x D o o r A n g l e W a l k 	 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x D o o r A n g l e W a l k 	 	 	 =   6 5 . 0 f ;  
 	 p r i v a t e   v a r   m a x D o o r A n g l e R u n 	 	 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x D o o r A n g l e R u n 	 	 	 	 =   6 5 . 0 f ;  
 	 p r i v a t e   v a r   m a x D o o r A n g l e G a t h e r 	 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x D o o r A n g l e G a t h e r 	 	 	 =   4 5 . 0 f ;  
 	 p r i v a t e   v a r   m a x D o o r B a c k 	 	 	 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x D o o r B a c k 	 	 	 	 	 =   1 . 0 f ;  
 	 p r i v a t e   v a r   m a x D o o r H e i g h t 	 	 	 	 :   f l o a t ; 	 	 d e f a u l t   m a x D o o r H e i g h t 	 	 	 	 =   1 . 0 f ;  
 	  
 	  
 	  
 	 p r i v a t e   v a r 	 t u r n A d j u s t B l o c k e d 	 	 	 :   b o o l ;  
 	 p r i v a t e   v a r 	 a n i m E v e n t B l o c k T u r n A d j u s t 	 :   n a m e ; 	 	 	 d e f a u l t 	 a n i m E v e n t B l o c k T u r n A d j u s t 	 =   ' b l o c k T u r n A d j u s t ' ;  
 	 p r i v a t e   v a r   t u r n A d j u s t m e n t E n a b l e d 	 	 :   b o o l ; 	 	 	 d e f a u l t 	 t u r n A d j u s t m e n t E n a b l e d 	 	 =   t r u e ;  
 	 p r i v a t e   v a r   t u r n A d j u s t m e n t T i m e C u r 	 	 :   f l o a t ;  
 	 p r i v a t e   v a r   t u r n A d j u s t m e n t T i m e M a x 	 	 :   f l o a t ; 	 	 d e f a u l t 	 t u r n A d j u s t m e n t T i m e M a x 	 	 =   0 . 3 f ;  
 	  
 	  
 	 p r i v a t e   v a r   i n p u t L a s t M o d u l e 	 	 	 	 :   f l o a t ;  
 	 p r i v a t e 	 v a r   i n p u t S p e e d L a s t 	 	 	 	 :   f l o a t ;  
 	 p r i v a t e 	 v a r   i n p u t S p e e d T o S t a r t R u n 	 	 :   f l o a t ; 	 	 d e f a u l t 	 i n p u t S p e e d T o S t a r t R u n 	 	 =   3 0 . 0 f ;  
 	 p r i v a t e 	 v a r   i n p u t S p e e d T o S t a r t R u n H i F P S 	 :   f l o a t ; 	 	 d e f a u l t 	 i n p u t S p e e d T o S t a r t R u n H i F P S 	 =   2 2 . 0 f ;  
 	  
 	  
 	  
 	 p r i v a t e   v a r   c a m e r a R e q u e s t B y D o o r 	 	 	 :   b o o l ; 	  
 	  
 	  
 	  
 	 p r i v a t e 	 v a r 	 d o o r P o i n t 	 	 	 	 	 :   V e c t o r ;  
 	 p r i v a t e   v a r 	 a u x D i f f 	 	 	 	 	 	 :   f l o a t ;  
 	 p r i v a t e   v a r 	 d e b u g P u s h 	 	 	 	 	 :   b o o l ; 	 	 	 d e f a u l t 	 d e b u g P u s h 	 	 	 	 	 =   f a l s e ;  
 	 p r i v a t e   v a r 	 d e b u g i n g S p e e d 	 	 	 	 :   b o o l ; 	 	 	 d e f a u l t 	 d e b u g i n g S p e e d 	 	 	 	 =   f a l s e ;  
 	  
 	  
 	 p u b l i c   v a r   d i s a l l o w R o t W h e n G o i n g T o S l e e p 	 :   b o o l ; 	 	 	 d e f a u l t   d i s a l l o w R o t W h e n G o i n g T o S l e e p   =   f a l s e ;  
 	  
 	  
 	 p u b l i c   f u n c t i o n   I n i t i a l i z e (   e x p l o r a t i o n M a n a g e r   :   C E x p l o r a t i o n S t a t e M a n a g e r   )  
 	 {  
 	 	 m _ E x p l o r a t i o n O 	 	 	 	 	 	 =   e x p l o r a t i o n M a n a g e r ;  
 	 	  
 	 	  
 	 	 c o r r e c t i o n N o n e 	 	 	 	 	 	 =   n e w   N a v i g a t i o n C o r r e c t i o n   i n   t h i s ;  
 	 	 c o r r e c t i o n N o n e . c o l o r 	 	 	 	 =   C o l o r (   0 ,   0 ,   0   ) ;  
 	 	 c o r r e c t i o n N o n e . t y p e 	 	 	 	 	 =   E M C T _ N o n e ;  
 	 	 c o r r e c t i o n N o n e . c o r r e c t e d 	 	 	 =   f a l s e ;  
 	 	 c o r r e c t i o n N o n e . a n g l e 	 	 	 	 =   0 . 0 f ;  
 	 	  
 	 	 c o r r e c t i o n O n E x p l o r a t i o n 	 	 	 	 =   n e w   N a v i g a t i o n C o r r e c t i o n   i n   t h i s ;  
 	 	 c o r r e c t i o n O n E x p l o r a t i o n . c o l o r 	 	 =   C o l o r (   2 5 5 ,   5 0 ,   5 0   ) ;  
 	 	 c o r r e c t i o n O n E x p l o r a t i o n . t y p e 	 	 =   E M C T _ E x p l o r a t i o n ;  
 	 	  
 	 	 / / I m m e r s i v e M o t i o n + +  
 	 	 / / c o r r e c t i o n O n D o o r s 	 	 	 	 	 =   n e w   N a v i g a t i o n C o r r e c t i o n   i n   t h i s ;  
 	 	 / / c o r r e c t i o n O n D o o r s . c o l o r 	 	 	 	 =   C o l o r (   5 0 ,   1 5 5 ,   1 5 5   ) ;  
 	 	 / / c o r r e c t i o n O n D o o r s . t y p e 	 	 	 	 =   E M C T _ D o o r ;  
 	 	 / / I m m e r s i v e M o t i o n - -  
 	 	  
 	 	 c o r r e c t i o n O n F a l l i n g 	 	 	 	 	 =   n e w   N a v i g a t i o n C o r r e c t i o n   i n   t h i s ;  
 	 	 c o r r e c t i o n O n F a l l i n g . c o l o r 	 	 	 =   C o l o r (   1 5 5 ,   5 0 ,   1 5 5   ) ;  
 	 	 c o r r e c t i o n O n F a l l i n g . t y p e 	 	 	 =   E M C T _ F a l l ;  
 	 	  
 	 	 c o r r e c t i o n O n C o l l i s i o n 	 	 	 	 =   n e w   N a v i g a t i o n C o r r e c t i o n   i n   t h i s ;  
 	 	 c o r r e c t i o n O n C o l l i s i o n . c o l o r 	 	 	 =   C o l o r (   1 5 5 ,   1 5 5 ,   5 0   ) ;  
 	 	 c o r r e c t i o n O n C o l l i s i o n . t y p e 	 	 	 =   E M C T _ C o l l i s i o n ;  
 	 	  
 	 	 c o r r e c t i o n O n P u s h 	 	 	 	 	 =   n e w   N a v i g a t i o n C o r r e c t i o n   i n   t h i s ;  
 	 	 c o r r e c t i o n O n P u s h . c o l o r 	 	 	 	 =   C o l o r (   5 0 ,   2 5 5 ,   5 0   ) ;  
 	 	 c o r r e c t i o n O n P u s h . t y p e 	 	 	 	 =   E M C T _ P u s h ;  
 	 	  
 	 	 c o r r e c t i o n O n P h y s i c s 	 	 	 	 	 =   n e w   N a v i g a t i o n C o r r e c t i o n   i n   t h i s ;  
 	 	 c o r r e c t i o n O n P h y s i c s . c o l o r 	 	 	 =   C o l o r (   5 0 ,   2 5 5 ,   5 0   ) ;  
 	 	 c o r r e c t i o n O n P h y s i c s . t y p e 	 	 	 =   E M C T _ P h y s i c s ;  
 	 	  
 	 	 c o r r e c t i o n O n N a v M e s h 	 	 	 	 	 =   n e w   N a v i g a t i o n C o r r e c t i o n   i n   t h i s ;  
 	 	 c o r r e c t i o n O n N a v M e s h . c o l o r 	 	 	 =   C o l o r (   5 0 ,   5 0 ,   2 5 5   ) ;  
 	 	 c o r r e c t i o n O n N a v M e s h . t y p e 	 	 	 =   E M C T _ N a v M e s h ;  
 	 	  
 	 	  
 	 	 m _ E x p l o r a t i o n O . m _ O w n e r E . A d d A n i m E v e n t C a l l b a c k (   a n i m E v e n t B l o c k T u r n A d j u s t ,   ' O n A n i m E v e n t _ S u b s t a t e M a n a g e r '   ) ;  
 	 	  
 	 	 t u r n A d j u s t B l o c k e d 	 	 	 	 	 =   f a l s e ;  
 	 	 t u r n A d j u s t m e n t T i m e C u r 	 	 	 	 =   0 . 0 f ;  
 	 }  
 	  
 	  
 	 f u n c t i o n   O n A n i m E v e n t (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i f (   a n i m E v e n t N a m e   = =   a n i m E v e n t B l o c k T u r n A d j u s t   )  
 	 	 {  
 	 	 	 t u r n A d j u s t B l o c k e d   =   t r u e ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   P r e U p d a t e (   _ D t   :   f l o a t   )  
 	 { 	 	  
 	 	 p u s h S l o w i n g T i m e C u r 	 - =   _ D t ;  
 	 	 p u s h C o o l d o w n C u r 	 	 - =   _ D t ;  
 	 	  
 	 	 U p d a t e T u r n A d j u s t m e n t (   _ D t   ) ;  
 	 	  
 	 	 U p d a t e S t a r t R u n (   _ D t   ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   P o s t U p d a t e (   _ D t   :   f l o a t   )  
 	 {    
 	 	 t u r n A d j u s t B l o c k e d 	 =   f a l s e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   C o r r e c t D i r e c t i o n T o A v o i d (   d i r e c t i o n   :   V e c t o r ,   o u t   n e w D i r e c t i o n   :   V e c t o r ,   a n y I n p u t   :   b o o l   )   :   b o o l  
 	 { 	 	  
 	 	 U p d a t e P l a y e r D a t a ( ) ;  
 	 	  
 	 	  
 	 	 U p d a t e C o r r e c t i o n s (   d i r e c t i o n ,   a n y I n p u t   ) ;    
 	 	  
 	 	  
 	 	 F i n d B e s t C o r r e c t i o n ( ) ; 	 	  
 	 	  
 	 	  
 	 	 i f (   c o r r e c t i o n A c c e p t e d . t y p e   ! =   E M C T _ N o n e   )  
 	 	 {  
 	 	 	 n e w D i r e c t i o n 	 =   c o r r e c t i o n A c c e p t e d . d i r e c t i o n ;  
 	 	 	  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   M o d i f y S p e e d R e q u i r e d (   o u t   s p e e d   :   f l o a t   )   :   b o o l  
 	 { 	  
 	 	 i f (   c o r r e c t i o n A c c e p t e d . t y p e   = =   E M C T _ P u s h   )  
 	 	 {  
 	 	 	 i f (   p u s h S l o w i n g T i m e C u r   >   0 . 0 f   )  
 	 	 	 {  
 	 	 	 	 s p e e d 	 =   0 . 0 f ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 s p e e d 	 =   1 . 0 f ;  
 	 	 	 }  
 	 	 	  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 e l s e   i f (   c o l l i s i o n S t o p p e d   )  
 	 	 {  
 	 	 	 i f   (   m _ E x p l o r a t i o n O . G e t S t a t e C u r ( )   = =   ' S w i m '   )  
 	 	 	 	 s p e e d 	 =   M i n F (   s p e e d ,   0 . 2 1 f   ) ;  
 	 	 	 e l s e  
 	 	 	 	 s p e e d 	 =   M i n F (   s p e e d ,   0 . 1 f   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   I s D o o r R e q u e s t i n g C a m e r a ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   c a m e r a R e q u e s t B y D o o r ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e P l a y e r D a t a ( )  
 	 {  
 	 	 i f (   t h e P l a y e r . G e t I s R u n n i n g ( )   | |   t h e P l a y e r . G e t I s S p r i n t i n g ( )   )  
 	 	 {  
 	 	 	 c h e c k i n g F o r R u n 	 =   t r u e ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 c h e c k i n g F o r R u n 	 =   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f (   m _ E x p l o r a t i o n O . G e t S t a t e C u r ( )   = =   ' C o m b a t E x p l o r a t i o n '   )  
 	 	 {  
 	 	 	 c h e c k i n g F o r C o m b a t 	 =   t r u e ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 c h e c k i n g F o r C o m b a t 	 =   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f (   m _ E x p l o r a t i o n O . m _ I n p u t O . I s M o d u l e C o n s i d e r a b l e ( )   )  
 	 	 {  
 	 	 	  
 	 	 	 i n p u t D i f e r e n c e 	 =   m _ E x p l o r a t i o n O . m _ I n p u t O . G e t H e a d i n g O n P a d F ( ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i n p u t D i f e r e n c e 	 =   0 . 0 f ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   S t a r t T u r n A d j u s t m e n t (   )  
 	 {  
 	 	 i f (   t u r n A d j u s t m e n t E n a b l e d   )  
 	 	 { 	 	  
 	 	 	 t u r n A d j u s t m e n t T i m e C u r 	 =   t u r n A d j u s t m e n t T i m e M a x ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   C a n c e l T u r n A d j u s t m e n t ( )  
 	 {  
 	 	 t u r n A d j u s t m e n t T i m e C u r 	 =   0 . 0 f ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e T u r n A d j u s t m e n t (   _ D t   :   f l o a t   )  
 	 {  
 	 	 v a r 	 a d j u s t T i m e 	 	 :   f l o a t ;  
 	 	 v a r   p l a y e r A c t i o n E v e n t L i s t e n e r s   :   a r r a y < C G a m e p l a y E n t i t y > ;  
 	 	 v a r   v e l   :   f l o a t ;  
 	 	 v a r   p l a y e r   :   C R 4 P l a y e r ;  
 	 	  
 	 	 i f   (   ! t h e G a m e . I s U b e r M o v e m e n t E n a b l e d ( )   | |   d i s a l l o w R o t W h e n G o i n g T o S l e e p   )  
 	 	 	 t u r n A d j u s t B l o c k e d   =   t r u e ;  
 	 	 e l s e   i f   (   A b s F (   A n g l e D i s t a n c e (   t h e P l a y e r . r a w P l a y e r H e a d i n g ,   t h e P l a y e r . G e t H e a d i n g ( )   )   )   > =   1 4 4 . f   )  
 	 	 	 t u r n A d j u s t B l o c k e d   =   t r u e ;  
 	 	 e l s e   i f   (   t h e P l a y e r . I s I n C o m b a t A c t i o n ( )   )  
 	 	 	 t u r n A d j u s t B l o c k e d   =   t r u e ; 	  
 	 	  
 	 	  
 	 	 e l s e   i f   (   V e c L e n g t h (   m _ E x p l o r a t i o n O . m _ O w n e r M A C . G e t V e l o c i t y ( )   )   < =   0 . f   )  
 	 	 	 t u r n A d j u s t B l o c k e d   =   t r u e ;  
 	 	  
 	 	 	  
 	 	 i f (   t u r n A d j u s t m e n t T i m e C u r   >   0 . 0 f   & &   t h e P l a y e r . I s A l i v e ( )   )  
 	 	 {  
 	 	 	 m _ E x p l o r a t i o n O . m _ M o v e r O . U p d a t e O r i e n t T o I n p u t (   3 . 0 f ,   _ D t   ) ;  
 	 	 	 t u r n A d j u s t m e n t T i m e C u r 	 - =   _ D t ;  
 	 	 }  
 	 	 e l s e  
 	 	 { 	 	  
 	 	 	 i f (   ! t u r n A d j u s t B l o c k e d   )  
 	 	 	 {  
 	 	 	 	 a d j u s t T i m e 	 =   m _ E x p l o r a t i o n O . G e t T u r n A d j u s t m e n t T i m e ( ) ;  
 	 	 	 	 i f (   a d j u s t T i m e   >   0 . 0 f   )  
 	 	 	 	 {  
 	 	 	 	 	 m _ E x p l o r a t i o n O . m _ M o v e r O . U p d a t e O r i e n t T o I n p u t (   2 . 5 f ,   _ D t   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   t h e P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ N o r m a l   )  
 	 	 	 	 {  
 	 	 	 	 	 p l a y e r   =   t h e P l a y e r ;  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   p l a y e r . r a n g e d W e a p o n   & &   p l a y e r . r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '   )  
 	 	 	 	 	 	 m _ E x p l o r a t i o n O . m _ M o v e r O . U p d a t e O r i e n t T o I n p u t (   2 . 5 f ,   _ D t   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 } 	 	  
 	 }    
 	 p r i v a t e   f u n c t i o n   U p d a t e S t a r t R u n (   _ D t   :   f l o a t   )  
 	 { 	  
 	 	 v a r   i n p u t M o d u l e 	 	 :   f l o a t ;  
 	 	 v a r   i n p u t S p e e d 	 	 :   f l o a t ;  
 	 	 v a r 	 i s I n p u t F a s t 	 	 :   b o o l ;  
 	 	 v a r 	 i s R u n A l l o w e d 	 :   b o o l ;  
 	 	 v a r   s p e e d R e q u i r e d 	 :   f l o a t ;  
 	 	  
 	 	 i n p u t M o d u l e 	 	 =   m _ E x p l o r a t i o n O . m _ I n p u t O . G e t M o d u l e F ( ) ;  
 	 	 i n p u t S p e e d 	 	 =   A b s F (   i n p u t L a s t M o d u l e   -   i n p u t M o d u l e   )   /   _ D t ;  
 	 	  
 	 	  
 	 	 i f (   _ D t   <   0 . 0 1 5 3 8 4 6 f   )    
 	 	 {  
 	 	 	 s p e e d R e q u i r e d 	 =   i n p u t S p e e d T o S t a r t R u n H i F P S ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 s p e e d R e q u i r e d 	 =   i n p u t S p e e d T o S t a r t R u n ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 i s I n p u t F a s t 	 	 =   i n p u t S p e e d   >   s p e e d R e q u i r e d   | |   i n p u t S p e e d L a s t   >   s p e e d R e q u i r e d ;  
 	 	  
 	 	 i s I n p u t F a s t 	 	 =   i s I n p u t F a s t   & &   i n p u t M o d u l e   >   0 . 0 f   & &   i n p u t M o d u l e   > =   i n p u t L a s t M o d u l e ;  
 	 	  
 	 	 i s I n p u t F a s t 	 	 =   i s I n p u t F a s t   | |   i n p u t M o d u l e   > =   0 . 8 f ;  
 	 	  
 	 	 i s R u n A l l o w e d 	 =   t h e P l a y e r . I s A c t i o n A l l o w e d (   E I A B _ R u n A n d S p r i n t   )   & &   t h e P l a y e r . I s A c t i o n A l l o w e d (   E I A B _ S p r i n t   )   & &   ! t h e P l a y e r . G e t I s W a l k T o g g l e d ( ) ;  
 	 	 i f (   i s I n p u t F a s t   & &   i s R u n A l l o w e d   & &   t h e G a m e . I s U b e r M o v e m e n t E n a b l e d ( )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i n p u t F o r c e R u n ' ,   0 . 0 f   ) ;   / / I m m e r s i v e   M o t i o n  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i n p u t F o r c e R u n ' ,   0 . 0 f   ) ;  
 	 	 }  
 	 	 i n p u t L a s t M o d u l e 	 	 =   m _ E x p l o r a t i o n O . m _ I n p u t O . G e t M o d u l e F ( ) ;  
 	 	 i f (   t h e P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' i n p u t D i r e c t i o n I s N o t R e a d y '   )   )  
 	 	 {  
 	 	 	 i n p u t S p e e d L a s t 	 =   M a x F (   i n p u t S p e e d L a s t ,   i n p u t S p e e d   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i n p u t S p e e d L a s t 	 =   i n p u t S p e e d ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e C o r r e c t i o n s (   d i r e c t i o n   :   V e c t o r ,   a n y I n p u t   :   b o o l   )  
 	 {  
 	 	  
 	 	 c o r r e c t i o n O n C o l l i s i o n . c o r r e c t e d 	 	 =   f a l s e ;  
 	 	 c o r r e c t i o n O n F a l l i n g . c o r r e c t e d 	 	 =   f a l s e ;  
 	 	 c o r r e c t i o n O n P h y s i c s . c o r r e c t e d 	 	 =   f a l s e ;  
 	 	 c o r r e c t i o n O n P u s h . c o r r e c t e d 	 	 	 =   f a l s e ;  
 	 	 c o r r e c t i o n O n E x p l o r a t i o n . c o r r e c t e d 	 =   f a l s e ;  
 	 	 c o r r e c t i o n O n N a v M e s h . c o r r e c t e d 	 	 =   f a l s e ;  
 	 	 c o r r e c t i o n O n D o o r s . c o r r e c t e d 	 	 	 =   f a l s e ;  
 	 	 c a m e r a R e q u e s t B y D o o r 	 	 	 	 	 =   f a l s e ;  
 	 	 c o l l i s i o n S t o p p e d 	 	 	 	 	 =   f a l s e ;  
 	 	  
 	 	  
 	 	  
 	 	 i f (   e n a b l e P u s h C o m b a t   & &   c h e c k i n g F o r C o m b a t   & &   (   a n y I n p u t   | |   e n a b l e P u s h W h i l e M o v i n g   )   )  
 	 	 {  
 	 	 	 C o r r e c t D i r e c t i o n O n P u s h (   d i r e c t i o n ,   c o r r e c t i o n O n P u s h   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   ! a n y I n p u t   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   (   ! c h e c k i n g F o r R u n   & &   e n a b l e C o l l i s i o n W a l k i n g   )   | |   (   c h e c k i n g F o r R u n   & &   e n a b l e C o l l i s i o n R u n n i n g   )   )  
 	 	 {  
 	 	 	 C o r r e c t D i r e c t i o n O n C o l l i s i o n (   d i r e c t i o n ,   c o r r e c t i o n O n C o l l i s i o n   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   (   ! c h e c k i n g F o r R u n   & &   e n a b l e P h y s i c s W a l k i n g   )   | |   (   c h e c k i n g F o r R u n   & &   e n a b l e P h y s i c s R u n n i n g   )   )  
 	 	 {  
 	 	 	 C o r r e c t D i r e c t i o n O n P h y s y c s (   d i r e c t i o n ,   c o r r e c t i o n O n P h y s i c s   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   (   ! c h e c k i n g F o r R u n   & &   e n a b l e N a v M e s h W a l k i n g   )   | |   (   c h e c k i n g F o r R u n   & &   e n a b l e N a v M e s h R u n n i n g   )   )  
 	 	 {  
 	 	 	 C o r r e c t D i r e c t i o n O n N a v m e s h (   d i r e c t i o n ,   c o r r e c t i o n O n N a v M e s h   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   (   ! c h e c k i n g F o r R u n   & &   e n a b l e E x p l o r a t i o n W a l k i n g   )   | |   (   c h e c k i n g F o r R u n   & &   e n a b l e E x p l o r a t i o n R u n n i n g   )   )  
 	 	 {  
 	 	 	 C o r r e c t D i r e c t i o n O n E x p l o r a t i o n (   d i r e c t i o n ,   c o r r e c t i o n O n E x p l o r a t i o n   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   (   ! c h e c k i n g F o r R u n   & &   e n a b l e D o o r s W a l k i n g   )   | |   (   c h e c k i n g F o r R u n   & &   e n a b l e D o o r s R u n n i n g   )   )  
 	 	 {  
 	 	 	 C o r r e c t D i r e c t i o n O n D o o r s (   d i r e c t i o n ,   c o r r e c t i o n O n D o o r s   ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   F i n d B e s t C o r r e c t i o n ( )  
 	 {  
 	 	  
 	 	 i f (   c o r r e c t i o n O n C o l l i s i o n . c o r r e c t e d   )  
 	 	 {  
 	 	 	 c o r r e c t i o n A c c e p t e d 	 =   c o r r e c t i o n O n C o l l i s i o n ;  
 	 	 	  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   c o r r e c t i o n O n P u s h . c o r r e c t e d   )  
 	 	 {  
 	 	 	 c o r r e c t i o n A c c e p t e d 	 =   c o r r e c t i o n O n P u s h ;  
 	 	 	  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   c o r r e c t i o n O n F a l l i n g . c o r r e c t e d   )  
 	 	 {  
 	 	 	 c o r r e c t i o n A c c e p t e d 	 =   c o r r e c t i o n O n F a l l i n g ;  
 	 	 	  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   c o r r e c t i o n O n D o o r s . c o r r e c t e d   )  
 	 	 {  
 	 	 	 c o r r e c t i o n A c c e p t e d 	 =   c o r r e c t i o n O n D o o r s ;  
 	 	 	  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   c o r r e c t i o n O n P h y s i c s . c o r r e c t e d   )  
 	 	 {  
 	 	 	 i f (   c o r r e c t i o n O n N a v M e s h . c o r r e c t e d   & &   A b s F (   c o r r e c t i o n O n N a v M e s h . a n g l e   )   >   A b s F (   c o r r e c t i o n O n P h y s i c s . a n g l e   )   )  
 	 	 	 {  
 	 	 	 	 c o r r e c t i o n A c c e p t e d 	 =   c o r r e c t i o n O n N a v M e s h ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 c o r r e c t i o n A c c e p t e d 	 =   c o r r e c t i o n O n P h y s i c s ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f (   c o r r e c t i o n O n N a v M e s h . c o r r e c t e d   )  
 	 	 {  
 	 	 	 c o r r e c t i o n A c c e p t e d 	 =   c o r r e c t i o n O n N a v M e s h ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   c o r r e c t i o n O n E x p l o r a t i o n . c o r r e c t e d   )  
 	 	 {  
 	 	 	 i f (   (   ! c o r r e c t i o n O n P h y s i c s . c o r r e c t e d   & &   ! c o r r e c t i o n O n N a v M e s h . c o r r e c t e d   )   | |   A b s F (   c o r r e c t i o n O n E x p l o r a t i o n . a n g l e   )   <   A b s F (   c o r r e c t i o n A c c e p t e d . a n g l e   )   )  
 	 	 	 {  
 	 	 	 	 c o r r e c t i o n A c c e p t e d 	 =   c o r r e c t i o n O n E x p l o r a t i o n ;  
 	 	 	 }  
 	 	 } 	  
 	 	  
 	 	  
 	 	 e l s e   i f (   ! c o r r e c t i o n O n P h y s i c s . c o r r e c t e d   & &   ! c o r r e c t i o n O n N a v M e s h . c o r r e c t e d   )  
 	 	 {  
 	 	 	 c o r r e c t i o n A c c e p t e d 	 =   c o r r e c t i o n N o n e ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   C o r r e c t D i r e c t i o n O n D o o r s (   d i r e c t i o n   :   V e c t o r ,   o u t   c o r r e c t i o n   :   N a v i g a t i o n C o r r e c t i o n   )  
 	 {  
 	 	 v a r   e n t i t i e s 	 	 :   a r r a y < C G a m e p l a y E n t i t y > ;  
 	 	 v a r   m a x A n g l e 	 	 :   f l o a t ;  
 	 	 v a r   m a x D i s t 	 	 	 :   f l o a t ;  
 	 	 v a r   m a x A n g l e D o t 	 	 :   f l o a t ;  
 	 	 v a r   d o o r M a r k 	 	 :   C D o o r M a r k i n g ;  
 	 	 v a r   p l a y e r P o s 	 	 :   V e c t o r ;  
 	 	 v a r   n o r m a l 	 	 	 :   V e c t o r ;  
 	 	 v a r   p o i n t 	 	 	 :   V e c t o r ;  
 	 	 v a r   c o r r e c t e d D i r 	 :   V e c t o r ;  
 	 	 v a r   f o u n d D o o r s 	 	 :   i n t ;  
 	 	 v a r   i 	 	 	 	 :   i n t ;  
 	 	 v a r 	 d i s t a n c e 	 	 :   f l o a t ;  
 	 	  
 	 	  
 	 	  
 	 	 i f (   c h e c k i n g F o r R u n   )  
 	 	 {  
 	 	 	 m a x A n g l e 	 =   m a x D o o r A n g l e R u n ;  
 	 	 	 m a x D i s t 	 	 =   m a x D o o r D i s t a n c e R u n ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 m a x A n g l e 	 =   m a x D o o r A n g l e W a l k ;  
 	 	 	 m a x D i s t 	 	 =   m a x D o o r D i s t a n c e W a l k ;  
 	 	 } 	 	  
 	 	 p l a y e r P o s 	 =   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d P o s i t i o n ( ) ;  
 	 	  
 	 	  
 	 	 F i n d G a m e p l a y E n t i t i e s I n C o n e (   e n t i t i e s ,   p l a y e r P o s   -   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d F o r w a r d ( )   *   m a x D o o r B a c k ,   V e c H e a d i n g (   d i r e c t i o n   ) ,   m a x D o o r A n g l e G a t h e r ,   m a x D i s t   +   m a x D o o r B a c k ,   1 0 0 ,   ' n a v i g a t i o n _ c o r r e c t i o n '   ) ;  
 	 	 f o u n d D o o r s 	 =   e n t i t i e s . S i z e ( ) ;  
 	 	  
 	 	 i f (   f o u n d D o o r s   < =   0   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 m a x A n g l e D o t 	 =   C o s F (   D e g 2 R a d (   m a x A n g l e   )   ) ;  
 	 	  
 	 	  
 	 	 f o r (   i   =   0 ;   i   <   f o u n d D o o r s ;   i   + =   1   )  
 	 	 {  
 	 	 	 d o o r M a r k 	 	 =   (   C D o o r M a r k i n g   )   e n t i t i e s [ i ] . G e t C o m p o n e n t B y C l a s s N a m e (   ' C D o o r M a r k i n g '   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f (   ! d o o r M a r k   )  
 	 	 	 {  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 d o o r M a r k . S e t C h e c k S t a t e (   E D M C T _ C o n s i d e r e d   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 d o o r M a r k . G e t C l o s e s t P o i n t A n d N o r m a l (   p o i n t ,   n o r m a l   ) ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 i f (   p o i n t . Z   <   p l a y e r P o s . Z   -   m a x D o o r H e i g h t   | |   p o i n t . Z   >   p l a y e r P o s . Z   +   m a x D o o r H e i g h t   )  
 	 	 	 {  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 i f (   A b s F (   V e c D o t (   n o r m a l ,   d i r e c t i o n   )   )   <   m a x A n g l e D o t   )  
 	 	 	 {  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 c o r r e c t e d D i r 	 =   p o i n t   -   p l a y e r P o s ;  
 	 	 	 i f (   V e c D o t (   c o r r e c t e d D i r ,   d i r e c t i o n   )   <   0 . 0 f   )  
 	 	 	 {  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	  
 	 	 	 d i s t a n c e 	 =   V e c L e n g t h (   c o r r e c t e d D i r   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f (   d i s t a n c e   <   0 . 5 f   )  
 	 	 	 {  
 	 	 	 	 i f (   V e c D o t (   n o r m a l ,   d i r e c t i o n   )   >   0 . 0 f   )  
 	 	 	 	 {  
 	 	 	 	 	 n o r m a l 	 =   - n o r m a l ;  
 	 	 	 	 }  
 	 	 	 	 p o i n t 	 - =   n o r m a l   *   0 . 5 f ;  
 	 	 	 	  
 	 	 	 	 c o r r e c t e d D i r 	 =   V e c N o r m a l i z e (   p o i n t   -   p l a y e r P o s   ) ;  
 	 	 	 } 	 	 	  
 	 	 	 e l s e   i f (   d i s t a n c e   >   1 . 0 f   )  
 	 	 	 {  
 	 	 	 	 i f (   V e c D o t (   n o r m a l ,   d i r e c t i o n   )   >   0 . 0 f   )  
 	 	 	 	 {  
 	 	 	 	 	 n o r m a l 	 =   - n o r m a l ;  
 	 	 	 	 }  
 	 	 	 	 p o i n t 	 + =   n o r m a l   *   0 . 5 f ;  
 	 	 	 	  
 	 	 	 	 c o r r e c t e d D i r 	 =   V e c N o r m a l i z e (   p o i n t   -   p l a y e r P o s   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 c o r r e c t e d D i r 	 / =   d i s t a n c e ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 c o r r e c t i o n . S e t (   t r u e ,   d i r e c t i o n ,   c o r r e c t e d D i r   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 c a m e r a R e q u e s t B y D o o r 	 =   d o o r M a r k . I s C h a n g i n g C a m e r a ( ) ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 d o o r P o i n t 	 =   p o i n t ;  
 	 	 	 d o o r M a r k . S e t C h e c k S t a t e (   E D M C T _ S e l e c t e d   ) ;  
 	 	 	 b r e a k ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   C o r r e c t D i r e c t i o n O n C o l l i s i o n (   d i r e c t i o n   :   V e c t o r ,   o u t   c o r r e c t i o n   :   N a v i g a t i o n C o r r e c t i o n   )  
 	 {  
 	 	 v a r   c o r r e c t e d D i r 	 	 :   V e c t o r ;  
 	 	 v a r   m i n 	 	 	 	 	 :   f l o a t ;  
 	 	 v a r   m a x 	 	 	 	 	 :   f l o a t ;  
 	 	 v a r   d e s i r e d A n g l e 	 	 :   f l o a t ;  
 	 	 v a r   a n g l e D i s t 	 	 	 :   f l o a t ;  
 	 	 v a r   c l o s e s t C o r r e c t i o n 	 :   f l o a t ;  
 	 	  
 	 	  
 	 	 i f (   ! m _ E x p l o r a t i o n O . m _ C o l l i s i o n M a n a g e r O . I s C o l l i d i n g W i t h S t a t i c s ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   ! m _ E x p l o r a t i o n O . m _ C o l l i s i o n M a n a g e r O . G e t A n g l e B l o c k e d B y S t a t i c s (   m i n ,   m a x ,   9 0 . 0 f   )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 d e s i r e d A n g l e 	 	 	 =   V e c H e a d i n g (   d i r e c t i o n   ) ; 	 	  
 	 	 i f (   A b s F (   A n g l e D i s t a n c e (   d e s i r e d A n g l e ,   m i n   )   )   <   A b s F (   A n g l e D i s t a n c e (   d e s i r e d A n g l e ,   m a x   )   )   )  
 	 	 {  
 	 	 	 c l o s e s t C o r r e c t i o n 	 =   m i n ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 c l o s e s t C o r r e c t i o n 	 =   m a x ;  
 	 	 }  
 	 	  
 	 	  
 	 	 a n g l e D i s t 	 	 	 	 =   A b s F (   A n g l e D i s t a n c e (   c l o s e s t C o r r e c t i o n ,   d e s i r e d A n g l e   )   ) ;  
 	 	 L o g E x p l o r a t i o n C o r r e c t i o n (   " C o l l i s i o n   a n g l e D i s t :   "   +   a n g l e D i s t   ) ;  
 	 	  
 	 	 i f (   a n g l e D i s t   >   4 5 . 0 f   )  
 	 	 {  
 	 	 	 c o r r e c t e d D i r 	 	 =   d i r e c t i o n ;  
 	 	 	 c o l l i s i o n S t o p p e d 	 =   t r u e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 e l s e   i f (   a n g l e D i s t   <   7 5 . 0 f   )  
 	 	 {  
 	 	 	 c o r r e c t e d D i r 	 	 =   V e c F r o m H e a d i n g (   c l o s e s t C o r r e c t i o n   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 c o r r e c t i o n . S e t (   t r u e ,   d i r e c t i o n ,   c o r r e c t e d D i r   ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   L o g E x p l o r a t i o n C o r r e c t i o n (   t e x t   :   s t r i n g   )  
 	 {  
 	 	 L o g C h a n n e l (   ' E x p l o r a t i o n C o r r e c t i o n ' ,   t e x t   ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   I s T u r n A d j u s t e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   t u r n A d j u s t m e n t T i m e C u r   >   0 . 0 f ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   C o r r e c t D i r e c t i o n O n P u s h (   d i r e c t i o n   :   V e c t o r ,   o u t   c o r r e c t i o n   :   N a v i g a t i o n C o r r e c t i o n   )  
 	 {  
 	 	 v a r   p u s h i n g 	 	 	 :   b o o l ;  
 	 	 v a r   s l o w i n g 	 	 	 :   b o o l ;  
 	 	 v a r   b a c k 	 	 	 :   b o o l ;  
 	 	 v a r   p u s h C o r r e c t D i r 	 :   V e c t o r ;  
 	 	  
 	 	  
 	 	 i f (   ! C a n B e P u s h e d ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 F i n d C u r r e n t P u s h D a t a (   p u s h C o r r e c t D i r ,   s l o w i n g ,   p u s h i n g ,   b a c k   ) ;  
 	 	  
 	 	  
 	 	 i f (   s l o w i n g   )  
 	 	 {  
 	 	 	 p u s h S l o w i n g T i m e C u r 	 =   p u s h S l o w i n g T i m e C o o l d o w n ;  
 	 	 } 	 	 	  
 	 	  
 	 	  
 	 	 i f (   b a c k   )  
 	 	 {  
 	 	 	 p u s h D i r e c t i o n 	 	 =   p u s h C o r r e c t D i r ;  
 	 	 	 p u s h C o o l d o w n C u r 	 	 =   p u s h C o o l d o w n T o t a l ;  
 	 	 }  
 	 	 e l s e   i f (   p u s h i n g   )  
 	 	 {  
 	 	 	 p u s h D i r e c t i o n 	 	 =   p u s h C o r r e c t D i r ;  
 	 	 	 p u s h C o o l d o w n C u r 	 	 =   0 . 0 f ;  
 	 	 } 	  
 	 	  
 	 	  
 	 	 i f (   p u s h C o o l d o w n C u r   > =   0 . 0 f   )  
 	 	 {  
 	 	 	 c o r r e c t i o n . S e t (   t r u e ,   d i r e c t i o n ,   p u s h D i r e c t i o n   ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   C a n B e P u s h e d ( )   :   b o o l  
 	 {  
 	 	 i f   (   t h e P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ A l e r t N e a r   & &    
 	 	 	 (   t h e P l a y e r . p l a y e r M o v e T y p e   = =   P M T _ I d l e   | |   t h e P l a y e r . p l a y e r M o v e T y p e   = =   P M T _ W a l k   )   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e  
 	 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   F i n d C u r r e n t P u s h D a t a (   o u t   p u s h D i r e c t i o n   :   V e c t o r ,   o u t   s l o w i n g   :   b o o l ,   o u t   p u s h i n g   :   b o o l ,   o u t   p u s h B a c k   :   b o o l   )  
 	 {  
 	 	 v a r   p u d h D i r 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   p u s h A n g l e 	 	 	 :   f l o a t ;  
 	 	 v a r   d i f f A n g l e 	 	 	 :   f l o a t ;  
 	 	 v a r   p u s h S t r e n g t h 	 	 :   f l o a t ;  
 	 	 v a r   o t h e r P u s h S t r e n g t h 	 :   f l o a t ;  
 	 	 v a r   o t h e r P u s h D i r 	 	 :   V e c t o r ;  
 	 	  
 	 	  
 	 	 s l o w i n g   	 =   f a l s e ;  
 	 	 p u s h i n g 	 	 =   f a l s e ;  
 	 	 p u s h B a c k 	 =   f a l s e ;  
 	 	  
 	 	  
 	 	  
 	 	 m _ E x p l o r a t i o n O . m _ C o l l i s i o n M a n a g e r O . G e t P u s h D a t a (   p u s h S t r e n g t h ,   p u d h D i r ,   o t h e r P u s h S t r e n g t h ,   o t h e r P u s h D i r   ) ;  
 	 	  
 	 	  
 	 	 i f (   p u s h S t r e n g t h   < =   - 1 . 0 f   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   ! m _ E x p l o r a t i o n O . m _ I n p u t O . I s M o d u l e C o n s i d e r a b l e ( )   )  
 	 	 {  
 	 	 	 p u s h D i r e c t i o n 	 =   p u d h D i r ;  
 	 	 	 p u s h i n g 	 	 	 =   t r u e ;  
 	 	 	 p u s h B a c k 	 	 =   V e c D o t (   p u d h D i r ,   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d F o r w a r d ( )   )   <   - 0 . 5 f ;  
 	 	 }  
 	 	  
 	 	  
 	 	 e l s e  
 	 	 {  
 	 	 	  
 	 	 	 p u s h A n g l e 	 =   A n g l e N o r m a l i z e 1 8 0 (   V e c H e a d i n g (   - p u d h D i r   )   ) ;  
 	 	 	 d i f f A n g l e 	 =   A n g l e N o r m a l i z e 1 8 0 (   m _ E x p l o r a t i o n O . m _ I n p u t O . G e t H e a d i n g D i f f F r o m Y a w F (   p u s h A n g l e   )   ) ;    
 	 	 	 a u x D i f f 	 	 =   d i f f A n g l e ;  
 	 	 	  
 	 	 	  
 	 	 	 i f (   A b s F (   d i f f A n g l e   )   <   m a x P u s h A n g l e S l o w   )  
 	 	 	 {  
 	 	 	 	 p u s h i n g 	 	 	 =   o t h e r P u s h S t r e n g t h   >   0 . 0 f ;  
 	 	 	 	 s l o w i n g 	 	 	 =   ! p u s h i n g ;  
 	 	 	 	 p u s h D i r e c t i o n 	 =   p u d h D i r ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 p u s h B a c k 	 	 =   t r u e ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f (   A b s F (   d i f f A n g l e   )   <   m a x P u s h A n g l e T u r n   )  
 	 	 	 {  
 	 	 	 	 p u s h i n g 	 =   t r u e ;  
 	 	 	 	 i f (   d i f f A n g l e   >   0 . 0 f   )  
 	 	 	 	 {  
 	 	 	 	 	 p u s h D i r e c t i o n 	 =   V e c F r o m H e a d i n g (   m _ E x p l o r a t i o n O . m _ I n p u t O . G e t H e a d i n g O n P l a n e F ( )   +   m a x P u s h A n g l e T u r n   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 p u s h D i r e c t i o n 	 =   V e c F r o m H e a d i n g (   m _ E x p l o r a t i o n O . m _ I n p u t O . G e t H e a d i n g O n P l a n e F ( )   -   m a x P u s h A n g l e T u r n   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   C o r r e c t D i r e c t i o n O n P u s h 2 (   d i r e c t i o n   :   V e c t o r ,   o u t   c o r r e c t i o n   :   N a v i g a t i o n C o r r e c t i o n   )  
 	 {  
 	 	 v a r   p u d h D i r 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   p u s h A n g l e 	 	 	 :   f l o a t ;  
 	 	 v a r   d i f f A n g l e 	 	 	 :   f l o a t ;  
 	 	 v a r   p u s h S t r e n g t h 	 	 :   f l o a t ;  
 	 	 v a r   c o r r e c t e d D i r 	 	 :   V e c t o r ;  
 	 	 v a r   o t h e r P u s h S t r e n g t h 	 :   f l o a t ;  
 	 	 v a r   o t h e r P u s h D i r 	 	 :   V e c t o r ;  
 	 	  
 	 	  
 	 	 m _ E x p l o r a t i o n O . m _ C o l l i s i o n M a n a g e r O . G e t P u s h D a t a (   p u s h S t r e n g t h ,   p u d h D i r ,   o t h e r P u s h S t r e n g t h ,   o t h e r P u s h D i r   ) ;  
 	 	  
 	 	  
 	 	 i f (   p u s h S t r e n g t h   < =   - 1 . 0 f   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   ! m _ E x p l o r a t i o n O . m _ I n p u t O . I s M o d u l e C o n s i d e r a b l e ( )   )  
 	 	 {  
 	 	 	 d i r e c t i o n 	 	 =   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d F o r w a r d ( ) ;  
 	 	 	 c o r r e c t e d D i r 	 =   p u d h D i r ;  
 	 	 }  
 	 	  
 	 	  
 	 	 e l s e  
 	 	 {  
 	 	 	  
 	 	 	 p u s h A n g l e 	 =   A n g l e N o r m a l i z e 1 8 0 (   V e c H e a d i n g (   - p u d h D i r   )   ) ;  
 	 	 	 d i f f A n g l e 	 =   A n g l e N o r m a l i z e 1 8 0 (   m _ E x p l o r a t i o n O . m _ I n p u t O . G e t H e a d i n g D i f f F r o m Y a w F (   p u s h A n g l e   )   ) ;    
 	 	 	 a u x D i f f 	 	 =   d i f f A n g l e ;  
 	 	 	  
 	 	 	 i f (   A b s F (   d i f f A n g l e   )   <   m a x P u s h A n g l e S l o w   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 i f (   o t h e r P u s h S t r e n g t h   >   0 . 0 f   )  
 	 	 	 	 {  
 	 	 	 	 	 c o r r e c t e d D i r 	 =   p u d h D i r ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 p u s h S l o w i n g T i m e C u r 	 =   p u s h S l o w i n g T i m e C o o l d o w n ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 i f (   p u s h S t r e n g t h   < =   0 . 0 f   )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f (   A b s F (   d i f f A n g l e   )   <   m a x P u s h A n g l e T u r n   )  
 	 	 	 	 {  
 	 	 	 	 	 i f (   d i f f A n g l e   >   0 . 0 f   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 c o r r e c t e d D i r 	 =   V e c F r o m H e a d i n g (   m _ E x p l o r a t i o n O . m _ I n p u t O . G e t H e a d i n g O n P l a n e F ( )   +   m a x P u s h A n g l e T u r n   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 c o r r e c t e d D i r 	 =   V e c F r o m H e a d i n g (   m _ E x p l o r a t i o n O . m _ I n p u t O . G e t H e a d i n g O n P l a n e F ( )   -   m a x P u s h A n g l e T u r n   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f (   V e c D o t (   c o r r e c t e d D i r ,   p u d h D i r   )   <   0 . 0 f   )  
 	 	 {  
 	 	 	 p u s h S l o w i n g T i m e C u r 	 	 =   p u s h S l o w i n g T i m e C o o l d o w n ;  
 	 	 }  
 	 	  
 	 	 c o r r e c t i o n . S e t (   t r u e ,   d i r e c t i o n ,   c o r r e c t e d D i r   ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   C o r r e c t D i r e c t i o n O n P h y s y c s (   d i r e c t i o n   :   V e c t o r ,   o u t   c o r r e c t i o n   :   N a v i g a t i o n C o r r e c t i o n   )  
 	 {  
 	 	 v a r   c o r r e c t e d 	 	 :   b o o l ;  
 	 	 v a r 	 c o r r e c t e d D i r 	 :   V e c t o r ;  
 	 	 v a r   c o r n e r 	 	 	 :   b o o l ;  
 	 	 v a r   p o r t a l 	 	 	 :   b o o l ;  
 	 	 v a r   s p e e d 	 	 	 :   f l o a t ;  
 	 	 v a r   m a x A n g l e 	 	 :   f l o a t ;  
 	 	 v a r   m a x D i s t 	 	 	 :   f l o a t ;  
 	 	 v a r   s h o u l d S t o p   	 	 :   b o o l ;  
 	 	  
 	 	  
 	 	  
 	 	 i f (   c h e c k i n g F o r R u n   )  
 	 	 {  
 	 	 	 m a x A n g l e 	 =   m a x P h y s i c A n g l e R u n ;  
 	 	 	 m a x D i s t 	 	 =   m a x P h y s i c D i s t a n c e R u n ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 m a x A n g l e 	 =   m a x P h y s i c A n g l e W a l k ;  
 	 	 	 m a x D i s t 	 	 =   m a x P h y s i c D i s t a n c e W a l k ;  
 	 	 }  
 	 	  
 	 	  
 	 	 c o r r e c t e d D i r 	 =   d i r e c t i o n ; 	 	  
 	 	  
 	 	 s p e e d 	 	 	 =   m a x D i s t ;  
 	 	 c o r r e c t e d 	 	 =   m _ E x p l o r a t i o n O . m _ O w n e r M A C . A d j u s t R e q u e s t e d M o v e m e n t D i r e c t i o n P h y s i c s (   c o r r e c t e d D i r ,   s h o u l d S t o p ,   s p e e d ,   m a x A n g l e ,   m a x P h y s i c S i d e D i s t a n c e ,   c o r n e r ,   p o r t a l   ) ;  
 	 	 c o r r e c t i o n . S e t (   c o r r e c t e d ,   d i r e c t i o n ,   c o r r e c t e d D i r   ) ;  
 	 	 i f (   c o r r e c t e d   & &   A b s F (   c o r r e c t i o n . a n g l e   )   >   m a x A n g l e   )  
 	 	 {  
 	 	 	 c o r r e c t i o n . c o r r e c t e d 	 =   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f (   c o r r e c t i o n . c o r r e c t e d   & &   ! I s C o r r e c t i o n S i d e A c c e p t a b l e (   c o r r e c t i o n . d i r e c t i o n   )   )  
 	 	 {  
 	 	 	 c o r r e c t i o n . c o r r e c t e d 	 =   f a l s e ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   C o r r e c t D i r e c t i o n O n N a v m e s h (   d i r e c t i o n   :   V e c t o r ,   o u t   c o r r e c t i o n   :   N a v i g a t i o n C o r r e c t i o n   )  
 	 {  
 	 	 v a r   f o r w a r d D i r 	 	 :   V e c t o r ;  
 	 	 v a r   c o r r e c t e d D i r 	 :   V e c t o r ;  
 	 	 v a r   c o r r e c t e d 	 	 :   b o o l ;  
 	 	 v a r   m o d i f i e d A n g l e 	 :   f l o a t ;  
 	 	 v a r   m a x D i s t 	 	 	 :   f l o a t ;  
 	 	 v a r   m a x A n g l e 	 	 :   f l o a t ;  
 	 	  
 	 	  
 	 	 i f (   c h e c k i n g F o r R u n   )  
 	 	 {  
 	 	 	 m a x D i s t 	 	 =   m a x N a v m e s h D i s t a n c e R u n ;  
 	 	 	 m a x A n g l e 	 =   m a x N a v m e s h A n g l e R u n ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 m a x D i s t 	 	 =   m a x N a v m e s h D i s t a n c e W a l k ;  
 	 	 	 m a x A n g l e 	 =   m a x N a v m e s h A n g l e W a l k ;  
 	 	 }  
 	 	  
 	 	  
 	 	 c o r r e c t e d D i r 	 =     m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d F o r w a r d ( ) ;  
 	 	  
 	 	 c o r r e c t e d 	 	 =   m _ E x p l o r a t i o n O . m _ O w n e r M A C . A d j u s t R e q u e s t e d M o v e m e n t D i r e c t i o n N a v M e s h (   c o r r e c t e d D i r ,   m a x D i s t ,   m a x A n g l e ,   1 5 ,   5 ,   d i r e c t i o n ,   t r u e   ) ;  
 	 	 c o r r e c t i o n . S e t (   c o r r e c t e d ,   d i r e c t i o n ,   c o r r e c t e d D i r   ) ;  
 	 	  
 	 	 i f (   c o r r e c t i o n . c o r r e c t e d   & &   ! I s C o r r e c t i o n S i d e A c c e p t a b l e (   c o r r e c t i o n . d i r e c t i o n   )   )  
 	 	 {  
 	 	 	 c o r r e c t i o n . c o r r e c t e d 	 =   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   C o r r e c t D i r e c t i o n O n E x p l o r a t i o n (   i n p u t D i r   :   V e c t o r ,   o u t   c o r r e c t i o n   :   N a v i g a t i o n C o r r e c t i o n   )  
 	 {  
 	 	 v a r 	 d i r e c t i o n T o I n t e r a c t 	 :   V e c t o r ;  
 	 	 v a r   n e w E x p l o r a t i o n 	 	 :   S E x p l o r a t i o n Q u e r y T o k e n ;  
 	 	  
 	 	  
 	 	  
 	 	 i f (   G e t C l o s e s t E x p l o r a t i o n (   i n p u t D i r ,   n e w E x p l o r a t i o n   )   )  
 	 	 {    
 	 	 	 i f (   G e t D i r e c t i o n T o R e a c h E x p l o r a t i o n (   i n p u t D i r ,   n e w E x p l o r a t i o n ,   d i r e c t i o n T o I n t e r a c t   )   )  
 	 	 	 {  
 	 	 	 	 v a l i d E x p l o r a t i o n 	 =   n e w E x p l o r a t i o n ;  
 	 	 	 	  
 	 	 	 	 c o r r e c t i o n . S e t (   t r u e ,   i n p u t D i r ,   d i r e c t i o n T o I n t e r a c t   ) ; 	 	 	 	  
 	 	 	 	 i f (   I s C o r r e c t i o n S i d e A c c e p t a b l e (   c o r r e c t i o n . d i r e c t i o n   )   )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   G e t D i r e c t i o n T o R e a c h E x p l o r a t i o n (   i n p u t D i r ,   v a l i d E x p l o r a t i o n ,   d i r e c t i o n T o I n t e r a c t )   )  
 	 	 {  
 	 	 	 c o r r e c t i o n . S e t (   t r u e ,   i n p u t D i r ,   d i r e c t i o n T o I n t e r a c t   ) ; 	 	 	 	  
 	 	 	 i f (   I s C o r r e c t i o n S i d e A c c e p t a b l e (   c o r r e c t i o n . d i r e c t i o n   )   )  
 	 	 	 {  
 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 c o r r e c t i o n . c o r r e c t e d 	 =   f a l s e ;  
 	 	 r e t u r n ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   G e t C l o s e s t E x p l o r a t i o n (   d i r e c t i o n   :   V e c t o r ,   o u t   e x p l o r a t i o n   :   S E x p l o r a t i o n Q u e r y T o k e n   )   :   b o o l  
 	 {  
 	 	 v a r   q u e r y C o n t e x t 	 	 :   S E x p l o r a t i o n Q u e r y C o n t e x t ;  
 	 	  
 	 	  
 	 	  
 	 	 q u e r y C o n t e x t . i n p u t D i r e c t i o n I n W o r l d S p a c e 	 =   d i r e c t i o n ;  
 	 	 q u e r y C o n t e x t . m a x A n g l e T o C h e c k 	 	 	 =   5 . 0 f ; 	  
 	 	  
 	 	 q u e r y C o n t e x t . f o r J u m p i n g 	 	 	 	 	 =   f a l s e ; 	  
 	 	 q u e r y C o n t e x t . d o n t D o Z A n d D i s t C h e c k s   	 	 =   t r u e ; 	 	  
 	 	  
 	 	  
 	 	  
 	 	 i f (   m _ E x p l o r a t i o n O . m _ S h a r e d D a t a O . m _ U s e C l i m b B   )  
 	 	 {  
 	 	 	 q u e r y C o n t e x t . l a d d e r s O n l y 	 =   t r u e ;  
 	 	 }  
 	 	 e x p l o r a t i o n   =   t h e G a m e . Q u e r y E x p l o r a t i o n S y n c (   t h e P l a y e r ,   q u e r y C o n t e x t   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 r e t u r n   e x p l o r a t i o n . v a l i d ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   G e t D i r e c t i o n T o R e a c h E x p l o r a t i o n (   d i r e c t i o n   :   V e c t o r ,   e x p l o r a t i o n   :   S E x p l o r a t i o n Q u e r y T o k e n ,   o u t   d i r e c t i o n T o I n t e r a c t   :   V e c t o r   )   :   b o o l  
 	 {  
 	 	 v a r   d i s t T o E x p l o r a t i o n 	 :   f l o a t ;  
 	 	 v a r   d o t 	 	 	 	 	 :   f l o a t ;  
 	 	 v a r   d o t L i m i t 	 	 	 :   f l o a t ;  
 	 	 v a r   d i s t a n c e M a x 	 	 	 :   f l o a t ;  
 	 	 v a r   a n g l e M a x 	 	 	 :   f l o a t ;  
 	 	  
 	 	  
 	 	  
 	 	 d i r e c t i o n T o I n t e r a c t 	 =   e x p l o r a t i o n . p o i n t O n E d g e   -   t h e P l a y e r . G e t W o r l d P o s i t i o n ( ) ;  
 	 	  
 	 	  
 	 	 i f (   d i r e c t i o n T o I n t e r a c t . Z   <   - 2 . 0 f   | |   d i r e c t i o n T o I n t e r a c t . Z   >   2 . 7 5 f   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f (   c h e c k i n g F o r R u n   )  
 	 	 {  
 	 	 	 d i s t a n c e M a x 	 =   m a x E x p l o r a t i o n D i s t a n c e R u n ;  
 	 	 	 a n g l e M a x 	 =   m a x E x p l o r a t i o n A n g l e R u n ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 d i s t a n c e M a x 	 =   m a x E x p l o r a t i o n D i s t a n c e W a l k ;  
 	 	 	 a n g l e M a x 	 =   m a x E x p l o r a t i o n A n g l e W a l k ;  
 	 	 }  
 	 	  
 	 	  
 	 	 d i r e c t i o n T o I n t e r a c t . Z 	 =   0 . 0 f ;  
 	 	 d i s t T o E x p l o r a t i o n 	 	 =   V e c L e n g t h (   d i r e c t i o n T o I n t e r a c t   ) ;  
 	 	 d i r e c t i o n T o I n t e r a c t 	 	 =   d i r e c t i o n T o I n t e r a c t   /   d i s t T o E x p l o r a t i o n ;  
 	 	  
 	 	  
 	 	 d o t 	 	 =   V e c D o t (   d i r e c t i o n T o I n t e r a c t ,   d i r e c t i o n   ) ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 d o t L i m i t 	 =   C o s F (   D e g 2 R a d (   a n g l e M a x   )   ) ; 	 	  
 	 	 i f (   d o t   <   d o t L i m i t   )    
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   d o t   <   C o s F (   D e g 2 R a d (   7 5 . 0 f   )   )   )    
 	 	 {  
 	 	 	 d i r e c t i o n T o I n t e r a c t 	 	 =   e x p l o r a t i o n . p o i n t O n E d g e   +   e x p l o r a t i o n . n o r m a l   -   t h e P l a y e r . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 d i r e c t i o n T o I n t e r a c t . Z 	 =   0 . 0 f ;    
 	 	 	  
 	 	 	 d i s t T o E x p l o r a t i o n 	 	 =   V e c L e n g t h (   d i r e c t i o n T o I n t e r a c t   ) ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   d i s t T o E x p l o r a t i o n   >   d i s t a n c e M a x   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 d i r e c t i o n T o I n t e r a c t 	 	 / =   d i s t T o E x p l o r a t i o n ;  
 	 	  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   I s C o r r e c t i o n S i d e A c c e p t a b l e (   c o r r e c t i o n D i r e c t i o n   :   V e c t o r   )   :   b o o l  
 	 {  
 	 	 v a r   a n g l e 	 :   f l o a t ;  
 	 	  
 	 	  
 	 	 i f (   ! l i m i t C o r r e c t i o n T u r n i n g S i d e   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 a n g l e 	 =   V e c H e a d i n g (   c o r r e c t i o n D i r e c t i o n   ) ;  
 	 	 a n g l e 	 =   m _ E x p l o r a t i o n O . m _ I n p u t O . G e t H e a d i n g D i f f F r o m Y a w F (   a n g l e   ) ;  
 	 	  
 	 	 i f (   A b s F (   i n p u t D i f e r e n c e   )   >   i n p u t D i f T o S i d e   & &   a n g l e   *   i n p u t D i f e r e n c e   >   0 . 0 f   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t I s C o l l i s i o n C o r r e c t e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   c o l l i s i o n S t o p p e d ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t D e b u g T e x t ( )   :   s t r i n g  
 	 {  
 	 	 v a r   t e x t ,   t y p e T e x t 	 	 :   s t r i n g ;  
 	 	 v a r   i ,   c a s e s ,   a c c e p t e d 	 :   i n t ;  
 	 	 v a r   j ,   l e n g t h 	 	 	 :   i n t ;  
 	 	  
 	 	 c a s e s   	 	 =   (   i n t   )   E M C T _ S i z e ;  
 	 	 a c c e p t e d 	 =   (   i n t   )   c o r r e c t i o n A c c e p t e d . t y p e ;  
 	 	  
 	 	 t e x t 	 =   " C o r r e c t i o n :   " ;  
 	 	 f o r (   i   =   0 ;   i   <   c a s e s ;   i   + =   1   )  
 	 	 {  
 	 	 	 i f (   i   = =   a c c e p t e d   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 t y p e T e x t 	 =   (   s t r i n g   )   c o r r e c t i o n A c c e p t e d . t y p e ;  
 	 	 	 	  
 	 	 	 	 l e n g t h 	 	 =   S t r L e n (   t y p e T e x t   ) ;  
 	 	 	 	 f o r (   j   =   0 ;   j   <   1 5   -   l e n g t h ;   j   + =   1   )  
 	 	 	 	 {  
 	 	 	 	 	 t y p e T e x t 	 + =     " . " ;  
 	 	 	 	 }  
 	 	 	 	 t e x t 	 + =   t y p e T e x t ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t e x t 	 + =   " . . . . . . . . . . . . . . . " ;  
 	 	 	 }  
 	 	 }  
 	 	 i f (   p u s h S l o w i n g T i m e C u r   >   0 . 0 f   )  
 	 	 {  
 	 	 	 t e x t 	 + =   " S t o p p i n g   " ;  
 	 	 }  
 	 	 i f (   c o l l i s i o n S t o p p e d   )  
 	 	 {  
 	 	 	 t e x t 	 + =   " S t o p p i n g   C o l l i s i o n " ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t e x t   +   a u x D i f f ;  
 	 }  
 	  
 	  
 	 e v e n t   O n V i s u a l D e b u g (   f r a m e   :   C S c r i p t e d R e n d e r F r a m e ,   f l a g   :   E S h o w F l a g s   )  
 	 {  
 	 	 v a r   g r e e n 	 :   C o l o r ;  
 	 	 v a r   a u x T e x t 	 :   s t r i n g ;  
 	 	  
 	 	  
 	 	 i f (   ! d e b u g P u s h   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 g r e e n 	 =   C o l o r (   0 ,   2 5 5 ,   0   ) ;  
 	 	 c o r r e c t i o n O n C o l l i s i o n . O n V i s u a l D e b u g (   f r a m e ,   f l a g ,   (   c o r r e c t i o n A c c e p t e d . t y p e   = =   c o r r e c t i o n O n C o l l i s i o n . t y p e   )   ) ;  
 	 	 c o r r e c t i o n O n P u s h . O n V i s u a l D e b u g (   f r a m e ,   f l a g ,   (   c o r r e c t i o n A c c e p t e d . t y p e   = =   c o r r e c t i o n O n C o l l i s i o n . t y p e   )   ) ;  
 	 	 c o r r e c t i o n O n P h y s i c s . O n V i s u a l D e b u g (   f r a m e ,   f l a g ,   (   c o r r e c t i o n A c c e p t e d . t y p e   = =   c o r r e c t i o n O n P h y s i c s . t y p e   )   ) ;  
 	 	 c o r r e c t i o n O n N a v M e s h . O n V i s u a l D e b u g (   f r a m e ,   f l a g ,   (   c o r r e c t i o n A c c e p t e d . t y p e   = =   c o r r e c t i o n O n N a v M e s h . t y p e   )   ) ;  
 	 	 c o r r e c t i o n O n E x p l o r a t i o n . O n V i s u a l D e b u g (   f r a m e ,   f l a g ,   (   c o r r e c t i o n A c c e p t e d . t y p e   = =   c o r r e c t i o n O n E x p l o r a t i o n . t y p e   )   ) ;  
 	 	 c o r r e c t i o n O n D o o r s . O n V i s u a l D e b u g (   f r a m e ,   f l a g ,   (   c o r r e c t i o n A c c e p t e d . t y p e   = =   c o r r e c t i o n O n D o o r s . t y p e   )   ) ;  
 	 	 c o r r e c t i o n O n F a l l i n g . O n V i s u a l D e b u g (   f r a m e ,   f l a g ,   (   c o r r e c t i o n A c c e p t e d . t y p e   = =   c o r r e c t i o n O n F a l l i n g . t y p e   )   ) ;  
 	 	  
 	 	  
 	 	 f r a m e . D r a w S p h e r e (   d o o r P o i n t ,   0 . 2 f ,   g r e e n   ) ;  
 	 	 f r a m e . D r a w T e x t (   " D o o r   C o r r e c t i o n " ,   d o o r P o i n t ,   g r e e n   ) ;  
 	 	  
 	 	  
 	 	 i f (   f a l s e   )    
 	 	 {  
 	 	 	 a u x T e x t 	 =   " A n g l e   "   +   a u x D i f f ;  
 	 	 	 i f (   p u s h S l o w i n g T i m e C u r   >   0 . 0 f   )  
 	 	 	 {  
 	 	 	 	 a u x T e x t 	 + =   " - >   S l o w i n g " ;  
 	 	 	 }  
 	 	 	 f r a m e . D r a w T e x t (   a u x T e x t ,   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d P o s i t i o n ( )   +   m _ E x p l o r a t i o n O . m _ O w n e r E . G e t W o r l d U p ( )   *   2 . 0 f ,   g r e e n   ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 }  
  
  
  
 c l a s s   N a v i g a t i o n C o r r e c t i o n  
 {  
 	 v a r 	 c o r r e c t e d 	 :   b o o l ;  
 	 v a r 	 d i r e c t i o n 	 :   V e c t o r ;  
 	 v a r 	 a n g l e 	 	 :   f l o a t ;  
 	 v a r   t y p e 	 	 :   E M o v e m e n t C o r r e c t i o n T y p e ;  
 	 v a r 	 c o l o r 	 	 :   C o l o r ;  
 	  
 	  
 	  
 	 f u n c t i o n   S e t (   i s C o r r e c t e d   :   b o o l ,   o l d D i r e c t i o n   :   V e c t o r ,   n e w D i r e c t i o n   :   V e c t o r   )  
 	 {  
 	 	 c o r r e c t e d 	 =   i s C o r r e c t e d ;  
 	 	 d i r e c t i o n 	 =   n e w D i r e c t i o n ;  
 	 	 a n g l e 	 	 =   A n g l e D i s t a n c e (   V e c H e a d i n g (   o l d D i r e c t i o n   ) ,   V e c H e a d i n g (   n e w D i r e c t i o n   )   ) ;  
 	 }  
 	  
 	  
 	 e v e n t   O n V i s u a l D e b u g (   f r a m e   :   C S c r i p t e d R e n d e r F r a m e ,   f l a g   :   E S h o w F l a g s ,   s e l e c t e d   :   b o o l   )  
 	 {  
 	 	 v a r   o r i g i n ,   e n d   :   V e c t o r ;  
 	 	  
 	 	 i f (   ! c o r r e c t e d   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 o r i g i n 	 =   t h e P l a y e r . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 e n d 	 	 =   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   d i r e c t i o n   *   2 . 0 f ;  
 	 	  
 	 	 f r a m e . D r a w L i n e (   o r i g i n ,   e n d ,   c o l o r   ) ;  
 	 	 i f (   s e l e c t e d   )  
 	 	 {  
 	 	 	 f r a m e . D r a w S p h e r e (   e n d ,   0 . 2 f ,   c o l o r   ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 } ;  
  
 