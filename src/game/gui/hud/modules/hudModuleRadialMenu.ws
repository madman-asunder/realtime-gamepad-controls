/ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / * *   	 �   2 0 1 5   C D   P R O J E K T   S . A .   A l l   r i g h t s   r e s e r v e d .  
 / * *   	 T H E   W I T C H E R �   i s   a   t r a d e m a r k   o f   C D   P R O J E K T   S .   A .  
 / * *   	 T h e   W i t c h e r   g a m e   i s   b a s e d   o n   t h e   p r o s e   o f   A n d r z e j   S a p k o w s k i .  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 c l a s s   C R 4 H u d M o d u l e R a d i a l M e n u   e x t e n d s   C R 4 H u d M o d u l e B a s e  
 {  
 	 p r i v a t e   v a r   m _ f l a s h V a l u e S t o r a g e   	 	 	     :   C S c r i p t e d F l a s h V a l u e S t o r a g e ; 	  
 	 p r i v a t e   v a r   m _ f x B l o c k R a d i a l M e n u S F F 	 	 	     :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x S h o w R a d i a l M e n u S F F 	 	 	     :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x U p d a t e I t e m I c o n S F F 	 	 	     :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x U p d a t e F i e l d E q u i p p e d S t a t e S F F 	     :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x S e t D e s a t u r a t e d S F F 	 	 	     :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x S e t C i r i R a d i a l S F F 	 	 	     :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x S e t C i r i I t e m S F F 	 	 	 	     :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x S e t M e d i t a t i o n B u t t o n E n a b l e d S F F   :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x S e t S e l e c t e d I t e m 	 	 	 	     :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x S e t A r a b i c A l i g m e n t M o d e   	 	     :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x U p d a t e I n p u t M o d e 	 	 	 	     :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	  
 	  
 	 p r i v a t e   v a r   m _ f x S e t D e s c r i p t i o n 	 	 	 	     :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   m _ f x R e s e t P e t a r d D a t a 	 	 	 	     :   C S c r i p t e d F l a s h F u n c t i o n ;  
 	 p r i v a t e   v a r   s e l e c t e d S i g n   :   E S i g n T y p e ;  
 	 p r i v a t e   v a r   l a s t I t e m D e s c r i p t i o n   :   s t r i n g ;  
 	  
 	  
 	 p r i v a t e   v a r   m _ s h o w n 	 	 	 	 	 	 	 :   b o o l ; 	  
 	 p r i v a t e   v a r   m _ I s P l a y e r C i r i 	 	 	 	 	 :   b o o l ;  
 	 p r i v a t e   v a r   m _ i s D e s a t u r a t e d 	 	 	 	 	 :   b o o l ;  
 	 p r i v a t e 	 v a r   m _ H a s B l i n k   	 	 	 	 	 	 :   b o o l ;  
 	 p r i v a t e   v a r   m _ H a s C h a r g e 	 	 	 	 	 	 :   b o o l ;  
 	 p r i v a t e 	 v a r   m _ a l l o w A u t o R o t a t i o n R e t u r n V a l u e 	 :   b o o l ;  
 	 p r i v a t e   v a r   m _ s w a p p e d A c c e p t C a n c e l 	 	 	 :   b o o l ;  
 	 p r i v a t e   v a r   m _ t u t o r i a l s H i d d e n 	 	 	 	 :   b o o l ;  
 	 p r i v a t e   v a r   _ c u r r e n t S e l e c t i o n 	 	 	 	 :   s t r i n g ;    
 	  
 	  
 	 d e f a u l t   m _ s h o w n   =   f a l s e ;  
 	 d e f a u l t   m _ I s P l a y e r C i r i   =   f a l s e ;  
 	 d e f a u l t   m _ i s D e s a t u r a t e d   =   f a l s e ;  
 	 d e f a u l t   m _ a l l o w A u t o R o t a t i o n R e t u r n V a l u e   =   t r u e ;  
  
 	 e v e n t     O n C o n f i g U I ( )  
 	 {  
 	 	 v a r   f l a s h M o d u l e   :   C S c r i p t e d F l a s h S p r i t e ;  
 	 	  
 	 	 m _ t u t o r i a l s H i d d e n   =   f a l s e ;  
 	 	  
 	 	 m _ a n c h o r N a m e   =   " S c a l e O n l y " ;  
 	 	 s u p e r . O n C o n f i g U I ( ) ;  
 	 	  
 	 	 f l a s h M o d u l e   =   G e t M o d u l e F l a s h ( ) ; 	  
 	 	 m _ f l a s h V a l u e S t o r a g e   =   G e t M o d u l e F l a s h V a l u e S t o r a g e ( ) ;  
 	 	  
 	 	 m _ f x U p d a t e I n p u t M o d e   	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t A l t e r n a t i v e I n p u t M o d e "   ) ;  
 	 	 m _ f x S e t A r a b i c A l i g m e n t M o d e               =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t A r a b i c A l i g m e n t M o d e "   ) ;  
 	 	 m _ f x B l o c k R a d i a l M e n u S F F 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " B l o c k R a d i a l M e n u "   ) ;  
 	 	 m _ f x S h o w R a d i a l M e n u S F F 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " S h o w R a d i a l M e n u "   ) ;  
 	 	 m _ f x U p d a t e I t e m I c o n S F F 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " U p d a t e I t e m I c o n "   ) ;  
 	 	 m _ f x U p d a t e F i e l d E q u i p p e d S t a t e S F F 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " U p d a t e F i e l d E q u i p p e d S t a t e "   ) ;  
 	 	 m _ f x S e t D e s a t u r a t e d S F F   	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " S e t D e s a t u r a t e d "   ) ;    
 	 	 m _ f x S e t C i r i R a d i a l S F F   	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t C i r i R a d i a l "   ) ;    
 	 	 m _ f x S e t C i r i I t e m S F F   	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t C i r i I t e m "   ) ;    
 	 	 m _ f x S e t M e d i t a t i o n B u t t o n E n a b l e d S F F   	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " S e t M e d i t a t i o n B u t t o n E n a b l e d "   ) ;    
 	 	 m _ f x S e t S e l e c t e d I t e m   	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " s e t S e l e c t e d I t e m "   ) ;  
 	 	  
 	 	  
 	 	 m _ f x S e t D e s c r i p t i o n   	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " S e t C h o o s e n D e s c r i p t i o n "   ) ;  
 	 	 m _ f x R e s e t P e t a r d D a t a 	 	 	 =   f l a s h M o d u l e . G e t M e m b e r F l a s h F u n c t i o n (   " R e s e t P e t a r d D a t a "   ) ;  
 	 	  
 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n R a d i a l M e n u ' ,   ' R a d i a l M e n u '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n R a d i a l M e n u C l o s e ' ,   ' C l o s e R a d i a l M e n u '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n R a d i a l M e n u C o n f i r m S e l e c t i o n ' ,   ' C o n f i r m R a d i a l M e n u S e l e c t i o n '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n O p e n M e d i t a t i o n ' ,   ' O p e n M e d i t a t i o n '   ) ;  
 	 	  
 	 	 U p d a t e S w a p A c c e p t C a n c e l ( ) ;  
 	 	 U p d a t e I n p u t M o d e ( ) ;  
 	 	 s e t A r a b i c A l i g m e n t M o d e ( ) ;  
 	 	  
 	 	 S e l e c t C u r r e n t S i g n ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   s e t A r a b i c A l i g m e n t M o d e ( )   :   v o i d  
 	 {  
 	 	 v a r   l a n g u a g e   :   s t r i n g ;  
 	 	 v a r   a u d i o L a n g u a g e   :   s t r i n g ;  
 	 	 t h e G a m e . G e t G a m e L a n g u a g e N a m e ( a u d i o L a n g u a g e , l a n g u a g e ) ;  
 	 	 i f   ( m _ f x S e t A r a b i c A l i g m e n t M o d e )  
 	 	 {  
 	 	 	 m _ f x S e t A r a b i c A l i g m e n t M o d e . I n v o k e S e l f O n e A r g (   F l a s h A r g B o o l (   ( l a n g u a g e   = =   " A R " )   )   ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   U p d a t e S w a p A c c e p t C a n c e l ( ) : v o i d  
 	 {  
 	 	 v a r   i n G a m e C o n f i g W r a p p e r   :   C I n G a m e C o n f i g W r a p p e r ;  
 	 	 i n G a m e C o n f i g W r a p p e r   =   ( C I n G a m e C o n f i g W r a p p e r ) t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) ;  
 	 	 m _ s w a p p e d A c c e p t C a n c e l   =   i n G a m e C o n f i g W r a p p e r . G e t V a r V a l u e ( ' C o n t r o l s ' ,   ' S w a p A c c e p t C a n c e l ' ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   U p d a t e I n p u t M o d e ( ) : v o i d  
 	 {  
 	 	 v a r   i n G a m e C o n f i g W r a p p e r         :   C I n G a m e C o n f i g W r a p p e r ;  
 	 	 v a r   i s A l t e r n a t i v e I n p u t M o d e   :   b o o l ;  
 	 	  
 	 	 i n G a m e C o n f i g W r a p p e r   =   ( C I n G a m e C o n f i g W r a p p e r ) t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) ;  
 	 	 i s A l t e r n a t i v e I n p u t M o d e   =   i n G a m e C o n f i g W r a p p e r . G e t V a r V a l u e ( ' C o n t r o l s ' ,   ' A l t e r n a t i v e R a d i a l M e n u I n p u t M o d e ' ) ;  
 	 	 m _ f x U p d a t e I n p u t M o d e . I n v o k e S e l f O n e A r g (   F l a s h A r g B o o l (   i s A l t e r n a t i v e I n p u t M o d e   )   ) ;  
 	 }  
 	  
 	 e v e n t   O n T i c k (   t i m e D e l t a   :   f l o a t   )  
 	 {  
 	 }  
  
 	 f u n c t i o n   I s R a d i a l M e n u O p e n e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   m _ s h o w n ;  
 	 }  
  
 	 e v e n t   O n R a d i a l M e n u I t e m S e l e c t e d ( c h o o s e n S y m b o l   :   s t r i n g ,   i s D e s a t u r a t e d   :   b o o l   )  
 	 {  
 	 	 m _ i s D e s a t u r a t e d   =   i s D e s a t u r a t e d ;  
 	 	 i f (   ! m _ i s D e s a t u r a t e d   )  
 	 	 {  
 	 	 	 _ c u r r e n t S e l e c t i o n   =   c h o o s e n S y m b o l ; 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 _ c u r r e n t S e l e c t i o n   =   " " ;  
 	 	 }  
 	 	 i f   (   ! t h e G a m e . I s B l a c k s c r e e n ( )   )  
 	 	 {  
 	 	 	 t h e S o u n d . S o u n d E v e n t (   " g u i _ i n g a m e _ w h e e l _ h i g h l i g h t "   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 L o g C h a n n e l (   ' I g n o r e d S o u n d s ' ,   " H U D :   g u i _ i n g a m e _ w h e e l _ h i g h l i g h t "   ) ;  
 	 	 }  
 	 }  
  
 	 e v e n t   O n R a d i a l M e n u I t e m C h o o s e (   c h o o s e n S y m b o l   :   s t r i n g   )  
 	 {  
 	 	  
 	 } 	  
  
 	 e v e n t   O n R a d i a l M e n u C o n f i r m S e l e c t i o n (     a c t i o n   :   S I n p u t A c t i o n     )  
 	 {  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	  
 	 	 	 i f   ( m _ s w a p p e d A c c e p t C a n c e l )  
 	 	 	 {  
 	 	 	 	 U s e r C l o s e ( ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 U s e r C o n f i r m S e l e c t i o n ( ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n R a d i a l M e n u C l o s e (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	  
 	 	 	 i f   ( m _ s w a p p e d A c c e p t C a n c e l )  
 	 	 	 {  
 	 	 	 	 U s e r C o n f i r m S e l e c t i o n ( ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 U s e r C l o s e ( ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   U s e r C o n f i r m S e l e c t i o n ( ) : v o i d  
 	 {  
 	 	 i f (   m _ s h o w n   & &   ! m _ I s P l a y e r C i r i )  
 	 	 {  
 	 	 	 i f (   _ c u r r e n t S e l e c t i o n   ! =   " "   )  
 	 	 	 {  
 	 	 	 	 H i d e R a d i a l M e n u ( ) ;  
 	 	 	 	 t h e P l a y e r . O n R a d i a l M e n u I t e m C h o o s e ( _ c u r r e n t S e l e c t i o n ) ;  
 	 	 	 	  
 	 	 	 	 E q u i p L a s t S e l e c t e d I t e m ( ) ;    
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t h e S o u n d . S o u n d E v e n t (   " g u i _ g l o b a l _ d e n i e d "   ) ; 	  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 e v e n t     O n A c t i v a t e S l o t ( s l o t N a m e : s t r i n g ,   i s T a b O r B u m p e r : b o o l ,   s w a p p i n g I t e m s : b o o l )    
 	 {  
 	 	 v a r   o u t K e y s   :   a r r a y <   E I n p u t K e y   > ;  
 	 	 v a r   p l a y e r   :   W 3 P l a y e r W i t c h e r ;  
 	 	 p l a y e r   =   G e t W i t c h e r P l a y e r ( ) ;  
 	 	  
 	 	  
 	 	 i f ( i s T a b O r B u m p e r )  
 	 	 {  
 	 	 	 i f ( ! s w a p p i n g I t e m s )  
 	 	 	 	 E q u i p L a s t S e l e c t e d I t e m ( t r u e ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 	 t h e P l a y e r . O n R a d i a l M e n u I t e m C h o o s e ( s l o t N a m e ) ;  
 	 	  
 	 	  
 	 }  
 	  
 	 e v e n t     O n R e q u e s t C l o s e R a d i a l ( P C C o n f i r m C o n t r o l s : b o o l )    
 	 {  
 	 	  
 	 	 i f ( P C C o n f i r m C o n t r o l s )  
 	 	 	 E q u i p L a s t S e l e c t e d I t e m ( ) ;  
 	 	  
 	 	 U s e r C l o s e ( ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   U s e r C l o s e ( ) : v o i d  
 	 {  
 	 	 i f (   m _ s h o w n   )  
 	 	 {  
 	 	 	 H i d e R a d i a l M e n u ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n O p e n M e d i t a t i o n (     a c t i o n   :   S I n p u t A c t i o n     )  
 	 {  
 	 	 v a r   w i t c h e r   :   W 3 P l a y e r W i t c h e r ;  
 	 	  
 	 	 i f (   ! m _ I s P l a y e r C i r i   & &   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 i f (   m _ s h o w n   )  
 	 	 	 {  
 	 	 	 	 w i t c h e r   =   G e t W i t c h e r P l a y e r ( ) ;  
 	 	 	 	  
 	 	 	 	 i f ( w i t c h e r . I s A c t i o n A l l o w e d ( E I A B _ O p e n M e d i t a t i o n ) )  
 	 	 	 	 {  
 	 	 	 	 	 H i d e R a d i a l M e n u ( ) ;  
 	 	 	 	 	 R e s e t M e d i t a t i o n S a v e d D a t a ( ) ;  
 	 	 	 	 	 t h e P l a y e r . O n R a d i a l M e n u I t e m C h o o s e ( " M e d i t a t i o n " ) ;    
 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 i f ( t h e P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' M e d i t a t i o n ' )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ O p e n M e d i t a t i o n ,   ,   w i t c h e r . I s T h r e a t e n e d ( ) ,   ! w i t c h e r . C a n M e d i t a t e H e r e ( ) ,   w i t c h e r . I s T h r e a t e n e d ( ) ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	  
 	 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ O p e n M e d i t a t i o n ,   ,   w i t c h e r . I s T h r e a t e n e d ( ) ,   ! w i t c h e r . C a n M e d i t a t e H e r e ( ) ,   w i t c h e r . I s T h r e a t e n e d ( ) ) ;  
 	 	 	 	 }  
 	 	 	 } 	  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   R e s e t M e d i t a t i o n S a v e d D a t a ( )  
 	 {  
 	 	 v a r   g u i M a n a g e r   	 	 	 :   C R 4 G u i M a n a g e r ;  
 	 	  
 	 	 g u i M a n a g e r   =   t h e G a m e . G e t G u i M a n a g e r ( ) ;  
 	 	 g u i M a n a g e r . R e m o v e U I S a v e d D a t a ( ' M e d i t a t i o n C l o c k M e n u ' ) ;  
 	 }  
 	  
 	 e v e n t   O n R a d i a l M e n u (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 / / R G C   h a s   n o   r a d i a l   m e n u  
 	 	 r e t u r n   f a l s e ;  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 i f (   m _ s h o w n   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 	 i f ( ! t h e P l a y e r . I s A c t i o n A l l o w e d ( E I A B _ R a d i a l M e n u ) )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ R a d i a l M e n u ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	  
 	 	 	 i f   (   t h e G a m e . I s D i a l o g O r C u t s c e n e P l a y i n g ( )   | |   t h e G a m e . I s B l a c k s c r e e n O r F a d i n g ( )   | |   ( ! t h e P l a y e r . G e t B I s I n p u t A l l o w e d ( )   & &   ! G e t W i t c h e r P l a y e r ( ) . I s U I T a k e I n p u t ( ) )   )  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	  
 	 	 	 S h o w R a d i a l M e n u ( ) ;  
 	 	 	  
 	 	 }  
 	 }  
 	 e v e n t     O n R a d i a l P a u s e G a m e ( )  
 	 {  
 	 	 t h e G a m e . P a u s e (   " F a s t M e n u "   ) ;  
 	 }  
 	 f u n c t i o n   S h o w R a d i a l M e n u ( )  
 	 {  
 	 	 v a r   c a m e r a   :   C C u s t o m C a m e r a ;  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	  
 	 	 i f (   ! m _ s h o w n   & &   ! t h e G a m e . I s D i a l o g O r C u t s c e n e P l a y i n g ( ) )  
 	 	 {  
 	 	 	  
 	 	 	 i f ( ! t h e P l a y e r . I s A c t i o n A l l o w e d ( E I A B _ O p e n I n v e n t o r y )   & &   ! t h e P l a y e r . I s C i r i ( ) )  
 	 	 	 {  
 	 	 	 	 m _ f x R e s e t P e t a r d D a t a . I n v o k e S e l f ( ) ;  
 	 	 	 }  
 	 	 	  
 	 	  
 	 	 	  
 	 	 	 t h e P l a y e r . R e s t o r e B l o c k e d S l o t s ( ) ;  
 	 	 	  
 	 	 	  
 	 	 	 t h e G a m e . C e n t e r M o u s e ( ) ;  
 	 	 	  
 	 	 	 t h e G a m e . F o r c e U I A n a l o g ( t r u e ) ;  
 	 	 	 t h e I n p u t . S t o r e C o n t e x t (   ' R a d i a l M e n u '   ) ;  
 	 	 	 t h e S o u n d . S o u n d E v e n t (   " g u i _ i n g a m e _ w h e e l _ o p e n "   ) ;  
 	 	 	 i f (   t h e P l a y e r . I s C i r i ( )   ! =   m _ I s P l a y e r C i r i   | |   m _ H a s B l i n k   ! =   t h e P l a y e r . H a s A b i l i t y ( ' C i r i B l i n k ' )   | |   m _ H a s C h a r g e   ! =   t h e P l a y e r . H a s A b i l i t y ( ' C i r i C h a r g e ' )   )  
 	 	 	 {  
 	 	 	 	 m _ I s P l a y e r C i r i   =   t h e P l a y e r . I s C i r i ( ) ;  
 	 	 	 	 m _ H a s B l i n k   =   t h e P l a y e r . H a s A b i l i t y ( ' C i r i B l i n k ' ) ;  
 	 	 	 	 m _ H a s C h a r g e   =   t h e P l a y e r . H a s A b i l i t y ( ' C i r i C h a r g e ' ) ;  
 	 	 	 	 m _ f x S e t C i r i R a d i a l S F F . I n v o k e S e l f T h r e e A r g s (   F l a s h A r g B o o l ( m _ I s P l a y e r C i r i ) ,   F l a s h A r g B o o l ( m _ H a s B l i n k ) ,   F l a s h A r g B o o l ( m _ H a s C h a r g e )   ) ;  
 	 	 	 }  
 	 	 	 t h e P l a y e r . B l o c k A c t i o n ( E I A B _ J u m p , ' R a d i a l M e n u ' ) ;  
 	 	 	  
 	 	 	 U p d a t e I t e m s I c o n s ( ) ;  
 	 	 	  
 	 	 	 t h e G a m e . S e t T i m e S c a l e (   0 . 1 ,   t h e G a m e . G e t T i m e s c a l e S o u r c e ( E T S _ R a d i a l M e n u ) ,   t h e G a m e . G e t T i m e s c a l e P r i o r i t y ( E T S _ R a d i a l M e n u ) ,   f a l s e ,   t r u e ) ;  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e t U I T a k e I n p u t ( t r u e ) ;  
  
 	 	 	  
 	 	 	 c a m e r a   =   ( C C u s t o m C a m e r a ) t h e C a m e r a . G e t T o p m o s t C a m e r a O b j e c t ( ) ;  
 	 	 	 m _ a l l o w A u t o R o t a t i o n R e t u r n V a l u e   =   c a m e r a . a l l o w A u t o R o t a t i o n ;  
 	 	 	 c a m e r a . a l l o w A u t o R o t a t i o n   =   f a l s e ;  
 	 	 	  
 	 	 	  
 	 	 	 m _ s h o w n   =   t r u e ;  
 	 	 	 R e s e t I t e m s M o d u l e ( ) ;  
 	 	 	 t h e G a m e . G e t G u i M a n a g e r ( ) . S e n d C u s t o m U I E v e n t (   ' O p e n e d R a d i a l M e n u '   ) ;  
 	 	 	 i f ( t h e G a m e . G e t T u t o r i a l S y s t e m ( )   & &   t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . I s R u n n i n g ( ) ) 	 	  
 	 	 	 {  
 	 	 	 	 t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . u i H a n d l e r . O n O p e n e d M e n u ( ' R a d i a l M e n u ' ) ;  
 	 	 	 }  
 	 	 	 m _ f x S e t M e d i t a t i o n B u t t o n E n a b l e d S F F . I n v o k e S e l f O n e A r g ( F l a s h A r g B o o l ( G e t W i t c h e r P l a y e r ( ) . I s A c t i o n A l l o w e d ( E I A B _ O p e n M e d i t a t i o n ) ) ) ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 L o g C h a n n e l (   ' G W I N T _ A I ' ,   " S H O W   R A D I A L " ) ;  
 	 	 	 i f   ( ! m _ t u t o r i a l s H i d d e n )  
 	 	 	 {  
 	 	 	 	 t h e G a m e . G e t G u i M a n a g e r ( ) . H i d e T u t o r i a l (   t r u e ,   f a l s e   ) ;  
 	 	 	 	 m _ t u t o r i a l s H i d d e n   =   t r u e ;  
 	 	 	 }  
  
 	 	 	 U p d a t e B u f f s M o d u l e (   t r u e   ) ;  
 	 	 	  
 	 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 	 i f   (   h u d   )  
 	 	 	 {  
 	 	 	 	 h u d . O n R a d i a l O p e n e d ( ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . u i H a n d l e r . O n O p e n i n g M e n u (   ' R a d i a l M e n u '   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f ( ! t h e P l a y e r . I s C i r i ( ) )  
 	 	 	 	 s e l e c t e d S i g n   =   G e t W i t c h e r P l a y e r ( ) . G e t E q u i p p e d S i g n ( ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   S e l e c t C u r r e n t S i g n ( )  
 	 {  
 	 	 i f   ( t h e P l a y e r . I s C i r i ( )   = =   m _ I s P l a y e r C i r i )  
 	 	 {  
 	 	 	 m _ f x S e t S e l e c t e d I t e m . I n v o k e S e l f O n e A r g ( F l a s h A r g S t r i n g ( S i g n E n u m T o S t r i n g ( t h e P l a y e r . G e t E q u i p p e d S i g n ( ) ) ) ) ;  
 	 	 }  
 	 }  
 	  
  
 	 e v e n t   O n H i d e R a d i a l M e n u ( )  
 	 {  
 	 	 L o g C h a n n e l (   ' G W I N T _ A I ' ,   " H I D E   R A D I A L " ) ;  
 	 	 i f   ( m _ t u t o r i a l s H i d d e n )  
 	 	 {  
 	 	 	 t h e G a m e . G e t G u i M a n a g e r ( ) . H i d e T u t o r i a l (   f a l s e ,   f a l s e   ) ;  
 	 	 	 m _ t u t o r i a l s H i d d e n   =   f a l s e ;  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   H i d e R a d i a l M e n u ( )  
 	 {  
 	 	 v a r   c a m e r a   :   C C u s t o m C a m e r a ;  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	  
 	 	 i f (   m _ s h o w n   )  
 	 	 { 	  
 	 	 	  
 	 	 	 t h e G a m e . F o r c e U I A n a l o g ( f a l s e ) ;  
 	 	 	 t h e S o u n d . S o u n d E v e n t (   " g u i _ i n g a m e _ w h e e l _ c l o s e "   ) ;  
 	 	 	  
 	 	 	 t h e G a m e . R e m o v e T i m e S c a l e (   t h e G a m e . G e t T i m e s c a l e S o u r c e ( E T S _ R a d i a l M e n u )   ) ;  
 	 	 	 t h e G a m e . U n p a u s e (   " F a s t M e n u "   ) ;  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e t U I T a k e I n p u t ( f a l s e ) ;  
  
 	 	 	  
 	 	 	 c a m e r a   =   ( C C u s t o m C a m e r a ) t h e C a m e r a . G e t T o p m o s t C a m e r a O b j e c t ( ) ;  
 	 	 	 c a m e r a . a l l o w A u t o R o t a t i o n   =   m _ a l l o w A u t o R o t a t i o n R e t u r n V a l u e ;  
 	 	 	  
 	 	 	 m _ s h o w n   =   f a l s e ;  
 	 	 	 t h e I n p u t . R e s t o r e C o n t e x t (   ' R a d i a l M e n u ' ,   t r u e   ) ;  
 	 	 	  
 	 	 	 t h e G a m e . G e t G u i M a n a g e r ( ) . S e n d C u s t o m U I E v e n t (   ' C l o s e d R a d i a l M e n u '   ) ;  
 	 	 	 R e s e t I t e m s M o d u l e ( ) ;  
 	 	 	 i f ( t h e G a m e . G e t T u t o r i a l S y s t e m ( )   & &   t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . I s R u n n i n g ( ) ) 	 	  
 	 	 	 {  
 	 	 	 	 t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . u i H a n d l e r . O n C l o s e d M e n u ( ' R a d i a l M e n u ' ) ;  
 	 	 	 }  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ J u m p ,   ' R a d i a l M e n u '   ) ;  
  
 	 	 	 U p d a t e B u f f s M o d u l e (   f a l s e   ) ;  
  
 	 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 	 i f   (   h u d   )  
 	 	 	 {  
 	 	 	 	 h u d . O n R a d i a l C l o s e d ( ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . u i H a n d l e r . O n C l o s i n g M e n u (   ' R a d i a l M e n u '   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . G e t E q u i p p e d S i g n ( )   = =   S T _ N o n e )  
 	 	 	 {  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e t E q u i p p e d S i g n ( s e l e c t e d S i g n ) ;  
 	 	 	 	 m _ f x U p d a t e F i e l d E q u i p p e d S t a t e S F F . I n v o k e S e l f F o u r A r g s (   F l a s h A r g S t r i n g (   S i g n E n u m T o S t r i n g ( G e t W i t c h e r P l a y e r ( ) . G e t E q u i p p e d S i g n ( ) ) ) ,   F l a s h A r g S t r i n g ( " " ) ,   F l a s h A r g S t r i n g ( t r u e ) ,   F l a s h A r g I n t ( 0 ) ) ;  
 	 	 	 }  
 	 	 	  
 	 	 }  
 	 }  
  
 	 p r i v a t e   f u n c t i o n   U p d a t e B u f f s M o d u l e (   o n R a d i a l M e n u O p e n e d   :   b o o l   )  
 	 {  
 	 	 v a r   m o d u l e   :   C R 4 H u d M o d u l e B a s e ;  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 i f   (   h u d   )  
 	 	 {  
 	 	 	 i f   (   o n R a d i a l M e n u O p e n e d   )  
 	 	 	 {  
 	 	 	 	 m o d u l e   =   ( C R 4 H u d M o d u l e B a s e ) h u d . G e t H u d M o d u l e (   " B u f f s M o d u l e "   ) ;  
 	 	 	 	 i f   ( m o d u l e )  
 	 	 	 	 {  
 	 	 	 	 	 m o d u l e . S e t E n a b l e d (   t r u e   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 h u d . U p d a t e H u d C o n f i g (   ' B u f f s M o d u l e ' ,   t r u e   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   R e s e t I t e m s M o d u l e ( )  
 	 { 	  
 	 	 v a r   i t e m I n f o M o d u l e   :   C R 4 H u d M o d u l e I t e m I n f o ;  
 	 	 i t e m I n f o M o d u l e   =   ( C R 4 H u d M o d u l e I t e m I n f o ) t h e G a m e . G e t H u d ( ) . G e t H u d M o d u l e ( " I t e m I n f o M o d u l e " ) ;  
 	 	 i t e m I n f o M o d u l e . R e s e t I t e m s ( ) ;  
 	 }  
 	  
 	 f u n c t i o n   U p d a t e I t e m s I c o n s ( o p t i o n a l   o n l y C r o s s b o w   :   b o o l )  
 	 {  
 	 	 v a r   i       	 :   i n t ;  
 	 	 v a r   i n v   	 :   C I n v e n t o r y C o m p o n e n t ;  
 	 	 v a r   p l a y e r     :   W 3 P l a y e r W i t c h e r ;  
 	 	 v a r   o u t K e y s   :   a r r a y <   E I n p u t K e y   > ;  
 	 	  
 	 	 v a r   i t e m N a m e   	 	 :   s t r i n g ;  
 	 	 v a r   i t e m D e s c r i p t i o n   :   s t r i n g ;  
 	 	 v a r   i t e m P a t h   	 	 :   s t r i n g ;  
 	 	 v a r   i t e m C a t e g o r y   	 :   n a m e ;  
 	 	 v a r   i t e m Q u a l i t y 	 	 :   i n t ;  
 	 	  
 	 	 v a r   e q u i p p e d I t e m       :   S I t e m U n i q u e I d ;  
 	 	 v a r   s e l e c t e d I t e m I d   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 v a r   p o c k e t 1 S l o t s     :   a r r a y   < E E q u i p m e n t S l o t s > ;  
 	 	 v a r   p o c k e t 2 S l o t s     :   a r r a y   < E E q u i p m e n t S l o t s > ;  
 	 	 v a r   i t e m s D a t a L i s t   :   C S c r i p t e d F l a s h A r r a y ;  
 	 	  
 	 	 p l a y e r   =   G e t W i t c h e r P l a y e r ( ) ;  
 	 	 i n v   =   t h e P l a y e r . G e t I n v e n t o r y ( ) ;  
 	 	  
 	 	 s e l e c t e d I t e m I d   =   G e t W i t c h e r P l a y e r ( ) . G e t S e l e c t e d I t e m I d ( ) ;  
 	 	  
 	 	 i f (   m _ I s P l a y e r C i r i   )  
 	 	 {  
 	 	 	 e q u i p p e d I t e m   =   G e t C i r i I t e m ( ) ;  
 	 	 	  
 	 	 	 i f (   i n v . I s I d V a l i d (   e q u i p p e d I t e m   )   )  
 	 	 	 {  
 	 	 	 	 i t e m N a m e   =   i n v . G e t I t e m N a m e (   e q u i p p e d I t e m   ) ;  
 	 	 	 	 i t e m N a m e   =   G e t L o c S t r i n g B y K e y E x t (   i n v . G e t I t e m L o c a l i z e d N a m e B y U n i q u e I D (   e q u i p p e d I t e m   )   ) ;  
 	 	 	 	 i t e m D e s c r i p t i o n   =   G e t L o c S t r i n g B y K e y E x t (   i n v . G e t I t e m L o c a l i z e d D e s c r i p t i o n B y U n i q u e I D (   e q u i p p e d I t e m   )   ) ;  
 	 	 	 	 i t e m P a t h   =   i n v . G e t I t e m I c o n P a t h B y U n i q u e I D (   e q u i p p e d I t e m   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 m _ f x S e t C i r i I t e m S F F . I n v o k e S e l f T h r e e A r g s (   F l a s h A r g S t r i n g (   i t e m P a t h   ) ,   F l a s h A r g S t r i n g (   i t e m N a m e   ) ,   F l a s h A r g S t r i n g (   i t e m D e s c r i p t i o n   )   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 i t e m s D a t a L i s t   =   m _ f l a s h V a l u e S t o r a g e . C r e a t e T e m p F l a s h A r r a y ( ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f ( o n l y C r o s s b o w )  
 	 	 	 	 U p d a t e C r o s s b o w I t e m D a t a (   7 ,   i t e m s D a t a L i s t   ) ;  
 	 	 	 e l s e 	  
 	 	 	 {  
 	 	 	 	 U p d a t e C r o s s b o w I t e m D a t a (   7 ,   i t e m s D a t a L i s t   ) ;  
 	 	 	 	 U p d a t e N G E I t e m D a t a (   6 ,   i t e m s D a t a L i s t ,   ' p e t a r d ' ,   " s l o t 1 "   ) ;  
 	 	 	 	 U p d a t e N G E I t e m D a t a (   8 ,   i t e m s D a t a L i s t ,   ' u s a b l e ' ,   " s l o t 3 "   ) ;  
 	 	 	 }  
  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 m _ f l a s h V a l u e S t o r a g e . S e t F l a s h A r r a y (   " h u d . r a d i a l . i t e m s " ,   i t e m s D a t a L i s t   ) ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 i f ( ! o n l y C r o s s b o w )  
 	 	 	 {  
 	 	 	 	 o u t K e y s . C l e a r ( ) ;  
 	 	 	 	 t h e I n p u t . G e t C u r r e n t K e y s F o r A c t i o n ( ' C a s t S i g n ' , o u t K e y s ) ;  
 	 	 	 	 m _ f x U p d a t e F i e l d E q u i p p e d S t a t e S F F . I n v o k e S e l f F o u r A r g s (   F l a s h A r g S t r i n g (   S i g n E n u m T o S t r i n g ( p l a y e r . G e t E q u i p p e d S i g n ( ) ) ) ,   F l a s h A r g S t r i n g ( " " ) ,   F l a s h A r g S t r i n g ( t r u e ) ,   F l a s h A r g I n t ( o u t K e y s [ 0 ] ) ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e N G E I t e m D a t a (   r a d i a l S l o t I d   :   i n t ,   o u t   d a t a L i s t   :   C S c r i p t e d F l a s h A r r a y ,   i t e m C a t   :   n a m e ,   r a d i a l S l o t N a m e   :   s t r i n g   )   :   v o i d  
 	 {  
 	 	 v a r   p l a y e r   	 	         :   W 3 P l a y e r W i t c h e r ;  
 	 	 v a r   i n v         	 	         :   C I n v e n t o r y C o m p o n e n t ;  
 	 	 v a r   i t e m s 	 	         :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   m a s k s 	 	         :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   c u r r e n t I t e m       	 :   S I t e m U n i q u e I d ;  
 	 	 v a r   e q u i p p e d I t e m     	 :   S I t e m U n i q u e I d ;  
 	 	 v a r   s e l e c t e d I t e m         :   S I t e m U n i q u e I d ;  
 	 	 v a r   i t e m s L i s t 	 	 :   C S c r i p t e d F l a s h A r r a y ;  
 	 	 v a r   i t e m D a t a O b j e c t     :   C S c r i p t e d F l a s h O b j e c t ;  
 	 	 v a r   c o n t a i n e r O b j e c t   :   C S c r i p t e d F l a s h O b j e c t ;  
 	 	  
 	 	 v a r   s l o t N a m e           	 :   s t r i n g ;  
 	 	 v a r   i t e m C a t e g o r y       	 :   s t r i n g ;  
 	 	 v a r   i t e m N a m e 	   	 :   s t r i n g ;    
 	 	 v a r   i t e m D e s c r i p t i o n   :   s t r i n g ;  
 	 	 v a r   i t e m I c o n P a t h   	 :   s t r i n g ;  
  
 	 	 v a r   i t e m Q u a l i t y     :   i n t ;  
 	 	 v a r   i t e m Q u a n t i t y   :   i n t ;  
 	 	 v a r   c h a r g e s C o u n t   :   i n t ;  
 	 	 v a r   i ,   c o u n t   	   :   i n t ;  
 	 	  
 	 	 v a r   t e m p I t e m s ,   t e m p B o m b s 	 :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   t e m p I t e m , t e m p I t e m 2   	 :   S I t e m U n i q u e I d ;  
 	 	 v a r   t e m p N a m e   	 :   n a m e ;  
 	 	  
 	 	 p l a y e r   =   G e t W i t c h e r P l a y e r ( ) ;  
 	 	 i n v   =   p l a y e r . G e t I n v e n t o r y ( ) ;  
 	 	 s e l e c t e d I t e m   =   G e t W i t c h e r P l a y e r ( ) . G e t S e l e c t e d I t e m I d ( ) ;  
 	 	  
 	 	 i t e m s   =   i n v . G e t I t e m s B y C a t e g o r y ( i t e m C a t ) ;  
 	 	 c o u n t   =   i t e m s . S i z e ( ) ;  
 	 	  
 	 	 i f ( i t e m C a t   = =   ' p e t a r d '   & &   ! p l a y e r . I s A c t i o n A l l o w e d ( E I A B _ O p e n I n v e n t o r y ) )  
 	 	 {  
 	 	 	 f o r ( i = 0 ; i < c o u n t ; i + = 1 )  
 	 	 	 { 	 	 	  
 	 	 	 	 t e m p N a m e   =   i n v . G e t I t e m N a m e ( i t e m s [ i ] ) ;  
 	 	 	 	  
 	 	 	 	 s w i t c h ( t e m p N a m e )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   ' q 7 0 3 _ p a i n t _ b o m b _ r e d ' :  
 	 	 	 	 	 c a s e   ' q 7 0 3 _ p a i n t _ b o m b _ g r e e n ' :  
 	 	 	 	 	 c a s e   ' q 7 0 3 _ p a i n t _ b o m b _ y e l l o w ' :  
 	 	 	 	 	 c a s e   ' q 7 0 3 _ p a i n t _ b o m b _ b l u e ' :  
 	 	 	 	 	 c a s e   ' q 7 0 3 _ p a i n t _ b o m b _ p u r p l e ' :  
 	 	 	 	 	 c a s e   ' S n o w   B a l l ' :  
 	 	 	 	 	 c a s e   ' T u t o r i a l   B o m b ' :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t e m p B o m b s . P u s h B a c k ( i t e m s [ i ] ) ;  
 	 	 	 	 	 	 i f ( ! p l a y e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ P e t a r d 1 ,   t e m p I t e m ) )  
 	 	 	 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . E q u i p I t e m (   i t e m s [ i ] ,   E E S _ P e t a r d 1   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 i t e m s   =   t e m p B o m b s ;  
 	 	 }  
 	 	  
 	 	 i f ( i t e m C a t   = =   ' u s a b l e ' )  
 	 	 {  
 	 	 	 f o r ( i = 0 ; i < c o u n t ; i + = 1 )  
 	 	 	 { 	 	 	  
 	 	 	 	 t e m p N a m e   =   i n v . G e t I t e m N a m e ( i t e m s [ i ] ) ;  
 	 	 	 	  
 	 	 	 	 s w i t c h ( t e m p N a m e )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   ' F e r o m o n e B o m b ' :  
 	 	 	 	 	 c a s e   ' c i r i s _ p h y l a c t e r y ' :  
 	 	 	 	 	 c a s e   ' q 4 0 3 _ c i r i _ m e t e o r ' :  
 	 	 	 	 	 c a s e   ' m q 1 0 6 0 _ r i g h t _ h a n d _ p o t i o n ' :  
 	 	 	 	 	 c a s e   ' T o r c h _ w o r k ' :  
 	 	 	 	 	 c a s e   ' T o r c h _ w o r k _ r i g h t ' :  
 	 	 	 	 	 c a s e   ' m q 7 0 1 4 _ r e a g e n t ' :  
 	 	 	 	 	 c a s e   ' q 7 0 3 _ t o r c h _ w o r k _ r i g h t ' :  
 	 	 	 	 	 c a s e   ' s q 7 0 1 _ t u t o r i a l _ s h i e l d ' :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 t e m p I t e m s . P u s h B a c k ( i t e m s [ i ] ) ;  
 	 	 	 } 	 	  
 	 	 	 i t e m s   =   t e m p I t e m s ;  
 	 	 }  
 	 	  
 	 	 c o u n t   =   i t e m s . S i z e ( ) ;  
 	 	  
 	 	 i t e m s L i s t   =   m _ f l a s h V a l u e S t o r a g e . C r e a t e T e m p F l a s h A r r a y ( ) ;  
 	 	 c o n t a i n e r O b j e c t   =   m _ f l a s h V a l u e S t o r a g e . C r e a t e T e m p F l a s h O b j e c t ( ) ;  
 	 	  
 	 	 s l o t N a m e   =   r a d i a l S l o t N a m e ;  
 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h I n t (   " s l o t I d " ,   r a d i a l S l o t I d   ) ;  
 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " s l o t N a m e " ,   s l o t N a m e   ) ;  
 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h B o o l (   " s h o w C h a n g e I t e m T e x t " ,   t r u e   ) ;  
 	 	  
 	 	 i f (   ! p l a y e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ Q u i c k s l o t 1 ,   t e m p I t e m )   & &   p l a y e r . I s A c t i o n A l l o w e d ( E I A B _ O p e n I n v e n t o r y )   & &   ( i t e m C a t   = =   ' u s a b l e ' )   & &   c o u n t   >   0   )  
 	 	 {  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . E q u i p I t e m (   i t e m s [ 0 ] ,   E E S _ Q u i c k s l o t 1   ) ;  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e l e c t Q u i c k s l o t I t e m (   E E S _ Q u i c k s l o t 1   ) ;  
 	 	 }  
 	 	 i f (   ! p l a y e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ P e t a r d 1 ,   t e m p I t e m )   & &   p l a y e r . I s A c t i o n A l l o w e d ( E I A B _ O p e n I n v e n t o r y )   & &   i t e m C a t   = =   ' p e t a r d '   & &   c o u n t   >   0   )  
 	 	 {  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . E q u i p I t e m (   i t e m s [ 0 ] ,   E E S _ P e t a r d 1   ) ;  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e l e c t Q u i c k s l o t I t e m (   E E S _ P e t a r d 1   ) ;  
 	 	 } 	  
 	 	  
 	 	  
 	 	 p l a y e r . U n e q u i p I t e m F r o m S l o t ( E E S _ P e t a r d 2 , t r u e ) ; 	 	  
 	 	 p l a y e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ Q u i c k s l o t 2 ,   t e m p I t e m   ) ;  
 	 	 i f ( i n v . I s I d V a l i d ( t e m p I t e m )   & &   i n v . G e t I t e m C a t e g o r y ( t e m p I t e m )   ! =   ' m a s k ' )  
 	 	 {  
 	 	 	 p l a y e r . U n e q u i p I t e m F r o m S l o t ( E E S _ Q u i c k s l o t 2 , t r u e ) ; 	  
 	 	 } 	 	  
 	 	  
 	 	  
 	 	 i n v . G e t I t e m E q u i p p e d O n S l o t (   E E S _ Q u i c k s l o t 1 ,   t e m p I t e m   ) ;  
 	 	 i n v . G e t I t e m E q u i p p e d O n S l o t (   E E S _ Q u i c k s l o t 2 ,   t e m p I t e m 2   ) ;  
 	 	 i f ( ! i n v . I s I d V a l i d ( t e m p I t e m 2 )   & &   i n v . I s I d V a l i d ( t e m p I t e m )   & &   i n v . G e t I t e m C a t e g o r y ( t e m p I t e m )   = =   ' m a s k ' )  
 	 	 {  
 	 	 	 p l a y e r . E q u i p I t e m I n G i v e n S l o t ( t e m p I t e m ,   E E S _ Q u i c k s l o t 2 ,   t r u e ,   f a l s e ) ;  
 	 	 }  
 	 	  
 	 	 i f ( i t e m C a t   = =   ' u s a b l e ' )  
 	 	 	 p l a y e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ Q u i c k s l o t 1 ,   e q u i p p e d I t e m     ) ;  
 	 	 e l s e   i f ( i t e m C a t   = =   ' p e t a r d ' )  
 	 	 	 p l a y e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ P e t a r d 1 ,   e q u i p p e d I t e m     ) ;  
 	 	  
 	 	 i f (   i n v . I s I d V a l i d (   e q u i p p e d I t e m     )   | |   c o u n t   >   0   )  
 	 	 {  
 	 	 	 i t e m N a m e   =   G e t L o c S t r i n g B y K e y E x t (   i n v . G e t I t e m L o c a l i z e d N a m e B y U n i q u e I D (   e q u i p p e d I t e m     )   ) ;  
 	 	 	 i t e m D e s c r i p t i o n   =   G e t L o c S t r i n g B y K e y E x t (   i n v . G e t I t e m L o c a l i z e d D e s c r i p t i o n B y U n i q u e I D (   e q u i p p e d I t e m     )   ) ;  
 	 	 	 i t e m C a t e g o r y   =   i n v . G e t I t e m C a t e g o r y (   e q u i p p e d I t e m     ) ;  
 	 	 	 i t e m Q u a l i t y   =   i n v . G e t I t e m Q u a l i t y (   e q u i p p e d I t e m     ) ;  
 	 	 	 i t e m I c o n P a t h   =   i n v . G e t I t e m I c o n P a t h B y U n i q u e I D (   e q u i p p e d I t e m     ) ;  
 	 	 	  
 	 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " n a m e " ,   i t e m N a m e   ) ;  
 	 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " d e s c r i p t i o n " ,   i t e m D e s c r i p t i o n   ) ;  
 	 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " c a t e g o r y " ,   i t e m C a t e g o r y   ) ;  
 	 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " i t e m I c o n P a t h " ,   i t e m I c o n P a t h   ) ;  
 	 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h I n t (   " q u a l i t y " ,   i t e m Q u a l i t y   ) ;  
 	 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h B o o l (   " i s E q u i p p e d " ,   s e l e c t e d I t e m   = =   e q u i p p e d I t e m     ) ;  
 	 	 	  
 	 	 	 l a s t I t e m D e s c r i p t i o n   =   i t e m D e s c r i p t i o n ;  
 	 	 	  
 	 	 	  
 	 	 	 f o r   (   i   =   0 ;   i   <   c o u n t ;   i   + =   1   )  
 	 	 	 {  
 	 	 	 	 c u r r e n t I t e m   =   i t e m s [   i   ] ;  
  
 	 	 	 	 i t e m D a t a O b j e c t   =   m _ f l a s h V a l u e S t o r a g e . C r e a t e T e m p F l a s h O b j e c t ( ) ;  
 	 	 	 	 i t e m N a m e   =   G e t L o c S t r i n g B y K e y E x t (   i n v . G e t I t e m L o c a l i z e d N a m e B y U n i q u e I D (   c u r r e n t I t e m     )   ) ;  
 	 	 	 	 i t e m D e s c r i p t i o n   =   G e t L o c S t r i n g B y K e y E x t (   i n v . G e t I t e m L o c a l i z e d D e s c r i p t i o n B y U n i q u e I D (   c u r r e n t I t e m     )   ) ;  
 	 	 	 	 i t e m C a t e g o r y   =   i n v . G e t I t e m C a t e g o r y (   c u r r e n t I t e m     ) ;  
 	 	 	 	 i t e m Q u a l i t y   =   i n v . G e t I t e m Q u a l i t y (   c u r r e n t I t e m     ) ;  
 	 	 	 	 i t e m I c o n P a t h   =   " i m g : / / "   +   i n v . G e t I t e m I c o n P a t h B y U n i q u e I D (   c u r r e n t I t e m     ) ;  
 	 	 	 	  
 	 	 	 	 l a s t I t e m D e s c r i p t i o n   =   i t e m D e s c r i p t i o n ;  
 	 	 	 	  
 	 	 	 	 i f (   i n v . I s I t e m S i n g l e t o n I t e m (   c u r r e n t I t e m     )   & &   i n v . S i n g l e t o n I t e m G e t M a x A m m o (   c u r r e n t I t e m     )   >   0   )  
 	 	 	 	 {  
 	 	 	 	 	  
 	 	 	 	 	 i f ( i t e m C a t   = =   ' p e t a r d ' )  
 	 	 	 	 	 	 c h a r g e s C o u n t   =   t h e P l a y e r . i n v . S i n g l e t o n I t e m G e t A m m o (   e q u i p p e d I t e m     ) ; 	  
 	 	 	 	 	 e l s e  
 	 	 	 	 	  
 	 	 	 	 	 	 c h a r g e s C o u n t   =   t h e P l a y e r . i n v . S i n g l e t o n I t e m G e t A m m o (   c u r r e n t I t e m     ) ; 	  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 c h a r g e s C o u n t   =   - 1 ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " n a m e " ,   i t e m N a m e   ) ;  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " d e s c r i p t i o n " ,   i t e m D e s c r i p t i o n   ) ;  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " i t e m I c o n P a t h " ,   i t e m I c o n P a t h   ) ;  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h B o o l (   " i s E q u i p p e d " ,   c u r r e n t I t e m     = =   e q u i p p e d I t e m     ) ;  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h I n t (   " c h a r g e s " ,   c h a r g e s C o u n t   ) ;  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h I n t (   " i d " ,   I t e m T o F l a s h U I n t (   c u r r e n t I t e m     )   ) ;  
 	 	 	 	  
 	 	 	 	 i t e m s L i s t . P u s h B a c k F l a s h O b j e c t (   i t e m D a t a O b j e c t   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h A r r a y (   " i t e m s L i s t " ,   i t e m s L i s t   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h B o o l (   " i s E m p t y " ,   t r u e   ) ;  
 	 	 }  
 	 	  
 	 	 d a t a L i s t . P u s h B a c k F l a s h O b j e c t (   c o n t a i n e r O b j e c t   ) ; 	  
 	 }  
 	  
 	  
 	  
 	 p r i v a t e   v a r   l a s t S e l e c t e d I t e m   :   S I t e m U n i q u e I d ;    
 	 p r i v a t e   v a r   l a s t I t e m C a t e g o r y   :   n a m e ;  
 	 p r i v a t e   f u n c t i o n   E q u i p L a s t S e l e c t e d I t e m ( o p t i o n a l   f o r c e   :   b o o l )  
 	 {  
 	 	 i f ( f o r c e   | |   G e t W i t c h e r P l a y e r ( ) . G e t E q u i p p e d S i g n ( )   = =   S T _ N o n e )  
 	 	 {  
 	 	 	 i f ( l a s t I t e m C a t e g o r y   = =   ' b o m b '   & &   _ c u r r e n t S e l e c t i o n   = =   " s l o t 1 " )  
 	 	 	 {  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . E q u i p I t e m (   l a s t S e l e c t e d I t e m ,   E E S _ P e t a r d 1 ) ;  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e l e c t Q u i c k s l o t I t e m (   E E S _ P e t a r d 1   ) ;  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e t E q u i p p e d S i g n ( s e l e c t e d S i g n ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( l a s t I t e m C a t e g o r y   = =   ' u s a b l e '   & &   _ c u r r e n t S e l e c t i o n   = =   " s l o t 3 " )  
 	 	 	 {  
 	 	 	 	 i f (   t h e P l a y e r . I s H o l d i n g I t e m I n L H a n d ( )   & &   l a s t S e l e c t e d I t e m   ! =   t h e P l a y e r . c u r r e n t l y E q u i p e d I t e m L   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . S e t P l a y e r A c t i o n T o R e s t o r e   (   P A T R _ N o n e   ) ;  
 	 	 	 	 	 t h e P l a y e r . O n U s e S e l e c t e d I t e m ( ) ;  
 	 	 	 	 	 t h e P l a y e r . S e t L a s t S e l e c t e d R a d i a l I t e m ( l a s t S e l e c t e d I t e m ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . E q u i p I t e m (   l a s t S e l e c t e d I t e m ,   E E S _ Q u i c k s l o t 1 ,   f a l s e ) ;  
 	 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e l e c t Q u i c k s l o t I t e m (   E E S _ Q u i c k s l o t 1   ) ;  
 	 	 	 	 }  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e t E q u i p p e d S i g n ( s e l e c t e d S i g n ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( l a s t I t e m C a t e g o r y   = =   ' '     & &   _ c u r r e n t S e l e c t i o n   = =   " C r o s s b o w " )  
 	 	 	 {  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e l e c t Q u i c k s l o t I t e m (   E E S _ R a n g e d W e a p o n   ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f ( f o r c e )  
 	 	 {  
 	 	 	 i f ( _ c u r r e n t S e l e c t i o n   = =   " A a r d " )  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e t E q u i p p e d S i g n ( S T _ A a r d ) ;  
 	 	 	 e l s e   i f ( _ c u r r e n t S e l e c t i o n   = =   " I g n i " )  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e t E q u i p p e d S i g n ( S T _ I g n i ) ;  
 	 	 	 e l s e   i f ( _ c u r r e n t S e l e c t i o n   = =   " Y r d e n " )  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e t E q u i p p e d S i g n ( S T _ Y r d e n ) ;  
 	 	 	 e l s e   i f ( _ c u r r e n t S e l e c t i o n   = =   " A x i i " )  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e t E q u i p p e d S i g n ( S T _ A x i i ) ;  
 	 	 	 e l s e   i f ( _ c u r r e n t S e l e c t i o n   = =   " Q u e n " )  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e t E q u i p p e d S i g n ( S T _ Q u e n ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 e v e n t   O n E q u i p B o l t (   b o l t I t e m I d   :   S I t e m U n i q u e I d   )  
 	 {  
 	 	 v a r   i n v   :   C I n v e n t o r y C o m p o n e n t ;  
 	 	 v a r   e q u i p p e d B o l t s   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	  
 	 	 v a r   t e m p N a m e   :   n a m e ;  
 	 	 v a r   i t e m D e s c r i p t i o n   :   s t r i n g ;  
  
 	 	 i n v   =   G e t W i t c h e r P l a y e r ( ) . G e t I n v e n t o r y ( ) ;  
 	 	 l a s t I t e m C a t e g o r y   =   ' ' ;  
  
 	 	 i f (   i n v . I s I d V a l i d ( b o l t I t e m I d )   & &   i n v . G e t I t e m C a t e g o r y ( b o l t I t e m I d )   = =   ' p e t a r d ' )  
 	 	 {  
 	 	 	 i f ( t h e P l a y e r . I s A c t i o n A l l o w e d (   E I A B _ Q u i c k S l o t s   ) )  
 	 	 	 { 	 	 	  
 	 	 	 	 i f ( t h e P l a y e r . I s A c t i o n A l l o w e d (   E I A B _ O p e n I n v e n t o r y   ) )  
 	 	 	 	 {  
 	 	 	 	 	 l a s t S e l e c t e d I t e m   =   b o l t I t e m I d ;  
 	 	 	 	 	 l a s t I t e m C a t e g o r y   =   ' b o m b ' ;  
 	 	 	 	 	 i t e m D e s c r i p t i o n   =   G e t L o c S t r i n g B y K e y E x t (   i n v . G e t I t e m L o c a l i z e d D e s c r i p t i o n B y U n i q u e I D (   b o l t I t e m I d     )   ) ;  
 	 	 	 	 	 m _ f x S e t D e s c r i p t i o n . I n v o k e S e l f O n e A r g ( F l a s h A r g S t r i n g ( i t e m D e s c r i p t i o n ) ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 t e m p N a m e   =   i n v . G e t I t e m N a m e ( b o l t I t e m I d ) ;  
 	 	 	 	 	 s w i t c h ( t e m p N a m e )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 c a s e   ' q 7 0 3 _ p a i n t _ b o m b _ r e d ' :  
 	 	 	 	 	 	 c a s e   ' q 7 0 3 _ p a i n t _ b o m b _ g r e e n ' :  
 	 	 	 	 	 	 c a s e   ' q 7 0 3 _ p a i n t _ b o m b _ y e l l o w ' :  
 	 	 	 	 	 	 c a s e   ' q 7 0 3 _ p a i n t _ b o m b _ b l u e ' :  
 	 	 	 	 	 	 c a s e   ' q 7 0 3 _ p a i n t _ b o m b _ p u r p l e ' :  
 	 	 	 	 	 	 c a s e   ' S n o w   B a l l ' :  
 	 	 	 	 	 	 c a s e   ' T u t o r i a l   B o m b ' :  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 l a s t S e l e c t e d I t e m   =   b o l t I t e m I d ;  
 	 	 	 	 	 	 	 l a s t I t e m C a t e g o r y   =   ' b o m b ' ;  
 	 	 	 	 	 	 	 i t e m D e s c r i p t i o n   =   G e t L o c S t r i n g B y K e y E x t (   i n v . G e t I t e m L o c a l i z e d D e s c r i p t i o n B y U n i q u e I D (   b o l t I t e m I d     )   ) ;  
 	 	 	 	 	 	 	 m _ f x S e t D e s c r i p t i o n . I n v o k e S e l f O n e A r g ( F l a s h A r g S t r i n g ( i t e m D e s c r i p t i o n ) ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f ( i n v . I s I d V a l i d ( b o l t I t e m I d )   & &   i n v . G e t I t e m C a t e g o r y ( b o l t I t e m I d )   = =   ' u s a b l e ' )  
 	 	 {  
 	 	 	 i f ( t h e P l a y e r . I s A c t i o n A l l o w e d (   E I A B _ Q u i c k S l o t s   ) )  
 	 	 	 {  
 	 	 	 	 l a s t S e l e c t e d I t e m   =   b o l t I t e m I d ;  
 	 	 	 	 l a s t I t e m C a t e g o r y   =   ' u s a b l e ' ;  
 	 	 	 	 i t e m D e s c r i p t i o n   =   G e t L o c S t r i n g B y K e y E x t (   i n v . G e t I t e m L o c a l i z e d D e s c r i p t i o n B y U n i q u e I D (   b o l t I t e m I d     )   ) ;  
 	 	 	 	 m _ f x S e t D e s c r i p t i o n . I n v o k e S e l f O n e A r g ( F l a s h A r g S t r i n g ( i t e m D e s c r i p t i o n ) ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e     i f   (   b o l t I t e m I d   = =   G e t I n v a l i d U n i q u e I d ( )   )  
 	 	 {  
 	 	 	  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . G e t I t e m E q u i p p e d O n S l o t (   E E S _ B o l t ,   e q u i p p e d B o l t s   ) ;  
 	 	 	  
 	 	 	 i f   (   i n v . I s I d V a l i d (   e q u i p p e d B o l t s   )   & &   ! i n v . I t e m H a s T a g (   e q u i p p e d B o l t s ,   t h e G a m e . p a r a m s . T A G _ I N F I N I T E _ A M M O   )   )  
 	 	 	 {  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . U n e q u i p I t e m F r o m S l o t (   E E S _ B o l t ,   f a l s e   ) ;  
 	 	 	 } 	  
 	 	 	  
 	 	 	 U p d a t e I t e m s I c o n s ( t r u e ) ;  
 	 	 }  
 	 	 e l s e   i f (   t h e P l a y e r . i n v . I s I d V a l i d (   b o l t I t e m I d   )   )  
 	 	 {  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . E q u i p I t e m (   b o l t I t e m I d ,   E E S _ B o l t ) ;  
 	 	 	 t h e P l a y e r . S e t U p d a t e Q u i c k S l o t I t e m s ( t r u e ) ; 	  
 	 	 	  
 	 	 	 U p d a t e I t e m s I c o n s ( t r u e ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e C r o s s b o w I t e m D a t a (   r a d i a l S l o t I d   :   i n t ,   o u t   d a t a L i s t   :   C S c r i p t e d F l a s h A r r a y   )   :   v o i d  
 	 {  
 	 	 v a r   p l a y e r   	 	         :   W 3 P l a y e r W i t c h e r ;  
 	 	 v a r   i n v         	 	         :   C I n v e n t o r y C o m p o n e n t ;  
 	 	 v a r   b o l t s L i s t 	         :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   c u r r e n t B o l t           :   S I t e m U n i q u e I d ;  
 	 	 v a r   e q u i p p e d B o l t         :   S I t e m U n i q u e I d ;  
 	 	 v a r   e q u i p p e d I t e m         :   S I t e m U n i q u e I d ;  
 	 	 v a r   s e l e c t e d I t e m         :   S I t e m U n i q u e I d ;  
 	 	 v a r   i t e m s L i s t 	 	 :   C S c r i p t e d F l a s h A r r a y ;  
 	 	 v a r   i t e m D a t a O b j e c t     :   C S c r i p t e d F l a s h O b j e c t ;  
 	 	 v a r   c o n t a i n e r O b j e c t   :   C S c r i p t e d F l a s h O b j e c t ;  
 	 	  
 	 	 v a r   s l o t N a m e           	 :   s t r i n g ;  
 	 	 v a r   i t e m C a t e g o r y       	 :   s t r i n g ;  
 	 	 v a r   i t e m N a m e 	   	 :   s t r i n g ;    
 	 	 v a r   i t e m D e s c r i p t i o n   :   s t r i n g ;  
 	 	 v a r   i t e m I c o n P a t h   	 :   s t r i n g ;  
 	 	  
 	 	 v a r   i t e m C a t             :   n a m e ;  
 	 	 v a r   i t e m Q u a l i t y     :   i n t ;  
 	 	 v a r   i t e m Q u a n t i t y   :   i n t ;  
 	 	 v a r   c h a r g e s C o u n t   :   i n t ;  
 	 	 v a r   i ,   c o u n t   	   :   i n t ;  
 	 	 v a r   p l a y e r L e v e l     :   i n t ;  
 	 	  
 	 	 v a r   d m   :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ;  
 	 	  
 	 	 v a r   i n f i n i t e B o l t I t e m N a m e   :   n a m e ;  
 	 	  
 	 	 p l a y e r L e v e l   =   t h e P l a y e r . G e t L e v e l ( ) ;  
 	 	 p l a y e r   =   G e t W i t c h e r P l a y e r ( ) ;  
 	 	 i n v   =   p l a y e r . G e t I n v e n t o r y ( ) ;  
 	 	 i n f i n i t e B o l t I t e m N a m e   =   p l a y e r . G e t C u r r e n t I n f i n i t e B o l t N a m e ( ) ;  
 	 	  
 	 	 s e l e c t e d I t e m   =   G e t W i t c h e r P l a y e r ( ) . G e t S e l e c t e d I t e m I d ( ) ;  
 	 	  
 	 	 i t e m s L i s t   =   m _ f l a s h V a l u e S t o r a g e . C r e a t e T e m p F l a s h A r r a y ( ) ;  
 	 	 c o n t a i n e r O b j e c t   =   m _ f l a s h V a l u e S t o r a g e . C r e a t e T e m p F l a s h O b j e c t ( ) ;  
 	 	  
 	 	  
 	 	 s l o t N a m e   =   " C r o s s b o w " ;  
 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h I n t (   " s l o t I d " ,   r a d i a l S l o t I d   ) ;  
 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " s l o t N a m e " ,   s l o t N a m e   ) ;  
 	 	  
 	 	 p l a y e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ R a n g e d W e a p o n ,   e q u i p p e d I t e m   ) ;  
 	 	 p l a y e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ B o l t ,   e q u i p p e d B o l t   ) ;  
 	 	  
 	 	 i f (   i n v . I s I d V a l i d (   e q u i p p e d I t e m   )   )  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	 i t e m N a m e   =   G e t L o c S t r i n g B y K e y E x t (   i n v . G e t I t e m L o c a l i z e d N a m e B y U n i q u e I D (   e q u i p p e d I t e m   )   ) ;  
 	 	 	 i t e m D e s c r i p t i o n   =   G e t L o c S t r i n g B y K e y E x t (   i n v . G e t I t e m L o c a l i z e d D e s c r i p t i o n B y U n i q u e I D (   e q u i p p e d I t e m   )   ) ;  
 	 	 	 i t e m C a t e g o r y   =   i n v . G e t I t e m C a t e g o r y (   e q u i p p e d I t e m   ) ;  
 	 	 	 i t e m Q u a l i t y   =   i n v . G e t I t e m Q u a l i t y (   e q u i p p e d I t e m   ) ;  
 	 	 	 i t e m I c o n P a t h   =   i n v . G e t I t e m I c o n P a t h B y U n i q u e I D (   e q u i p p e d I t e m   ) ;  
 	 	 	  
 	 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " n a m e " ,   i t e m N a m e   ) ;  
 	 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " d e s c r i p t i o n " ,   i t e m D e s c r i p t i o n   ) ;  
 	 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " c a t e g o r y " ,   i t e m C a t e g o r y   ) ;  
 	 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " i t e m I c o n P a t h " ,   i t e m I c o n P a t h   ) ;  
 	 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h I n t (   " q u a l i t y " ,   i t e m Q u a l i t y   ) ;  
 	 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h B o o l (   " i s E q u i p p e d " ,   s e l e c t e d I t e m   = =   e q u i p p e d I t e m   ) ;  
 	 	 	  
 	 	 	 l a s t I t e m D e s c r i p t i o n   =   i t e m D e s c r i p t i o n ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 b o l t s L i s t   =   i n v . G e t I t e m s B y C a t e g o r y ( ' b o l t ' ) ;  
 	 	 	 c o u n t   =   b o l t s L i s t . S i z e ( ) ;  
 	 	 	  
 	 	 	  
 	 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	 	 i t e m N a m e   =   G e t L o c S t r i n g B y K e y E x t (   d m . G e t I t e m L o c a l i s a t i o n K e y N a m e (   i n f i n i t e B o l t I t e m N a m e   )   ) ;  
 	 	 	 i t e m D e s c r i p t i o n   =   G e t L o c S t r i n g B y K e y E x t (   d m . G e t I t e m L o c a l i s a t i o n K e y D e s c (   i n f i n i t e B o l t I t e m N a m e   )   ) ;  
 	 	 	 i t e m I c o n P a t h   =   " i m g : / / "   +   d m . G e t I t e m I c o n P a t h (   i n f i n i t e B o l t I t e m N a m e   ) ;  
 	 	 	 i n v . G e t I t e m I d (   i n f i n i t e B o l t I t e m N a m e   ) ;  
  
 	 	 	 i f   (   S t r L e n (   i t e m N a m e   )   )  
 	 	 	 {  
 	 	 	 	 i t e m D a t a O b j e c t   =   m _ f l a s h V a l u e S t o r a g e . C r e a t e T e m p F l a s h O b j e c t ( ) ;  
 	 	 	 	  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " n a m e " ,   i t e m N a m e   ) ;  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " d e s c r i p t i o n " ,   i t e m D e s c r i p t i o n   ) ;  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " i t e m I c o n P a t h " ,   i t e m I c o n P a t h   ) ;  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h B o o l (   " i s E q u i p p e d " ,   t r u e   ) ;  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h I n t (   " c h a r g e s " ,   - 1   ) ;  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h I n t (   " i d " ,   0   ) ;  
  
 	 	 	 	 i t e m s L i s t . P u s h B a c k F l a s h O b j e c t (   i t e m D a t a O b j e c t   ) ;  
 	 	 	 }  
  
 	 	 	 i f   (   ! G e t W i t c h e r P l a y e r ( ) . S h o u l d U s e I n f i n i t e W a t e r B o l t s ( )   )  
 	 	 	 {  
 	 	 	  
 	 	 	 f o r   (   i   =   0 ;   i   <   c o u n t ;   i   + =   1   )  
 	 	 	 {  
 	 	 	 	 c u r r e n t B o l t   =   b o l t s L i s t [   i   ] ;  
 	 	 	 	  
 	 	 	 	 i f   (   i n v . G e t I t e m L e v e l (   c u r r e n t B o l t   )   < =   p l a y e r L e v e l   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   i n v . G e t I t e m N a m e (   c u r r e n t B o l t   )   = =   i n f i n i t e B o l t I t e m N a m e   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	  
 	 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 	 }  
 	 	 	 	 	 i t e m D a t a O b j e c t   =   m _ f l a s h V a l u e S t o r a g e . C r e a t e T e m p F l a s h O b j e c t ( ) ;  
 	 	 	 	 	 i t e m N a m e   =   G e t L o c S t r i n g B y K e y E x t (   i n v . G e t I t e m L o c a l i z e d N a m e B y U n i q u e I D (   c u r r e n t B o l t   )   ) ;  
 	 	 	 	 	 i t e m D e s c r i p t i o n   =   G e t L o c S t r i n g B y K e y E x t (   i n v . G e t I t e m L o c a l i z e d D e s c r i p t i o n B y U n i q u e I D (   c u r r e n t B o l t   )   ) ;  
 	 	 	 	 	 i t e m C a t e g o r y   =   i n v . G e t I t e m C a t e g o r y (   c u r r e n t B o l t   ) ;  
 	 	 	 	 	 i t e m Q u a l i t y   =   i n v . G e t I t e m Q u a l i t y (   c u r r e n t B o l t   ) ;  
 	 	 	 	 	 i t e m I c o n P a t h   =   " i m g : / / "   +   i n v . G e t I t e m I c o n P a t h B y U n i q u e I D (   c u r r e n t B o l t   ) ;  
 	 	 	 	 	  
 	 	 	 	 	 i f (   i n v . I t e m H a s T a g (   c u r r e n t B o l t ,   t h e G a m e . p a r a m s . T A G _ I N F I N I T E _ A M M O   )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 c h a r g e s C o u n t   =   - 1 ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 c h a r g e s C o u n t   =   i n v . G e t I t e m Q u a n t i t y (   c u r r e n t B o l t   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " n a m e " ,   i t e m N a m e   ) ;  
 	 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " d e s c r i p t i o n " ,   i t e m D e s c r i p t i o n   ) ;  
 	 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " i t e m I c o n P a t h " ,   i t e m I c o n P a t h   ) ;  
 	 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h B o o l (   " i s E q u i p p e d " ,   c u r r e n t B o l t   = =   e q u i p p e d B o l t   ) ;  
 	 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h I n t (   " c h a r g e s " ,   c h a r g e s C o u n t   ) ;  
 	 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h I n t (   " i d " ,   I t e m T o F l a s h U I n t (   c u r r e n t B o l t   )   ) ;  
 	 	 	 	 	  
 	 	 	 	 	 i t e m s L i s t . P u s h B a c k F l a s h O b j e c t (   i t e m D a t a O b j e c t   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 }  
 	 	 	  
 	 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h A r r a y (   " i t e m s L i s t " ,   i t e m s L i s t   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h A r r a y (   " i t e m s L i s t " ,   i t e m s L i s t   ) ;  
 	 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h B o o l (   " i s E m p t y " ,   t r u e   ) ;  
 	 	 }  
 	 	  
 	 	 d a t a L i s t . P u s h B a c k F l a s h O b j e c t (   c o n t a i n e r O b j e c t   ) ; 	  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e P o c k e t I t e m D a t a (   r a d i a l S l o t I d   :   i n t ,   s l o t s L i s t   :   a r r a y   < E E q u i p m e n t S l o t s > ,   o u t   d a t a L i s t   :   C S c r i p t e d F l a s h A r r a y   )   :   v o i d  
 	 {  
 	 	 v a r   p l a y e r   	 	         :   W 3 P l a y e r W i t c h e r ;  
 	 	 v a r   i n v         	 	         :   C I n v e n t o r y C o m p o n e n t ;  
 	 	 v a r   e q u i p p e d I t e m         :   S I t e m U n i q u e I d ;  
 	 	 v a r   s e l e c t e d I t e m         :   S I t e m U n i q u e I d ;  
 	 	 v a r   i t e m s L i s t 	 	 :   C S c r i p t e d F l a s h A r r a y ;  
 	 	 v a r   i t e m D a t a O b j e c t     :   C S c r i p t e d F l a s h O b j e c t ;  
 	 	 v a r   c o n t a i n e r O b j e c t   :   C S c r i p t e d F l a s h O b j e c t ;  
 	 	  
 	 	 v a r   i t e m C a t e g o r y       	 :   s t r i n g ;  
 	 	 v a r   s l o t N a m e           	 :   s t r i n g ;  
 	 	 v a r   i t e m N a m e 	 	 :   s t r i n g ;    
 	 	 v a r   i t e m D e s c r i p t i o n   :   s t r i n g ;  
 	 	 v a r   i t e m I c o n P a t h   	 :   s t r i n g ;  
 	 	  
 	 	 v a r   i t e m C a t             :   n a m e ;  
 	 	 v a r   i t e m Q u a l i t y     :   i n t ;  
 	 	 v a r   i t e m Q u a n t i t y   :   i n t ;  
 	 	 v a r   c h a r g e s C o u n t   :   i n t ;  
 	 	 v a r   i ,   c o u n t   	   :   i n t ;  
 	 	  
 	 	 p l a y e r   =   G e t W i t c h e r P l a y e r ( ) ;  
 	 	 i n v   =   p l a y e r . G e t I n v e n t o r y ( ) ;  
 	 	 c o u n t   =   s l o t s L i s t . S i z e ( ) ;  
 	 	 s e l e c t e d I t e m   =   G e t W i t c h e r P l a y e r ( ) . G e t S e l e c t e d I t e m I d ( ) ;  
 	 	  
 	 	 i t e m s L i s t   =   m _ f l a s h V a l u e S t o r a g e . C r e a t e T e m p F l a s h A r r a y ( ) ;  
 	 	 c o n t a i n e r O b j e c t   =   m _ f l a s h V a l u e S t o r a g e . C r e a t e T e m p F l a s h O b j e c t ( ) ;  
 	 	 s l o t N a m e   =   " S l o t "   +   (   r a d i a l S l o t I d   -   5   ) ;    
 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h I n t (   " s l o t I d " ,   r a d i a l S l o t I d   ) ;  
 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h B o o l (   " i s P o c k e t D a t a " ,   t r u e   ) ;  
 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " s l o t N a m e " ,   s l o t N a m e   ) ;  
 	 	  
 	 	 f o r   (   i   =   0 ;   i   <   c o u n t ;   i   + =   1   )  
 	 	 {  
 	 	 	 i t e m D a t a O b j e c t   =   m _ f l a s h V a l u e S t o r a g e . C r e a t e T e m p F l a s h O b j e c t ( ) ;  
 	 	 	 s l o t N a m e   =   " S l o t "   +   (   r a d i a l S l o t I d   -   5   +   i   ) ;    
 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " s l o t N a m e " ,   s l o t N a m e   ) ;  
 	 	 	 p l a y e r . G e t I t e m E q u i p p e d O n S l o t (   s l o t s L i s t [ i ] ,   e q u i p p e d I t e m   ) ;  
 	 	 	  
 	 	 	 i f (   i n v . I s I d V a l i d (   e q u i p p e d I t e m   )   )  
 	 	 	 {  
 	 	 	 	 i t e m N a m e   =   G e t L o c S t r i n g B y K e y E x t (   i n v . G e t I t e m L o c a l i z e d N a m e B y U n i q u e I D (   e q u i p p e d I t e m   )   ) ;  
 	 	 	 	 i t e m D e s c r i p t i o n   =   G e t L o c S t r i n g B y K e y E x t (   i n v . G e t I t e m L o c a l i z e d D e s c r i p t i o n B y U n i q u e I D (   e q u i p p e d I t e m   )   ) ;  
 	 	 	 	 i t e m C a t e g o r y   =   i n v . G e t I t e m C a t e g o r y (   e q u i p p e d I t e m   ) ;  
 	 	 	 	 i t e m Q u a l i t y   =   i n v . G e t I t e m Q u a l i t y (   e q u i p p e d I t e m   ) ;  
 	 	 	 	 i t e m I c o n P a t h   =   i n v . G e t I t e m I c o n P a t h B y U n i q u e I D (   e q u i p p e d I t e m   ) ;  
 	 	 	 	  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " n a m e " ,   i t e m N a m e   ) ;  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " d e s c r i p t i o n " ,   i t e m D e s c r i p t i o n   ) ;  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " c a t e g o r y " ,   i t e m C a t e g o r y   ) ;  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h S t r i n g (   " i t e m I c o n P a t h " ,   i t e m I c o n P a t h   ) ;  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h I n t (   " q u a l i t y " ,   i t e m Q u a l i t y   ) ;  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h B o o l (   " i s E q u i p p e d " ,   s e l e c t e d I t e m   = =   e q u i p p e d I t e m   ) ;  
 	 	 	 	  
 	 	 	 	 i f (   i n v . I s I t e m S i n g l e t o n I t e m (   e q u i p p e d I t e m   )   & &   i n v . S i n g l e t o n I t e m G e t M a x A m m o (   e q u i p p e d I t e m   )   >   0   )  
 	 	 	 	 {  
 	 	 	 	 	 c h a r g e s C o u n t   =   t h e P l a y e r . i n v . S i n g l e t o n I t e m G e t A m m o (   e q u i p p e d I t e m   ) ; 	 	 	 	 	  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 c h a r g e s C o u n t   =   - 1 ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i t e m D a t a O b j e c t . S e t M e m b e r F l a s h I n t (   " c h a r g e s " ,   c h a r g e s C o u n t   ) ;  
 	 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i t e m s L i s t . P u s h B a c k F l a s h O b j e c t (   i t e m D a t a O b j e c t   ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 c o n t a i n e r O b j e c t . S e t M e m b e r F l a s h A r r a y (   " i t e m s L i s t " ,   i t e m s L i s t   ) ;  
 	 	 d a t a L i s t . P u s h B a c k F l a s h O b j e c t (   c o n t a i n e r O b j e c t   ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e I t e m I c o n B y I d x (   i   :   i n t ,   s l o t I d   :   E E q u i p m e n t S l o t s   )   :   v o i d    
 	 { 	 	 	  
 	 	 v a r   i n v   :   C I n v e n t o r y C o m p o n e n t ;  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ;  
 	 	 v a r   p l a y e r   :   W 3 P l a y e r W i t c h e r ;  
 	 	 v a r   i t e m N a m e   :   s t r i n g ;  
 	 	 v a r   i t e m D e s c r i p t i o n   :   s t r i n g ;  
 	 	 v a r   i t e m P a t h   :   s t r i n g ;  
 	 	 v a r   i t e m C a t e g o r y   :   n a m e ;  
 	 	 v a r   i t e m Q u a l i t y :   i n t ;  
 	 	 v a r   _ C u r r e n t S e l e c t e d I t e m   :   S I t e m U n i q u e I d ;    
 	 	  
 	 	 p l a y e r   =   G e t W i t c h e r P l a y e r ( ) ;  
 	 	 i n v   =   p l a y e r . G e t I n v e n t o r y ( ) ;  
 	 	  
 	 	 p l a y e r . G e t I t e m E q u i p p e d O n S l o t ( s l o t I d ,   i t e m ) ;  
 	 	 _ C u r r e n t S e l e c t e d I t e m   =   G e t W i t c h e r P l a y e r ( ) . G e t S e l e c t e d I t e m I d ( ) ;  
 	 	  
 	 	 i f (   i n v . I s I d V a l i d ( i t e m )   )  
 	 	 {  
 	 	 	 i t e m N a m e   =   G e t L o c S t r i n g B y K e y E x t ( i n v . G e t I t e m L o c a l i z e d N a m e B y U n i q u e I D ( i t e m ) ) ;  
 	 	 	 i t e m D e s c r i p t i o n   =   G e t L o c S t r i n g B y K e y E x t ( i n v . G e t I t e m L o c a l i z e d D e s c r i p t i o n B y U n i q u e I D ( i t e m ) ) ;  
 	 	 	 i t e m C a t e g o r y   =   i n v . G e t I t e m C a t e g o r y   ( i t e m ) ;  
 	 	 	 i t e m Q u a l i t y   =   i n v . G e t I t e m Q u a l i t y ( i t e m ) ;  
 	 	 	 i t e m P a t h   =   i n v . G e t I t e m I c o n P a t h B y U n i q u e I D ( i t e m ) ;  
 	 	 	  
 	 	 	 m _ f x U p d a t e I t e m I c o n S F F . I n v o k e S e l f S i x A r g s (   F l a s h A r g I n t (   i   ) ,   F l a s h A r g S t r i n g (   i t e m P a t h   ) ,   F l a s h A r g S t r i n g (   i t e m N a m e   ) ,   F l a s h A r g S t r i n g (   i t e m C a t e g o r y   ) ,   F l a s h A r g S t r i n g (   i t e m D e s c r i p t i o n   )   ,   F l a s h A r g I n t (   i t e m Q u a l i t y   )   ) ;  
 	 	 	  
 	 	 	 i t e m N a m e   =   " S l o t "   +   (   i   -   5   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f (   i t e m   = =   _ C u r r e n t S e l e c t e d I t e m   )  
 	 	 	 {  
 	 	 	 	 i f (   i n v . I s I d V a l i d ( _ C u r r e n t S e l e c t e d I t e m )   )  
 	 	 	 	 {  
 	 	 	 	 	 m _ f x U p d a t e F i e l d E q u i p p e d S t a t e S F F . I n v o k e S e l f F o u r A r g s (   F l a s h A r g S t r i n g ( i t e m N a m e ) ,   F l a s h A r g S t r i n g ( i t e m D e s c r i p t i o n ) ,   F l a s h A r g B o o l ( t r u e )   , F l a s h A r g I n t ( 0 ) ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 m _ f x U p d a t e F i e l d E q u i p p e d S t a t e S F F . I n v o k e S e l f F o u r A r g s (   F l a s h A r g S t r i n g ( i t e m N a m e ) ,   F l a s h A r g S t r i n g ( i t e m D e s c r i p t i o n ) ,   F l a s h A r g B o o l ( f a l s e ) ,   F l a s h A r g I n t ( 0 )   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 m _ f x U p d a t e I t e m I c o n S F F . I n v o k e S e l f S i x A r g s (   F l a s h A r g I n t ( i ) , F l a s h A r g S t r i n g ( " " ) , F l a s h A r g S t r i n g ( " " ) ,   F l a s h A r g S t r i n g ( " " ) ,   F l a s h A r g S t r i n g ( " " ) ,   F l a s h A r g S t r i n g ( " " )   ) ;  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   G e t C i r i I t e m ( )   :   S I t e m U n i q u e I d  
 	 {  
 	 	 v a r   r e t   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	  
 	 	 r e t   =   t h e P l a y e r . G e t I n v e n t o r y ( ) . G e t I t e m s B y N a m e ( ' q 4 0 3 _ c i r i _ m e t e o r ' ) ;  
 	 	  
 	 	 r e t u r n   r e t [ 0 ] ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t D e s a t u r a t e d (   v a l u e   :   b o o l ,   f i e l d N a m e   :   s t r i n g   )  
 	 {  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 m _ f x S e t D e s a t u r a t e d S F F . I n v o k e S e l f T w o A r g s ( F l a s h A r g B o o l ( v a l u e ) , F l a s h A r g S t r i n g ( f i e l d N a m e ) ) ;  
 	 }  
 	 	  
 	 p r o t e c t e d   f u n c t i o n   U p d a t e S c a l e (   s c a l e   :   f l o a t ,   f l a s h M o d u l e   :   C S c r i p t e d F l a s h S p r i t e   )   :   b o o l    
 	 {  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 }  
  
 e x e c   f u n c t i o n   s r f d e s (   v a l u e   :   b o o l ,   f i e l d N a m e   :   s t r i n g   )  
 {  
 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 v a r   m o d u l e   :   C R 4 H u d M o d u l e R a d i a l M e n u ;  
  
 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 m o d u l e   =   ( C R 4 H u d M o d u l e R a d i a l M e n u ) h u d . G e t H u d M o d u l e ( " R a d i a l M e n u M o d u l e " ) ;  
 	 m o d u l e . S e t D e s a t u r a t e d (   v a l u e ,   f i e l d N a m e   ) ;  
 }  
 