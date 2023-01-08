/ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / * *   	 �   2 0 1 5   C D   P R O J E K T   S . A .   A l l   r i g h t s   r e s e r v e d .  
 / * *   	 T H E   W I T C H E R �   i s   a   t r a d e m a r k   o f   C D   P R O J E K T   S .   A .  
 / * *   	 T h e   W i t c h e r   g a m e   i s   b a s e d   o n   t h e   p r o s e   o f   A n d r z e j   S a p k o w s k i .  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
  
  
  
 c l a s s   C R 4 H u d M o d u l e C o n t r o l s F e e d b a c k   e x t e n d s   C R 4 H u d M o d u l e B a s e  
 { 	 	  
 	 p r i v a t e   v a r 	 m _ f x S e t S w o r d T e x t S F F   	 :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f l a s h V a l u e S t o r a g e   	 :   C S c r i p t e d F l a s h V a l u e S t o r a g e ;  
 	 p r i v a t e   v a r   m _ c u r r e n t I n p u t C o n t e x t 	 :   n a m e ;  
 	 p r i v a t e   v a r   m _ p r e v i o u s I n p u t C o n t e x t   	 :   n a m e ;  
 	 / / m o d W 3 R e d u x R G C + +  
 	 p r i v a t e   v a r   m _ c u r r e n t I n p u t M o d i f i e r 	 :   b o o l ;  
 	 p r i v a t e   v a r   m _ p r e v i o u s I n p u t M o d i f i e r 	 :   b o o l ;  
 	 	 d e f a u l t   m _ p r e v i o u s I n p u t M o d i f i e r   =   f a l s e ;  
 	 / / m o d W 3 R e d u x R G C - -  
 	 p r i v a t e   v a r   m _ c u r r e n t P l a y e r W e a p o n 	 :   E P l a y e r W e a p o n ;  
 	 p r i v a t e   v a r   m _ d i s p l a y S p r i n t   	 	 :   b o o l ;  
 	 p r i v a t e   v a r   m _ d i s p l a y J u m p   	 	 	 :   b o o l ;  
 	 p r i v a t e   v a r   m _ d i s p l a y C a l l H o r s e 	 	 :   b o o l ;  
 	 p r i v a t e   v a r   m _ d i s p l a y D i v e D o w n 	 	 :   b o o l ;  
 	 p r i v a t e   v a r   m _ d i s p l a y G a l l o p 	 	 	 :   b o o l ;  
 	 p r i v a t e   v a r   m _ d i s p l a y C a n t e r 	 	 	 :   b o o l ;  
 	 p r i v a t e 	 v a r   m _ m o v e m e n t L o c k T y p e   	 	 :   E P l a y e r M o v e m e n t L o c k T y p e ;  
 	 p r i v a t e   v a r   m _ l a s t U s e d P C I n p u t 	 	 :   b o o l ;  
 	 p r i v a t e   v a r   m _ C u r r e n t H o r s e C o m p 	 	 :   W 3 H o r s e C o m p o n e n t ;  
  
 	 p r i v a t e   c o n s t   v a r   K E Y _ C O N T R O L S _ F E E D B A C K _ L I S T   :   s t r i n g ;   	 	 d e f a u l t   K E Y _ C O N T R O L S _ F E E D B A C K _ L I S T   	 	 =   " h u d . m o d u l e . c o n t r o l s f e e d b a c k " ;  
 	  
 	  
 	 p r i v a t e   v a r   m i n i m a p M o d u l e   :   C R 4 H u d M o d u l e M i n i m a p 2 ;  
 	 p r i v a t e   v a r   o b j e c t i v e M o d u l e   :   C R 4 H u d M o d u l e Q u e s t s ;  
 	  
  
 	 e v e n t     O n C o n f i g U I ( )  
 	 { 	 	  
 	 	 v a r   f l a s h M o d u l e   :   C S c r i p t e d F l a s h S p r i t e ;  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	  
 	 	 m _ a n c h o r N a m e   =   " m c A n c h o r C o n t r o l s F e e d b a c k " ;    
 	 	 m _ d i s p l a y S p r i n t   =   t h e P l a y e r . I s A c t i o n A l l o w e d ( E I A B _ R u n A n d S p r i n t ) ;  
 	 	 s u p e r . O n C o n f i g U I ( ) ;  
 	 	 f l a s h M o d u l e   =   G e t M o d u l e F l a s h ( ) ; 	  
 	 	 m _ f l a s h V a l u e S t o r a g e   =   G e t M o d u l e F l a s h V a l u e S t o r a g e ( ) ;  
 	 	 m _ f x S e t S w o r d T e x t S F F   =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t S w o r d T e x t "   ) ;  
 	 	  
 	 	 S e t T i c k I n t e r v a l (   0 . 5   ) ;  
 	 	  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	  
 	 	 U p d a t e I n p u t C o n t e x t ( h u d . c u r r e n t I n p u t C o n t e x t ) ;  
 	 	  
 	 	 i f   ( h u d )  
 	 	 {  
 	 	 	 h u d . U p d a t e H u d C o n f i g ( ' C o n t r o l s F e e d b a c k M o d u l e ' ,   t r u e ) ;  
 	 	 	  
 	 	 	  
 	 	 	 m i n i m a p M o d u l e   =   ( C R 4 H u d M o d u l e M i n i m a p 2 ) h u d . G e t H u d M o d u l e ( " M i n i m a p 2 M o d u l e " ) ;  
 	 	 	 o b j e c t i v e M o d u l e   =   ( C R 4 H u d M o d u l e Q u e s t s ) h u d . G e t H u d M o d u l e ( " Q u e s t s M o d u l e " ) ;  
 	 	 	  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   G e t M i n i m a p M o d u l e ( )  
 	 {  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 i f ( h u d )  
 	 	 	 m i n i m a p M o d u l e   =   ( C R 4 H u d M o d u l e M i n i m a p 2 ) h u d . G e t H u d M o d u l e ( " M i n i m a p 2 M o d u l e " ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   G e t O b j e c t i v e M o d u l e ( )  
 	 {  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 i f ( h u d )  
 	 	 	 o b j e c t i v e M o d u l e   =   ( C R 4 H u d M o d u l e Q u e s t s ) h u d . G e t H u d M o d u l e ( " Q u e s t s M o d u l e " ) ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   U p d a t e I n p u t C o n t e x t (   i n p u t C o n t e x t N a m e   : n a m e   )  
 	 { 	 	  
 	 	 m _ c u r r e n t I n p u t C o n t e x t   =   i n p u t C o n t e x t N a m e ;  
 	 	 i f (   m _ c u r r e n t I n p u t C o n t e x t   = =   ' J u m p C l i m b '   )  
 	 	 {  
 	 	 	 S e n d I n p u t C o n t e x t A c t i o n s ( ' E x p l o r a t i o n ' ) ;  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	 S e n d I n p u t C o n t e x t A c t i o n s ( i n p u t C o n t e x t N a m e ) ;  
 	 }  
 	  
 	 e v e n t   O n T i c k (   t i m e D e l t a   :   f l o a t   )  
 	 {  
 	 	 i f   (   ! C a n T i c k (   t i m e D e l t a   )   | |   ! G e t E n a b l e d ( )   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( ! m i n i m a p M o d u l e )  
 	 	 	 G e t M i n i m a p M o d u l e ( ) ;  
 	 	 i f ( ! o b j e c t i v e M o d u l e )  
 	 	 	 G e t O b j e c t i v e M o d u l e ( ) ;  
 	 	  
 	 	  
 	 	 i f (   m _ c u r r e n t P l a y e r W e a p o n   ! =   t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   )  
 	 	 {  
 	 	 	 m _ c u r r e n t P l a y e r W e a p o n   =   t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( ) ;  
 	 	 	 U p d a t e S w o r d D i s p l a y ( ) ;  
 	 	 }  
  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 m _ c u r r e n t I n p u t M o d i f i e r   =   G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( ) ;  
 	 	 / / m o d W 3 R e d u x R G C - -  
  
 	 	 i f (   m _ l a s t U s e d P C I n p u t   ! =   t h e I n p u t . L a s t U s e d P C I n p u t ( )   )  
 	 	 {  
 	 	 	 U p d a t e I n p u t C o n t e x t A c t i o n s ( ) ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 e l s e   i f (   ( m _ c u r r e n t I n p u t C o n t e x t   = =   ' C o m b a t '   | |   m _ c u r r e n t I n p u t C o n t e x t   = =   ' E x p l o r a t i o n ' )   & &   m _ p r e v i o u s I n p u t M o d i f i e r   ! =   m _ c u r r e n t I n p u t M o d i f i e r   )  
 	 	 {  
 	 	 	 S e n d I n p u t C o n t e x t A c t i o n s ( m _ c u r r e n t I n p u t C o n t e x t , t r u e ) ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	 e l s e   i f (   m _ c u r r e n t I n p u t C o n t e x t   = =   t h e P l a y e r . G e t E x p l o r a t i o n I n p u t C o n t e x t ( )   | |   m _ c u r r e n t I n p u t C o n t e x t   = =   ' J u m p C l i m b '   )  
 	 	 {  
 	 	 	 i f (   m _ d i s p l a y S p r i n t   ! =   t h e P l a y e r . I s A c t i o n A l l o w e d ( E I A B _ R u n A n d S p r i n t )   | |   t h e P l a y e r . m o v e m e n t L o c k T y p e   ! =   m _ m o v e m e n t L o c k T y p e   | |   m _ d i s p l a y C a l l H o r s e   ! =   t h e P l a y e r . I s A c t i o n A l l o w e d ( E I A B _ C a l l H o r s e )   | |   m _ d i s p l a y J u m p 	 ! =   t h e P l a y e r . I s A c t i o n A l l o w e d ( E I A B _ J u m p )   )  
 	 	 	 {  
 	 	 	 	 U p d a t e I n p u t C o n t e x t A c t i o n s ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f (   m _ c u r r e n t I n p u t C o n t e x t   = =   ' D i v i n g '   | |   m _ c u r r e n t I n p u t C o n t e x t   = =   ' S w i m m i n g '   )  
 	 	 {  
 	 	 	 i f   (   m _ d i s p l a y S p r i n t   ! =   t h e P l a y e r . I s A c t i o n A l l o w e d ( E I A B _ R u n A n d S p r i n t )   | |   m _ d i s p l a y D i v e D o w n   ! =   t h e P l a y e r . O n A l l o w e d D i v e D o w n ( )   )  
 	 	 	 {  
 	 	 	 	 U p d a t e I n p u t C o n t e x t A c t i o n s ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f (   m _ c u r r e n t I n p u t C o n t e x t   = =   ' H o r s e '   )  
 	 	 {  
 	 	 	 m _ C u r r e n t H o r s e C o m p   =   t h e P l a y e r . G e t U s e d H o r s e C o m p o n e n t ( ) ;  
 	 	 	 i f   (   m _ d i s p l a y G a l l o p   ! =   m _ C u r r e n t H o r s e C o m p . O n C a n G a l l o p ( )   | |   m _ d i s p l a y C a n t e r   ! =   m _ C u r r e n t H o r s e C o m p . O n C a n C a n t e r ( )   )  
 	 	 	 {  
 	 	 	 	 U p d a t e I n p u t C o n t e x t A c t i o n s ( ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   U p d a t e I n p u t C o n t e x t A c t i o n s ( )  
 	 {  
 	 	 i f (   m _ c u r r e n t I n p u t C o n t e x t   ! =   t h e P l a y e r . G e t C o m b a t I n p u t C o n t e x t ( )   )  
 	 	 {  
 	 	 	 i f   (   m _ c u r r e n t I n p u t C o n t e x t   = =   ' J u m p C l i m b '   )  
 	 	 	 	 S e n d I n p u t C o n t e x t A c t i o n s ( ' E x p l o r a t i o n ' , t r u e ) ;  
 	 	 	 e l s e  
 	 	 	 	 S e n d I n p u t C o n t e x t A c t i o n s ( m _ c u r r e n t I n p u t C o n t e x t , t r u e ) ;  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   F o r c e M o d u l e U p d a t e ( )  
 	 {  
 	 	 S e n d I n p u t C o n t e x t A c t i o n s ( m _ c u r r e n t I n p u t C o n t e x t ,   t r u e ) ;  
 	 }  
 	  
 	 f u n c t i o n   S e t E n a b l e d (   v a l u e   :   b o o l   )  
 	 {  
 	 	 s u p e r . S e t E n a b l e d ( v a l u e ) ;  
 	 	 S e n d I n p u t C o n t e x t A c t i o n s ( m _ c u r r e n t I n p u t C o n t e x t ,   t r u e ) ;  
 	 } 	  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e S w o r d D i s p l a y ( )  
 	 {  
 	 	 s w i t c h (   m _ c u r r e n t P l a y e r W e a p o n   )  
 	 	 {  
 	 	 	 c a s e   P W _ S i l v e r   :  
 	 	 	 	 m _ f x S e t S w o r d T e x t S F F . I n v o k e S e l f O n e A r g ( F l a s h A r g S t r i n g ( G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ i n v e n t o r y _ p a p e r d o l l _ s l o t n a m e _ s i l v e r " ) ) ) ;  
 	 	 	 	 b r e a k ; 	 	  
 	 	 	 c a s e   P W _ S t e e l   :  
 	 	 	 	 m _ f x S e t S w o r d T e x t S F F . I n v o k e S e l f O n e A r g ( F l a s h A r g S t r i n g ( G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ i n v e n t o r y _ p a p e r d o l l _ s l o t n a m e _ s t e e l " ) ) ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 d e f a u l t   :  
 	 	 	 	 m _ f x S e t S w o r d T e x t S F F . I n v o k e S e l f O n e A r g ( F l a s h A r g S t r i n g ( " " ) ) ;  
 	 	 	 	 b r e a k ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   S e n d I n p u t C o n t e x t A c t i o n s (   i n p u t C o n t e x t N a m e   : n a m e ,   o p t i o n a l   i s F o r c e d   :   b o o l   )  
 	 {  
 	 	 v a r   l _ F l a s h A r r a y 	 	 	 :   C S c r i p t e d F l a s h A r r a y ;  
 	 	 v a r   l _ D a t a F l a s h O b j e c t   	 	 :   C S c r i p t e d F l a s h O b j e c t ;  
 	 	 v a r   b i n d i n g G F x D a t a 	   	 	 :   C S c r i p t e d F l a s h O b j e c t ;  
 	 	 v a r   b i n d i n g G F x D a t a 2 	   	 	 :   C S c r i p t e d F l a s h O b j e c t ;  
 	 	 v a r   l _ A c t i o n s A r r a y 	   	 	 :   a r r a y   < n a m e > ;  
 	 	 v a r   l _ s w i m i n g S p r i n t 	   	 	 :   b o o l ;  
 	 	 v a r   i 	   	 	 	 	 	 :   i n t ;  
 	 	 v a r   o u t K e y s   	 	 	 	 :   a r r a y <   E I n p u t K e y   > ;  
 	 	 v a r   o u t K e y s P C   	 	 	 	 :   a r r a y <   E I n p u t K e y   > ;  
 	 	 v a r   l a b e l P r e f i x 	 	 	 	 :   s t r i n g ;  
 	 	 v a r   c u r A c t i o n 	 	 	 	 :   n a m e ;  
 	 	 v a r   b r a c k e t O p e n i n g S y m b o l   	 :   s t r i n g ;  
 	 	 v a r   b r a c k e t C l o s i n g S y m b o l     	 :   s t r i n g ;  
 	 	 v a r   a c t i o n L a b e l 	 	 	     	 :   s t r i n g ;  
 	 	  
 	 	 v a r   a t t a c k K e y s P C   	 	 	 :   a r r a y <   E I n p u t K e y   > ;  
 	 	 v a r   a t t a c k M o d K e y s P C   	         :   a r r a y <   E I n p u t K e y   > ;  
 	 	 v a r   a l t e r A t t a c k K e y s P C   	         :   a r r a y <   E I n p u t K e y   > ;  
 	 	 v a r   m o d i f i e r 	 	 	 	 :   E I n p u t K e y ;  
 	 	  
 	 	  
 	 	 v a r   s h o w C i r i M i n i m a p ,   s h o w C i r i O b j e c t i v e   :   b o o l ;  
 	 	  
 	 	  
 	 	 G e t B r a c k e t S y m b o l s ( b r a c k e t O p e n i n g S y m b o l ,   b r a c k e t C l o s i n g S y m b o l ) ;  
 	 	  
 	 	 l _ F l a s h A r r a y   =   m _ f l a s h V a l u e S t o r a g e . C r e a t e T e m p F l a s h A r r a y ( ) ;  
 	 	 l _ A c t i o n s A r r a y . C l e a r ( ) ;  
 	 	 l _ s w i m i n g S p r i n t   =   f a l s e ;  
 	 	  
 	 	 i f (   G e t E n a b l e d ( )   )  
 	 	 {  
 	 	 	 i f (   ! i s F o r c e d   & &   (   m _ p r e v i o u s I n p u t C o n t e x t   = =   m _ c u r r e n t I n p u t C o n t e x t   | |   (   m _ p r e v i o u s I n p u t C o n t e x t   = =   ' J u m p C l i m b '   & &   m _ c u r r e n t I n p u t C o n t e x t   = =   ' E x p l o r a t i o n '   )   | |   (   m _ p r e v i o u s I n p u t C o n t e x t   = =   ' E x p l o r a t i o n '   & &   m _ c u r r e n t I n p u t C o n t e x t   = =   ' J u m p C l i m b '   )   )   )  
 	 	 	 {  
 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	 	  
 	 	 	 m _ m o v e m e n t L o c k T y p e   	 =   t h e P l a y e r . m o v e m e n t L o c k T y p e ;  
 	 	 	 m _ d i s p l a y S p r i n t   	 =   t h e P l a y e r . I s A c t i o n A l l o w e d ( E I A B _ R u n A n d S p r i n t ) ;  
 	 	 	 m _ d i s p l a y C a l l H o r s e   	 =   t h e P l a y e r . I s A c t i o n A l l o w e d ( E I A B _ C a l l H o r s e ) ;  
 	 	 	 m _ l a s t U s e d P C I n p u t   	 =   t h e I n p u t . L a s t U s e d P C I n p u t ( ) ;  
 	 	 	 m _ d i s p l a y D i v e D o w n   	 =   t h e P l a y e r . O n A l l o w e d D i v e D o w n ( ) ;  
 	 	 	 m _ d i s p l a y J u m p 	 	 =   t h e P l a y e r . I s A c t i o n A l l o w e d ( E I A B _ J u m p ) ;  
 	 	 	  
 	 	 	 m _ C u r r e n t H o r s e C o m p   =   t h e P l a y e r . G e t U s e d H o r s e C o m p o n e n t ( ) ;  
 	 	 	 m _ d i s p l a y G a l l o p   	 =   m _ C u r r e n t H o r s e C o m p . O n C a n G a l l o p ( ) ;  
 	 	 	 m _ d i s p l a y C a n t e r   	 =   m _ C u r r e n t H o r s e C o m p . O n C a n C a n t e r ( ) ;  
 	 	 	  
 	 	 	  
 	 	 	 s h o w C i r i M i n i m a p   =   m i n i m a p M o d u l e . G e t M i n i m a p D u r i n g F o c u s C o m b a t ( ) ;  
 	 	 	 s h o w C i r i O b j e c t i v e   =   o b j e c t i v e M o d u l e . G e t O b j e c t i v e D u r i n g F o c u s C o m b a t ( ) ;  
 	 	 	  
 	 	 	  
 	 	 	 s w i t c h ( i n p u t C o n t e x t N a m e )  
 	 	 	 {  
 	 	 	 	 c a s e   ' J u m p C l i m b '   :  
 	 	 	 	 	 r e t u r n ;  
 	 	 	 	 c a s e   ' E x p l o r a t i o n '   :  
 	 	 	 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 	 	 	 i f ( m _ c u r r e n t I n p u t M o d i f i e r )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 / / s i g n   m o d i f i e r   c o n t r o l s  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' R G C _ C a s t I g n i ' ) ;  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' R G C _ C a s t A a r d ' ) ;  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' R G C _ C a s t Q u e n ' ) ;  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' R G C _ C a s t Y r d e n ' ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f (   m _ d i s p l a y S p r i n t   & &   ! t h e G a m e . I s F o c u s M o d e A c t i v e ( )   )  
 	 	 	 	 	 	 {  
  
 	 	 	 	 	 	 	 i f ( m _ l a s t U s e d P C I n p u t   | |   ! t h e P l a y e r . G e t L e f t S t i c k S p r i n t ( ) )  
 	 	 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' S p r i n t ' ) ;  
 	 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' S p r i n t T o g g l e ' ) ;  
  
 	 	 	 	 	 	 }  
  
 	 	 	 	 	 	 i f (   m _ d i s p l a y J u m p   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' J u m p ' ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 i f (   ! t h e P l a y e r . I s C i r i ( )   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' F o c u s ' ) ;  
 	 	 	 	 	 	 	 i f (   m _ d i s p l a y C a l l H o r s e   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 i f ( R G C C o n f i g I s I m m e r s i v e M o t i o n E n a b l e d ( )   & &   t h e P l a y e r . G e t L e f t S t i c k S p r i n t ( ) )  
 	 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' R G C _ S p a w n H o r s e ' ) ;  
 	 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' S p a w n H o r s e ' ) ;  
 	 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 c a s e   ' E x p l o r a t i o n _ R e p l a c e r _ C i r i '   :  
 	 	 	 	 	 i f (   m _ d i s p l a y S p r i n t   & &   ! t h e G a m e . I s F o c u s M o d e A c t i v e ( )   ) 	  
 	 	 	 	 	 {  
 	 	 	 	 	 	  
 	 	 	 	 	 	 i f ( m _ l a s t U s e d P C I n p u t   | |   ! t h e P l a y e r . G e t L e f t S t i c k S p r i n t ( ) )  
 	 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' S p r i n t ' ) ; 	  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' S p r i n t T o g g l e ' ) ; 	  
 	 	 	 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 	 i f (   m _ d i s p l a y J u m p   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' J u m p ' ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 	 i f (   s h o w C i r i M i n i m a p   | |   s h o w C i r i O b j e c t i v e   )  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' F o c u s ' ) ;  
 	 	 	 	 	  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 c a s e   ' H o r s e '   :    
 	 	 	 	 c a s e   ' H o r s e _ R e p l a c e r _ C i r i '   :    
 	 	 	 	 	 i f   (   m _ d i s p l a y G a l l o p   | |   t h e P l a y e r . I s C i r i ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' G a l l o p ' ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 i f   (   m _ d i s p l a y C a n t e r   | |   t h e P l a y e r . I s C i r i ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' C a n t e r ' ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' H o r s e D i s m o u n t ' ) ;  
 	 	 	 	 	 b r e a k ; 	 	 	  
 	 	 	 	 c a s e   ' B o a t '   :    
 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' G I _ A c c e l e r a t e ' ) ;  
 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' G I _ D e c e l e r a t e ' ) ;  
 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' B o a t D i s m o u n t ' ) ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 c a s e   ' B o a t P a s s e n g e r '   :  
 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' B o a t D i s m o u n t ' ) ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 c a s e   ' S w i m m i n g '   :    
 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' D i v e D o w n ' ) ;  
 	 	 	 	 	 i f (   m _ d i s p l a y S p r i n t   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	  
 	 	 	 	 	 	 i f ( m _ l a s t U s e d P C I n p u t   | |   ! t h e P l a y e r . G e t L e f t S t i c k S p r i n t ( ) )  
 	 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' S p r i n t ' ) ; 	  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' S p r i n t T o g g l e ' ) ; 	  
 	 	 	 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 	 l _ s w i m i n g S p r i n t   =   t r u e ;  
 	 	 	 	 	 b r e a k ; 	 	  
 	 	 	 	 c a s e   ' D i v i n g '   :  
 	 	 	 	 	 i f   (   m _ d i s p l a y D i v e D o w n   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' D i v e D o w n ' ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' D i v e U p ' ) ;  
 	 	 	 	 	 i f (   m _ d i s p l a y S p r i n t   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	  
 	 	 	 	 	 	 i f ( m _ l a s t U s e d P C I n p u t   | |   ! t h e P l a y e r . G e t L e f t S t i c k S p r i n t ( ) )  
 	 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' S p r i n t ' ) ; 	  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' S p r i n t T o g g l e ' ) ; 	  
 	 	 	 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 	 l _ s w i m i n g S p r i n t   =   t r u e ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 c a s e   ' F i s t F i g h t '   :    
 	 	 	 	 c a s e   ' C o m b a t F i s t s '   :    
 	 	 	 	 c a s e   ' C o m b a t '   :    
 	 	 	 	 	 i f (   t h e P l a y e r . I s I n C o m b a t F i s t ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 / / f i s t   c o m b a t   c o n t r o l s  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' A t t a c k L i g h t ' ) ;  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' A t t a c k H e a v y ' ) ;  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' D o d g e ' ) ;  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' L o c k A n d G u a r d ' ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f ( m _ c u r r e n t I n p u t M o d i f i e r )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 / / s i g n   m o d i f i e r   c o n t r o l s  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' R G C _ C a s t I g n i ' ) ;  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' R G C _ C a s t A a r d ' ) ;  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' R G C _ C a s t Q u e n ' ) ;  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' R G C _ C a s t Y r d e n ' ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 / / s t a n d a r d   c o m b a t   c o n t r o l s  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' A t t a c k L i g h t ' ) ;  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' A t t a c k H e a v y ' ) ;  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' D o d g e ' ) ;  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' R G C _ R e a l t i m e M o d i f i e r ' ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 c a s e   ' C o m b a t _ R e p l a c e r _ C i r i '   :  
 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' A t t a c k L i g h t ' ) ;  
 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' C i r i D o d g e ' ) ;  
 	 	 	 	 	 i f   (   t h e P l a y e r . H a s A b i l i t y ( ' C i r i C h a r g e ' )   )  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' C i r i S p e c i a l A t t a c k H e a v y ' ) ;  
 	 	 	 	 	 i f   (   t h e P l a y e r . H a s A b i l i t y ( ' C i r i B l i n k ' )   )  
 	 	 	 	 	 	 l _ A c t i o n s A r r a y . P u s h B a c k ( ' C i r i S p e c i a l A t t a c k ' ) ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 d e f a u l t :  
 	 	 	 	 	 b r e a k ;  
 	 	 	 }  
  
 	 	 	 f o r (   i   =   0 ;   i   <   l _ A c t i o n s A r r a y . S i z e ( ) ;   i   + =   1   )  
 	 	 	 {  
 	 	 	 	 c u r A c t i o n   =   l _ A c t i o n s A r r a y [ i ] ;  
 	 	 	 	 o u t K e y s . C l e a r ( ) ;  
 	 	 	 	 o u t K e y s P C . C l e a r ( ) ;  
 	 	 	 	 t h e I n p u t . G e t P a d K e y s F o r A c t i o n ( c u r A c t i o n ,   o u t K e y s   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f   ( m _ l a s t U s e d P C I n p u t )  
 	 	 	 	 {  
 	 	 	 	 	 m o d i f i e r   =   I K _ N o n e ;  
 	 	 	 	 	  
 	 	 	 	 	 a t t a c k M o d K e y s P C . C l e a r ( ) ;  
 	 	 	 	 	 t h e I n p u t . G e t P C K e y s F o r A c t i o n ( ' P C A l t e r n a t e ' ,   a t t a c k M o d K e y s P C   ) ;  
 	 	 	 	 	  
 	 	 	 	 	 s w i t c h   ( c u r A c t i o n )  
 	 	 	 	 	 {  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 	 c a s e   ' A t t a c k L i g h t '   :  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 a t t a c k K e y s P C . C l e a r ( ) ;  
 	 	 	 	 	 	 	 	 t h e I n p u t . G e t P C K e y s F o r A c t i o n ( ' A t t a c k W i t h A l t e r n a t e L i g h t ' ,   a t t a c k K e y s P C   ) ;  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 i f   ( a t t a c k K e y s P C . S i z e ( )   >   0   & &   a t t a c k K e y s P C [ 0 ]   ! =   I K _ N o n e )  
 	 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 	 o u t K e y s P C . P u s h B a c k ( a t t a c k K e y s P C [ 0 ] ) ;  
 	 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 	 e l s e 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 	 a l t e r A t t a c k K e y s P C . C l e a r ( ) ;  
 	 	 	 	 	 	 	 	 	 t h e I n p u t . G e t P C K e y s F o r A c t i o n ( ' A t t a c k W i t h A l t e r n a t e H e a v y ' ,   a l t e r A t t a c k K e y s P C   ) ;  
 	 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 	 i f   ( a t t a c k M o d K e y s P C . S i z e ( )   >   0   & &   a l t e r A t t a c k K e y s P C . S i z e ( )   >   0   & &   a t t a c k M o d K e y s P C [ 0 ]   ! =   I K _ N o n e   & &   a l t e r A t t a c k K e y s P C [ 0 ]   ! =   I K _ N o n e )  
 	 	 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 	 	 o u t K e y s P C . P u s h B a c k ( a l t e r A t t a c k K e y s P C [ 0 ] ) ;  
 	 	 	 	 	 	 	 	 	 	 m o d i f i e r   =   a t t a c k M o d K e y s P C [ 0 ] ;  
 	 	 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 c a s e   ' A t t a c k H e a v y '   :  
 	 	 	 	 	 	 c a s e   ' C i r i S p e c i a l A t t a c k H e a v y '   :  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 a t t a c k K e y s P C . C l e a r ( ) ;  
 	 	 	 	 	 	 	 	 t h e I n p u t . G e t P C K e y s F o r A c t i o n ( ' A t t a c k W i t h A l t e r n a t e H e a v y ' ,   a t t a c k K e y s P C   ) ;  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 i f   ( a t t a c k K e y s P C . S i z e ( )   >   0   & &   a t t a c k K e y s P C [ 0 ]   ! =   I K _ N o n e )  
 	 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 	 o u t K e y s P C . P u s h B a c k ( a t t a c k K e y s P C [ 0 ] ) ;  
 	 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 	 e l s e 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 	 a l t e r A t t a c k K e y s P C . C l e a r ( ) ;  
 	 	 	 	 	 	 	 	 	 t h e I n p u t . G e t P C K e y s F o r A c t i o n ( ' A t t a c k W i t h A l t e r n a t e L i g h t ' ,   a l t e r A t t a c k K e y s P C   ) ;  
 	 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 	 i f   ( a t t a c k M o d K e y s P C . S i z e ( )   >   0   & &   a l t e r A t t a c k K e y s P C . S i z e ( )   >   0   & &   a t t a c k M o d K e y s P C [ 0 ]   ! =   I K _ N o n e   & &   a l t e r A t t a c k K e y s P C [ 0 ]   ! =   I K _ N o n e )  
 	 	 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 	 	 o u t K e y s P C . P u s h B a c k ( a l t e r A t t a c k K e y s P C [ 0 ] ) ;  
 	 	 	 	 	 	 	 	 	 	 m o d i f i e r   =   a t t a c k M o d K e y s P C [ 0 ] ;  
 	 	 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 d e f a u l t :  
 	 	 	 	 	 	 	 t h e I n p u t . G e t P C K e y s F o r A c t i o n ( c u r A c t i o n ,   o u t K e y s P C   ) ;  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 s w i t c h   ( c u r A c t i o n )    
 	 	 	 	 {  
 	 	 	 	 	 c a s e   ' S p r i n t '   :  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 c a s e   ' H o r s e D i s m o u n t ' :  
 	 	 	 	 	 	 o u t K e y s . P u s h B a c k ( I K _ P a d _ B _ C I R C L E ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	  
 	 	 	 	 	 d e f a u l t :  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 	  
  
 	 	 	 	 l _ D a t a F l a s h O b j e c t   =   m _ f l a s h V a l u e S t o r a g e . C r e a t e T e m p F l a s h O b j e c t ( ) ;  
 	 	 	 	 b i n d i n g G F x D a t a   =   l _ D a t a F l a s h O b j e c t . C r e a t e F l a s h O b j e c t ( " r e d . g a m e . w i t c h e r 3 . d a t a . K e y B i n d i n g D a t a " ) ;  
 	 	 	 	 b i n d i n g G F x D a t a . S e t M e m b e r F l a s h I n t ( " g a m e p a d _ k e y C o d e " ,   o u t K e y s [ 0 ]   ) ;  
 	 	 	 	  
 	 	 	 	 i f   ( o u t K e y s P C . S i z e ( )   >   0 )  
 	 	 	 	 {  
 	 	 	 	 	 b i n d i n g G F x D a t a . S e t M e m b e r F l a s h I n t ( " k e y b o a r d _ k e y C o d e " ,   o u t K e y s P C [ 0 ]   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 b i n d i n g G F x D a t a . S e t M e m b e r F l a s h I n t ( " k e y b o a r d _ k e y C o d e " ,   0   ) ;  
 	 	 	 	 }  
 	 	 	 	 i f   ( m o d i f i e r   ! =   I K _ N o n e )  
 	 	 	 	 {  
 	 	 	 	 	 b i n d i n g G F x D a t a . S e t M e m b e r F l a s h I n t ( " a l t K e y C o d e " ,   m o d i f i e r   ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f (   ( c u r A c t i o n   = =   ' S p r i n t '   | |   c u r A c t i o n   = =   ' S p r i n t T o g g l e ' )   & &   (   m _ c u r r e n t I n p u t C o n t e x t   ! =   ' S w i m m i n g '   & &   m _ c u r r e n t I n p u t C o n t e x t   ! =   ' D i v i n g ' )   ) 	  
 	 	 	 	 {  
 	 	 	 	 	 i f (   m _ m o v e m e n t L o c k T y p e   ! =   P M L T _ F r e e   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 c u r A c t i o n   =   ' R u n ' ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 s w i t c h   ( c u r A c t i o n )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   ' G a l l o p ' :  
 	 	 	 	 	 	 l a b e l P r e f i x   =   " < f o n t   c o l o r = \ " # F C A D 3 6 \ " > "   +   b r a c k e t O p e n i n g S y m b o l   +   G e t L o c S t r i n g B y K e y E x t ( " C o n t r o l L a y o u t _ d o u b l e T a p " )   +   b r a c k e t C l o s i n g S y m b o l   +   " < / f o n t > " ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 c a s e   ' S p a w n H o r s e ' :  
 	 	 	 	 	 c a s e   ' R G C _ S p a w n H o r s e ' :  
 	 	 	 	 	 	 i f   (   ! m _ l a s t U s e d P C I n p u t   )  
 	 	 	 	 	 	 	 l a b e l P r e f i x   =   " < f o n t   c o l o r = \ " # F C A D 3 6 \ " > "   +   b r a c k e t O p e n i n g S y m b o l   +   G e t L o c S t r i n g B y K e y E x t ( " C o n t r o l L a y o u t _ d o u b l e T a p " )   +   b r a c k e t C l o s i n g S y m b o l   +   " < / f o n t > " ;  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 l a b e l P r e f i x   =   " " ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 c a s e   ' S p r i n t ' :  
 	 	 	 	 	 c a s e   ' S p r i n t T o g g l e ' :  
 	 	 	 	 	 	 i f   (   t h e I n p u t . I s T o g g l e S p r i n t B o u n d ( )   | |   R G C C o n f i g I s I m m e r s i v e M o t i o n E n a b l e d ( )   | |   t h e P l a y e r . G e t L e f t S t i c k S p r i n t ( ) )  
 	 	 	 	 	 	 	 l a b e l P r e f i x   =   " < f o n t   c o l o r = \ " # F C A D 3 6 \ " > "   +   b r a c k e t O p e n i n g S y m b o l   +   S t r R e p l a c e ( G e t L o c S t r i n g B y K e y E x t ( " C o n t r o l L a y o u t _ p r e s s " ) , "   - " , " " )   +   b r a c k e t C l o s i n g S y m b o l   +   " < / f o n t > " ;  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 l a b e l P r e f i x   =   " < f o n t   c o l o r = \ " # F C A D 3 6 \ " > "   +   b r a c k e t O p e n i n g S y m b o l   +   G e t L o c S t r i n g B y K e y E x t ( " C o n t r o l L a y o u t _ h o l d " )   +   b r a c k e t C l o s i n g S y m b o l   +   " < / f o n t > " ;  
  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 c a s e   ' H o r s e D i s m o u n t ' :  
 	 	 	 	 	 	 i f   (   m _ l a s t U s e d P C I n p u t   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 l a b e l P r e f i x   =   " " ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 l a b e l P r e f i x   =   " < f o n t   c o l o r = \ " # F C A D 3 6 \ " > "   +   b r a c k e t O p e n i n g S y m b o l   +   G e t L o c S t r i n g B y K e y E x t ( " C o n t r o l L a y o u t _ h o l d " )   +   b r a c k e t C l o s i n g S y m b o l   +   " < / f o n t > " ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 c a s e   ' R u n ' :  
 	 	 	 	 	 	  
 	 	 	 	 	 	 i f ( m _ l a s t U s e d P C I n p u t   | |   ! t h e P l a y e r . G e t L e f t S t i c k S p r i n t ( ) )  
 	 	 	 	 	 	 	 l a b e l P r e f i x   =   " < f o n t   c o l o r = \ " # F C A D 3 6 \ " > "   +   b r a c k e t O p e n i n g S y m b o l   +   G e t L o c S t r i n g B y K e y E x t ( " C o n t r o l L a y o u t _ h o l d " )   +   b r a c k e t C l o s i n g S y m b o l   +   " < / f o n t > " ;  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 l a b e l P r e f i x   =   " < f o n t   c o l o r = \ " # F C A D 3 6 \ " > "   +   b r a c k e t O p e n i n g S y m b o l   +   S t r R e p l a c e ( G e t L o c S t r i n g B y K e y E x t ( " C o n t r o l L a y o u t _ p r e s s " ) , "   - " , " " )   +   b r a c k e t C l o s i n g S y m b o l   +   " < / f o n t > " ;  
 	 	 	 	 	 	  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 c a s e   ' G I _ A c c e l e r a t e ' :  
 	 	 	 	 	 c a s e   ' G I _ D e c e l e r a t e ' :  
 	 	 	 	 	 c a s e   ' C a n t e r ' :  
 	 	 	 	 	 c a s e   ' F o c u s ' :  
 	 	 	 	 	 c a s e   ' R o l l ' :  
 	 	 	 	 	 c a s e   ' D i v e U p ' :  
 	 	 	 	 	 c a s e   ' D i v e D o w n ' :  
 	 	 	 	 	 c a s e   ' C i r i S p e c i a l A t t a c k H e a v y ' :  
 	 	 	 	 	 c a s e   ' C i r i S p e c i a l A t t a c k ' :  
 	 	 	 	 	 	 l a b e l P r e f i x   =   " < f o n t   c o l o r = \ " # F C A D 3 6 \ " > "   +   b r a c k e t O p e n i n g S y m b o l   +   G e t L o c S t r i n g B y K e y E x t ( " C o n t r o l L a y o u t _ h o l d " )   +   b r a c k e t C l o s i n g S y m b o l   +   " < / f o n t > " ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 d e f a u l t :  
 	 	 	 	 	 	 l a b e l P r e f i x   =   " " ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f (   c u r A c t i o n   = =   ' J u m p '   )  
 	 	 	 	 {  
 	 	 	 	 	 a c t i o n L a b e l   =   G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ b u t t o n _ c o m m o n _ j u m p " ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f (   ( c u r A c t i o n   = =   ' S p r i n t '   | |   c u r A c t i o n   = =   ' S p r i n t T o g g l e '   | |   c u r A c t i o n   = =   ' R G C _ S p r i n t ' )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   m _ c u r r e n t I n p u t C o n t e x t   = =   ' S w i m m i n g '   | |   m _ c u r r e n t I n p u t C o n t e x t   = =   ' D i v i n g ' )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t i o n L a b e l   =   G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ i n p u t _ a c t i o n _ f a s t _ s w i m i n g " ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t i o n L a b e l   =   G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ i n p u t _ a c t i o n _ s p r i n t " ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f (   c u r A c t i o n   = =   ' S p a w n H o r s e '   | |   c u r A c t i o n   = =   ' R G C _ S p a w n H o r s e '   )  
 	 	 	 	 {  
 	 	 	 	 	 a c t i o n L a b e l   =   G e t L o c S t r i n g B y K e y E x t ( " C o n t r o l L a y o u t _ S u m m o n H o r s e " ) ; 	 	 	 	 	  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   ( c u r A c t i o n   = =   ' B o a t D i s m o u n t '   & &   i n p u t C o n t e x t N a m e   = =   ' B o a t ' )  
 	 	 	 	 {  
 	 	 	 	 	 a c t i o n L a b e l   =   G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ b u t t o n _ c o m m o n _ d i s e m b a r k " ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   c u r A c t i o n   = =   ' C i r i D o d g e '   )  
 	 	 	 	 {  
 	 	 	 	 	 a c t i o n L a b e l   =   G e t L o c S t r i n g B y K e y E x t ( " C o n t r o l L a y o u t _ D o d g e " ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   c u r A c t i o n   = =   ' C i r i S p e c i a l A t t a c k H e a v y '   )  
 	 	 	 	 {  
 	 	 	 	 	 a c t i o n L a b e l   =   G e t L o c S t r i n g B y K e y E x t ( " C o n t r o l L a y o u t _ C i r i C h a r g e " ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   c u r A c t i o n   = =   ' C i r i S p e c i a l A t t a c k '   )  
 	 	 	 	 {  
 	 	 	 	 	 a c t i o n L a b e l   =   G e t L o c S t r i n g B y K e y E x t ( " C o n t r o l L a y o u t _ C i r i B l i n k " ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   c u r A c t i o n   = =   ' F o c u s '   & &   t h e P l a y e r . I s C i r i ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f ( s h o w C i r i M i n i m a p   & &   s h o w C i r i O b j e c t i v e )  
 	 	 	 	 	 	 a c t i o n L a b e l   =   G e t L o c S t r i n g B y K e y E x t ( " o p t i o n _ M i n i m a p " )   +   " / "   +   G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ j o u r n a l _ q u e s t _ o b j e c t i v e s " ) ;  
 	 	 	 	 	 e l s e   i f   ( s h o w C i r i M i n i m a p )  
 	 	 	 	 	 	 a c t i o n L a b e l   =   G e t L o c S t r i n g B y K e y E x t ( " o p t i o n _ M i n i m a p " ) ;  
 	 	 	 	 	 e l s e   i f   ( s h o w C i r i O b j e c t i v e )  
 	 	 	 	 	 	 a c t i o n L a b e l   =   G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ j o u r n a l _ q u e s t _ o b j e c t i v e s " ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f (   c u r A c t i o n   = =   ' R G C _ C a s t I g n i ' )  
 	 	 	 	 {  
 	 	 	 	 	 a c t i o n L a b e l   =   G e t L o c S t r i n g B y I d ( 1 0 6 6 2 9 1 ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f (   c u r A c t i o n   = =   ' R G C _ C a s t A a r d ' )  
 	 	 	 	 {  
 	 	 	 	 	 a c t i o n L a b e l   =   G e t L o c S t r i n g B y I d ( 1 0 6 1 9 4 5 ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f (   c u r A c t i o n   = =   ' R G C _ C a s t Q u e n ' )  
 	 	 	 	 {  
 	 	 	 	 	 a c t i o n L a b e l   =   G e t L o c S t r i n g B y I d ( 1 0 6 6 2 9 2 ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f (   c u r A c t i o n   = =   ' R G C _ C a s t Y r d e n ' )  
 	 	 	 	 {  
 	 	 	 	 	 a c t i o n L a b e l   =   G e t L o c S t r i n g B y I d ( 1 0 6 6 2 9 3 ) ;  
 	 	 	 	 }  
 	 	 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 a c t i o n L a b e l   =   G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ i n p u t _ a c t i o n _ " + S t r L o w e r ( c u r A c t i o n ) ) ;  
 	 	 	 	 }  
  
  
 	 	 	 	 i f ( t h e G a m e . I s L a n g u a g e A r a b i c ( ) )  
 	 	 	 	 	 b i n d i n g G F x D a t a . S e t M e m b e r F l a s h S t r i n g ( " l a b e l " ,   l a b e l P r e f i x   +   "   < f o n t   c o l o r = \ " # F F F F F F \ " > "   +   a c t i o n L a b e l   +   " < / f o n t > "   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 b i n d i n g G F x D a t a . S e t M e m b e r F l a s h S t r i n g ( " l a b e l " ,   "   < f o n t   c o l o r = \ " # F F F F F F \ " > "   +   a c t i o n L a b e l   +   " < / f o n t >   "   +   l a b e l P r e f i x   ) ;  
 	 	 	 	  
 	 	 	 	 l _ F l a s h A r r a y . P u s h B a c k F l a s h O b j e c t ( b i n d i n g G F x D a t a ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	 i f (   l _ A c t i o n s A r r a y . S i z e ( )   >   0   )  
 	 	 {  
 	 	 	 m _ f l a s h V a l u e S t o r a g e . S e t F l a s h A r r a y (   K E Y _ C O N T R O L S _ F E E D B A C K _ L I S T ,   l _ F l a s h A r r a y   ) ;  
 	 	 	  
 	 	 }  
 	 	 m _ p r e v i o u s I n p u t C o n t e x t   =   m _ c u r r e n t I n p u t C o n t e x t ;  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 m _ p r e v i o u s I n p u t M o d i f i e r   =   m _ c u r r e n t I n p u t M o d i f i e r ;  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   U p d a t e S c a l e (   s c a l e   :   f l o a t ,   f l a s h M o d u l e   :   C S c r i p t e d F l a s h S p r i t e   )   :   b o o l  
 	 {  
 	 	 r e t u r n   s u p e r . U p d a t e S c a l e ( s c a l e   *   0 . 7 5 , f l a s h M o d u l e   ) ;  
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
 	 	 t e m p X   =   a n c h o r X   -   ( 3 0 0 . 0   *   ( 1 . 0   -   t h e G a m e . G e t U I H o r i z o n t a l F r a m e S c a l e ( ) ) ) ;  
 	 	 t e m p Y   =   a n c h o r Y   -   ( 2 0 0 . 0   *   ( 1 . 0   -   t h e G a m e . G e t U I V e r t i c a l F r a m e S c a l e ( ) ) ) ;    
 	 	  
 	 	 l _ f l a s h M o d u l e . S e t X (   t e m p X   ) ;  
 	 	 l _ f l a s h M o d u l e . S e t Y (   t e m p Y   ) ; 	  
 	 }  
 	  
 	 e v e n t   O n C o n t r o l l e r C h a n g e d ( )  
 	 {  
 	 	  
 	 } 	  
  
 	 e v e n t   O n I n p u t H a n d l e d ( N a v C o d e : s t r i n g ,   K e y C o d e : i n t ,   A c t i o n I d : i n t )  
 	 {  
 	 }  
 } 