/ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / * *   	 �   2 0 1 5   C D   P R O J E K T   S . A .   A l l   r i g h t s   r e s e r v e d .  
 / * *   	 T H E   W I T C H E R �   i s   a   t r a d e m a r k   o f   C D   P R O J E K T   S .   A .  
 / * *   	 T h e   W i t c h e r   g a m e   i s   b a s e d   o n   t h e   p r o s e   o f   A n d r z e j   S a p k o w s k i .  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
  
  
  
 i m p o r t   c l a s s   C I t e m E n t i t y   e x t e n d s   C E n t i t y  
 {  
 	  
 	 i m p o r t   f i n a l   f u n c t i o n   G e t P a r e n t E n t i t y ( )   :   C E n t i t y ;  
 	  
 	  
 	 i m p o r t   f i n a l   f u n c t i o n   G e t I t e m T a g s (   o u t   t a g s   :   a r r a y < n a m e >   ) ;  
  
 	 i m p o r t   f i n a l   f u n c t i o n   G e t M e s h C o m p o n e n t ( )   :   C C o m p o n e n t ;  
  
 	  
 	 e v e n t   O n G r a b ( )  
 	 {  
 	 	 S e t u p D r a w H o l s t e r S o u n d s ( ) ;  
 	 }  
 	  
 	  
 	 e v e n t   O n P u t ( )  
 	 {  
 	 	 S e t u p D r a w H o l s t e r S o u n d s ( ) ;  
 	 }  
 	  
 	 e v e n t   O n A t t a c h m e n t U p d a t e ( p a r e n t E n t i t y   :   C E n t i t y ,   i t e m N a m e   :   n a m e )  
 	 {  
 	 	 v a r   a c t o r P a r e n t   :   C A c t o r ;  
 	 	 v a r   d m   	 :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ;  
 	 	  
 	 	 a c t o r P a r e n t   =   ( C A c t o r ) p a r e n t E n t i t y ;  
 	 	 i f (   a c t o r P a r e n t   )  
 	 	 {  
 	 	 	 i f ( t h e G a m e   & &   a c t o r P a r e n t . I s H u m a n ( ) )  
 	 	 	 {  
 	 	 	 	 i f ( i t e m N a m e   ! =   ' ' )  
 	 	 	 	 {  
 	 	 	 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	 	 	 	 i f ( d m )  
 	 	 	 	 	 { 	  
 	 	 	 	 	 	 i f (   I F T _ A r m o r s   = =   d m . G e t F i l t e r T y p e B y I t e m ( i t e m N a m e )   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 a c t o r P a r e n t . A d d T i m e r ( ' D e l a y S o u n d I n f o U p d a t e ' ,   1 ) ;  
 	 	 	 	 	 	 } 	  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e    
 	 	 	 	 {  
 	 	 	 	 	 a c t o r P a r e n t . A d d T i m e r ( ' D e l a y S o u n d I n f o U p d a t e ' ,   1 ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t u p D r a w H o l s t e r S o u n d s ( )  
 	 {  
 	 	 v a r   p a r e n t E n t i t y   :   C E n t i t y ;  
 	 	 v a r   i d e n t i f i c a t i o n   :   n a m e ;  
 	 	 v a r   c o m p o n e n t   :   C C o m p o n e n t ;  
 	 	  
 	 	 p a r e n t E n t i t y   =   ( C E n t i t y )   G e t P a r e n t E n t i t y ( ) ;  
 	 	 i f (   p a r e n t E n t i t y   )  
 	 	 {  
 	 	 	 c o m p o n e n t   =   G e t M e s h C o m p o n e n t ( ) ;  
  
 	 	 	 i f (   c o m p o n e n t   )  
 	 	 	 {  
 	 	 	 	 i d e n t i f i c a t i o n   =   G e t M e s h S o u n d T y p e I d e n t i f i c a t i o n (   c o m p o n e n t   ) ;  
 	 	 	 	 p a r e n t E n t i t y . S o u n d S w i t c h (   " w e a p o n _ t y p e " ,   i d e n t i f i c a t i o n   ) ;  
 	 	 	 	 i d e n t i f i c a t i o n   =   G e t M e s h S o u n d S i z e I d e n t i f i c a t i o n (   c o m p o n e n t   ) ;  
 	 	 	 	 p a r e n t E n t i t y . S o u n d S w i t c h (   " w e a p o n _ s i z e " ,   i d e n t i f i c a t i o n   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 i m p o r t   f i n a l   f u n c t i o n   G e t I t e m C a t e g o r y ( )   :   n a m e ;    
 	  
 	 e v e n t   O n I t e m C o l l i s i o n (   o b j e c t   :   C O b j e c t ,   p h y s i c a l A c t o r i n d e x   :   i n t ,   s h a p e I n d e x   :   i n t   )  
 	 {  
 	 	 v a r   v i c t i m   :   C G a m e p l a y E n t i t y ;  
 	 	 v a r   o w n e r   :   C A c t o r ;  
 	 	 v a r   e n t   :   C E n t i t y ;  
 	 	 v a r   c o m p o n e n t   :   C C o m p o n e n t ;  
 	 	 c o m p o n e n t   =   ( C C o m p o n e n t )   o b j e c t ;  
 	 	 i f (   ! c o m p o n e n t   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 e n t   =   c o m p o n e n t . G e t E n t i t y ( ) ;  
 	 	 o w n e r   =   ( C A c t o r ) G e t P a r e n t E n t i t y ( ) ;  
 	 	  
 	 	 i f   (   e n t   ! =   t h i s   & &   o w n e r   & &   e n t   ! =   o w n e r   )  
 	 	 {  
 	 	 	 v i c t i m   =   ( C G a m e p l a y E n t i t y ) c o m p o n e n t . G e t E n t i t y ( ) ;  
 	 	 	  
 	 	 	 i f   (   v i c t i m   )  
 	 	 	 {  
 	 	 	 	 i f   (   p h y s i c a l A c t o r i n d e x   = =   0   & &   s h a p e I n d e x   = =   0   & &   ( ( C M o v i n g A g e n t C o m p o n e n t ) c o m p o n e n t ) . H a s R a g d o l l ( )   )  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 	  
 	 	 	 	 o w n e r . O n C o l l i s i o n F r o m I t e m ( v i c t i m ,   t h i s ) ;  
 	 	 	 }  
 	 	 	 r e t u r n   t r u e ;  
 	 	 } 	  
 	 }  
 	  
 	 e v e n t   O n G i a n t W e a p o n C o l l i s i o n (   o b j e c t   :   C O b j e c t ,   p h y s i c a l A c t o r i n d e x   :   i n t ,   s h a p e I n d e x   :   i n t   )  
 	 {  
 	 	 v a r   v i c t i m   :   C A c t o r ;  
 	 	 v a r   o w n e r   :   C A c t o r ;  
 	 	 v a r   e n t   :   C E n t i t y ;  
 	 	 v a r   c o m p o n e n t   :   C C o m p o n e n t ;  
 	 	 c o m p o n e n t   =   ( C C o m p o n e n t )   o b j e c t ;  
 	 	 i f (   ! c o m p o n e n t   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 e n t   =   c o m p o n e n t . G e t E n t i t y ( ) ;  
 	 	 o w n e r   =   ( C A c t o r ) G e t P a r e n t E n t i t y ( ) ;  
 	 	  
 	 	 i f   (   e n t   ! =   t h i s   & &   o w n e r   & &   e n t   ! =   o w n e r   )  
 	 	 {  
 	 	 	 v i c t i m   =   ( C A c t o r ) c o m p o n e n t . G e t E n t i t y ( ) ;  
 	 	 	  
 	 	 	 i f   (   v i c t i m   )  
 	 	 	 {  
 	 	 	 	 i f   (   p h y s i c a l A c t o r i n d e x   = =   0   & &   s h a p e I n d e x   = =   0   & &   ( ( C M o v i n g A g e n t C o m p o n e n t ) c o m p o n e n t ) . H a s R a g d o l l ( )   )  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 	  
 	 	 	 	 o w n e r . O n C o l l i s i o n F r o m G i a n t W e a p o n ( v i c t i m ,   t h i s ) ;  
 	 	 	 }  
 	 	 	 r e t u r n   t r u e ;  
 	 	 } 	  
 	 }  
 }  
  
 c l a s s   W 3 E f f e c t I t e m   e x t e n d s   C I t e m E n t i t y  
 {  
 	 e d i t a b l e   v a r   e f f e c t N a m e   :   n a m e ;  
 	  
 	 e v e n t   O n G r a b ( )  
 	 { 	  
 	 	 i f   (   e f f e c t N a m e   ! =   ' '   )  
 	 	 {  
 	 	 	 D e s t r o y E f f e c t ( e f f e c t N a m e ) ;  
 	 	 	 P l a y E f f e c t S i n g l e ( e f f e c t N a m e ,   t h i s   ) ;  
 	 	 }  
 	 	 s u p e r . O n G r a b ( ) ;  
 	 }  
 	  
 	 e v e n t   O n P u t ( )  
 	 {  
 	 	 i f   (   e f f e c t N a m e   ! =   ' '   )  
 	 	 {  
 	 	 	 S t o p E f f e c t I f A c t i v e ( e f f e c t N a m e ) ;  
 	 	 }  
 	 	 s u p e r . O n P u t ( ) ;  
 	 }  
 }  
  
  
  
 c l a s s   W 3 U s a b l e I t e m   e x t e n d s   C I t e m E n t i t y  
 {  
 	 e d i t a b l e   v a r   i t e m T y p e   :   E U s a b l e I t e m T y p e ;  
 	 e d i t a b l e   v a r   b l o c k e d A c t i o n s   :   a r r a y < E I n p u t A c t i o n B l o c k > ;  
 	 v a r   w a s O n H i d d e n C a l l e d   :   b o o l ;  
 	  
 	 h i n t   i t e m T y p e   =   " K i n d   o f   a n i m a t i o n s   t o   b e   u s e d " ;  
 	 h i n t   b l o c k e d A c t i o n s   =   " L i s t   o f   a c t i o n s   b l o c k e d   w h e n   a c t i v e l y   u s i n g   t h i s   i t e m " ;  
 	  
 	 e v e n t   O n D e s t r o y e d ( )  
 	 {  
 	 	 i f   (   ! w a s O n H i d d e n C a l l e d   )  
 	 	 {  
 	 	 	 O n H i d d e n (   G e t P a r e n t E n t i t y ( )   ) ;  
 	 	 }  
 	 }  
 	 e v e n t   O n U s e d (   u s e d B y   :   C E n t i t y   )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 i f (   u s e d B y   = =   t h e P l a y e r   )  
 	 	 {  
 	 	 	 b l o c k e d A c t i o n s . P u s h B a c k (   E I A B _ P a r r y   ) ;  
 	 	 	 b l o c k e d A c t i o n s . P u s h B a c k (   E I A B _ C o u n t e r   ) ;  
 	 	 	  
 	 	 	 f o r (   i   =   0 ;   i   <   b l o c k e d A c t i o n s . S i z e ( ) ;   i   + =   1 )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . B l o c k A c t i o n (   b l o c k e d A c t i o n s [ i ] ,   ' U s a b l e I t e m '   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n H i d d e n (   h i d d e n B y   :   C E n t i t y   )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 w a s O n H i d d e n C a l l e d   =   t r u e ;  
 	 	  
 	 	 i f (   h i d d e n B y   = =   t h e P l a y e r   )  
 	 	 {  
 	 	 	 t h e P l a y e r . B l o c k A l l A c t i o n s (   ' U s a b l e I t e m ' ,   f a l s e   ) ;  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   S e t V i s i b i l i t y (   i s V i s i b l e   :   b o o l   )  
 	 {  
 	 	 v a r   c o m p s   :   a r r a y   < C C o m p o n e n t > ;  
 	 	 v a r   d C o m p   :   C D r a w a b l e C o m p o n e n t ;  
 	 	 v a r   i   :   i n t ;  
  
 	 	 c o m p s   =   G e t C o m p o n e n t s B y C l a s s N a m e (   ' C D r a w a b l e C o m p o n e n t '   ) ;  
 	 	  
 	 	 f o r (   i = 0 ;   i   <   c o m p s . S i z e   ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 d C o m p   =   ( C D r a w a b l e C o m p o n e n t ) c o m p s [ i ] ;  
 	 	 	  
 	 	 	 i f (   d C o m p   & &   d C o m p . G e t N a m e ( )   ! =   " s h a d o w _ c a p s u l e "   )  
 	 	 	 {  
 	 	 	 	 d C o m p . S e t V i s i b l e (   i s V i s i b l e   ) ; 	  
 	 	 	 } 	  
 	 	 }  
 	 }  
 }  
 	  
 c l a s s   W 3 L i g h t S o u r c e   e x t e n d s   W 3 U s a b l e I t e m  
 {  
 	 v a r   w o r l d N a m e   :   S t r i n g ;  
 	  
 	 e v e n t   O n U s e d (   u s e d B y   :   C E n t i t y   )  
 	 {  
 	 	 b l o c k e d A c t i o n s . P u s h B a c k (   E I A B _ H e a v y A t t a c k s   ) ;  
 	 	 b l o c k e d A c t i o n s . P u s h B a c k (   E I A B _ S p e c i a l A t t a c k H e a v y   ) ;  
 	 	  
 	 	 s u p e r . O n U s e d (   u s e d B y   ) ;  
 	 	  
 	 	 w o r l d N a m e   =     t h e G a m e . G e t W o r l d ( ) . G e t D e p o t P a t h ( ) ;  
 	 	 i f (   S t r F i n d F i r s t (   w o r l d N a m e ,   " b o b "   )   <   0   )  
 	 	 {  
 	 	 	 t h i s . P l a y E f f e c t (   ' l i g h t _ o n '   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h i s . P l a y E f f e c t (   ' l i g h t _ o n _ b o b '   ) ;  
 	 	 }  
 	 	  
 	 	 i f (   u s e d B y   = =   t h e P l a y e r   )  
 	 	 {  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ S i g n s ,   ' U s a b l e I t e m '   ) ;  
 	 	 	 / /   m o d B e t t e r T o r c h e s N e x t G e n  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ P a r r y ,   ' U s a b l e I t e m '   ) ;  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ C o u n t e r ,   ' U s a b l e I t e m '   ) ;  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ H e a v y A t t a c k s ,   ' U s a b l e I t e m '   ) ;  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ S p e c i a l A t t a c k H e a v y ,   ' U s a b l e I t e m '   ) ;  
 	 	 	 t h e P l a y e r . A d d T a g (   t h e G a m e . p a r a m s . T A G _ O P E N _ F I R E   ) ;  
 	 	 }  
 	 }  
  
 	 e v e n t   O n H i d d e n (   u s e d B y   :   C E n t i t y   )  
 	 {  
 	 	 i f (   u s e d B y   = =   t h e P l a y e r   )  
 	 	 {  
 	 	 	 t h e P l a y e r . R e m o v e T a g (   t h e G a m e . p a r a m s . T A G _ O P E N _ F I R E   ) ;  
 	 	 }  
 	 	  
 	 	 s u p e r . O n H i d d e n   (   u s e d B y   ) ;  
 	 	 t h i s . S t o p E f f e c t (   ' l i g h t _ o n '   ) ; 	  
 	 	 t h i s . S t o p E f f e c t (   ' l i g h t _ o n _ b o b '   ) ; 	  
 	 }  
 }  
  
 c l a s s   W 3 S h i e l d U s a b l e I t e m   e x t e n d s   W 3 U s a b l e I t e m  
 {  
 	 e d i t a b l e   v a r   f a c t A d d e d O n U s e   :   s t r i n g ;  
 	 e d i t a b l e   v a r   f a c t V a l u e   :   i n t ;  
 	 e d i t a b l e   v a r   f a c t T i m e V a l i d   :   i n t ;  
 	 e d i t a b l e   v a r   r e m o v e F a c t O n H i d e   :   b o o l ;  
 	  
 	 v a r   i   :   i n t ;  
 	  
 	 e v e n t   O n U s e d (   u s e d B y   :   C E n t i t y   )  
 	 {  
 	 	 f o r (   i   =   0 ;   i   <   b l o c k e d A c t i o n s . S i z e ( ) ;   i   + =   1 )  
 	 	 {  
 	 	 	 t h e P l a y e r . B l o c k A c t i o n (   b l o c k e d A c t i o n s [ i ] ,   ' U s a b l e I t e m '   ) ;  
 	 	 }  
 	 	 F a c t s A d d (   f a c t A d d e d O n U s e ,   f a c t V a l u e ,   f a c t T i m e V a l i d   ) ;  
 	 }  
 	  
 	 e v e n t   O n H i d d e n (   h i d d e n B y   :   C E n t i t y   )  
 	 {  
 	 	 i f (   r e m o v e F a c t O n H i d e   )  
 	 	 {  
 	 	 	 F a c t s R e m o v e (   f a c t A d d e d O n U s e   ) ; 	 	  
 	 	 }  
 	 }  
 }  
  
 c l a s s   W 3 Q u e s t U s a b l e I t e m   e x t e n d s   W 3 U s a b l e I t e m  
 {  
 	 e d i t a b l e   v a r   f a c t A d d e d O n U s e   :   s t r i n g ;  
 	 e d i t a b l e   v a r   f a c t V a l u e   :   i n t ;  
 	 e d i t a b l e   v a r   f a c t T i m e V a l i d   :   i n t ;  
 	 e d i t a b l e   v a r   r e m o v e F a c t O n H i d e   :   b o o l ;  
 	  
 	 e v e n t   O n U s e d (   u s e d B y   :   C E n t i t y   )  
 	 {  
 	 	 s u p e r . O n U s e d ( u s e d B y ) ;  
 	 	 F a c t s A d d (   f a c t A d d e d O n U s e ,   f a c t V a l u e ,   f a c t T i m e V a l i d   ) ;  
 	 }  
 	  
 	 e v e n t   O n H i d d e n (   h i d d e n B y   :   C E n t i t y   )  
 	 {  
 	 	 s u p e r . O n H i d d e n ( h i d d e n B y ) ;  
 	 	 i f   (   r e m o v e F a c t O n H i d e   )  
 	 	 {  
 	 	 	 F a c t s R e m o v e (   f a c t A d d e d O n U s e   ) ; 	 	  
 	 	 }  
 	 }  
 }  
  
 c l a s s   W 3 M e t e o r I t e m   e x t e n d s   W 3 Q u e s t U s a b l e I t e m  
 {  
 	 p r i v a t e   v a r   c o l l i s i o n G r o u p s   :   a r r a y < n a m e > ;  
 	  
 	 e d i t a b l e   v a r   m e t e o r R e s o u r c e N a m e   	 :   n a m e ;  
 	  
 	 d e f a u l t   m e t e o r R e s o u r c e N a m e   =   ' c i r i _ m e t e o r ' ;  
 	 d e f a u l t   i t e m T y p e   =   U I _ M e t e o r ;  
 	  
 	 p r i v a t e   v a r   m e t e o r E n t i t y T e m p l a t e   :   C E n t i t y T e m p l a t e ;  
 	  
 	 e v e n t   O n S p a w n e d (   s p a w n D a t a   :   S E n t i t y S p a w n D a t a   )  
 	 {  
 	 	 s u p e r . O n S p a w n e d ( s p a w n D a t a ) ;  
 	 	 m e t e o r E n t i t y T e m p l a t e   =   ( C E n t i t y T e m p l a t e ) L o a d R e s o u r c e ( m e t e o r R e s o u r c e N a m e ) ;  
 	 	  
 	 	 c o l l i s i o n G r o u p s . P u s h B a c k ( ' T e r r a i n ' ) ;  
 	 	 c o l l i s i o n G r o u p s . P u s h B a c k ( ' S t a t i c ' ) ;  
 	 }  
 	  
 	 e v e n t   O n U s e d (   u s e d B y   :   C E n t i t y   )  
 	 {  
 	 	 v a r   u s e r P o s i t i o n   :   V e c t o r ;  
 	 	 v a r   m e t e o r P o s i t i o n   :   V e c t o r ;  
 	 	 v a r   u s e r R o t a t i o n   :   E u l e r A n g l e s ;  
 	 	  
 	 	 v a r   m e t e o r E n t i t y   :     W 3 M e t e o r P r o j e c t i l e ;  
 	 	  
 	 	 s u p e r . O n U s e d (   u s e d B y   ) ;  
 	 	  
 	 	 i f   (   u s e d B y   = =   t h e P l a y e r   )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . I s I n I n t e r i o r ( )   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y H u d M e s s a g e ( G e t L o c S t r i n g B y K e y E x t (   " m e n u _ c a n n o t _ p e r f o r m _ a c t i o n _ h e r e "   ) ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 u s e r P o s i t i o n   =   u s e d B y . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 u s e r R o t a t i o n   =   u s e d B y . G e t W o r l d R o t a t i o n ( ) ;  
 	 	  
 	 	  
 	 	 m e t e o r P o s i t i o n   =   u s e r P o s i t i o n ;  
 	 	 m e t e o r P o s i t i o n . Z   + =   5 0 ;  
 	 	  
 	 	 m e t e o r E n t i t y   =   ( W 3 M e t e o r P r o j e c t i l e ) t h e G a m e . C r e a t e E n t i t y ( m e t e o r E n t i t y T e m p l a t e ,   m e t e o r P o s i t i o n ,   u s e r R o t a t i o n ) ;  
 	 	  
 	 	  
 	 	 m e t e o r E n t i t y . I n i t ( N U L L ) ;  
 	 	 m e t e o r E n t i t y . d e c r e a s e P l a y e r D m g B y   =   0 . 7 ;  
 	 	 m e t e o r E n t i t y . S h o o t P r o j e c t i l e A t P o s i t i o n (   m e t e o r E n t i t y . p r o j A n g l e ,   m e t e o r E n t i t y . p r o j S p e e d ,   u s e r P o s i t i o n ,   5 0 0 ,   c o l l i s i o n G r o u p s   ) ;  
 	 }  
 }  
  
 c l a s s   W 3 E y e O f L o k i   e x t e n d s   W 3 Q u e s t U s a b l e I t e m  
 {  
 	 e d i t a b l e   v a r   e n v i r o n m e n t   :   n a m e ;  
 	 h i n t   e n v i r o n m e n t   =   " E n v i r o n m e n t   t o   a c t i v a t e   w h e n   m a s k   i s   p u t   w h i l e   a c t i v e . " ;  
 	 e d i t a b l e   v a r   e f f e c t   :   C N a m e ;  
 	 h i n t   e f f e c t   =   " E f f e c t   t o   p l a y   w h e n   m a s k   i s   p u t   w h i l e   a c t i v e . " ;  
 	 e d i t a b l e   v a r   a c t i v e W h e n F a c t   :   C N a m e ;  
 	 h i n t   a c t i v e W h e n F a c t   =   " M a s k   i s   a c t i v e   ( p l a y e s   f x   w h e n   u s e d )   w h e n   t h i s   f a c t   i s   t r u e " ;  
 	 e d i t a b l e   v a r   s o u n d O n S t a r t   :   n a m e ;  
 	 h i n t   s o u n d O n S t a r t   =   " S o u n d   t o   p l a y   w h e n   m a s k   i s   p u t " ;  
 	 e d i t a b l e   v a r   s o u n d O n S t o p   :   n a m e ;  
 	 h i n t   s o u n d O n S t o p   =   " S o u n d   t o   p l a y   w h e n   m a s k   i s   h i d d e n " ;  
  
 	 v a r   e n v I D   :   i n t ;  
 	 v a r   a c t i v e   :   b o o l ;  
 	  
 	 d e f a u l t   i t e m T y p e   =   U I _ M a s k ;  
 	  
 	 e v e n t   O n U s e d (   u s e d B y   :   C E n t i t y   )  
 	 {  
 	 	 v a r   e n v i r o n m e n t R e s   :   C E n v i r o n m e n t D e f i n i t i o n ;  
 	  
 	 	  
 	 	  
 	 	  
 	 	 b l o c k e d A c t i o n s . P u s h B a c k (   E I A B _ R o l l   ) ;  
 	 	  
 	 	 b l o c k e d A c t i o n s . P u s h B a c k (   E I A B _ R u n A n d S p r i n t   ) ;  
 	 	  
 	 	 b l o c k e d A c t i o n s . P u s h B a c k (   E I A B _ P a r r y   ) ;  
 	 	  
 	 	 b l o c k e d A c t i o n s . P u s h B a c k (   E I A B _ C o u n t e r   ) ;  
 	 	 b l o c k e d A c t i o n s . P u s h B a c k (   E I A B _ H e a v y A t t a c k s   ) ;  
 	 	 b l o c k e d A c t i o n s . P u s h B a c k (   E I A B _ S p e c i a l A t t a c k H e a v y   ) ;  
 	 	  
 	 	  
 	 	 b l o c k e d A c t i o n s . P u s h B a c k (   E I A B _ S l i d e   ) ;  
 	  
 	 	 s u p e r . O n U s e d (   u s e d B y   ) ;  
 	 	  
 	 	 i f (   F a c t s Q u e r y S u m (   a c t i v e W h e n F a c t   )   )  
 	 	 {  
 	 	 	 a c t i v e   =   t r u e ;  
 	 	 	  
 	 	 	 t h e P l a y e r . S o u n d E v e n t (   s o u n d O n S t a r t   ) ;  
 	 	 	  
 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . P l a y E f f e c t (   e f f e c t   ) ;  
 	 	 	  
 	 	 	 e n v i r o n m e n t R e s   =   ( C E n v i r o n m e n t D e f i n i t i o n ) L o a d R e s o u r c e (   e n v i r o n m e n t ,   t r u e   ) ;  
 	 	 	 e n v I D   =   A c t i v a t e E n v i r o n m e n t D e f i n i t i o n (   e n v i r o n m e n t R e s ,   1 0 0 0 ,   1 ,   1 . f   ) ;  
 	 	 	 t h e G a m e . S e t E n v i r o n m e n t I D ( e n v I D ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n H i d d e n (   h i d d e n B y   :   C E n t i t y   )  
 	 {  
 	 	 i f (   a c t i v e   )    
 	 	 {  
 	 	 	 a c t i v e   =   f a l s e ;  
 	 	 	  
 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . S t o p E f f e c t (   e f f e c t   ) ;  
  
 	 	 	 D e a c t i v a t e E n v i r o n m e n t (   e n v I D ,   1   ) ;  
 	 	 	  
 	 	 	 t h e P l a y e r . S o u n d E v e n t (   s o u n d O n S t o p   ) ;  
 	 	 	  
 	 	 }  
 	 	 s u p e r . O n H i d d e n (   h i d d e n B y   ) ; 	  
 	 }  
 }  
  
 c l a s s   W 3 M a g i c O i l L a m p   e x t e n d s   W 3 Q u e s t U s a b l e I t e m    
 {  
 	 e v e n t   O n U s e d (   u s e d B y   :   C E n t i t y   )  
 	 {  
 	 	 s u p e r . O n U s e d   (   u s e d B y   ) ;  
 	 	 t h i s . P l a y E f f e c t (   ' l i g h t _ o n '   ) ;  
 	 	 t h e G a m e . H a p t i c S t a r t (   " h a p t i c _ l a m p _ s t a r t "   ) ;  
 	 }  
 	 e v e n t   O n H i d d e n (   u s e d B y   :   C E n t i t y   )  
 	 {  
 	 	 s u p e r . O n H i d d e n   (   u s e d B y   ) ;  
 	 	 t h i s . S t o p E f f e c t (   ' l i g h t _ o n '   ) ;  
 	 	 t h e G a m e . H a p t i c S t a r t (   " h a p t i c _ l a m p _ s t o p "   ) ;  
 	 }  
 	  
 }  
 c l a s s   W 3 P o t e s t a q u i s i t o r   e x t e n d s   W 3 Q u e s t U s a b l e I t e m  
 {  
 	 e d i t a b l e   v a r   d e t e c t a b l e T a g   :   n a m e ;  
 	 h i n t   d e t e c t a b l e T a g   =   " T a g   f o r   C E n t i t i e s   t h a t   c a u s e   a   r e a c t i o n " ;  
 	 e d i t a b l e   v a r   d e t e c t a b l e R a n g e   :   f l o a t ;  
 	 d e f a u l t   d e t e c t a b l e R a n g e   =   4 0 . 0 ;  
 	 h i n t   d e t e c t a b l e R a n g e   =   " R a n g e   a t   w h i c h   r e a c t i o n s   s t a r t .   S c a l e s   a t   q u a r t e r s " ;  
 	 e d i t a b l e   v a r   c l o s e s t R a n g e   :   f l o a t ;  
 	 d e f a u l t   c l o s e s t R a n g e   =   2 . 0 ;  
 	 h i n t   c l o s e s t R a n g e   =   " R a n g e   a t   w h i c h   f i n a l   r e a c t i o n   s t a r t s " ;  
 	 e d i t a b l e   v a r   p o t e s t a q u i s i t o r F a c t   :   s t r i n g ;  
 	 d e f a u l t   p o t e s t a q u i s i t o r F a c t   =   " p o t e s t a q u i s i t o r L e v e l " ;  
 	 h i n t   p o t e s t a q u i s i t o r F a c t   =   " F a c t   n a m e   f o r   d e t e c t i o n .   I s   r e m o v e d   w h e n   d e t e c t i o n   i s   s t o p p e d " ;  
 	 e d i t a b l e   v a r   s o u n d E f f e c t T y p e   :   E F o c u s M o d e S o u n d E f f e c t T y p e ;  
 	 h i n t   s o u n d E f f e c t T y p e   =   " S o u n d   e f f e c t   t o   b e   p l a y e d   o n   d e t e c t e d   C E n t i t i e s " ;  
 	 e d i t a b l e   v a r   e f f e c t   :   n a m e ;  
 	 h i n t   e f f e c t   =   " E f f e c t   t o   p l a y   o n   p o t e s t a q u i s i t o r   w h e n   i t   i s   t a k e n   o u t . " ; 	  
 	  
 	 v a r   r e g i s t e r e d A n o m a l i e s   :   a r r a y <   C G a m e p l a y E n t i t y   > ;  
 	 v a r   p r e v i o u s C l o s e s t A n o m a l y   :   C G a m e p l a y E n t i t y ;  
 	  
 	 e v e n t   O n U s e d (   u s e d B y   :   C E n t i t y   )  
 	 {  
 	 	 t h i s . P l a y E f f e c t (   e f f e c t   ) ;  
 	 	 S t a r t S c a n n i n g A n o m a l i e s ( t r u e ) ;  
 	 	 s u p e r . O n U s e d ( u s e d B y ) ;  
 	 }  
 	  
 	 e v e n t   O n H i d d e n (   h i d d e n B y   :   C E n t i t y   )  
 	 {  
 	 	 t h i s . S t o p E f f e c t (   e f f e c t   ) ;  
 	 	 S t a r t S c a n n i n g A n o m a l i e s ( f a l s e ) ;  
 	 	 s u p e r . O n H i d d e n ( h i d d e n B y ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   S t a r t S c a n n i n g A n o m a l i e s   ( s h o u l d S t a r t : b o o l )  
 	 {  
 	 	 i f   ( s h o u l d S t a r t )  
 	 	 {  
 	 	 	 r e g i s t e r e d A n o m a l i e s . C l e a r ( ) ;  
 	 	 	 S c a n n i n g A n o m a l i e s   ( 0 . 0 ) ;  
 	 	 	 A d d T i m e r ( ' S c a n n i n g A n o m a l i e s ' , 0 . 5 , t r u e ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 R e m o v e T i m e r ( ' S c a n n i n g A n o m a l i e s ' ) ;  
 	 	 	 S t o p S c a n n i n g A n o m a l i e s ( ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   t i m e r   f u n c t i o n   S c a n n i n g A n o m a l i e s   (   d t   :   f l o a t ,   o p t i o n a l   i d   :   i n t )  
 	 {  
 	 	 v a r   i ,   c l o s e s t A n o m a l y I n d e x ,   r e g i s t e r e d A n o m a l i e s S i z e ,   f o u n d A n o m a l i e s S i z e   :   i n t ;  
 	 	 v a r   f o u n d A n o m a l i e s   :   a r r a y <   C G a m e p l a y E n t i t y   > ;  
 	 	 v a r   f o u n d A n o m a l i e s D i s t a n c e s   :   a r r a y <   f l o a t   > ;  
 	 	 v a r   c u r r e n t C l o s e s t A n o m a l y   :   C G a m e p l a y E n t i t y ;  
 	 	 v a r   d i s t   :   f l o a t ;  
 	 	  
 	 	  
 	 	 F i n d G a m e p l a y E n t i t i e s I n R a n g e ( f o u n d A n o m a l i e s ,   t h e P l a y e r ,   d e t e c t a b l e R a n g e ,   1 0 0 0 0 0 ,   d e t e c t a b l e T a g ) ;  
 	 	  
 	 	 f o u n d A n o m a l i e s S i z e   =   f o u n d A n o m a l i e s . S i z e ( ) ;  
 	 	  
 	 	 f o r   (   i   =   0 ;   i   <   f o u n d A n o m a l i e s S i z e ;   i   + =   1   )  
 	 	 {  
 	 	 	 i f ( ! r e g i s t e r e d A n o m a l i e s . C o n t a i n s ( f o u n d A n o m a l i e s [ i ] ) )  
 	 	 	 	 {  
 	 	 	 	 	 r e g i s t e r e d A n o m a l i e s . P u s h B a c k ( f o u n d A n o m a l i e s [ i ] ) ;  
 	 	 	 	 	 f o u n d A n o m a l i e s [ i ] . S e t F o c u s M o d e S o u n d E f f e c t T y p e ( s o u n d E f f e c t T y p e ) ;  
 	 	 	 	 	 f o u n d A n o m a l i e s [ i ] . S o u n d E v e n t (   " q u _ n m l _ 4 0 1 _ v a c u u m _ d e t e c t o r _ l o o p _ s t a r t "   ) ;  
 	 	 	 	 }    
 	 	 }  
 	 	  
 	 	  
 	 	 f o r   (   i   =   0 ;   i   <   r e g i s t e r e d A n o m a l i e s S i z e ;   i   + =   1   )  
 	 	 {  
 	 	 	 i f   ( ! r e g i s t e r e d A n o m a l i e s [ i ] . H a s T a g ( d e t e c t a b l e T a g ) )    
 	 	 	 {  
 	 	 	 	 r e g i s t e r e d A n o m a l i e s . R e m o v e ( r e g i s t e r e d A n o m a l i e s [ i ] ) ;  
 	 	 	 }  
 	 	 }  
  
 	 	 r e g i s t e r e d A n o m a l i e s S i z e   =   r e g i s t e r e d A n o m a l i e s . S i z e ( ) ;  
 	 	 f o u n d A n o m a l i e s D i s t a n c e s . R e s i z e (   r e g i s t e r e d A n o m a l i e s S i z e   ) ;  
 	 	 	 	  
 	 	 i f   (   r e g i s t e r e d A n o m a l i e s S i z e   >   0   )  
 	 	 {  
 	 	 	  
 	 	 	 f o r   (   i   =   r e g i s t e r e d A n o m a l i e s S i z e   - 1 ;   i   >   - 1 ;   i   - =   1   )  
 	 	 	 { 	  
 	 	 	 	 i f   ( ! r e g i s t e r e d A n o m a l i e s [ i ] . H a s T a g ( d e t e c t a b l e T a g ) )    
 	 	 	 	 {  
 	 	 	 	 	 r e g i s t e r e d A n o m a l i e s . R e m o v e ( r e g i s t e r e d A n o m a l i e s [ i ] ) ;  
 	 	 	 	 }  
 	 	 	 } 	  
 	 	 	 f o u n d A n o m a l i e s S i z e   =   f o u n d A n o m a l i e s . S i z e ( ) ;  
 	 	 	  
 	 	 	  
 	 	 	 f o r   (   i   =   0 ;   i   <   r e g i s t e r e d A n o m a l i e s S i z e ;   i   + =   1   )  
 	 	 	 {  
 	 	 	 	 f o u n d A n o m a l i e s D i s t a n c e s [ i ]   =   V e c D i s t a n c e (   r e g i s t e r e d A n o m a l i e s [ i ] . G e t W o r l d P o s i t i o n ( ) ,   t h i s . G e t W o r l d P o s i t i o n ( )   ) ;  
 	 	 	 }  
 	 	 	 c l o s e s t A n o m a l y I n d e x   =   A r r a y F i n d M i n F (   f o u n d A n o m a l i e s D i s t a n c e s   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 c u r r e n t C l o s e s t A n o m a l y   =   r e g i s t e r e d A n o m a l i e s [ c l o s e s t A n o m a l y I n d e x ] ;  
  
 	 	 	 d i s t   =   f o u n d A n o m a l i e s D i s t a n c e s [ c l o s e s t A n o m a l y I n d e x ] ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 i f   ( p r e v i o u s C l o s e s t A n o m a l y . G e t N a m e ( )   ! =   c u r r e n t C l o s e s t A n o m a l y . G e t N a m e ( ) )    
 	 	 	 {  
 	 	 	 	 p r e v i o u s C l o s e s t A n o m a l y . S t o p A l l E f f e c t s ( ) ;  
 	 	 	 	 p r e v i o u s C l o s e s t A n o m a l y . S o u n d E v e n t (   " q u _ n m l _ 4 0 1 _ v a c u u m _ d e t e c t o r _ i n t e n s i t y _ 1 "   ) ;  
 	 	 	 	 F a c t s R e m o v e ( p o t e s t a q u i s i t o r F a c t ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   ( d i s t   <   d e t e c t a b l e R a n g e )  
 	 	 	 {  
 	 	 	 	 i f   ( d i s t   >   d e t e c t a b l e R a n g e * 0 . 7 5 )  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( F a c t s Q u e r y S u m ( p o t e s t a q u i s i t o r F a c t )   ! =   1 )   F a c t s S e t ( p o t e s t a q u i s i t o r F a c t , 1 , - 1 ) ;  
 	 	 	 	 	 c u r r e n t C l o s e s t A n o m a l y . S o u n d E v e n t (   " q u _ n m l _ 4 0 1 _ v a c u u m _ d e t e c t o r _ i n t e n s i t y _ 1 "   ) ;  
 	 	 	 	 	 t h i s . U p d a t e E f f e c t ( ' s i g n a l _ 0 1 ' ) ;  
 	 	 	 	  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   ( d i s t   >   d e t e c t a b l e R a n g e * 0 . 5 0 )  
 	 	 	 	 { 	  
 	 	 	 	 	 i f   ( F a c t s Q u e r y S u m ( p o t e s t a q u i s i t o r F a c t )   ! =   2 )   F a c t s S e t ( p o t e s t a q u i s i t o r F a c t , 2 , - 1 ) ;  
 	 	 	 	 	 c u r r e n t C l o s e s t A n o m a l y . S o u n d E v e n t (   " q u _ n m l _ 4 0 1 _ v a c u u m _ d e t e c t o r _ i n t e n s i t y _ 2 "   ) ;  
 	 	 	 	 	 t h i s . U p d a t e E f f e c t ( ' s i g n a l _ 0 2 ' ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   ( d i s t   >   d e t e c t a b l e R a n g e * 0 . 2 5 )  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( F a c t s Q u e r y S u m ( p o t e s t a q u i s i t o r F a c t )   ! =   3 )   F a c t s S e t ( p o t e s t a q u i s i t o r F a c t , 3 , - 1 ) ;  
 	 	 	 	 	 c u r r e n t C l o s e s t A n o m a l y . S o u n d E v e n t (   " q u _ n m l _ 4 0 1 _ v a c u u m _ d e t e c t o r _ i n t e n s i t y _ 3 "   ) ;  
 	 	 	 	 	 t h i s . P l a y E f f e c t (   ' s i g n a l _ 0 3 '   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   ( d i s t   >   c l o s e s t R a n g e )  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( F a c t s Q u e r y S u m ( p o t e s t a q u i s i t o r F a c t )   ! =   4 )   F a c t s S e t ( p o t e s t a q u i s i t o r F a c t , 4 , - 1 ) ;  
 	 	 	 	 	 c u r r e n t C l o s e s t A n o m a l y . S o u n d E v e n t (   " q u _ n m l _ 4 0 1 _ v a c u u m _ d e t e c t o r _ i n t e n s i t y _ 4 "   ) ;  
 	 	 	 	 	 t h i s . U p d a t e E f f e c t ( ' s i g n a l _ 0 4 ' ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( F a c t s Q u e r y S u m ( p o t e s t a q u i s i t o r F a c t )   ! =   5 )   F a c t s S e t ( p o t e s t a q u i s i t o r F a c t , 5 , - 1 ) ;  
 	 	 	 	 	 c u r r e n t C l o s e s t A n o m a l y . S o u n d E v e n t (   " q u _ n m l _ 4 0 1 _ v a c u u m _ d e t e c t o r _ i n t e n s i t y _ 5 "   ) ;  
 	 	 	 	 	 t h i s . U p d a t e E f f e c t ( ' s i g n a l _ a c t i v a t e d ' ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   F a c t s D o e s E x i s t   (   p o t e s t a q u i s i t o r F a c t   ) )  
 	 	 	 	 {  
 	 	 	 	 	 F a c t s R e m o v e   (   p o t e s t a q u i s i t o r F a c t   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 p r e v i o u s C l o s e s t A n o m a l y   =   c u r r e n t C l o s e s t A n o m a l y ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e E f f e c t   ( e f f e c t N a m e : n a m e )  
 	 {  
 	 	 t h i s . S t o p A l l E f f e c t s ( ) ;  
 	 	 t h i s . P l a y E f f e c t (   e f f e c t N a m e   ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   S t o p S c a n n i n g A n o m a l i e s ( )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   s o u n d O f f E f f e c t T y p e   :   E F o c u s M o d e S o u n d E f f e c t T y p e ;  
  
 	 	 f o r   (   i   =   0 ;   i   <   r e g i s t e r e d A n o m a l i e s . S i z e ( ) ;   i   + =   1   )  
 	 	 {  
 	 	 	 s o u n d O f f E f f e c t T y p e   =   F M S E T _ N o n e ;  
 	 	 	 r e g i s t e r e d A n o m a l i e s [ i ] . S e t F o c u s M o d e S o u n d E f f e c t T y p e ( s o u n d O f f E f f e c t T y p e ) ;  
 	 	 	 r e g i s t e r e d A n o m a l i e s [ i ] . S o u n d E v e n t (   " q u _ n m l _ 4 0 1 _ v a c u u m _ d e t e c t o r _ l o o p _ s t o p "   ) ;  
 	 	 }  
 	 	  
 	 	 F a c t s R e m o v e ( p o t e s t a q u i s i t o r F a c t ) ;  
 	 }  
 }  
  
  
 c l a s s   W 3 H o r n v a l H o r n   e x t e n d s   W 3 Q u e s t U s a b l e I t e m  
 {  
 	  
 	  
 	 e d i t a b l e   v a r   r a n g e   :   f l o a t ;  
 	 e d i t a b l e   v a r   d u r a t i o n   :   f l o a t ;  
 	  
 	 d e f a u l t   i t e m T y p e   =   U I _ H o r n ;  
 	  
 	 e v e n t   O n U s e d (   u s e d B y   :   C E n t i t y   )  
 	 {  
 	 	 s u p e r . O n U s e d ( u s e d B y ) ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 A d d T i m e r ( ' S i r e n S t u f f ' , 0 . 5 f , f a l s e ) ;  
 	 } 	  
 	  
 	  
 	 t i m e r   f u n c t i o n   S i r e n S t u f f ( d t : f l o a t , i d : i n t )  
 	 {  
 	 	 v a r   i   	 	 	 	 :   i n t ;  
 	 	 v a r   a c t o r s A r o u n d   	 :   a r r a y < C A c t o r > ;  
 	 	 v a r   a c t o r   	 	 	 :   C A c t o r ;  
 	 	 v a r   p a r a m s 	 	 	 :   S C u s t o m E f f e c t P a r a m s ;  
 	 	  
 	 	 p a r a m s . e f f e c t T y p e   	 =   E E T _ H e a v y K n o c k d o w n ;  
 	 	 p a r a m s . c r e a t o r   	 	 =   t h e P l a y e r ;  
 	 	  
 	 	 a c t o r s A r o u n d   =   G e t A c t o r s I n R a n g e (   t h e P l a y e r ,   r a n g e ,   - 1 ,   ' ' ,   t r u e   ) ;  
 	 	 f o r (   i   =   0 ;   i   <   a c t o r s A r o u n d . S i z e ( ) ;   i   + =   1   )  
 	 	 {  
 	 	 	 a c t o r   =   a c t o r s A r o u n d [   i   ] ;  
 	 	 	 i f (   a c t o r . H a s A b i l i t y ( ' m o n _ s i r e n _ b a s e ' )   )  
 	 	 	 { 	  
 	 	 	 	 p a r a m s . d u r a t i o n   	 =   d u r a t i o n   +   R a n d F ( ) *   2 ;  
 	 	 	 	 a c t o r . A d d E f f e c t C u s t o m (   p a r a m s   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 }  
  
  
 c l a s s   W 3 F i e n d L u r e   e x t e n d s   W 3 Q u e s t U s a b l e I t e m  
 {  
 	 e d i t a b l e   v a r   r a n g e   	 	 	 :   f l o a t ;  
 	 e d i t a b l e   v a r   d u r a t i o n   	 	 :   f l o a t ;  
 	 e d i t a b l e   v a r   c l o u d E n t i t y   	 :   C E n t i t y T e m p l a t e ;  
 	  
 	 e v e n t   O n U s e d (   u s e d B y   :   C E n t i t y   )  
 	 {  
 	 	 v a r   l _ c l o u d E n t i t y   	 :   C E n t i t y ;  
 	 	 v a r   l _ d e s t r u c t 	 	 :   W 3 D e s t r u c t S e l f E n t i t y ;  
 	 	  
 	 	 s u p e r . O n U s e d ( u s e d B y ) ;  
 	 	  
 	 	 l _ c l o u d E n t i t y   =   t h e G a m e . C r e a t e E n t i t y (   c l o u d E n t i t y ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( ) ,   t h e P l a y e r . G e t W o r l d R o t a t i o n ( )   ) ;  
 	 	  
 	 	 l _ d e s t r u c t   =   ( W 3 D e s t r u c t S e l f E n t i t y )   l _ c l o u d E n t i t y ; 	 	  
 	 	 i f (   l _ d e s t r u c t   )  
 	 	 {  
 	 	 	 l _ d e s t r u c t . S e t T i m e r (   d u r a t i o n   ) ;  
 	 	 }  
 	 	  
 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . C r e a t e R e a c t i o n E v e n t I f P o s s i b l e (   l _ c l o u d E n t i t y ,   ' B i e s L u r e ' ,   d u r a t i o n ,   r a n g e ,   1 ,   - 1 ,   t r u e ,   t r u e   ) ;  
 	 }  
 }  
 