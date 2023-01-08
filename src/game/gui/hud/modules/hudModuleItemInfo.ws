/ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / * *   	 �   2 0 1 5   C D   P R O J E K T   S . A .   A l l   r i g h t s   r e s e r v e d .  
 / * *   	 T H E   W I T C H E R �   i s   a   t r a d e m a r k   o f   C D   P R O J E K T   S .   A .  
 / * *   	 T h e   W i t c h e r   g a m e   i s   b a s e d   o n   t h e   p r o s e   o f   A n d r z e j   S a p k o w s k i .  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
 e n u m   H u d I t e m I n f o B i n d i n g  
 {  
 	 H u d I t e m I n f o B i n d i n g _ i t e m 1   =   0 ,  
 	 H u d I t e m I n f o B i n d i n g _ p o t i o n 1   =   1 ,  
 	 H u d I t e m I n f o B i n d i n g _ p o t i o n 2   =   2 ,  
 	 H u d I t e m I n f o B i n d i n g _ p o t i o n 3   =   3 ,  
 	 H u d I t e m I n f o B i n d i n g _ p o t i o n 4   =   4  
 } ;  
  
 s t r u c t   S H u d I t e m I n f o  
 {  
 	 v a r   m _ i c o n 	 	 :   s t r i n g ;  
 	 v a r   m _ c a t e g o r y 	 :   s t r i n g ;  
 	 v a r   m _ i t e m N a m e 	 :   s t r i n g ;  
 	 v a r   m _ a m m o S t r 	 :   s t r i n g ;  
 	 v a r   m _ b t n 	 	 :   i n t ;  
 	 v a r   m _ p c B t n 	 	 :   i n t ;  
 } ;  
  
 c l a s s   C R 4 H u d M o d u l e I t e m I n f o   e x t e n d s   C R 4 H u d M o d u l e B a s e  
 {  
 	 p r i v a t e   v a r   m _ c u r r e n t I t e m S e l e c t e d   	 :   S I t e m U n i q u e I d ;  
 	 p r i v a t e   v a r   m _ c u r r e n t I t e m O n S l o t 1   	 :   S I t e m U n i q u e I d ;  
 	 p r i v a t e   v a r   m _ c u r r e n t I t e m O n S l o t 2   	 :   S I t e m U n i q u e I d ;  
 	 p r i v a t e   v a r   m _ c u r r e n t I t e m O n S l o t 3   	 :   S I t e m U n i q u e I d ;  
 	 p r i v a t e   v a r   m _ c u r r e n t I t e m O n S l o t 4   	 :   S I t e m U n i q u e I d ;  
 	  
 	 p r i v a t e   v a r   m _ l a s t B o l t I t e m   :   S I t e m U n i q u e I d ;  
  
 	 p r i v a t e   v a r   m _ c u r r e n t I t e m S e l e c t e d A m m o 	 :   i n t ;  
 	 p r i v a t e   v a r   m _ c u r r e n t I t e m O n S l o t 1 A m m o 	 :   i n t ;  
 	 p r i v a t e   v a r   m _ c u r r e n t I t e m O n S l o t 2 A m m o 	 :   i n t ;  
 	 p r i v a t e   v a r   m _ c u r r e n t I t e m O n S l o t 3 A m m o 	 :   i n t ;  
 	 p r i v a t e   v a r   m _ c u r r e n t I t e m O n S l o t 4 A m m o 	 :   i n t ;  
  
 	 p r i v a t e   v a r   m _ f x E n a b l e S F F   :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x U p d a t e E l e m e n t S F F   :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x H i d e S l o t s S F F   :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x S e t A l w a y s D i s p l a y e d   :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f l a s h V a l u e S t o r a g e   :   C S c r i p t e d F l a s h V a l u e S t o r a g e ;  
 	 p r i v a t e   v a r   m _ f x S e t I t e m I n f o   :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x S w i t c h A n i m a t i o n   :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x S h o w B u t t o n H i n t s   :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ I s P l a y e r C i r i 	 	 	 	 	 :   b o o l ;  
 	 d e f a u l t   m _ I s P l a y e r C i r i   =   f a l s e ;  
 	  
 	 p r i v a t e   v a r   m _ r u n w o r d 6 A p p l i e d   :   b o o l ;  
  
 	 / / m o d W 3 R e d u x R G C + +  
 	 p r i v a t e   v a r   t i c k C o u n t   :   i n t ;  
 	 	 d e f a u l t   t i c k C o u n t   =   0 ;  
 	 / / m o d W 3 R e d u x R G C - -  
 	  
 	 p r i v a t e   v a r   m _ p r e v i o u s S h o w B u t t o n H i n t s 	 	 :   i n t ; 	 	 	 	 	 	 d e f a u l t   m _ p r e v i o u s S h o w B u t t o n H i n t s         =   - 1 ;  
 	 p r i v a t e   v a r   m _ p r e v i o u s S e t I t e m I n f o 	 	 	 :   a r r a y <   S H u d I t e m I n f o   > ;  
 	  
 	 e v e n t     O n C o n f i g U I ( )  
 	 {  
 	 	 v a r   f l a s h M o d u l e   :   C S c r i p t e d F l a s h S p r i t e ;  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
  
 	 	 m _ a n c h o r N a m e   =   " m c A n c h o r I t e m I n f o " ;  
 	 	 m _ f l a s h V a l u e S t o r a g e   =   G e t M o d u l e F l a s h V a l u e S t o r a g e ( ) ;  
 	 	 s u p e r . O n C o n f i g U I ( ) ;  
  
 	 	 f l a s h M o d u l e   	 	 	 =   G e t M o d u l e F l a s h ( ) ; 	  
 	 	 m _ f x E n a b l e S F F 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " E n a b l e E l e m e n t "   ) ;  
 	 	 m _ f x U p d a t e E l e m e n t S F F 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " U p d a t e E l e m e n t "   ) ;  
 	 	 m _ f x H i d e S l o t s S F F 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " H i d e S l o t s "   ) ;  
 	 	 m _ f x S e t A l w a y s D i s p l a y e d 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t A l w a y s D i s p l a y e d "   ) ;  
 	 	 m _ f x S e t I t e m I n f o   	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t I t e m I n f o "   ) ;  
 	 	 m _ f x S w i t c h A n i m a t i o n 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " a n i m a t e P o t i o n S w i t c h "   ) ;  
 	 	 m _ f x S h o w B u t t o n H i n t s 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s h o w B u t t o n H i n t s "   ) ;  
  
 	 	 m _ p r e v i o u s S e t I t e m I n f o . R e s i z e (   E n u m G e t M a x (   ' H u d I t e m I n f o B i n d i n g '   )   +   1   ) ;  
 	 	  
 	 	 C l e a r I t e m s ( ) ;  
 	 	  
 	 	 S e t T i c k I n t e r v a l (   0 . 2 5   ) ;  
 	 	  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	  
 	 	 i f   ( h u d )  
 	 	 {  
 	 	 	 h u d . U p d a t e H u d C o n f i g ( ' I t e m I n f o M o d u l e ' ,   t r u e ) ;  
 	 	 }  
 	 	  
 	 	 m _ r u n w o r d 6 A p p l i e d   =   G e t W i t c h e r P l a y e r ( ) . H a s R u n e w o r d A c t i v e ( ' R u n e w o r d   6   _ S t a t s ' ) ;  
 	 }  
 	  
 	 e v e n t   O n T i c k (   t i m e D e l t a   :   f l o a t   )  
 	 {  
 	 	 v a r   i t e m 0 ,   i t e m 1 ,   i t e m 2   :   S I t e m U n i q u e I d ;  
 	 	 v a r   a l t e r I t e m 1 ,   a l t e r I t e m 2   :   S I t e m U n i q u e I d ;  
 	 	 v a r   s w i t c h A n i m a t i o n   :   i n t ;  
 	 	 v a r   p l a y e r I n v   :   C I n v e n t o r y C o m p o n e n t ;  
 	 	 v a r   w i t c h e r P l a y e r   :   W 3 P l a y e r W i t c h e r ;  
 	 	  
 	 	 v a r   r u n w o r d 6 A p p l i e d     :   b o o l ;  
 	 	 v a r   f o r c e d I c o n U p d a t e   :   b o o l ;  
 	 	 v a r   d u m m y   :   S I t e m U n i q u e I d ; 	 / / m o d W 3 R e d u x R G C  
 	 	  
 	 	 i f   (   ! C a n T i c k (   t i m e D e l t a   )   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 w i t c h e r P l a y e r   =   G e t W i t c h e r P l a y e r ( ) ;  
 	 	  
 	 	 i f (   m _ I s P l a y e r C i r i   ! =   t h e P l a y e r . I s C i r i ( )   )  
 	 	 {  
 	 	 	 m _ I s P l a y e r C i r i   =   t h e P l a y e r . I s C i r i ( ) ;  
 	 	 	 i f (   m _ I s P l a y e r C i r i   )  
 	 	 	 {  
 	 	 	 	 C l e a r I t e m s ( ) ;  
 	 	 	 }  
 	 	 	 m _ f x H i d e S l o t s S F F . I n v o k e S e l f O n e A r g ( F l a s h A r g B o o l ( ! m _ I s P l a y e r C i r i ) ) ;  
 	 	 }  
 	 	  
 	 	 i f (   m _ I s P l a y e r C i r i   )  
 	 	 {  
 	 	 	 i t e m 0   =   G e t C i r i I t e m ( ) ;  
 	 	 	 U p d a t e I t e m (   i t e m 0 ,   m _ c u r r e n t I t e m S e l e c t e d ,   m _ c u r r e n t I t e m S e l e c t e d A m m o ,   H u d I t e m I n f o B i n d i n g _ i t e m 1 ,   0   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i t e m 0   =   w i t c h e r P l a y e r . G e t S e l e c t e d I t e m I d ( ) ;  
 	 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 	 i f ( ! w i t c h e r P l a y e r . G e t I s A i m i n g C r o s s b o w ( ) )  
 	 	 	 {  
 	 	 	 	 w i t c h e r P l a y e r . G e t I t e m E q u i p p e d O n S l o t (   w i t c h e r P l a y e r . R G C _ G e t L a s t U s e d I t e m S l o t ( ) ,   i t e m 0   ) ;  
 	 	 	 }  
  
 	 	 	 i f   (   t h e I n p u t . L a s t U s e d G a m e p a d ( )   )  
 	 	 	 {  
 	 	 	 	 p l a y e r I n v   =   t h e P l a y e r . G e t I n v e n t o r y ( ) ;  
  
 	 	 	 	 i f ( t h e P l a y e r . G e t I s A i m i n g C r o s s b o w ( ) )  
 	 	 	 	 {  
 	 	 	 	 	 i t e m 1   =   w i t c h e r P l a y e r . R G C _ G e t L a s t U s e d B o l t ( ) ;  
 	 	 	 	 	 i t e m 2   =   w i t c h e r P l a y e r . R G C _ G e t I n f i n i t e B o l t ( ) ;  
 	 	 	 	 	 a l t e r I t e m 1   =   w i t c h e r P l a y e r . R G C _ N e x t I t e m F o r S l o t ( E E S _ B o l t ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f ( R G C _ I s Q u i c k I t e m s I n v e n t o r y ( ) )  
 	 	 	 	 {  
 	 	 	 	 	 w i t c h e r P l a y e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ Q u i c k s l o t 1 ,   i t e m 1   ) ;  
 	 	 	 	 	 w i t c h e r P l a y e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ P e t a r d 1 ,   i t e m 2   ) ;  
 	 	 	 	 	 a l t e r I t e m 1   =   w i t c h e r P l a y e r . R G C _ N e x t I t e m F o r S l o t ( E E S _ Q u i c k s l o t 1 ) ;  
 	 	 	 	 	 a l t e r I t e m 2   =   w i t c h e r P l a y e r . R G C _ N e x t I t e m F o r S l o t ( E E S _ P e t a r d 1 ) ;  
 	 	 	 	  
 	 	 	 	 	 i f   (   ! p l a y e r I n v . I s I d V a l i d ( i t e m 1 )   & &   p l a y e r I n v . I s I d V a l i d (   a l t e r I t e m 1   )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 w i t c h e r P l a y e r . R G C _ S e l e c t I t e m ( E E S _ Q u i c k s l o t 1 ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f   (   ! p l a y e r I n v . I s I d V a l i d ( i t e m 2 )   & &   p l a y e r I n v . I s I d V a l i d (   a l t e r I t e m 2   )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 w i t c h e r P l a y e r . R G C _ S e l e c t I t e m ( E E S _ P e t a r d 1 ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 s w i t c h A n i m a t i o n   =   - 1 ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 w i t c h e r P l a y e r . G e t I t e m E q u i p p e d O n S l o t (   w i t c h e r P l a y e r . G e t S e l e c t e d P o t i o n S l o t U p p e r ( ) ,   i t e m 1   ) ;  
 	 	 	 	 	 w i t c h e r P l a y e r . G e t I t e m E q u i p p e d O n S l o t (   w i t c h e r P l a y e r . G e t S e l e c t e d P o t i o n S l o t L o w e r ( ) ,   i t e m 2   ) ;  
 	 	 	 	  
 	 	 	 	 	 i f   (   w i t c h e r P l a y e r . G e t S e l e c t e d P o t i o n S l o t U p p e r ( )   = =   E E S _ P o t i o n 1 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 w i t c h e r P l a y e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ P o t i o n 3 ,   a l t e r I t e m 1   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 w i t c h e r P l a y e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ P o t i o n 1 ,   a l t e r I t e m 1   ) ;  
 	 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 	 i f   (   w i t c h e r P l a y e r . G e t S e l e c t e d P o t i o n S l o t L o w e r ( )   = =   E E S _ P o t i o n 2 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 w i t c h e r P l a y e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ P o t i o n 4 ,   a l t e r I t e m 2   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 w i t c h e r P l a y e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ P o t i o n 2 ,   a l t e r I t e m 2   ) ;  
 	 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 	 p l a y e r I n v   =   t h e P l a y e r . G e t I n v e n t o r y ( ) ;  
 	 	 	 	  
 	 	 	 	 	 i f   (   ! p l a y e r I n v . I s I d V a l i d ( i t e m 1 )   & &   p l a y e r I n v . I s I d V a l i d (   a l t e r I t e m 1   )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 w i t c h e r P l a y e r . F l i p S e l e c t e d P o t i o n (   t r u e   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f   (   ! p l a y e r I n v . I s I d V a l i d ( i t e m 2 )   & &   p l a y e r I n v . I s I d V a l i d (   a l t e r I t e m 2   )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 w i t c h e r P l a y e r . F l i p S e l e c t e d P o t i o n (   f a l s e   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f   (   m _ c u r r e n t I t e m O n S l o t 1   = =   a l t e r I t e m 1   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 s w i t c h A n i m a t i o n   =   1 ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f   (   m _ c u r r e n t I t e m O n S l o t 2   = =   a l t e r I t e m 2   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 s w i t c h A n i m a t i o n   =   2 ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 s w i t c h A n i m a t i o n   =   - 1 ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 s w i t c h A n i m a t i o n   =   - 1 ;  
 	 	 	 	 w i t c h e r P l a y e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ P o t i o n 1 ,   i t e m 1   ) ;  
 	 	 	 	 w i t c h e r P l a y e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ P o t i o n 2 ,   i t e m 2   ) ; 	  
 	 	 	 	 w i t c h e r P l a y e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ P o t i o n 3 ,   a l t e r I t e m 1   ) ; 	  
 	 	 	 	 w i t c h e r P l a y e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ P o t i o n 4 ,   a l t e r I t e m 2   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 r u n w o r d 6 A p p l i e d   =   w i t c h e r P l a y e r . H a s R u n e w o r d A c t i v e ( ' R u n e w o r d   6   _ S t a t s ' ) ;  
 	 	 	  
 	 	 	 i f   ( m _ r u n w o r d 6 A p p l i e d   ! =   r u n w o r d 6 A p p l i e d )  
 	 	 	 {  
 	 	 	 	 m _ r u n w o r d 6 A p p l i e d   =   r u n w o r d 6 A p p l i e d ;  
 	 	 	 	 f o r c e d I c o n U p d a t e   =   t r u e ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 f o r c e d I c o n U p d a t e   =   f a l s e ;  
 	 	 	 }  
  
 	 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 	 i f ( a l t e r I t e m 1   = =   i t e m 1 )    
 	 	 	 {  
 	 	 	 	 a l t e r I t e m 1   =   d u m m y ;  
 	 	 	 }  
 	 	 	 i f ( a l t e r I t e m 2   = =   i t e m 2 )  
 	 	 	 {  
 	 	 	 	 a l t e r I t e m 2   =   d u m m y ;  
 	 	 	 }  
 	 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	 	  
 	 	 	 U p d a t e I t e m (   i t e m 0 ,             m _ c u r r e n t I t e m S e l e c t e d ,   m _ c u r r e n t I t e m S e l e c t e d A m m o ,   H u d I t e m I n f o B i n d i n g _ i t e m 1 ,       0 ,   f o r c e d I c o n U p d a t e   ) ;  
 	 	 	 U p d a t e I t e m (   i t e m 1 ,             m _ c u r r e n t I t e m O n S l o t 1 ,     m _ c u r r e n t I t e m O n S l o t 1 A m m o ,     H u d I t e m I n f o B i n d i n g _ p o t i o n 1 ,   1 ,   f o r c e d I c o n U p d a t e   ) ;  
 	 	 	 U p d a t e I t e m (   i t e m 2 ,             m _ c u r r e n t I t e m O n S l o t 2 ,     m _ c u r r e n t I t e m O n S l o t 2 A m m o ,     H u d I t e m I n f o B i n d i n g _ p o t i o n 2 ,   2 ,   f o r c e d I c o n U p d a t e   ) ;  
 	 	 	 U p d a t e I t e m (   a l t e r I t e m 1 ,   m _ c u r r e n t I t e m O n S l o t 3 ,     m _ c u r r e n t I t e m O n S l o t 3 A m m o ,     H u d I t e m I n f o B i n d i n g _ p o t i o n 3 ,   3 ,   f o r c e d I c o n U p d a t e   ) ;  
 	 	 	 U p d a t e I t e m (   a l t e r I t e m 2 ,   m _ c u r r e n t I t e m O n S l o t 4 ,     m _ c u r r e n t I t e m O n S l o t 4 A m m o ,     H u d I t e m I n f o B i n d i n g _ p o t i o n 4 ,   4 ,   f o r c e d I c o n U p d a t e   ) ;  
 	 	 	  
 	 	 	 i f   (   s w i t c h A n i m a t i o n   ! =   - 1   )  
 	 	 	 {  
 	 	 	 	 m _ f x S w i t c h A n i m a t i o n . I n v o k e S e l f O n e A r g (   F l a s h A r g I n t (   s w i t c h A n i m a t i o n   )   ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   t h e P l a y e r . I s C o m b a t M u s i c E n a b l e d ( )   | |   t h e P l a y e r . G e t H e a l t h P e r c e n t s ( )   <   1 . f   )  
 	 	 	 S e t A l w a y s D i s p l a y e d (   t r u e   ) ;  
 	 	 e l s e  
 	 	 	 S e t A l w a y s D i s p l a y e d (   R G C C o n f i g A l w a y s D i s p l a y I n v e n t o r y ( )   ) ;   / / m o d W 3 R e d u x R G C  
  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 t i c k C o u n t   + =   1 ;  
 	 	 i f ( t i c k C o u n t   = =   1 0 )  
 	 	 {  
 	 	 	 i f ( R G C C o n f i g A l w a y s D i s p l a y I n v e n t o r y ( ) )  
 	 	 	 {  
 	 	 	 	 F o r c e S h o w E l e m e n t ( ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 t i c k C o u n t   =   0 ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 }  
 	  
 	 f u n c t i o n   G e t C i r i I t e m ( )   :   S I t e m U n i q u e I d  
 	 {  
 	 	 v a r   d u m m y   :   S I t e m U n i q u e I d ;  
 	 	 v a r   r e t   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	  
 	 	 r e t   =   t h e P l a y e r . G e t I n v e n t o r y ( ) . G e t I t e m s B y N a m e ( ' q 4 0 3 _ c i r i _ m e t e o r ' ) ;  
 	 	  
 	 	 i f   (   r e t . S i z e ( )   )  
 	 	 {  
 	 	 	 r e t u r n   r e t [ 0 ] ;  
 	 	 }  
 	 	 r e t u r n   d u m m y ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R e s e t I t e m s ( )  
 	 {  
 	 	 v a r   d u m m y   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 m _ c u r r e n t I t e m S e l e c t e d   =   d u m m y ;  
 	 	 m _ c u r r e n t I t e m O n S l o t 1     =   d u m m y ;  
 	 	 m _ c u r r e n t I t e m O n S l o t 2     =   d u m m y ;  
 	 	 m _ c u r r e n t I t e m O n S l o t 3     =   d u m m y ;  
 	 	 m _ c u r r e n t I t e m O n S l o t 4     =   d u m m y ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   U p d a t e I t e m (   o u t   c u r r I t e m   :   S I t e m U n i q u e I d ,   o u t   p r e v I t e m   :   S I t e m U n i q u e I d ,   o u t   p r e v I t e m A m m o   :   i n t ,   b i n d i n g I D   :   H u d I t e m I n f o B i n d i n g ,   s l o t I d   :   i n t ,   o p t i o n a l   f o r c e U p d a t e : b o o l   )  
 	 {  
 	 	 v a r   u p d a t e I t e m   :   b o o l ;  
 	 	 v a r   a m m o   :   i n t ;  
 	 	 v a r   t e m p I t e m   :   S I t e m U n i q u e I d ;  
 	 	 v a r   d u m m y   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 u p d a t e I t e m   =   f a l s e ;  
 	 	 a m m o   =   0 ;  
 	 	  
 	 	 i f   (   p r e v I t e m   ! =   c u r r I t e m   | |   f o r c e U p d a t e )  
 	 	 {  
 	 	 	 u p d a t e I t e m   =   t r u e ;  
 	 	 	 p r e v I t e m   =   c u r r I t e m ;  
 	 	 }  
 	 	 i f   (   t h e P l a y e r . G e t I n v e n t o r y ( ) . I s I d V a l i d (   c u r r I t e m   )   )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . G e t I n v e n t o r y ( ) . I s I t e m S i n g l e t o n I t e m (   c u r r I t e m   )   )  
 	 	 	 {  
 	 	 	 	 a m m o   =   t h e P l a y e r . i n v . S i n g l e t o n I t e m G e t A m m o (   c u r r I t e m   ) ;  
 	 	 	 	 i f   (   p r e v I t e m A m m o   ! =   a m m o   )  
 	 	 	 	 {  
 	 	 	 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 	 	 	 i f ( ! a m m o )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f ( t h e P l a y e r . i n v . I s I t e m B o m b (   c u r r I t e m   ) )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 R G C _ A c t O n B a c k u p B o m b ( ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e   i f ( t h e P l a y e r . i n v . I s I t e m P o t i o n (   c u r r I t e m   ) )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 R G C _ A c t O n B a c k u p P o t i o n (   c u r r I t e m   ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	 	 	 	 u p d a t e I t e m   =   t r u e ;  
 	 	 	 	 	 p r e v I t e m A m m o   =   a m m o ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   i f (   t h e P l a y e r . G e t I n v e n t o r y ( ) . I s I t e m C r o s s b o w (   c u r r I t e m   )   )  
 	 	 	 { 	 	 	 	  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . G e t I t e m E q u i p p e d O n S l o t ( E E S _ B o l t ,   t e m p I t e m ) ;  
 	 	 	 	 a m m o   =   t h e P l a y e r . G e t I n v e n t o r y ( ) . G e t I t e m Q u a n t i t y (   t e m p I t e m   ) ;  
 	 	 	 	 i f   (   p r e v I t e m A m m o   ! =   a m m o   )  
 	 	 	 	 {  
 	 	 	 	 	 u p d a t e I t e m   =   t r u e ;  
 	 	 	 	 	 p r e v I t e m A m m o   =   a m m o ;  
 	 	 	 	 	  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f   ( ! u p d a t e I t e m   & &   m _ l a s t B o l t I t e m   ! =   t e m p I t e m )  
 	 	 	 	 {  
 	 	 	 	 	 u p d a t e I t e m   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 m _ l a s t B o l t I t e m   =   t e m p I t e m ;  
 	 	 	 }  
 	 	 	 e l s e   i f (   t h e P l a y e r . G e t I n v e n t o r y ( ) . I t e m H a s T a g (   c u r r I t e m ,   ' E d i b l e s '   )   | |   t h e P l a y e r . G e t I n v e n t o r y ( ) . I s I t e m B o l t (   c u r r I t e m   )   )  
 	 	 	 { 	 	 	 	  
 	 	 	 	 a m m o   =   t h e P l a y e r . G e t I n v e n t o r y ( ) . G e t I t e m Q u a n t i t y (   c u r r I t e m   ) ;  
 	 	 	 	 i f   (   p r e v I t e m A m m o   ! =   a m m o   )  
 	 	 	 	 {  
 	 	 	 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 	 	 	 i f ( ! a m m o )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 R G C _ A c t O n B a c k u p P o t i o n (   c u r r I t e m   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 / / m o d W 3 R e d u x R G C - -  
  
 	 	 	 	 	 u p d a t e I t e m   =   t r u e ;  
 	 	 	 	 	 p r e v I t e m A m m o   =   a m m o ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   i f (   t h e P l a y e r . G e t I n v e n t o r y ( ) . I s I t e m B o l t (   c u r r I t e m   ) )  
 	 	 	 {  
 	 	 	 	 a m m o   =   t h e P l a y e r . G e t I n v e n t o r y ( ) . G e t I t e m Q u a n t i t y (   c u r r I t e m   ) ;  
 	 	 	 	 i f   (   p r e v I t e m A m m o   ! =   a m m o   )  
 	 	 	 	 {  
 	 	 	 	 	 u p d a t e I t e m   =   t r u e ;  
 	 	 	 	 	 p r e v I t e m A m m o   =   a m m o ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 	 e l s e   i f (   t h e P l a y e r . G e t I n v e n t o r y ( ) . I s Q u i c k S l o t I t e m (   c u r r I t e m   )   )  
 	 	 	 {  
 	 	 	 	 / / q u i c k   i t e m s   d o n ' t   h a v e   a m m o   a n d   s h o u l d   b e   d i s p l a y e d  
 	 	 	 	 u p d a t e I t e m   =   t r u e ;  
 	 	 	 }  
 	 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 p r e v I t e m A m m o   =   - 1 ;  
 	 	 	 	 i f   (   s l o t I d   = =   1   )   U p d a t e I t e m D a t a (   d u m m y ,   H u d I t e m I n f o B i n d i n g _ p o t i o n 1   ) ;  
 	 	 	 	 i f   (   s l o t I d   = =   2   )   U p d a t e I t e m D a t a (   d u m m y ,   H u d I t e m I n f o B i n d i n g _ p o t i o n 2   ) ;  
 	 	 	 	 i f   (   s l o t I d   = =   3   )   U p d a t e I t e m D a t a (   d u m m y ,   H u d I t e m I n f o B i n d i n g _ p o t i o n 3   ) ;  
 	 	 	 	 i f   (   s l o t I d   = =   4   )   U p d a t e I t e m D a t a (   d u m m y ,   H u d I t e m I n f o B i n d i n g _ p o t i o n 4   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 p r e v I t e m A m m o   =   - 1 ;  
 	 	 	 i f   (   s l o t I d   = =   1   )   U p d a t e I t e m D a t a (   d u m m y ,   H u d I t e m I n f o B i n d i n g _ p o t i o n 1   ) ;  
 	 	 	 i f   (   s l o t I d   = =   2   )   U p d a t e I t e m D a t a (   d u m m y ,   H u d I t e m I n f o B i n d i n g _ p o t i o n 2   ) ; 	 	  
 	 	 	 i f   (   s l o t I d   = =   3   )   U p d a t e I t e m D a t a (   d u m m y ,   H u d I t e m I n f o B i n d i n g _ p o t i o n 3   ) ;  
 	 	 	 i f   (   s l o t I d   = =   4   )   U p d a t e I t e m D a t a (   d u m m y ,   H u d I t e m I n f o B i n d i n g _ p o t i o n 4   ) ; 	 	  
 	 	 }  
 	 	 i f   (   u p d a t e I t e m   )  
 	 	 {  
 	 	 	 U p d a t e I t e m D a t a (   c u r r I t e m ,   b i n d i n g I D   ) ;  
 	 	 }  
 	 }  
 	  
 	 / / m o d W 3 R e d u x R G C + +  
 	 p u b l i c   f u n c t i o n   R G C _ A c t O n B a c k u p B o m b ( )  
 	 {  
 	 	 G e t W i t c h e r P l a y e r ( ) . R G C _ S e l e c t I t e m ( E E S _ P e t a r d 1 ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R G C _ A c t O n B a c k u p P o t i o n ( c u r r e n t P o t i o n   :   S I t e m U n i q u e I d )  
 	 {  
 	 	 v a r   b a c k u p P o t i o n   :   S I t e m U n i q u e I d ;  
 	 	 v a r   s l o t U p p e r P o t i o n U n i q u e I d   :   S I t e m U n i q u e I d ;  
 	 	 v a r   s l o t L o w e r P o t i o n U n i q u e I d   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . G e t I t e m E q u i p p e d O n S l o t ( G e t W i t c h e r P l a y e r ( ) . G e t S e l e c t e d P o t i o n S l o t U p p e r ( ) ,   s l o t U p p e r P o t i o n U n i q u e I d ) )  
 	 	 {  
 	 	 	 i f ( s l o t U p p e r P o t i o n U n i q u e I d   = =   c u r r e n t P o t i o n )  
 	 	 	 {  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . F l i p S e l e c t e d P o t i o n ( t r u e ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . G e t I t e m E q u i p p e d O n S l o t ( G e t W i t c h e r P l a y e r ( ) . G e t S e l e c t e d P o t i o n S l o t L o w e r ( ) ,   s l o t L o w e r P o t i o n U n i q u e I d ) )  
 	 	 {  
 	 	 	 i f ( s l o t L o w e r P o t i o n U n i q u e I d   = =   c u r r e n t P o t i o n )  
 	 	 	 {  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . F l i p S e l e c t e d P o t i o n ( f a l s e ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	 / / m o d W 3 R e d u x R G C - -  
  
 	 p u b l i c   f u n c t i o n   C l e a r I t e m s ( )  
 	 {  
 	 	 v a r   d u m m y   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 U p d a t e I t e m D a t a (   d u m m y ,   H u d I t e m I n f o B i n d i n g _ i t e m 1   ) ;  
 	 	 U p d a t e I t e m D a t a (   d u m m y ,   H u d I t e m I n f o B i n d i n g _ p o t i o n 1   ) ;  
 	 	 U p d a t e I t e m D a t a (   d u m m y ,   H u d I t e m I n f o B i n d i n g _ p o t i o n 2   ) ;  
 	 	 U p d a t e I t e m D a t a (   d u m m y ,   H u d I t e m I n f o B i n d i n g _ p o t i o n 3   ) ;  
 	 	 U p d a t e I t e m D a t a (   d u m m y ,   H u d I t e m I n f o B i n d i n g _ p o t i o n 4   ) ;  
 	 	 m _ c u r r e n t I t e m S e l e c t e d   =   d u m m y ;  
 	 	 m _ c u r r e n t I t e m O n S l o t 1   =   d u m m y ;  
 	 	 m _ c u r r e n t I t e m O n S l o t 2   =   d u m m y ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   U p d a t e I t e m D a t a ( i t e m   :   S I t e m U n i q u e I d ,   b i n d i n g I D   :   H u d I t e m I n f o B i n d i n g )  
 	 {  
 	 	 v a r   m a x A m m o     :   i n t ;  
 	 	 v a r   a m m o   :   i n t ;  
 	 	 v a r   a m m o S t r   :   s t r i n g ;  
 	 	 v a r   i t e m N a m e   :   s t r i n g ;  
 	 	 v a r   b o l t I t e m   :   S I t e m U n i q u e I d ;  
 	 	 v a r   b o l t N a m e :   s t r i n g ;  
 	 	 v a r   f o n t C o l o r   :   s t r i n g ;  
 	 	 v a r   i c o n   :   s t r i n g ;  
 	 	 v a r   c a t e g o r y   :   s t r i n g ;  
 	 	 v a r   b t n : i n t ;  
 	 	 v a r   p c B t n   :   i n t ;  
 	 	 v a r   i n v e n t o r y   :   C I n v e n t o r y C o m p o n e n t ;  
 	 	 v a r   c u r r e n t S h o w B u t t o n H i n t s   :   b o o l ;  
 	 	 v a r   i t e m I n f o   :   S H u d I t e m I n f o ;  
 	 	  
 	 	 i f (   ! t h e P l a y e r . G e t I n v e n t o r y ( ) . I s I d V a l i d (   i t e m   )   )  
 	 	 {  
 	 	 	 i c o n   =   " " ;  
 	 	 	 c a t e g o r y   =   " " ;  
 	 	 	 i t e m N a m e   =   " " ;  
 	 	 	 a m m o S t r   =   " " ;  
 	 	 	 b t n   =   0 ;  
 	 	 	 p c B t n   =   - 1 ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i n v e n t o r y   =   t h e P l a y e r . G e t I n v e n t o r y ( ) ;  
 	 	 	  
 	 	 	  
  
 	 	 	 i c o n   =   i n v e n t o r y . G e t I t e m I c o n P a t h B y U n i q u e I D ( i t e m ) ;  
 	 	 	 c a t e g o r y   =   i n v e n t o r y . G e t I t e m C a t e g o r y ( i t e m ) ;  
 	 	 	  
 	 	 	 i t e m N a m e   =   i n v e n t o r y . G e t I t e m L o c a l i z e d N a m e B y U n i q u e I D (   i t e m   ) ;  
 	 	 	 i t e m N a m e   =   G e t L o c S t r i n g B y K e y E x t (   i t e m N a m e   ) ;  
 	 	 	 f o n t C o l o r   =   " < f o n t   c o l o r = \ " # F F F F F F \ " > " ;  
 	 	 	  
 	 	 	 i f (   i n v e n t o r y . I t e m H a s T a g ( i t e m ,   ' E d i b l e s '   )   )  
 	 	 	 { 	 	 	  
 	 	 	 	 i f   ( G e t W i t c h e r P l a y e r ( ) . H a s R u n e w o r d A c t i v e ( ' R u n e w o r d   6   _ S t a t s ' )   )  
 	 	 	 	 {  
 	 	 	 	 	 i c o n   =   " i c o n s / i n v e n t o r y / f o o d / f o o d _ d u m p l i n g _ 6 4 x 6 4 . p n g " ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f (   i n v e n t o r y . I t e m H a s T a g ( i t e m ,   ' I n f i n i t e U s e ' )   )  
 	 	 	 	 {  
 	 	 	 	 	 a m m o S t r   =   f o n t C o l o r   +   " ""   +   " < / f o n t > " ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 a m m o   =   t h e P l a y e r . i n v . G e t I t e m Q u a n t i t y ( i t e m ) ;  
 	 	 	 	 	 a m m o S t r   =   f o n t C o l o r   +   a m m o   +   " < / f o n t > " ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   i f (   i n v e n t o r y . I s I t e m S i n g l e t o n I t e m ( i t e m )   )  
 	 	 	 {  
 	 	 	 	 m a x A m m o   =   t h e P l a y e r . i n v . S i n g l e t o n I t e m G e t M a x A m m o ( i t e m ) ;  
 	 	 	 	 a m m o   =   t h e P l a y e r . i n v . S i n g l e t o n I t e m G e t A m m o ( i t e m ) ;  
 	 	 	 	  
 	 	 	 	 i f   ( m a x A m m o   >   0 )  
 	 	 	 	 {  
 	 	 	 	 	 i f (   a m m o   = =   0   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 f o n t C o l o r   =   " < f o n t   c o l o r = \ " # F F 0 0 0 0 \ " > " ;  
 	 	 	 	 	 } 	 	 	 	  
 	 	 	 	 	 a m m o S t r   =   f o n t C o l o r   +   a m m o   +   " < / f o n t > " ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 a m m o S t r   =   " " ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 	 	 i f (   i n v e n t o r y . I s I t e m C r o s s b o w ( i t e m )   )  
 	 	 	 	 {  
 	 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . G e t I t e m E q u i p p e d O n S l o t ( E E S _ B o l t ,   i t e m ) ;  
 	 	 	 	 }  
 	 	 	 	 i f (   i n v e n t o r y . I s I t e m B o l t ( i t e m )   )  
 	 	 	 	 {  
 	 	 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	 	 	 	 a m m o   =   i n v e n t o r y . G e t I t e m Q u a n t i t y (   i t e m   ) ;  
 	 	 	 	 	 i t e m N a m e   =   i n v e n t o r y . G e t I t e m L o c a l i z e d N a m e B y U n i q u e I D (   i t e m   ) ;  
 	 	 	 	 	 i t e m N a m e   =   G e t L o c S t r i n g B y K e y E x t (   i t e m N a m e   ) ;  
 	 	 	 	 	 i f (   i n v e n t o r y . I t e m H a s T a g ( i t e m ,   t h e G a m e . p a r a m s . T A G _ I N F I N I T E _ A M M O )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a m m o S t r   =   f o n t C o l o r   +   " ""   +   " < / f o n t > " ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f (   a m m o   = =   0   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 f o n t C o l o r   =   " < f o n t   c o l o r = \ " # F F 0 0 0 0 \ " > " ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	  
 	 	 	 	 	 	 a m m o S t r   =   f o n t C o l o r   +   a m m o   +   " < / f o n t > " ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 a m m o S t r   =   " " ;  
 	 	 	 	 }  
 	 	 	 } 	  
 	 	 	  
 	 	 	 i t e m N a m e   =   f o n t C o l o r + i t e m N a m e   +   " < / f o n t > " ;  
 	 	 	  
 	 	 	 p c B t n   =   G e t P C K e y B y B i n d i n g (   b i n d i n g I D   ) ;  
 	 	 	 b t n   =   G e t K e y B y B i n d i n g (   b i n d i n g I D   ) ;  
 	 	 	  
 	 	 	 c u r r e n t S h o w B u t t o n H i n t s   =   (   t h e I n p u t . G e t C o n t e x t ( )   = =   ' R a d i a l M e n u '   ) ;  
 	 	 	 i f   (   m _ p r e v i o u s S h o w B u t t o n H i n t s   ! =   ( i n t ) c u r r e n t S h o w B u t t o n H i n t s   )  
 	 	 	 {  
 	 	 	 	 m _ p r e v i o u s S h o w B u t t o n H i n t s   =   ( i n t ) c u r r e n t S h o w B u t t o n H i n t s ;  
 	 	 	 	 m _ f x S h o w B u t t o n H i n t s . I n v o k e S e l f O n e A r g (   F l a s h A r g B o o l (   c u r r e n t S h o w B u t t o n H i n t s   )   ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i t e m I n f o   =   m _ p r e v i o u s S e t I t e m I n f o [   b i n d i n g I D   ] ;  
 	 	 i f   (   i t e m I n f o . m _ i c o n           ! =   i c o n   | |  
 	 	 	   i t e m I n f o . m _ c a t e g o r y   ! =   c a t e g o r y   | |  
 	 	 	   i t e m I n f o . m _ i t e m N a m e   ! =   i t e m N a m e   | |  
 	 	 	   i t e m I n f o . m _ a m m o S t r     ! =   a m m o S t r   | |  
 	 	 	   i t e m I n f o . m _ b t n             ! =   b t n   | |  
 	 	 	   i t e m I n f o . m _ p c B t n         ! =   p c B t n   )  
 	 	 {  
 	 	 	 m _ p r e v i o u s S e t I t e m I n f o [   b i n d i n g I D   ] . m _ i c o n           =   i c o n ;  
 	 	 	 m _ p r e v i o u s S e t I t e m I n f o [   b i n d i n g I D   ] . m _ c a t e g o r y   =   c a t e g o r y ;  
 	 	 	 m _ p r e v i o u s S e t I t e m I n f o [   b i n d i n g I D   ] . m _ i t e m N a m e   =   i t e m N a m e ;  
 	 	 	 m _ p r e v i o u s S e t I t e m I n f o [   b i n d i n g I D   ] . m _ a m m o S t r     =   a m m o S t r ;  
 	 	 	 m _ p r e v i o u s S e t I t e m I n f o [   b i n d i n g I D   ] . m _ b t n             =   b t n ;  
 	 	 	 m _ p r e v i o u s S e t I t e m I n f o [   b i n d i n g I D   ] . m _ p c B t n         =   p c B t n ;  
 	 	 	  
 	 	 	 m _ f x S e t I t e m I n f o . I n v o k e S e l f S e v e n A r g s ( F l a s h A r g I n t ( b i n d i n g I D ) ,   F l a s h A r g S t r i n g ( i c o n ) ,   F l a s h A r g S t r i n g ( c a t e g o r y ) ,   F l a s h A r g S t r i n g ( i t e m N a m e ) ,   F l a s h A r g S t r i n g ( a m m o S t r ) ,   F l a s h A r g I n t ( b t n ) ,   F l a s h A r g I n t ( p c B t n ) ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   G e t K e y B y B i n d i n g ( b i n d i n g N a m e   :   H u d I t e m I n f o B i n d i n g )   :   i n t  
 	 {  
 	 	 v a r   o u t K e y s   :   a r r a y <   E I n p u t K e y   > ;  
 	 	 s w i t c h ( b i n d i n g N a m e )  
 	 	 {    
 	 	 	 c a s e   H u d I t e m I n f o B i n d i n g _ i t e m 1   :  
 	 	 	 	 t h e I n p u t . G e t P a d K e y s F o r A c t i o n ( ' T h r o w I t e m ' , o u t K e y s ) ;  
 	 	 	 	  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   H u d I t e m I n f o B i n d i n g _ p o t i o n 1   :  
 	 	 	 	 t h e I n p u t . G e t P a d K e y s F o r A c t i o n ( ' D r i n k P o t i o n 1 ' , o u t K e y s ) ;  
 	 	 	 	  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   H u d I t e m I n f o B i n d i n g _ p o t i o n 2   :  
 	 	 	 	 t h e I n p u t . G e t P a d K e y s F o r A c t i o n ( ' D r i n k P o t i o n 2 ' , o u t K e y s ) ;  
 	 	 	 	  
 	 	 	 	 b r e a k ;  
 	 	 	 d e f a u l t :  
 	 	 	 	 r e t u r n   - 1 ;  
 	 	 }  
 	 	 r e t u r n   o u t K e y s [ 0 ] ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   G e t P C K e y B y B i n d i n g ( b i n d i n g N a m e   :   H u d I t e m I n f o B i n d i n g )   :   i n t  
 	 {  
 	 	 v a r   o u t K e y s   :   a r r a y <   E I n p u t K e y   > ;  
 	 	 s w i t c h ( b i n d i n g N a m e )  
 	 	 {  
 	 	 	 c a s e   H u d I t e m I n f o B i n d i n g _ i t e m 1   :  
 	 	 	 	 t h e I n p u t . G e t P C K e y s F o r A c t i o n ( ' T h r o w I t e m ' , o u t K e y s ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   H u d I t e m I n f o B i n d i n g _ p o t i o n 1   :  
 	 	 	 	 t h e I n p u t . G e t P C K e y s F o r A c t i o n ( ' D r i n k P o t i o n 1 ' , o u t K e y s ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   H u d I t e m I n f o B i n d i n g _ p o t i o n 2   :  
 	 	 	 	 t h e I n p u t . G e t P C K e y s F o r A c t i o n ( ' D r i n k P o t i o n 2 ' , o u t K e y s ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   H u d I t e m I n f o B i n d i n g _ p o t i o n 3   :  
 	 	 	 	 t h e I n p u t . G e t P C K e y s F o r A c t i o n ( ' D r i n k P o t i o n 3 ' , o u t K e y s ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   H u d I t e m I n f o B i n d i n g _ p o t i o n 4   :  
 	 	 	 	 t h e I n p u t . G e t P C K e y s F o r A c t i o n ( ' D r i n k P o t i o n 4 ' , o u t K e y s ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	  
 	 	 	  
 	 	 	 	  
 	 	 	 d e f a u l t :  
 	 	 	 	 r e t u r n   - 1 ;  
 	 	 }  
 	 	 r e t u r n   o u t K e y s [ 0 ] ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   U p d a t e P o s i t i o n ( a n c h o r X : f l o a t ,   a n c h o r Y : f l o a t )   :   v o i d  
 	 {  
 	 	 v a r   l _ f l a s h M o d u l e   	 	 :   C S c r i p t e d F l a s h S p r i t e ;  
 	 	 v a r   t e m p X 	 	 	 	 :   f l o a t ;  
 	 	 v a r   t e m p Y 	 	 	 	 :   f l o a t ;  
 	 	  
 	 	 l _ f l a s h M o d u l e   	 =   G e t M o d u l e F l a s h ( ) ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 t e m p X   =   a n c h o r X   +   ( 3 0 0 . 0   *   ( 1 . 0   -   t h e G a m e . G e t U I H o r i z o n t a l F r a m e S c a l e ( ) ) ) ;  
 	 	 t e m p Y   =   a n c h o r Y   -   ( 2 0 0 . 0   *   ( 1 . 0   -   t h e G a m e . G e t U I V e r t i c a l F r a m e S c a l e ( ) ) ) ;    
 	 	  
 	 	 l _ f l a s h M o d u l e . S e t X (   t e m p X   ) ;  
 	 	 l _ f l a s h M o d u l e . S e t Y (   t e m p Y   ) ; 	  
 	 }  
 	 	  
 	 p u b l i c   f u n c t i o n   F o r c e S h o w E l e m e n t ( )   :   v o i d  
 	 {  
 	 	 m _ f x U p d a t e E l e m e n t S F F . I n v o k e S e l f ( ) ;  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   E n a b l e E l e m e n t (   e n a b l e   :   b o o l   )   :   v o i d  
 	 {  
 	 	  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   S h o w E l e m e n t I g n o r e S t a t e (   s h o w   :   b o o l ,   o p t i o n a l   b I m m e d i a t e l y   :   b o o l   )   :   v o i d  
 	 {  
 	 	 i f (   m _ b E n a b l e d   )  
 	 	 {  
 	 	 	 m _ f x S h o w E l e m e n t S F F . I n v o k e S e l f T h r e e A r g s (   F l a s h A r g B o o l (   s h o w   ) ,   F l a s h A r g B o o l (   b I m m e d i a t e l y   ) ,   F l a s h A r g B o o l (   t r u e   )   ) ;  
 	 	 }  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   S e t A l w a y s D i s p l a y e d (   v a l u e   :   b o o l   )  
 	 {  
 	 	 m _ f x S e t A l w a y s D i s p l a y e d . I n v o k e S e l f O n e A r g ( F l a s h A r g B o o l ( v a l u e ) ) ;  
 	 }  
 }  
  
 e x e c   f u n c t i o n   e i t e m (   e n a b l e   :   b o o l   )  
 {  
 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 v a r   m o d u l e   :   C R 4 H u d M o d u l e I t e m I n f o ;  
  
 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 i f (   h u d   )  
 	 {  
 	 	 m o d u l e   =   ( C R 4 H u d M o d u l e I t e m I n f o ) h u d . G e t H u d M o d u l e ( " I t e m I n f o M o d u l e " ) ;  
 	 	 m o d u l e . E n a b l e E l e m e n t (   e n a b l e   ) ;  
 	 }  
 } 