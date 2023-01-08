/ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / * *   	 �   2 0 1 5   C D   P R O J E K T   S . A .   A l l   r i g h t s   r e s e r v e d .  
 / * *   	 T H E   W I T C H E R �   i s   a   t r a d e m a r k   o f   C D   P R O J E K T   S .   A .  
 / * *   	 T h e   W i t c h e r   g a m e   i s   b a s e d   o n   t h e   p r o s e   o f   A n d r z e j   S a p k o w s k i .  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 e n u m   E M u t a t i o n F e e d b a c k T y p e  
 {  
 	 M F T _ P l a y H i d e ,  
 	 M F T _ P l a y O n c e ,  
 	 M F T _ P l a y R e p e a t  
 	  
 }  
 	  
 c l a s s   C R 4 H u d M o d u l e W o l f H e a d   e x t e n d s   C R 4 H u d M o d u l e B a s e  
 {  
 	  
 	 p r i v a t e 	 v a r   m _ f x S e t V i t a l i t y 	 	 	 	 	 	 :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e 	 v a r   m _ f x S e t S t a m i n a 	 	 	 	 	 	 :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e 	 v a r   m _ f x S e t T o x i c i t y 	 	 	 	 	 	 :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e 	 v a r   m _ f x S e t E x p e r i e n c e 	 	 	 	 	 :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e 	 v a r   m _ f x S e t L o c k e d T o x i c i t y 	 	 	 	 :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e 	 v a r   m _ f x S e t D e a d l y T o x i c i t y 	 	 	 	 :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e 	 v a r   m _ f x S h o w S t a m i n a N e e d e d 	 	 	 	 :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e 	 v a r   m _ f x S w i t c h W o l f A c t i v a t i o n 	 	 	 :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x S e t S i g n I c o n S F F 	 	 	 	 	 :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x S e t S i g n T e x t S F F 	 	 	 	 	 :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x S e t F o c u s P o i n t s S F F 	 	 	 	 :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r 	 m _ f x S e t F o c u s P r o g r e s s S F F 	 	 	 	 :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x L o c k F o c u s P o i n t s S F F 	 	 	 	 :   C S c r i p t e d F l a s h F u n c t i o n ; 	  
 	 p r i v a t e   v a r   m _ f x S e t C i r i A s M a i n C h a r a c t e r 	 	 	 :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x S e t C o a t O f A r m s 	 	 	 	 	 :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x S e t S h o w N e w L e v e l I n d i c a t o r 	 	 :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x S e t A l w a y s D i s p l a y e d 	 	 	 	 :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x s h o w M u t a t i o n F e e d b a c k 	 	 	 :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	  
 	 p r i v a t e 	 v a r 	 m _ L a s t V i t a l i t y 	 	 	 	 :   f l o a t ;  
 	 p r i v a t e 	 v a r 	 m _ L a s t M a x V i t a l i t y 	 	 	 :   f l o a t ;  
 	 p r i v a t e 	 v a r 	 m _ L a s t S t a m i n a 	 	 	 	 :   f l o a t ; 	  
 	 p r i v a t e 	 v a r 	 m _ L a s t M a x S t a m i n a 	 	 	 :   f l o a t ; 	  
 	 p r i v a t e 	 v a r 	 m _ L a s t E x p e r i e n c e 	 	 	 :   f l o a t ; 	  
 	 p r i v a t e 	 v a r 	 m _ L a s t M a x E x p e r i e n c e 	 	 	 :   f l o a t ;  
 	 p r i v a t e 	 v a r 	 m _ L a s t T o x i c i t y 	 	 	 	 :   f l o a t ;  
 	 p r i v a t e 	 v a r 	 m _ L a s t L o c k e d T o x i c i t y 	 	 :   f l o a t ;  
 	 p r i v a t e 	 v a r 	 m _ L a s t M a x T o x i c i t y 	 	 	 :   f l o a t ;  
 	 p r i v a t e 	 v a r 	 m _ b L a s t D e a d l y T o x i c i t y 	 	 :   b o o l ;  
 	 p r i v a t e 	 v a r 	 m _ m e d a l l i o n A c t i v a t e d 	 	 :   b o o l ;  
 	 p r i v a t e   v a r   m _ o v e l o a d e d I c o n V i s i b l e 	 	 :   b o o l ;  
 	 p r i v a t e   v a r   m _ f o c u s P o i n t s 	 	 	 	 :   i n t ;  
 	 p r i v a t e   v a r   m _ f o c u s P r o g r e s s 	 	 	 	 :   f l o a t ;  
 	 p r i v a t e   v a r   m _ i C u r r e n t P o s i t i v e E f f e c t s S i z e   :   i n t ;  
 	 p r i v a t e   v a r   m _ i C u r r e n t N e g a t i v e E f f e c t s S i z e   :   i n t ;  
 	 p r i v a t e   v a r   m _ s i g n I c o n N a m e   	 	 	 	 :   s t r i n g ;  
 	 p r i v a t e   v a r   m _ C u r r e n t S e l e c t e d S i g n   	 	 :   E S i g n T y p e ;  
 	 p r i v a t e   v a r   m _ I s P l a y e r C i r i 	 	 	 	 :   b o o l ;  
 	  
 	 p r i v a t e   v a r   m _ c u r T o x i c i t y 	 	 	 	 :   f l o a t ;  
 	 p r i v a t e   v a r   m _ l o c k e d T o x i c i t y 	 	 	 :   f l o a t ;  
 	 p r i v a t e   v a r   m _ c u r V i t a l i t y 	 	 	 	 :   f l o a t ;  
 	 p r i v a t e   v a r   m _ m a x V i t a l i t y 	 	 	 	 :   f l o a t ;  
 	 	  
 	 	  
 	 	  
 	 d e f a u l t   m _ i C u r r e n t P o s i t i v e E f f e c t s S i z e   =   0 ;  
 	 d e f a u l t   m _ i C u r r e n t N e g a t i v e E f f e c t s S i z e   =   0 ;  
 	 d e f a u l t   m _ I s P l a y e r C i r i 	 	 	 	     =   f a l s e ;  
  
 	   e v e n t   O n C o n f i g U I ( )  
 	 {  
 	 	 v a r   f l a s h M o d u l e   :   C S c r i p t e d F l a s h S p r i t e ;  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	  
 	 	 m _ a n c h o r N a m e   =   " m c A n c h o r W o l f H e a d " ;  
 	 	  
 	 	 s u p e r . O n C o n f i g U I ( ) ;  
 	 	  
 	 	 f l a s h M o d u l e   =   G e t M o d u l e F l a s h ( ) ; 	  
 	 	  
 	 	 m _ f x S e t V i t a l i t y 	 	 	 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t V i t a l i t y "   ) ;  
 	 	 m _ f x S e t S t a m i n a 	 	 	 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t S t a m i n a "   ) ;  
 	 	 m _ f x S e t T o x i c i t y 	 	 	 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t T o x i c i t y "   ) ;  
 	 	 m _ f x S e t E x p e r i e n c e 	 	 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t E x p e r i e n c e "   ) ;  
 	 	 m _ f x S e t L o c k e d T o x i c i t y 	 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t L o c k e d T o x i c i t y "   ) ;  
 	 	 m _ f x S e t D e a d l y T o x i c i t y 	 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t D e a d l y T o x i c i t y "   ) ;  
 	 	 m _ f x S h o w S t a m i n a N e e d e d 	 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s h o w S t a m i n a N e e d e d "   ) ;  
 	 	 m _ f x S w i t c h W o l f A c t i v a t i o n 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s w i t c h W o l f A c t i v a t i o n "   ) ;  
 	 	 m _ f x S e t S i g n I c o n S F F   	 	 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t S i g n I c o n "   ) ;  
 	 	 m _ f x S e t S i g n T e x t S F F   	 	 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t S i g n T e x t "   ) ;  
 	 	 m _ f x S e t F o c u s P o i n t s S F F 	 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t F o c u s P o i n t s "   ) ;  
 	 	 m _ f x S e t F o c u s P r o g r e s s S F F 	 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " U p d a t e F o c u s P o i n t s B a r "   ) ;  
 	 	 m _ f x L o c k F o c u s P o i n t s S F F 	 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " l o c k F o c u s P o i n t s "   ) ;  
 	 	 m _ f x S e t C i r i A s M a i n C h a r a c t e r 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t C i r i A s M a i n C h a r a c t e r "   ) ;  
 	 	 m _ f x S e t C o a t O f A r m s 	 	 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t C o a t O f A r m s "   ) ;  
 	 	 m _ f x S e t S h o w N e w L e v e l I n d i c a t o r 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t S h o w N e w L e v e l I n d i c a t o r "   ) ;  
 	 	 m _ f x S e t A l w a y s D i s p l a y e d 	 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t A l w a y s D i s p l a y e d "   ) ;  
 	 	 m _ f x s h o w M u t a t i o n F e e d b a c k 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s h o w M u t a t i o n F e e d b a c k "   ) ;  
 	 	  
 	 	 m _ C u r r e n t S e l e c t e d S i g n   =   t h e P l a y e r . G e t E q u i p p e d S i g n ( ) ;  
 	 	 m _ f x S e t S i g n I c o n S F F . I n v o k e S e l f O n e A r g ( F l a s h A r g S t r i n g ( G e t S i g n I c o n ( ) ) ) ;  
 	 	  
 	 	 S e t T i c k I n t e r v a l (   0 . 5   ) ;  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 i f   ( h u d )  
 	 	 {  
 	 	 	 h u d . U p d a t e H u d C o n f i g ( ' W o l f M e d a l i o n ' ,   t r u e ) ;  
 	 	 }  
 	 	 D i s p l a y N e w L e v e l I n d i c a t o r ( ) ;  
 	 	  
 	 	 U p d a t e C o a t O f A r m s ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   D i s p l a y M u t a t i o n F e e d b a c k (   v a l u e   :   E M u t a t i o n F e e d b a c k T y p e   )  
 	 {  
 	 	 m _ f x s h o w M u t a t i o n F e e d b a c k . I n v o k e S e l f O n e A r g ( F l a s h A r g I n t (   v a l u e   ) ) ;  
 	 }  
 	  
 	 f u n c t i o n   D i s p l a y N e w L e v e l I n d i c a t o r ( )  
 	 {  
 	 	 v a r   l e v e l M a n a g e r   :   W 3 L e v e l M a n a g e r ;  
 	 	 l e v e l M a n a g e r   =   G e t W i t c h e r P l a y e r ( ) . l e v e l M a n a g e r ;  
 	 	 i f (   l e v e l M a n a g e r . G e t P o i n t s F r e e ( E S k i l l P o i n t )   >   0 )  
 	 	 {  
 	 	 	 i f (   ! t h e P l a y e r . I s C i r i ( )   )  
 	 	 	 {  
 	 	 	 	 m _ f x S e t S h o w N e w L e v e l I n d i c a t o r . I n v o k e S e l f O n e A r g ( F l a s h A r g B o o l ( t r u e ) ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 m _ f x S e t S h o w N e w L e v e l I n d i c a t o r . I n v o k e S e l f O n e A r g ( F l a s h A r g B o o l ( f a l s e ) ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 m _ f x S e t S h o w N e w L e v e l I n d i c a t o r . I n v o k e S e l f O n e A r g ( F l a s h A r g B o o l ( f a l s e ) ) ;  
 	 	 }  
 	 }  
  
 	 e v e n t   O n T i c k (   t i m e D e l t a   :   f l o a t   )  
 	 {  
 	 	 U p d a t e V i t a l i t y ( ) ;  
 	 	 U p d a t e S t a m i n a ( ) ;  
 	 	 U p d a t e T o x i c i t y ( ) ;  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 / / U p d a t e S i g n D a t a ( ) ;  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	  
 	 	 i f   (   ! C a n T i c k (   t i m e D e l t a   )   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 U p d a t e E x p e r i e n c e ( ) ;  
 	 	 U p d a t e M e d a l l i o n ( ) ;  
 	 	 U p d a t e F o c u s P o i n t s ( ) ;  
 	 	 U p d a t e S t a t e B y P l a y e r ( ) ;  
 	 	  
 	 	  
 	 	 i f   (   t h e P l a y e r . I s C o m b a t M u s i c E n a b l e d ( )   | |   ( m _ c u r T o x i c i t y   >   0 . f   | |   m _ l o c k e d T o x i c i t y   >   0 . f )   | |   ( m _ c u r V i t a l i t y   <   m _ m a x V i t a l i t y )   )  
 	 	 	 S e t A l w a y s D i s p l a y e d (   t r u e   ) ;  
 	 	 e l s e  
 	 	 	 S e t A l w a y s D i s p l a y e d (   f a l s e   ) ; 	  
 	 }  
  
 	 p u b l i c   f u n c t i o n   U p d a t e V i t a l i t y ( )   :   v o i d  
 	 {  
 	 	 v a r   l _ c u r r e n t V i t a l i t y   	 	 :   f l o a t ;  
 	 	 v a r   l _ c u r r e n t M a x V i t a l i t y   	 :   f l o a t ;  
 	 	  
 	 	 t h e P l a y e r . G e t S t a t s (   B C S _ V i t a l i t y ,   l _ c u r r e n t V i t a l i t y ,   l _ c u r r e n t M a x V i t a l i t y   ) ;  
  
 	 	 m _ c u r V i t a l i t y   =   l _ c u r r e n t V i t a l i t y ;  
 	 	 m _ m a x V i t a l i t y   =   l _ c u r r e n t M a x V i t a l i t y ;  
  
 	 	 i f (   l _ c u r r e n t V i t a l i t y   ! =   m _ L a s t V i t a l i t y   | |     l _ c u r r e n t M a x V i t a l i t y   ! =   m _ L a s t M a x V i t a l i t y   )  
 	 	 {  
 	 	 	  
 	 	 	 m _ f x S e t V i t a l i t y . I n v o k e S e l f O n e A r g (   F l a s h A r g N u m b e r (     l _ c u r r e n t V i t a l i t y   /   l _ c u r r e n t M a x V i t a l i t y   )   ) ;  
 	 	 	 m _ L a s t V i t a l i t y   =   l _ c u r r e n t V i t a l i t y ;  
 	 	 	 m _ L a s t M a x V i t a l i t y   =   l _ c u r r e n t M a x V i t a l i t y ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   v a r   p l a y S t a m i n a S o u n d C u e   :   b o o l ;  
 	  
 	 p u b l i c   f u n c t i o n   U p d a t e S t a m i n a ( )   :   v o i d  
 	 {  
 	 	 v a r   l _ c u r S t a m i n a   	 	 	 	 :   f l o a t ;  
 	 	 v a r   l _ c u r M a x S t a m i n a   	 	 	 :   f l o a t ;  
 	 	 v a r   l _ t o o L o w S t a m i n a I n d i c a t i o n   	 :   f l o a t   =   t h e P l a y e r . G e t S h o w T o L o w S t a m i n a I n d i c a t i o n ( ) ;  
  
 	 	 t h e P l a y e r . G e t S t a t s (   B C S _ S t a m i n a ,   l _ c u r S t a m i n a ,   l _ c u r M a x S t a m i n a   ) ;  
 	 	  
 	 	 i f   (   m _ L a s t S t a m i n a   ! =   l _ c u r S t a m i n a   | |   m _ L a s t M a x S t a m i n a   ! =   l _ c u r M a x S t a m i n a   )  
 	 	 { 	 	 	  
 	 	 	 m _ f x S e t S t a m i n a . I n v o k e S e l f O n e A r g (   F l a s h A r g N u m b e r   (   l _ c u r S t a m i n a   /   l _ c u r M a x S t a m i n a   )   ) ;  
 	 	 	  
 	 	 	 m _ L a s t S t a m i n a   	   =   l _ c u r S t a m i n a ;  
 	 	 	 m _ L a s t M a x S t a m i n a   =   l _ c u r M a x S t a m i n a ;  
 	 	 	  
 	 	 	 i f   (   l _ c u r S t a m i n a   < =   l _ c u r M a x S t a m i n a * 0 . 6 0   )    
 	 	 	 	 p l a y S t a m i n a S o u n d C u e   =   t r u e ;  
 	 	 	 	  
 	 	 	 i f   (   l _ c u r S t a m i n a   < =   0   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . S o u n d E v e n t ( " g u i _ n o _ s t a m i n a " ) ;  
 	 	 	 	 t h e G a m e . V i b r a t e C o n t r o l l e r V e r y L i g h t ( ) ;    
 	 	 	 }  
 	 	 	 e l s e   i f   (   l _ c u r S t a m i n a   > =   l _ c u r M a x S t a m i n a   & &   p l a y S t a m i n a S o u n d C u e   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . S o u n d E v e n t ( " g u i _ s t a m i n a _ r e c h a r g e d " ) ;  
 	 	 	 	 t h e G a m e . V i b r a t e C o n t r o l l e r V e r y L i g h t ( ) ;    
 	 	 	 	 p l a y S t a m i n a S o u n d C u e   =   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f (   l _ t o o L o w S t a m i n a I n d i c a t i o n   >   0   )  
 	 	 {  
 	 	 	 m _ f x S h o w S t a m i n a N e e d e d . I n v o k e S e l f O n e A r g (   F l a s h A r g N u m b e r   (   l _ t o o L o w S t a m i n a I n d i c a t i o n   /   l _ c u r M a x S t a m i n a   )   ) ;  
 	 	 	 t h e P l a y e r . S e t S h o w T o L o w S t a m i n a I n d i c a t i o n (   0   ) ;  
 	 	 }  
 	 }  
  
 	 p u b l i c   f u n c t i o n   U p d a t e T o x i c i t y ( )   :   v o i d  
 	 {  
 	 	 v a r   c u r T o x i c i t y   	 :   f l o a t ; 	  
 	 	 v a r   c u r M a x T o x i c i t y   	 :   f l o a t ;  
 	 	 v a r   c u r L o c k e d T o x i c i t y :   f l o a t ;  
 	 	 v a r   d a m a g e T h r e s h o l d 	 :   f l o a t ;  
 	 	 v a r   c u r D e a d l y T o x i c i t y   :   b o o l ;  
 	 	  
 	 	 t h e P l a y e r . G e t S t a t s (   B C S _ T o x i c i t y ,   c u r T o x i c i t y ,   c u r M a x T o x i c i t y   ) ;  
 	 	  
 	 	 c u r L o c k e d T o x i c i t y   =   t h e P l a y e r . G e t S t a t ( B C S _ T o x i c i t y )   -   c u r T o x i c i t y ;  
 	 	  
 	 	  
 	 	 m _ c u r T o x i c i t y   =   c u r T o x i c i t y ;  
 	 	 m _ l o c k e d T o x i c i t y   =   c u r L o c k e d T o x i c i t y ;  
 	 	  
 	 	 i f   (   m _ L a s t T o x i c i t y   ! =   c u r T o x i c i t y   | |   m _ L a s t M a x T o x i c i t y   ! =   c u r M a x T o x i c i t y   | |   m _ L a s t L o c k e d T o x i c i t y   ! =   c u r L o c k e d T o x i c i t y   )  
 	 	 {  
 	 	 	  
 	 	 	 i f (   m _ L a s t L o c k e d T o x i c i t y   ! =   c u r L o c k e d T o x i c i t y   | |   m _ L a s t M a x T o x i c i t y   ! =   c u r M a x T o x i c i t y )  
 	 	 	 {  
 	 	 	 	 m _ f x S e t L o c k e d T o x i c i t y . I n v o k e S e l f O n e A r g (   F l a s h A r g N u m b e r (   (   c u r L o c k e d T o x i c i t y   ) /   c u r M a x T o x i c i t y   )   ) ;  
 	 	 	 	 m _ L a s t L o c k e d T o x i c i t y   =   c u r L o c k e d T o x i c i t y ;  
 	 	 	 }  
 	 	 	 m _ f x S e t T o x i c i t y . I n v o k e S e l f O n e A r g (   F l a s h A r g N u m b e r (   (   c u r T o x i c i t y   +   m _ L a s t L o c k e d T o x i c i t y   ) /   c u r M a x T o x i c i t y   )   ) ;  
 	 	 	 m _ L a s t T o x i c i t y   	 =   c u r T o x i c i t y ;  
 	 	 	 m _ L a s t M a x T o x i c i t y   =   c u r M a x T o x i c i t y ;  
 	 	 	  
 	 	 	 d a m a g e T h r e s h o l d   =   G e t W i t c h e r P l a y e r ( ) . G e t T o x i c i t y D a m a g e T h r e s h o l d ( ) ;  
 	 	 	 c u r D e a d l y T o x i c i t y   =   (   ( c u r T o x i c i t y   +   c u r L o c k e d T o x i c i t y )   > =   d a m a g e T h r e s h o l d   *   c u r M a x T o x i c i t y   ) ;    
 	 	 	 i f (   m _ b L a s t D e a d l y T o x i c i t y   ! =   c u r D e a d l y T o x i c i t y   )    
 	 	 	 {  
 	 	 	 	 m _ f x S e t D e a d l y T o x i c i t y . I n v o k e S e l f O n e A r g (   F l a s h A r g B o o l (   c u r D e a d l y T o x i c i t y   )   ) ;  
 	 	 	 	 m _ b L a s t D e a d l y T o x i c i t y   =   c u r D e a d l y T o x i c i t y ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 }  
 	 }  
  
 	 p u b l i c   f u n c t i o n   U p d a t e E x p e r i e n c e ( )   :   v o i d  
 	 {  
 	 	 v a r   c u r E x p e r i e n c e   	 :   f l o a t ;  
 	 	 v a r   c u r M a x E x p e r i e n c e   	 :   f l o a t ;  
 	 	  
 	 	 c u r E x p e r i e n c e   =   G e t C u r r e n t E x p e r i e n c e ( )   -   G e t L e v e l E x p e r i e n c e ( ) ;  
 	 	 c u r M a x E x p e r i e n c e   =   G e t T a r g e t E x p e r i e n c e ( )   -   G e t L e v e l E x p e r i e n c e ( ) ;  
 	 	  
 	 	 i f   (   m _ L a s t E x p e r i e n c e   ! =   c u r E x p e r i e n c e   | |   m _ L a s t M a x E x p e r i e n c e   ! =   c u r M a x E x p e r i e n c e   )  
 	 	 { 	 	 	  
 	 	 	 m _ f x S e t E x p e r i e n c e . I n v o k e S e l f O n e A r g (   F l a s h A r g N u m b e r ( c u r E x p e r i e n c e   /   c u r M a x E x p e r i e n c e ) ) ;  
 	 	 	  
 	 	 	 m _ L a s t E x p e r i e n c e   	   =   c u r E x p e r i e n c e ;  
 	 	 	 m _ L a s t M a x E x p e r i e n c e   =   c u r M a x E x p e r i e n c e ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   G e t C u r r e n t E x p e r i e n c e ( )   :   f l o a t  
 	 {  
 	 	 v a r   l e v e l M a n a g e r   :   W 3 L e v e l M a n a g e r ;  
 	 	  
 	 	 l e v e l M a n a g e r   =   G e t W i t c h e r P l a y e r ( ) . l e v e l M a n a g e r ;  
 	 	  
 	 	 r e t u r n   l e v e l M a n a g e r . G e t P o i n t s T o t a l ( E E x p e r i e n c e P o i n t ) ; ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   G e t L e v e l E x p e r i e n c e ( )   :   f l o a t  
 	 {  
 	 	 v a r   l e v e l M a n a g e r   :   W 3 L e v e l M a n a g e r ;  
 	 	  
 	 	 l e v e l M a n a g e r   =   G e t W i t c h e r P l a y e r ( ) . l e v e l M a n a g e r ;  
 	 	 r e t u r n   l e v e l M a n a g e r . G e t T o t a l E x p F o r C u r r L e v e l ( ) ;  
 	 }  
  
 	 p r i v a t e   f u n c t i o n   G e t T a r g e t E x p e r i e n c e ( )   :   f l o a t  
 	 {  
 	 	 v a r   l e v e l M a n a g e r   :   W 3 L e v e l M a n a g e r ;  
 	 	  
 	 	 l e v e l M a n a g e r   =   G e t W i t c h e r P l a y e r ( ) . l e v e l M a n a g e r ;  
 	 	 r e t u r n   l e v e l M a n a g e r . G e t T o t a l E x p F o r N e x t L e v e l ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   U p d a t e M e d a l l i o n ( )   :   v o i d  
 	 {  
 	 	 v a r   l _ c u r M e d a l l i o n A c t i v a t e d   :   b o o l   =   G e t W i t c h e r P l a y e r ( ) . G e t M e d a l l i o n ( ) . I s A c t i v e ( ) ;  
 	 	  
 	 	 i f (   m _ m e d a l l i o n A c t i v a t e d   ! =   l _ c u r M e d a l l i o n A c t i v a t e d   )  
 	 	 {  
 	 	 	 m _ m e d a l l i o n A c t i v a t e d   =   l _ c u r M e d a l l i o n A c t i v a t e d ;  
 	 	 	 m _ f x S w i t c h W o l f A c t i v a t i o n . I n v o k e S e l f O n e A r g (   F l a s h A r g B o o l (   m _ m e d a l l i o n A c t i v a t e d   )   ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e F o c u s P o i n t s ( )  
 	 {  
 	 	 v a r   c u r F o c u s P o i n t s   :   i n t   =   F l o o r F (   G e t W i t c h e r P l a y e r ( ) . G e t S t a t (   B C S _ F o c u s   )   ) ;  
 	 	 v a r   f o c u s P r o g r e s s   :   f l o a t   =   G e t W i t c h e r P l a y e r ( ) . G e t S t a t (   B C S _ F o c u s   ) ;  
 	 	  
 	 	 i f   (   m _ f o c u s P o i n t s   ! =   c u r F o c u s P o i n t s   )  
 	 	 {  
 	 	 	 m _ f o c u s P o i n t s   =   c u r F o c u s P o i n t s ;  
 	 	 	  
 	 	 	 m _ f x S e t F o c u s P o i n t s S F F . I n v o k e S e l f O n e A r g (   F l a s h A r g I n t (   m _ f o c u s P o i n t s )   ) ;  
 	 	 }  
 	 	 i f   (   m _ f o c u s P r o g r e s s   ! =   f o c u s P r o g r e s s   )  
 	 	 {  
 	 	 	 m _ f o c u s P r o g r e s s   =   f o c u s P r o g r e s s ;  
 	 	 	 m _ f x S e t F o c u s P r o g r e s s S F F . I n v o k e S e l f O n e A r g (   F l a s h A r g N u m b e r (   f o c u s P r o g r e s s   )   ) ;  
 	 	 }  
 	 }  
  
 	 p u b l i c   f u n c t i o n   R e s e t F o c u s P o i n t s ( )  
 	 {  
 	 	 v a r   c u r F o c u s P o i n t s   :   i n t   =   F l o o r F (   G e t W i t c h e r P l a y e r ( ) . G e t S t a t (   B C S _ F o c u s   )   ) ;  
 	 	 m _ f x S e t F o c u s P o i n t s S F F . I n v o k e S e l f O n e A r g (   F l a s h A r g I n t ( c u r F o c u s P o i n t s )   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   L o c k F o c u s P o i n t s (   v a l u e   :   i n t   )  
 	 {  
 	 	  
 	 	 i f   (   v a l u e   < =   3   )  
 	 	 	 m _ f x L o c k F o c u s P o i n t s S F F . I n v o k e S e l f O n e A r g (   F l a s h A r g I n t (   v a l u e )   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   U p d a t e S i g n D a t a ( )  
 	 {  
 	 	 i f (   t h e P l a y e r . G e t E q u i p p e d S i g n ( )   ! =   m _ C u r r e n t S e l e c t e d S i g n   )  
 	 	 {  
 	 	 	 m _ C u r r e n t S e l e c t e d S i g n   =   t h e P l a y e r . G e t E q u i p p e d S i g n ( ) ;  
 	 	 	 m _ f x S e t S i g n I c o n S F F . I n v o k e S e l f O n e A r g ( F l a s h A r g S t r i n g ( G e t S i g n I c o n ( ) ) ) ;  
 	 	 	 m _ f x S e t S i g n T e x t S F F . I n v o k e S e l f O n e A r g ( F l a s h A r g S t r i n g ( G e t L o c S t r i n g B y K e y E x t ( S i g n E n u m T o S t r i n g ( m _ C u r r e n t S e l e c t e d S i g n ) ) ) ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   U p d a t e S t a t e B y P l a y e r ( )  
 	 {  
 	 	 i f (   t h e P l a y e r . I s C i r i ( )   ! =   m _ I s P l a y e r C i r i   )  
 	 	 {  
 	 	 	 m _ I s P l a y e r C i r i   =   t h e P l a y e r . I s C i r i ( ) ;  
 	 	 	 m _ f x S e t C i r i A s M a i n C h a r a c t e r . I n v o k e S e l f O n e A r g ( F l a s h A r g B o o l ( m _ I s P l a y e r C i r i ) ) ;  
 	 	 	 D i s p l a y N e w L e v e l I n d i c a t o r ( ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t C o a t O f A r m s (   v a l   :   b o o l   )  
 	 {  
 	 	 t h e P l a y e r . S e t U s i n g C o a t O f A r m s (   v a l   ) ;  
 	 	  
 	 	 U p d a t e C o a t O f A r m s ( ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e C o a t O f A r m s ( )  
 	 {  
 	 	 m _ f x S e t C o a t O f A r m s . I n v o k e S e l f O n e A r g (   F l a s h A r g B o o l (   t h e P l a y e r . I s U s i n g C o a t O f A r m s ( )   )   ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   G e t S i g n I c o n ( )   :   s t r i n g  
 	 {  
 	 	 i f ( ( W 3 R e p l a c e r C i r i ) t h e P l a y e r )  
 	 	 {  
 	 	 	 r e t u r n   " h u d / r a d i a l m e n u / m c C i r i P o w e r . p n g " ;  
 	 	 }  
 	 	 r e t u r n   G e t S i g n I c o n B y T y p e ( m _ C u r r e n t S e l e c t e d S i g n ) ;    
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   G e t S i g n I c o n B y T y p e (   s i g n T y p e   :   E S i g n T y p e   )   :   s t r i n g  
 	 {  
 	 	 s w i t c h (   s i g n T y p e   )  
 	 	 {  
 	 	 	 c a s e   S T _ A a r d : 	 	 r e t u r n   " h u d / r a d i a l m e n u / m c A a r d . p n g " ;  
 	 	 	 c a s e   S T _ Y r d e n : 	 	 r e t u r n   " h u d / r a d i a l m e n u / m c Y r d e n . p n g " ;  
 	 	 	 c a s e   S T _ I g n i : 	 	 r e t u r n   " h u d / r a d i a l m e n u / m c I g n i . p n g " ;  
 	 	 	 c a s e   S T _ Q u e n : 	 	 r e t u r n   " h u d / r a d i a l m e n u / m c Q u e n . p n g " ;  
 	 	 	 c a s e   S T _ A x i i : 	 	 r e t u r n   " h u d / r a d i a l m e n u / m c A x i i . p n g " ;  
 	 	 	 d e f a u l t   :   r e t u r n   " " ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S h o w L e v e l U p I n d i c a t o r (   v a l u e   :   b o o l   )  
 	 {  
 	 	 m _ f x S e t S h o w N e w L e v e l I n d i c a t o r . I n v o k e S e l f O n e A r g ( F l a s h A r g B o o l ( v a l u e ) ) ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t A l w a y s D i s p l a y e d (   v a l u e   :   b o o l   )  
 	 {  
 	 	 m _ f x S e t A l w a y s D i s p l a y e d . I n v o k e S e l f O n e A r g ( F l a s h A r g B o o l ( v a l u e ) ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t W o l f A c t i v a t o r ( )   :   C S c r i p t e d F l a s h F u n c t i o n  
 	 {  
 	 	 r e t u r n   m _ f x S w i t c h W o l f A c t i v a t i o n ;  
 	 }  
 }  
  
 e x e c   f u n c t i o n   A l w a y s D i s p l a y H U D (   v a l u e   :   b o o l   )  
 {  
 	 v a r   h u d W o l f H e a d M o d u l e   :   C R 4 H u d M o d u l e W o l f H e a d ; 	 	  
 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	  
 	 h u d W o l f H e a d M o d u l e   =   ( C R 4 H u d M o d u l e W o l f H e a d ) h u d . G e t H u d M o d u l e (   " W o l f H e a d M o d u l e "   ) ;  
 	 i f   (   h u d W o l f H e a d M o d u l e   )  
 	 {  
 	 	 h u d W o l f H e a d M o d u l e . S e t A l w a y s D i s p l a y e d ( v a l u e ) ;  
 	 }  
 }  
  
 e x e c   f u n c t i o n   c o a (   v a l   :   b o o l   )  
 {  
 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 v a r   h u d W o l f H e a d M o d u l e   :   C R 4 H u d M o d u l e W o l f H e a d ; 	 	  
  
 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 i f   (   h u d   )  
 	 {  
 	 	 h u d W o l f H e a d M o d u l e   =   ( C R 4 H u d M o d u l e W o l f H e a d ) h u d . G e t H u d M o d u l e (   " W o l f H e a d M o d u l e "   ) ;  
 	 	 i f   (   h u d W o l f H e a d M o d u l e   )  
 	 	 {  
 	 	 	 h u d W o l f H e a d M o d u l e . S e t C o a t O f A r m s (   v a l   ) ;  
 	 	 }  
 	 }  
 }  
  
  
  
 