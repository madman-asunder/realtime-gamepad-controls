/ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / * *   	 �   2 0 1 5   C D   P R O J E K T   S . A .   A l l   r i g h t s   r e s e r v e d .  
 / * *   	 T H E   W I T C H E R �   i s   a   t r a d e m a r k   o f   C D   P R O J E K T   S .   A .  
 / * *   	 T h e   W i t c h e r   g a m e   i s   b a s e d   o n   t h e   p r o s e   o f   A n d r z e j   S a p k o w s k i .  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 i m p o r t   s t a t e m a c h i n e   c l a s s   R a n g e d W e a p o n   e x t e n d s   C I t e m E n t i t y  
 { 	  
 	 p r o t e c t e d 	 v a r   o w n e r 	 	 	 	 	 	 :   C A c t o r ;  
 	 p r o t e c t e d 	 v a r   o w n e r P l a y e r 	 	 	 	 	 :   C R 4 P l a y e r ;  
 	 p r o t e c t e d 	 v a r   o w n e r P l a y e r W i t c h e r 	 	 	 :   W 3 P l a y e r W i t c h e r ;  
 	 p r o t e c t e d 	 v a r   i s P l a y e r 	 	 	 	 	 :   b o o l ;  
 	 p r o t e c t e d 	 v a r   i n v 	 	 	 	 	 	 	 :   C I n v e n t o r y C o m p o n e n t ;  
 	 p r o t e c t e d 	 v a r   p r e v i o u s A m m o I t e m N a m e 	 	 :   n a m e ;  
 	 p r o t e c t e d 	 v a r   d e p l o y e d E n t 	 	 	 	 	 :   W 3 B o l t P r o j e c t i l e ;  
 	 p r o t e c t e d 	 v a r   i s S e t t i n g O w n e r O r i e n t a t i o n 	 :   b o o l ;  
 	 p r o t e c t e d 	 v a r   i s D e p l o y e d E n t A i m i n g 	 	 	 :   b o o l ;  
 	 p r o t e c t e d 	 v a r   i s A i m i n g W e a p o n 	 	 	 	 :   b o o l ;  
 	 p r o t e c t e d 	 v a r   i s S h o o t i n g W e a p o n 	 	 	 :   b o o l ;  
 	 p r o t e c t e d 	 v a r   i s W e a p o n L o a d e d 	 	 	 	 :   b o o l ;  
 	 p r o t e c t e d   	 v a r   r e c o i l L e v e l 	 	 	 	 	 :   i n t ;  
 	 p r o t e c t e d   	 v a r   s e t F u l l W e i g h t   	 	 	 	 :   b o o l ;  
 	 p r o t e c t e d 	 v a r   n o S a v e L o c k C o m b a t A c t i o n 	 	 :   i n t ;  
 	 p r o t e c t e d   	 v a r   p e r f o r m e d D r a w 	 	 	 	 :   b o o l ;  
 	 p r o t e c t e d   	 v a r   s h o o t i n g I s C o m p l e t e 	 	 	 :   b o o l ;  
 	  
 	  
 	  
 	  
 	  
 	 e v e n t   O n S p a w n e d (   s p a w n D a t a   :   S E n t i t y S p a w n D a t a   )  
 	 {    
 	 	 s u p e r . O n S p a w n e d (   s p a w n D a t a   ) ;  
 	 	 I n i t i a l i z e (   ( C A c t o r ) G e t P a r e n t E n t i t y ( )   ) ;  
 	 }  
 	  
 	  
 	 e v e n t   O n C h a n g e T o (   n e w S t a t e   :   n a m e   )  
 	 {  
 	 	 i f   (   G e t C u r r e n t S t a t e N a m e ( )   ! =   n e w S t a t e   )  
 	 	 	 G o t o S t a t e (   n e w S t a t e   ) ;  
 	 }  
 	 	 	  
 	 e v e n t   O n R a n g e d W e a p o n P r e s s ( )  
 	 { 	 	  
 	 	 S e t B e h a v i o r G r a p h V a r i a b l e s (   ' i s A i m i n g W e a p o n ' ,   t r u e   ) ;  
 	 	 S e t B e h a v i o r G r a p h V a r i a b l e s (   ' i s S h o o t i n g W e a p o n ' ,   f a l s e   ) ;  
 	 }  
 	  
 	 e v e n t   O n R a n g e d W e a p o n R e l e a s e ( )  
 	 {  
 	 	 S e t B e h a v i o r G r a p h V a r i a b l e s (   ' i s A i m i n g W e a p o n ' ,   f a l s e   ) ;  
 	 	 S e t B e h a v i o r G r a p h V a r i a b l e s (   ' i s S h o o t i n g W e a p o n ' ,   t r u e   ) ;  
 	 }  
 	  
 	 e v e n t   O n W e a p o n W a i t ( )  
 	 {  
 	 	  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ D i s m o u n t V e h i c l e ,   ' S h o o t i n g C r o s s b o w '   ) ; 	  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ M o u n t V e h i c l e ,   ' S h o o t i n g C r o s s b o w '   ) ;  
 	 }  
 	  
 	 e v e n t   O n W e a p o n D r a w S t a r t ( )  
 	 {  
 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' f a i l S a f e D r a w ' ,   0 . 0   ) ;  
 	 	 i f   (   ! i s S e t t i n g O w n e r O r i e n t a t i o n   )  
 	 	 {  
 	 	 	 i s S e t t i n g O w n e r O r i e n t a t i o n   =   t r u e ;  
 	 	 	 S e t O w n e r O r i e n t a t i o n ( ) ;  
 	 	 }  
 	 	  
 	 	 O n C h a n g e T o (   ' S t a t e _ W e a p o n D r a w '   ) ;  
 	 }  
 	  
 	 e v e n t   O n W e a p o n R e l o a d S t a r t ( )    
 	 {  
 	 	 R a i s e F o r c e E v e n t (   ' W e a p o n C r o s s b o w _ R e l o a d '   ) ;  
 	 	 O n C h a n g e T o (   ' S t a t e _ W e a p o n R e l o a d '   ) ;  
 	 }  
 	  
 	 e v e n t   O n W e a p o n R e l o a d ( )  
 	 {  
 	 	 v a r   i d   :   S I t e m U n i q u e I d ;  
 	  
 	 	 i f   (   o w n e r P l a y e r W i t c h e r . G e t I t e m E q u i p p e d O n S l o t ( E E S _ B o l t ,   i d )   )  
 	 	 {  
 	 	 	 R e l o a d W e a p o n (   i d   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 O n F o r c e H o l s t e r ( ) ;  
 	 	 	 L o g C h a n n e l (   ' C r o s s b o w ' ,   " E R R O R :   N o   a m m o   t o   r e l o a d ! ! ! "   ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n W e a p o n R e l o a d E n d ( ) { }  
 	  
 	 e v e n t   O n W e a p o n A i m S t a r t ( )  
 	 {  
 	 	 P r o c e s s F u l l B o d y A n i m W e i g h t ( ) ;  
 	 	  
 	 	 O n C h a n g e T o (   ' S t a t e _ W e a p o n A i m '   ) ;  
 	 }  
 	  
 	  
 	 e v e n t   O n W e a p o n S h o o t S t a r t ( )  
 	 {  
 	 	  
 	 	 F a c t s A d d (   " r a n g e d _ w e a p o n _ s h o o t _ s t a r t " ,   1 ,   3   ) ;  
 	 	  
 	 	  
 	 	 	  
 	 	 S e t B e h a v i o r G r a p h V a r i a b l e s (   ' i s A i m i n g W e a p o n ' ,   f a l s e   ) ;  
 	 	 S e t B e h a v i o r G r a p h V a r i a b l e s (   ' i s S h o o t i n g W e a p o n ' ,   f a l s e   ) ;  
 	 	 S e t B e h a v i o r G r a p h V a r i a b l e s (   ' r e c o i l L e v e l ' ,   f a l s e ,   ( i n t ) R L _ 1   ) ;  
 	 	  
 	 	 O n C h a n g e T o (   ' S t a t e _ W e a p o n S h o o t '   ) ;  
 	 }  
 	  
 	 e v e n t   O n W e a p o n A i m E n d ( )   { } 	  
 	  
 	 e v e n t   O n P r o c e s s T h r o w E v e n t (   a n i m E v e n t N a m e   :   n a m e   )  
 	 {  
 	 	 i f   (   d e p l o y e d E n t   )  
 	 	 {  
 	 	 	 d e p l o y e d E n t . O n P r o c e s s T h r o w E v e n t (   a n i m E v e n t N a m e   ) ;  
 	 	 	  
 	 	 	 i f   (   a n i m E v e n t N a m e   = =   ' P r o j e c t i l e T h r o w '   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 S e t D e p l o y e d E n t V i s i b i l i t y (   t r u e   ) ;  
 	 	 	 	 R a i s e F o r c e E v e n t (   ' W e a p o n C r o s s b o w _ S h o o t '   ) ;  
 	 	 	 	 C l e a r D e p l o y e d E n t i t y ( f a l s e ) ;  
 	 	 	 	 R e l o a d W e a p o n W i t h O r W i t h o u t A n i m I f N e e d e d ( ) ;  
 	 	 	 	  
 	 	 	 	 i s S e t t i n g O w n e r O r i e n t a t i o n   =   f a l s e ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	  
 	 	 }  
  
 	 	 i f (   a n i m E v e n t N a m e   = =   ' O n W e a p o n R e l o a d '   )  
 	 	 {  
 	 	 	 O n W e a p o n R e l o a d ( ) ;  
 	 	 	  
 	 	 	 i f   (   ! o w n e r P l a y e r . I s U s i n g V e h i c l e ( )  
 	 	 	 	 & &   o w n e r P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' i s S h o o t i n g W e a p o n '   )   = =   0 . f    
 	 	 	 	 & &   o w n e r P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' i s A i m i n g W e a p o n '   )   = =   0 . f   )  
 	 	 	 {  
 	 	 	 	 i f   (   o w n e r P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ A l e r t N e a r   | |   o w n e r P l a y e r . I s S w i m m i n g ( )   )    
 	 	 	 	 	 A d d T i m e r (   ' H o l s t e r A f t e r D e l a y ' ,   0 . f   ) ;  
 	 	 	 } 	 	 	  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n W e a p o n S h o o t E n d ( )  
 	 {  
 	 	 i f   (   ! o w n e r P l a y e r . b L A x i s R e l e a s e d   )  
 	 	 {  
 	 	 	 E x i t C o m b a t A c t i o n ( ) ;  
 	 	 }  
 	 	 	  
 	 	  
 	 }  
 	  
 	 e v e n t   O n W e a p o n H o l s t e r S t a r t ( )  
 	 {  
 	 	 E x i t C o m b a t A c t i o n ( ) ;  
 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' f o r c e H o l s t e r F o r O v e r l a y ' ,   0 . f   ) ;  
 	 	  
 	 	 i f   (   o w n e r P l a y e r . P e r f o r m i n g C o m b a t A c t i o n ( )   = =   E B A T _ E M P T Y   )  
 	 	 {  
 	 	 	 o w n e r P l a y e r . R e m o v e C u s t o m O r i e n t a t i o n T a r g e t (   ' R a n g e d W e a p o n '   ) ;  
 	 	 }  
 	  
 	 	 O n C h a n g e T o (   ' S t a t e _ W e a p o n H o l s t e r '   ) ; 	  
 	 }  
 	  
 	 e v e n t   O n W e a p o n H o l s t e r E n d ( )  
 	 {  
 	 	 E x i t C o m b a t A c t i o n ( ) ;  
 	 }  
 	  
 	 e v e n t   O n W e a p o n T o N o r m a l T r a n s S t a r t ( )  
 	 {  
 	 	 A d d T i m e r (   ' P r o c e s s F u l l B o d y A n i m W e i g h t T i m e r ' ,   0 . f ,   t r u e   ) ;  
 	 }  
 	  
 	 e v e n t   O n W e a p o n T o N o r m a l T r a n s E n d ( )  
 	 {  
 	 	 R e m o v e T i m e r (   ' P r o c e s s F u l l B o d y A n i m W e i g h t T i m e r '   ) ;  
 	 }  
 	  
 	 e v e n t   O n R e p l a c e A m m o ( ) { }  
 	  
 	 e v e n t   O n F o r c e H o l s t e r (   o p t i o n a l   f o r c e U p p e r B o d y A n i m ,   i n s t a n t ,   d r o p I t e m   :   b o o l   )    
 	 {  
 	 	 v a r   i t e m I d 	 :   S I t e m U n i q u e I d ;  
  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 t h e I n p u t . F o r c e D e a c t i v a t e A c t i o n ( ' R G C _ C r o s s B o w ' ) ;  
 	 	 t h e I n p u t . F o r c e D e a c t i v a t e A c t i o n ( ' R G C _ C r o s s B o w H o l d ' ) ;  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	  
 	 	 i f   (   i n s t a n t   )  
 	 	 {  
 	 	 	 i t e m I d   =   o w n e r P l a y e r . i n v . G e t I t e m F r o m S l o t (   ' l _ w e a p o n '   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f (   o w n e r P l a y e r . i n v . I s I d V a l i d (   i t e m I d   )   & &   (   o w n e r P l a y e r . i n v . I s I t e m C r o s s b o w (   i t e m I d   )   | |   o w n e r P l a y e r . i n v . I s I t e m B o m b (   i t e m I d   )   )   )  
 	 	 	 {  
 	 	 	 	 o w n e r P l a y e r . H o l s t e r I t e m s (   t r u e ,   i t e m I d   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 t h e P l a y e r . B l o c k A l l A c t i o n s (   ' R a n g e d W e a p o n ' ,   f a l s e ) ;  
 	 	 	 t h e P l a y e r . B l o c k A l l A c t i o n s (   ' R a n g e d W e a p o n R e l o a d ' ,   f a l s e ) ;  
 	 	 	 t h e P l a y e r . B l o c k A l l A c t i o n s (   ' R a n g e d W e a p o n A i m i n g ' ,   f a l s e ) ;  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ D i s m o u n t V e h i c l e ,   ' S h o o t i n g C r o s s b o w '   ) ;  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ M o u n t V e h i c l e ,   ' S h o o t i n g C r o s s b o w '   ) ; 	  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ T h r o w B o m b ,   ' S h o o t i n g C r o s s b o w '   ) ;  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ D r a w W e a p o n ,   ' R a n g e d W e a p o n A i m i n g '   ) ;  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ D r a w W e a p o n ,   ' R a n g e d W e a p o n R e l o a d '   ) ; 	 	 	  
 	 	 	  
 	 	 	 R e s e t A l l S e t t i n g s ( ) ;  
 	 	 	  
 	 	 	 U n l o c k ( ) ;  
 	 	 	 O n C h a n g e T o (   ' S t a t e _ W e a p o n W a i t '   ) ;  
 	 	 	 t h e P l a y e r . p l a y e r A i m i n g . S t o p A i m i n g ( ) ;  
 	 	 }  
 	  
 	 	  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   I n i t i a l i z e (   n e w O w n e r   :   C A c t o r   )  
 	 { 	 	 	 	  
 	 	 o w n e r   =   n e w O w n e r ;  
 	 	 o w n e r P l a y e r   =   ( C R 4 P l a y e r ) o w n e r ;  
 	 	 o w n e r P l a y e r W i t c h e r   =   ( W 3 P l a y e r W i t c h e r ) o w n e r ;  
 	 	  
 	 	 i f   (   o w n e r P l a y e r   )  
 	 	 {  
 	 	 	 i s P l a y e r   =   t r u e ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 }  
 	 	  
 	 	 i f   (   t h i s . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '   )  
 	 	 	 O n C h a n g e T o (   ' S t a t e _ W e a p o n W a i t '   ) ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   I s W e a p o n B e i n g U s e d ( )   :   b o o l  
 	 {  
 	 	 i f   (   G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n S h o o t '   & &   ! I s S h o o t i n g C o m p l e t e ( )   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e   i f   (   G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n R e l o a d '   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e   i f   (   i s S h o o t i n g W e a p o n   | |   i s A i m i n g W e a p o n   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e  
 	 	 	 r e t u r n   f a l s e ;  
 	 }  
  
 	  
 	 p r o t e c t e d   f u n c t i o n 	 R e l o a d W e a p o n W i t h O r W i t h o u t A n i m I f N e e d e d ( )   :   b o o l  
 	 {  
 	 	 v a r   t   :   f l o a t ;  
 	 	 i f   (   ! d e p l o y e d E n t   )  
 	 	 {  
 	 	 	 i f   (   ! P l a y O w n e r R e l o a d A n i m ( )   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 O n W e a p o n R e l o a d ( ) ;  
 	 	 	 	 S e t D e p l o y e d E n t V i s i b i l i t y (   f a l s e   ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	 t   =   o w n e r P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' a n i m S p e e d M u l t F o r O v e r l a y '   ) ;  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' a n i m S p e e d M u l t ' ,   o w n e r P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' a n i m S p e e d M u l t F o r O v e r l a y '   )   ) ; 	 	  
 	 	 	 r e t u r n   t r u e ; 	 	 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 S e t B e h a v i o r G r a p h V a r i a b l e s (   ' i s W e a p o n L o a d e d ' ,   t r u e   ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   S e t B e h a v i o r G r a p h V a r i a b l e s (   v a r N a m e   :   n a m e ,   f l a g   :   b o o l ,   o p t i o n a l   n u m   :   i n t   )  
 	 {  
 	 	 i f   (   v a r N a m e   = =   ' i s W e a p o n L o a d e d '   )  
 	 	 {  
 	 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i s W e a p o n L o a d e d ' ,   ( f l o a t ) f l a g   ) ;  
 	 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i s W e a p o n L o a d e d R i d e r ' ,   ( f l o a t ) f l a g   ) ;  
 	 	 	 t h i s . S e t B e h a v i o r V a r i a b l e (   ' i s W e a p o n L o a d e d ' ,   ( f l o a t ) f l a g   ) ;  
 	 	 	 i s W e a p o n L o a d e d   =   f l a g ;  
 	 	 }  
 	 	 e l s e   i f   (   v a r N a m e   = =   ' i s S h o o t i n g W e a p o n '   )  
 	 	 {  
 	 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i s S h o o t i n g W e a p o n ' ,   ( f l o a t ) f l a g   ) ;  
 	 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i s S h o o t i n g W e a p o n R i d e r ' ,   ( f l o a t ) f l a g   ) ;  
 	 	 	 i s S h o o t i n g W e a p o n   =   f l a g ;  
 	 	 }  
 	 	 e l s e   i f   (   v a r N a m e   = =   ' i s A i m i n g W e a p o n '   )  
 	 	 {  
 	 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i s A i m i n g W e a p o n ' ,   ( f l o a t ) f l a g   ) ;  
 	 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i s A i m i n g W e a p o n R i d e r ' ,   ( f l o a t ) f l a g   ) ;  
 	 	 	 i s A i m i n g W e a p o n   =   f l a g ;  
 	 	 }  
 	 	 e l s e   i f   (   v a r N a m e   = =   ' r e c o i l L e v e l '   )  
 	 	 {  
 	 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' r e c o i l L e v e l ' ,   ( f l o a t ) n u m   ) ;  
 	 	 	 t h i s . S e t B e h a v i o r V a r i a b l e (   ' r e c o i l L e v e l ' ,   ( f l o a t ) n u m   ) ;  
 	 	 	 r e c o i l L e v e l   =   n u m ;  
 	 	 } 	 	 	 	  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   R a i s e O w n e r G r a p h E v e n t s (   e v e n t N a m e   :   n a m e ,   f o r c e   :   b o o l   )   :   b o o l  
 	 {  
 	 	 i f   (   f o r c e   )  
 	 	 	 r e t u r n   o w n e r P l a y e r . R a i s e F o r c e E v e n t (   e v e n t N a m e   ) ;  
 	 	 e l s e  
 	 	 	 r e t u r n   o w n e r P l a y e r . R a i s e E v e n t (   e v e n t N a m e   ) ;  
 	 } 	  
 	  
 	 p r o t e c t e d   f u n c t i o n   P l a y O w n e r R e l o a d A n i m ( )   :   b o o l 	 { r e t u r n   f a l s e ; }  
 	  
 	 p r o t e c t e d   f u n c t i o n   R e l o a d W e a p o n (   i d   :   S I t e m U n i q u e I d   )   :   b o o l  
 	 { 	  
 	 	 v a r   c r o s s b o w I d   	 :   S I t e m U n i q u e I d ;  
 	 	 v a r   m a t   	 	 :   M a t r i x ;  
 	 	  
 	 	 i f   (   ! d e p l o y e d E n t   )  
 	 	 {  
 	 	 	  
 	 	 	 L o g T h r o w a b l e (   " E q u i p p e d   b u l l e t   i t e m   "   +   i n v . G e t I t e m N a m e (   i d   )   ) ;  
 	 	 	  
 	 	 	 t h i s . C a l c E n t i t y S l o t M a t r i x (   ' b o l t ' ,   m a t   ) ;  
 	 	 	 M a t r i x G e t T r a n s l a t i o n (   m a t   ) ;  
 	 	 	  
 	 	 	 d e p l o y e d E n t   =   ( W 3 B o l t P r o j e c t i l e ) (   i n v . G e t D e p l o y m e n t I t e m E n t i t y (   i d ,   M a t r i x G e t T r a n s l a t i o n (   m a t   ) ,   M a t r i x G e t R o t a t i o n (   m a t   )   )   ) ;  
 	 	 	 o w n e r P l a y e r W i t c h e r . G e t I t e m E q u i p p e d O n S l o t ( E E S _ R a n g e d W e a p o n ,   c r o s s b o w I d ) ;  
 	 	 	 d e p l o y e d E n t . I n i t i a l i z e C r o s s b o w (   o w n e r P l a y e r ,   i d ,   c r o s s b o w I d   ) ;  
  
 	 	 	  
 	 	 	 i f   (   ! d e p l o y e d E n t . C r e a t e A t t a c h m e n t (   t h i s ,   ' b o l t '   )   )  
 	 	 	 {  
 	 	 	 	 L o g T h r o w a b l e ( " C a n n o t   a t t a c h   t h r o w n   i t e m   t o   w e a p o n ! "   ) ;  
 	 	 	 	 L o g A s s e r t ( f a l s e ,   " C A c t o r . O n A n i m E v e n t ( P r o j e c t i l e A t t a c h ) :   C a n n o t   a t t a c h   t h r o w n   i t e m   t o   a c t o r ! " ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	  
 	 	 	 S e t B e h a v i o r G r a p h V a r i a b l e s (   ' i s W e a p o n L o a d e d ' ,   t r u e   ) ;  
 	 	 	  
 	 	 	 p r e v i o u s A m m o I t e m N a m e   =   i n v . G e t I t e m N a m e (   i d   ) ;    
 	 	 	  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 L o g T h r o w a b l e ( " E r r o r   :   R a n g e d   w e a p o n   a l r e a d y   h a s   a   d e p l o y e d   e n t i t y   a t t a c h e d ! "   ) ;  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   L o c k ( )  
 	 {  
 	 	 v a r   a c t i o n B l o c k i n g E x c e p t i o n s   :   a r r a y < E I n p u t A c t i o n B l o c k > ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 i f   (   o w n e r P l a y e r . I s U s i n g V e h i c l e ( )   & &   ( W 3 B o a t ) (   o w n e r P l a y e r . G e t U s e d V e h i c l e ( )   )   )  
 	 	 {  
 	 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ O p e n I n v e n t o r y ) ;  
 	 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ O p e n F a s t M e n u ) ;  
 	 	 }  
 	 	 	  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ J u m p ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ R a d i a l M e n u ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ M o v e m e n t ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ O p e n P r e p a r a t i o n ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ R o l l ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ C l i m b ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ S l i d e ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ R u n A n d S p r i n t ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ O p e n M a p ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ O p e n C h a r a c t e r P a n e l ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ O p e n J o u r n a l ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ O p e n A l c h e m y ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ E x p l o r a t i o n F o c u s ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ D o d g e ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ S w o r d A t t a c k ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ S p r i n t ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ L i g h t A t t a c k s ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ H e a v y A t t a c k s ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ F i s t s ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ Q u i c k S l o t s ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ C r o s s b o w ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ O p e n G l o s s a r y ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ M e d i t a t i o n W a i t i n g ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ S i g n s ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ I n t e r a c t i o n s ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ I n t e r a c t i o n A c t i o n ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ I n t e r a c t i o n C o n t a i n e r s ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ D i v e ) ;  
 	 	 a c t i o n B l o c k i n g E x c e p t i o n s . P u s h B a c k ( E I A B _ P a r r y ) ;  
  
 	 	 t h e G a m e . C r e a t e N o S a v e L o c k (   ' R a n g e d W e a p o n ' ,   n o S a v e L o c k C o m b a t A c t i o n   ) ;  
 	 	 t h e P l a y e r . B l o c k A l l A c t i o n s (   ' R a n g e d W e a p o n ' ,   t r u e ,   a c t i o n B l o c k i n g E x c e p t i o n s ,   f a l s e ) ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   U n l o c k ( )  
 	 {  
 	 	  
 	 	 t h e P l a y e r . B l o c k A l l A c t i o n s (   ' R a n g e d W e a p o n ' ,   f a l s e ) ;  
 	 	 t h e G a m e . R e l e a s e N o S a v e L o c k (   n o S a v e L o c k C o m b a t A c t i o n   ) ;  
 	 	  
 	 	  
 	 	  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   S e t O w n e r O r i e n t a t i o n ( ) { }  
 	  
 	  
 	 t i m e r   f u n c t i o n   P r o c e s s F u l l B o d y A n i m W e i g h t T i m e r (   t i m e   :   f l o a t   ,   i d   :   i n t )  
 	 { 	  
 	 	 P r o c e s s F u l l B o d y A n i m W e i g h t ( ) ;  
 	 }  
  
 	  
 	 v a r   w a s B L A x i s R e l e a s e d   :   b o o l ;  
 	 t i m e r   f u n c t i o n   I n p u t L o c k F a i l s a f e (   t i m e   :   f l o a t   ,   i d   :   i n t )  
 	 { 	  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ;  
  
 	 	 i f   (   ! o w n e r P l a y e r . I s U s i n g V e h i c l e ( )   )  
 	 	 {  
 	 	 	 i f   (   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n A i m '    
 	 	 	 	 | |   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n S h o o t '  
 	 	 	 	 | |   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n R e l o a d '   )  
 	 	 	 {  
 	 	 	 	 i t e m   =   t h i s . o w n e r P l a y e r . i n v . G e t I t e m F r o m S l o t (   ' l _ w e a p o n '   ) ;  
 	 	 	 	  
 	 	 	 	 i f   (   ! (   t h i s . o w n e r P l a y e r . i n v . I s I d V a l i d (   i t e m   )   & &   t h i s . o w n e r P l a y e r . i n v . I s I t e m C r o s s b o w (   i t e m   )   )   )      
 	 	 	 	 	 t h i s . O n F o r c e H o l s t e r (   f a l s e ,   t r u e   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   t h i s . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '   )  
 	 	 	 {  
 	 	 	 	 i f   (   ! o w n e r P l a y e r . G e t B I s C o m b a t A c t i o n A l l o w e d ( )    
 	 	 	 	 	 & &   o w n e r P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ A t t a c k  
 	 	 	 	 	 & &   o w n e r P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' f u l l B o d y A n i m W e i g h t '   )   = =   1 . f   )  
 	 	 	 	 	 O n F o r c e H o l s t e r (   t r u e ,   t r u e   ) ;  
 	 	 	 	  
 	 	 	 	 i f   (   o w n e r P l a y e r . I s I n S h a l l o w W a t e r ( )   & &   ! o w n e r P l a y e r . I s S w i m m i n g ( )   )  
 	 	 	 	 	 O n F o r c e H o l s t e r (   t r u e ,   f a l s e   ) ;  
 	 	 	 	 	  
 	 	 	 	 i f   (   o w n e r P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ N o r m a l   | |   o w n e r P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ A l e r t F a r   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   (   t h i s . I s S h o o t i n g C o m p l e t e ( )   | |   o w n e r P l a y e r . G e t I s S h o o t i n g F r i e n d l y ( )   )    
 	 	 	 	 	 	 & &   w a s B L A x i s R e l e a s e d    
 	 	 	 	 	 	 & &   ! o w n e r P l a y e r . b L A x i s R e l e a s e d   )  
 	 	 	 	 	 	 O n F o r c e H o l s t e r (   t r u e ,   f a l s e   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   ! i s A i m i n g W e a p o n   & &   ! i s S h o o t i n g W e a p o n   & &   ! t h i s . o w n e r P l a y e r . l a s t A x i s I n p u t I s M o v e m e n t   )  
 	 	 	 {  
 	 	 	 	 i f   (   (   I s S h o o t i n g C o m p l e t e ( )   & &   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n S h o o t '   )  
 	 	 	 	 	 | |   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n A i m '   )  
 	 	 	 	 	 S e t O w n e r O r i e n t a t i o n ( ) ;  
 	 	 	 } 	 	  
 	 	 }  
 	 	  
 	 	 w a s B L A x i s R e l e a s e d   =   o w n e r P l a y e r . b L A x i s R e l e a s e d ;  
 	 } 	  
  
 	 p u b l i c   f u n c t i o n   O n S p r i n t H o l s t e r ( )  
 	 { 	 	  
 	 	 i f   (   o w n e r P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' E x p l o r a t i o n '   | |   o w n e r P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S w i m m i n g '   )  
 	 	 {  
 	 	 	 i f   (   o w n e r P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' i s S h o o t i n g W e a p o n '   )   = =   0 . f    
 	 	 	 	 & &   o w n e r P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' i s A i m i n g W e a p o n '   )   = =   0 . f   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n S h o o t '   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   s h o o t i n g I s C o m p l e t e   )  
 	 	 	 	 	 	 O n F o r c e H o l s t e r (   t r u e ,   f a l s e   ) ;  
 	 	 	 	 } 	  
 	 	 	 	 e l s e   i f   (   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n A i m '   )  
 	 	 	 	 	 O n F o r c e H o l s t e r (   t r u e ,   f a l s e   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   P r o c e s s F u l l B o d y A n i m W e i g h t (   o p t i o n a l   f o r c e U p p e r B o d y A n i m   :   b o o l   )   :   b o o l  
 	 {  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   E x i t C o m b a t A c t i o n ( )   :   b o o l  
 	 {  
 	 	 i f   ( o w n e r P l a y e r   & &   ! o w n e r P l a y e r . I s I n C o m b a t A c t i o n ( )   )  
 	 	 {  
 	 	 	 i f   (   ! o w n e r P l a y e r . I s I n C o m b a t ( )   & &   o w n e r P l a y e r . b L A x i s R e l e a s e d   )  
 	 	 	 	 o w n e r P l a y e r . R a i s e E v e n t (   ' F o r c e A l e r t T o N o r m a l T r a n s i t i o n '   ) ;  
 	 	 	 e l s e  
 	 	 	 	 o w n e r P l a y e r . R a i s e E v e n t (   ' F o r c e B l e n d O u t '   ) ;  
 	 	 	 	  
 	 	 	 r e t u r n   t r u e ; 	  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   P r o c e s s C h a r a c t e r R o t a t i o n I n C o m b a t ( ) { }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   C l e a r D e p l o y e d E n t i t y ( d e s t r o y B o l t   :   b o o l )  
 	 { 	  
 	 	  
 	 	 i f ( d e s t r o y B o l t   & &   d e p l o y e d E n t   & &   d e p l o y e d E n t . I s S t o p p e d ( ) )  
 	 	 	 d e p l o y e d E n t . D e s t r o y ( ) ;  
 	 	 	  
 	 	 d e p l o y e d E n t   =   N U L L ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s D e p l o y e d E n t A i m i n g ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s D e p l o y e d E n t A i m i n g ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t D e p l o y e d E n t i t y ( )   :   W 3 A d v a n c e d P r o j e c t i l e  
 	 {  
 	 	 r e t u r n   d e p l o y e d E n t ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   S e t D e p l o y e d E n t V i s i b i l i t y (   f l a g   :   b o o l   )  
 	 {  
 	 	  
  
 	 	 i f   (   d e p l o y e d E n t   )  
 	 	 	 d e p l o y e d E n t . S e t V i s i b i l i t y (   f l a g   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   P r o c e s s C a n A t t a c k W h e n N o t I n C o m b a t ( )  
 	 {  
 	 	 i f   (   (   ! o w n e r P l a y e r . I s C o m b a t M u s i c E n a b l e d ( )   | |   o w n e r P l a y e r . p l a y e r A i m i n g . G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m i n g '   )   & &   ! C a n A t t a c k W h e n N o t I n C o m b a t ( )   )  
 	 	 {  
 	 	 	 o w n e r P l a y e r . S e t I s S h o o t i n g F r i e n d l y (   t r u e   ) ;  
 	 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i s S h o o t i n g F r i e n d l y ' ,   1 . f   ) ;  
 	 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i s S h o o t i n g F r i e n d l y F o r O v e r l a y ' ,   1 . f   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 o w n e r P l a y e r . S e t I s S h o o t i n g F r i e n d l y (   f a l s e   ) ;  
 	 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i s S h o o t i n g F r i e n d l y ' ,   0 . f   ) ;  
 	 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i s S h o o t i n g F r i e n d l y F o r O v e r l a y ' ,   0 . f   ) ;  
 	 	 } 	 	 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C a n A t t a c k W h e n N o t I n C o m b a t ( )   :   b o o l  
 	 {  
 	 	 v a r   s h o o t T a r g e t   :   C A c t o r ;  
 	 	 v a r   w e a p o n T o T h r o w P o s D i s t 	 :   f l o a t ;  
 	 	  
 	 	 w e a p o n T o T h r o w P o s D i s t   =   V e c D i s t a n c e (   o w n e r P l a y e r . p l a y e r A i m i n g . G e t T h r o w P o s i t i o n ( ) ,   o w n e r P l a y e r . p l a y e r A i m i n g . G e t T h r o w S t a r t P o s i t i o n ( )   ) ;  
 	 	  
 	 	 i f   (   o w n e r P l a y e r . G e t D i s p l a y T a r g e t ( )   & &   o w n e r P l a y e r . I s D i s p l a y T a r g e t T a r g e t a b l e ( )   )  
 	 	 	 s h o o t T a r g e t   =   ( C A c t o r ) (   o w n e r P l a y e r . G e t D i s p l a y T a r g e t ( )   ) ;  
 	 	 e l s e  
 	 	 	 s h o o t T a r g e t   =   ( C A c t o r ) (   o w n e r P l a y e r . s l i d e T a r g e t   ) ;  
 	 	 	  
 	 	 i f   (   t h i s . i s D e p l o y e d E n t A i m i n g   )    
 	 	 {  
 	 	 	 i f   (   o w n e r P l a y e r . p l a y e r A i m i n g . G e t S w e p t F r i e n d l y ( )   | |   w e a p o n T o T h r o w P o s D i s t   <   1 . f   ) 	  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 e l s e 	  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 e l s e   i f   (   s h o o t T a r g e t   & &   s h o o t T a r g e t . I s H u m a n ( )   & &   ! o w n e r P l a y e r . I s T h r e a t (   s h o o t T a r g e t   )   )    
 	 	 	 r e t u r n   f a l s e ;  
 	 	 e l s e  
 	 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   P e r f o r m e d D r a w ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   p e r f o r m e d D r a w ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   R e s e t A l l S e t t i n g s ( )  
 	 {  
 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i n A i m T h r o w ' ,   0 . f   ) ;  
 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i n A i m T h r o w F o r O v e r l a y ' ,   0 . f   ) ;  
 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' d o d g e B o o s t ' , 0 . 0 ) ;  
 	 	 i s S e t t i n g O w n e r O r i e n t a t i o n   =   f a l s e ;  
 	 	 E x i t C o m b a t A c t i o n ( ) ;  
 	 	  
 	 	 o w n e r P l a y e r . R e m o v e C u s t o m O r i e n t a t i o n T a r g e t (   ' R a n g e d W e a p o n '   ) ;  
 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' h a s C r o s s b o w H e l d ' ,   0 . f   ) ;  
  
 	 	 o w n e r P l a y e r . G e t M o v i n g A g e n t C o m p o n e n t ( ) . E n a b l e V i r t u a l C o n t r o l l e r (   ' C r o s s b o w ' ,   f a l s e   ) ;  
 	 	  
 	 	 i f   (   i s D e p l o y e d E n t A i m i n g   )  
 	 	 {  
 	 	 	 i s D e p l o y e d E n t A i m i n g   =   f a l s e ;  
 	 	 	 d e p l o y e d E n t . S t o p A i m i n g (   t r u e   ) ;  
 	 	 }  
 	 	  
 	 	 i f   (   ! o w n e r P l a y e r . I s U s i n g V e h i c l e ( )   )  
 	 	 	 o w n e r P l a y e r . O n E n a b l e A i m i n g M o d e (   f a l s e   ) ;  
 	 }  
 	  
 	 p r o t e c t e d   t i m e r   f u n c t i o n   H o l s t e r A f t e r D e l a y (   t i m e D e l t a   :   f l o a t   ,   i d   :   i n t )  
 	 {  
 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a n H o l s t e r A f t e r D e l a y ' ,   1 . f   ) ;  
 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a n H o l s t e r A f t e r D e l a y H o r s e ' ,   1 . f   ) ;  
 	 	 R e m o v e T i m e r (   ' H o l s t e r A f t e r D e l a y '   ) ;  
 	 	 R e m o v e T i m e r (   ' H o l s t e r W h e n M o v i n g T i m e r '   ) ;  
 	 }  
  
 	 p r o t e c t e d   v a r   b L A x i s W a s R e l e a s e d   :   b o o l ;  
 	 p r o t e c t e d   t i m e r   f u n c t i o n   H o l s t e r W h e n M o v i n g T i m e r (   t i m e D e l t a   :   f l o a t   ,   i d   :   i n t )  
 	 { 	  
 	 	 v a r   s t a t e C u r   :   n a m e ;  
 	 	 v a r   c a n H o l s t e r A f t e r D e l a y   :   b o o l ;  
 	 	  
 	 	 s t a t e C u r   =     o w n e r P l a y e r . s u b s t a t e M a n a g e r . G e t S t a t e C u r ( ) ;  
 	 	  
 	 	 i f (   ! o w n e r P l a y e r . b L A x i s R e l e a s e d   & &   o w n e r P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' A i m T h r o w '   & &   b L A x i s W a s R e l e a s e d   )  
 	 	 	 c a n H o l s t e r A f t e r D e l a y   =   t r u e ;  
 	 	 e l s e   i f   (   s t a t e C u r   = =   ' J u m p '   | |   s t a t e C u r   = =   ' R a g d o l l '   | |   s t a t e C u r   = =   ' S l i d e '   | |   s t a t e C u r   = =   ' T u r n T o J u m p '   )  
 	 	 	 c a n H o l s t e r A f t e r D e l a y   =   t r u e ;  
 	 	 e l s e   i f   (   o w n e r P l a y e r . I s S w i m m i n g ( )   & &   ! o w n e r P l a y e r . b L A x i s R e l e a s e d   )  
 	 	 	 c a n H o l s t e r A f t e r D e l a y   =   t r u e ;  
 	 	  
 	 	 i f   (   c a n H o l s t e r A f t e r D e l a y   )  
 	 	 {  
 	 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a n H o l s t e r A f t e r D e l a y ' ,   1 . f   ) ;  
 	 	 	 R e m o v e T i m e r (   ' H o l s t e r A f t e r D e l a y '   ) ;  
 	 	 	 R e m o v e T i m e r (   ' H o l s t e r W h e n M o v i n g T i m e r '   ) ;  
 	 	 }  
 	 	  
 	 	 b L A x i s W a s R e l e a s e d   =   o w n e r P l a y e r . b L A x i s R e l e a s e d ;  
 	 } 	  
 	  
 	 p r o t e c t e d   f u n c t i o n   P r o c e s s E n a b l e R a d i a l S l o t ( )  
 	 {  
 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s S h o o t i n g C o m p l e t e ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   s h o o t i n g I s C o m p l e t e ;  
 	 }  
 }  
  
 c l a s s   C r o s s b o w   e x t e n d s   R a n g e d W e a p o n  
 {  
 	 p r o t e c t e d 	 v a r   s h o t C o u n t 	 	 	 	 :   i n t ;  
 	 p r o t e c t e d 	 v a r   s h o t C o u n t L i m i t 	 	 	 :   i n t ;  
 	  
 	 d e f a u l t   s h o t C o u n t L i m i t   =   1 ;  
 	 d e f a u l t   s h o t C o u n t   =   0 ;    
 	  
 	 e v e n t   O n W e a p o n R e l o a d E n d ( )  
 	 {  
 	 	 i f   (   d e p l o y e d E n t   )  
 	 	 	 R e s e t S h o t C o u n t ( ) ;  
 	 	 	  
 	 	 s u p e r . O n W e a p o n R e l o a d E n d ( ) ; 	  
 	 }  
  
 	 e v e n t   O n P r o c e s s T h r o w E v e n t (   a n i m E v e n t N a m e   :   n a m e   )  
 	 {  
 	 	 i f   (   a n i m E v e n t N a m e   = =   ' P r o j e c t i l e T h r o w '   )  
 	 	 	 s h o t C o u n t   + =   1 ;  
 	  
 	 	 s u p e r . O n P r o c e s s T h r o w E v e n t (   a n i m E v e n t N a m e   ) ;  
 	 }  
 	  
 	 e v e n t   O n F o r c e H o l s t e r (   o p t i o n a l   f o r c e U p p e r B o d y A n i m ,   i n s t a n t ,   d r o p I t e m   :   b o o l   )  
 	 {  
 	 	 i f   (   G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '   & &   (   i n s t a n t   | |   G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n H o l s t e r '   )   )  
 	 	 {  
 	 	 	 P r o c e s s F u l l B o d y A n i m W e i g h t (   f o r c e U p p e r B o d y A n i m   ) ;  
 	 	 	 R e s e t O w n e r A n d W e a p o n ( ) ;  
 	 	 	  
 	 	 	 i f   (   i n s t a n t   )  
 	 	 	 	 R a i s e O w n e r G r a p h E v e n t s (   ' C r o s s b o w _ F o r c e B l e n d O u t ' ,   t r u e   ) ; 	 	 	 	  
 	 	 	 e l s e  
 	 	 	 	 R a i s e O w n e r G r a p h E v e n t s (   ' C r o s s b o w _ H o l s t e r ' ,   t r u e   ) ;  
 	 	 }  
  
 	 	 s u p e r . O n F o r c e H o l s t e r (   f o r c e U p p e r B o d y A n i m ,   i n s t a n t ,   d r o p I t e m     ) ;  
 	 }  
 	  
 	 e v e n t   O n R e p l a c e A m m o ( )  
 	 {  
 	 	  
 	 	  
 	 	 	 C l e a r D e p l o y e d E n t i t y ( t r u e ) ;  
 	 	 	 S e t B e h a v i o r G r a p h V a r i a b l e s (   ' i s W e a p o n L o a d e d ' ,   f a l s e   ) ;  
 	 	 	 p r e v i o u s A m m o I t e m N a m e   =   ' ' ;  
 	 	 	 s h o t C o u n t   =   s h o t C o u n t L i m i t   +   1 ;   / / m o d W 3 R e d u x R G C  
 	 	 	  
 	 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 	 R e l o a d W e a p o n W i t h O r W i t h o u t A n i m I f N e e d e d ( ) ;  
 	 	 	 R a i s e O w n e r G r a p h E v e n t s (   ' C r o s s b o w _ R e l o a d ' ,   t r u e   ) ;  
 	 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	  
 	 }  
  
 	 e v e n t   O n C r o s s b o w L o a d e d A n i m ( )  
 	 {  
 	 	 S e t D e p l o y e d E n t V i s i b i l i t y (   t r u e   ) ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   R e s e t O w n e r A n d W e a p o n ( )  
 	 {  
 	 	 S e t B e h a v i o r G r a p h V a r i a b l e s (   ' i s A i m i n g W e a p o n '   ,   f a l s e   ) ;  
 	 	 S e t B e h a v i o r G r a p h V a r i a b l e s (   ' i s S h o o t i n g W e a p o n '   ,   f a l s e   ) ; 	  
 	 	 i f   (   i s W e a p o n L o a d e d   )  
 	 	 	 R a i s e F o r c e E v e n t (   ' W e a p o n C r o s s b o w _ L o a d e d '   ) ;  
 	 	 e l s e  
 	 	 	 R a i s e F o r c e E v e n t (   ' W e a p o n C r o s s b o w _ U n l o a d e d '   ) ; 	  
 	 }  
  
 	 v a r   r e l o a d A t S t a r t C o m p l e t e 	 :   b o o l ;  
 	 p u b l i c   f u n c t i o n   I n i t i a l i z e (   n e w O w n e r   :   C A c t o r   )  
 	 {  
 	 	 i n v   =   ( C I n v e n t o r y C o m p o n e n t ) (   t h e P l a y e r . G e t C o m p o n e n t B y C l a s s N a m e (   ' C I n v e n t o r y C o m p o n e n t '   )   ) ;  
 	 	 s u p e r . I n i t i a l i z e (   n e w O w n e r   ) ;  
 	 	  
 	 	  
 	 	 i f   (   ! r e l o a d A t S t a r t C o m p l e t e   )  
 	 	 {  
 	 	 	 A d d T i m e r (   ' R e l o a d W e a p o n O n I n i t ' , 0 . 2   ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   t i m e r   f u n c t i o n   R e l o a d W e a p o n O n I n i t (   t i m e   :   f l o a t ,   t i m e r I d   :   i n t )  
 	 {  
 	 	 v a r   i d   	 	 :   S I t e m U n i q u e I d ;  
 	 	 v a r   p l a y e r 	 :   W 3 P l a y e r W i t c h e r ; 	  
 	  
 	 	 i f   (   o w n e r P l a y e r W i t c h e r   )  
 	 	 {  
 	 	 	 i f   (   o w n e r P l a y e r W i t c h e r . G e t I t e m E q u i p p e d O n S l o t ( E E S _ B o l t ,   i d )   )  
 	 	 	 {  
 	 	 	 	 R e l o a d W e a p o n (   i d   ) ;  
 	 	 	 	 R a i s e F o r c e E v e n t (   ' W e a p o n C r o s s b o w _ L o a d e d '   ) ;  
 	 	 	 	 r e l o a d A t S t a r t C o m p l e t e   =   t r u e ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 O n F o r c e H o l s t e r ( ) ;  
 	 	 	 	 L o g C h a n n e l (   ' C r o s s b o w ' ,   " E R R O R :   N o   a m m o   t o   r e l o a d ! ! ! "   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 	 I n i t i a l i z e (   ( C A c t o r ) (   G e t P a r e n t E n t i t y ( )   )   ) ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   R a i s e O w n e r G r a p h E v e n t s (   e v e n t N a m e   :   n a m e ,   f o r c e   :   b o o l   )   :   b o o l  
 	 {  
 	 	 v a r   t e m p E v e n t N a m e   :   n a m e ;  
 	 	  
 	 	 i f (   e v e n t N a m e   = =   ' C r o s s b o w _ D r a w '   )  
 	 	 {  
 	 	 	 i f (   o w n e r P l a y e r W i t c h e r . I s I n C o m b a t ( )   & &   o w n e r P l a y e r W i t c h e r . G e t I s S p r i n t i n g ( )   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f   (   o w n e r P l a y e r . I s U s i n g V e h i c l e ( )   )  
 	 	 {  
 	 	 	 i f   (   e v e n t N a m e   = =   ' C r o s s b o w _ D r a w '   )  
 	 	 	 	 t e m p E v e n t N a m e   =   ' V e h i c l e C r o s s b o w _ D r a w ' ;  
 	 	 	 e l s e   i f   (   e v e n t N a m e   = =   ' C r o s s b o w _ R e l o a d '   )  
 	 	 	 	 t e m p E v e n t N a m e   =   ' V e h i c l e C r o s s b o w _ R e l o a d ' ;  
 	 	 	 e l s e   i f   (   e v e n t N a m e   = =   ' C r o s s b o w _ A i m S h o o t '   )  
 	 	 	 	 t e m p E v e n t N a m e   =   ' V e h i c l e C r o s s b o w _ A i m S h o o t ' ; 	  
 	 	 	 e l s e   i f   (   e v e n t N a m e   = =   ' C r o s s b o w _ H o l s t e r '   )  
 	 	 	 	 t e m p E v e n t N a m e   =   ' V e h i c l e C r o s s b o w _ H o l s t e r ' ;  
 	 	 	 e l s e   i f   (   e v e n t N a m e   = =   ' C r o s s b o w _ F o r c e B l e n d O u t '   )  
 	 	 	 {  
 	 	 	 	 t e m p E v e n t N a m e   =   ' V e h i c l e C r o s s b o w _ F o r c e B l e n d O u t ' ;  
 	 	 	 	 f o r c e   =   f a l s e ;    
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 	 t e m p E v e n t N a m e   =   e v e n t N a m e ;  
 	 	 	  
 	 	 r e t u r n   s u p e r . R a i s e O w n e r G r a p h E v e n t s (   t e m p E v e n t N a m e ,   f o r c e   ) ;  
 	 } 	  
 	  
 	 p r o t e c t e d   f u n c t i o n   P l a y O w n e r R e l o a d A n i m ( )   :   b o o l  
 	 {  
 	 	 v a r   s h o u l d P l a y A n i m   :   b o o l ;  
 	 	  
 	 	 i f ( o w n e r P l a y e r W i t c h e r . C a n U s e S k i l l ( S _ P e r k _ 1 7 )   & &   s h o t C o u n t   > =   ( 1   +   s h o t C o u n t L i m i t )   )  
 	 	 	 s h o u l d P l a y A n i m   =   t r u e ;  
 	 	 e l s e   i f   ( ! o w n e r P l a y e r W i t c h e r . C a n U s e S k i l l ( S _ P e r k _ 1 7 )   & &   s h o t C o u n t   > =   s h o t C o u n t L i m i t   )  
 	 	 	 s h o u l d P l a y A n i m   =   t r u e ;  
 	 	 e l s e   i f   (   p r e v i o u s A m m o I t e m N a m e   ! =   ' B o d k i n   B o l t '   & &   p r e v i o u s A m m o I t e m N a m e   ! =   ' H a r p o o n   B o l t '   & &   G e t S p e c i a l A m m o C o u n t ( )   < =   0   )  
 	 	 	 s h o u l d P l a y A n i m   =   t r u e ;  
 	 	 e l s e   i f   (   p r e v i o u s A m m o I t e m N a m e   = =   ' '   )  
 	 	 	 s h o u l d P l a y A n i m   =   t r u e ;  
 	 	 e l s e  
 	 	 	 s h o u l d P l a y A n i m   =   f a l s e ;  
 	 	  
 	 	 i f   (   s h o u l d P l a y A n i m   )  
 	 	 {  
 	 	 	 S e t B e h a v i o r G r a p h V a r i a b l e s (   ' i s W e a p o n L o a d e d ' ,   f a l s e   ) ;  
 	 	 	 r e t u r n   t r u e ; 	  
 	 	 }  
 	 	 e l s e  
 	 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   G e t S p e c i a l A m m o C o u n t ( )   :   i n t  
 	 {  
 	 	 v a r   c o u n t   	 	 	 :   i n t ;  
 	 	 v a r   i d   	 	 	 	 :   S I t e m U n i q u e I d ;  
 	  
 	 	 i f   (   o w n e r P l a y e r W i t c h e r   )  
 	 	 {  
 	 	 	 i f   (   o w n e r P l a y e r W i t c h e r . G e t I t e m E q u i p p e d O n S l o t (   E E S _ B o l t ,   i d   )   )  
 	 	 	 {  
 	 	 	 	 i f   ( i n v . I s I t e m B o l t ( i d )   & &   ! i n v . I t e m H a s T a g ( i d ,   t h e G a m e . p a r a m s . T A G _ I N F I N I T E _ A M M O ) )  
 	 	 	 	 	 c o u n t   =   o w n e r P l a y e r W i t c h e r . i n v . G e t I t e m Q u a n t i t y ( i d ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 	 c o u n t   =   0 ;  
 	 	 }  
 	 	 	  
 	 	 r e t u r n   c o u n t ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   R e s e t S h o t C o u n t ( )  
 	 {  
 	 	 s h o t C o u n t   =   0 ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   S e t O w n e r O r i e n t a t i o n ( )  
 	 {  
 	 	 v a r   n e w C u s t o m O r i e n t a t i o n T a r g e t   :   E O r i e n t a t i o n T a r g e t ;  
  
 	 	 n e w C u s t o m O r i e n t a t i o n T a r g e t   =   o w n e r P l a y e r . G e t C o m b a t A c t i o n O r i e n t a t i o n T a r g e t (   C A T _ C r o s s b o w   ) ;  
  
 	 	 i f   (   o w n e r P l a y e r . G e t O r i e n t a t i o n T a r g e t ( )   ! =   n e w C u s t o m O r i e n t a t i o n T a r g e t   )  
 	 	 {  
 	 	 	 o w n e r P l a y e r . A d d C u s t o m O r i e n t a t i o n T a r g e t (   n e w C u s t o m O r i e n t a t i o n T a r g e t ,   ' R a n g e d W e a p o n '   ) ;  
 	 	 }  
 	 	  
 	 	 i f   (   n e w C u s t o m O r i e n t a t i o n T a r g e t   = =   O T _ C u s t o m H e a d i n g   )  
 	 	 	 o w n e r P l a y e r . S e t O r i e n t a t i o n T a r g e t C u s t o m H e a d i n g (   o w n e r P l a y e r . G e t C o m b a t A c t i o n H e a d i n g ( ) ,   ' R a n g e d W e a p o n '   ) ; 	 	  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   P r o c e s s C h a r a c t e r R o t a t i o n I n C o m b a t ( )  
 	 {  
 	 	 v a r   t a r g e t T o P l a y e r H e a d i n g 	 :   f l o a t ;  
 	 	 v a r   a n g l e D i f f 	 	 	 	 :   f l o a t ;  
 	 	 v a r   a n g l e O f f s e t 	 	 	 	 :   f l o a t ;  
 	 	  
 	 	  
 	 }  
  
  
 	 p r o t e c t e d   f u n c t i o n   P r o c e s s F u l l B o d y A n i m W e i g h t (   o p t i o n a l   f o r c e U p p e r B o d y A n i m   :   b o o l   )   :   b o o l  
 	 { 	  
 	 	 v a r   i s A x i s R e l e a s e d   :   b o o l ;  
 	 	  
 	 	 i f   (   t h i s . w a s B L A x i s R e l e a s e d   )  
 	 	 {  
 	 	 	 i s A x i s R e l e a s e d   =   t r u e ;  
 	 	 	 i f   (   ! o w n e r P l a y e r . b L A x i s R e l e a s e d   & &   o w n e r P l a y e r . I s I n p u t H e a d i n g R e a d y ( )   )  
 	 	 	 	 i s A x i s R e l e a s e d   =   f a l s e ;  
 	 	 }  
 	 	 e l s e  
 	 	 	 i s A x i s R e l e a s e d   =   o w n e r P l a y e r . b L A x i s R e l e a s e d ;  
 	  
 	 	 i f   (   o w n e r P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ A l e r t N e a r   )  
 	 	 	 s e t F u l l W e i g h t   =   t r u e ;  
 	 	  
 	 	 i f   (   (   i s A x i s R e l e a s e d   | |   o w n e r P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ A l e r t N e a r   | |   o w n e r P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ G u a r d e d     )     & &   (   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n A i m '   | |   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n S h o o t '   )   )  
 	 	 	 s e t F u l l W e i g h t   =   t r u e ;  
 	 	 	  
 	 	 i f   (   i s A x i s R e l e a s e d   & &   (   o w n e r P l a y e r . I s I n C o m b a t A c t i o n ( )   | |   o w n e r P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ G u a r d e d   )   )  
 	 	 	 s e t F u l l W e i g h t   =   t r u e ;  
 	 	 	  
 	 	 i f   (   i s A x i s R e l e a s e d   & &   (   G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n D r a w '   | |   G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n R e l o a d '   )     )  
 	 	 	 s e t F u l l W e i g h t   =   t r u e ;  
  
 	 	  
 	 	  
 	 	 	  
 	 	 i f   (   o w n e r P l a y e r . I s S w i m m i n g ( )   )  
 	 	 {  
 	 	 	 i f   (   (   ! i s A x i s R e l e a s e d   | |   t h e I n p u t . I s A c t i o n P r e s s e d (   ' D i v e U p '   )   | |   t h e I n p u t . I s A c t i o n P r e s s e d (   ' D i v e D o w n '   )   )    
 	 	 	 	 & &   (   G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n D r a w '   | |   G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n H o l s t e r '   )   )  
 	 	 	 	 s e t F u l l W e i g h t   =   f a l s e ;  
 	 	 	 e l s e 	  
 	 	 	 	 s e t F u l l W e i g h t   =   t r u e ;  
 	 	 }  
 	 	 	  
 	 	 i f   (   ! i s A x i s R e l e a s e d   & &   o w n e r P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ N o r m a l   & &   ! i s D e p l o y e d E n t A i m i n g   & &   ! o w n e r P l a y e r . I s S w i m m i n g ( )     )  
 	 	 {  
 	 	 	  
 	 	 	 	 s e t F u l l W e i g h t   =   f a l s e ;  
 	 	 }  
 	 	 e l s e   i f   (   o w n e r P l a y e r . G e t I s S p r i n t i n g ( )   & &   ! i s D e p l o y e d E n t A i m i n g   )  
 	 	 	 s e t F u l l W e i g h t   =   f a l s e ;  
 	 	 e l s e   i f   (   ! i s A x i s R e l e a s e d   & &   ! o w n e r P l a y e r . I s S w i m m i n g ( )   & &   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n H o l s t e r '   & &   (   o w n e r P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ N o r m a l   | |   o w n e r P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ A l e r t F a r   )   )    
 	 	 	 s e t F u l l W e i g h t   =   f a l s e ;  
 	 	 e l s e   i f   (   o w n e r P l a y e r . I s I n A i r ( )   | |   o w n e r P l a y e r . G e t C r i t i c a l B u f f s C o u n t ( )   >   0   )  
 	 	 	 s e t F u l l W e i g h t   =   f a l s e ;  
 	 	 e l s e   i f   (   o w n e r P l a y e r . I s T h r o w i n g I t e m ( ) )  
 	 	 	 s e t F u l l W e i g h t   =   f a l s e ;  
 	 	 e l s e   i f   (   o w n e r P l a y e r . I s I n C o m b a t A c t i o n ( )   & &   (   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n H o l s t e r '   )   )    
 	 	 	 s e t F u l l W e i g h t   =   f a l s e ;  
 	 	  
 	 	  
 	 	 e l s e   i f   (   o w n e r P l a y e r . p l a y e r M o v e T y p e   = =   P M T _ R u n   | |   o w n e r P l a y e r . p l a y e r M o v e T y p e   = =   P M T _ S p r i n t   )  
 	 	 	 s e t F u l l W e i g h t   =   f a l s e ;  
 	 	 	  
 	 	 i f   (   o w n e r P l a y e r . p l a y e r M o v e T y p e   = =   P M T _ S p r i n t   )  
 	 	 	 s e t F u l l W e i g h t   =   f a l s e ;  
 	 	  
 	 	 i f   (   o w n e r P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m T h r o w '   & &   ! o w n e r P l a y e r . I s I n A i r ( )   )  
 	 	 	 s e t F u l l W e i g h t   =   t r u e ; 	 	 	 	  
 	 	  
 	 	 i f   (   f o r c e U p p e r B o d y A n i m   )  
 	 	 	 s e t F u l l W e i g h t   =   f a l s e ;  
 	 	 	  
 	 	 i f   (   s e t F u l l W e i g h t   )  
 	 	 	 L o g C h a n n e l (   ' R a n g e d W e a p o n ' ,   " s e t F u l l W e i g h t   :   T R U E "   ) ;  
 	 	 e l s e  
 	 	 {  
 	 	 	 L o g C h a n n e l (   ' R a n g e d W e a p o n ' ,   " s e t F u l l W e i g h t   :   F A L S E "   ) ;  
 	 	 	 i f   (   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n R e l o a d '   )  
 	 	 	 	 L o g C h a n n e l (   ' R a n g e d W e a p o n ' ,   " s e t F u l l W e i g h t   :   F A L S E "   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' f u l l B o d y A n i m W e i g h t ' ,   ( f l o a t ) s e t F u l l W e i g h t   ) ;  
 	 	 	  
 	 	 r e t u r n   s e t F u l l W e i g h t ;  
 	 }  
  
 	 p r o t e c t e d   f u n c t i o n   E x i t C o m b a t A c t i o n ( )   :   b o o l  
 	 {  
 	 	 i f   (   ! s u p e r . E x i t C o m b a t A c t i o n ( )   )  
 	 	 {  
 	 	 	 i f   (   o w n e r P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ C r o s s b o w   )  
 	 	 	 {  
 	 	 	 	 i f   (   ! o w n e r P l a y e r . I s I n C o m b a t ( )   & &   o w n e r P l a y e r . b L A x i s R e l e a s e d   )  
 	 	 	 	 	 o w n e r P l a y e r . R a i s e E v e n t (   ' F o r c e A l e r t T o N o r m a l T r a n s i t i o n '   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 o w n e r P l a y e r . R a i s e E v e n t (   ' F o r c e B l e n d O u t '   ) ;  
 	 	 	 	 	  
 	 	 	 	 r e t u r n   t r u e ; 	  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 } 	  
 }  
  
 s t a t e   S t a t e _ W e a p o n W a i t   i n   R a n g e d W e a p o n  
 {  
 	 v a r   w a s P r e s s e d   :   b o o l ;  
  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 t h e P l a y e r . B l o c k A l l A c t i o n s (   ' R a n g e d W e a p o n ' ,   f a l s e ) ;  
 	 	 t h e P l a y e r . B l o c k A l l A c t i o n s (   ' R a n g e d W e a p o n R e l o a d ' ,   f a l s e ) ;  
 	 	 t h e P l a y e r . B l o c k A l l A c t i o n s (   ' R a n g e d W e a p o n A i m i n g ' ,   f a l s e ) ;  
 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ T h r o w B o m b ,   ' S h o o t i n g C r o s s b o w '   ) ;  
 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ D r a w W e a p o n ,   ' R a n g e d W e a p o n A i m i n g '   ) ;  
 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ D r a w W e a p o n ,   ' R a n g e d W e a p o n R e l o a d '   ) ;  
 	 	  
 	 	 p a r e n t . R e s e t A l l S e t t i n g s ( ) ;  
 	 	  
 	 	 p a r e n t . U n l o c k ( ) ; 	  
 	  
 	 	 p a r e n t . R e m o v e T i m e r (   ' H o l s t e r A f t e r D e l a y '   ) ;  
 	 	 p a r e n t . R e m o v e T i m e r (   ' H o l s t e r W h e n M o v i n g T i m e r '   ) ; 	  
 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a n H o l s t e r A f t e r D e l a y ' ,   0 . f   ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a n H o l s t e r A f t e r D e l a y H o r s e ' ,   0 . f   ) ; 	  
 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' h a s C r o s s b o w O n H a n d ' ,   0 . f   ) ;  
 	  
 	 	 p a r e n t . R e m o v e T i m e r (   ' I n p u t L o c k F a i l s a f e '   ) ; 	 	  
 	 	 D e l a y e d P r o c e s s F u l l B o d y A n i m W e i g h t ( ) ;  
 	 	  
 	 	 p a r e n t . o w n e r P l a y e r . O n D o d g e B o o s t ( ) ; 	  
 	 	  
 	 	 p a r e n t . s h o o t i n g I s C o m p l e t e   =   f a l s e ;  
 	 	  
 	 	  
 	 	  
 	 }  
 	  
 	 e v e n t   O n L e a v e S t a t e (   n e x t S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 p a r e n t . p e r f o r m e d D r a w   =   f a l s e ;  
 	 	 p a r e n t . A d d T i m e r (   ' I n p u t L o c k F a i l s a f e ' ,   0 . f ,   t r u e   ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' h a s C r o s s b o w O n H a n d ' ,   1 . f   ) ;  
 	 }  
 	  
 	 e v e n t   O n R a n g e d W e a p o n P r e s s ( )  
 	 {  
 	 	 P e r f o r m D r a w (   t r u e   ) ;  
 	 }  
 	  
 	 e v e n t   O n R a n g e d W e a p o n R e l e a s e ( )  
 	 {  
  
  
  
 	 	 i f   (   ! p a r e n t . p e r f o r m e d D r a w   )  
 	 	 	 P e r f o r m D r a w (   f a l s e   ) ;  
 	 	 e l s e   i f   (   w a s P r e s s e d   )  
 	 	 {  
 	 	 	 w a s P r e s s e d   =   f a l s e ;  
 	 	 	 p a r e n t . O n R a n g e d W e a p o n R e l e a s e ( ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   P e r f o r m D r a w (   p r e s s e d   :     b o o l   )  
 	 {  
 	 	 w a s P r e s s e d   =   p r e s s e d ;  
 	  
 	 	  
 	 	  
 	 	 v i r t u a l _ p a r e n t . I n i t i a l i z e (   ( C A c t o r ) (   p a r e n t . G e t P a r e n t E n t i t y ( )   )   ) ;  
 	 	  
 	 	 i f   (   p r e s s e d   )  
 	 	 	 v i r t u a l _ p a r e n t . O n R a n g e d W e a p o n P r e s s ( ) ;  
 	 	 e l s e    
 	 	 	 v i r t u a l _ p a r e n t . O n R a n g e d W e a p o n R e l e a s e ( ) ;  
 	 	  
 	 	 i f   (   p a r e n t . i s P l a y e r   )  
 	 	 {  
 	 	 	 v i r t u a l _ p a r e n t . P r o c e s s F u l l B o d y A n i m W e i g h t ( ) ;  
 	 	  
 	 	 	 	  
 	 	 	 D r a w E v e n t ( ) ;  
 	 	 } 	  
 	 }  
 	  
 	 e n t r y   f u n c t i o n   D e l a y e d P r o c e s s F u l l B o d y A n i m W e i g h t ( )  
 	 {  
 	 	 S l e e p ( 1 . 5 f ) ;  
 	 	 p a r e n t . s e t F u l l W e i g h t   =   0 . f ;  
 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' f u l l B o d y A n i m W e i g h t ' ,   ( f l o a t ) (   p a r e n t . s e t F u l l W e i g h t   )   ) ;  
 	 }  
 	  
 	 e n t r y   f u n c t i o n   D r a w E v e n t ( )  
 	 {  
 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' f a i l S a f e D r a w ' ,   1 . 0   ) ;  
 	 	 v i r t u a l _ p a r e n t . R a i s e O w n e r G r a p h E v e n t s (   ' C r o s s b o w _ D r a w ' ,   t r u e   ) ;  
 	 	 p a r e n t . p e r f o r m e d D r a w   =   t r u e ;  
 	 }  
 }  
  
 s t a t e   S t a t e _ W e a p o n D r a w   i n   R a n g e d W e a p o n  
 {  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 { 	  
 	 	 v a r   t a r g e t T o P l a y e r H e a d i n g   	 :   f l o a t ;  
 	 	 v a r   p l a y e r H e a d i n g 	 	 	 :   f l o a t ;  
 	 	 v a r   a c t i v e T i m e 	 	 	 	 :   f l o a t ;  
 	 	  
 	 	  
 	 	 p a r e n t . o w n e r P l a y e r . r a d i a l S l o t s . C l e a r ( ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . r a d i a l S l o t s . P u s h B a c k (   ' S l o t 1 '   ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . r a d i a l S l o t s . P u s h B a c k (   ' S l o t 2 '   ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . r a d i a l S l o t s . P u s h B a c k (   ' S l o t 4 '   ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . r a d i a l S l o t s . P u s h B a c k (   ' S l o t 5 '   ) ;  
 	 	 p a r e n t . P r o c e s s E n a b l e R a d i a l S l o t ( ) ;  
 	  
 	 	 p a r e n t . A d d T i m e r (   ' P r o c e s s F u l l B o d y A n i m W e i g h t T i m e r ' ,   0 . 0 1 f ,   t r u e   ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . O n D o d g e B o o s t ( ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . R a i s e E v e n t (   ' D i v i n g F o r c e S t o p '   ) ;  
 	 	  
 	 	 p a r e n t . s h o o t i n g I s C o m p l e t e   =   f a l s e ;  
 	 	  
 	 	 p a r e n t . R e m o v e T i m e r (   ' H o l s t e r A f t e r D e l a y '   ) ;  
 	 	 p a r e n t . R e m o v e T i m e r (   ' H o l s t e r W h e n M o v i n g T i m e r '   ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a n H o l s t e r A f t e r D e l a y ' ,   0 . f   ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a n H o l s t e r A f t e r D e l a y H o r s e ' ,   0 . f   ) ; 	 	 	 	  
 	 	  
 	 	  
 	 	  
 	 	 	  
 	 	 E q u i p ( ) ;  
 	 	  
 	 	 t h e P l a y e r . G o T o C o m b a t I f N e e d e d ( ) ;  
 	 	  
 	 	 t h e P l a y e r . B l o c k A c t i o n (   E I A B _ T h r o w B o m b ,   ' S h o o t i n g C r o s s b o w '   ) ;  
 	 	  
 	 	  
 	 	 	 t h e P l a y e r . B l o c k A c t i o n (   E I A B _ D i s m o u n t V e h i c l e ,   ' S h o o t i n g C r o s s b o w '   ) ;  
 	 	 	 t h e P l a y e r . B l o c k A c t i o n (   E I A B _ M o u n t V e h i c l e ,   ' S h o o t i n g C r o s s b o w '   ) ;  
 	 	  
 	 	 i f   (   ! p a r e n t . o w n e r P l a y e r . I s U s i n g V e h i c l e ( )   & &   (   p a r e n t . o w n e r P l a y e r . b L A x i s R e l e a s e d   | |   p a r e n t . o w n e r P l a y e r . I s S w i m m i n g ( )   )   )  
 	 	 {  
 	 	 	 t a r g e t T o P l a y e r H e a d i n g   =   p a r e n t . o w n e r P l a y e r . G e t O r i e n t a t i o n T a r g e t H e a d i n g (   p a r e n t . o w n e r P l a y e r . G e t O r i e n t a t i o n T a r g e t ( )   ) ;  
 	 	 	 p l a y e r H e a d i n g   =   p a r e n t . G e t H e a d i n g ( ) ;  
 	 	 	  
 	 	 	 i f   (   p r e v S t a t e N a m e   = =   ' S t a t e _ W e a p o n W a i t '     )  
 	 	 	 {  
 	 	 	 	 i f   (   p a r e n t . o w n e r P l a y e r . I s S w i m m i n g ( )   )  
 	 	 	 	 	 a c t i v e T i m e   =   0 . 5 f ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 a c t i v e T i m e   =   0 . 2 f ;  
 	 	 	 	 	  
 	 	 	 	 p a r e n t . o w n e r P l a y e r . S e t C u s t o m R o t a t i o n (   ' C r o s s b o w ' ,   t a r g e t T o P l a y e r H e a d i n g ,   0 . 0 f ,   a c t i v e T i m e ,   f a l s e   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n L e a v e S t a t e (   n e x t S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 v a r   i d   :   S I t e m U n i q u e I d ;  
 	  
 	 	 i d   =   p a r e n t . i n v . G e t I t e m F r o m S l o t ( ' l _ w e a p o n ' ) ;  
 	 	 i f   (   p a r e n t . i n v . I s I d V a l i d (   i d     )   & &   ! p a r e n t . i n v . I s I t e m C r o s s b o w (   i d   )   )  
 	 	 	 v i r t u a l _ p a r e n t . O n F o r c e H o l s t e r ( ) ;  
 	 }  
 	  
 	 e n t r y   f u n c t i o n   E q u i p ( )  
 	 {  
 	 	 v a r   i t e m I d :   S I t e m U n i q u e I d ;  
 	 	 v a r   t a r g e t T o P l a y e r H e a d i n g   	 :   f l o a t ;  
 	  
 	 	 i f   (   p a r e n t . i s P l a y e r   )  
 	 	 {  
 	 	 	 p a r e n t . S e t C l e a n u p F u n c t i o n (   ' C a n c e l l e d E q u i p i n g '   ) ;  
 	 	 	 p a r e n t . L o c k ( ) ;  
 	 	 	  
 	 	 	 i f   (   p a r e n t . o w n e r P l a y e r . I s U s i n g V e h i c l e ( )   )  
 	 	 	 	 S l e e p (   0 . 2 f   ) ;  
 	 	 	 e l s e  
 	 	 	 	 S l e e p (   0 . 1 f   ) ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 i f   (   p a r e n t . o w n e r P l a y e r . i n v . G e t I t e m E q u i p p e d O n S l o t (   E E S _ R a n g e d W e a p o n ,   i t e m I d   )   ) 	  
 	 	 	 	 p a r e n t . o w n e r P l a y e r . D r a w I t e m s L a t e n t (   i t e m I d   ) ;  
 	 	 	 	  
 	 	 	  
 	 	 	  
  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 v i r t u a l _ p a r e n t . R e l o a d W e a p o n W i t h O r W i t h o u t A n i m I f N e e d e d ( ) ;  
 	 	 } 	  
 	 }  
 	  
 	 c l e a n u p   f u n c t i o n   C a n c e l l e d E q u i p i n g ( )  
 	 { 	  
 	 	  
 	 	  
 	 } 	  
 }  
  
 s t a t e   S t a t e _ W e a p o n R e l o a d   i n   R a n g e d W e a p o n  
 {  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 i f   (   p a r e n t . o w n e r P l a y e r . b L A x i s R e l e a s e d   )  
 	 	 {  
 	 	 	 p a r e n t . o w n e r P l a y e r . S e t C o m b a t I d l e S t a n c e (   1 . f   ) ;  
 	 	 	  
 	 	 }  
 	 	  
 	 	 p a r e n t . P r o c e s s E n a b l e R a d i a l S l o t ( ) ;  
  
 	 	  
 	  
 	 	 p a r e n t . o w n e r P l a y e r . R a i s e E v e n t (   ' D i v i n g F o r c e S t o p '   ) ;    
 	 	 L o c k ( ) ;  
 	 	 i f   (   p a r e n t . o w n e r P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m T h r o w '   )  
 	 	 	 R o t a t e O w n e r T o C a m e r a ( ) ;  
 	 }  
 	  
 	 e v e n t   O n L e a v e S t a t e (   n e x t S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 U n l o c k ( ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   R o t a t e O w n e r T o C a m e r a ( )  
 	 {  
 	 	 v a r   t a r g e t T o P l a y e r H e a d i n g   :   f l o a t ;  
 	 	  
 	 	 t a r g e t T o P l a y e r H e a d i n g   =   p a r e n t . o w n e r P l a y e r . G e t O r i e n t a t i o n T a r g e t H e a d i n g (   O T _ C a m e r a O f f s e t   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 p a r e n t . A d d T i m e r (   ' U p d a t e C u s t o m R o t a t i o n H e a d i n g T i m e r ' ,   0 . 0 0 1 f ,   t r u e   ) ;  
 	 }  
 	  
 	 p r i v a t e   t i m e r   f u n c t i o n   U p d a t e C u s t o m R o t a t i o n H e a d i n g T i m e r (   t i m e D e l t a   :   f l o a t   ,   i d   :   i n t )  
 	 {  
 	 	 v a r   t a r g e t T o P l a y e r H e a d i n g   :   f l o a t ;  
  
 	 	 t a r g e t T o P l a y e r H e a d i n g   =   p a r e n t . o w n e r P l a y e r . G e t O r i e n t a t i o n T a r g e t H e a d i n g (   O T _ C a m e r a O f f s e t   ) ;  
 	 	  
 	 	 p a r e n t . o w n e r P l a y e r . U p d a t e C u s t o m R o t a t i o n H e a d i n g (   ' C r o s s b o w ' ,   t a r g e t T o P l a y e r H e a d i n g   ) ;  
 	 }  
  
 	 p r i v a t e   f u n c t i o n   L o c k ( )  
 	 {  
 	 	 v a r   a c t i o n B l o c k i n g E x c e p t i o n s   :   a r r a y < E I n p u t A c t i o n B l o c k > ;  
  
 	 	  
 	 	 t h e P l a y e r . B l o c k A c t i o n (   E I A B _ D r a w W e a p o n ,   ' R a n g e d W e a p o n R e l o a d '   ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   U n l o c k ( )  
 	 {  
 	 	  
 	 	 t h e P l a y e r . B l o c k A l l A c t i o n s (   ' R a n g e d W e a p o n R e l o a d ' ,   f a l s e ) ;  
 	 } 	  
 }  
  
 s t a t e   S t a t e _ W e a p o n A i m   i n   R a n g e d W e a p o n  
 {  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 { 	  
 	 	 i f   (   ! p a r e n t . o w n e r P l a y e r . I s U s i n g V e h i c l e ( )   )  
 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r W e a p o n F a i l S a f e ' ,   1 . 5 f   ) ;  
 	 	  
 	 	 i f   (   p a r e n t . o w n e r P l a y e r . b L A x i s R e l e a s e d   )  
 	 	 	 p a r e n t . o w n e r P l a y e r . S e t C o m b a t I d l e S t a n c e (   1 . f   ) ;  
 	 	 	  
 	 	 p a r e n t . A d d T i m e r (   ' P r o c e s s F u l l B o d y A n i m W e i g h t T i m e r ' ,   0 . 1 f ,   t r u e   ) ; 	  
 	 	 v i r t u a l _ p a r e n t . P r o c e s s C h a r a c t e r R o t a t i o n I n C o m b a t ( ) ;  
 	 	  
 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a n H o l s t e r A f t e r D e l a y ' ,   0 . f   ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a n H o l s t e r A f t e r D e l a y H o r s e ' ,   0 . f   ) ; 	 	  
  
 	 	 p a r e n t . P r o c e s s E n a b l e R a d i a l S l o t ( ) ;  
 	 	  
 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' h a s C r o s s b o w H e l d ' ,   1 . f   ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . R a i s e E v e n t (   ' D i v i n g F o r c e S t o p '   ) ;    
 	 	 p a r e n t . P r o c e s s C a n A t t a c k W h e n N o t I n C o m b a t ( ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . G e t M o v i n g A g e n t C o m p o n e n t ( ) . E n a b l e V i r t u a l C o n t r o l l e r (   ' C r o s s b o w ' ,   t r u e   ) ;  
 	 	  
 	 	 p a r e n t . s h o o t i n g I s C o m p l e t e   =   f a l s e ;  
 	 	  
 	 	 i f   (   ! p a r e n t . o w n e r P l a y e r . I s U s i n g V e h i c l e ( )  
 	 	 	 & &   p a r e n t . o w n e r P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' i s S h o o t i n g W e a p o n '   )   = =   0 . f    
 	 	 	 & &   p a r e n t . o w n e r P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' i s A i m i n g W e a p o n '   )   = =   0 . f   )  
 	 	 {  
 	 	 	 i f     (   p a r e n t . o w n e r P l a y e r . p l a y e r A i m i n g . G e t C u r r e n t S t a t e N a m e ( )   = =   ' W a i t i n g '   )  
 	 	 	 {  
 	 	 	 	 i f   (   p a r e n t . o w n e r P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ A l e r t N e a r   | |   p a r e n t . o w n e r P l a y e r . I s S w i m m i n g ( )   )    
 	 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r A f t e r D e l a y ' ,   0 . f   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 	 e l s e   i f   (   t h e I n p u t . G e t A c t i o n V a l u e (   ' R G C _ C r o s s B o w '   )   = =   0 . f   )  
 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r A f t e r D e l a y ' ,   0 . f   ) ;  
 	 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	 }  
 	 	 e l s e  
 	 	 	 p a r e n t . L o c k ( ) ;  
 	 	  
 	 	 C h e c k G o t o A i m T h r o w ( ) ;  
 	 }  
 	  
 	 e v e n t   O n L e a v e S t a t e (   n e x t S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 U n l o c k ( ) ;  
 	 	 p a r e n t . R e m o v e T i m e r (   ' U p d a t e C u s t o m R o t a t i o n H e a d i n g T i m e r '   ) ;  
 	 	 p a r e n t . R e m o v e T i m e r (   ' H o l s t e r W e a p o n F a i l S a f e '   ) ;  
 	 	  
 	 	 p a r e n t . R e m o v e T i m e r (   ' H o l s t e r A f t e r D e l a y '   ) ;  
 	 	 p a r e n t . R e m o v e T i m e r (   ' H o l s t e r W h e n M o v i n g T i m e r '   ) ; 	  
 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a n H o l s t e r A f t e r D e l a y ' ,   0 . f   ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a n H o l s t e r A f t e r D e l a y H o r s e ' ,   0 . f   ) ;  
 	 }  
  
 	 e v e n t   O n R a n g e d W e a p o n P r e s s ( )  
 	 {  
 	 	 v i r t u a l _ p a r e n t . P r o c e s s C h a r a c t e r R o t a t i o n I n C o m b a t ( ) ;  
 	 	 C h e c k G o t o A i m T h r o w ( ) ;  
 	 	 p a r e n t . O n R a n g e d W e a p o n P r e s s ( ) ;  
 	 }  
 	  
 	 e v e n t   O n R a n g e d W e a p o n R e l e a s e ( )  
 	 {  
 	 	 i f   (   ! p a r e n t . o w n e r P l a y e r . I s U s i n g V e h i c l e ( )   )  
 	 	 	 v i r t u a l _ p a r e n t . P r o c e s s C h a r a c t e r R o t a t i o n I n C o m b a t ( ) ;  
 	 	 	  
 	 	 p a r e n t . O n R a n g e d W e a p o n R e l e a s e ( ) ;  
 	 }  
 	  
 	 e n t r y   f u n c t i o n   C h e c k G o t o A i m T h r o w ( )  
 	 {  
 	 	 v a r   t a r g e t T o P l a y e r H e a d i n g   	 :   f l o a t ;  
 	 	 v a r   s t a r t T i m e 	 	 	 	 :   f l o a t ;    
 	 	  
 	 	 s t a r t T i m e   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	 w h i l e (   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( )   <   s t a r t T i m e   +   0 . 2   )  
 	 	 {  
 	 	 	 i f   (   ! (   p a r e n t . o w n e r P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m T h r o w '   & &   p a r e n t . d e p l o y e d E n t   )   )  
 	 	 	 {  
 	 	 	 	 v i r t u a l _ p a r e n t . S e t O w n e r O r i e n t a t i o n ( ) ; 	  
 	 	 	 }  
 	 	  
 	 	 	 S l e e p (   0 . 0 0 0 1 f   ) ;  
 	 	 } 	 	  
 	 	  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f   (   t h e I n p u t . G e t A c t i o n V a l u e (   ' R G C _ C r o s s B o w '   )   = =   1 . f    
 	 	 	 | |   t h e I n p u t . G e t A c t i o n V a l u e (   ' R G C _ H o r s e C r o s s B o w '   )   = =   1 . f   )  
 	 	 {  
 	 	 / / m o d W 3 R e d u x R G C - - 	  
 	 	 	 i f (   p a r e n t . o w n e r P l a y e r   & &   ! p a r e n t . o w n e r P l a y e r . I s U s i n g V e h i c l e ( )   )  
 	 	 	 { 	  
 	 	 	 	 p a r e n t . R e m o v e T i m e r (   ' H o l s t e r A f t e r D e l a y '   ) ;  
 	 	 	 	 p a r e n t . R e m o v e T i m e r (   ' H o l s t e r W h e n M o v i n g T i m e r '   ) ;  
 	 	 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a n H o l s t e r A f t e r D e l a y ' ,   0 . f   ) ;  
 	 	 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a n H o l s t e r A f t e r D e l a y H o r s e ' ,   0 . f   ) ; 	 	 	 	  
 	 	 	  
 	 	 	 	 i f   (   p a r e n t . o w n e r P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m T h r o w '   | |   p a r e n t . o w n e r P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ A l e r t N e a r   )  
 	 	 	 	 	 t a r g e t T o P l a y e r H e a d i n g   =   p a r e n t . o w n e r P l a y e r . G e t O r i e n t a t i o n T a r g e t H e a d i n g (   O T _ A c t o r   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 t a r g e t T o P l a y e r H e a d i n g   =   p a r e n t . o w n e r P l a y e r . G e t O r i e n t a t i o n T a r g e t H e a d i n g (   O T _ C a m e r a O f f s e t   ) ;  
 	 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 S l e e p (   0 . 1 f   ) ;  
 	 	 	 p a r e n t . R e m o v e T i m e r (   ' U p d a t e C u s t o m R o t a t i o n H e a d i n g T i m e r '   ) ;  
  
 	 	 	 i f   (   ! p a r e n t . o w n e r P l a y e r . I s U s i n g V e h i c l e ( )   )  
 	 	 	 {  
 	 	 	 	 p a r e n t . R e m o v e T i m e r (   ' H o l s t e r W e a p o n F a i l S a f e '   ) ;  
 	 	 	 	 L o c k ( ) ;  
 	 	 	 } 	  
  
 	 	 	 i f   (   p a r e n t . d e p l o y e d E n t   )  
 	 	 	 {  
 	 	 	 	 i f   (   p a r e n t . o w n e r P l a y e r . p l a y e r A i m i n g . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' A i m i n g '   )  
 	 	 	 	 {  
 	 	 	 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i n A i m T h r o w ' ,   1 . f   ) ;  
 	 	 	 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i n A i m T h r o w F o r O v e r l a y ' ,   1 . f   ) ;  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   ! p a r e n t . o w n e r P l a y e r . I s U s i n g V e h i c l e ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 p a r e n t . o w n e r P l a y e r . O n E n a b l e A i m i n g M o d e (   t r u e   ) ; 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 	 p a r e n t . i s D e p l o y e d E n t A i m i n g   =   t r u e ;  
 	 	 	 	 	 p a r e n t . d e p l o y e d E n t . S t a r t A i m i n g ( ) ;  
 	 	 	 	 	 v i r t u a l _ p a r e n t . S e t O w n e r O r i e n t a t i o n ( ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 	 p a r e n t . o w n e r P l a y e r . p l a y e r A i m i n g . O n A d d A i m i n g S l o M o ( ) ;  
 	 	 	 } 	  
 	 	 }  
 	 	  
 	 	  
 	 	 e l s e   i f   (   ! p a r e n t . o w n e r P l a y e r . I s U s i n g V e h i c l e ( )   )  
 	 	 {  
 	 	 	 i f   (   p a r e n t . o w n e r P l a y e r . p l a y e r A i m i n g . G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m i n g '   )  
 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r A f t e r D e l a y ' ,   0 . 7 5 f   ) ;  
 	 	 	 e l s e   i f   (   p a r e n t . o w n e r P l a y e r . I s I n C o m b a t ( )   )  
 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r A f t e r D e l a y ' ,   0 . f   ) ;  
 	 	 	 e l s e  
 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r A f t e r D e l a y ' ,   4 . 9 f   ) ;    
  
 	 	 	 p a r e n t . b L A x i s W a s R e l e a s e d   =   p a r e n t . o w n e r P l a y e r . b L A x i s R e l e a s e d ;  
 	 	 	  
 	 	 	 i f   (   p a r e n t . o w n e r P l a y e r . I s S w i m m i n g ( )   )  
 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r W h e n M o v i n g T i m e r ' ,   0 . 5 f ,   t r u e   ) ;  
 	 	 	 e l s e  
 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r W h e n M o v i n g T i m e r ' ,   0 . f ,   t r u e   ) ;  
 	 	 }  
 	 	 e l s e   i f   (   ( W 3 B o a t ) (   p a r e n t . o w n e r P l a y e r . G e t U s e d V e h i c l e ( )   )   )  
 	 	 {  
 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r A f t e r D e l a y ' ,   4 . 9 f   ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n W e a p o n S h o o t S t a r t ( )  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 p a r e n t . O n W e a p o n S h o o t S t a r t ( ) ;  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 }  
  
 	 t i m e r   f u n c t i o n   U p d a t e C u s t o m R o t a t i o n H e a d i n g T i m e r (   t i m e D e l t a   :   f l o a t   ,   i d   :   i n t )  
 	 {  
 	 	 v a r   t a r g e t T o P l a y e r H e a d i n g   :   f l o a t ;  
 	  
 	 	 v i r t u a l _ p a r e n t . S e t O w n e r O r i e n t a t i o n ( ) ;  
 	 	 t a r g e t T o P l a y e r H e a d i n g   =   p a r e n t . o w n e r P l a y e r . G e t O r i e n t a t i o n T a r g e t H e a d i n g (   p a r e n t . o w n e r P l a y e r . G e t O r i e n t a t i o n T a r g e t ( )   ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . U p d a t e C u s t o m R o t a t i o n H e a d i n g (   ' C r o s s b o w ' ,   t a r g e t T o P l a y e r H e a d i n g   ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   L o c k ( )  
 	 {  
 	 	 v a r   a c t i o n B l o c k i n g E x c e p t i o n s   :   a r r a y < E I n p u t A c t i o n B l o c k > ;  
  
 	 	  
 	 	 t h e P l a y e r . B l o c k A c t i o n (   E I A B _ D r a w W e a p o n ,   ' R a n g e d W e a p o n A i m i n g '   ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   U n l o c k ( )  
 	 {  
 	 	  
 	 	 t h e P l a y e r . B l o c k A l l A c t i o n s (   ' R a n g e d W e a p o n A i m i n g ' ,   f a l s e ) ;  
 	 } 	 	  
 }  
  
 s t a t e   S t a t e _ W e a p o n S h o o t   i n   R a n g e d W e a p o n  
 {  
 	 v a r   c a c h e d C o m b a t A c t i o n T a r g e t   :   C G a m e p l a y E n t i t y ;  
  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 v a r   t a r g e t   :   C A c t o r ;  
 	 	  
 	 	 t a r g e t   =   p a r e n t . o w n e r P l a y e r . G e t T a r g e t ( ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . R a i s e E v e n t (   ' D i v i n g F o r c e S t o p '   ) ;    
 	 	  
 	 	  
 	 	  
 	 	 p a r e n t . s h o o t i n g I s C o m p l e t e   =   f a l s e ;  
 	 	 c a c h e d C o m b a t A c t i o n T a r g e t   =   N U L L ;  
 	 	  
 	 	  
 	 	 i f (   t a r g e t   )  
 	 	 {  
 	 	 	 i f (   ( (   C N e w N P C   ) (   t a r g e t   ) ) . I s S h i e l d e d (   t h e P l a y e r   )   )  
 	 	 	 	 ( (   C N e w N P C   ) (   t a r g e t   ) ) . O n I n c o m i n g P r o j e c t i l e (   t r u e   ) ;  
 	 	 }  
 	 	  
 	 	 i f   (   p a r e n t . o w n e r P l a y e r . G e t I s S h o o t i n g F r i e n d l y ( )   )  
 	 	 {  
 	 	 	 p a r e n t . U n l o c k ( ) ;  
 	 	 	 p a r e n t . o w n e r P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e (   E I A B _ U n d e f i n e d , , ,   t r u e   ) ; 	  
 	 	 	  
 	 	 	 i f   (   p a r e n t . o w n e r P l a y e r . p l a y e r A i m i n g . G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m i n g '   )  
 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r A f t e r D e l a y ' ,   0 . f   ) ;  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 i f   (   p a r e n t . o w n e r P l a y e r . I s I n C o m b a t ( )   )  
 	 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r A f t e r D e l a y ' ,   0 . 5 f   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r A f t e r D e l a y ' ,   5 . f   ) ;    
 	 	 	 	  
 	 	 	 	 p a r e n t . b L A x i s W a s R e l e a s e d   =   p a r e n t . o w n e r P l a y e r . b L A x i s R e l e a s e d ;  
  
 	 	 	 	 i f   (   p a r e n t . o w n e r P l a y e r . I s S w i m m i n g ( )   )  
 	 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r W h e n M o v i n g T i m e r ' ,   0 . 5 f ,   t r u e   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r W h e n M o v i n g T i m e r ' ,   0 . f ,   t r u e   ) ; 	 	  
 	 	 	 } 	  
 	 	 }  
 	 	  
 	 	 p a r e n t . P r o c e s s C a n A t t a c k W h e n N o t I n C o m b a t ( ) ;  
 	 }  
 	  
 	 e v e n t   O n L e a v e S t a t e (   n e x t S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 p a r e n t . R e m o v e T i m e r (   ' H o l s t e r A f t e r D e l a y '   ) ;  
 	 	 p a r e n t . R e m o v e T i m e r (   ' H o l s t e r W h e n M o v i n g T i m e r '   ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a n H o l s t e r A f t e r D e l a y ' ,   0 . f   ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a n H o l s t e r A f t e r D e l a y H o r s e ' ,   0 . f   ) ;  
  
 	 	  
 	 	  
 	 }  
 	  
 	 e v e n t   O n P r o c e s s T h r o w E v e n t (   a n i m E v e n t N a m e   :   n a m e   )  
 	 {  
 	 	 v i r t u a l _ p a r e n t . O n P r o c e s s T h r o w E v e n t (   a n i m E v e n t N a m e   ) ;  
 	  
 	 	 i f   (   a n i m E v e n t N a m e   = =   ' P r o j e c t i l e T h r o w '   )  
 	 	 {  
 	 	 	 i f   (   c a c h e d C o m b a t A c t i o n T a r g e t   & &   ! p a r e n t . o w n e r P l a y e r . I s U s i n g V e h i c l e ( )   )  
 	 	 	 	 p a r e n t . o w n e r P l a y e r . S e t S l i d e T a r g e t (   c a c h e d C o m b a t A c t i o n T a r g e t   ) ;  
 	 	  
 	 	 	 p a r e n t . s h o o t i n g I s C o m p l e t e   =   t r u e ;  
 	 	 	  
 	 	 	 i f   (   p a r e n t . o w n e r P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m T h r o w '   )  
 	 	 	 {  
 	 	 	 	 i f   (   p a r e n t . r e c o i l L e v e l   = =   R L _ 1   )  
 	 	 	 	 	 G C a m e r a S h a k e ( 0 . 0 5 ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 G C a m e r a S h a k e ( 0 . 1 2 5 ) ;  
 	 	 	 } 	 	 	  
 	 	 	 	  
 	 	 	 i f   (   p a r e n t . i s D e p l o y e d E n t A i m i n g   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r A f t e r D e l a y ' ,   0 . 5 f   ) ;  
 	 	 	 	  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   p a r e n t . o w n e r P l a y e r . I s I n C o m b a t ( )    
 	 	 	 	 	 & &   ! p a r e n t . o w n e r P l a y e r . I s S w i m m i n g ( )    
 	 	 	 	 	 & &   (   ! p a r e n t . o w n e r P l a y e r . I s U s i n g V e h i c l e ( )   | |   ! (   ( W 3 B o a t ) (   p a r e n t . o w n e r P l a y e r . G e t U s e d V e h i c l e ( )   )   )   )   )  
 	 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r A f t e r D e l a y ' ,   0 . 5 f   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r A f t e r D e l a y ' ,   5 . f   ) ;    
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   p a r e n t . o w n e r P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ A l e r t N e a r   )  
 	 	 	 {  
 	 	 	 	 i f   (   p a r e n t . o w n e r P l a y e r . I s S w i m m i n g ( )   )  
 	 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r W h e n M o v i n g T i m e r ' ,   0 . 5 f ,   t r u e   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r W h e n M o v i n g T i m e r ' ,   0 . f ,   t r u e   ) ; 	 	 	  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 p a r e n t . b L A x i s W a s R e l e a s e d   =   p a r e n t . o w n e r P l a y e r . b L A x i s R e l e a s e d ;  
  
 	 	 	 	 i f   (   p a r e n t . o w n e r P l a y e r . I s S w i m m i n g ( )   )  
 	 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r W h e n M o v i n g T i m e r ' ,   0 . 5 f ,   t r u e   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 p a r e n t . A d d T i m e r (   ' H o l s t e r W h e n M o v i n g T i m e r ' ,   0 . f ,   t r u e   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   ! (   p a r e n t . o w n e r P l a y e r . I s U s i n g V e h i c l e ( )   & &   ( W 3 B o a t ) (   p a r e n t . o w n e r P l a y e r . G e t U s e d V e h i c l e ( )   )   )   )  
 	 	 	 {  
 	 	 	 	 p a r e n t . P r o c e s s E n a b l e R a d i a l S l o t ( ) ;  
 	 	 	 	  
 	 	 	 	 i f   (   p a r e n t . o w n e r P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ N o r m a l   | |   p a r e n t . o w n e r P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ A l e r t F a r   )  
 	 	 	 	 	 p a r e n t . U n l o c k ( ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n R a n g e d W e a p o n P r e s s ( )  
 	 {  
 	 	 i f   (   p a r e n t . s h o o t i n g I s C o m p l e t e   )  
 	 	 {  
 	 	 	 p a r e n t . s h o o t i n g I s C o m p l e t e   =   f a l s e ;  
 	 	 	  
 	 	 	 i f   (     ! p a r e n t . o w n e r P l a y e r . I s U s i n g V e h i c l e ( )   )  
 	 	 	 	 p a r e n t . o w n e r P l a y e r . S e t S l i d e T a r g e t (   p a r e n t . o w n e r P l a y e r . G e t C o m b a t A c t i o n T a r g e t (   E B A T _ I t e m U s e   )   ) ;  
 	 	 	 e l s e  
 	 	 	 	 ( ( C R 4 P l a y e r S t a t e U s e G e n e r i c V e h i c l e ) p a r e n t . o w n e r P l a y e r . G e t S t a t e (   ' U s e G e n e r i c V e h i c l e '   ) ) . F i n d T a r g e t ( ) ;  
 	 	 }  
 	 	 e l s e   i f   (   ! c a c h e d C o m b a t A c t i o n T a r g e t   )  
 	 	 {  
 	 	 	 c a c h e d C o m b a t A c t i o n T a r g e t   =   p a r e n t . o w n e r P l a y e r . G e t C o m b a t A c t i o n T a r g e t (   E B A T _ I t e m U s e   ) ;  
 	 	 }  
 	 	  
 	 	 i f   (   p a r e n t . o w n e r P l a y e r . G e t I s S h o o t i n g F r i e n d l y ( )   )  
 	 	 {  
 	 	 	 p a r e n t . P r o c e s s C a n A t t a c k W h e n N o t I n C o m b a t ( ) ; 	 	  
 	 	 }  
  
 	 	 v i r t u a l _ p a r e n t . O n R a n g e d W e a p o n P r e s s ( ) ;  
 	 }  
 	  
 	 e v e n t   O n R a n g e d W e a p o n R e l e a s e ( )  
 	 {  
 	 	 p a r e n t . O n R a n g e d W e a p o n R e l e a s e ( ) ;  
 	 } 	  
 }  
  
 s t a t e   S t a t e _ W e a p o n H o l s t e r   i n   R a n g e d W e a p o n  
 {  
 	 v a r   i s S e t t i n g I t e m s 	 :   b o o l ;  
  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 { 	  
 	 	 p a r e n t . R e m o v e T i m e r (   ' H o l s t e r A f t e r D e l a y '   ) ;  
 	 	 p a r e n t . R e m o v e T i m e r (   ' H o l s t e r W h e n M o v i n g T i m e r '   ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a n H o l s t e r A f t e r D e l a y ' ,   0 . f   ) ;  
 	 	 p a r e n t . o w n e r P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c a n H o l s t e r A f t e r D e l a y H o r s e ' ,   0 . f   ) ; 	 	 	  
 	  
 	 	 i s S e t t i n g I t e m s   =   f a l s e ;  
 	 	 p a r e n t . R e s e t A l l S e t t i n g s ( ) ;  
 	 	  
 	 	 i f   (   p a r e n t . o w n e r P l a y e r . b L A x i s R e l e a s e d   )  
 	 	 	 p a r e n t . o w n e r P l a y e r . S e t C o m b a t I d l e S t a n c e (   1 . f   ) ;  
 	 	 	  
 	 	 p a r e n t . o w n e r P l a y e r . O n D o d g e B o o s t ( ) ; 	  
 	 	 U n e q u i p ( ) ;  
 	 }  
 	  
 	 e v e n t   O n L e a v e S t a t e (   n e x t S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 i f   (   ! (   p a r e n t . o w n e r P l a y e r . I s U s i n g V e h i c l e ( )   & &   ( W 3 B o a t ) (   p a r e n t . o w n e r P l a y e r . G e t U s e d V e h i c l e ( )   )   )   )  
 	 	 	 p a r e n t . P r o c e s s E n a b l e R a d i a l S l o t ( ) ;  
 	  
 	 	 i f   (   p a r e n t . o w n e r P l a y e r . b L A x i s R e l e a s e d   )  
 	 	 	 p a r e n t . o w n e r P l a y e r . S e t C o m b a t I d l e S t a n c e (   1 . f   ) ;  
 	  
 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ T h r o w B o m b ,   ' S h o o t i n g C r o s s b o w '   ) ;  
 	 	 p a r e n t . R e m o v e T i m e r (   ' P r o c e s s F u l l B o d y A n i m W e i g h t T i m e r '   ) ; 	  
 	 }  
 	  
 	 e n t r y   f u n c t i o n   U n e q u i p ( )  
 	 {  
 	 	 i f   (   p a r e n t . i s P l a y e r   )  
 	 	 { 	  
 	 	 	 p a r e n t . S e t C l e a n u p F u n c t i o n (   ' C a n c e l l e d E q u i p i n g '   ) ;  
 	 	 	  
 	 	 	 S l e e p (   0 . 2   ) ;  
 	 	 	 i s S e t t i n g I t e m s   =   t r u e ;  
 	 	 	  
 	 	 	 S l e e p (   0 . 3 f   ) ;  
 	 	 	  
 	 	 	  
 	 	 	  
  
 	 	 	  
 	 	 	 p a r e n t . o w n e r P l a y e r . S e t R e q u i r e d I t e m s ( ' N o n e ' ,   ' A n y ' ) ;  
 	 	 	 p a r e n t . o w n e r P l a y e r . P r o c e s s R e q u i r e d I t e m s ( ) ;  
 	 	 	  
 	 	 	 i s S e t t i n g I t e m s   =   f a l s e ;  
 	 	 	  
 	 	 	  
 	 	 	 p a r e n t . U n l o c k ( ) ;  
 	 	 	 p a r e n t . O n C h a n g e T o (   ' S t a t e _ W e a p o n W a i t '   ) ; 	  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n R a n g e d W e a p o n P r e s s ( )  
 	 {  
 	 	 	  
  
 	 	 v i r t u a l _ p a r e n t . P r o c e s s F u l l B o d y A n i m W e i g h t ( ) ;  
 	  
 	 	 i f   (   ! i s S e t t i n g I t e m s   )    
 	 	 {  
 	 	 	 i f   (   ! p a r e n t . i n v . I s I t e m C r o s s b o w (   p a r e n t . i n v . G e t I t e m F r o m S l o t ( ' l _ w e a p o n ' )   )   )  
 	 	 	 	 v i r t u a l _ p a r e n t . R a i s e O w n e r G r a p h E v e n t s (   ' C r o s s b o w _ D r a w ' ,   t r u e   ) ;  
 	 	 	 e l s e   i f   (   v i r t u a l _ p a r e n t . R e l o a d W e a p o n W i t h O r W i t h o u t A n i m I f N e e d e d ( )   )  
 	 	 	 	 v i r t u a l _ p a r e n t . R a i s e O w n e r G r a p h E v e n t s (   ' C r o s s b o w _ R e l o a d ' ,   t r u e   ) ;  
 	 	 	 e l s e  
 	 	 	 	 v i r t u a l _ p a r e n t . R a i s e O w n e r G r a p h E v e n t s (   ' C r o s s b o w _ A i m S h o o t ' ,   t r u e   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 	 v i r t u a l _ p a r e n t . R a i s e O w n e r G r a p h E v e n t s (   ' C r o s s b o w _ D r a w ' ,   t r u e   ) ;  
 	 	  
 	 	 p a r e n t . O n R a n g e d W e a p o n P r e s s ( ) ;  
 	 } 	  
 	  
 	 c l e a n u p   f u n c t i o n   C a n c e l l e d E q u i p i n g ( )  
 	 {  
 	 	 p a r e n t . U n l o c k ( ) ;  
 	 } 	 	  
 }  
 