/ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / * *   	 �   2 0 1 5   C D   P R O J E K T   S . A .   A l l   r i g h t s   r e s e r v e d .  
 / * *   	 T H E   W I T C H E R �   i s   a   t r a d e m a r k   o f   C D   P R O J E K T   S .   A .  
 / * *   	 T h e   W i t c h e r   g a m e   i s   b a s e d   o n   t h e   p r o s e   o f   A n d r z e j   S a p k o w s k i .  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / * *   	 I m m e r s i v e   M o t i o n   f o r   G a m e p a d s   -   R e   E n v i s i o n e d !     v   1 . 0  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
  
 i m p o r t   c l a s s   C R 4 L o c o m o t i o n D i r e c t C o n t r o l l e r   e x t e n d s   C O b j e c t  
 {  
 	 i m p o r t   p r o t e c t e d   v a r   a g e n t   :   C M o v i n g A g e n t C o m p o n e n t ;  
 	 i m p o r t   p r o t e c t e d   v a r   m o v e S p e e d   :   f l o a t ;  
 	 i m p o r t   p r o t e c t e d   v a r   m o v e R o t a t i o n   :   f l o a t ;  
 } ;  
  
 i m p o r t   c l a s s   C R 4 L o c o m o t i o n D i r e c t C o n t r o l l e r S c r i p t   e x t e n d s   C R 4 L o c o m o t i o n D i r e c t C o n t r o l l e r  
 {  
 	 f u n c t i o n   A c t i v a t e ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 f u n c t i o n   U p d a t e L o c o m o t i o n ( )  
 	 {  
 	 }  
 	  
 	 f u n c t i o n   D e a c t i v a t e ( )  
 	 {  
 	 }  
 } ;  
  
 c l a s s   C R 4 L o c o m o t i o n P l a y e r C o n t r o l l e r S c r i p t   e x t e n d s   C R 4 L o c o m o t i o n D i r e c t C o n t r o l l e r S c r i p t  
 {  
 	 v a r   p l a y e r   	 	 	 	 	 :   C R 4 P l a y e r ;  
 	 v a r   a n g u l a r I n p u t S p e e d   	 	 :   f l o a t ;  
 	 v a r   w o r l d M o v e D i r e c t i o n   	 	 :   f l o a t ;  
 	 v a r   l o c a l M o v e D i r e c t i o n   	 	 :   f l o a t ;  
 	 v a r   p r e v i o u s I n p u t V e c t o r   	 :   V e c t o r ;  
 	 v a r   t i m e r V a l u e 	 	 	 	 :   f l o a t ;  
 	 v a r   a n g u l a r S p e e d 	 	 	 :   f l o a t ;  
 	  
 	 v a r   _ i n p u t L o c o E n a b l e d 	 	 :   b o o l ; 	 	 d e f a u l t   _ i n p u t L o c o E n a b l e d   =   t r u e ;  
 	 v a r   _ i n p u t V e c C u r r 	 	 	 :   V e c t o r ;  
 	 v a r   _ i n p u t V e c P r e v 	 	 	 :   V e c t o r ;  
 	 v a r   _ i n p u t H e a d i n g 1 8 0 C u r r 	 :   f l o a t ; 	 d e f a u l t   _ i n p u t H e a d i n g 1 8 0 C u r r   =   0 . f ;  
 	 v a r   _ i n p u t H e a d i n g 1 8 0 P r e v 	 :   f l o a t ; 	 d e f a u l t   _ i n p u t H e a d i n g 1 8 0 P r e v   =   0 . f ;  
 	 v a r   _ i n p u t H e a d i n g 1 8 0 L a s t C a c h e d   :   f l o a t ; 	 d e f a u l t   _ i n p u t H e a d i n g 1 8 0 L a s t C a c h e d   =   0 . f ;  
 	 v a r   _ i n p u t M a g C u r r 	 	 	 :   f l o a t ; 	 d e f a u l t   _ i n p u t M a g C u r r   =   0 . f ;  
 	 v a r   _ i n p u t M a g P r e v 	 	 	 :   f l o a t ; 	 d e f a u l t   _ i n p u t M a g P r e v   =   0 . f ;  
 	 v a r   _ i n p u t M a g D i f f C u r r 	 	 :   f l o a t ; 	 d e f a u l t   _ i n p u t M a g D i f f C u r r   =   0 . f ;  
 	 v a r   _ i n p u t M a g D i f f P r e v 	 	 :   f l o a t ; 	 d e f a u l t   _ i n p u t M a g D i f f P r e v   =   0 . f ;  
 	 v a r   _ i n p u t M a g L a s t C a c h e d 	 	 :   f l o a t ; 	 d e f a u l t   _ i n p u t M a g L a s t C a c h e d   =   0 . f ;  
 	  
 	  
 	 v a r   s p e e d S l o w W a l k i n g M a x 	   	 :   f l o a t ; 	 d e f a u l t 	 s p e e d S l o w W a l k i n g M a x 	   	 =   0 . 3 f ;  
 	 v a r   s p e e d W a l k i n g M a x 	 	 	 :   f l o a t ; 	 d e f a u l t 	 s p e e d W a l k i n g M a x 	 	 	 =   0 . 6 f ;  
 	 v a r   s p e e d R u n n i n g 	 	 	 :   f l o a t ; 	 d e f a u l t 	 s p e e d R u n n i n g 	 	 	 =   1 . 0 f ;  
 	 v a r   s p e e d S p r i n t i n g 	 	 	 :   f l o a t ; 	 d e f a u l t 	 s p e e d S p r i n t i n g 	 	 	 =   1 . 5 f ;  
 	 v a r   s p e e d S p r i n t i n g W i t h P e r k 	 :   f l o a t ; 	 d e f a u l t 	 s p e e d S p r i n t i n g W i t h P e r k 	 =   1 . 6 f ;  
 	  
 	 v a r 	 m a x T e r r a i n P i t c h T o W a l k U p 	 :   f l o a t ; 	 d e f a u l t 	 m a x T e r r a i n P i t c h T o W a l k U p 	 =   7 0 . 0 f ;  
  
 	 / / I m m e r s i v e M o t i o n + +  
 	 v a r   p r e v i o u s S p e e d 	 	 	 :   f l o a t ;  
 	 v a r   n e x t T i m e 	 	 	 	 :   f l o a t ;   / / u s e d   f o r   d e b u g g i n g  
 	 / / I m m e r s i v e M o t i o n - -  
  
 	 v a r   p r e v P o s i t i o n 	 	 	 :   V e c t o r ;  
 	 v a r   p r e v R o t a t i o n 	 	 	 :   E u l e r A n g l e s ;  
 	  
 	  
 	 f u n c t i o n   A c t i v a t e ( )   :   b o o l  
 	 {  
 	 	 p l a y e r   =   ( C R 4 P l a y e r ) a g e n t . G e t E n t i t y ( ) ;  
 	  
 	 	 _ i n p u t V e c C u r r   =   V e c t o r ( 0 . f , 0 . f , 0 . f ) ;  
 	 	 _ i n p u t V e c P r e v   =   V e c t o r ( 0 . f , 0 . f , 0 . f ) ;  
 	 	  
 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' A I C o n t r o l l e d ' ,   0 . f   ) ;    
 	 	 s t o p C h e c k E n a b l e d   =   f a l s e ;  
 	  
 	 	 r e t u r n   s u p e r . A c t i v a t e ( ) ;  
 	 }  
  
 	 f u n c t i o n   D e a c t i v a t e ( )  
 	 {  
 	 	 v a r   m o v i n g A g e n t C o m p o n e n t   	 :   C M o v i n g A g e n t C o m p o n e n t   =   p l a y e r . G e t M o v i n g A g e n t C o m p o n e n t ( ) ;  
 	 	  
 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i n p u t D i r e c t i o n I s N o t R e a d y ' ,   0 . f   ) ;    
 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' A I C o n t r o l l e d ' ,   1 . f   ) ;    
 	 	  
 	 	 p l a y e r . U p d a t e R e q u e s t e d D i r e c t i o n V a r i a b l e s _ P l a y e r D e f a u l t ( ) ;  
 	 	  
 	 	 p l a y e r . S e t I s R u n n i n g (   f a l s e   ) ;  
 	 	 p l a y e r . S e t I s W a l k i n g (   f a l s e   ) ;  
 	 	  
 	 	 m o v i n g A g e n t C o m p o n e n t . S e t G a m e p l a y R e l a t i v e M o v e S p e e d (   0 . 0 f   ) ;  
 	 	 m o v i n g A g e n t C o m p o n e n t . S e t G a m e p l a y M o v e D i r e c t i o n (   0 . 0 f   ) ;  
 	 	  
 	 	 s t o p C h e c k E n a b l e d   =   f a l s e ;  
 	 	 	  
 	 	 s u p e r . D e a c t i v a t e ( ) ;  
 	 }  
 	  
 	  
 	 v a r   c a c h e d M o v e S p e e d   :   f l o a t ;  
 	 v a r   s t o p p e d T i m e S t a m p   :   f l o a t ;  
 	 v a r   s t o p C h e c k E n a b l e d   :   b o o l ;  
 	 v a r   s t o p p e d T i m e S t a m p D e l t a   :   f l o a t ;  
 	 v a r   s l o w M o A c t i v e   :   b o o l ;  
 	 f u n c t i o n   U p d a t e L o c o m o t i o n ( )  
 	 {  
  
  
  
  
  
 	 	 / /   I m m e r s i v e M o t i o n   -   m o v e d   t h e   v a r ,   p r e v i o u s S p e e d   o u t   o f   U p d a t e L o c o m o t i o n   t o   m a k e   i t   a c c e s s i b l e   t o   t h e   I M   s l o w   s t a r t   f u n c t i o n s  
 	 	 v a r   i n p u t I n C a m e r a S p a c e ,   i n p u t A n g l e T o R o t a t e ,   h a x S t r a f e ,   h a x F o r w a r d   :   f l o a t ;  
 	 	 v a r   p l a y e r Y a w 	 	 	 	 :   f l o a t ;  
 	 	 v a r   f o r c e d D i r e c t i o n 	 	 	 :   f l o a t ;  
 	 	 v a r   m o v i n g A g e n t C o m p o n e n t   	 :   C M o v i n g A g e n t C o m p o n e n t   =   p l a y e r . G e t M o v i n g A g e n t C o m p o n e n t ( ) ;  
 	 	 v a r   c u r r P o s i t i o n ,   d i f f P o s i t i o n 	 :   V e c t o r ;  
 	 	 v a r   c u r r R o t a t i o n 	 	 	 :   E u l e r A n g l e s ;  
 	 	 v a r   d i f f R o t a t i o n 	 	 	 :   f l o a t ;  
 	 	 v a r   i n p u t H e a d i n g 1 8 0 _ W S ,   i n p u t H e a d i n g 3 6 0 _ W S ,   i n p u t H e a d i n g 1 8 0 _ C S ,   c a m e r a H e a d i n g 3 6 0 _ W S ,   i n p u t M a g D i f f   :   f l o a t ;  
 	 	 v a r   c u r r e n t T i m e   :   f l o a t ;  
 	 	 	  
 	 	  
 	 	 i f   (   p l a y e r . I s U I T a k e I n p u t ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 p r e v i o u s S p e e d   =   m o v i n g A g e n t C o m p o n e n t . G e t R e l a t i v e M o v e S p e e d ( ) ;  
 	 	  
 	 	  
 	 	 _ i n p u t V e c P r e v   =   _ i n p u t V e c C u r r ;  
 	 	 _ i n p u t V e c C u r r   =   C a l c u l a t e I n p u t V e c t o r ( ) ;  
 	 	  
 	 	  
 	 	 _ i n p u t H e a d i n g 1 8 0 P r e v   =   _ i n p u t H e a d i n g 1 8 0 C u r r ;  
 	 	 _ i n p u t M a g P r e v   =   _ i n p u t M a g C u r r ;  
 	 	  
 	 	  
 	 	 C o n v e r t V e c T o H e a d i n g W S 1 8 0 A n d M a g (   _ i n p u t V e c C u r r ,   i n p u t H e a d i n g 1 8 0 _ W S ,   _ i n p u t M a g C u r r   ) ;  
 	 	 i n p u t H e a d i n g 3 6 0 _ W S   =   A n g l e N o r m a l i z e (   i n p u t H e a d i n g 1 8 0 _ W S   ) ;  
 	 	  
 	 	  
 	 	 c a m e r a H e a d i n g 3 6 0 _ W S   =   G e t C a m e r a H e a d i n g 3 6 0 W S ( ) ;  
 	 	 i n p u t H e a d i n g 1 8 0 _ C S   =   A n g l e N o r m a l i z e 1 8 0 (   i n p u t H e a d i n g 3 6 0 _ W S   +   c a m e r a H e a d i n g 3 6 0 _ W S   ) ;  
 	 	  
 	 	  
 	 	 _ i n p u t M a g D i f f P r e v   =   _ i n p u t M a g D i f f C u r r ;  
 	 	 _ i n p u t M a g D i f f C u r r   =   _ i n p u t M a g C u r r   -   _ i n p u t M a g P r e v ;  
 	 	  
 	 	  
 	 	 _ i n p u t H e a d i n g 1 8 0 C u r r   =   i n p u t H e a d i n g 1 8 0 _ C S ;  
 	 	  
 	 	  
 	 	 p l a y e r Y a w   =   p l a y e r . G e t H e a d i n g ( ) ;  
 	 	  
 	 	  
 	 	 U p d a t e I n p u t R e a d y n e s s ( ) ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 p l a y e r . G e t V i s u a l D e b u g ( ) . A d d A r r o w (   ' i n p u t 0 1 ' ,   p l a y e r . G e t W o r l d P o s i t i o n ( ) ,   p l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c F r o m H e a d i n g (   c a m e r a H e a d i n g 3 6 0 _ W S   ) ,   1 . f ,   0 . 1 f ,   0 . 1 f ,   t r u e ,   C o l o r ( 0 , 2 5 5 , 0 ) ,   t r u e   ) ;  
 	 	  
 	 	 p l a y e r . G e t V i s u a l D e b u g ( ) . A d d A r r o w (   ' i n p u t 0 2 ' ,   p l a y e r . G e t W o r l d P o s i t i o n ( ) ,   p l a y e r . G e t W o r l d P o s i t i o n ( )   +   p l a y e r . G e t H e a d i n g V e c t o r ( ) ,   1 . f ,   0 . 1 f ,   0 . 1 f ,   t r u e ,   C o l o r ( 1 2 8 , 1 2 8 , 1 2 8 ) ,   t r u e   ) ;  
 	 	  
 	 	  
 	 	 p l a y e r . G e t V i s u a l D e b u g ( ) . A d d A r r o w (   ' i n p u t 0 4 ' ,   p l a y e r . G e t W o r l d P o s i t i o n ( ) ,   p l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c F r o m H e a d i n g (   _ i n p u t H e a d i n g 1 8 0 L a s t C a c h e d   ) ,   1 . f ,   0 . 2 f ,   0 . 2 f ,   t r u e ,   C o l o r ( 2 5 5 , 0 , 2 5 5 ) ,   t r u e   ) ;  
 	 	  
 	 	 i f (   p l a y e r . G e t I s M o v a b l e ( )   & &   p l a y e r . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' P l a y e r D i a l o g S c e n e '   )  
 	 	 { 	 	 	 	 	  
 	 	 	  
 	 	 	 i f (   H a s T o F o r c e T o F a l l (   f o r c e d D i r e c t i o n   )   )  
 	 	 	 {  
 	 	 	 	 l o c a l M o v e D i r e c t i o n 	 =   f o r c e d D i r e c t i o n ;  
 	 	 	 	 m o v e S p e e d 	 	 	 =   M a x F (   m o v e S p e e d ,   0 . 5 f   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 _ i n p u t H e a d i n g 1 8 0 C u r r 	 	 =   ( l o c a l M o v e D i r e c t i o n   *   - 1 8 0 . 0 f )   +   p l a y e r Y a w ;  
 	 	 	 	 _ i n p u t H e a d i n g 1 8 0 L a s t C a c h e d 	 =   _ i n p u t H e a d i n g 1 8 0 C u r r ;  
 	 	 	 	  
 	 	 	 	 M a k e I n p u t R e a d y ( ) ;  
 	 	 	 }    
 	 	 	  
 	 	 	 e l s e   i f (   H a s T o S t o p B e c a u s e O f S l o p e ( )   )  
 	 	 	 {  
 	 	 	 	 m o v e S p e e d 	 	 	 	 	 =   0 . 0 f ;  
 	 	 	 	 _ i n p u t H e a d i n g 1 8 0 C u r r 	 	 =   p l a y e r Y a w ;  
 	 	 	 	 _ i n p u t H e a d i n g 1 8 0 L a s t C a c h e d 	 =   _ i n p u t H e a d i n g 1 8 0 C u r r ;  
 	 	 	 	  
 	 	 	 	 M a k e I n p u t R e a d y ( ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 a n g u l a r I n p u t S p e e d 	 =   C a l c u l a t e I n p u t A n g u l a r S p e e d ( ) ;  
 	 	 	 	 l o c a l M o v e D i r e c t i o n 	 =   C a l c u l a t e L o c a l M o v e D i r e c t i o n ( ) ;  
 	 	 	 	 m o v e S p e e d   	 	 	 =   C a l c u l a t e M o v e S p e e d ( ) ;  
 	 	 	 	  
 	 	 	 	 c u r r e n t T i m e   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	 	 	 i f   (   m o v e S p e e d   < =   0   )  
 	 	 	 	 { 	 	 	 	  
 	 	 	 	 	 i f   (   ! s t o p C h e c k E n a b l e d   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 s t o p C h e c k E n a b l e d   =   t r u e ;  
 	 	 	 	 	 	 s t o p p e d T i m e S t a m p   =   c u r r e n t T i m e ;  
 	 	 	 	 	 	 m o v e S p e e d   =   c a c h e d M o v e S p e e d ;  
  
 	 	 	 	 	 	 i f   (   t h e I n p u t . L a s t U s e d P C I n p u t ( )   )  
 	 	 	 	 	 	 	 s t o p p e d T i m e S t a m p D e l t a   =   0 . 1 5 f ;  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 s t o p p e d T i m e S t a m p D e l t a   =   0 . 0 5 f ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f   (   c u r r e n t T i m e   >   s t o p p e d T i m e S t a m p   +   s t o p p e d T i m e S t a m p D e l t a   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 m o v e S p e e d   =   0 ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e    
 	 	 	 	 	 	 m o v e S p e e d   =   c a c h e d M o v e S p e e d ; 	  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 s t o p C h e c k E n a b l e d   =   f a l s e ;  
 	 	 	 	 	 c a c h e d M o v e S p e e d   =   m o v e S p e e d ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 l o c a l M o v e D i r e c t i o n P r e v F r a m e   =   l o c a l M o v e D i r e c t i o n ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 c u r r P o s i t i o n   =   p l a y e r . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 	 c u r r R o t a t i o n   =   p l a y e r . G e t W o r l d R o t a t i o n ( ) ;  
 	 	 	 	  
 	 	 	 	 d i f f P o s i t i o n   =   c u r r P o s i t i o n   -   p r e v P o s i t i o n ;  
 	 	 	 	 d i f f R o t a t i o n   =   A n g l e D i s t a n c e (   c u r r R o t a t i o n . Y a w ,   p r e v R o t a t i o n . Y a w   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 p r e v P o s i t i o n   =   c u r r P o s i t i o n ;  
 	 	 	 	 p r e v R o t a t i o n   =   c u r r R o t a t i o n ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 P r o c e s s M o v e m e n t E v e n t ( ) ;  
 	 	 	 	  
 	 	 	 	 i f (   t h e P l a y e r . s u b s t a t e M a n a g e r . m _ M o v e m e n t C o r r e c t o r O . M o d i f y S p e e d R e q u i r e d (   m o v e S p e e d   )   )  
 	 	 	 	 {  
 	 	 	 	 	 M a k e I n p u t R e a d y ( ) ;  
 	 	 	 	 } 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f (   t h e P l a y e r . H a s B u f f (   E E T _ O v e r E n c u m b e r e d   )   )  
 	 	 	 	 {  
 	 	 	 	 	 m o v e S p e e d 	 =   M i n F (   m o v e S p e e d ,   s p e e d S l o w W a l k i n g M a x   ) ;   / / I m m e r s i v e   M o t i o n  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 p l a y e r . p l a y e r M o v e T y p e   	 =   P M T _ I d l e ;  
 	 	 	 a n g u l a r I n p u t S p e e d   	 	 =   0 ;  
 	 	 	 m o v e S p e e d   	 	 	 	 =   0 ;  
 	 	 	 l o c a l M o v e D i r e c t i o n   	 	 =   0 ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 p l a y e r . S e t S u b m e r g e D e p t h (   ( ( C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ) p l a y e r . G e t M o v i n g A g e n t C o m p o n e n t ( ) ) . G e t S u b m e r g e D e p t h ( )   ) ;  
 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' s u b m e r g e D e p t h ' ,   p l a y e r . G e t S u b m e r g e D e p t h ( )   ) ;  
 	 	  
 	 	 i f   (   p l a y e r . O n A l l o w S h a l l o w W a t e r C h e c k ( )   & &   ! p l a y e r . I s S w i m m i n g ( )   & &   p l a y e r . G e t S u b m e r g e D e p t h ( )   < =   - 0 . 9   )  
 	 	 {  
 	 	 	 p l a y e r . O n E n t e r S h a l l o w W a t e r ( ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 p l a y e r . O n E x i t S h a l l o w W a t e r ( ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	 i f   (   _ i n p u t L o c o E n a b l e d   )  
 	 	 {  
 	 	 	 w o r l d M o v e D i r e c t i o n   =   _ i n p u t H e a d i n g 1 8 0 L a s t C a c h e d ;  
 	 	 }  
 	 	  
 	 	 e l s e   i f   (   m o v e S p e e d   >   0 . f   )  
 	 	 {  
 	 	 	 w o r l d M o v e D i r e c t i o n   	 =   ( l o c a l M o v e D i r e c t i o n   *   - 1 8 0 . 0 f )   +   p l a y e r Y a w ;  
 	 	 }  
 	 	  
 	 	 i f (   p l a y e r . I s O n B o a t ( )   )  
 	 	 {  
 	 	 	 m o v e S p e e d   =   M i n F (   s p e e d S l o w W a l k i n g M a x ,   m o v e S p e e d   ) ;  
 	 	 }    
  
 	 	 i f   (   ! p l a y e r . C a n U p d a t e M o v e m e n t ( )   )  
 	 	 {  
 	 	 	 m o v i n g A g e n t C o m p o n e n t . S e t G a m e p l a y R e l a t i v e M o v e S p e e d (   0 . f   ) ;  
 	 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' t e s t _ m o v e S p e e d ' ,   0 . f   ) ;  
 	 	 	  
 	 	 	 i f   (   ! p l a y e r . I s I n p u t H e a d i n g R e a d y ( )   )  
 	 	 	 	 m o v e S p e e d   =   0 ;  
 	 	 	  
 	 	 	 i f (   V e c L e n g t h S q u a r e d (   m o v i n g A g e n t C o m p o n e n t . G e t V e l o c i t y ( )   )   <   0 . 2 5 f   & &   p l a y e r . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' A i m T h r o w '   )  
 	 	 	 {  
 	 	 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' p l a y e r S p e e d F o r O v e r l a y ' ,   0 . 0 f ,   t r u e   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' p l a y e r S p e e d F o r O v e r l a y ' ,   m o v e S p e e d ,   t r u e   ) ;  
 	 	 	 }  
 	 	 	 m o v i n g A g e n t C o m p o n e n t . S e t G a m e p l a y M o v e D i r e c t i o n (   p l a y e r Y a w   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 m o v i n g A g e n t C o m p o n e n t . S e t G a m e p l a y R e l a t i v e M o v e S p e e d (   m o v e S p e e d   ) ;  
 	 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' t e s t _ m o v e S p e e d ' ,   m o v e S p e e d ) ;  
 	 	 	  
 	 	 	 i f (   V e c L e n g t h S q u a r e d (   m o v i n g A g e n t C o m p o n e n t . G e t V e l o c i t y ( )   )   <   0 . 2 5 f   )  
 	 	 	 {  
 	 	 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' p l a y e r S p e e d F o r O v e r l a y ' ,   0 . 0 f ,   t r u e   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' p l a y e r S p e e d F o r O v e r l a y ' ,   m o v e S p e e d ,   t r u e   ) ;  
 	 	 	 }  
 	 	 	 m o v i n g A g e n t C o m p o n e n t . S e t G a m e p l a y M o v e D i r e c t i o n (   w o r l d M o v e D i r e c t i o n   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 m o v i n g A g e n t C o m p o n e n t . S e t D i r e c t i o n C h a n g e R a t e (   1 0 0 0 0 . 0 f   ) ;  
 	 	  
 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' p l a y e r I n p u t A n g S p e e d ' ,   a n g u l a r I n p u t S p e e d ) ;  
 	 	  
 	 	 U p d a t e R e q u e s t e d D i r e c t i o n V a r i a b l e s (   w o r l d M o v e D i r e c t i o n ,   t h e C a m e r a . G e t C a m e r a H e a d i n g ( ) ) ;  
 	 	  
 	 	  
 	 	 p l a y e r . G e t V i s u a l D e b u g ( ) . A d d A r r o w (   ' h e a d i n g 1 ' ,   p l a y e r . G e t W o r l d P o s i t i o n ( ) ,   p l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c F r o m H e a d i n g (   w o r l d M o v e D i r e c t i o n   ) ,   1 . f ,   0 . 4 f ,   0 . 2 f ,   t r u e ,   C o l o r ( 2 5 5 , 0 , 0 ) ,   t r u e   ) ;  
 	 	  
 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' a c t o r M o v e D i r e c t i o n ' ,   l o c a l M o v e D i r e c t i o n   ) ;  
 	 	  
 	 	  
 	 	 a n g u l a r S p e e d   =   5 1 2 . f ;  
 	 	 i f   (   i n p u t A n g l e T o R o t a t e   <   0 . f   )  
 	 	 {  
 	 	 	 a n g u l a r S p e e d   =   - a n g u l a r S p e e d ;  
 	 	 }  
 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i n p u t S p e e d T o R o t a t e ' ,   a n g u l a r S p e e d   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 p l a y e r . S e t I s W a l k i n g (   m o v e S p e e d   >   0 . 0 1 f   ) ;   / / m o d W 3 R e d u x R G C  
 	 	 p l a y e r . S e t I s R u n n i n g (   m o v e S p e e d   >   0 . 8 0 f   ) ;   / / m o d W 3 R e d u x R G C  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e I n p u t R e a d y n e s s ( )  
 	 {  
 	 	 v a r   i n p u t H e a d i n g R e a d y ,   i n p u t M a g R e a d y ,   c a n R e c a l c I n p u t H e a d i n g   :   b o o l ;  
 	 	  
 	 	  
 	 	 i n p u t H e a d i n g R e a d y   =   t r u e ;  
 	 	 i n p u t M a g R e a d y   =   t r u e ;  
 	 	 c a n R e c a l c I n p u t H e a d i n g   =   f a l s e ;  
 	 	  
 	 	  
 	 	 i f   (   A b s F (   _ i n p u t M a g D i f f C u r r   )   >   0 . 2 f   )    
 	 	 {  
 	 	 	  
 	 	 	 i n p u t H e a d i n g R e a d y   =   f a l s e ;  
 	 	 	 i n p u t M a g R e a d y   =   f a l s e ;  
 	 	 	 c a n R e c a l c I n p u t H e a d i n g   =   t r u e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   i n p u t H e a d i n g R e a d y   & &   _ i n p u t M a g C u r r   <   0 . 0 0 1 f   & &   _ i n p u t M a g P r e v   >   0 . 1 f   )  
 	 	 {  
 	 	 	  
 	 	 	 i n p u t H e a d i n g R e a d y   =   f a l s e ;  
 	 	 	 c a n R e c a l c I n p u t H e a d i n g   =   t r u e ;  
 	 	 	  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   i n p u t H e a d i n g R e a d y   & &   _ i n p u t M a g D i f f C u r r   <   0 . f   & &   A b s F (   _ i n p u t V e c C u r r . X   )   <   0 . 0 0 1 f   & &   A b s F (   _ i n p u t V e c C u r r . Y   )   >   0 . 0 0 1 f   & &   _ i n p u t V e c C u r r . Y   <   _ i n p u t V e c P r e v . Y     )  
 	 	 {  
 	 	 	  
 	 	 	 i n p u t H e a d i n g R e a d y   =   f a l s e ;  
 	 	 	  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   i n p u t H e a d i n g R e a d y   & &   _ i n p u t M a g C u r r   <   0 . 1 f   )  
 	 	 {  
 	 	 	  
 	 	 	 i n p u t H e a d i n g R e a d y   =   f a l s e ;  
 	 	 	  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   i n p u t H e a d i n g R e a d y   & &   _ i n p u t M a g P r e v   <   0 . 0 0 1 f   & &   _ i n p u t M a g C u r r   >   0 . 0 0 1 f   )  
 	 	 {  
 	 	 	  
 	 	 	 i n p u t H e a d i n g R e a d y   =   f a l s e ;  
 	 	 	 i n p u t M a g R e a d y   =   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   c a n R e c a l c I n p u t H e a d i n g   & &   _ i n p u t M a g P r e v   >   0 . 0 0 1 f   & &   _ i n p u t M a g D i f f C u r r   >   0 . 0 0 1 f   & &   _ i n p u t M a g D i f f P r e v   <   0 . 0 0 1 f   )  
 	 	 {  
 	 	 	  
 	 	 	 	  
 	 	 	 _ i n p u t H e a d i n g 1 8 0 C u r r   =   _ i n p u t H e a d i n g 1 8 0 P r e v ;  
 	 	 	 	  
 	 	 	 i n p u t H e a d i n g R e a d y   =   t r u e ;  
 	 	 	 i n p u t M a g R e a d y   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 e l s e   i f   (   c a n R e c a l c I n p u t H e a d i n g   & &   _ i n p u t M a g P r e v   >   0 . 0 0 1 f   & &   _ i n p u t M a g D i f f C u r r   <   0 . 0 0 1 f   & &   _ i n p u t M a g D i f f P r e v   >   0 . 0 0 1 f   )  
 	 	 {  
 	 	 	  
 	 	 	 	  
 	 	 	 _ i n p u t H e a d i n g 1 8 0 C u r r   =   _ i n p u t H e a d i n g 1 8 0 P r e v ;  
 	 	 	 _ i n p u t M a g C u r r   =   _ i n p u t M a g P r e v ;  
 	 	 	 	  
 	 	 	 i n p u t H e a d i n g R e a d y   =   t r u e ;  
 	 	 	 i n p u t M a g R e a d y   =   t r u e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   i n p u t H e a d i n g R e a d y   )  
 	 	 {  
 	 	 	 _ i n p u t H e a d i n g 1 8 0 L a s t C a c h e d   =   _ i n p u t H e a d i n g 1 8 0 C u r r ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i n p u t D i r e c t i o n I s N o t R e a d y ' ,   0 . f   ) ;    
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i n p u t D i r e c t i o n I s N o t R e a d y ' ,   1 . f   ) ;    
 	 	 }  
 	 	  
 	 	 p l a y e r . S e t I n p u t H e a d i n g R e a d y (   i n p u t H e a d i n g R e a d y   ) ;  
 	 	  
 	 	 i f   (   i n p u t M a g R e a d y   )  
 	 	 {  
 	 	 	 _ i n p u t M a g L a s t C a c h e d   =   _ i n p u t M a g C u r r ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   M a k e I n p u t R e a d y ( )  
 	 {  
 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i n p u t D i r e c t i o n I s N o t R e a d y ' ,   0 . f   ) ;    
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   H a s T o F o r c e T o F a l l (   o u t   d i r e c t i o n   :   f l o a t   )   :   b o o l  
 	 {  
 	 	 v a r   f a l l i n g D i r 	 	 :   V e c t o r ;  
 	 	 v a r   t h r o w n E n t i t y 	 :   C T h r o w a b l e ;  
 	 	  
 	 	 t h r o w n E n t i t y   =   ( C T h r o w a b l e ) E n t i t y H a n d l e G e t (   t h e P l a y e r . t h r o w n E n t i t y H a n d l e   ) ;  
 	 	  
 	 	  
 	 	 i f (   t h e P l a y e r . r a n g e d W e a p o n   & &   t h e P l a y e r . r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 } 	 	  
 	 	 i f (   t h r o w n E n t i t y   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }    
 	 	  
 	 	  
 	 	 i f (   t h e P l a y e r . s u b s t a t e M a n a g e r . m _ C o l l i s i o n M a n a g e r O . G e t H a s T o F a l l I n D i r e c t i o n (   d i r e c t i o n   )   )  
 	 	 { 	 	 	  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   H a s T o S t o p B e c a u s e O f S l o p e ( )   :   b o o l  
 	 {  
 	 	  
 	 	  
 	 	  
 	 	 v a r   d i r e c t i o n 	 :   V e c t o r ;  
 	 	 v a r 	 p i t c h 	 	 :   f l o a t ;  
 	 	  
 	 	  
 	 	 p i t c h 	 	 =   p l a y e r . t e r r a i n P i t c h ;  
 	 	 i f (   p i t c h   <   9 0 . 0 f   -   m a x T e r r a i n P i t c h T o W a l k U p   )  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 {  
 	 	 	 i f (     t h e P l a y e r . s u b s t a t e M a n a g e r . m _ I n p u t O . I s M o d u l e C o n s i d e r a b l e ( )   )  
 	 	 	 {  
 	 	 	 	 d i r e c t i o n 	 =   t h e P l a y e r . s u b s t a t e M a n a g e r . m _ M o v e r O . G e t S l i d e D i r ( ) ;  
 	 	 	 	 i f (   V e c D o t (   d i r e c t i o n ,   t h e P l a y e r . s u b s t a t e M a n a g e r . m _ I n p u t O . G e t M o v e m e n t O n P l a n e N o r m a l i z e d V ( )   )   <   - 0 . 2 f   )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 f u n c t i o n   C a l c u l a t e L o c a l M o v e D i r e c t i o n ( )   :   f l o a t  
 	 {  
 	 	 v a r   d i r e c t i o n 	 	 	 :   f l o a t ;  
 	 	 v a r   p l a y e r D i r C a m S p a c e 	 :   f l o a t ;  
 	 	 v a r   m o v e D i r 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   a n y I n p u t 	 	 	 :   b o o l ;  
 	 	 v a r   c o r r e c t e d 	 	 	 :   b o o l ;  
 	 	  
 	 	  
 	 	  
 	 	 p l a y e r D i r C a m S p a c e   =   G e t P l a y e r H e a d i n g I n C a m S p a c e ( ) ;  
 	 	  
 	 	  
 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' r a w P l a y e r H e a d i n g ' ,   p l a y e r D i r C a m S p a c e   -   1 8 0 ) ;  
 	 	  
 	 	  
 	 	 m o v e D i r 	 =   G e t I n p u t I n P l a y e r S p a c e (   p l a y e r D i r C a m S p a c e ,   a n y I n p u t   ) ;  
 	 	  
 	 	  
 	 	 m o v e D i r 	 =   C o r r e c t D i r e c t i o n (   m o v e D i r ,   a n y I n p u t ,   c o r r e c t e d   ) ;    
 	 	  
 	 	  
 	 	 i f (   ! a n y I n p u t   )  
 	 	 {  
 	 	 	 r e t u r n   0 . 0 f ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   c o r r e c t e d   )  
 	 	 {  
 	 	 	 _ i n p u t H e a d i n g 1 8 0 C u r r 	 	 =   V e c H e a d i n g (   m o v e D i r   ) ;  
 	 	 	 _ i n p u t H e a d i n g 1 8 0 L a s t C a c h e d 	 =   _ i n p u t H e a d i n g 1 8 0 C u r r ;  
 	 	 }  
 	 	  
 	 	  
 	 	 d i r e c t i o n 	 =   - ( V e c H e a d i n g (   m o v e D i r   )   -   p l a y e r . G e t H e a d i n g ( ) ) ;    
 	 	  
 	 	  
 	 	 d i r e c t i o n 	 =   A n g l e N o r m a l i z e 1 8 0 (   d i r e c t i o n   ) ;  
 	 	 d i r e c t i o n 	 =   d i r e c t i o n   /   1 8 0 . 0 f ;  
 	 	  
 	 	 r e t u r n   d i r e c t i o n ;  
 	 }  
 	  
  
 	 p u b l i c   f u n c t i o n   R e s e t M o v e D i r e c t i o n ( )  
 	 {  
 	 	 i f ( p l a y e r )  
 	 	 	 _ i n p u t H e a d i n g 1 8 0 L a s t C a c h e d   =   p l a y e r . G e t H e a d i n g ( ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   G e t C a m e r a H e a d i n g 3 6 0 W S ( )   :   f l o a t  
 	 {  
 	 	 v a r   c a m e r a D i r e c t i o n   :   V e c t o r ;  
 	 	 v a r   c a m H e a d i n g 	 	 :   f l o a t ;  
 	 	  
 	 	 c a m e r a D i r e c t i o n 	 	 =   t h e C a m e r a . G e t C a m e r a D i r e c t i o n ( ) ;  
 	 	 c a m e r a D i r e c t i o n . Z 	 =   0 . f ;  
 	 	 c a m e r a D i r e c t i o n . W 	 =   1 . f ;  
 	 	 c a m e r a D i r e c t i o n   	 =   V e c N o r m a l i z e 2 D (   c a m e r a D i r e c t i o n   ) ;  
 	 	 c a m H e a d i n g 	 	 	 =   A n g l e N o r m a l i z e (   V e c H e a d i n g (   c a m e r a D i r e c t i o n   )   ) ;  
 	 	  
 	 	 r e t u r n   c a m H e a d i n g ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   G e t H e a d i n g I n C a m S p a c e (   h e a d i n g   :   f l o a t   )   :   f l o a t  
 	 {  
 	 	 v a r   c a m e r a D i r e c t i o n   :   V e c t o r ;  
 	 	 v a r   c a m H e a d i n g 	 	 :   f l o a t ;  
 	 	  
 	 	 c a m e r a D i r e c t i o n 	 	 =   t h e C a m e r a . G e t C a m e r a D i r e c t i o n ( ) ;  
 	 	 c a m e r a D i r e c t i o n . Z 	 =   0 . f ;  
 	 	 c a m e r a D i r e c t i o n . W 	 =   1 . f ;  
 	 	 c a m e r a D i r e c t i o n   	 =   V e c N o r m a l i z e 2 D (   c a m e r a D i r e c t i o n   ) ;  
 	 	 c a m H e a d i n g 	 	 	 =   A n g l e N o r m a l i z e (   V e c H e a d i n g (   c a m e r a D i r e c t i o n   )   ) ;  
 	 	 h e a d i n g 	 	 	 	 =   A n g l e N o r m a l i z e (   h e a d i n g   ) ; 	 	  
 	 	  
 	 	 r e t u r n   A n g l e N o r m a l i z e (   h e a d i n g   -   c a m H e a d i n g   ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   G e t P l a y e r H e a d i n g I n C a m S p a c e ( )   :   f l o a t  
 	 {  
 	 	 v a r   c a m e r a D i r e c t i o n   :   V e c t o r ;  
 	 	 v a r   c a m H e a d i n g 	 	 :   f l o a t ;  
 	 	 v a r   p l a y e r H e a d i n g 	 :   f l o a t ;  
 	 	  
 	 	  
 	 	 c a m e r a D i r e c t i o n 	 	 	 =   t h e C a m e r a . G e t C a m e r a D i r e c t i o n ( ) ;  
 	 	 c a m e r a D i r e c t i o n . Z 	 	 =   0 ;  
 	 	 c a m H e a d i n g 	 	 	 	 =   A n g l e N o r m a l i z e (   V e c H e a d i n g ( c a m e r a D i r e c t i o n )   ) ;  
 	 	 p l a y e r H e a d i n g 	 	 	 =   A n g l e N o r m a l i z e (   p l a y e r . G e t H e a d i n g ( )   ) ; 	 	  
 	 	  
 	 	 r e t u r n   A n g l e N o r m a l i z e (   p l a y e r H e a d i n g   -   c a m H e a d i n g   ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   G e t I n p u t H e a d i n g ( )   :   f l o a t  
 	 {  
 	 	 v a r   i n p u t V e c t o r 	 :   V e c t o r ;  
 	 	  
 	 	 i n p u t V e c t o r . X   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s L e f t X '   ) ;  
 	 	 i n p u t V e c t o r . Y   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s L e f t Y '   ) ;  
 	 	  
 	 	 r e t u r n   A n g l e N o r m a l i z e (   V e c H e a d i n g (   i n p u t V e c t o r   )   ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   G e t I n p u t I n P l a y e r S p a c e (   p l a y e r H e a d i n g I n C a m S p a c e   :   f l o a t ,   o u t   a n y I n p u t   :   b o o l   )   :   V e c t o r  
 	 {  
 	 	 v a r   i n p u t V e c t o r 	 	 	 :   V e c t o r ;  
 	 	 v a r 	 r e l a t i v e D i r e c t i o n 	 :   V e c t o r ;  
 	 	 v a r   d i r e c t i o n 	 	 	 :   f l o a t ;  
 	 	 v a r   i n p u t H e a d i n g 	 	 :   f l o a t ;  
 	 	  
 	 	 i n p u t V e c t o r . X 	 =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s L e f t X '   ) ;  
 	 	 i n p u t V e c t o r . Y 	 =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s L e f t Y '   ) ;  
 	 	  
 	 	 a n y I n p u t 	 	 =   i n p u t V e c t o r . X   ! =   0 . 0 f   | |   i n p u t V e c t o r . Y   ! =   0 . 0 f ;    
 	 	  
 	 	  
 	 	 i f (   a n y I n p u t   )  
 	 	 {  
 	 	 	 i n p u t H e a d i n g 	 	 =   A n g l e N o r m a l i z e (   V e c H e a d i n g ( i n p u t V e c t o r )   ) ; 	 	  
 	 	 	 d i r e c t i o n 	 	 	 =   p l a y e r H e a d i n g I n C a m S p a c e   -   i n p u t H e a d i n g ;  
 	 	 	 r e l a t i v e D i r e c t i o n 	 =   V e c F r o m H e a d i n g (   - d i r e c t i o n   +   p l a y e r . G e t H e a d i n g ( )   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e l a t i v e D i r e c t i o n 	 =   V e c F r o m H e a d i n g (   p l a y e r . G e t H e a d i n g ( )   ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   r e l a t i v e D i r e c t i o n ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   C o r r e c t D i r e c t i o n (   m o v e D i r   :   V e c t o r ,   o u t   a n y I n p u t   :   b o o l ,   o u t   c o r r e c t e d   :   b o o l   )   :   V e c t o r  
 	 {  
 	 	 v a r 	 n e w D i r 	 :   V e c t o r ;  
 	 	  
 	 	  
 	 	 i f (   t h e P l a y e r . s u b s t a t e M a n a g e r . m _ M o v e m e n t C o r r e c t o r O . C o r r e c t D i r e c t i o n T o A v o i d (   m o v e D i r ,   n e w D i r ,   a n y I n p u t   )   )  
 	 	 {  
 	 	 	 a n y I n p u t 	 =   t r u e ;  
 	 	 	 m o v e D i r 	 	 =   n e w D i r ;  
 	 	 	 c o r r e c t e d 	 =   t r u e ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 c o r r e c t e d 	 =   f a l s e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   m o v e D i r ;  
 	 }  
 	  
 	 f u n c t i o n   C a l c u l a t e I n p u t V e c t o r ( )   :   V e c t o r  
 	 {  
 	 	 v a r   v e c   :   V e c t o r ;  
 	 	  
 	 	 v e c . X   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s L e f t X '   ) ;  
 	 	 v e c . Y   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s L e f t Y '   ) ;  
 	 	  
 	 	 r e t u r n   v e c ;  
 	 }  
 	  
 	 f u n c t i o n   C o n v e r t V e c T o H e a d i n g W S 1 8 0 A n d M a g (   v e c   :   V e c t o r ,   o u t   h e a d i n g 1 8 0   :   f l o a t ,   o u t   m a g   :   f l o a t   )  
 	 {  
 	 	 v a r   v e c N o r m   :   V e c t o r ;  
 	 	 v a r   h e a d i n g   :   f l o a t ;  
 	 	  
 	 	  
 	 	 m a g   =   V e c L e n g t h 2 D (   v e c   ) ;  
 	 	  
 	 	  
 	 	 v e c N o r m   =   V e c N o r m a l i z e 2 D (   v e c   ) ;  
 	 	 h e a d i n g   =   V e c H e a d i n g (   v e c N o r m   ) ;  
 	 	 h e a d i n g 1 8 0   =   A n g l e N o r m a l i z e 1 8 0 (   h e a d i n g   ) ;  
 	 }  
 	  
 	 f u n c t i o n   C a l c u l a t e I n p u t A n g u l a r S p e e d ( )   :   f l o a t  
 	 {  
 	 	 v a r   i n p u t V e c   :   V e c t o r ; 	 	  
 	 	 v a r   a n g S p e e d   :   f l o a t ;  
 	 	 v a r   i n p u t H e a d i n g ,   p r e v i o u s I n p u t H e a d i n g   :   f l o a t ;  
 	 	  
 	 	 i n p u t V e c . X   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s L e f t X '   ) ;  
 	 	 i n p u t V e c . Y   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s L e f t Y '   ) ;  
 	 	  
 	 	 i n p u t V e c   =   V e c N o r m a l i z e 2 D ( i n p u t V e c ) ;  
 	 	  
 	 	 i n p u t H e a d i n g   =   V e c H e a d i n g ( i n p u t V e c ) ;  
 	 	 p r e v i o u s I n p u t H e a d i n g   =   V e c H e a d i n g ( p r e v i o u s I n p u t V e c t o r ) ;  
 	 	  
 	 	 i f (   i n p u t H e a d i n g   <   0 . 0 f   )  
 	 	 {  
 	 	 	 i n p u t H e a d i n g   + =   3 6 0 ;  
 	 	 }  
 	 	  
 	 	 i f   (   p r e v i o u s I n p u t H e a d i n g   <   0 . 0 f   )  
 	 	 {  
 	 	 	 p r e v i o u s I n p u t H e a d i n g   + =   3 6 0 ;  
 	 	 }  
 	 	  
 	 	 a n g S p e e d   =   i n p u t H e a d i n g   -   p r e v i o u s I n p u t H e a d i n g ;  
 	 	  
 	 	 i f   (   a n g S p e e d   >   1 8 0   )  
 	 	 {  
 	 	 	 a n g S p e e d   =   -   (   3 6 0   -   a n g S p e e d   ) ;  
 	 	 }  
 	    
 	 	 i f   (   a n g S p e e d   <   -   1 8 0   )  
 	 	 {  
 	 	 	 a n g S p e e d   =   3 6 0   +   a n g S p e e d ;  
 	 	 }  
 	 	  
 	 	 a n g S p e e d   =   A b s F ( a n g S p e e d ) ;  
 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 	  
 	 	 	 p r e v i o u s I n p u t V e c t o r   =   i n p u t V e c ;  
 	 	  
 	 	  
 	 	 r e t u r n   a n g S p e e d ;  
 	 }  
 	  
 	  
 	 v a r   d o u b l e T a p E n a b l e d   	 	 	 	 :   b o o l ;  
 	 v a r   l o c a l M o v e D i r e c t i o n P r e v F r a m e 	 	 :   f l o a t ;  
 	 v a r   d i r e c t i o n S w i t c h T i m e S t a m p 	 	 :   f l o a t ;  
 	 v a r   d i r e c t i o n C e n t e r e d T i m e S t a m p 	 	 :   f l o a t ;  
 	 v a r   i s C h e c k i n g C e n t e r e d   	 	 	 	 :   b o o l ;  
 	  
 	 v a r   i s C h e c k i n g C o m m i t T o R i g h t T u r n 	 	 :   b o o l ;  
 	 v a r   i s C h e c k i n g C o m m i t T o L e f t T u r n 	 	 :   b o o l ;  
 	 v a r   i s T u r n i n g R i g h t 	 	 	 	 	 :   b o o l ;  
 	 v a r   i s T u r n i n g L e f t 	 	 	 	 	 :   b o o l ;  
 	 v a r   c o m m i t T o R i g h t T u r n T i m e S t a m p 	 	 :   f l o a t ;  
 	 v a r   c o m m i t T o L e f t T u r n T i m e S t a m p 	 	 :   f l o a t ;  
 	 v a r   d i r e c t i o n S w i t c h T i m e S t a m p D e l t a 	 :   f l o a t ;  
 	 v a r   s t a r t R i g h t T u r n T i m e S t a m p 	 	 	 :   f l o a t ;  
 	 v a r   s t a r t L e f t T u r n T i m e S t a m p 	 	 	 :   f l o a t ;  
 	 v a r   u s e R i g h t T u r n T i m e S t a m p 	 	 	 :   b o o l ;  
 	 v a r   u s e L e f t T u r n T i m e S t a m p 	 	 	 :   b o o l ;  
 	  
 	 f u n c t i o n   C a l c u l a t e M o v e S p e e d ( )   :   f l o a t  
 	 {  
 	 	 v a r   s p e e d V e c   	 	 :   V e c t o r ;  
 	 	 v a r   s p e e d   	 	 	 :   f l o a t ; 	 	  
 	 	 v a r   r a w R i g h t J o y V e c 	 :   V e c t o r ; 	 	  
 	 	 v a r   t e m p I n t 	 	 	 :   i n t ; 	 	  
 	 	 v a r   t e r r a i n A n g l e s 	 :   E u l e r A n g l e s ; 	 	  
 	 	 v a r   c u r r e n t T i m e 	 	 :   f l o a t ; 	 	  
 	 	 v a r   f o r c e W a l k S p e e d 	 :   b o o l ; 	 	  
  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f (   R G C C o n f i g I s I m m e r s i v e M o t i o n E n a b l e d ( )   )   {  
 	 	 	 r e t u r n   I m m e r s i v e l y C a l c u l a t e M o v e S p e e d ( ) ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C + +  
  
 	 	 i f   (   t h e P l a y e r . I s C a m e r a C o n t r o l D i s a b l e d (   ' F i n i s h e r '   )   )  
 	 	 {  
 	 	 	 s p e e d   =   0 ;  
 	 	 }  
 	 	 e l s e   i f   (   _ i n p u t L o c o E n a b l e d   )  
 	 	 {  
 	 	 	 s p e e d   =   _ i n p u t M a g L a s t C a c h e d ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	 s p e e d 	 =   t h e P l a y e r . s u b s t a t e M a n a g e r . m _ I n p u t O . G e t M o d u l e F ( ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   t h e P l a y e r . I s S w i m m i n g ( )   )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . r a n g e d W e a p o n    
 	 	 	 	 & &   t h e P l a y e r . r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '  
 	 	 	 	 & &   t h e P l a y e r . r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n H o l s t e r '   )  
 	 	 	 {  
 	 	 	 	 s p e e d   =   0 ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 p l a y e r . t e r r a i n P i t c h   	 	 =   9 0 . 0 f   -   p l a y e r . s u b s t a t e M a n a g e r . m _ M o v e r O . G e t R e a l S l i d e A n g l e ( ) ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 i f (   t h e P l a y e r . C a n S p r i n t (   s p e e d   )   )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . I s I n C o m b a t ( )    
 	 	 	 	 & &   t h e P l a y e r . m o v e T a r g e t    
 	 	 	 	 & &   V e c D i s t a n c e (   t h e P l a y e r . m o v e T a r g e t . G e t W o r l d P o s i t i o n ( ) ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   )   <   t h e P l a y e r . f i n d M o v e T a r g e t D i s t M a x   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . S e t I s S p r i n t i n g ( t r u e ) ;  
 	 	 	 	  
 	 	 	 	 i f   (   t h e P l a y e r . m o d i f y P l a y e r S p e e d   | |   t h e P l a y e r . i n t e r i o r C a m e r a   )  
 	 	 	 	 	 t h e P l a y e r . E n a b l e S p r i n t i n g C a m e r a (   f a l s e   ) ;  
 	 	 	 	 e l s e   i f   (   t h e P l a y e r . G e t S p r i n t i n g T i m e ( )   >   0 . 2   & &   ! t h e P l a y e r . I s I n C o m b a t A c t i o n ( )   )  
 	 	 	 	 	 t h e P l a y e r . E n a b l e S p r i n t i n g C a m e r a (   t r u e   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 t h e P l a y e r . E n a b l e S p r i n t i n g C a m e r a (   f a l s e   ) ;  
 	 	 	 }  
 	 	 	 e l s e    
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . S e t I s S p r i n t i n g ( t r u e ) ;  
 	 	 	 	  
 	 	 	 	 i f   (   t h e P l a y e r . m o d i f y P l a y e r S p e e d   | |   t h e P l a y e r . i n t e r i o r C a m e r a     )  
 	 	 	 	 	 t h e P l a y e r . E n a b l e S p r i n t i n g C a m e r a (   f a l s e   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 t h e P l a y e r . E n a b l e S p r i n t i n g C a m e r a (   t r u e   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	  
 	 	 	 i f   (   ! p l a y e r . d i s a b l e S p r i n t i n g T i m e r E n a b l e d   & &   p l a y e r . G e t I s S p r i n t i n g ( )   )  
 	 	 	 {  
 	 	 	 	 p l a y e r . d i s a b l e S p r i n t i n g T i m e r E n a b l e d   =   t r u e ;  
 	 	 	 	 p l a y e r . A d d T i m e r (   ' D i s a b l e S p r i n t i n g T i m e r ' ,   0 . 2 5 f   ) ; 	  
 	 	 	 } 	 	  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   p l a y e r . m o d i f y P l a y e r S p e e d   )  
 	 	 {  
 	 	 	 i f   (   s p e e d   >   0 . 0 f   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h e P l a y e r . I s R u n P r e s s e d ( )   )  
 	 	 	 	 	 s p e e d   =   s p e e d R u n n i n g ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 s p e e d   =   C l a m p F (   s p e e d ,   0 . f ,   s p e e d W a l k i n g M a x   ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 e l s e   i f (   ! t h e P l a y e r . I s A c t i o n A l l o w e d (   E I A B _ S p r i n t   )   & &   t h e P l a y e r . I s A c t i o n A l l o w e d (   E I A B _ R u n A n d S p r i n t   )   & &   ! t h e P l a y e r . I s C o m b a t M u s i c E n a b l e d ( )   )  
 	 	 { 	  
 	 	 	 i f   (   s p e e d   < =   0 . f   )  
 	 	 	 {  
 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ I d l e ;  
 	 	 	 }  
 	 	 	 e l s e   i f (   t h e P l a y e r . I s S p r i n t A c t i o n P r e s s e d ( )   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 i f ( t h e I n p u t . L a s t U s e d G a m e p a d ( )   & &   t h e P l a y e r . G e t L e f t S t i c k S p r i n t ( )   & &   t h e P l a y e r . I s I n I n t e r i o r ( )   & &   ! t h e P l a y e r . G e t I s S p r i n t T o g g l e d ( ) )  
 	 	 	 	 {  
 	 	 	 	 	 s p e e d   =   M a p F (   M i n F (   s p e e d ,   s p e e d R u n n i n g   ) ,   0 . 0 f ,   s p e e d R u n n i n g ,   0 . 0 f ,     s p e e d W a l k i n g M a x   ) ;  
 	 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ W a l k ;  
 	 	 	 	 } 	  
 	 	 	 	  
 	 	 	 	 e l s e   i f   (   s p e e d   >   0 . 8 f   )  
 	 	 	 	 {  
 	 	 	 	 	 s p e e d   =   M i n F (   s p e e d ,   s p e e d R u n n i n g   ) ;  
 	 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ R u n ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 s p e e d   =   s p e e d W a l k i n g M a x ;  
 	 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ W a l k ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 s p e e d   =   M a p F (   M i n F (   s p e e d ,   s p e e d R u n n i n g   ) ,   0 . 0 f ,   s p e e d R u n n i n g ,   0 . 0 f ,     s p e e d W a l k i n g M a x   ) ;  
 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ W a l k ;  
 	 	 	 } 	 	 	  
 	 	 }  
 	 	  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   (   t h e I n p u t . L a s t U s e d G a m e p a d ( )   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . S e t W a l k T o g g l e ( f a l s e ) ;  
 	 	 	 	  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   s p e e d   < =   0 . f   )  
 	 	 	 {  
 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ I d l e ;  
 	 	 	 }  
 	 	 	 e l s e   i f   ( ! t h e G a m e . I s F a d i n g ( )   & &   ! t h e G a m e . I s B l a c k s c r e e n ( ) )  
 	 	 	 {  
 	 	 	 	 i f   (   p l a y e r . G e t I s S p r i n t i n g ( )   )  
 	 	 	 	 { 	  
 	 	 	 	 	 s p e e d   =   s p e e d S p r i n t i n g ;  
 	 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ S p r i n t ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   s p e e d   >   t h e P l a y e r . G e t I n p u t M o d u l e N e e d e d T o R u n ( )  
 	 	 	 	 	 	 & &   (   t h e P l a y e r . I s A c t i o n A l l o w e d (   E I A B _ R u n A n d S p r i n t   )   | |   t h e P l a y e r . I s C o m b a t M u s i c E n a b l e d ( )   )  
 	 	 	 	 	 	 & &   (   (   t h e P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ N o r m a l   & &   ! t h e P l a y e r . G e t I s W a l k T o g g l e d ( )   )  
 	 	 	 	 	 	 	 | |   t h e P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ A l e r t F a r    
 	 	 	 	 	 	 	 | |   (   ! t h e P l a y e r . G e t I s W a l k T o g g l e d ( )   & &   ! t h e P l a y e r . I s I n C o m b a t ( )   & &   V e c L e n g t h 2 D (   s p e e d V e c   )   >   t h e P l a y e r . G e t I n p u t M o d u l e N e e d e d T o R u n ( )   )   )  
 	 	 	 	 	 	 )  
 	 	 	 	 {  
 	 	 	 	 	 s p e e d   =     M i n F (   s p e e d ,   s p e e d R u n n i n g   ) ;  
 	 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ R u n ;  
 	 	 	 	 	  
 	 	 	 	 	 c u r r e n t T i m e   =   E n g i n e T i m e T o F l o a t (   t h e G a m e . G e t E n g i n e T i m e ( )   ) ;  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   l o c a l M o v e D i r e c t i o n   >   0 . 7 f   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   ! i s C h e c k i n g C o m m i t T o R i g h t T u r n   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i s C h e c k i n g C o m m i t T o R i g h t T u r n   =   t r u e ;  
 	 	 	 	 	 	 	 c o m m i t T o R i g h t T u r n T i m e S t a m p   =   c u r r e n t T i m e ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	  
 	 	 	 	 	 	 i f   (   i s C h e c k i n g C o m m i t T o R i g h t T u r n   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   (   c u r r e n t T i m e   > =   c o m m i t T o R i g h t T u r n T i m e S t a m p   +   0 . 2 5   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 d i r e c t i o n S w i t c h T i m e S t a m p D e l t a   =   0 . f ;  
 	 	 	 	 	 	 	 	 i s C h e c k i n g C o m m i t T o R i g h t T u r n   =   f a l s e ;  
 	 	 	 	 	 	 	 	 i s T u r n i n g R i g h t   =   t r u e ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f   (   l o c a l M o v e D i r e c t i o n   <   - 0 . 7 f   )  
 	 	 	 	 	 { 	 	 	 	  
 	 	 	 	 	 	 i f   (   ! i s C h e c k i n g C o m m i t T o L e f t T u r n   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i s C h e c k i n g C o m m i t T o L e f t T u r n   =   t r u e ;  
 	 	 	 	 	 	 	 c o m m i t T o L e f t T u r n T i m e S t a m p   =   c u r r e n t T i m e ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	  
 	 	 	 	 	 	 i f   (   i s C h e c k i n g C o m m i t T o L e f t T u r n   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   (   c u r r e n t T i m e   > =   c o m m i t T o L e f t T u r n T i m e S t a m p   +   0 . 2 5 f   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 d i r e c t i o n S w i t c h T i m e S t a m p D e l t a   =   0 . f ;  
 	 	 	 	 	 	 	 	 i s C h e c k i n g C o m m i t T o L e f t T u r n   =   f a l s e ;  
 	 	 	 	 	 	 	 	 i s T u r n i n g L e f t   =   t r u e ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 } 	  
 	 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   l o c a l M o v e D i r e c t i o n   >   0 . f   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 u s e L e f t T u r n T i m e S t a m p   =   f a l s e ;  
 	 	 	 	 	 	 i f   (   i s T u r n i n g L e f t   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 d i r e c t i o n S w i t c h T i m e S t a m p   =   c u r r e n t T i m e ;  
 	 	 	 	 	 	 	 d i r e c t i o n S w i t c h T i m e S t a m p D e l t a   =   1 . f ;  
 	 	 	 	 	 	 	 s t a r t R i g h t T u r n T i m e S t a m p   =   c u r r e n t T i m e ;  
 	 	 	 	 	 	 	 u s e R i g h t T u r n T i m e S t a m p   =   t r u e ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	  
 	 	 	 	 	 	 i f   (   u s e R i g h t T u r n T i m e S t a m p   & &   l o c a l M o v e D i r e c t i o n   >   0 . 3 f   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   (   c u r r e n t T i m e   > =   s t a r t R i g h t T u r n T i m e S t a m p   +   0 . 2 5   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 d i r e c t i o n S w i t c h T i m e S t a m p D e l t a   =   0 . f ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 i s T u r n i n g L e f t   =   f a l s e ;  
 	 	 	 	 	 	 i s C h e c k i n g C o m m i t T o L e f t T u r n   =   f a l s e ; 	 	 	 	 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f   (   l o c a l M o v e D i r e c t i o n   <   0 . f   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 u s e R i g h t T u r n T i m e S t a m p   =   f a l s e ;  
 	 	 	 	 	 	 i f   (   i s T u r n i n g R i g h t   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 d i r e c t i o n S w i t c h T i m e S t a m p   =   c u r r e n t T i m e ;  
 	 	 	 	 	 	 	 d i r e c t i o n S w i t c h T i m e S t a m p D e l t a   =   1 . f ;  
 	 	 	 	 	 	 	 s t a r t L e f t T u r n T i m e S t a m p   =   c u r r e n t T i m e ;  
 	 	 	 	 	 	 	 u s e L e f t T u r n T i m e S t a m p   =   t r u e ;  
 	 	 	 	 	 	 }  
  
 	 	 	 	 	 	 i f   (   u s e L e f t T u r n T i m e S t a m p   & &   l o c a l M o v e D i r e c t i o n   <   - 0 . 3 f   )  
 	 	 	 	 	 	 { 	 	 	 	 	 	  
 	 	 	 	 	 	 	 i f   (   c u r r e n t T i m e   > =   s t a r t L e f t T u r n T i m e S t a m p   +   0 . 2 5 f   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 d i r e c t i o n S w i t c h T i m e S t a m p D e l t a   =   0 . f ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 i s T u r n i n g R i g h t   =   f a l s e ;  
 	 	 	 	 	 	 i s C h e c k i n g C o m m i t T o R i g h t T u r n   =   f a l s e ; 	 	 	 	 	 	 	  
 	 	 	 	 	 } 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   c u r r e n t T i m e   <   d i r e c t i o n S w i t c h T i m e S t a m p   +   d i r e c t i o n S w i t c h T i m e S t a m p D e l t a   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   l o c a l M o v e D i r e c t i o n   > =   - 0 . 3 f   & &   l o c a l M o v e D i r e c t i o n   < =   0 . 3 f   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   (   ! i s C h e c k i n g C e n t e r e d   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 i s C h e c k i n g C e n t e r e d   =   t r u e ;  
 	 	 	 	 	 	 	 	 d i r e c t i o n C e n t e r e d T i m e S t a m p   =   c u r r e n t T i m e ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 i f   (   c u r r e n t T i m e   > =   d i r e c t i o n C e n t e r e d T i m e S t a m p   +   0 . f   )  
 	 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 	 i s C h e c k i n g C e n t e r e d   =   f a l s e ;  
 	 	 	 	 	 	 	 	 	 d i r e c t i o n S w i t c h T i m e S t a m p D e l t a   =   0 . f ;  
 	 	 	 	 	 	 	 	 	 i s C h e c k i n g C o m m i t T o R i g h t T u r n   =   f a l s e ;  
 	 	 	 	 	 	 	 	 	 i s C h e c k i n g C o m m i t T o L e f t T u r n   =   f a l s e ;  
 	 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 } 	  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 i s C h e c k i n g C e n t e r e d   =   f a l s e ; 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 	 f o r c e W a l k S p e e d   =   t r u e ;  
 	 	 	 	 	 	 s p e e d   =   s p e e d W a l k i n g M a x ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 i s C h e c k i n g C e n t e r e d   =   f a l s e ;  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   f o r c e W a l k S p e e d   )  
 	 	 	 	 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' f o r c e W a l k S p e e d ' ,   1   ) ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' f o r c e W a l k S p e e d ' ,   0   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 s p e e d   =   s p e e d W a l k i n g M a x ;    
 	 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ W a l k ; 	 	 	 	 	  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 s p e e d   =   s p e e d W a l k i n g M a x ;    
 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ W a l k ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f   (   p l a y e r . p l a y e r M o v e T y p e   <   P M T _ W a l k   | |   ( p l a y e r . p l a y e r M o v e T y p e   < =   P M T _ R u n   & &   ! t h e G a m e . I s F o c u s M o d e A c t i v e ( )   & &   ! t h e P l a y e r . I s I n A i r ( ) )   ) 	  
 	 	 { 	  
 	 	 	 i f ( t h e P l a y e r . I s I n I n t e r i o r ( )   & &   p l a y e r . p l a y e r M o v e T y p e   > =   P M T _ W a l k   )  
 	 	 	 {  
 	 	 	 	 i f ( t h e P l a y e r . I s I n C o m b a t ( )   & &   t h e P l a y e r . G e t S t a t P e r c e n t s ( B C S _ S t a m i n a )   < =   0 . f )  
 	 	 	 	 	 t h e P l a y e r . S e t S p r i n t T o g g l e (   f a l s e   ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( ! t h e P l a y e r . I s A c t i o n A l l o w e d (   E I A B _ S p r i n t   )   & &   t h e P l a y e r . I s A c t i o n A l l o w e d (   E I A B _ R u n A n d S p r i n t   )   & &   p l a y e r . p l a y e r M o v e T y p e   > =   P M T _ W a l k )  
 	 	 	 { }  
 	 	 	 e l s e  
 	 	 	 	 t h e P l a y e r . S e t S p r i n t T o g g l e (   f a l s e   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	 	  
 	 	  
 	 	 t e m p I n t   =   ( i n t ) (   p l a y e r . p l a y e r M o v e T y p e   ) ;  
 	 	 p l a y e r . s u b s t a t e M a n a g e r . S e t B e h a v i o r P a r a m B o o l (     ' o n S t e e p S l o p e ' ,   t h e P l a y e r . I s T e r r a i n T o o S t e e p T o R u n U p ( )   ) ;          
 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' t e r r a i n P i t c h ' ,   p l a y e r . t e r r a i n P i t c h   ) ;  
 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' p l a y e r M o v e T y p e ' ,   t e m p I n t   ) ;  
 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' p l a y e r M o v e T y p e F o r O v e r l a y ' ,   t e m p I n t   ) ;  
 	 	 p l a y e r . s u b s t a t e M a n a g e r . S e t B e h a v i o r P a r a m B o o l (   ' r u n I n p u t P r e s s e d ' ,   t h e P l a y e r . I s S p r i n t A c t i o n P r e s s e d ( )   ) ; 	 	  
 	 	 p l a y e r . s u b s t a t e M a n a g e r . S e t B e h a v i o r P a r a m B o o l (   ' i k W e i g h t ' ,     p l a y e r . p l a y e r M o v e T y p e   = =   P M T _ W a l k   | |   p l a y e r . p l a y e r M o v e T y p e   = =   P M T _ I d l e   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 r a w R i g h t J o y V e c . X   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s R i g h t X '   ) ;    
 	 	 r a w R i g h t J o y V e c . Y   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s R i g h t Y '   ) ;  
 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a m e r a S p e e d ' ,   V e c L e n g t h 2 D (   r a w R i g h t J o y V e c   )   ) ;  
 	 	  
 	 	  
 	 	 r e t u r n   s p e e d ;  
 	 }  
  
 	 f u n c t i o n   I m m e r s i v e l y C a l c u l a t e M o v e S p e e d ( )   :   f l o a t  
 	 {  
 	 	 v a r   s p e e d V e c   	 	 :   V e c t o r ;  
 	 	 v a r   s p e e d   	 	 	 :   f l o a t ;  
 	 	 v a r   r a w R i g h t J o y V e c 	 :   V e c t o r ;  
 	 	 v a r   t e m p I n t 	 	 	 :   i n t ;  
 	 	 v a r   t e r r a i n A n g l e s 	 :   E u l e r A n g l e s ;  
 	 	 v a r   c u r r e n t T i m e 	 	 :   f l o a t ;  
 	 	 v a r   f o r c e W a l k S p e e d 	 :   b o o l ;  
  
 	 	 / / I m m e r s i v e M o t i o n + +  
  
 	 	 v a r   l e f t S t i c k L e n g t h   	 	 	 :   f l o a t ;  
 	 	 v a r   s l o w S t a r t   	 	 	 	 	 :   b o o l ;  
  
 	 	 s l o w S t a r t   =   f a l s e ;  
 	 	 l e f t S t i c k L e n g t h   =   _ i n p u t M a g C u r r ;  
  
 	 	 i f (   l e f t S t i c k L e n g t h   >   1 . 0   )   l e f t S t i c k L e n g t h   =   1 . 0 ;  
  
 	 	 / / I m m e r s i v e M o t i o n - -  
  
 	 	 i f   (   t h e P l a y e r . I s C a m e r a C o n t r o l D i s a b l e d (   ' F i n i s h e r '   )   )  
 	 	 {  
 	 	 	 s p e e d   =   0 ;  
 	 	 }  
 	 	 e l s e   i f   (   _ i n p u t L o c o E n a b l e d   )  
 	 	 {  
 	 	 	 / / I m m e r s i v e M o t i o n + +  
 	 	 	 s p e e d   =   l e f t S t i c k L e n g t h   *   s p e e d W a l k i n g M a x ;  
 	 	 	 / / I m m e r s i v e M o t i o n - -  
 	 	 }  
 	 	 e l s e  
 	 	 {  
  
  
 	 	 	 s p e e d 	 =   t h e P l a y e r . s u b s t a t e M a n a g e r . m _ I n p u t O . G e t M o d u l e F ( ) ;  
 	 	 }  
  
  
 	 	 i f (   t h e P l a y e r . I s S w i m m i n g ( )   )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . r a n g e d W e a p o n  
 	 	 	 	 & &   t h e P l a y e r . r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '  
 	 	 	 	 & &   t h e P l a y e r . r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n H o l s t e r '   )  
 	 	 	 {  
 	 	 	 	 s p e e d   =   0 ;  
 	 	 	 }  
  
 	 	 	 / / I m m e r s i v e M o t i o n + +  
 	 	 	 i f (   l e f t S t i c k L e n g t h   < =   0 . 9   )  
 	 	 	 	 s p e e d   =   0 ;  
 	 	 	 / / I m m e r s i v e M o t i o n - -  
 	 	 }  
  
 	 	 p l a y e r . t e r r a i n P i t c h   	 	 =   9 0 . 0 f   -   p l a y e r . s u b s t a t e M a n a g e r . m _ M o v e r O . G e t R e a l S l i d e A n g l e ( ) ;  
  
  
  
  
  
 	 	 i f (   t h e P l a y e r . I s S p r i n t A c t i o n P r e s s e d ( )   & &   s p e e d   >   0 )   / / I m m e r s i v e M o t i o n  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . I s I n C o m b a t ( )  
 	 	 	 	 & &   t h e P l a y e r . m o v e T a r g e t  
 	 	 	 	 & &   V e c D i s t a n c e (   t h e P l a y e r . m o v e T a r g e t . G e t W o r l d P o s i t i o n ( ) ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   )   <   t h e P l a y e r . f i n d M o v e T a r g e t D i s t M a x   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . S e t I s S p r i n t i n g ( t r u e ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . S e t I s S p r i n t i n g ( t r u e ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   (   ! p l a y e r . d i s a b l e S p r i n t i n g T i m e r E n a b l e d   & &   p l a y e r . G e t I s S p r i n t i n g ( )   )  
 	 	 {  
 	 	 	 p l a y e r . d i s a b l e S p r i n t i n g T i m e r E n a b l e d   =   t r u e ;  
 	 	 	 p l a y e r . A d d T i m e r (   ' D i s a b l e S p r i n t i n g T i m e r ' ,   0 . 2 5 f   ) ;  
 	 	 }  
  
  
 	 	 i f   (   p l a y e r . m o d i f y P l a y e r S p e e d   )  
 	 	 {  
 	 	 	 i f   (   s p e e d   >   0 . 0 f   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h e P l a y e r . I s R u n P r e s s e d ( )   )  
 	 	 	 	 	 s p e e d   =   s p e e d R u n n i n g ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 s p e e d   =   C l a m p F (   s p e e d ,   0 . f ,   s p e e d W a l k i n g M a x   ) ;  
 	 	 	 }  
 	 	 }  
  
 	 	 e l s e   i f (   ! t h e P l a y e r . I s A c t i o n A l l o w e d (   E I A B _ S p r i n t   )   & &   t h e P l a y e r . I s A c t i o n A l l o w e d (   E I A B _ R u n A n d S p r i n t   )   & &   ! t h e P l a y e r . I s C o m b a t M u s i c E n a b l e d ( )   )  
 	 	 {  
 	 	 	 i f   (   s p e e d   < =   0 . f   )  
 	 	 	 {  
 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ I d l e ;  
 	 	 	 }  
 	 	 	 e l s e   i f (   t h e P l a y e r . I s S p r i n t A c t i o n P r e s s e d ( )   )  
 	 	 	 {  
 	 	 	 	 	 s p e e d   =   s p e e d R u n n i n g ;  
 	 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ R u n ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ W a l k ;  
 	 	 	 	 s l o w S t a r t   =   t r u e ;  
 	 	 	 }  
 	 	 }  
  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   (   t h e I n p u t . L a s t U s e d G a m e p a d ( )   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . S e t W a l k T o g g l e ( f a l s e ) ;  
 	 	 	 	 / / t h e P l a y e r . S e t S p r i n t T o g g l e ( f a l s e ) ;   / / R G C  
 	 	 	 }  
  
 	 	 	 i f   (   s p e e d   < =   0 . f   )  
 	 	 	 {  
 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ I d l e ;  
 	 	 	 }  
 	 	 	 e l s e   i f   ( ! t h e G a m e . I s F a d i n g ( )   & &   ! t h e G a m e . I s B l a c k s c r e e n ( ) )  
 	 	 	 {  
 	 	 	 	 i f   (   p l a y e r . G e t I s S p r i n t i n g ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f ( p l a y e r . I s I n C o m b a t ( ) )   {  
 	 	 	 	 	 	 s p e e d   =   1 . 5 f ;  
 	 	 	 	 	 }   e l s e   {  
 	 	 	 	 	 	 s p e e d   =   p l a y e r . r g c S p r i n t S p e e d ;  
 	 	 	 	 	 }  
  
 	 	 	 	 	 s p e e d   =   ( l e f t S t i c k L e n g t h   *   ( s p e e d   -   0 . 8 f ) )   +   0 . 8 f ;  
  
 	 	 	 	 	 i f (   s p e e d   > =   1 . 3   )  
 	 	 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ S p r i n t ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ R u n ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f (   p l a y e r . r g c R u n n i n g L a n d i n g   ! =   0 )  
 	 	 	 	 {  
 	 	 	 	 	 s p e e d   =   p l a y e r . r g c R u n n i n g L a n d i n g ;  
 	 	 	 	 	 i f (   s p e e d   >   1 . 2   )  
 	 	 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ S p r i n t ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ R u n ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   p l a y e r . I s I n C o m b a t ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   p l a y e r . I s O n B o a t ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 s p e e d   =   s p e e d S l o w W a l k i n g M a x ;  
 	 	 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ W a l k ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f   (   l e f t S t i c k L e n g t h   > =   0 . 8 f   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 s p e e d   =   s p e e d W a l k i n g M a x ;  
 	 	 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ W a l k ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 s p e e d   =   s p e e d S l o w W a l k i n g M a x ;  
 	 	 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ W a l k ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 s l o w S t a r t   =   t r u e ;  
 	 	 	 	 	 c u r r e n t T i m e   =   E n g i n e T i m e T o F l o a t (   t h e G a m e . G e t E n g i n e T i m e ( )   ) ;  
  
 	 	 	 	 	 i f   (   l o c a l M o v e D i r e c t i o n   >   0 . 7 f   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   ! i s C h e c k i n g C o m m i t T o R i g h t T u r n   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i s C h e c k i n g C o m m i t T o R i g h t T u r n   =   t r u e ;  
 	 	 	 	 	 	 	 c o m m i t T o R i g h t T u r n T i m e S t a m p   =   c u r r e n t T i m e ;  
 	 	 	 	 	 	 }  
  
 	 	 	 	 	 	 i f   (   i s C h e c k i n g C o m m i t T o R i g h t T u r n   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   (   c u r r e n t T i m e   > =   c o m m i t T o R i g h t T u r n T i m e S t a m p   +   0 . 2 5   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 d i r e c t i o n S w i t c h T i m e S t a m p D e l t a   =   0 . f ;  
 	 	 	 	 	 	 	 	 i s C h e c k i n g C o m m i t T o R i g h t T u r n   =   f a l s e ;  
 	 	 	 	 	 	 	 	 i s T u r n i n g R i g h t   =   t r u e ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f   (   l o c a l M o v e D i r e c t i o n   <   - 0 . 7 f   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   ! i s C h e c k i n g C o m m i t T o L e f t T u r n   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i s C h e c k i n g C o m m i t T o L e f t T u r n   =   t r u e ;  
 	 	 	 	 	 	 	 c o m m i t T o L e f t T u r n T i m e S t a m p   =   c u r r e n t T i m e ;  
 	 	 	 	 	 	 }  
  
 	 	 	 	 	 	 i f   (   i s C h e c k i n g C o m m i t T o L e f t T u r n   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   (   c u r r e n t T i m e   > =   c o m m i t T o L e f t T u r n T i m e S t a m p   +   0 . 2 5 f   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 d i r e c t i o n S w i t c h T i m e S t a m p D e l t a   =   0 . f ;  
 	 	 	 	 	 	 	 	 i s C h e c k i n g C o m m i t T o L e f t T u r n   =   f a l s e ;  
 	 	 	 	 	 	 	 	 i s T u r n i n g L e f t   =   t r u e ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
  
 	 	 	 	 	 i f   (   l o c a l M o v e D i r e c t i o n   >   0 . f   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 u s e L e f t T u r n T i m e S t a m p   =   f a l s e ;  
 	 	 	 	 	 	 i f   (   i s T u r n i n g L e f t   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 d i r e c t i o n S w i t c h T i m e S t a m p   =   c u r r e n t T i m e ;  
 	 	 	 	 	 	 	 d i r e c t i o n S w i t c h T i m e S t a m p D e l t a   =   1 . f ;  
 	 	 	 	 	 	 	 s t a r t R i g h t T u r n T i m e S t a m p   =   c u r r e n t T i m e ;  
 	 	 	 	 	 	 	 u s e R i g h t T u r n T i m e S t a m p   =   t r u e ;  
 	 	 	 	 	 	 }  
  
 	 	 	 	 	 	 i f   (   u s e R i g h t T u r n T i m e S t a m p   & &   l o c a l M o v e D i r e c t i o n   >   0 . 3 f   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   (   c u r r e n t T i m e   > =   s t a r t R i g h t T u r n T i m e S t a m p   +   0 . 2 5   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 d i r e c t i o n S w i t c h T i m e S t a m p D e l t a   =   0 . f ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
  
 	 	 	 	 	 	 i s T u r n i n g L e f t   =   f a l s e ;  
 	 	 	 	 	 	 i s C h e c k i n g C o m m i t T o L e f t T u r n   =   f a l s e ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f   (   l o c a l M o v e D i r e c t i o n   <   0 . f   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 u s e R i g h t T u r n T i m e S t a m p   =   f a l s e ;  
 	 	 	 	 	 	 i f   (   i s T u r n i n g R i g h t   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 d i r e c t i o n S w i t c h T i m e S t a m p   =   c u r r e n t T i m e ;  
 	 	 	 	 	 	 	 d i r e c t i o n S w i t c h T i m e S t a m p D e l t a   =   1 . f ;  
 	 	 	 	 	 	 	 s t a r t L e f t T u r n T i m e S t a m p   =   c u r r e n t T i m e ;  
 	 	 	 	 	 	 	 u s e L e f t T u r n T i m e S t a m p   =   t r u e ;  
 	 	 	 	 	 	 }  
  
 	 	 	 	 	 	 i f   (   u s e L e f t T u r n T i m e S t a m p   & &   l o c a l M o v e D i r e c t i o n   <   - 0 . 3 f   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   (   c u r r e n t T i m e   > =   s t a r t L e f t T u r n T i m e S t a m p   +   0 . 2 5 f   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 d i r e c t i o n S w i t c h T i m e S t a m p D e l t a   =   0 . f ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
  
 	 	 	 	 	 	 i s T u r n i n g R i g h t   =   f a l s e ;  
 	 	 	 	 	 	 i s C h e c k i n g C o m m i t T o R i g h t T u r n   =   f a l s e ;  
 	 	 	 	 	 }  
  
 	 	 	 	 	 i f   (   c u r r e n t T i m e   <   d i r e c t i o n S w i t c h T i m e S t a m p   +   d i r e c t i o n S w i t c h T i m e S t a m p D e l t a   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   l o c a l M o v e D i r e c t i o n   > =   - 0 . 3 f   & &   l o c a l M o v e D i r e c t i o n   < =   0 . 3 f   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   (   ! i s C h e c k i n g C e n t e r e d   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 i s C h e c k i n g C e n t e r e d   =   t r u e ;  
 	 	 	 	 	 	 	 	 d i r e c t i o n C e n t e r e d T i m e S t a m p   =   c u r r e n t T i m e ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 i f   (   c u r r e n t T i m e   > =   d i r e c t i o n C e n t e r e d T i m e S t a m p   +   0 . f   )  
 	 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 	 i s C h e c k i n g C e n t e r e d   =   f a l s e ;  
 	 	 	 	 	 	 	 	 	 d i r e c t i o n S w i t c h T i m e S t a m p D e l t a   =   0 . f ;  
 	 	 	 	 	 	 	 	 	 i s C h e c k i n g C o m m i t T o R i g h t T u r n   =   f a l s e ;  
 	 	 	 	 	 	 	 	 	 i s C h e c k i n g C o m m i t T o L e f t T u r n   =   f a l s e ;  
 	 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i s C h e c k i n g C e n t e r e d   =   f a l s e ;  
 	 	 	 	 	 	 }  
  
 	 	 	 	 	 	 f o r c e W a l k S p e e d   =   t r u e ;  
 	 	 	 	 	 	 s p e e d   =   s p e e d W a l k i n g M a x ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 i s C h e c k i n g C e n t e r e d   =   f a l s e ;  
  
 	 	 	 	 	 i f   (   f o r c e W a l k S p e e d   )  
 	 	 	 	 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' f o r c e W a l k S p e e d ' ,   1   ) ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' f o r c e W a l k S p e e d ' ,   0   ) ;  
  
 	 	 	 	 	 i f (   s p e e d   < =   0 . f   )  
 	 	 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ I d l e ;  
 	 	 	 	 	 e l s e   i f (   s p e e d   < =   0 . 8   )  
 	 	 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ W a l k ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 p l a y e r . p l a y e r M o v e T y p e   =   P M T _ R u n ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
  
 	 	 i f   (   p l a y e r . p l a y e r M o v e T y p e   < =   P M T _ W a l k   )  
 	 	 {  
 	 	 	 / / t h e P l a y e r . S e t S p r i n t T o g g l e (   f a l s e   ) ;  
 	 	 }  
  
 	 	 t e m p I n t   =   ( i n t ) (   p l a y e r . p l a y e r M o v e T y p e   ) ;  
 	 	 p l a y e r . s u b s t a t e M a n a g e r . S e t B e h a v i o r P a r a m B o o l (     ' o n S t e e p S l o p e ' ,   t h e P l a y e r . I s T e r r a i n T o o S t e e p T o R u n U p ( )   ) ;  
 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' t e r r a i n P i t c h ' ,   p l a y e r . t e r r a i n P i t c h   ) ;  
 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' p l a y e r M o v e T y p e ' ,   t e m p I n t   ) ;  
 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' p l a y e r M o v e T y p e F o r O v e r l a y ' ,   t e m p I n t   ) ;  
 	 	 p l a y e r . s u b s t a t e M a n a g e r . S e t B e h a v i o r P a r a m B o o l (   ' r u n I n p u t P r e s s e d ' ,   t h e P l a y e r . I s S p r i n t A c t i o n P r e s s e d ( )   ) ;  
 	 	 p l a y e r . s u b s t a t e M a n a g e r . S e t B e h a v i o r P a r a m B o o l (   ' i k W e i g h t ' ,     p l a y e r . p l a y e r M o v e T y p e   = =   P M T _ W a l k   | |   p l a y e r . p l a y e r M o v e T y p e   = =   P M T _ I d l e   ) ;  
  
 	 	 r a w R i g h t J o y V e c . X   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s R i g h t X '   ) ;  
 	 	 r a w R i g h t J o y V e c . Y   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s R i g h t Y '   ) ;  
 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a m e r a S p e e d ' ,   V e c L e n g t h 2 D (   r a w R i g h t J o y V e c   )   ) ;  
  
 	 	 / *   I m m e r s i v e   M o t i o n   D e b u g  
 	 	 c u r r e n t T i m e   =   E n g i n e T i m e T o F l o a t (   t h e G a m e . G e t E n g i n e T i m e ( )   ) ;  
 	 	 i f (   c u r r e n t T i m e   >   n e x t T i m e   )  
 	 	 {  
 	 	 	 n e x t T i m e   =   c u r r e n t T i m e   +   6 . 0 ;  
 	 	 	 t h e P l a y e r . D i s p l a y H u d M e s s a g e (   F l o a t T o S t r i n g (   s p e e d   )   ) ;  
 	 	 }  
 	 	 * /  
  
 	 	 / /   I m m e r s i v e M o t i o n + +  
 	 	 i f (   t h e P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' i n J u m p S t a t e '   )   = =   1 . f   & &   s p e e d   >   0 . 8 5   )  
 	 	 {  
 	 	 	 i f (   s p e e d   >   1 . 2   )  
 	 	 	 	 t h e P l a y e r . R g c E n a b l e R u n n i n g L a n d i n g (   1 . 2 ,   1 . 1   ) ;  
 	 	 	 e l s e  
 	 	 	 	 t h e P l a y e r . R g c E n a b l e R u n n i n g L a n d i n g (   0 . 9 ,   0 . 9   ) ;  
 	 	 }  
 	 	 i f (   s p e e d   >   0   & &   p r e v i o u s S p e e d   = =   0   & &   t h e P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' E x p l o r a t i o n '   & &   s l o w S t a r t   )  
 	 	 {  
 	 	 	 t h e P l a y e r . R g c S t a r t S l o w ( ) ;  
 	 	 }  
 	 	 / /   I m m e r s i v e M o t i o n - -  
  
 	 	 r e t u r n   s p e e d ;  
 	 }  
  
 	 p r i v a t e   v a r   f a s t T u r n E n a b l e d   :   b o o l ;  
 	 p r i v a t e   f u n c t i o n   P r o c e s s M o v e m e n t E v e n t ( )  
 	 {  
 	 	 v a r   w a l k T u r n D a m p S p e e d   :   f l o a t ;  
 	 	 v a r   d i r   :     f l o a t   =     A b s F (   l o c a l M o v e D i r e c t i o n   ) ;  
 	 	 i f   (   a n g u l a r I n p u t S p e e d   >   0   )  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	 i f   (   d i r   > =   0 . 8     & &   (   ! p l a y e r . r a n g e d W e a p o n   | |   p l a y e r . r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n W a i t '   )   )  
 	 	 	 {  
 	 	 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' l a t c h W a l k D i r e c t i o n ' ,   1 . f   ) ;  
 	 	 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' w a l k T u r n D a m p S p e e d ' ,   0 . 5 f   ) ;  
 	 	 	 	 f a s t T u r n E n a b l e d   =   f a l s e ;  
 	 	 	 	 p l a y e r . R a i s e E v e n t (   ' Q u i c k T u r n W a l k '   ) ;  
 	 	 	 	  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   a n g u l a r I n p u t S p e e d   >   1 0 . f   & &   d i r   > =   0 . 2 5   & &   ! p l a y e r . l A x i s R e l e a s e d A f t e r C o u n t e r N o C A   )  
 	 	 	 	 	 f a s t T u r n E n a b l e d   =   t r u e ;  
 	 	 	 }  
 	 	 }  
  
 	 	 i f   (   d i r   < =   0 . 0 2 7 f   )    
 	 	 {  
 	 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' l a t c h W a l k D i r e c t i o n ' ,   0 . f   ) ; 	  
 	 	 	 f a s t T u r n E n a b l e d   =   f a l s e ;  
 	 	 }  
 	 	  
 	 	 p l a y e r . S e t B e h a v i o r V a r i a b l e (   ' f a s t T u r n E n a b l e d ' ,   ( f l o a t ) f a s t T u r n E n a b l e d   ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e R e q u e s t e d D i r e c t i o n V a r i a b l e s ( p l a y e r H e a d i n g W S   :   f l o a t ,   c a m e r a H e a d i n g W S   :   f l o a t )  
 	 {  
 	 	 v a r   o r i e n t a t i o n T a r g e t 	 :   E O r i e n t a t i o n T a r g e t ;  
 	 	 v a r   u s e H e a d i n g W S 	 	 :   f l o a t ;  
 	 	 v a r   u s e F a c i n g W S 	 	 	 :   f l o a t ;  
 	 	 v a r   t a r g e t 	 	 	 	 :   C G a m e p l a y E n t i t y ;  
 	 	  
 	 	 v a r   c a n F a c e T a r g e t 	 	 :   b o o l ;  
 	 	 v a r   p l a y e r T o T a r g e t V e c 	 :   V e c t o r ;  
  
 	 	 u s e H e a d i n g W S   =   p l a y e r H e a d i n g W S ;  
 	 	 u s e F a c i n g W S   =   c a m e r a H e a d i n g W S ;  
  
 	 	 o r i e n t a t i o n T a r g e t   =   p l a y e r . G e t O r i e n t a t i o n T a r g e t ( ) ;  
 	 	 i f   (   o r i e n t a t i o n T a r g e t   = =   O T _ C a m e r a   )  
 	 	 {  
 	 	 	 u s e F a c i n g W S   =   c a m e r a H e a d i n g W S ;  
 	 	 }  
 	 	 e l s e   i f   (   o r i e n t a t i o n T a r g e t   = =   O T _ C a m e r a O f f s e t   )  
 	 	 {  
 	 	 	 u s e F a c i n g W S   =   c a m e r a H e a d i n g W S   -   p l a y e r . G e t O T C a m e r a O f f s e t ( ) ;  
 	 	 }  
 	 	 e l s e   i f   (   o r i e n t a t i o n T a r g e t   = =   O T _ A c t o r   )  
 	 	 {  
 	 	 	 t a r g e t   =   p l a y e r . G e t T a r g e t ( ) ;  
 	 	 	  
 	 	 	 i f   (   ! t a r g e t   )  
 	 	 	 	 t a r g e t   =   p l a y e r . m o v e T a r g e t ;  
 	 	 	 	  
 	 	 	 i f   (   p l a y e r . I s C u r r e n t S i g n C h a n n e l e d ( )   & &   p l a y e r . I s I n C o m b a t A c t i o n ( )   )  
 	 	 	 {  
 	 	 	 	 i f   (   p l a y e r . G e t C u r r e n t l y C a s t S i g n ( )   = =   S T _ Q u e n   )  
 	 	 	 	 {  
 	 	 	 	 	 t a r g e t   =   p l a y e r . m o v e T a r g e t ;  
 	 	 	 	 	 c a n F a c e T a r g e t   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   p l a y e r . G e t C u r r e n t l y C a s t S i g n ( )   = =   S T _ I g n i   )  
 	 	 	 	 	 t a r g e t   =   p l a y e r . G e t D i s p l a y T a r g e t ( ) ;  
 	 	 	 	 	 c a n F a c e T a r g e t   =   t r u e ;  
 	 	 	 }  
  
 	 	 	 i f   (   t a r g e t   )  
 	 	 	 { 	 	  
 	 	 	 	 p l a y e r T o T a r g e t V e c   =   t a r g e t . G e t W o r l d P o s i t i o n ( ) -   p l a y e r . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	  
 	 	 	 	 i f   (   ! c a n F a c e T a r g e t   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   p l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ A l e r t N e a r   )  
 	 	 	 	 	 	 c a n F a c e T a r g e t   =   t r u e ;  
 	 	 	 	 	 e l s e   i f   (   p l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ G u a r d e d   & &   V e c L e n g t h (   p l a y e r T o T a r g e t V e c   )   <   p l a y e r . f i n d M o v e T a r g e t D i s t   )  
 	 	 	 	 	 	 c a n F a c e T a r g e t   =   t r u e ;  
 	 	 	 	 	 e l s e   i f   (   p l a y e r . I s A c t o r L o c k e d T o T a r g e t ( )   & &   ! p l a y e r . I s H a r d L o c k E n a b l e d ( )   )  
 	 	 	 	 	 	 c a n F a c e T a r g e t   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   c a n F a c e T a r g e t   & &   t a r g e t   )  
 	 	 	 	 u s e F a c i n g W S   =   V e c H e a d i n g (   p l a y e r T o T a r g e t V e c   ) ;  
 	 	 	 e l s e  
 	 	 	 	 u s e F a c i n g W S   =   p l a y e r . G e t H e a d i n g ( ) ; 	 	  
 	 	 }  
 	 	 e l s e   i f   (   o r i e n t a t i o n T a r g e t   = =   O T _ P l a y e r   )  
 	 	 {  
 	 	 	 u s e F a c i n g W S   =   p l a y e r . G e t H e a d i n g ( ) ;  
 	 	 }  
 	 	 e l s e   i f   (   o r i e n t a t i o n T a r g e t   = =   O T _ C u s t o m H e a d i n g   )  
 	 	 {  
 	 	 	 u s e F a c i n g W S   =   p l a y e r . G e t O r i e n t a t i o n T a r g e t C u s t o m H e a d i n g ( ) ;  
 	 	 }  
 	 	  
 	 	 p l a y e r . G e t V i s u a l D e b u g ( ) . A d d A r r o w (   ' h e a d i n g 5 ' ,   p l a y e r . G e t W o r l d P o s i t i o n ( ) ,   p l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c F r o m H e a d i n g (   u s e F a c i n g W S   ) ,   1 . f ,   0 . 4 f ,   0 . 2 f ,   t r u e ,   C o l o r ( 0 , 0 , 2 5 5 ) ,   t r u e   ) ;  
 	 	 p l a y e r . U p d a t e R e q u e s t e d D i r e c t i o n V a r i a b l e s (   u s e H e a d i n g W S ,   u s e F a c i n g W S   ) ;  
 	 }  
  
 } ;  
 