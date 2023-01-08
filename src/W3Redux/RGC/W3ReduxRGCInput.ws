/ * *  
   *   e x t e n s i o n   o f   C P l a y e r I n p u t   m e a n t   t o   c o m p a r t m e n t a l i z e   t h e   d r a s t i c   c h a n g e s   W 3 R e d u x R G C   m a k e s   t o   p l a y e r I n p u t . w s  
   *   w i t h   t h e   p u r p o s e   o f   e a s i e r   m e r g i n g   o f   t h e   f i l e   w i t h   o t h e r   m o d s .  
   *  
   *   T h i s   c l a s s   e x p l i c i t l y   a l t e r s   t h e   b e h a v i o r   o f   t h e   f o l l o w i n g   b u t t o n s :  
   *   A ,   B ,   X ,   Y ,   L B ,   R B ,   R T ,   D P A D   U P ,   D P A D   D O W N  
   *   O t h e r   m o d s   t h a t   t r y   t o   r e a c t   t o   t h e s e   i n p u t s   m a y   n o t   s e e   t h e   i n p u t   a t   a l l ! ! !  
   *   I t   i s   r e c o m m e n d e d   t o   n o t   u s e   a n y   o t h e r   c o n t r o l   m o d s   t h a t   m a k e   u s e   o f   t h e s e   b u t t o n s  
   *   A u t h o r :   A d a m   S u n d e r m a n  
   * /  
  
   c l a s s   W 3 R e d u x R G C I n p u t   e x t e n d s   C P l a y e r I n p u t  
   {  
 	 p u b l i c   f u n c t i o n   I n i t i a l i z e ( i s F r o m L o a d   :   b o o l ,   o p t i o n a l   p r e v i o u s I n p u t   :   C P l a y e r I n p u t )  
 	 {  
 	 	 / / l e t   V a n i l l a   I n p u t   i n i t i a l i z e   w i t h   s a m e   p a r a m e t e r s  
 	 	 s u p e r . I n i t i a l i z e ( i s F r o m L o a d ,   p r e v i o u s I n p u t ) ;  
  
 	 	 / / w e   n e v e r   a l l o w   a l t   s i g n   c a s t i n g  
 	 	 a l t S i g n C a s t i n g   =   f a l s e ;  
  
 	 	 / / r e g i s t e r   l i s t e n e r s   f o r   n e w   c o m m a n d s   a v a i l a b l e   i n   R G C  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n R G C R e a l t i m e M o d i f i e r ' ,   ' R G C _ R e a l t i m e M o d i f i e r '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n R G C C a s t I g n i ' ,   ' R G C _ C a s t I g n i '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n R G C C a s t A a r d ' ,   ' R G C _ C a s t A a r d '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n R G C C a s t Q u e n ' ,   ' R G C _ C a s t Q u e n '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n R G C C a s t Y r d e n ' ,   ' R G C _ C a s t Y r d e n '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n R G C C a s t A x i i ' ,   ' R G C _ C a s t A x i i '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n R G C C r o s s B o w ' ,   ' R G C _ C r o s s B o w '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n R G C C r o s s B o w H o l d ' ,   ' R G C _ C r o s s B o w H o l d '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n R G C E q u i p Q u i c k I t e m ' ,   ' R G C _ E q u i p Q u i c k I t e m '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n R G C E q u i p B o m b ' ,   ' R G C _ E q u i p B o m b '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n R G C N e x t B o l t ' ,   ' R G C _ N e x t B o l t _ V 2 '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n R G C I n f i n i t e B o l t ' ,   ' R G C _ I n f i n i t e B o l t ' ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n R G C S p a w n H o r s e ' ,   ' R G C _ S p a w n H o r s e ' ) ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   R G C _ C a s t S i g n ( s i g n   :   E S i g n T y p e )   :   b o o l  
 	 {  
 	 	 / / d e c l a r e   v a r s  
 	 	 v a r   s i g n S k i l l   :   E S k i l l ;  
  
 	 	 / / c o n v e r t   s i g n   e n u m e r a t i o n   i n t o   a c t u a l   W i t c h e r   P l a y e r   s k i l l  
 	 	 s i g n S k i l l   =   S i g n E n u m T o S k i l l E n u m (   s i g n   ) ;  
  
 	 	 / / v a l i d a t e   s k i l l   i s   n o t   u n d e f i n e d   d e f i n e d  
 	 	 i f (   s i g n S k i l l   = =   S _ S U n d e f i n e d   )  
 	 	 {  
 	 	 	 / / U h   o h  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 / / i m m e d i a t e l y   e q u i p   t h e   d e s i r e d   s i g n  
 	 	 G e t W i t c h e r P l a y e r ( ) . S e t E q u i p p e d S i g n ( s i g n ) ;  
  
 	 	 / / c a n   c a s t   v a l i d a t i o n  
 	 	 i f (   ! I s A c t i o n A l l o w e d ( E I A B _ S i g n s )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ S i g n s ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 i f   (   t h e P l a y e r . I s H o l d i n g I t e m I n L H a n d ( )   & &   t h e P l a y e r . I s U s a b l e I t e m L B l o c k e d ( )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ U n d e f i n e d ,   f a l s e ,   f a l s e ,   t r u e ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 / / s k i l l   v a l i d a t i o n  
 	 	 i f ( ! t h e P l a y e r . C a n U s e S k i l l ( s i g n S k i l l ) )  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ S i g n s ,   f a l s e ,   f a l s e ,   t r u e ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 i f ( ! t h e P l a y e r . H a s S t a m i n a T o U s e S k i l l (   s i g n S k i l l ,   f a l s e   )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . S o u n d E v e n t ( " g u i _ n o _ s t a m i n a " ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 / / V a l i d a t e d .   C a s t   S i g n !  
 	 	 t h e P l a y e r . S e t u p C o m b a t A c t i o n (   E B A T _ C a s t S i g n ,   B S _ P r e s s e d   ) ;  
 	 	 r e t u r n   t r u e ;  
 	 }  
  
 	 e v e n t   O n R G C R e a l t i m e M o d i f i e r ( a c t i o n   :   S I n p u t A c t i o n )  
 	 {  
 	 	 / / R G C   d o e s n ' t   a f f e c t   C i r i   a n d   i s   o n l y   a p p l i c a b l e   t o   g a m e p a d   u s e r s  
 	 	 i f ( t h e P l a y e r . I s C i r i ( )   | |   ! t h e I n p u t . L a s t U s e d G a m e p a d ( ) )  
 	 	 {  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . R G C _ S e t I n R e a l t i m e E q u i p C a s t M o d e ( f a l s e ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 {  
 	 	 	 / / r e a l t i m e   m o d i f i e r   w a s   j u s t   p r e s s e d .   T h i s   f l a g   i s   u t i l i z e d   b y   m o s t   e v e n t s   t o   a l l o w   r e a l t i m e  
 	 	 	 / / s i g n   c a s t i n g   a n d   i t e m   s e l e c t i o n   w i t h o u t   t h e   r a d i a l   m e n u  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . R G C _ S e t I n R e a l t i m e E q u i p C a s t M o d e ( t r u e ) ;  
 	 	 }  
 	 	 e l s e   i f ( I s R e l e a s e d ( a c t i o n ) )  
 	 	 {  
 	 	 	 / / r e a l t i m e   m o d i f i e r   w a s   j u s t   r e l e a s e d .   B a c k   t o   d e f a u l t   a c t i o n s  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . R G C _ S e t I n R e a l t i m e E q u i p C a s t M o d e ( f a l s e ) ;  
 	 	 }  
 	 }  
  
 	 e v e n t   O n R G C C a s t I g n i ( a c t i o n   :   S I n p u t A c t i o n )  
 	 {  
 	 	 / / R G C   d o e s n ' t   a f f e c t   C i r i   a n d   i s   o n l y   a p p l i c a b l e   t o   g a m e p a d   u s e r s  
 	 	 i f ( t h e P l a y e r . I s C i r i ( )   | |   ! t h e I n p u t . L a s t U s e d G a m e p a d ( ) )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 / / m u s t   h a v e   r e a l t i m e   m o d i f i e r   a c t i v e  
 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( ) )  
 	 	 {  
 	 	 	 / / m a k e   s u r e   a c t i o n   i s   p r e s s e d  
 	 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 	 {  
 	 	 	 	 / / c a s t   i g n i  
 	 	 	 	 R G C _ C a s t S i g n ( S T _ I g n i ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 e v e n t   O n R G C C a s t A a r d ( a c t i o n   :   S I n p u t A c t i o n )  
 	 {  
 	 	 / / R G C   d o e s n ' t   a f f e c t   C i r i   a n d   i s   o n l y   a p p l i c a b l e   t o   g a m e p a d   u s e r s  
 	 	 i f ( t h e P l a y e r . I s C i r i ( )   | |   ! t h e I n p u t . L a s t U s e d G a m e p a d ( ) )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 / / m u s t   h a v e   r e a l t i m e   m o d i f i e r   a c t i v e  
 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( ) )  
 	 	 {  
 	 	 	 / / m a k e   s u r e   a c t i o n   i s   p r e s s e d  
 	 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 	 {  
 	 	 	 	 / / c a s t   a a r d  
 	 	 	 	 R G C _ C a s t S i g n ( S T _ A a r d ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 e v e n t   O n R G C C a s t Q u e n ( a c t i o n   :   S I n p u t A c t i o n )  
 	 {  
 	 	 / / R G C   d o e s n ' t   a f f e c t   C i r i   a n d   i s   o n l y   a p p l i c a b l e   t o   g a m e p a d   u s e r s  
 	 	 i f ( t h e P l a y e r . I s C i r i ( )   | |   ! t h e I n p u t . L a s t U s e d G a m e p a d ( ) )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 / / m u s t   h a v e   r e a l t i m e   m o d i f i e r   a c t i v e  
 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( ) )  
 	 	 {  
 	 	 	 / / m a k e   s u r e   a c t i o n   i s   p r e s s e d  
 	 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 	 {  
 	 	 	 	 / / c a s t   q u e n  
 	 	 	 	 R G C _ C a s t S i g n ( S T _ Q u e n ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 e v e n t   O n R G C C a s t Y r d e n ( a c t i o n   :   S I n p u t A c t i o n )  
 	 {  
 	 	 / / R G C   d o e s n ' t   a f f e c t   C i r i   a n d   i s   o n l y   a p p l i c a b l e   t o   g a m e p a d   u s e r s  
 	 	 i f ( t h e P l a y e r . I s C i r i ( )   | |   ! t h e I n p u t . L a s t U s e d G a m e p a d ( ) )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 / / m u s t   h a v e   r e a l t i m e   m o d i f i e r   a c t i v e  
 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( ) )  
 	 	 {  
 	 	 	 / / m a k e   s u r e   a c t i o n   i s   p r e s s e d  
 	 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 	 {  
 	 	 	 	 / / c a s t   Y r d e n  
 	 	 	 	 R G C _ C a s t S i g n ( S T _ Y r d e n ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 e v e n t   O n R G C C a s t A x i i ( a c t i o n   :   S I n p u t A c t i o n )  
 	 {  
 	 	 / / R G C   d o e s n ' t   a f f e c t   C i r i   a n d   i s   o n l y   a p p l i c a b l e   t o   g a m e p a d   u s e r s  
 	 	 i f ( t h e P l a y e r . I s C i r i ( )   | |   ! t h e I n p u t . L a s t U s e d G a m e p a d ( ) )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 / / m u s t   h a v e   r e a l t i m e   m o d i f i e r   a c t i v e  
 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( ) )  
 	 	 {  
 	 	 	 / / m a k e   s u r e   a c t i o n   i s   p r e s s e d  
 	 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 	 {  
 	 	 	 	 / / c a s t   A x i i  
 	 	 	 	 R G C _ C a s t S i g n ( S T _ A x i i ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 e v e n t   O n R G C C r o s s B o w ( a c t i o n   :   S I n p u t A c t i o n )  
 	 {  
 	 	 / / N O T E S :   U s e d   c r o s s b o w   l o g i c   o f   O n C b t T h r o w I t e m   a s   b a s e  
 	 	 v a r   r e t   :   b o o l ;  
 	 	 v a r   i t e m I d   :   S I t e m U n i q u e I d ;  
  
 	 	 G e t W i t c h e r P l a y e r ( ) . R G C _ U p d a t e ( ) ;  
  
 	 	 / / O n   b u t t o n   p r e s s ,   s e l e c t   c r o s s b o w  
 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 {  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e l e c t Q u i c k s l o t I t e m ( E E S _ R a n g e d W e a p o n ) ;  
 	 	 }  
  
 	 	 / / v a l i d a t i o n   o f   p l a y e r  
 	 	 i f ( t h e P l a y e r . I s I n A i r ( )   | |   t h e P l a y e r . G e t W e a p o n H o l s t e r ( ) . I s O n T h e M i d d l e O f H o l s t e r i n g ( ) )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 i f (   t h e P l a y e r . I s S w i m m i n g ( )   & &   ! t h e P l a y e r . O n C h e c k D i v i n g ( )   & &   t h e P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' A i m T h r o w '   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 / / v a l i d a t i o n   o f   i t e m  
 	 	 i t e m I d   =   t h e P l a y e r . G e t S e l e c t e d I t e m I d ( ) ;  
 	 	 i f ( ! t h e P l a y e r . i n v . I s I d V a l i d ( i t e m I d )   | |   ! t h e P l a y e r . i n v . I s I t e m C r o s s b o w ( i t e m I d ) )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 / / c r o s s b o w   b u t t o n   p r e s s   l o g i c  
 	 	 i f   (   I s A c t i o n A l l o w e d ( E I A B _ C r o s s b o w )   )  
 	 	 {  
 	 	 	 / / o n   p r e s s  
 	 	 	 i f (   I s P r e s s e d ( a c t i o n ) )  
 	 	 	 {  
 	 	 	 	 / / a r e   w e   r e a d y   t o   a i m   c r o s s b o w   i m m e d i a t e l y ?  
 	 	 	 	 i f   (   t h e P l a y e r . I s H o l d i n g I t e m I n L H a n d ( )   & &   ! t h e P l a y e r . I s U s a b l e I t e m L B l o c k e d ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 / / s e t u p   r e s t o r e   a c t i o n   t o   i n t e r a c t   w i t h   c r o s s b o w   w h e n   i t s   a v a i l a b l e  
 	 	 	 	 	 t h e P l a y e r . S e t P l a y e r A c t i o n T o R e s t o r e   (   P A T R _ C r o s s b o w   ) ;  
 	 	 	 	 	 t h e P l a y e r . O n U s e S e l e c t e d I t e m (   t r u e   ) ;  
 	 	 	 	 	 r e t   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   t h e P l a y e r . G e t B I s I n p u t A l l o w e d ( )   & &   ! t h e P l a y e r . I s C u r r e n t l y U s i n g I t e m L ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 / / i n i t i a l i z e   p l a y e r   t o   s t a t e   a i m i n g ,   s e n d   c o m b a t   a c t i o n   t o   s t a r t   s t a t e   m a c h i n e s  
 	 	 	 	 	 t h e P l a y e r . S e t I s A i m i n g C r o s s b o w (   t r u e   ) ;  
 	 	 	 	 	 t h e P l a y e r . S e t u p C o m b a t A c t i o n (   E B A T _ I t e m U s e ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 	 r e t   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 / / o n   r e l e a s e  
 	 	 	 e l s e   i f ( I s R e l e a s e d ( a c t i o n ) )  
 	 	 	 {  
 	 	 	 	 i f   (   t h e P l a y e r . G e t I s A i m i n g C r o s s b o w ( )   & &   ! t h e P l a y e r . I s C u r r e n t l y U s i n g I t e m L ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 / / s e n d   c o m b a t   a c t i o n   R e l e a s e   t o   t r i g g e r   o n R e l e a s e   s t a t e m a c h i n e   f l o w  
 	 	 	 	 	 / / a n d   r e s e t   p l a y e r   t o   n o t   a i m i n g   s t a t e  
 	 	 	 	 	 t h e P l a y e r . S e t u p C o m b a t A c t i o n (   E B A T _ I t e m U s e ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 	 t h e P l a y e r . S e t I s A i m i n g C r o s s b o w (   f a l s e   ) ;  
 	 	 	 	 	 t h e P l a y e r . S e t T h r o w H o l d ( f a l s e ) ;  
 	 	 	 	 	 r e t   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   (   ! t h e P l a y e r . I s I n S h a l l o w W a t e r ( )   )  
 	 	 	 {  
 	 	 	 	 / / c a n ' t   u s e   c r o s s b o w   f e e d b a c k  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ C r o s s b o w ) ;  
 	 	 	 }  
 	 	 }  
  
 	 	 r e t u r n   r e t ;  
 	 }  
  
 	 e v e n t   O n R G C C r o s s B o w H o l d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 / / N O T E S :   U s e d   c r o s s b o w   l o g i c   o f   O n C b t T h r o w I t e m H o l d   a s   b a s e  
 	 	 v a r   i t e m I d   :   S I t e m U n i q u e I d ;  
  
 	 	 G e t W i t c h e r P l a y e r ( ) . R G C _ U p d a t e ( ) ;  
  
 	 	 / / v a l i d a t i o n   o f   p l a y e r  
 	 	 i f ( t h e P l a y e r . I s I n A i r ( )   | |   t h e P l a y e r . G e t W e a p o n H o l s t e r ( ) . I s O n T h e M i d d l e O f H o l s t e r i n g ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 i f (   t h e P l a y e r . I s S w i m m i n g ( )   & &   ! t h e P l a y e r . O n C h e c k D i v i n g ( )   & &   t h e P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' A i m T h r o w '   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 / / v a l i d a t i o n   o f   i t e m  
 	 	 i t e m I d   =   t h e P l a y e r . G e t S e l e c t e d I t e m I d ( ) ;  
 	 	 i f ( ! t h e P l a y e r . i n v . I s I d V a l i d ( i t e m I d )   | |   ! t h e P l a y e r . i n v . I s I t e m C r o s s b o w ( i t e m I d ) )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 / / v a l i d a t e   p r e s s  
 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 {  
 	 	 	 i f ( ! I s A c t i o n A l l o w e d ( E I A B _ C r o s s b o w ) )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ C r o s s b o w ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
  
 	 	 / / o n   p r e s s  
 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 {  
 	 	 	 / / s e t   p l a y e r   s t a t e   t o   t h r o w   h o l d  
 	 	 	 t h e P l a y e r . S e t T h r o w H o l d ( t r u e ) ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 e l s e   i f ( I s R e l e a s e d ( a c t i o n )   & &   t h e P l a y e r . I s T h r o w H o l d ( ) )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
  
 	 	 r e t u r n   f a l s e ;  
 	 }  
  
 	 e v e n t   O n R G C E q u i p Q u i c k I t e m ( a c t i o n   :   S I n p u t A c t i o n )  
 	 {  
 	 	 / / R G C   d o e s n ' t   a f f e c t   C i r i   a n d   i s   o n l y   a p p l i c a b l e   t o   g a m e p a d   u s e r s  
 	 	 i f ( t h e P l a y e r . I s C i r i ( )   | |   ! t h e I n p u t . L a s t U s e d G a m e p a d ( ) )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 / / q u i c k s l o t   i t e m s   a r e   a v a i l a b l e   w h i l e   m o d i f i e r   i s   a c t i v e  
 	 	 i f ( R G C _ I s Q u i c k I t e m s I n v e n t o r y ( )   & &   ! t h e P l a y e r . G e t I s A i m i n g C r o s s b o w ( )   & &   ! t h e P l a y e r . I s T h r o w H o l d ( ) )  
 	 	 {  
 	 	 	 / / v a l i d a t e   q u i c k s l o t   s e l e c t i o n  
 	 	 	 i f ( ! I s A c t i o n A l l o w e d ( E I A B _ Q u i c k S l o t s ) )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ Q u i c k S l o t s ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
  
 	 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 	 {  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . R G C _ S e l e c t I t e m ( E E S _ Q u i c k s l o t 1 ) ;  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
  
 	 	 	 / / n o   s e l e c t i o n   m a d e  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 }  
  
 	 e v e n t   O n R G C E q u i p B o m b ( a c t i o n   :   S I n p u t A c t i o n )  
 	 {  
 	 	 / / R G C   d o e s n ' t   a f f e c t   C i r i   a n d   i s   o n l y   a p p l i c a b l e   t o   g a m e p a d   u s e r s  
 	 	 i f ( t h e P l a y e r . I s C i r i ( )   | |   ! t h e I n p u t . L a s t U s e d G a m e p a d ( ) )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 / / b o m b   i t e m s   a r e   a v a i l a b l e   w h i l e   m o d i f i e r   i s   a c t i v e  
 	 	 / / q u i c k s l o t   i t e m s   a r e   a v a i l a b l e   w h i l e   m o d i f i e r   i s   a c t i v e  
 	 	 i f ( R G C _ I s Q u i c k I t e m s I n v e n t o r y ( )   & &   ! t h e P l a y e r . G e t I s A i m i n g C r o s s b o w ( )   & &   ! t h e P l a y e r . I s T h r o w H o l d ( ) )  
 	 	 {  
 	 	 	 / / v a l i d a t e   q u i c k s l o t   s e l e c t i o n  
 	 	 	 i f ( ! I s A c t i o n A l l o w e d ( E I A B _ Q u i c k S l o t s ) )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ Q u i c k S l o t s ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
  
 	 	 	 / / O n   p r e s s ,   s e t   t h e   h e l d   h e l p e r   v a r i a b l e   t o   f a l s e  
 	 	 	 / / N o t e :   m a r k e d   t r u e   i n   O n R G C E q u i p B o m b L o w e r H o l d ( )  
 	 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 	 {  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . R G C _ S e l e c t I t e m ( E E S _ P e t a r d 1 ) ;  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 }  
  
 	 e v e n t   O n R G C N e x t B o l t ( a c t i o n   :   S I n p u t A c t i o n )  
 	 {  
 	 	 / / R G C   d o e s n ' t   a f f e c t   C i r i   a n d   i s   o n l y   a p p l i c a b l e   t o   g a m e p a d   u s e r s  
 	 	 i f ( t h e P l a y e r . I s C i r i ( )   | |   ! t h e I n p u t . L a s t U s e d G a m e p a d ( ) )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . G e t I s A i m i n g C r o s s b o w ( ) )  
 	 	 {  
 	 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 	 {  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . R G C _ N e x t B o l t ( ) ;  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . R G C _ U p d a t e ( ) ;  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 e v e n t   O n R G C I n f i n i t e B o l t ( a c t i o n   :   S I n p u t A c t i o n )  
 	 {  
 	 	 / / R G C   d o e s n ' t   a f f e c t   C i r i   a n d   i s   o n l y   a p p l i c a b l e   t o   g a m e p a d   u s e r s  
 	 	 i f ( t h e P l a y e r . I s C i r i ( )   | |   ! t h e I n p u t . L a s t U s e d G a m e p a d ( ) )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . G e t I s A i m i n g C r o s s b o w ( ) )  
 	 	 {  
 	 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 	 {  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . R G C _ I n f i n i t e B o l t ( ) ;  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . R G C _ U p d a t e ( ) ;  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 e v e n t   O n C o m m S p r i n t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( )   | |   t h e P l a y e r . G e t L e f t S t i c k S p r i n t ( ) )  
 	 	 {  
 	 	 	 / / d o e s   n o t   o c c u r   w h i l e   m o d i f i e r   i s   a c t i v e  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 i f (   I s P r e s s e d (   a c t i o n   )   )  
 	 	 {  
 	 	 	 i f ( R G C C o n f i g I s I m m e r s i v e M o t i o n E n a b l e d ( ) )  
 	 	 	 {  
 	 	 	 	 i f (   r g c P r e s s T i m e s t a m p   +   R G C _ D O U B L E _ T A P _ W I N D O W   > =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( )   & &   R G C C o n f i g I s I m m e r s i v e M o t i o n E n a b l e d ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . S e t S p r i n t T o g g l e (   t r u e   ) ;  
 	 	 	 	 	 t h e P l a y e r . R g c S e t S p r i n t S p e e d ( 1 . 5 f ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   t h e P l a y e r . G e t I s S p r i n t T o g g l e d ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e P l a y e r . S e t S p r i n t T o g g l e (   f a l s e   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e P l a y e r . S e t S p r i n t T o g g l e (   t r u e   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 t h e P l a y e r . R g c S e t S p r i n t S p e e d ( 1 . 0 f ) ;  
 	 	 	 	 }  
  
 	 	 	 	 r g c P r e s s T i m e s t a m p   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . S e t S p r i n t A c t i o n P r e s s e d ( t r u e ) ;  
  
 	 	 	 	 i f   (   t h e P l a y e r . r a n g e d W e a p o n   )  
 	 	 	 	 	 t h e P l a y e r . r a n g e d W e a p o n . O n S p r i n t H o l s t e r ( ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
  
 	 p r i v a t e   v a r   r g c P r e s s T i m e s t a m p   :   f l o a t ;  
 	 p r i v a t e   c o n s t   v a r   R G C _ D O U B L E _ T A P _ W I N D O W 	 :   f l o a t ;  
 	 d e f a u l t   R G C _ D O U B L E _ T A P _ W I N D O W   =   0 . 4 ;  
 	 e v e n t   O n C o m m S p r i n t T o g g l e (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 i f (   t h e I n p u t . L a s t U s e d P C I n p u t ( )   | |   t h e P l a y e r . G e t L e f t S t i c k S p r i n t ( )   )  
 	 	 	 {  
 	 	 	 	 i f (   r g c P r e s s T i m e s t a m p   +   R G C _ D O U B L E _ T A P _ W I N D O W   > =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( )   & &   R G C C o n f i g I s I m m e r s i v e M o t i o n E n a b l e d ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . S e t S p r i n t T o g g l e (   t r u e   ) ;  
 	 	 	 	 	 t h e P l a y e r . R g c S e t S p r i n t S p e e d ( 1 . 5 f ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   t h e P l a y e r . G e t I s S p r i n t T o g g l e d ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e P l a y e r . S e t S p r i n t T o g g l e (   f a l s e   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e P l a y e r . S e t S p r i n t T o g g l e (   t r u e   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 t h e P l a y e r . R g c S e t S p r i n t S p e e d ( 1 . 0 f ) ;  
 	 	 	 	 }  
  
 	 	 	 	 r g c P r e s s T i m e s t a m p   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 e v e n t   O n C o m m S p a w n H o r s e (   a c t i o n   :   S I n p u t A c t i o n   )   {  
 	 	 i f ( R G C C o n f i g I s I m m e r s i v e M o t i o n E n a b l e d ( )   & &   t h e P l a y e r . G e t L e f t S t i c k S p r i n t ( ) )   {  
 	 	 	 / / o v e r r i d e  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 / / l e t   d e f a u l t   c o n t r o l s   h a n d l e   i t  
 	 	 r e t u r n   s u p e r . O n C o m m S p a w n H o r s e ( a c t i o n ) ;  
 	 }  
  
 	 e v e n t   O n R G C S p a w n H o r s e (   a c t i o n   :   S I n p u t A c t i o n   )   {  
 	 	 i f ( ! R G C C o n f i g I s I m m e r s i v e M o t i o n E n a b l e d ( )   | |   ! t h e P l a y e r . G e t L e f t S t i c k S p r i n t ( ) )   {  
 	 	 	 / / l e t   t h e   d e f a u l t   c o n t r o l s   p i c k   i t   u p  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 / / r e r o u t e   t o   s u p e r  
 	 	 r e t u r n   s u p e r . O n C o m m S p a w n H o r s e ( a c t i o n ) ;  
 	 }  
  
 	 e v e n t   O n C o m m D r i n k p o t i o n U p p e r H e l d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f ( ! R G C _ I s Q u i c k I t e m s P o t i o n s ( )   | |   t h e P l a y e r . G e t I s A i m i n g C r o s s b o w ( ) )  
 	 	 {  
 	 	 	 / / d o e s   n o t   o c c u r   w h i l e   m o d i f i e r   i s   a c t i v e  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
  
 	 	 r e t u r n   s u p e r . O n C o m m D r i n k p o t i o n U p p e r H e l d ( a c t i o n ) ;  
 	 }  
  
 	 e v e n t   O n C o m m D r i n k p o t i o n L o w e r H e l d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f ( ! R G C _ I s Q u i c k I t e m s P o t i o n s ( )   | |   t h e P l a y e r . G e t I s A i m i n g C r o s s b o w ( ) )  
 	 	 {  
 	 	 	 / / d o e s   n o t   o c c u r   w h i l e   m o d i f i e r   i s   a c t i v e  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
  
 	 	 r e t u r n   s u p e r . O n C o m m D r i n k p o t i o n L o w e r H e l d ( a c t i o n ) ;  
 	 }  
  
 	 e v e n t   O n C o m m D r i n k P o t i o n 1 (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f ( ! R G C _ I s Q u i c k I t e m s P o t i o n s ( )   | |   t h e P l a y e r . G e t I s A i m i n g C r o s s b o w ( ) )  
 	 	 {  
 	 	 	 / / d o e s   n o t   o c c u r   w h i l e   m o d i f i e r   i s   a c t i v e  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
  
 	 	 r e t u r n   s u p e r . O n C o m m D r i n k P o t i o n 1 ( a c t i o n ) ;  
 	 }  
  
 	 e v e n t   O n C o m m D r i n k P o t i o n 2 (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f ( ! R G C _ I s Q u i c k I t e m s P o t i o n s ( )   | |   t h e P l a y e r . G e t I s A i m i n g C r o s s b o w ( ) )  
 	 	 {  
 	 	 	 / / d o e s   n o t   o c c u r   w h i l e   m o d i f i e r   i s   a c t i v e  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
  
 	 	 r e t u r n   s u p e r . O n C o m m D r i n k P o t i o n 2 ( a c t i o n ) ;  
 	 }  
  
 	 e v e n t   O n C b t A t t a c k L i g h t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( ) )  
 	 	 {  
 	 	 	 / / d o e s   n o t   o c c u r   w h i l e   m o d i f i e r   i s   a c t i v e  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
  
 	 	 r e t u r n   s u p e r . O n C b t A t t a c k L i g h t ( a c t i o n ) ;  
 	 }  
  
 	 e v e n t   O n C b t A t t a c k H e a v y (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( ) )  
 	 	 {  
 	 	 	 / / d o e s   n o t   o c c u r   w h i l e   m o d i f i e r   i s   a c t i v e  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
  
 	 	 r e t u r n   s u p e r . O n C b t A t t a c k H e a v y ( a c t i o n ) ;  
 	 }  
  
 	 e v e n t   O n C b t S p e c i a l A t t a c k L i g h t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f   (   G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( )   )  
 	 	 {  
 	 	 	 / / d o n ' t   d o   a t t a c k s   w h i l e   c a s t i n g  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
  
 	 	 r e t u r n   s u p e r . O n C b t S p e c i a l A t t a c k L i g h t ( a c t i o n ) ;  
 	 }  
  
 	 e v e n t   O n C b t S p e c i a l A t t a c k H e a v y (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f   (   G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( )   )  
 	 	 {  
 	 	 	 / / d o n ' t   d o   a t t a c k s   w h i l e   c a s t i n g  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
  
 	 	 r e t u r n   s u p e r . O n C b t S p e c i a l A t t a c k H e a v y ( a c t i o n ) ;  
 	 }  
  
 	 e v e n t   O n C b t D o d g e (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( ) )  
 	 	 {  
 	 	 	 / / d o e s   n o t   o c c u r   w h i l e   m o d i f i e r   i s   a c t i v e  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
  
 	 	 r e t u r n   s u p e r . O n C b t D o d g e ( a c t i o n ) ;  
 	 }  
  
 	 e v e n t   O n C b t R o l l (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( ) )  
 	 	 {  
 	 	 	 / / d o e s   n o t   o c c u r   w h i l e   m o d i f i e r   i s   a c t i v e  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
  
 	 	 r e t u r n   s u p e r . O n C b t R o l l ( a c t i o n ) ;  
 	 }  
  
 	 e v e n t   O n C a s t S i g n (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   s i g n S k i l l   :   E S k i l l ;  
  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 / / t h e r e   i s   n o   s i g n   s e l e c t i o n   i n   R G C ,   t h u s   c a s t i n g   a   s e l e c t e d   s i g n   i s n ' t   a   n e c e s s a r y   a c t i o n  
 	 	 r e t u r n   f a l s e ;  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 }  
  
 	 e v e n t   O n C b t T h r o w I t e m (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   i s U s a b l e I t e m ,   i s C r o s s b o w ,   i s B o m b ,   r e t   :   b o o l ;  
 	 	 v a r   i t e m I d   :   S I t e m U n i q u e I d ;  
  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( ) )  
 	 	 {  
 	 	 	 / / d o e s   n o t   o c c u r   w h i l e   m o d i f i e r   i s   a c t i v e  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 / / m a k e   s u r e   b u t t o n   i s   p r e s s e d   b e f o r e   s e l e c t i n g   n o n - c r o s s b o w   i t e m  
 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 {  
 	 	 	 t h e P l a y e r . O n R a n g e d F o r c e H o l s t e r ( t r u e ) ;  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e l e c t Q u i c k s l o t I t e m ( G e t W i t c h e r P l a y e r ( ) . R G C _ G e t L a s t U s e d I t e m S l o t ( ) ) ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
  
 	 	 i f ( t h e P l a y e r . I s I n A i r ( )   | |   t h e P l a y e r . G e t W e a p o n H o l s t e r ( ) . I s O n T h e M i d d l e O f H o l s t e r i n g ( ) )  
 	 	 	 r e t u r n   f a l s e ;  
  
 	 	 i f (   t h e P l a y e r . I s S w i m m i n g ( )   & &   ! t h e P l a y e r . O n C h e c k D i v i n g ( )   & &   t h e P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' A i m T h r o w '   )  
 	 	 	 r e t u r n   f a l s e ;  
  
 	 	 i t e m I d   =   t h e P l a y e r . G e t S e l e c t e d I t e m I d ( ) ;  
  
 	 	 i f ( ! t h e P l a y e r . i n v . I s I d V a l i d ( i t e m I d ) )  
 	 	 	 r e t u r n   f a l s e ;  
  
 	 	 i s C r o s s b o w   =   t h e P l a y e r . i n v . I s I t e m C r o s s b o w ( i t e m I d ) ;  
 	 	 i f ( ! i s C r o s s b o w )  
 	 	 {  
 	 	 	 i s B o m b   =   t h e P l a y e r . i n v . I s I t e m B o m b ( i t e m I d ) ;  
 	 	 	 i f ( ! i s B o m b )  
 	 	 	 {  
 	 	 	 	 i s U s a b l e I t e m   =   t r u e ;  
 	 	 	 }  
 	 	 }  
  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f (   i s C r o s s b o w   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
  
 	 	 r e t u r n   s u p e r . O n C b t T h r o w I t e m ( a c t i o n ) ;  
 	 }  
  
 	 e v e n t   O n C b t T h r o w I t e m H o l d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   i s B o m b ,   i s C r o s s b o w ,   i s U s a b l e I t e m   :   b o o l ;  
 	 	 v a r   i t e m I d   :   S I t e m U n i q u e I d ;  
  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( ) )  
 	 	 {  
 	 	 	 / / d o e s   n o t   o c c u r   w h i l e   m o d i f i e r   i s   a c t i v e  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
  
 	 	 i f ( t h e P l a y e r . I s I n A i r ( )   | |   t h e P l a y e r . G e t W e a p o n H o l s t e r ( ) . I s O n T h e M i d d l e O f H o l s t e r i n g ( )   )  
 	 	 	 r e t u r n   f a l s e ;  
  
 	 	 i f (   t h e P l a y e r . I s S w i m m i n g ( )   & &   ! t h e P l a y e r . O n C h e c k D i v i n g ( )   & &   t h e P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' A i m T h r o w '   )  
 	 	 	 r e t u r n   f a l s e ;  
  
 	 	 i t e m I d   =   t h e P l a y e r . G e t S e l e c t e d I t e m I d ( ) ;  
  
 	 	 i f ( ! t h e P l a y e r . i n v . I s I d V a l i d ( i t e m I d ) )  
 	 	 	 r e t u r n   f a l s e ;  
  
 	 	 i s C r o s s b o w   =   t h e P l a y e r . i n v . I s I t e m C r o s s b o w ( i t e m I d ) ;  
  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f (   i s C r o s s b o w   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 / / m o d W 3 R e d u x R G C - -  
  
 	 	 r e t u r n   s u p e r . O n C b t T h r o w I t e m H o l d ( a c t i o n ) ;  
 	 }  
  
 	 / / I n c l u d e d   f r o m   B e t t e r   T o r c h e s  
 	 e v e n t   O n C b t L o c k A n d G u a r d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f ( t h e P l a y e r . I s C i r i ( )   & &   ! G e t C i r i P l a y e r ( ) . H a s S w o r d ( ) )  
 	 	 	 r e t u r n   f a l s e ;  
  
  
 	 	 i f (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . S e t G u a r d e d ( f a l s e ) ;  
 	 	 	 t h e P l a y e r . O n G u a r d e d R e l e a s e d ( ) ;  
 	 	 }  
  
 	 	 i f (   ( t h e P l a y e r . I s W e a p o n H e l d ( ' f i s t s ' )   | |   t h e P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' C o m b a t F i s t s ' )   & &   ! I s A c t i o n A l l o w e d ( E I A B _ F i s t s ) )  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ F i s t s ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 / * i f (   ! I s A c t i o n A l l o w e d ( E I A B _ P a r r y )   )  
 	 	 	 {  
 	 	 	 	 i f   (   I s A c t i o n B l o c k e d B y ( E I A B _ P a r r y , ' U s a b l e I t e m ' )   )  
 	 	 	 	 {  
 	 	 	 	 	 / / t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ P a r r y ) ;  
 	 	 	 	 }  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 } * /  
  
 	 	 	 i f   (   t h e P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' E x p l o r a t i o n '   )  
 	 	 	 	 t h e P l a y e r . G o T o C o m b a t I f N e e d e d ( ) ;  
  
 	 	 	 i f   (   t h e P l a y e r . b L A x i s R e l e a s e d   )  
 	 	 	 	 t h e P l a y e r . R e s e t R a w P l a y e r H e a d i n g ( ) ;  
  
 	 	 	 i f   (   t h e P l a y e r . r a n g e d W e a p o n   & &   t h e P l a y e r . r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '   )  
 	 	 	 	 t h e P l a y e r . O n R a n g e d F o r c e H o l s t e r (   t r u e ,   t r u e   ) ;  
  
 	 	 	 t h e P l a y e r . A d d C o u n t e r T i m e S t a m p ( t h e G a m e . G e t E n g i n e T i m e ( ) ) ;  
 	 	 	 t h e P l a y e r . S e t G u a r d e d ( t r u e ) ;  
 	 	 	 t h e P l a y e r . O n P e r f o r m G u a r d ( ) ;  
 	 	 }  
 	 }  
   } 