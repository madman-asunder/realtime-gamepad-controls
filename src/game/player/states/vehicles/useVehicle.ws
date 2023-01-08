/ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / * *   	 �   2 0 1 5   C D   P R O J E K T   S . A .   A l l   r i g h t s   r e s e r v e d .  
 / * *   	 T H E   W I T C H E R �   i s   a   t r a d e m a r k   o f   C D   P R O J E K T   S .   A .  
 / * *   	 T h e   W i t c h e r   g a m e   i s   b a s e d   o n   t h e   p r o s e   o f   A n d r z e j   S a p k o w s k i .  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
  
  
  
 i m p o r t   s t a t e   U s e V e h i c l e   i n   C P l a y e r   e x t e n d s   B a s e  
 {  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	  
 	 }  
 	  
 	 e v e n t   O n L e a v e S t a t e (   n e x t S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	  
 	 }  
 	  
 	 e v e n t   O n V e h i c l e S t a t e T i c k (   d t   :   f l o a t   ) { }  
 }  
  
  
  
  
  
 i m p o r t   s t a t e   P o s t U s e V e h i c l e   i n   C P l a y e r   e x t e n d s   B a s e  
 {  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 s u p e r . O n E n t e r S t a t e (   p r e v S t a t e N a m e   ) ;  
 	 	 (   ( C R 4 P l a y e r ) p a r e n t   ) . O n C o m b a t A c t i o n E n d C o m p l e t e ( ) ;  
 	 }  
 	  
 	 e v e n t   O n L e a v e S t a t e (   n e x t S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 s u p e r . O n L e a v e S t a t e (   n e x t S t a t e N a m e   ) ;  
 	 }  
 	  
 	 e v e n t   O n V e h i c l e S t a t e T i c k (   d t   :   f l o a t   ) { }  
 	  
 	  
 	 i m p o r t   f i n a l   f u n c t i o n   H A C K _ D e a c t i v a t e P h y s i c s R e p r e s e n t a t i o n ( ) ;  
 	 i m p o r t   f i n a l   f u n c t i o n   H A C K _ A c t i v a t e P h y s i c s R e p r e s e n t a t i o n ( ) ;  
 }  
  
  
  
  
  
 s t a t e   U s e G e n e r i c V e h i c l e   i n   C R 4 P l a y e r   e x t e n d s   U s e V e h i c l e  
 {  
 	 p r o t e c t e d   v a r   v e h i c l e   :   C V e h i c l e C o m p o n e n t ;  
 	 p r o t e c t e d   v a r   c a m e r a   :   C C u s t o m C a m e r a ;  
 	  
 	 p r i v a t e   v a r   s i g n S l o t N a m e s   :   a r r a y < n a m e > ;  
  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 s u p e r . O n E n t e r S t a t e ( p r e v S t a t e N a m e ) ;  
 	 	  
 	 	 p a r e n t . S e t O r i e n t a t i o n T a r g e t (   O T _ C a m e r a   ) ;  
 	 	  
 	 	 c a m e r a   =   ( C C u s t o m C a m e r a ) t h e C a m e r a . G e t T o p m o s t C a m e r a O b j e c t ( ) ;  
 	 	  
 	 	 / /   m o d B e t t e r T o r c h e s N e x t G e n  
 	 	 t h e P l a y e r . U n b l o c k A c t i o n ( E I A B _ U s a b l e I t e m ,   ' U s a b l e I t e m ' ) ; 	  
 	 	  
 	 	 i f   (   ( W 3 R e p l a c e r C i r i ) p a r e n t   )  
 	 	 {  
 	 	 	 p a r e n t . S e t B e h a v i o r V a r i a b l e (   ' t e s t _ c i r i _ r e p l a c e r ' ,   1 . 0 f   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 s i g n S l o t N a m e s . P u s h B a c k (   ' S l o t 2 '   ) ;  
 	 	 	 s i g n S l o t N a m e s . P u s h B a c k (   ' S l o t 3 '   ) ;  
 	 	 	 s i g n S l o t N a m e s . P u s h B a c k (   ' S l o t 4 '   ) ;  
 	 	 	 s i g n S l o t N a m e s . P u s h B a c k (   ' S l o t 5 '   ) ;  
 	 	 	 ( ( W 3 P l a y e r W i t c h e r ) p a r e n t ) . E n a b l e R a d i a l S l o t s W i t h S o u r c e (   t r u e ,   s i g n S l o t N a m e s ,   ' t h r o w P r o j e c t i l e O n V e h i c l e '   ) ; 	  
 	 	 	 s i g n S l o t N a m e s . C l e a r ( ) ;  
 	 	  
 	 	 	 / /   m o d B e t t e r T o r c h e s N e x t G e n  
 	 	 	 / * i f   (   t h e P l a y e r . I s H o l d i n g I t e m I n L H a n d ( ) )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . H i d e U s a b l e I t e m ( t r u e ) ;  
 	 	 	 } * /  
 	 	 	 i f   (   ( W 3 H o r s e C o m p o n e n t ) v e h i c l e   )  
 	 	 	 {  
 	 	 	 	 s i g n S l o t N a m e s . P u s h B a c k ( ' Y r d e n ' ) ;  
 	 	 	 	 s i g n S l o t N a m e s . P u s h B a c k ( ' Q u e n ' ) ;  
 	 	 	 	 s i g n S l o t N a m e s . P u s h B a c k ( ' I g n i ' ) ;  
 	 	 	 	 s i g n S l o t N a m e s . P u s h B a c k ( ' A a r d ' ) ;  
 	 	 	 	 s i g n S l o t N a m e s . P u s h B a c k (   ' S l o t 4 '   ) ;  
 	 	 	 	 s i g n S l o t N a m e s . P u s h B a c k (   ' S l o t 5 '   ) ;  
 	 	 	 	 i f   (   t h e P l a y e r . G e t V e h i c l e C a c h e d S i g n ( )   = =   S T _ N o n e   )  
 	 	 	 	 	 t h e P l a y e r . S e t V e h i c l e C a c h e d S i g n (   ( ( W 3 P l a y e r W i t c h e r ) p a r e n t ) . G e t E q u i p p e d S i g n ( )   ) ;  
 	 	 	 	 ( ( W 3 P l a y e r W i t c h e r ) p a r e n t ) . S e t E q u i p p e d S i g n ( S T _ A x i i ) ;  
 	 	 	 	 ( ( W 3 P l a y e r W i t c h e r ) p a r e n t ) . E n a b l e R a d i a l S l o t s W i t h S o u r c e ( f a l s e , s i g n S l o t N a m e s ,   ' u s e V e h i c l e ' ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f   (   ( C B o a t C o m p o n e n t ) v e h i c l e   )  
 	 	 	 {  
 	 	 	 	 s i g n S l o t N a m e s . P u s h B a c k (   ' S l o t 1 '   ) ;  
 	 	 	 	 s i g n S l o t N a m e s . P u s h B a c k (   ' S l o t 2 '   ) ;  
 	 	 	 	 s i g n S l o t N a m e s . P u s h B a c k (   ' S l o t 4 '   ) ;  
 	 	 	 	 s i g n S l o t N a m e s . P u s h B a c k (   ' S l o t 5 '   ) ;  
 	 	 	 	 s i g n S l o t N a m e s . P u s h B a c k ( ' Y r d e n ' ) ;  
 	 	 	 	 s i g n S l o t N a m e s . P u s h B a c k ( ' Q u e n ' ) ;  
 	 	 	 	 s i g n S l o t N a m e s . P u s h B a c k ( ' I g n i ' ) ;  
 	 	 	 	 s i g n S l o t N a m e s . P u s h B a c k ( ' A a r d ' ) ;  
 	 	 	 	 s i g n S l o t N a m e s . P u s h B a c k ( ' A x i i ' ) ; 	  
 	 	 	 	  
 	 	 	 	 i f   (   t h e P l a y e r . G e t V e h i c l e C a c h e d S i g n ( )   = =   S T _ N o n e   )  
 	 	 	 	 	 t h e P l a y e r . S e t V e h i c l e C a c h e d S i g n (   ( ( W 3 P l a y e r W i t c h e r ) p a r e n t ) . G e t E q u i p p e d S i g n ( )   ) ;  
 	 	 	 	 ( ( W 3 P l a y e r W i t c h e r ) p a r e n t ) . S e l e c t Q u i c k s l o t I t e m (   E E S _ R a n g e d W e a p o n   ) ; 	  
 	 	 	 	 ( ( W 3 P l a y e r W i t c h e r ) p a r e n t ) . S e t E q u i p p e d S i g n ( S T _ N o n e ) ;  
 	 	 	 	 ( ( W 3 P l a y e r W i t c h e r ) p a r e n t ) . E n a b l e R a d i a l S l o t s W i t h S o u r c e ( f a l s e , s i g n S l o t N a m e s ,   ' u s e V e h i c l e ' ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n L e a v e S t a t e (   n e x t S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 i f   (   ( W 3 P l a y e r W i t c h e r ) p a r e n t   )  
 	 	 {  
 	 	 	 ( ( W 3 P l a y e r W i t c h e r ) p a r e n t ) . E n a b l e R a d i a l S l o t s W i t h S o u r c e ( t r u e , s i g n S l o t N a m e s ,   ' u s e V e h i c l e ' ) ;  
 	 	 	  
 	 	 	 i f   (   t h e P l a y e r . G e t V e h i c l e C a c h e d S i g n ( )   ! =   S T _ N o n e   )  
 	 	 	 	 ( ( W 3 P l a y e r W i t c h e r ) p a r e n t ) . S e t E q u i p p e d S i g n (   t h e P l a y e r . G e t V e h i c l e C a c h e d S i g n ( )   ) ;  
 	 	 }  
 	 	  
 	 	 s i g n S l o t N a m e s . C l e a r ( ) ;  
 	 	  
 	 	 i f   (   n e x t S t a t e N a m e   ! =   ' N o n e '   )  
 	 	 	 t h e P l a y e r . S e t V e h i c l e C a c h e d S i g n (   S T _ N o n e   ) ;  
 	 	  
 	 	 i f   (   n e x t S t a t e N a m e   ! =   ' D i s m o u n t H o r s e '   )  
 	 	 	 p a r e n t . O n R a n g e d F o r c e H o l s t e r (   t r u e ,   t r u e   ) ;  
 	 	 	  
 	 	 s u p e r . O n L e a v e S t a t e ( n e x t S t a t e N a m e ) ;  
 	 }  
 	  
 	 f i n a l   f u n c t i o n   S e t V e h i c l e (   v   :   C V e h i c l e C o m p o n e n t   )  
 	 {  
 	 	 v a r   v e h E n t   :   C G a m e p l a y E n t i t y ;  
 	 	  
 	 	 v e h i c l e   =   v ;  
 	 	  
 	 	 i f ( v e h i c l e )  
 	 	 {  
 	 	 	 v e h E n t   =   ( C G a m e p l a y E n t i t y ) v e h i c l e . G e t E n t i t y ( ) ;  
 	 	 	 v e h E n t . A d d T a g ( t h e G a m e . p a r a m s . T A G _ P L A Y E R S _ M O U N T E D _ V E H I C L E ) ;  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   D i s m o u n t V e h i c l e ( ) { }  
 	  
 	 f u n c t i o n   B e g i n S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 I n i t ( ) ;  
 	 }  
 	  
 	 f u n c t i o n   C o n t i n u e d S t a t e ( )  
 	 {  
 	 	 v a r   p o s   :   V e c t o r ;  
 	 	  
 	 	 p o s   =   p a r e n t . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 v e h i c l e . G e t E n t i t y ( ) . T e l e p o r t (   p o s   ) ;  
 	 	  
 	 	 v e h i c l e . M o u n t (   p a r e n t ,   V M T _ I m m e d i a t e U s e ,   E V S _ d r i v e r _ s l o t   ) ;  
 	 }  
  
 	 f u n c t i o n   E n d S t a t e (   n e x t S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 v a r   v e h E n t   :   C G a m e p l a y E n t i t y ;  
 	 	  
 	 	 D e t a c h F r o m V e h i c l e ( ) ;  
 	 	  
 	 	 v e h E n t   =   ( C G a m e p l a y E n t i t y ) v e h i c l e . G e t E n t i t y ( ) ;  
 	 	 v e h E n t . R e m o v e T a g ( t h e G a m e . p a r a m s . T A G _ P L A Y E R S _ M O U N T E D _ V E H I C L E ) ;  
 	 	 v e h i c l e   =   N U L L ; 	 	  
 	 }  
  
 	 p r o t e c t e d   f u n c t i o n   I n i t ( )   { }  
 	  
 	 p r o t e c t e d   f i n a l   f u n c t i o n   D e t a c h F r o m V e h i c l e ( )  
 	 {  
 	 	 p a r e n t . B r e a k A t t a c h m e n t ( ) ;  
 	 }  
 	  
 	 f u n c t i o n   C a n A c c e s F a s t T r a v e l (   t a r g e t   :   W 3 F a s t T r a v e l E n t i t y   )   :   b o o l  
 	 {  
 	 	 i f   (   v e h i c l e   )  
 	 	 {  
 	 	 	 r e t u r n   v e h i c l e . C a n A c c e s F a s t T r a v e l (   t a r g e t   ) ;  
 	 	 }  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 e v e n t   O n P l a y e r T i c k T i m e r (   d e l t a T i m e   :   f l o a t   )  
 	 {  
 	 	 v a r   r i g h t S t i c k V e c t o r 	 :   V e c t o r ;  
 	 	 v a r   r i g h t S t i c k L e n g t h 	 :   f l o a t ;  
 	 	  
 	 	 / /   m o d B e t t e r T o r c h e s N e x t G e n  
 	 	 / * i f   (   t h e P l a y e r . I s H o l d i n g I t e m I n L H a n d ( ) )  
 	 	 {  
 	 	 	 t h e P l a y e r . H i d e U s a b l e I t e m ( t r u e ) ;  
 	 	 } * /  
 	 	 i f   (   p a r e n t . I s H a r d L o c k E n a b l e d ( )   )  
 	 	 {  
 	 	 	 i f   (   p a r e n t . I s P C M o d e E n a b l e d ( )   )  
 	 	 	 {  
 	 	 	 	 r i g h t S t i c k V e c t o r . X   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ M o u s e D a m p X '   ) ;    
 	 	 	 	 r i g h t S t i c k V e c t o r . Y   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ M o u s e D a m p Y '   ) ;   	 	 	  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 r i g h t S t i c k V e c t o r . X   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s R i g h t X '   ) ;    
 	 	 	 	 r i g h t S t i c k V e c t o r . Y   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s R i g h t Y '   ) ;    
 	 	 	 }  
    
 	 	 	 r i g h t S t i c k L e n g t h   =   V e c L e n g t h (   r i g h t S t i c k V e c t o r   ) ;  
 	 	 	  
 	 	 	 i f   (   r i g h t S t i c k L e n g t h   >   0   )  
 	 	 	 	 p a r e n t . b R A x i s R e l e a s e d   =   f a l s e ;  
 	 	 	 e l s e  
 	 	 	 	 p a r e n t . b R A x i s R e l e a s e d   =   t r u e ; 	 	 	  
 	 	 	 	  
 	 	 	 i f   (   ! p a r e n t . P r o c e s s L o c k T a r g e t S e l e c t i o n I n p u t (   r i g h t S t i c k V e c t o r ,   r i g h t S t i c k L e n g t h   )   )  
 	 	 	 	 p a r e n t . P r o c e s s L o c k T a r g e t S e l e c t i o n I n p u t (   r i g h t S t i c k V e c t o r ,   r i g h t S t i c k L e n g t h   ) ;  
 	 	 	  
 	 	 	 i f   (   r i g h t S t i c k L e n g t h   > =   0 . 3   )  
 	 	 	 	 F i n d T a r g e t ( ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 F i n d T a r g e t ( ) ;  
 	 	 }  
 	 	 	  
 	 	  
 	 }  
 	  
 	 e v e n t   O n H i t S t a r t ( )  
 	 {  
 	 	 p a r e n t . S e t I s I n H i t A n i m (   t r u e   ) ;  
 	 	 v e h i c l e . G e t U s e r C o m b a t M a n a g e r ( ) . O n H i t S t a r t ( ) ;  
 	 }  
 	  
 	 e v e n t   O n H i t E n d ( )  
 	 {  
 	 	 p a r e n t . S e t I s I n H i t A n i m (   f a l s e   ) ;  
 	 } 	  
 	  
 	 e v e n t   O n C o m b a t A c t i o n E n d ( )  
 	 {  
 	 	 v e h i c l e . G e t U s e r C o m b a t M a n a g e r ( ) . O n C o m b a t A c t i o n E n d ( ) ;  
 	 	 r e t u r n   p a r e n t . O n C o m b a t A c t i o n E n d ( ) ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   S h o u l d E n a b l e B o a t M u s i c ( )  
 	 {  
 	 	 i f   (   p a r e n t . S h o u l d E n a b l e C o m b a t M u s i c ( )   )  
 	 	 	 t h e S o u n d . L e a v e G a m e S t a t e ( E S G S _ B o a t ) ;  
 	 	 e l s e  
 	 	 	 t h e S o u n d . E n t e r G a m e S t a t e ( E S G S _ B o a t ) ; 	 	  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	 f u n c t i o n   F i n d T a r g e t ( )  
 	 {  
 	 	 v a r   i ,   s i z e   :   i n t ;  
 	 	 v a r   t a r g e t s   :   a r r a y < C A c t o r > ;  
 	 	 v a r   t h e C h o s e n O n e   :   C A c t o r ;  
 	 	 v a r   s e l e c t i o n W e i g h t s   :   S T a r g e t S e l e c t i o n W e i g h t s ;  
 	 	 v a r   f l y i n g N P C s   :   b o o l ;  
 	 	 v a r   t a r g e t i n g I n f o 	 	 :   S T a r g e t i n g I n f o ;  
 	 	 v a r   h u d   	 	 	 	 :   C R 4 S c r i p t e d H u d ; 	 	  
 	 	 v a r   p l a y e r P o s i t i o n 	 	 :   V e c t o r ;  
 	 	 v a r   c a m e r a P o s i t i o n 	 	 :   V e c t o r ;  
 	 	 v a r   c a m e r a D i r e c t i o n 	 	 :   V e c t o r ;  
  
 	 	  
 	 	 t a r g e t s   =   p a r e n t . G e t M o v e T a r g e t s ( ) ;  
  
 	 	 t a r g e t i n g I n f o . s o u r c e   	 	 	 	 =   p a r e n t ;  
 	 	 t a r g e t i n g I n f o . c a n B e T a r g e t e d C h e c k 	 =   t r u e ;  
 	 	 t a r g e t i n g I n f o . c o n e C h e c k   	 	 	 =   f a l s e ;  
 	 	 t a r g e t i n g I n f o . c o n e H a l f A n g l e C o s 	 	 =   1 . 0 f ;  
 	 	 t a r g e t i n g I n f o . c o n e D i s t 	 	 	 	 =   p a r e n t . s o f t L o c k D i s t V e h i c l e ;  
 	 	 t a r g e t i n g I n f o . c o n e H e a d i n g V e c t o r 	 	 =   V e c t o r (   0 . 0 f ,   1 . 0 f ,   0 . 0 f   ) ;  
 	 	 t a r g e t i n g I n f o . d i s t C h e c k 	 	 	 	 =   t r u e ;  
 	 	 t a r g e t i n g I n f o . i n v i s i b l e C h e c k 	 	 =   t r u e ;  
 	 	 t a r g e t i n g I n f o . n a v M e s h C h e c k 	 	 	 =   f a l s e ;    
 	 	 t a r g e t i n g I n f o . i n F r a m e C h e c k   	 	 	 =   t r u e ;    
 	 	 t a r g e t i n g I n f o . f r a m e S c a l e X   	 	 	 =   1 . 0 f ;    
 	 	 t a r g e t i n g I n f o . f r a m e S c a l e Y   	 	 	 =   1 . 0 f ;    
 	 	 t a r g e t i n g I n f o . k n o c k D o w n C h e c k   	 	 =   f a l s e ;    
 	 	 t a r g e t i n g I n f o . k n o c k D o w n C h e c k D i s t   	 =   1 . 5 f ;    
 	 	 t a r g e t i n g I n f o . r s H e a d i n g C h e c k   	 	 =   f a l s e ;  
 	 	 t a r g e t i n g I n f o . r s H e a d i n g L i m i t C o s   	 =   1 . 0 f ;  
 	 	  
 	 	 f o r (   i   =   0 ;   i   <   t a r g e t s . S i z e ( ) ;   i   + =   1   )  
 	 	 {  
 	 	 	 t a r g e t i n g I n f o . t a r g e t E n t i t y   	 	 	 =   t a r g e t s [ i ] ; 	 	  
 	 	 	 i f   (   ! p a r e n t . I s E n t i t y T a r g e t a b l e (   t a r g e t i n g I n f o   )   | |   ! p a r e n t . C a n B e T a r g e t e d I f S w i m m i n g (   t a r g e t s [ i ]   )   )  
 	 	 	 {  
 	 	 	 	 t a r g e t s . E r a s e ( i ) ;  
 	 	 	 	 i   - =   1 ;  
 	 	 	 }  
 	 	 	 e l s e   i f   (   (   ( C N e w N P C ) t a r g e t s [ i ]   ) . G e t C u r r e n t S t a n c e ( )   = =   N S _ F l y   )  
 	 	 	 	 f l y i n g N P C s   =   t r u e ;  
 	 	 } 	 	 	  
  
 	 	 i f (   ! f l y i n g N P C s   )  
 	 	 {  
 	 	 	 t a r g e t i n g I n f o . s o u r c e   	 	 	 	 =   p a r e n t ;  
 	 	 	 t a r g e t i n g I n f o . c a n B e T a r g e t e d C h e c k 	 =   t r u e ;  
 	 	 	 t a r g e t i n g I n f o . c o n e C h e c k   	 	 	 =   f a l s e ;  
 	 	 	 t a r g e t i n g I n f o . c o n e H a l f A n g l e C o s 	 	 =   1 . 0 f ;  
 	 	 	 t a r g e t i n g I n f o . c o n e D i s t 	 	 	 	 =   t h e P l a y e r . f i n d M o v e T a r g e t D i s t M a x   +   7 . f ;  
 	 	 	 t a r g e t i n g I n f o . c o n e H e a d i n g V e c t o r 	 	 =   V e c t o r (   0 . 0 f ,   1 . 0 f ,   0 . 0 f   ) ;  
 	 	 	 i f   (   p a r e n t . p l a y e r A i m i n g . G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m i n g '   )  
 	 	 	 	 t a r g e t i n g I n f o . d i s t C h e c k 	 	 	 	 =   f a l s e ;  
 	 	 	 e l s e  
 	 	 	 	 t a r g e t i n g I n f o . d i s t C h e c k 	 	 	 	 =   t r u e ;  
 	 	 	 t a r g e t i n g I n f o . i n v i s i b l e C h e c k 	 	 =   f a l s e ;  
 	 	 	 t a r g e t i n g I n f o . n a v M e s h C h e c k 	 	 	 =   f a l s e ;    
 	 	 	 t a r g e t i n g I n f o . i n F r a m e C h e c k   	 	 	 =   f a l s e ;    
 	 	 	 t a r g e t i n g I n f o . f r a m e S c a l e X   	 	 	 =   0 . 6 f ;    
 	 	 	 t a r g e t i n g I n f o . f r a m e S c a l e Y   	 	 	 =   1 . f ;    
 	 	 	 t a r g e t i n g I n f o . k n o c k D o w n C h e c k   	 	 =   f a l s e ;    
 	 	 	 t a r g e t i n g I n f o . k n o c k D o w n C h e c k D i s t   	 =   1 . 5 f ;    
 	 	 	 t a r g e t i n g I n f o . r s H e a d i n g C h e c k   	 	 =   f a l s e ;  
 	 	 	 t a r g e t i n g I n f o . r s H e a d i n g L i m i t C o s 	 	 =   1 . 0 f ; 	 	  
 	 	  
 	 	 	 f o r (   i   =   0 ;   i   <   t a r g e t s . S i z e ( ) ;   i   + =   1   )  
 	 	 	 {  
 	 	 	 	 t a r g e t i n g I n f o . t a r g e t E n t i t y   	 	 	 =   t a r g e t s [ i ] ;  
 	 	 	 	 i f   (   ! p a r e n t . I s E n t i t y T a r g e t a b l e (   t a r g e t i n g I n f o   )   )  
 	 	 	 	 {  
 	 	 	 	 	 t a r g e t s . E r a s e ( i ) ;  
 	 	 	 	 	 i   - =   1 ;  
 	 	 	 	 }  
 	 	 	 } 	 	 	  
 	 	 }  
  
 	 	 p l a y e r P o s i t i o n   =   t h e P l a y e r . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 c a m e r a P o s i t i o n   =   t h e C a m e r a . G e t C a m e r a P o s i t i o n ( ) ;  
 	 	 c a m e r a D i r e c t i o n   =   t h e C a m e r a . G e t C a m e r a D i r e c t i o n ( ) ;  
 	 	 s i z e   =   t a r g e t s . S i z e ( ) ;  
 	 	  
 	 	 i f (   s i z e   >   0   & &   p a r e n t . I s T h r e a t e n e d ( )   )  
 	 	 {  
 	 	 	 (   ( C A c t o r ) ( v e h i c l e . G e t E n t i t y ( ) )   ) . S i g n a l G a m e p l a y E v e n t (   ' R i d e r C o m b a t T a r g e t U p d a t e d '   ) ;  
 	 	 	  
 	 	 	 i f   (   p a r e n t . p l a y e r A i m i n g . G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m i n g '   )  
 	 	 	 {  
 	 	 	 	 t h e C h o s e n O n e   =   p a r e n t . p l a y e r A i m i n g . G e t A i m e d T a r g e t ( ) ;  
 	 	 	 	  
 	 	 	 	 i f   (   ! t h e C h o s e n O n e   )  
 	 	 	 	 {  
 	 	 	 	 	 s e l e c t i o n W e i g h t s . a n g l e W e i g h t   =   1 . f ;  
 	 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   =   0 . f ;  
 	 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   =   0 . f ;  
 	 	 	 	 	  
 	 	 	 	 	 t h e C h o s e n O n e   =   p a r e n t . S e l e c t T a r g e t (   t a r g e t s ,   f a l s e ,   c a m e r a P o s i t i o n ,   c a m e r a D i r e c t i o n ,   s e l e c t i o n W e i g h t s   ) ; 	 	 	 	 	  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   i f   (   ( W 3 B o a t ) (   p a r e n t . G e t U s e d V e h i c l e ( )   )   )  
 	 	 	 {  
 	 	 	 	 s e l e c t i o n W e i g h t s . a n g l e W e i g h t   =   1 . 0 f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   =   0 . 0 f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   =   0 . f ;  
 	 	 	 	  
 	 	 	 	 t h e C h o s e n O n e   =   p a r e n t . S e l e c t T a r g e t (   t a r g e t s ,   f a l s e ,   c a m e r a P o s i t i o n ,   c a m e r a D i r e c t i o n ,   s e l e c t i o n W e i g h t s   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 s e l e c t i o n W e i g h t s . a n g l e W e i g h t   =   0 . 0 f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   =   1 . 0 f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   =   0 . f ; 	  
  
 	 	 	 	 t h e C h o s e n O n e   =   p a r e n t . S e l e c t T a r g e t (   t a r g e t s ,   f a l s e ,   p l a y e r P o s i t i o n ,   c a m e r a D i r e c t i o n ,   s e l e c t i o n W e i g h t s   ) ; 	 	  
 	 	 	 }  
 	 	 }  
  
 	 	 i f   (   p a r e n t . G e t D i s p l a y T a r g e t ( )    
 	 	 	 & &   p a r e n t . r a n g e d W e a p o n    
 	 	 	 & &   p a r e n t . r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n S h o o t '    
 	 	 	 & &   ! p a r e n t . r a n g e d W e a p o n . I s S h o o t i n g C o m p l e t e ( )  
 	 	 	 & &   p a r e n t . p l a y e r A i m i n g . G e t C u r r e n t S t a t e N a m e ( )   = =   ' W a i t i n g '   )  
 	 	 {  
 	 	 	 t h e C h o s e n O n e   = =   p a r e n t . G e t D i s p l a y T a r g e t ( ) ;  
 	 	 }  
 	 	  
 	 	 i f (   (   p a r e n t . G e t B I s C o m b a t A c t i o n A l l o w e d ( )   | |   ! p a r e n t . G e t D i s p l a y T a r g e t ( )   )    
 	 	 	  
 	 	 	 & &   ! p a r e n t . I s A c t o r L o c k e d T o T a r g e t ( )   )  
 	 	 {    
 	 	 	 p a r e n t . s l i d e T a r g e t   =   t h e C h o s e n O n e ;  
 	 	 	 p a r e n t . m o v e T a r g e t   =   t h e C h o s e n O n e ;  
 	 	 	  
 	 	 	 p a r e n t . S e t D i s p l a y T a r g e t (   t h e C h o s e n O n e   ) ;  
 	 	 	 p a r e n t . S e t T a r g e t (   t h e C h o s e n O n e   ) ;  
 	 	 }  
 	 }  
  
 	 p r o t e c t e d   v a r   f o v V e l   :   f l o a t ;  
 	 e v e n t   O n G a m e C a m e r a P o s t T i c k (   o u t   m o v e D a t a   :   S C a m e r a M o v e m e n t D a t a ,   d t   :   f l o a t   )  
 	 {  
 	 	 v a r   p l a y e r T o T a r g e t V e c t o r 	 :   V e c t o r ;  
 	 	 v a r   p l a y e r T o T a r g e t A n g l e s 	 :   E u l e r A n g l e s ;    
 	 	 v a r   p l a y e r T o T a r g e t D i s t 	 	 :   f l o a t ;  
 	 	 v a r   p l a y e r T o T a r g e t P i t c h 	 	 :   f l o a t ;  
 	 	 v a r   p i t c h 	 	 	 	 	 :   f l o a t ;  
 	 	 v a r   o f f s e t 	 	 	 	 	 :   f l o a t ;  
 	 	 v a r   d i s t a n c e 	 	 	 	 :   f l o a t ; 	  
 	 	 v a r   t h r o w n E n t i t y 	 	 :   C T h r o w a b l e ;  
 	 	  
 	 	 t h r o w n E n t i t y   =   ( C T h r o w a b l e ) E n t i t y H a n d l e G e t (   p a r e n t . t h r o w n E n t i t y H a n d l e   ) ;  
 	 	 c a m e r a   =   t h e G a m e . G e t G a m e C a m e r a ( ) ;  
 	 	  
 	 	 i f   (   ! c a m e r a   )  
 	 	 	 r e t u r n   t r u e ;  
  
 	 	 i f   (   (   p a r e n t . r a n g e d W e a p o n   | |   t h r o w n E n t i t y   )    
 	 	 	 & &   (   p a r e n t . p l a y e r A i m i n g . G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m i n g '   | |   p a r e n t . v e h i c l e C b t M g r A i m i n g   )   )  
 	 	 	 r e t u r n   t r u e ;    
 	 	  
 	 	 i f   (   p a r e n t . I s C a m e r a L o c k e d T o T a r g e t ( )   )  
 	 	 {  
 	 	 	 D a m p F l o a t S p r i n g (   c a m e r a . f o v ,   f o v V e l ,   6 0 . 0 ,   1 . 0 ,   d t   ) ;  
 	 	 	 p l a y e r T o T a r g e t V e c t o r   =   p a r e n t . G e t D i s p l a y T a r g e t ( ) . G e t W o r l d P o s i t i o n ( )   -   p a r e n t . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 p l a y e r T o T a r g e t D i s t   =   V e c L e n g t h (   p l a y e r T o T a r g e t V e c t o r   ) ;  
 	 	 	  
 	 	 	 i f   (   p a r e n t . I s O n B o a t ( )   )  
 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d H e a d i n g (   V e c H e a d i n g (   p l a y e r T o T a r g e t V e c t o r   ) ,   1 . f   ) ;  
 	 	 	 e l s e  
 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d H e a d i n g (   V e c H e a d i n g (   p l a y e r T o T a r g e t V e c t o r   ) ,   0 . 5 f   ) ;  
 	 	 	  
 	 	 	 i f   (   A b s F (   p l a y e r T o T a r g e t V e c t o r . Z   )   < =   1 . f   )  
 	 	 	 {  
 	 	 	 	 o f f s e t   =   C l a m p F (   (   p l a y e r T o T a r g e t D i s t   *   (   0 . 0 6 f )   )   +   2 . 2 f ,   2 . 2 f ,   2 . 5 f   ) ;  
 	 	 	 	 p i t c h   =   C l a m p F (   (   p l a y e r T o T a r g e t D i s t   *   (   - 2 . f )   )   +   3 0 . f ,   1 0 . f ,   3 0 . f   ) ;  
 	 	 	 	  
 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d P i t c h (   - p i t c h ,   0 . 5 f   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 p l a y e r T o T a r g e t A n g l e s   =   V e c T o R o t a t i o n (   p l a y e r T o T a r g e t V e c t o r   ) ;  
 	 	 	 	 p l a y e r T o T a r g e t P i t c h   =   C l a m p F (   p l a y e r T o T a r g e t A n g l e s . P i t c h   +   2 0 ,   - 4 5 ,   5 0   ) ; 	 	 	  
 	 	 	 	 o f f s e t   =   C l a m p F (   (   p l a y e r T o T a r g e t P i t c h   *   (   - 0 . 0 2 3 f )   )   +   2 . 5 f ,   2 . 5 f ,   3 . 2 f   ) ;  
 	 	 	 	  
 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d P i t c h (   p l a y e r T o T a r g e t P i t c h   *   - 1 ,   0 . 5 f   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 m o v e D a t a . p i v o t P o s i t i o n C o n t r o l l e r . o f f s e t Z   =   o f f s e t ;  
 	 	 	  
 	 	 	 p a r e n t . O n G a m e C a m e r a P o s t T i c k (   m o v e D a t a ,   d t   ) ;  
 	 	 	 r e t u r n   t r u e ; 	 	 	  
 	 	 }  
 	 } 	  
 }  
  
  
  
  
  
 e n u m   E V e h i c l e C o m b a t A c t i o n  
 {  
 	 E H C A _ S h o o t C r o s s b o w ,  
 	 E H C A _ T h r o w B o m b ,  
 	 E H C A _ C a s t S i g n ,  
 	 E H C A _ A t t a c k  
 }  
  
 s t a t e m a c h i n e   c l a s s   W 3 V e h i c l e C o m b a t M a n a g e r   e x t e n d s   C E n t i t y  
 {  
 	 p r o t e c t e d   v a r   r i d e r   :   C R 4 P l a y e r ;  
 	 p r o t e c t e d   v a r   v e h i c l e   :   C V e h i c l e C o m p o n e n t ;  
 	 p r o t e c t e d   v a r   i s I n C o m b a t A c t i o n   :   b o o l ;  
 	  
 	 p r o t e c t e d   v a r   w a s B o m b R e l e a s e d 	 :   b o o l ;    
 	  
 	 d e f a u l t   a u t o S t a t e   =   ' N u l l ' ;  
 	  
 	 p u b l i c   f u n c t i o n   S e t u p (   p l a y e r   :   C R 4 P l a y e r ,   _ v e h i c l e   :   C V e h i c l e C o m p o n e n t   )  
 	 {  
 	 	 r i d e r   =   p l a y e r ;  
 	 	 v e h i c l e   =   _ v e h i c l e ;  
 	 	  
 	 	 i f (   r i d e r   )  
 	 	 {  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n I t e m A c t i o n ' ,   ' V e h i c l e I t e m A c t i o n '   ) ;  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n I t e m A c t i o n H o l d ' ,   ' V e h i c l e I t e m A c t i o n H o l d '   ) ;  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n I t e m A c t i o n A b o r t ' ,   ' V e h i c l e I t e m A c t i o n A b o r t '   ) ;  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C a s t S i g n ' ,   ' V e h i c l e C a s t S i g n '   ) ;  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n A t t a c k ' ,   ' V e h i c l e A t t a c k '   ) ;  
 	 	 	  
 	 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n R G C H o r s e C a s t A x i i ' ,   ' R G C _ H o r s e C a s t A x i i '   ) ;  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n I t e m A c t i o n ' ,   ' R G C _ H o r s e C r o s s B o w '   ) ;  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n I t e m A c t i o n H o l d ' ,   ' R G C _ H o r s e C r o s s B o w H o l d '   ) ;  
 	 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s I n C o m b a t A c t i o n ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s I n C o m b a t A c t i o n ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s I n S w o r d A t t a c k C o m b a t A c t i o n ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   G e t C u r r e n t S t a t e N a m e ( )   = =   ' S w o r d A t t a c k ' ;  
 	 }  
 	  
 	 e v e n t   O n R a i s e S i g n E v e n t ( )   { }  
 	 e v e n t   O n G a m e C a m e r a T i c k (   o u t   m o v e D a t a   :   S C a m e r a M o v e m e n t D a t a ,   d t   :   f l o a t   )   {   r e t u r n   f a l s e ;   }  
 	 e v e n t   O n A i r B o r n ( )   { }  
 	 e v e n t   O n L a n d e d ( )   { }  
 	 e v e n t   O n P r o c e s s A n i m E v e n t (   a n i m E v e n t N a m e   :   n a m e   )   { }  
 	  
 	 e v e n t   O n I t e m A c t i o n A b o r t (   a c t i o n   :   S I n p u t A c t i o n   )   { }  
 	 e v e n t   O n F o r c e I t e m A c t i o n A b o r t ( ) { }  
 	  
 	 e v e n t   O n H o r s e A c t i o n S t a r t ( ) { }  
 	 e v e n t   O n H o r s e A c t i o n S t o p ( ) { }  
 	  
 	 e v e n t   O n M e l e e W e a p o n R e a d y ( ) { }  
 	 e v e n t   O n M e l e e W e a p o n N o t R e a d y ( ) { }  
 	  
 	 e v e n t   O n H i t S t a r t ( ) { }  
 	 e v e n t   O n C o m b a t A c t i o n E n d ( ) { }  
 	  
 	 e v e n t   O n M o u n t F i n i s h e d ( )  
 	 {  
 	 }  
 	  
 	 e v e n t   O n D i s m o u n t S t a r t e d ( )  
 	 {  
 	 	 t h i s . G o t o S t a t e A u t o ( ) ;  
 	 }  
 	  
 	 e v e n t   O n D r a w W e a p o n R e q u e s t ( ) { }  
 }  
  
  
  
  
  
 s t a t e   N u l l   i n   W 3 V e h i c l e C o m b a t M a n a g e r  
 {  
 	 v a r   r i d e r   :   C R 4 P l a y e r ;  
 	 v a r   h o r s e C o m p   :   W 3 H o r s e C o m p o n e n t ;  
 	  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 r i d e r   =   p a r e n t . r i d e r ;  
 	 	 r i d e r . v e h i c l e C b t M g r A i m i n g   =   f a l s e ;  
 	 	 r i d e r . p l a y e r A i m i n g . S t o p A i m i n g ( ) ;  
 	 	  
 	 	 i f   (   p a r e n t . i s I n C o m b a t A c t i o n   )  
 	 	 {  
 	 	 	 r i d e r . O n C o m b a t A c t i o n E n d ( ) ;  
 	 	 	 p a r e n t . i s I n C o m b a t A c t i o n   =   f a l s e ;  
 	 	 }  
 	 	  
 	 	 h o r s e C o m p   =   ( W 3 H o r s e C o m p o n e n t ) p a r e n t . v e h i c l e ;  
 	 	  
 	 	 r i d e r . U n b l o c k A c t i o n ( E I A B _ T h r o w B o m b ,   ' B o m b T h r o w '   ) ;  
 	 	 r i d e r . U n b l o c k A c t i o n ( E I A B _ C r o s s b o w ,   ' B o m b T h r o w ' ) ; 	  
 	 	 / /   m o d B e t t e r T o r c h e s N e x t G e n  
 	 	 r i d e r . U n b l o c k A c t i o n ( E I A B _ U s a b l e I t e m ,   ' U s a b l e I t e m ' ) ; 	  
  
 	 	 S h o u l d E n t e r N e x t S t a t e ( ) ;  
 	 }  
 	  
 	 e v e n t   O n L e a v e S t a t e (   n e x t S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 p a r e n t . i s I n C o m b a t A c t i o n   =   t r u e ;  
 	 }  
 	  
 	 e n t r y   f u n c t i o n   S h o u l d E n t e r N e x t S t a t e ( )  
 	 {  
 	 	 S l e e p O n e F r a m e ( ) ;    
 	 	  
 	 	 i f   (   h o r s e C o m p   & &   ! h o r s e C o m p . I s F u l l y M o u n t e d ( )   )  
 	 	 {  
 	 	 	 p a r e n t . G o t o S t a t e ( ' M o u n t i n g I n P r o g r e s s ' ) ;  
 	 	 }  
 	 	 e l s e   i f   (   h o r s e C o m p   & &   h o r s e C o m p . I s I n H o r s e A c t i o n ( )   )  
 	 	 {  
 	 	 	 p a r e n t . G o t o S t a t e ( ' H o r s e A c t i o n ' ) ;  
 	 	 }  
 	 	 e l s e   i f   (   ! r i d e r . G e t W e a p o n H o l s t e r ( ) . I s M e l e e W e a p o n R e a d y ( )   )  
 	 	 {  
 	 	 	 p a r e n t . G o t o S t a t e ( ' C h a n g e S w o r d S t a t e ' ) ;  
 	 	 }  
 	 	 e l s e   i f   (   t h e I n p u t . I s A c t i o n P r e s s e d ( ' V e h i c l e A t t a c k ' )   )  
 	 	 {  
 	 	 	 S t a r t A t t a c k A c t i o n ( ) ;  
 	 	 }  
 	 	 e l s e   i f   (   t h e I n p u t . I s A c t i o n P r e s s e d ( ' V e h i c l e I t e m A c t i o n ' )   )  
 	 	 {  
 	 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( ) )  
 	 	 	 {  
 	 	 	 	 S t a r t I t e m A c t i o n ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   (   t h e I n p u t . I s A c t i o n P r e s s e d ( ' R G C _ H o r s e C r o s s B o w ' )   )  
 	 	 {  
 	 	 	 S t a r t C r o s s B o w A c t i o n ( ) ;  
 	 	 }  
 	 	 e l s e   i f   (   t h e I n p u t . I s A c t i o n P r e s s e d ( ' R G C _ H o r s e C a s t A x i i ' )   )  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	 {  
 	 	 	 S t a r t C a s t S i g n A c t i o n ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n I t e m A c t i o n (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 { 	  
 	 	 v a r   i t e m I d ,   s e l e c t e d I t e m I d   :   S I t e m U n i q u e I d ;  
 	 	 v a r   p r o c e s s   :   b o o l ;  
 	  
 	 	 i f   (   h o r s e C o m p   & &   ! h o r s e C o m p . I s F u l l y M o u n t e d ( )   )  
 	 	 {  
 	 	 	 p a r e n t . G o t o S t a t e ( ' M o u n t i n g I n P r o g r e s s ' ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f   (   r i d e r . I s O n B o a t ( )   & &   r i d e r . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S a i l i n g '   & &   r i d e r . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S a i l i n g P a s s i v e '   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f ( r i d e r . I s I n A i r ( )   | |   r i d e r . G e t W e a p o n H o l s t e r ( ) . I s O n T h e M i d d l e O f H o l s t e r i n g ( ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 i t e m I d   =   r i d e r . G e t S e l e c t e d I t e m I d ( ) ;  
 	 	  
 	 	 i f ( ! r i d e r . i n v . I s I d V a l i d ( i t e m I d ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i f (   r i d e r . i n v . I s I t e m C r o s s b o w ( i t e m I d )   )  
 	 	 {  
 	 	 	 i f   (   r i d e r . I s A c t i o n A l l o w e d ( E I A B _ C r o s s b o w )   )  
 	 	 	 {  
 	 	 	 	 i f (   I s P r e s s e d ( a c t i o n ) )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   r i d e r . G e t B I s I n p u t A l l o w e d ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 p r o c e s s   =   t r u e ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   r i d e r . G e t I s A i m i n g C r o s s b o w ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 p r o c e s s   =   t r u e ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ U n d e f i n e d ,   ,   ,   t r u e ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 e l s e   i f (   r i d e r . i n v . I s I t e m B o m b ( i t e m I d )   )  
 	 	 {  
 	 	 	 i f ( ! r i d e r . I s A c t i o n A l l o w e d ( E I A B _ T h r o w B o m b )   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ U n d e f i n e d ,   ,   ,   t r u e ) ; 	 	 	 	  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	  
 	 	 	 i f (   r i d e r . i n v . S i n g l e t o n I t e m G e t A m m o ( i t e m I d )   = =   0   )  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 	 	  
 	 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 	 {  
 	 	 	 	 i f ( t h e P l a y e r . C a n S e t u p C o m b a t A c t i o n _ T h r o w ( )   & &   t h e I n p u t . G e t L a s t A c t i v a t i o n T i m e (   a c t i o n . a N a m e   )   <   0 . 3 f   ) 	  
 	 	 	 	 {  
 	 	 	 	 	 p r o c e s s   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 } 	 	 	  
 	 	 }  
 	  
 	 	 / /   m o d B e t t e r T o r c h e s N e x t G e n  
 	 	 p r o c e s s   =   t r u e ;  
 	 	 i f ( p r o c e s s   & &   I s P r e s s e d (   a c t i o n   )   )  
 	 	 {  
 	 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 	 i f ( t h e I n p u t . I s A c t i o n P r e s s e d ( ' V e h i c l e I t e m A c t i o n ' ) )  
 	 	 	 {  
 	 	 	 	 S t a r t I t e m A c t i o n ( ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( t h e I n p u t . I s A c t i o n P r e s s e d ( ' R G C _ H o r s e C r o s s B o w ' ) )  
 	 	 	 {  
 	 	 	 	 S t a r t C r o s s B o w A c t i o n ( ) ;  
 	 	 	 }  
 	 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C a s t S i g n (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 / / n o t   u s e d   i n   R G C  
 	 	 r e t u r n   f a l s e ;  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	  
 	 	 i f   (   h o r s e C o m p   & &   ! h o r s e C o m p . I s F u l l y M o u n t e d ( )   )  
 	 	 {  
 	 	 	 p a r e n t . G o t o S t a t e ( ' M o u n t i n g I n P r o g r e s s ' ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f (   I s P r e s s e d (   a c t i o n   )   )  
 	 	 {  
 	 	 	 S t a r t C a s t S i g n A c t i o n ( ) ;  
 	 	 }  
 	 }  
 	  
 	 / / m o d W 3 R e d u x R G C + +  
 	 e v e n t   O n R G C H o r s e C a s t A x i i (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f   (   h o r s e C o m p   & &   ! h o r s e C o m p . I s F u l l y M o u n t e d ( )   )  
 	 	 {  
 	 	 	 p a r e n t . G o t o S t a t e ( ' M o u n t i n g I n P r o g r e s s ' ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f   (   ! G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( )   )  
 	 	 {  
 	 	 	 / / o n l y   c a s t   a x i i   i f   i n   r e a l t i m e   c a s t   m o d e  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f (   I s P r e s s e d (   a c t i o n   )   )  
 	 	 {  
 	 	 	 S t a r t C a s t S i g n A c t i o n ( ) ;  
 	 	 }  
 	 }  
 	 / / m o d W 3 R e d u x R G C - -  
 	  
 	 e v e n t   O n A t t a c k (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f   (   h o r s e C o m p   & &   ! h o r s e C o m p . I s F u l l y M o u n t e d ( )   )  
 	 	 {  
 	 	 	 p a r e n t . G o t o S t a t e ( ' M o u n t i n g I n P r o g r e s s ' ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f (   I s P r e s s e d (   a c t i o n   )   )  
 	 	 {  
 	 	 	 S t a r t A t t a c k A c t i o n ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n A i r B o r n ( )  
 	 {  
 	 	 p a r e n t . G o t o S t a t e (   ' I n A i r '   ) ;  
 	 }  
 	  
 	 e v e n t   O n H o r s e A c t i o n S t a r t ( )  
 	 {  
 	 	 p a r e n t . G o t o S t a t e (   ' H o r s e A c t i o n '   ) ;  
 	 }  
 	  
 	 e v e n t   O n M e l e e W e a p o n N o t R e a d y ( )  
 	 {  
 	 	 p a r e n t . G o t o S t a t e ( ' C h a n g e S w o r d S t a t e ' ) ;  
 	 }  
 	  
 	 e v e n t   O n H i t S t a r t ( )  
 	 {  
 	 	 p a r e n t . G o t o S t a t e ( ' B e i n g H i t ' ) ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 f u n c t i o n   S t a r t I t e m A c t i o n ( )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( ) )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	 t h e P l a y e r . O n R a n g e d F o r c e H o l s t e r ( t r u e ,   t r u e ) ;  
 	 	 G e t W i t c h e r P l a y e r ( ) . S e l e c t Q u i c k s l o t I t e m ( G e t W i t c h e r P l a y e r ( ) . R G C _ G e t L a s t U s e d I t e m S l o t ( ) ) ;  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	  
 	 	 i f (   r i d e r . G e t I n v e n t o r y ( ) . I s I t e m B o m b (   r i d e r . G e t S e l e c t e d I t e m I d ( )   )   & &   r i d e r . i n v . S i n g l e t o n I t e m G e t A m m o (   r i d e r . G e t S e l e c t e d I t e m I d ( )   )   >   0   & &   r i d e r . I s A c t i o n A l l o w e d (   E I A B _ T h r o w B o m b   )   )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . I s H o l d i n g I t e m I n L H a n d ( )   )   t h e P l a y e r . H i d e U s a b l e I t e m ( t r u e ) ;  
 	 	 	 p a r e n t . G o t o S t a t e (   ' T h r o w B o m b '   ) ;  
 	 	 }  
 	 	 e l s e   i f (   r i d e r . G e t I n v e n t o r y ( ) . I s I t e m C r o s s b o w (   r i d e r . G e t S e l e c t e d I t e m I d ( )   )   & &   r i d e r . I s A c t i o n A l l o w e d (   E I A B _ C r o s s b o w   )   )  
 	 	 {  
 	 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 	 / / c r o s s b o w   i s   n o   l o n g e r   i t e m  
 	 	 	 r e t u r n ;  
 	 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	  
 	 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' a c t i o n T y p e ' ,   ( i n t ) E H C A _ S h o o t C r o s s b o w   ) ;  
 	 	 	 r i d e r . r a n g e d W e a p o n   =   (   C r o s s b o w   ) (   r i d e r . G e t I n v e n t o r y ( ) . G e t I t e m E n t i t y U n s a f e (   r i d e r . G e t S e l e c t e d I t e m I d ( )   )   ) ;  
 	 	 	 r i d e r . r a n g e d W e a p o n . O n R a n g e d W e a p o n P r e s s ( ) ;  
 	 	 	 r i d e r . B l o c k A c t i o n (   E I A B _ D i s m o u n t V e h i c l e ,   ' S h o o t i n g C r o s s b o w '   ) ;  
 	 	 	 r i d e r . B l o c k A c t i o n (   E I A B _ M o u n t V e h i c l e ,   ' S h o o t i n g C r o s s b o w '   ) ;  
 	 	 	 p a r e n t . G o t o S t a t e (   ' S h o o t C r o s s b o w '   ) ; 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e P l a y e r . O n U s e S e l e c t e d I t e m (   t r u e   ) ;  
 	 	 }  
 	 }  
 	  
 	 / / m o d W 3 R e d u x R G C + +  
 	 f u n c t i o n   S t a r t C r o s s B o w A c t i o n ( )  
 	 {  
 	 	 i f   (   t h e P l a y e r . I s H o l d i n g I t e m I n L H a n d ( )   )   t h e P l a y e r . H i d e U s a b l e I t e m ( t r u e ) ;  
 	 	 G e t W i t c h e r P l a y e r ( ) . S e l e c t Q u i c k s l o t I t e m ( E E S _ R a n g e d W e a p o n ) ;  
 	 	 i f (   r i d e r . G e t I n v e n t o r y ( ) . I s I t e m C r o s s b o w (   r i d e r . G e t S e l e c t e d I t e m I d ( )   )   & &   r i d e r . I s A c t i o n A l l o w e d (   E I A B _ C r o s s b o w   )   )  
 	 	 {  
 	 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' a c t i o n T y p e ' ,   ( i n t ) E H C A _ S h o o t C r o s s b o w   ) ;  
 	 	 	 r i d e r . r a n g e d W e a p o n   =   (   C r o s s b o w   ) (   r i d e r . G e t I n v e n t o r y ( ) . G e t I t e m E n t i t y U n s a f e (   r i d e r . G e t S e l e c t e d I t e m I d ( )   )   ) ;  
 	 	 	 r i d e r . r a n g e d W e a p o n . O n R a n g e d W e a p o n P r e s s ( ) ;  
 	 	 	 r i d e r . B l o c k A c t i o n (   E I A B _ D i s m o u n t V e h i c l e ,   ' S h o o t i n g C r o s s b o w '   ) ;  
 	 	 	 r i d e r . B l o c k A c t i o n (   E I A B _ M o u n t V e h i c l e ,   ' S h o o t i n g C r o s s b o w '   ) ;  
 	 	 	 p a r e n t . G o t o S t a t e (   ' S h o o t C r o s s b o w '   ) ; 	  
 	 	 }  
 	 }  
 	 / / m o d W 3 R e d u x R G C - -  
 	  
 	 f u n c t i o n   S t a r t C a s t S i g n A c t i o n ( )  
 	 {  
 	 	 p a r e n t . G o t o S t a t e (   ' C a s t S i g n '   ) ;  
 	 }  
 	  
 	 f u n c t i o n   S t a r t A t t a c k A c t i o n ( )  
 	 {  
 	 	 i f   (   r i d e r . G e t W e a p o n H o l s t e r ( ) . I s M e l e e W e a p o n R e a d y ( )   )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . I s W e a p o n H e l d (   ' s t e e l s w o r d '   )   | |   t h e P l a y e r . I s W e a p o n H e l d (   ' s i l v e r s w o r d '   ) )  
 	 	 	 {  
 	 	 	 	 p a r e n t . G o t o S t a t e (   ' S w o r d A t t a c k '   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 D r a w W e a p o n ( ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n D r a w W e a p o n R e q u e s t ( )  
 	 {  
 	 	 D r a w W e a p o n ( ) ;  
 	 }  
 	  
 	 f u n c t i o n   D r a w W e a p o n ( )  
 	 {  
 	 	 v a r     w e a p o n T y p e 	 :   E P l a y e r W e a p o n ;  
 	 	  
 	 	 i f   (   G e t W i t c h e r P l a y e r ( )   & &   r i d e r . I s A c t i o n A l l o w e d ( E I A B _ D r a w W e a p o n )   )  
 	 	 {  
 	 	 	 i f   (   r i d e r . G e t T a r g e t ( )   )  
 	 	 	 {  
 	 	 	 	 w e a p o n T y p e   =   r i d e r . G e t M o s t C o n v e n i e n t M e l e e W e a p o n (   r i d e r . G e t T a r g e t ( )   ) ;  
 	 	 	 	  
 	 	 	 	 i f   (   w e a p o n T y p e   = =   P W _ S i l v e r   & &   G e t W i t c h e r P l a y e r ( ) . I s I t e m E q u i p p e d B y C a t e g o r y N a m e (   ' s i l v e r s w o r d '   )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   r i d e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   ! =   P W _ S i l v e r   )  
 	 	 	 	 	 	 r i d e r . O n E q u i p M e l e e W e a p o n (   P W _ S i l v e r ,   f a l s e ,   f a l s e   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   G e t W i t c h e r P l a y e r ( ) . I s I t e m E q u i p p e d B y C a t e g o r y N a m e (   ' s t e e l s w o r d '   )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   r i d e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   ! =   P W _ S t e e l   )  
 	 	 	 	 	 	 r i d e r . O n E q u i p M e l e e W e a p o n (   P W _ S t e e l ,   f a l s e ,   f a l s e   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   i f   (   G e t W i t c h e r P l a y e r ( ) . I s I t e m E q u i p p e d B y C a t e g o r y N a m e (   ' s t e e l s w o r d '   )   )  
 	 	 	 {  
 	 	 	 	 i f   (   r i d e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   ! =   P W _ S t e e l   )  
 	 	 	 	 	 r i d e r . O n E q u i p M e l e e W e a p o n (   P W _ S t e e l ,   f a l s e ,   f a l s e   ) ;  
 	 	 	 }  
 	 	 	 e l s e     i f   (   G e t W i t c h e r P l a y e r ( ) . I s I t e m E q u i p p e d B y C a t e g o r y N a m e (   ' s i l v e r s w o r d '   )   )  
 	 	 	 {  
 	 	 	 	 i f   (   r i d e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   ! =   P W _ S i l v e r   )  
 	 	 	 	 	 r i d e r . O n E q u i p M e l e e W e a p o n (   P W _ S i l v e r ,   f a l s e ,   f a l s e   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   (   r i d e r . I s A c t i o n A l l o w e d ( E I A B _ D r a w W e a p o n )   )  
 	 	 {  
 	 	 	 i f   (   r i d e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   ! =   P W _ S t e e l   )  
 	 	 	 	 r i d e r . O n E q u i p M e l e e W e a p o n (   P W _ S t e e l ,   f a l s e ,   f a l s e   ) ;  
 	 	 }  
 	 }  
 }  
  
 s t a t e   M o u n t i n g I n P r o g r e s s   i n   W 3 V e h i c l e C o m b a t M a n a g e r  
 {  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 p a r e n t . i s I n C o m b a t A c t i o n   =   f a l s e ;  
 	 }  
 	  
 	 e v e n t   O n L e a v e S t a t e (   n e x S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 L o g ( " L e a v e M o u n t i n g I n P r o g r e s s " ) ;  
 	 }  
 	  
 	 e v e n t   O n M o u n t F i n i s h e d ( )  
 	 {  
 	 	 p a r e n t . P o p S t a t e ( t r u e ) ;  
 	 }  
 }  
  
 s t a t e   H o r s e A c t i o n   i n   W 3 V e h i c l e C o m b a t M a n a g e r  
 {  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 p a r e n t . i s I n C o m b a t A c t i o n   =   f a l s e ;  
 	 }  
 	  
 	 e v e n t   O n H o r s e A c t i o n S t o p ( )  
 	 {  
 	 	 p a r e n t . P o p S t a t e ( t r u e ) ;  
 	 }  
 }  
  
 s t a t e   C h a n g e S w o r d S t a t e   i n   W 3 V e h i c l e C o m b a t M a n a g e r  
 {  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 p a r e n t . i s I n C o m b a t A c t i o n   =   f a l s e ;  
 	 	 p a r e n t . r i d e r . S e t B e h a v i o r V a r i a b l e ( ' k e e p S p i n e U p r i g h t ' , 0 . f ) ;  
 	 }  
 	  
 	 e v e n t   O n L e a v e S t a t e (   n e x S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 p a r e n t . r i d e r . S e t B e h a v i o r V a r i a b l e ( ' k e e p S p i n e U p r i g h t ' , 1 . f ) ;  
 	 }  
 	  
 	 e v e n t   O n M e l e e W e a p o n R e a d y ( )  
 	 {  
 	 	 p a r e n t . P o p S t a t e ( t r u e ) ;  
 	 }  
 }  
  
 s t a t e   B e i n g H i t   i n   W 3 V e h i c l e C o m b a t M a n a g e r  
 {  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 p a r e n t . i s I n C o m b a t A c t i o n   =   t r u e ;  
 	 }  
 	  
 	 e v e n t   O n C o m b a t A c t i o n E n d ( )  
 	 {  
 	 	 p a r e n t . P o p S t a t e ( t r u e ) ;  
 	 }  
 }  
  
  
  
  
  
 s t a t e   I n A i r   i n   W 3 V e h i c l e C o m b a t M a n a g e r  
 {  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 p a r e n t . i s I n C o m b a t A c t i o n   =   f a l s e ;  
 	 }  
 	  
 	 e v e n t   O n L a n d e d ( )  
 	 {  
 	 	 p a r e n t . P o p S t a t e (   t r u e   ) ;  
 	 }  
 }  
  
  
  
  
  
 e n u m   H o r s e A t t a c k S i d e  
 {  
 	 H A S _ R i g h t ,  
 	 H A S _ L e f t  
 }  
  
 s t a t e   S w o r d A t t a c k   i n   W 3 V e h i c l e C o m b a t M a n a g e r  
 {  
 	 v a r   r i d e r   :   C R 4 P l a y e r ;  
 	  
 	 p r i v a t e   v a r   h o r i z o n t a l V a l   	 :   f l o a t ;  
 	  
 	 p r i v a t e   v a r   s p e e d M u l t C a s u s e r I d 	 :   i n t ;  
 	 p r i v a t e   v a r   s l o w M o S p e e d C u r r V a l ,   s l o w M o V e l o c i t y C u r r V a l   :   f l o a t ;  
 	 p r i v a t e   v a r   i s S l o w M o O n   :   b o o l ;  
  
 	 p r i v a t e   c o n s t   v a r   A T T A C K _ T I M E O U T   	 	 	 :   f l o a t ;  
 	 p r i v a t e   c o n s t   v a r   A T T A C K _ S T A M I N A _ P E R _ S E C   	 :   f l o a t ;  
 	 p r i v a t e   c o n s t   v a r   A T T A C K _ C O O L D O W N 	 :   f l o a t ; 	 d e f a u l t   A T T A C K _ C O O L D O W N   =   1 . f ;  
 	 p r i v a t e   c o n s t   v a r   C H A N G E _ S I D E _ T H R E S H O L D 	 :   f l o a t ; 	 d e f a u l t   C H A N G E _ S I D E _ T H R E S H O L D   =   0 . 0 2 f ;  
 	  
 	 d e f a u l t   s p e e d M u l t C a s u s e r I d   =   - 1 ;  
 	 d e f a u l t   A T T A C K _ T I M E O U T   =   1 0 . f ;    
 	 d e f a u l t   A T T A C K _ S T A M I N A _ P E R _ S E C   =   1 6 . f ;  
 	  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 p a r e n t . v e h i c l e . O n C o m b a t A c t i o n (   E H C A _ A t t a c k   ) ;  
 	 	  
 	 	 r i d e r   =   p a r e n t . r i d e r ;  
 	 	  
 	 	 r i d e r . A d d A b i l i t y (   ' F o r c e D i s m e m b e r m e n t '   ) ;  
 	 	 r i d e r . B l o c k A c t i o n (   E I A B _ D r a w W e a p o n ,   ' O n H o r s e C o m b a t A c t i o n '   ) ;  
 	 	  
 	 	 i f (   ( W 3 R e p l a c e r C i r i ) r i d e r   )  
 	 	 {  
 	 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' c i r i R e i n s N o O f f s e t ' ,   1 . 0 f ,   t r u e   ) ;  
 	 	 }  
 	 	  
 	 	 s l o w M o S p e e d C u r r V a l   =   1 . 0 ;  
 	 	 s l o w M o V e l o c i t y C u r r V a l   =   0 . 0 ;  
 	 	  
 	 	 I n i t A n d B e g i n S w o r d A t t a c k ( ) ;  
 	 }  
 	  
 	 e v e n t   O n L e a v e S t a t e (   n e x S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 a t t a c k I n P r o g r e s s   =   f a l s e ;  
 	 	  
 	 	 r i d e r . R e m o v e A b i l i t y (   ' F o r c e D i s m e m b e r m e n t '   ) ;  
 	 	 r i d e r . U n b l o c k A c t i o n (   E I A B _ D r a w W e a p o n ,   ' O n H o r s e C o m b a t A c t i o n '   ) ;  
 	 	  
 	 	 i f (   ( W 3 R e p l a c e r C i r i ) r i d e r   )  
 	 	 {  
 	 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' c i r i R e i n s N o O f f s e t ' ,   0 . 0 f ,   t r u e   ) ;  
 	 	 }  
 	 	  
 	 	 i f (   t h e P l a y e r . G e t H o r s e C o m b a t S l o w M o ( )   )  
 	 	 	 T u r n O f f S l o w M o ( ) ;  
 	 	  
 	 	 s u p e r . O n L e a v e S t a t e ( n e x S t a t e N a m e ) ;  
 	 }  
 	  
 	 p r i v a t e   v a r   a t t a c k I n P r o g r e s s   :   b o o l ;  
 	  
 	 e n t r y   f u n c t i o n   I n i t A n d B e g i n S w o r d A t t a c k ( )  
 	 {  
 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' a t t a c k R e l e a s e ' ,   0 . 0   ) ;  
 	 	  
 	 	 C h o o s e I n i t i a l O r i e n t a t i o n ( ) ;  
 	 	 B e g i n S w o r d A t t a c k ( ) ;  
 	 	 p a r e n t . P o p S t a t e (   t r u e   ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   C h o o s e I n i t i a l O r i e n t a t i o n ( )  
 	 {  
 	 	 v a r   h e a d i n g   :   f l o a t ;  
 	 	 v a r   r i d e r P o s ,   t a r g e t P o s   :   V e c t o r ;  
 	 	 v a r   t a r g e t   :   C A c t o r ;  
 	 	  
 	 	 r i d e r P o s   =   r i d e r . G e t W o r l d P o s i t i o n ( ) ;  
 	 	  
 	 	 t a r g e t   =   r i d e r . G e t T a r g e t ( ) ;  
 	 	  
 	 	 i f (   t a r g e t   )  
 	 	 {  
 	 	 	 t a r g e t P o s   =   t a r g e t . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 h e a d i n g   =   V e c H e a d i n g (   t a r g e t P o s   -   r i d e r P o s   ) ;  
 	 	 	 h o r i z o n t a l V a l   =   A n g l e D i s t a n c e (   r i d e r . G e t H e a d i n g ( ) ,   h e a d i n g   )   /   1 8 0 . f ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   (   R a n d R a n g e ( 1 0 0 )   >   5 0   )  
 	 	 	 	 h o r i z o n t a l V a l   =   1 ;  
 	 	 	 e l s e  
 	 	 	 	 h o r i z o n t a l V a l   =   - 1 ;  
 	 	 }  
 	 	  
 	 	 i f   (   h o r i z o n t a l V a l   >   C H A N G E _ S I D E _ T H R E S H O L D   )  
 	 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' a i m H o r i z o n t a l S w o r d ' ,   0 . f   ) ;  
 	 	 e l s e   i f   (   h o r i z o n t a l V a l   <   - C H A N G E _ S I D E _ T H R E S H O L D   )  
 	 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' a i m H o r i z o n t a l S w o r d ' ,   1 . f   ) ;  
 	 }  
 	  
 	 l a t e n t   f u n c t i o n   B e g i n S w o r d A t t a c k ( )  
 	 {  
 	 	 v a r   r e s   :   b o o l ;  
 	 	  
 	 	 i f (   r i d e r . G e t B e h a v i o r V a r i a b l e (   ' a c t i o n T y p e '   )   ! =   ( i n t ) E H C A _ A t t a c k   )  
 	 	 {  
 	 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' a c t i o n T y p e ' ,   ( i n t ) E H C A _ A t t a c k   ) ;  
 	 	 	 r i d e r . W a i t F o r B e h a v i o r N o d e A c t i v a t i o n (   ' a t t a c k A c t i o n O n ' ,   0 . 5 f   ) ;  
 	 	 }  
 	 	  
 	 	 r i d e r . R a i s e E v e n t (   ' a c t i o n S t a r t '   ) ;  
 	 	  
 	 	 r e s   =   r i d e r . W a i t F o r B e h a v i o r N o d e A c t i v a t i o n (   ' A c t i o n O n ' ,   0 . 5 f   ) ;  
 	 	 i f (   ! r e s   )  
 	 	 {  
 	 	 	 p a r e n t . P o p S t a t e (   t r u e   ) ;  
 	 	 }  
  
 	 	 i f (   t h e I n p u t . I s A c t i o n R e l e a s e d (   ' V e h i c l e A t t a c k '   )   )    
 	 	 {  
 	 	 	 C h o o s e A t t a c k H e i g h t ( ) ;  
 	 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' a t t a c k R e l e a s e ' ,   1 . 0   ) ;  
 	 	 	 a t t a c k I n P r o g r e s s   =   f a l s e ;  
 	 	 	 D o A t t a c k ( ) ;  
 	 	 	 r i d e r . W a i t F o r B e h a v i o r N o d e A c t i v a t i o n (   ' A c t i o n O f f ' ,   5 . 0   ) ;  
 	 	 	 p a r e n t . P o p S t a t e (   t r u e   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 a t t a c k I n P r o g r e s s   =   t r u e ;  
 	 	 	 A d j u s t O r i e n t a t i o n A n d M a i n t a i n T i m e o u t ( ) ;  
 	 	 }  
 	 }  
 	  
 	 l a t e n t   f u n c t i o n   A d j u s t O r i e n t a t i o n A n d M a i n t a i n T i m e o u t ( )  
 	 {  
 	 	 v a r   h e a d i n g   :   f l o a t ;  
 	 	 v a r   r i d e r P o s ,   t a r g e t P o s   :   V e c t o r ;  
 	 	 v a r   s t a r t T i m e S t a m p ,   f r a m e T i m e S t a m p   :   f l o a t ;  
 	 	 v a r   t a r g e t   :   C A c t o r ;  
 	 	  
 	 	 s t a r t T i m e S t a m p   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	 f r a m e T i m e S t a m p   =   s t a r t T i m e S t a m p ;  
 	 	  
 	 	 w h i l e (   s t a r t T i m e S t a m p   +   A T T A C K _ T I M E O U T   > =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( )   )  
 	 	 {  
 	 	 	 i f (   t h e P l a y e r . G e t H o r s e C o m b a t S l o w M o ( )   & &   S h o u l d A c t i v a t e S l o w M o ( )   )  
 	 	 	 {  
 	 	 	 	 i f (   s t a r t T i m e S t a m p   +   0 . 1   <   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( )   )  
 	 	 	 	 { 	  
 	 	 	 	 	 D a m p F l o a t S p r i n g (   s l o w M o S p e e d C u r r V a l ,   s l o w M o V e l o c i t y C u r r V a l ,   0 . 3 ,   0 . 1 ,   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( )   -   f r a m e T i m e S t a m p   ) ;  
 	 	 	 	 	 T u r n O n S l o w M o ( ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 T u r n O f f S l o w M o ( ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 r i d e r P o s   =   r i d e r . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	  
 	 	 	 t a r g e t   =   r i d e r . G e t T a r g e t ( ) ;  
 	 	 	  
 	 	 	 i f (   t a r g e t   )  
 	 	 	 { 	 	 	 	  
 	 	 	 	 t a r g e t . I s A t t a c k e d (   t r u e   ) ;  
 	 	 	 	 t a r g e t P o s   =   t a r g e t . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 	  
 	 	 	 	 h e a d i n g   =   V e c H e a d i n g (   t a r g e t P o s   -   r i d e r P o s   ) ;  
 	 	 	 	 h o r i z o n t a l V a l   =   A n g l e D i s t a n c e (   r i d e r . G e t H e a d i n g ( ) ,   h e a d i n g   )   /   1 8 0 . f ;  
 	 	 	 }  
 	 	 	  
 	 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' a i m H o r i z o n t a l ' ,   h o r i z o n t a l V a l   ) ;  
 	 	 	  
 	 	 	 i f   (   h o r i z o n t a l V a l   >   C H A N G E _ S I D E _ T H R E S H O L D   )  
 	 	 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' a i m H o r i z o n t a l S w o r d ' ,   0 . f   ) ;  
 	 	 	 e l s e   i f   (   h o r i z o n t a l V a l   <   - C H A N G E _ S I D E _ T H R E S H O L D   )  
 	 	 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' a i m H o r i z o n t a l S w o r d ' ,   1 . f   ) ;  
 	 	 	  
 	 	 	 f r a m e T i m e S t a m p   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	 	 S l e e p O n e F r a m e ( ) ;  
 	 	 }  
 	 	  
 	 	 A b o r t A t t a c k ( ) ;  
 	 }  
 	  
 	 e n t r y   f u n c t i o n   G o B a c k F r o m S l o w M o ( )  
 	 {  
 	 	 v a r   f r a m e T i m e S t a m p   :   f l o a t ;  
 	 	  
 	 	 s l o w M o V e l o c i t y C u r r V a l   =   0 . 0 ;  
 	 	 f r a m e T i m e S t a m p   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	  
 	 	 w h i l e (   t r u e   )  
 	 	 {  
 	 	 	 D a m p F l o a t S p r i n g (   s l o w M o S p e e d C u r r V a l ,   s l o w M o V e l o c i t y C u r r V a l ,   1 . 0 ,   0 . 0 5 ,   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( )   -   f r a m e T i m e S t a m p   ) ;  
 	 	 	 T u r n O n S l o w M o ( ) ;  
 	 	 	  
 	 	 	 f r a m e T i m e S t a m p   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	 	 S l e e p O n e F r a m e ( ) ;  
 	 	 	  
 	 	 	 i f (   s l o w M o S p e e d C u r r V a l   >   0 . 9 9   )  
 	 	 	 	 b r e a k ;  
 	 	 }  
 	 	  
 	 	 r i d e r . W a i t F o r B e h a v i o r N o d e A c t i v a t i o n (   ' A c t i o n O f f ' ,   1 . 0   ) ;  
 	 	 p a r e n t . P o p S t a t e (   t r u e   ) ;  
 	 }  
 	  
 	 e v e n t   O n A t t a c k (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s R e l e a s e d (   a c t i o n   )   & &   a t t a c k I n P r o g r e s s   & &   (   r i d e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ S t e e l   | |   r i d e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ S i l v e r   )   )  
 	 	 {  
 	 	 	 i f (   C a n P e r f o r m A t t a c k ( )   )  
 	 	 	 	 F i n i s h A t t a c k ( ) ;  
 	 	 	 e l s e  
 	 	 	 	 A b o r t A t t a c k ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n H o r s e A c t i o n S t a r t ( )  
 	 {  
 	 	 i f (   a t t a c k I n P r o g r e s s   )  
 	 	 	 A b o r t A t t a c k ( ) ;  
 	 }  
 	  
 	 e v e n t   O n H i t S t a r t ( )  
 	 {  
 	 	 i f (   a t t a c k I n P r o g r e s s   )  
 	 	 	 A b o r t A t t a c k ( ) ;  
 	 }  
 	  
 	 e v e n t   O n D i s m o u n t S t a r t e d ( )  
 	 {  
 	 	 i f (   a t t a c k I n P r o g r e s s   )  
 	 	 	 A b o r t A t t a c k ( ) ;  
 	 	 p a r e n t . O n D i s m o u n t S t a r t e d ( ) ;  
 	 }  
 	  
 	 e n t r y   f u n c t i o n   A b o r t A t t a c k ( )  
 	 {  
 	 	 a t t a c k I n P r o g r e s s   =   f a l s e ;  
 	 	  
 	 	 t h e I n p u t . F o r c e D e a c t i v a t e A c t i o n (   ' V e h i c l e A t t a c k '   ) ;  
 	 	  
 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' a t t a c k R e l e a s e ' ,   2 . 0   ) ;  
 	 	  
 	 	 i f (   t h e P l a y e r . G e t H o r s e C o m b a t S l o w M o ( )   & &   i s S l o w M o O n   )  
 	 	 {  
 	 	 	 G o B a c k F r o m S l o w M o ( ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r i d e r . W a i t F o r B e h a v i o r N o d e A c t i v a t i o n (   ' A c t i o n O f f ' ,   1 0 . 0   ) ;  
 	 	 	 p a r e n t . P o p S t a t e (   t r u e   ) ;  
 	 	 }  
 	 }  
 	  
 	 e n t r y   f u n c t i o n   F i n i s h A t t a c k ( )  
 	 {  
 	 	 C h o o s e A t t a c k H e i g h t ( ) ;  
 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' a t t a c k R e l e a s e ' ,   1 . 0   ) ;  
 	 	 i f (   r i d e r   = =   t h e P l a y e r   )  
 	 	 	 t h e P l a y e r . S e n d A t t a c k R e a c t i o n E v e n t ( ) ;  
 	 	 a t t a c k I n P r o g r e s s   =   f a l s e ;  
 	 	 D o A t t a c k ( ) ;  
 	 	 i f (   t h e P l a y e r . G e t H o r s e C o m b a t S l o w M o ( )   & &   i s S l o w M o O n   )  
 	 	 {  
 	 	 	 G o B a c k F r o m S l o w M o ( ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r i d e r . W a i t F o r B e h a v i o r N o d e A c t i v a t i o n (   ' A c t i o n O f f ' ,   5 . 0   ) ;  
 	 	 	 p a r e n t . P o p S t a t e (   t r u e   ) ;  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   C a n P e r f o r m A t t a c k ( )   :   b o o l  
 	 {  
 	 	 v a r   c u r r H o r i z o n t a l V a l 	 	 :   f l o a t ;  
 	 	 v a r   e n t i t i e s   	 	 	 	 :   a r r a y < C G a m e p l a y E n t i t y > ;  
 	 	 v a r   i   	 	 	 	 	 	 :   i n t ;  
 	 	 v a r   a c t o r 	 	 	 	 	 :   C A c t o r ;  
 	 	 v a r   n p c 	 	 	 	 	 	 :   C N e w N P C ;  
 	 	 v a r   h o r s e 	 	 	 	 	 :   C A c t o r ;  
 	 	 v a r   a n y H o s t i l e s I n R a n g e 	 	 :   b o o l ;  
 	 	 v a r   a n y F r i e n d l i e s I n R a n g e 	 :   b o o l ;  
 	 	 v a r   a t t i t u d e 	 	 	 	 :   E A I A t t i t u d e ;  
 	 	  
 	 	 c u r r H o r i z o n t a l V a l   =   r i d e r . G e t B e h a v i o r V a r i a b l e (   ' a i m H o r i z o n t a l '   ) ;  
 	 	  
 	 	 i f   (   c u r r H o r i z o n t a l V a l   > =   0   )  
 	 	 	 r i d e r . G a t h e r E n t i t i e s I n A t t a c k R a n g e ( e n t i t i e s , ' h o r s e _ r i g h t ' ) ;  
 	 	 e l s e  
 	 	 	 r i d e r . G a t h e r E n t i t i e s I n A t t a c k R a n g e ( e n t i t i e s , ' h o r s e _ l e f t ' ) ;  
 	 	  
 	 	 h o r s e   =   ( C A c t o r ) ( p a r e n t . v e h i c l e . G e t E n t i t y ( ) ) ;  
 	 	  
 	 	 i f   (   e n t i t i e s . S i z e ( )   >   0   )  
 	 	 {  
 	 	 	 f o r   (   i = 0   ;   i < e n t i t i e s . S i z e ( )   ;   i + = 1   )  
 	 	 	 {  
 	 	 	 	 a c t o r   =   ( C A c t o r ) e n t i t i e s [ i ] ;  
 	 	 	 	  
 	 	 	 	 i f   (   a c t o r   = =   r i d e r   | |   a c t o r   = =   h o r s e   )  
 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	  
 	 	 	 	 i f   (   a c t o r   )  
 	 	 	 	 {  
 	 	 	 	 	 a t t i t u d e   =   G e t A t t i t u d e B e t w e e n ( r i d e r , a c t o r ) ;  
 	 	 	 	 	 n p c   =   ( C N e w N P C ) a c t o r ;  
 	 	 	 	 	  
 	 	 	 	 	 i f (   n p c   & &   n p c . G e t N P C T y p e ( )   = =   E N G T _ G u a r d   & &   a t t i t u d e   ! =   A I A _ H o s t i l e   )  
 	 	 	 	 	 	 a n y F r i e n d l i e s I n R a n g e   =   t r u e ;  
 	 	 	 	 	 i f   (   a t t i t u d e   = =   A I A _ F r i e n d l y   )  
 	 	 	 	 	 	 a n y F r i e n d l i e s I n R a n g e   =   t r u e ;  
 	 	 	 	 	 e l s e   i f   (   a t t i t u d e   = =   A I A _ H o s t i l e   )  
 	 	 	 	 	 	 a n y H o s t i l e s I n R a n g e   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f   (   ! a n y F r i e n d l i e s I n R a n g e   | |   a n y H o s t i l e s I n R a n g e   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e  
 	 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 f u n c t i o n   C h o o s e A t t a c k H e i g h t ( )  
 	 {  
 	 	 v a r   v e r t i c a l V a l   :   f l o a t ;  
 	 	 v a r   r i d e r P o s ,   t a r g e t P o s   :   V e c t o r ;  
 	 	 v a r   t a r g e t   :   C A c t o r ;  
 	 	  
 	 	 r i d e r P o s   =   r i d e r . G e t W o r l d P o s i t i o n ( ) ;  
 	 	  
 	 	 t a r g e t   =   r i d e r . G e t T a r g e t ( ) ;  
 	 	  
 	 	 i f (   t a r g e t   )  
 	 	 {  
 	 	 	 t a r g e t P o s   =   t a r g e t . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	  
 	 	 	 i f (   t a r g e t . I s U s i n g H o r s e ( )   )  
 	 	 	 {  
 	 	 	 	 i f (   r i d e r P o s . Z   <   t a r g e t P o s . Z   +   0 . 3   )  
 	 	 	 	 {  
 	 	 	 	 	 v e r t i c a l V a l   =   1 . 0 ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 v e r t i c a l V a l   =   0 . 0 ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e    
 	 	 	 {  
 	 	 	 	 i f (   r i d e r P o s . Z   +   1 . 0   <   t a r g e t P o s . Z   )  
 	 	 	 	 {  
 	 	 	 	 	 v e r t i c a l V a l   =   1 . 0 ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 v e r t i c a l V a l   =   0 . 0 ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 v e r t i c a l V a l   =   0 . 0 ;  
 	 	 }  
 	 	  
 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' a i m V e r t i c a l ' ,   v e r t i c a l V a l   ) ;  
 	 }  
 	  
 	 c o n s t   v a r   F I R S T _ S W E E P _ D E L A Y   :   f l o a t ; 	 d e f a u l t   F I R S T _ S W E E P _ D E L A Y   =   0 . 4 ;  
 	 c o n s t   v a r   S E C O N D _ S W E E P _ D E L A Y   :   f l o a t ; 	 d e f a u l t   S E C O N D _ S W E E P _ D E L A Y   =   0 . 2 ;  
 	 c o n s t   v a r   B A S E _ D A M A G E   :   f l o a t ; 	 	 	 d e f a u l t   B A S E _ D A M A G E   =   5 0 . 0 ;  
 	  
 	 l a t e n t   f u n c t i o n   D o A t t a c k ( )  
 	 {  
 	 	 v a r   h o r s e   :   C N e w N P C ;  
 	 	 v a r   s p e e d   :   f l o a t ;  
 	 	 v a r   c u r r H o r i z o n t a l V a l   :   f l o a t ;  
 	 	 v a r   e n t i t i e s   :   a r r a y < C G a m e p l a y E n t i t y > ;  
 	 	 v a r   a t t a c k R a n g e s   :   a r r a y < n a m e > ;  
 	 	 v a r   r e s   :   b o o l ;  
 	 	  
 	 	 r e s   =   r i d e r . W a i t F o r B e h a v i o r N o d e A c t i v a t i o n (   ' H o r s e A t t a c k E n d S t a r t e d ' ,   0 . 5 f   ) ;  
 	 	 i f (   ! r e s   )  
 	 	 	 r e t u r n ;  
  
 	 	 h o r s e   =   ( C N e w N P C ) ( r i d e r . G e t U s e d V e h i c l e ( ) ) ;  
 	 	 s p e e d   =   h o r s e . G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t R e l a t i v e M o v e S p e e d ( ) ;  
 	 	 c u r r H o r i z o n t a l V a l   =   r i d e r . G e t B e h a v i o r V a r i a b l e (   ' a i m H o r i z o n t a l S w o r d '   ) ;  
 	 	 a t t a c k R a n g e s   =   F i l l A t t a c k R a n g e s A r r a y (   c u r r H o r i z o n t a l V a l   ) ;  
 	 	 e n t i t i e s . C l e a r ( ) ;  
 	 	  
 	 	 i f (   t h e P l a y e r . G e t H o r s e C o m b a t S l o w M o ( )   )  
 	 	 {  
 	 	 	 S l e e p (   0 . 1 2   ) ;  
 	 	 	 e n t i t i e s   =   G a t h e r E n t i t i e s I n A t t a c k R a n g e s (   s p e e d ,   a t t a c k R a n g e s   ) ;  
 	 	  
 	 	 	 i f (   e n t i t i e s . S i z e ( )   >   0   )  
 	 	 	 {  
 	 	 	 	 D e a l D a m a g e T o H o s t i l e s (   e n t i t i e s ,   s p e e d ,   B A S E _ D A M A G E   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 S l e e p (   F I R S T _ S W E E P _ D E L A Y   ) ;  
 	 	 	 e n t i t i e s   =   G a t h e r E n t i t i e s I n A t t a c k R a n g e s (   s p e e d ,   a t t a c k R a n g e s   ) ;  
 	 	  
 	 	 	 i f (   e n t i t i e s . S i z e ( )   >   0   )  
 	 	 	 {  
 	 	 	 	 D e a l D a m a g e T o H o s t i l e s (   e n t i t i e s ,   s p e e d ,   B A S E _ D A M A G E   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 S l e e p (   S E C O N D _ S W E E P _ D E L A Y   ) ;  
 	 	 	 	 e n t i t i e s   =   G a t h e r E n t i t i e s I n A t t a c k R a n g e s (   s p e e d ,   a t t a c k R a n g e s   ) ;  
 	 	 	 	  
 	 	 	 	 i f (   e n t i t i e s . S i z e ( )   >   0   )  
 	 	 	 	 {  
 	 	 	 	 	 D e a l D a m a g e T o H o s t i l e s (   e n t i t i e s ,   s p e e d ,   B A S E _ D A M A G E   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 p r i v a t e   f u n c t i o n   F i l l A t t a c k R a n g e s A r r a y (   h o r i z o n t a l V a l   :   f l o a t   )   :   a r r a y < n a m e >  
 	 {  
 	 	 v a r   a t t a c k R a n g e s   :   a r r a y < n a m e > ;  
 	 	  
 	 	 i f (   h o r i z o n t a l V a l   = =   0 . 0   )  
 	 	 {  
 	 	 	 a t t a c k R a n g e s . P u s h B a c k (   ' h o r s e _ r i g h t '   ) ;  
 	 	 	 a t t a c k R a n g e s . P u s h B a c k (   ' h o r s e _ r i g h t _ 1 '   ) ;  
 	 	 	 a t t a c k R a n g e s . P u s h B a c k (   ' h o r s e _ r i g h t _ 2 '   ) ;  
 	 	 }  
 	 	 e l s e   i f (   h o r i z o n t a l V a l   = =   1 . 0   )  
 	 	 {  
 	 	 	 a t t a c k R a n g e s . P u s h B a c k (   ' h o r s e _ l e f t '   ) ;  
 	 	 	 a t t a c k R a n g e s . P u s h B a c k (   ' h o r s e _ l e f t _ 1 '   ) ;  
 	 	 	 a t t a c k R a n g e s . P u s h B a c k (   ' h o r s e _ l e f t _ 2 '   ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   a t t a c k R a n g e s ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   G a t h e r E n t i t i e s I n A t t a c k R a n g e s (   s p e e d   :   f l o a t ,   a t t a c k R a n g e s   :   a r r a y < n a m e >   )   :   a r r a y < C G a m e p l a y E n t i t y >  
 	 {  
 	 	 v a r   e n t i t i e s   :   a r r a y < C G a m e p l a y E n t i t y > ;  
 	 	  
 	 	 i f (   s p e e d   <   3 . 0   )  
 	 	 {  
 	 	 	 r i d e r . G a t h e r E n t i t i e s I n A t t a c k R a n g e (   e n t i t i e s ,   a t t a c k R a n g e s [ 0 ]   ) ;  
 	 	 	 t h e P l a y e r . S e t D e b u g A t t a c k R a n g e (   a t t a c k R a n g e s [ 0 ]   ) ;  
 	 	 }  
 	 	 e l s e   i f (   s p e e d   > =   3 . 0   & &   s p e e d   <   4 . 0   )  
 	 	 {  
 	 	 	 r i d e r . G a t h e r E n t i t i e s I n A t t a c k R a n g e (   e n t i t i e s ,   a t t a c k R a n g e s [ 1 ]   ) ;  
 	 	 	 t h e P l a y e r . S e t D e b u g A t t a c k R a n g e (   a t t a c k R a n g e s [ 1 ]   ) ;  
 	 	 	  
 	 	 	 i f (   e n t i t i e s . S i z e ( )   = =   0   )  
 	 	 	 {  
 	 	 	 	 r i d e r . G a t h e r E n t i t i e s I n A t t a c k R a n g e (   e n t i t i e s ,   a t t a c k R a n g e s [ 0 ]   ) ;  
 	 	 	 	 t h e P l a y e r . S e t D e b u g A t t a c k R a n g e (   a t t a c k R a n g e s [ 0 ]   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f (   s p e e d   > =   4 . 0   )  
 	 	 {  
 	 	 	 r i d e r . G a t h e r E n t i t i e s I n A t t a c k R a n g e (   e n t i t i e s ,   a t t a c k R a n g e s [ 2 ]   ) ;  
 	 	 	 t h e P l a y e r . S e t D e b u g A t t a c k R a n g e (   a t t a c k R a n g e s [ 2 ]   ) ;  
 	 	 	  
 	 	 	 i f (   e n t i t i e s . S i z e ( )   = =   0   )  
 	 	 	 {  
 	 	 	 	 r i d e r . G a t h e r E n t i t i e s I n A t t a c k R a n g e (   e n t i t i e s ,   a t t a c k R a n g e s [ 1 ]   ) ;  
 	 	 	 	 t h e P l a y e r . S e t D e b u g A t t a c k R a n g e (   a t t a c k R a n g e s [ 1 ]   ) ;  
 	 	 	 	  
 	 	 	 	 i f (   e n t i t i e s . S i z e ( )   = =   0   )  
 	 	 	 	 {  
 	 	 	 	 	 r i d e r . G a t h e r E n t i t i e s I n A t t a c k R a n g e (   e n t i t i e s ,   a t t a c k R a n g e s [ 0 ]   ) ;  
 	 	 	 	 	 t h e P l a y e r . S e t D e b u g A t t a c k R a n g e (   a t t a c k R a n g e s [ 0 ]   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   e n t i t i e s ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   D e a l D a m a g e T o H o s t i l e s (   e n t i t i e s   :   a r r a y < C G a m e p l a y E n t i t y > ,   s p e e d   :   f l o a t ,   b a s e D a m a g e   :   f l o a t   )  
 	 {  
 	 	 v a r   d a m a g e   :   W 3 A c t i o n _ A t t a c k ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   a c t o r   :   C A c t o r ;  
 	 	 v a r   h o r s e   :   C N e w N P C ;  
 	 	 v a r   b l o o d T r a i l P a r a m   :   C B l o o d T r a i l E f f e c t ;  
 	 	 v a r   w e a p o n I d   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 h o r s e   =   ( C N e w N P C ) ( r i d e r . G e t U s e d V e h i c l e ( ) ) ;  
 	 	 d a m a g e   =   n e w   W 3 A c t i o n _ A t t a c k   i n   t h i s ;  
 	 	  
 	 	 f o r (   i   =   0   ;   i   <   e n t i t i e s . S i z e ( )   ;   i   + =   1   )  
 	 	 {  
 	 	 	 a c t o r   =   ( C A c t o r ) e n t i t i e s [ i ] ;  
 	 	 	  
 	 	 	 i f   (   a c t o r   = =   r i d e r   | |   a c t o r   = =   h o r s e   | |   G e t A t t i t u d e B e t w e e n (   r i d e r ,   a c t o r   )   ! =   A I A _ H o s t i l e   )  
 	 	 	 	 c o n t i n u e ;  
 	 	 	  
 	 	 	 i f (   a c t o r   )  
 	 	 	 {  
 	 	 	 	 a c t o r . D r a i n S t a m i n a ( E S A T _ F i x e d V a l u e ,   1 0 0 ,   1 ) ;  
  
 	 	 	 	 d a m a g e . I n i t (   r i d e r ,   a c t o r   , N U L L ,   r i d e r . G e t I n v e n t o r y ( ) . G e t I t e m F r o m S l o t (   ' r _ w e a p o n '   ) , ' a t t a c k _ h e a v y ' , r i d e r . G e t N a m e ( ) , E H R T _ H e a v y ,   f a l s e ,   f a l s e ,   ' a t t a c k _ h e a v y ' ,   A S T _ J a b ,   A S D _ N o t S e t ,   t r u e ,   f a l s e ,   f a l s e ,   f a l s e   ) ;  
 	 	 	 	 i f   (   s p e e d   <   2   )  
 	 	 	 	 {  
 	 	 	 	 	 d a m a g e . A d d D a m a g e (   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ D I R E C T ,   b a s e D a m a g e   ) ;  
 	 	 	 	 }   e l s e  
 	 	 	 	 {  
 	 	 	 	 	 d a m a g e . A d d D a m a g e (   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ D I R E C T ,   b a s e D a m a g e   *   M a x F (   1 . 1   +   s p e e d ,   1   )   ) ;  
 	 	 	 	 }  
 	 	 	 	 i f (   s p e e d   > =   4 . 0   )  
 	 	 	 	 	 d a m a g e . A d d E f f e c t I n f o (   E E T _ K n o c k d o w n T y p e A p p l i c a t o r   ) ;  
 	 	 	 	 d a m a g e . S e t S o u n d A t t a c k T y p e ( ' w p n _ s l i c e ' ) 	 ;  
 	 	 	 	  
 	 	 	 	 t h e G a m e . d a m a g e M g r . P r o c e s s A c t i o n (   d a m a g e   ) ;  
 	 	 	 	 a c t o r . P l a y E f f e c t (   ' h e a v y _ h i t _ h o r s e r i d i n g '   ) ;  
 	 	 	 	  
 	 	 	 	 b l o o d T r a i l P a r a m   =   ( C B l o o d T r a i l E f f e c t ) a c t o r . G e t G a m e p l a y E n t i t y P a r a m (   ' C B l o o d T r a i l E f f e c t '   ) ;  
 	 	 	 	 i f (   b l o o d T r a i l P a r a m   )  
 	 	 	 	 {  
 	 	 	 	 	 w e a p o n I d   =   t h e P l a y e r . i n v . G e t I t e m F r o m S l o t (   ' r _ w e a p o n '   ) ;  
 	 	 	 	 	 t h e P l a y e r . i n v . P l a y I t e m E f f e c t (   w e a p o n I d ,   ' b l o o d _ t r a i l _ h o r s e r i d i n g '   ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 }  
 	 	 }  
 	 	 d e l e t e   d a m a g e ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   T u r n O n S l o w M o ( )  
 	 {  
 	 	 t h e S o u n d . S o u n d E v e n t (   " g u i _ s l o w m o _ s t a r t "   ) ;  
 	 	 t h e G a m e . S e t T i m e S c a l e (   s l o w M o S p e e d C u r r V a l ,   t h e G a m e . G e t T i m e s c a l e S o u r c e (   E T S _ H o r s e M e l e e   ) ,   t h e G a m e . G e t T i m e s c a l e P r i o r i t y (   E T S _ H o r s e M e l e e   ) ,   f a l s e   ) ;  
 	 	 s p e e d M u l t C a s u s e r I d   =   t h e P l a y e r . S e t A n i m a t i o n S p e e d M u l t i p l i e r (   1 / s l o w M o S p e e d C u r r V a l   *   0 . 5 ,   s p e e d M u l t C a s u s e r I d   ) ;  
 	 	 i s S l o w M o O n   =   t r u e ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   T u r n O f f S l o w M o ( )  
 	 {  
 	 	 t h e G a m e . R e m o v e T i m e S c a l e (   t h e G a m e . G e t T i m e s c a l e S o u r c e (   E T S _ H o r s e M e l e e   )   ) ;  
 	 	 t h e P l a y e r . R e s e t A n i m a t i o n S p e e d M u l t i p l i e r (   s p e e d M u l t C a s u s e r I d   ) ;  
 	 	  
 	 	 t h e S o u n d . S o u n d E v e n t (   " g u i _ s l o w m o _ e n d "   ) ;  
 	 	 i s S l o w M o O n   =   f a l s e ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   S h o u l d A c t i v a t e S l o w M o ( )   :   b o o l  
 	 {  
 	 	 v a r   a c t o r s   :   a r r a y < C A c t o r > ;  
  
 	 	 i f (   ! t h e P l a y e r . I s I n C o m b a t ( )   )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 a c t o r s   =   t h e P l a y e r . G e t A t t a c k a b l e N P C s A n d P l a y e r s I n C o n e (   1 0 . 0 ,   t h e P l a y e r . G e t H e a d i n g ( ) ,   1 0 0 . 0 ,   1 0   ) ;  
 	 	  
 	 	 i f (   a c t o r s . S i z e ( )   >   0   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 }  
  
  
  
  
  
 s t a t e   C a s t S i g n   i n   W 3 V e h i c l e C o m b a t M a n a g e r  
 {  
 	 p r i v a t e   v a r   w i t c h e r   :   W 3 P l a y e r W i t c h e r ;  
 	 p r i v a t e   v a r   h o r s e   :   C A c t o r ;  
 	 p r i v a t e   v a r   h o r s e C o m p   :   W 3 H o r s e C o m p o n e n t ;  
  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 p a r e n t . v e h i c l e . O n C o m b a t A c t i o n (   E H C A _ C a s t S i g n   ) ;  
 	 	  
 	 	 w i t c h e r   =   ( W 3 P l a y e r W i t c h e r ) p a r e n t . r i d e r ;  
 	 	 h o r s e   =   ( C A c t o r ) ( p a r e n t . v e h i c l e . G e t E n t i t y ( ) ) ;  
 	 	 h o r s e C o m p   =   ( W 3 H o r s e C o m p o n e n t ) p a r e n t . v e h i c l e ;  
 	 	  
 	 	 i f (   w i t c h e r   )  
 	 	 {  
 	 	 	 S t a r t C a s t i n g S i g n ( ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 C a s t i n g S i g n F a i l e d ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e n t r y   f u n c t i o n   S t a r t C a s t i n g S i g n ( )  
 	 {  
 	 	 i f (   w i t c h e r . G e t B e h a v i o r V a r i a b l e (   ' a c t i o n T y p e '   )   ! =   ( i n t ) E H C A _ C a s t S i g n   )  
 	 	 {  
 	 	 	 w i t c h e r . S e t B e h a v i o r V a r i a b l e (   ' I s C a s t i n g S i g n ' ,   1 . 0   ) ;  
 	 	 	 w i t c h e r . S e t B e h a v i o r V a r i a b l e (   ' a c t i o n T y p e ' ,   ( i n t ) E H C A _ C a s t S i g n   ) ;  
 	 	 	 w i t c h e r . W a i t F o r B e h a v i o r N o d e A c t i v a t i o n (   ' c a s t S i g n A c t i o n O n ' ,   0 . 5 f   ) ;  
 	 	 }  
 	 	  
 	 	 i f (   ! w i t c h e r . C a s t S i g n ( )   )  
 	 	 {  
 	 	 	 C a s t i n g S i g n F a i l e d ( ) ;  
 	 	 }  
 	 	  
 	 	 w h i l e (   t r u e   )  
 	 	 {  
 	 	 	 S l e e p O n e F r a m e ( ) ;  
 	 	 	  
 	 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 	 i f (   t h e I n p u t . I s A c t i o n P r e s s e d (   ' R G C _ H o r s e C a s t A x i i '   )     )  
 	 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	 	 {  
 	 	 	 	 A p p l y E f f e c t O n H o r s e (   0 . 1   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 b r e a k ;  
 	 	 	 } 	  
 	 	 }  
 	 	  
 	 	 F i n i s h C a s t i n g ( ) ;  
 	 }  
 	  
 	 e n t r y   f u n c t i o n   F i n i s h C a s t i n g ( )  
 	 {  
 	 	 w i t c h e r . R a i s e E v e n t (   ' a c t i o n F i n i s h e d '   ) ;  
 	 	 w i t c h e r . W a i t F o r B e h a v i o r N o d e A c t i v a t i o n (   ' A c t i o n O f f ' ,   1 . 0   ) ;  
 	 	 p a r e n t . P o p S t a t e (   t r u e   ) ;  
 	 }  
 	  
 	 e n t r y   f u n c t i o n   C a s t i n g S i g n F a i l e d ( )  
 	 {  
 	 	 S l e e p (   0 . 1 f   ) ;  
 	 	 p a r e n t . P o p S t a t e (   t r u e   ) ;  
 	 }  
 	  
 	 e v e n t   O n L e a v e S t a t e (   n e x S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 s u p e r . O n L e a v e S t a t e (   n e x S t a t e N a m e   ) ;  
 	 	  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 t h e I n p u t . F o r c e D e a c t i v a t e A c t i o n (   ' R G C _ H o r s e C a s t A x i i '   ) ;  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	  
 	 	 w i t c h e r . S e t B e h a v i o r V a r i a b l e (   ' I s C a s t i n g S i g n ' ,   0 . 0   ) ;  
 	 	 w i t c h e r . C a s t S i g n A b o r t ( ) ;  
 	 	 w i t c h e r . S e t C u r r e n t l y C a s t S i g n (   S T _ N o n e ,   N U L L   ) ;  
 	 	  
 	 	 i f (   h o r s e C o m p . G e t P a n i c P e r c e n t ( )   >   0 . 0 5   )  
 	 	 {  
 	 	 	 h o r s e . R e m o v e A b i l i t y (   ' H o r s e A x i i B u f f '   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 h o r s e . A d d T i m e r (   ' R e m o v e A x i i F r o m H o r s e ' ,   5 . 0   ) ;  
 	 	 	 A p p l y E f f e c t O n H o r s e (   5 . 0   ) ;  
 	 	 }  
 	 }  
  
 	 f u n c t i o n   A p p l y E f f e c t O n H o r s e (   d u r a t i o n   :   f l o a t   )  
 	 {  
 	 	 v a r   e f f e c t P a r a m s   :   S C u s t o m E f f e c t P a r a m s ;  
 	 	  
 	 	 e f f e c t P a r a m s . e f f e c t T y p e   =   E E T _ C o n f u s i o n ;  
 	 	 e f f e c t P a r a m s . c r e a t o r   =   w i t c h e r ;  
 	 	 e f f e c t P a r a m s . s o u r c e N a m e   =   " a x i i _ o n _ h o r s e " ;  
 	 	 e f f e c t P a r a m s . d u r a t i o n   =   d u r a t i o n ;  
 	 	 h o r s e . A d d E f f e c t C u s t o m (   e f f e c t P a r a m s   ) ;  
 	 }  
 	  
 	 e v e n t   O n P r o c e s s A n i m E v e n t (   a n i m E v e n t N a m e   :   n a m e   )  
 	 {  
 	 	 i f (   a n i m E v e n t N a m e   = =   ' c a s t _ b e g i n '   )  
 	 	 {  
 	 	 	 w i t c h e r . P r o c e s s S i g n E v e n t (   ' h o r s e _ c a s t _ b e g i n '   ) ;  
 	 	 	 t h e P l a y e r . P l a y B a t t l e C r y (   ' C h i l l O u t H o r s e ' ,   0 . 4 5 f ,   t r u e ,   t r u e   ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n R a i s e S i g n E v e n t ( )  
 	 {  
 	 	 h o r s e . A d d A b i l i t y (   ' H o r s e A x i i B u f f '   ) ;  
 	 	 i f (   w i t c h e r . R a i s e E v e n t (   ' a c t i o n S t a r t '   )   )  
 	 	 {  
 	 	 	 t h e T e l e m e t r y . L o g W i t h V a l u e S t r (   T E _ F I G H T _ P L A Y E R _ U S E _ S I G N ,   S i g n E n u m T o S t r i n g (   w i t c h e r . G e t E q u i p p e d S i g n ( )   )   ) ;  
   	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
  
 	 e v e n t   O n H i t S t a r t ( )  
 	 {  
 	 	 F i n i s h C a s t i n g ( ) ;  
 	 }  
 }  
  
  
  
  
  
 s t a t e   R a n g e d A t t a c k   i n   W 3 V e h i c l e C o m b a t M a n a g e r  
 {  
 	 p r o t e c t e d   v a r   r i d e r   	 	 :   C R 4 P l a y e r ;  
 	 p r o t e c t e d   v a r   a i m i n g   	 	 :   b o o l ;  
 	 p r o t e c t e d   v a r   f i r e   	 	 	 :   b o o l ;  
 	 p r o t e c t e d   v a r   w a s A b o r t e d   	 :   b o o l ;  
 	  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 { 	  
 	 	 r i d e r   =   p a r e n t . r i d e r ;  
 	 	 a i m i n g   =   f a l s e ;  
 	 	 f i r e   =   f a l s e ;  
 	 	 w a s A b o r t e d   =   f a l s e ;  
 	 	  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 r e t u r n   t r u e ;  
 	 	 / / m o d W 3 R e d u x R G C - -  
  
 	 	 i f   (   t h e I n p u t . I s A c t i o n P r e s s e d ( ' V e h i c l e I t e m A c t i o n H o l d ' )   )  
 	 	 {  
 	 	 	 I t e m A c t i o n H o l d ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n L e a v e S t a t e (   n e x t S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 r e t u r n   t r u e ;  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	  
 	 	 i f   (   w a s A b o r t e d   )  
 	 	 {  
 	 	 	 t h e I n p u t . F o r c e D e a c t i v a t e A c t i o n ( ' V e h i c l e I t e m A c t i o n ' ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n I t e m A c t i o n (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f   (   r i d e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' D i s m o u n t H o r s e '   | |   r i d e r . I s I n H i t A n i m ( )   )  
 	 	 	 r e t u r n   f a l s e ;  
 	  
 	 	 i f (   I s R e l e a s e d (   a c t i o n   )   )  
 	 	 {  
 	 	 	 f i r e   =   t r u e ;  
 	 	 }  
 	 } 	  
 	  
 	 e v e n t   O n I t e m A c t i o n H o l d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s P r e s s e d (   a c t i o n   )   )  
 	 	 {  
 	 	 	 I t e m A c t i o n H o l d ( ) ;  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   I t e m A c t i o n H o l d ( )  
 	 {  
 	 	 a i m i n g   =   t r u e ;  
 	 }  
  
 	 v a r   h o r i z o n t a l V a l   	 	 	 :   f l o a t ;  
 	 e v e n t   O n G a m e C a m e r a T i c k (   o u t   m o v e D a t a   :   S C a m e r a M o v e m e n t D a t a ,   t i m e D e l t a   :   f l o a t   )  
 	 {  
 	 	 v a r   v e r t i c a l V a l   	 	 	 :   f l o a t ;  
 	 	 v a r   l o c a l O f f s e t   	 	 	 :   V e c t o r ;  
 	 	 v a r   r o t   	 	 	 	 	 :   E u l e r A n g l e s ;  
 	 	 v a r   h e a d B o n e I d x   	 	 	 :   i n t ;  
 	 	 v a r   p l a y e r P o s 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   p l a y e r T o C a m H e a d i n g D i s t 	 :   f l o a t ;  
 	 	 v a r   p l a y e r T o C a m P i t c h D i s t 	 :   f l o a t ;  
 	 	 v a r   c a m O f f s e t V e c 	 	 	 :   V e c t o r ;  
 	 	 v a r   p l a y e r T o C a m A n g l e D i f f 	 :   f l o a t ;  
 	 	  
 	 	 i f (   ! a i m i n g   & &   r i d e r . G e t D i s p l a y T a r g e t ( )   & &   r i d e r . G e t D i s p l a y T a r g e t ( )   ! =   r i d e r . G e t U s e d V e h i c l e ( )   )  
 	 	 {  
 	 	 	 r i d e r . S e t O r i e n t a t i o n T a r g e t (   O T _ A c t o r   ) ;  
 	 	 	  
 	 	 	 h e a d B o n e I d x   =   r i d e r . G e t H e a d B o n e I n d e x ( ) ;  
 	 	 	  
 	 	 	 i f   (   h e a d B o n e I d x   > =   0   )  
 	 	 	 {  
 	 	 	 	 p l a y e r P o s   =   M a t r i x G e t T r a n s l a t i o n (   r i d e r . G e t B o n e W o r l d M a t r i x B y I n d e x (   h e a d B o n e I d x   )   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 r o t   =   V e c T o R o t a t i o n (   r i d e r . G e t L o o k A t P o s i t i o n ( )   -   p l a y e r P o s   ) ;  
 	 	 	 r i d e r . G e t V i s u a l D e b u g ( ) . A d d S p h e r e (   ' w h y u t r a t 4 ' ,   1 . f ,   r i d e r . G e t L o o k A t P o s i t i o n ( ) ,   t r u e ,   C o l o r (   2 5 5 ,   0 ,   0   ) ,   0 . 2 f   ) ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 	 i f   (   r i d e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S a i l i n g P a s s i v e '   )  
 	 	 	 	 	 h o r i z o n t a l V a l   =   A n g l e D i s t a n c e (   r i d e r . G e t H e a d i n g ( )   +   1 8 0 ,   r o t . Y a w   )   /   1 8 0 . f ;  
 	 	 	 	 e l s e 	 	 	  
 	 	 	 	 	 h o r i z o n t a l V a l   =   A n g l e D i s t a n c e (   r i d e r . G e t H e a d i n g ( ) ,   r o t . Y a w   )   /   1 8 0 . f ;  
 	 	 	  
 	 	 	 	 	  
 	 	 	 v e r t i c a l V a l   =   C l a m p F (   r o t . P i t c h ,   - 9 0 . f ,   9 0 . f   )   /   - 9 0 . f ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   (   r i d e r . G e t T h r o w n E n t i t y ( )   & &   ( W 3 P e t a r d ) (   r i d e r . G e t T h r o w n E n t i t y ( )   )   )  
 	 	 	 	 r i d e r . P r o c e s s C a n A t t a c k W h e n N o t I n C o m b a t B o m b ( ) ;  
 	 	 	 e l s e  
 	 	 	 	 r i d e r . r a n g e d W e a p o n . P r o c e s s C a n A t t a c k W h e n N o t I n C o m b a t ( ) ; 	 	  
 	 	  
 	 	 	 r i d e r . S e t O r i e n t a t i o n T a r g e t (   O T _ C a m e r a   ) ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 	 i f   (   r i d e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S a i l i n g P a s s i v e '   )  
 	 	 	 	 	 h o r i z o n t a l V a l   =   A n g l e D i s t a n c e (   r i d e r . G e t H e a d i n g ( )   +   1 8 0 ,   m o v e D a t a . p i v o t R o t a t i o n V a l u e . Y a w   )   /   1 8 0 . f ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 h o r i z o n t a l V a l   =   A n g l e D i s t a n c e (   r i d e r . G e t H e a d i n g ( ) ,   m o v e D a t a . p i v o t R o t a t i o n V a l u e . Y a w   )   /   1 8 0 . f ;  
 	 	 	  
 	 	 	 	 	  
 	 	 	 v e r t i c a l V a l   =   C l a m p F (   m o v e D a t a . p i v o t R o t a t i o n V a l u e . P i t c h ,   - 9 0 . f ,   9 0 . f   )   /   9 0 . f ;  
 	 	 }  
 	 	  
 	 	  
 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' a i m H o r i z o n t a l ' ,   h o r i z o n t a l V a l   ) ;  
 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' a i m V e r t i c a l ' ,   v e r t i c a l V a l   ) ;  
 	 	  
 	 	 r i d e r . v e h i c l e C b t M g r A i m i n g   =   a i m i n g ;  
 	 	  
 	 	 i f (   ! a i m i n g   )  
 	 	 {  
 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . E n a b l e S c r e e n S p a c e C o r r e c t i o n (   t r u e   ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 } 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 l o c a l O f f s e t   =   V e c t o r (   1 . 4 ,   0 ,   0 . 1 5 f   ) ;  
  
 	 	  
 	 	 D a m p V e c t o r C o n s t (   m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t ,   l o c a l O f f s e t ,   4 . f ,   t i m e D e l t a   ) ;  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 e v e n t   O n P r o c e s s A n i m E v e n t (   a n i m E v e n t N a m e   :   n a m e   )  
 	 {  
 	 	 i f   (   r i d e r . i n v . I s I t e m C r o s s b o w (   r i d e r . i n v . G e t I t e m F r o m S l o t ( ' l _ w e a p o n ' )   )   )  
 	 	 { 	 	  
 	 	 	 r i d e r . r a n g e d W e a p o n . O n P r o c e s s T h r o w E v e n t (   a n i m E v e n t N a m e   ) ;  
 	 	 }  
 	 }  
  
 	 e v e n t   O n I t e m A c t i o n A b o r t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 A b o r t I t e m A c t i o n ( ) ;  
 	 }  
 	  
 	 e v e n t   O n F o r c e I t e m A c t i o n A b o r t ( )  
 	 {  
 	 	 A b o r t I t e m A c t i o n ( ) ;  
 	 }  
 	  
 	 f u n c t i o n   A b o r t I t e m A c t i o n ( )   :   b o o l  
 	 {  
 	 	 v a r   p l a y e r   :   W 3 P l a y e r W i t c h e r ;  
 	 	 v a r   t h r o w S t a g e   :   E T h r o w S t a g e ;  
 	 	 v a r   a l l o w A b o r t   :   b o o l ;  
 	 	 	 	  
 	 	 i f   (   t h e P l a y e r . p l a y e r A i m i n g . G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m i n g '   )  
 	 	 	 a l l o w A b o r t   =   t r u e ;  
 	 	 	  
 	 	 i f   (   r i d e r . r a n g e d W e a p o n   & &   r i d e r . r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '   )  
 	 	 {  
 	 	 	 i f   (   ! r i d e r . r a n g e d W e a p o n . I s W e a p o n B e i n g U s e d ( )   )  
 	 	 	 	 a l l o w A b o r t   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 i f   (   ! a l l o w A b o r t   )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 w a s A b o r t e d   =   t r u e ;  
 	 	 a i m i n g   =   f a l s e ;  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 e v e n t   O n H o r s e A c t i o n S t a r t ( )  
 	 {  
 	 	 A b o r t I t e m A c t i o n ( ) ;  
 	 }  
 	  
 	 e v e n t   O n H i t S t a r t ( )  
 	 {  
 	 	  
 	 	  
 	 }  
 }  
  
  
  
  
  
 s t a t e   T h r o w P r o j e c t i l e   i n   W 3 V e h i c l e C o m b a t M a n a g e r   e x t e n d s   R a n g e d A t t a c k    
 {  
 	  
 	 v a r   a b o r t T h r o w 	 	 :   b o o l ;  
 	 v a r   t h r o w n E n t i t y 	 :   C T h r o w a b l e ;  
  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 s u p e r . O n E n t e r S t a t e (   p r e v S t a t e N a m e   ) ;  
 	 	  
 	 	  
 	 	 r i d e r . r a d i a l S l o t s . C l e a r ( ) ;  
 	 	 r i d e r . r a d i a l S l o t s . P u s h B a c k (   ' S l o t 2 '   ) ;  
 	 	 r i d e r . r a d i a l S l o t s . P u s h B a c k (   ' S l o t 3 '   ) ;  
 	 	 r i d e r . r a d i a l S l o t s . P u s h B a c k (   ' S l o t 4 '   ) ;  
 	 	 r i d e r . r a d i a l S l o t s . P u s h B a c k (   ' S l o t 5 '   ) ;  
 	 	 r i d e r . E n a b l e R a d i a l S l o t s W i t h S o u r c e (   f a l s e ,   r i d e r . r a d i a l S l o t s ,   ' t h r o w P r o j e c t i l e O n V e h i c l e '   ) ; 	  
 	 	  
 	 	 i f   (   ! p a r e n t . w a s B o m b R e l e a s e d   & &   t h r o w n E n t i t y   )  
 	 	 {  
 	 	 	 r i d e r . R a i s e E v e n t (   ' a c t i o n S h o o t E n d '   ) ;  
 	 	 	 t h r o w n E n t i t y . S t o p A i m i n g (   f a l s e   ) ;  
 	 	 	 t h r o w n E n t i t y . D e s t r o y ( ) ;  
 	 	 	 t h r o w n E n t i t y   =   N U L L ;  
 	 	 }  
 	 	  
 	 	 p a r e n t . w a s B o m b R e l e a s e d   =   f a l s e ;  
 	 	  
 	 	 t h r o w n E n t i t y   =   ( C T h r o w a b l e ) r i d e r . G e t I n v e n t o r y ( ) . G e t D e p l o y m e n t I t e m E n t i t y (   r i d e r . G e t S e l e c t e d I t e m I d ( ) ,   r i d e r . G e t W o r l d P o s i t i o n ( ) , , t r u e   ) ;  
 	 	 t h r o w n E n t i t y . I n i t i a l i z e (   r i d e r ,   r i d e r . G e t S e l e c t e d I t e m I d ( )   ) ;  
 	 	 E n t i t y H a n d l e S e t (   r i d e r . t h r o w n E n t i t y H a n d l e ,   t h r o w n E n t i t y   ) ;  
 	 	  
 	 	 i f   (   t h e I n p u t . I s A c t i o n P r e s s e d ( ' V e h i c l e I t e m A c t i o n H o l d ' )   )  
 	 	 {  
 	 	 	 I t e m A c t i o n H o l d ( ) ;  
 	 	 }  
  
 	 	 p a r e n t . S e t C l e a n u p F u n c t i o n (   ' T h r o w P r o j e c t i l e C l e a n u p '   ) ;  
 	 	  
 	 	 O n e F r a m e D e l a y H A C K ( ) ;  
 	 }  
  
 	 c l e a n u p   f u n c t i o n   T h r o w P r o j e c t i l e C l e a n u p ( )  
 	 {  
 	 	 i f (   t h r o w n E n t i t y   )  
 	 	 {  
 	 	 	 t h r o w n E n t i t y . S t o p A i m i n g (   f a l s e   ) ;  
 	 	 	  
 	 	 	 i f   (   ! p a r e n t . w a s B o m b R e l e a s e d   )  
 	 	 	 {  
 	 	 	 	 r i d e r . R a i s e E v e n t (   ' a c t i o n S h o o t E n d '   ) ;  
 	 	 	 	 p a r e n t . w a s B o m b R e l e a s e d   =   t r u e ;  
 	 	 	 	 t h r o w n E n t i t y . D e s t r o y ( ) ;  
 	 	 	 	 t h r o w n E n t i t y   =   N U L L ;  
 	 	 	 }  
 	 	 } 	  
 	 }  
  
 	  
 	 e v e n t   O n L e a v e S t a t e (   n e x t S t a t e N a m e   :   n a m e   )  
 	 { 	  
 	 	 a i m i n g   =   f a l s e ; 	  
 	 	  
 	 	 a b o r t T h r o w   =   f a l s e ;  
 	 	 r i d e r . E n a b l e R a d i a l S l o t s W i t h S o u r c e (   t r u e ,   r i d e r . r a d i a l S l o t s ,   ' t h r o w P r o j e c t i l e O n V e h i c l e '   ) ; 	 	  
 	  
 	 	 i f (   t h r o w n E n t i t y   )  
 	 	 {  
 	 	 	 t h r o w n E n t i t y . S t o p A i m i n g (   f a l s e   ) ;  
 	 	 	  
 	 	 	 i f   (   ! p a r e n t . w a s B o m b R e l e a s e d   )  
 	 	 	 {  
 	 	 	 	 r i d e r . R a i s e E v e n t (   ' a c t i o n S h o o t E n d '   ) ;  
 	 	 	 	 p a r e n t . w a s B o m b R e l e a s e d   =   t r u e ;  
 	 	 	 	 t h r o w n E n t i t y . D e s t r o y ( ) ;  
 	 	 	 	 t h r o w n E n t i t y   =   N U L L ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 e n t r y   f u n c t i o n   O n e F r a m e D e l a y H A C K ( )  
 	 {  
 	 	 S l e e p (   0 . 1 f   ) ;  
 	 	  
 	 	 w h i l e   (   ! r i d e r . R a i s e E v e n t (   ' a c t i o n S t a r t '   )   )  
 	 	 {  
 	 	 	 S l e e p O n e F r a m e ( ) ;  
 	 	 }  
 	 	  
 	 	 r i d e r . W a i t F o r B e h a v i o r N o d e D e a c t i v a t i o n (   ' A c t i o n O n ' ,   2 . 5 f   ) ;  
 	 	  
 	 	 w h i l e (   ! f i r e   & &   ! a b o r t T h r o w   )  
 	 	 {  
 	 	 	 S l e e p O n e F r a m e ( ) ;  
 	 	 }  
 	 	  
 	 	 F i r e P r o j e c t i l e (   a b o r t T h r o w   ) ;  
 	 }  
 	  
 	 e v e n t   O n I t e m A c t i o n (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 { 	  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f ( a c t i o n . a N a m e   = =   ' V e h i c l e I t e m A c t i o n ' )  
 	 	 {  
 	 	 	 i f   (   t h r o w n E n t i t y   )  
 	 	 	 	 s u p e r . O n I t e m A c t i o n (   a c t i o n   ) ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 }  
 	  
 	 e v e n t   O n I t e m A c t i o n H o l d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f ( a c t i o n . a N a m e   = =   ' V e h i c l e I t e m A c t i o n H o l d ' )  
 	 	 {  
 	 	 	 i f (   I s P r e s s e d (   a c t i o n   )   )  
 	 	 	 {  
 	 	 	 	 I t e m A c t i o n H o l d ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 }  
 	  
 	 f u n c t i o n   I t e m A c t i o n H o l d ( )  
 	 {  
 	 	 i f   (   t h r o w n E n t i t y   )  
 	 	 {  
 	 	 	 s u p e r . I t e m A c t i o n H o l d ( ) ;  
 	 	 	 i f (   ! f i r e   )  
 	 	 	 {  
 	 	 	 	 t h r o w n E n t i t y . S t a r t A i m i n g ( ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n I t e m A c t i o n A b o r t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s R e l e a s e d (   a c t i o n   )   )  
 	 	 {  
 	 	 	 A b o r t I t e m A c t i o n ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n F o r c e I t e m A c t i o n A b o r t ( )  
 	 {  
 	 	 A b o r t I t e m A c t i o n ( ) ;  
 	 }  
 	  
 	 f u n c t i o n   A b o r t I t e m A c t i o n ( )   :   b o o l  
 	 {  
 	 	 i f   (   s u p e r . A b o r t I t e m A c t i o n ( )   )  
 	 	 {  
 	 	 	 a b o r t T h r o w   =   t r u e ;  
 	 	 	 t h e I n p u t . F o r c e D e a c t i v a t e A c t i o n ( ' V e h i c l e I t e m A c t i o n ' ) ;  
 	 	 	 r i d e r . U n b l o c k A c t i o n ( E I A B _ T h r o w B o m b ,   ' B o m b T h r o w ' ) ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 e v e n t   O n P r o c e s s A n i m E v e n t (   a n i m E v e n t N a m e   :   n a m e   )  
 	 {  
 	 	 t h r o w n E n t i t y . O n P r o c e s s T h r o w E v e n t (   a n i m E v e n t N a m e   ) ;  
 	 	  
 	 	 i f   (   a n i m E v e n t N a m e   = =   ' P r o j e c t i l e T h r o w '   )  
 	 	 {  
 	 	 	 p a r e n t . w a s B o m b R e l e a s e d   =   t r u e ;  
 	 	 }  
 	 }  
 	  
 	 l a t e n t   f u n c t i o n   F i r e P r o j e c t i l e (   a b o r t   :   b o o l   )  
 	 {  
 	 	 v a r   r e s   	 	 :   b o o l ;  
 	 	 v a r   e v e n t N a m e 	 :   n a m e ;  
  
 	 	 i f   (   r i d e r . G e t I s S h o o t i n g F r i e n d l y ( )   | |   a b o r t   )  
 	 	 	 e v e n t N a m e   =   ' a c t i o n S t o p ' ;  
 	 	 e l s e  
 	 	 	 e v e n t N a m e   =   ' a c t i o n S h o o t ' ;  
 	 	  
 	 	 i f (   r i d e r . R a i s e E v e n t (   e v e n t N a m e   )   )  
 	 	 {  
 	 	 	 i f   (   e v e n t N a m e   = =   ' a c t i o n S t o p '   )  
 	 	 	 {  
 	 	 	 	 S l e e p (   0 . 3 f   ) ;  
  
 	 	 	 	 t h r o w n E n t i t y . B r e a k A t t a c h m e n t ( ) ;  
 	 	 	 	 t h r o w n E n t i t y . D e s t r o y ( ) ;  
 	 	 	 	 t h r o w n E n t i t y   =   N U L L ;  
 	 	 	 	 r i d e r . p l a y e r A i m i n g . S t o p A i m i n g ( ) ;  
 	 	 	 	 p a r e n t . w a s B o m b R e l e a s e d   =   t r u e ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 	 r i d e r . p l a y e r A i m i n g . R e m o v e A i m i n g S l o M o ( ) ;  
 	 	 	 	  
 	 	 	 a i m i n g   =   f a l s e ; 	 	  
 	 	 	 	  
 	 	 	 r e s   =   r i d e r . W a i t F o r B e h a v i o r N o d e A c t i v a t i o n (   ' A c t i o n O f f ' ,   5 . f   ) ;  
 	 	 	  
 	 	 	 p a r e n t . P o p S t a t e (   t r u e   ) ;  
 	 	 }  
 	 }  
 }  
  
  
  
  
  
 s t a t e   T h r o w B o m b   i n   W 3 V e h i c l e C o m b a t M a n a g e r   e x t e n d s   T h r o w P r o j e c t i l e  
 {  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 s u p e r . O n E n t e r S t a t e (   p r e v S t a t e N a m e   ) ;  
 	 	  
 	 	 p a r e n t . v e h i c l e . O n C o m b a t A c t i o n (   E H C A _ T h r o w B o m b   ) ;  
 	 	  
 	 	 r i d e r . B l o c k A c t i o n ( E I A B _ T h r o w B o m b ,   ' B o m b T h r o w '   ) ;  
 	 	 r i d e r . B l o c k A c t i o n ( E I A B _ C r o s s b o w ,   ' B o m b T h r o w ' ) ;  
 	 	  
 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' a c t i o n T y p e ' ,   ( i n t ) E H C A _ T h r o w B o m b   ) ;  
  
 	 	 r i d e r . S e t T h r o w H o l d ( t r u e ) ;   / / m o d W 3 R e d u x R G C  
 	 }  
 	  
 	 / / m o d W 3 R e d u x R G C + +  
 	 e v e n t   O n L e a v e S t a t e ( n e x t S t a t e N a m e   :   n a m e )  
 	 {  
 	 	 s u p e r . O n L e a v e S t a t e ( n e x t S t a t e N a m e ) ;  
 	 	 r i d e r . S e t T h r o w H o l d ( f a l s e ) ;  
 	 }  
 	 / / m o d W 3 R e d u x R G C - -  
 	  
 	 e v e n t   O n H i t S t a r t ( )  
 	 {  
 	 	 A b o r t I t e m A c t i o n ( ) ;  
 	 } 	  
 }  
  
  
  
  
  
 s t a t e   S h o o t C r o s s b o w   i n   W 3 V e h i c l e C o m b a t M a n a g e r   e x t e n d s   R a n g e d A t t a c k  
 {  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 s u p e r . O n E n t e r S t a t e (   p r e v S t a t e N a m e   ) ;  
 	 	 p a r e n t . v e h i c l e . O n C o m b a t A c t i o n (   E H C A _ S h o o t C r o s s b o w   ) ;  
 	 	  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f   (   t h e I n p u t . I s A c t i o n P r e s s e d ( ' R G C _ H o r s e C r o s s B o w H o l d ' )   )  
 	 	 {  
 	 	 	 I t e m A c t i o n H o l d ( ) ;  
 	 	 }  
  
 	 	 r i d e r . S e t I s A i m i n g C r o s s b o w ( t r u e ) ;  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 }  
  
 	 / / m o d W 3 R e d u x R G C + +  
 	 e v e n t   O n L e a v e S t a t e (   n e x t S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 s u p e r . O n L e a v e S t a t e ( n e x t S t a t e N a m e ) ;  
 	 	 r i d e r . S e t I s A i m i n g C r o s s b o w ( f a l s e ) ;  
 	 }  
 	 / / m o d W 3 R e d u x R G C - -  
 	  
 	 e v e n t   O n I t e m A c t i o n (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f ( a c t i o n . a N a m e   = =   ' R G C _ H o r s e C r o s s B o w ' )  
 	 	 {  
 	 	 	 s u p e r . O n I t e m A c t i o n (   a c t i o n   ) ;  
 	 	 	  
 	 	 	 i f   (   I s R e l e a s e d (   a c t i o n   )   )  
 	 	 	 {  
 	 	 	 	 r i d e r . r a n g e d W e a p o n . O n R a n g e d W e a p o n R e l e a s e ( ) ;  
 	 	 	 	 W a i t F o r S h o o t i n g C o m p l e t e ( ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f   (   I s P r e s s e d (   a c t i o n   )   )  
 	 	 	 {  
 	 	 	 	 i f (   r i d e r . G e t I n v e n t o r y ( ) . I s I t e m C r o s s b o w (   r i d e r . G e t S e l e c t e d I t e m I d ( )   )   )  
 	 	 	 	 {  
 	 	 	 	 	 p a r e n t . v e h i c l e . O n C o m b a t A c t i o n (   E H C A _ S h o o t C r o s s b o w   ) ;  
 	 	 	 	 	 r i d e r . S e t B e h a v i o r V a r i a b l e (   ' a c t i o n T y p e ' ,   ( i n t ) E H C A _ S h o o t C r o s s b o w   ) ;  
 	 	 	 	 	 r i d e r . r a n g e d W e a p o n   =   (   C r o s s b o w   ) (   r i d e r . G e t I n v e n t o r y ( ) . G e t I t e m E n t i t y U n s a f e (   r i d e r . G e t S e l e c t e d I t e m I d ( )   )   ) ;  
 	 	 	 	 	 r i d e r . r a n g e d W e a p o n . O n R a n g e d W e a p o n P r e s s ( ) ;  
 	 	 	 	 	 S t o p W a i t F o r S h o o t i n g C o m p l e t e ( ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 }  
 	  
 	 e v e n t   O n I t e m A c t i o n H o l d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f ( a c t i o n . a N a m e   = =   ' R G C _ H o r s e C r o s s B o w H o l d ' )  
 	 	 {  
 	 	 	 i f   (   ! (   ( W 3 B o a t ) (   t h e P l a y e r . G e t U s e d V e h i c l e ( )   )   )   )  
 	 	 	 {  
 	 	 	 	 i f   (   I s P r e s s e d ( a c t i o n )     )  
 	 	 	 	 	 I t e m A c t i o n H o l d ( ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t h e I n p u t . F o r c e D e a c t i v a t e A c t i o n ( ' R G C _ H o r s e C r o s s B o w ' ) ;  
 	 	 	 }  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 }  
 	  
 	 f u n c t i o n   I t e m A c t i o n H o l d ( )  
 	 {  
 	 	 i f   (   p a r e n t . r i d e r . i n v . I s I t e m C r o s s b o w (   p a r e n t . r i d e r . G e t S e l e c t e d I t e m I d ( )   )   )  
 	 	 	 s u p e r . I t e m A c t i o n H o l d ( ) ;  
 	 }  
 	  
 	 e v e n t   O n I t e m A c t i o n A b o r t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s R e l e a s e d (   a c t i o n   )   )  
 	 	 {  
 	 	 	 A b o r t I t e m A c t i o n ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n F o r c e I t e m A c t i o n A b o r t ( )  
 	 {  
 	 	 A b o r t I t e m A c t i o n ( ) ;  
 	 }  
 	  
 	 f u n c t i o n   A b o r t I t e m A c t i o n ( )   :   b o o l  
 	 {  
 	 	 i f   (   s u p e r . A b o r t I t e m A c t i o n ( )   )  
 	 	 {  
 	 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 	 r i d e r . O n R a n g e d F o r c e H o l s t e r (   t r u e ,   f a l s e   ) ;  
 	 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	 	 W a i t F o r S h o o t i n g C o m p l e t e ( ) ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 e n t r y   f u n c t i o n   S t o p W a i t F o r S h o o t i n g C o m p l e t e ( )  
 	 {  
 	  
 	 }  
 	  
 	 e n t r y   f u n c t i o n   W a i t F o r S h o o t i n g C o m p l e t e ( )  
 	 {  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ;  
 	 	 r i d e r . W a i t F o r B e h a v i o r N o d e D e a c t i v a t i o n (   ' W e a p o n S h o o t D e a c t ' ,   1 . f   ) ;  
 	 	 a i m i n g   =   f a l s e ;    
 	 	 r i d e r . p l a y e r A i m i n g . S t o p A i m i n g ( ) ;  
 	 	  
  
 	 	 w h i l e   (   r i d e r . r a n g e d W e a p o n   & &   r i d e r . r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '   )  
 	 	 {  
 	 	 	 S l e e p O n e F r a m e ( ) ;  
 	 	 }  
 	 	  
 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ D i s m o u n t V e h i c l e ,   ' S h o o t i n g C r o s s b o w '   ) ; 	  
 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ M o u n t V e h i c l e ,   ' S h o o t i n g C r o s s b o w '   ) ;  
  
 	 	 p a r e n t . P o p S t a t e (   t r u e   ) ;  
 	 }  
 	  
 	 e v e n t   O n P r o c e s s A n i m E v e n t (   a n i m E v e n t N a m e   :   n a m e   )  
 	 {  
 	 	 s u p e r . O n P r o c e s s A n i m E v e n t (   a n i m E v e n t N a m e   ) ;  
 	  
 	 	 i f   (   r i d e r . i n v . I s I t e m C r o s s b o w (   r i d e r . i n v . G e t I t e m F r o m S l o t ( ' l _ w e a p o n ' )   )   )  
 	 	 { 	 	  
 	 	 	 i f   (   a n i m E v e n t N a m e   = =   ' P r o j e c t i l e T h r o w '   )  
 	 	 	 {  
 	 	 	 	 (   ( C V e h i c l e C o m p o n e n t ) (   p a r e n t . v e h i c l e   )   ) . O n C o m b a t A c t i o n E n d ( ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 }  
 