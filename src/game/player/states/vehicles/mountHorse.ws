/ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / * *   	 �   2 0 1 5   C D   P R O J E K T   S . A .   A l l   r i g h t s   r e s e r v e d .  
 / * *   	 T H E   W I T C H E R �   i s   a   t r a d e m a r k   o f   C D   P R O J E K T   S .   A .  
 / * *   	 T h e   W i t c h e r   g a m e   i s   b a s e d   o n   t h e   p r o s e   o f   A n d r z e j   S a p k o w s k i .  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
  
 s t a t e   M o u n t H o r s e   i n   C R 4 P l a y e r   e x t e n d s   M o u n t T h e V e h i c l e  
 {  
 	 v a r   h o r s e C o m p   :   W 3 H o r s e C o m p o n e n t ;  
 	  
 	  
 	  
 	  
 	  
 	 e v e n t   O n E n t e r S t a t e (   p r e v S t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 v a r   i n s t a n t M o u n t   :   b o o l ;  
 	 	 i n s t a n t M o u n t   =   f a l s e ;  
 	 	  
 	 	 s u p e r . O n E n t e r S t a t e (   p r e v S t a t e N a m e   ) ;  
 	 	  
 	 	 / /   m o d B e t t e r T o r c h e s N e x t G e n  
 	 	 / / t h e P l a y e r . H i d e U s a b l e I t e m ( ) ;  
 	 	  
 	 	 t h e P l a y e r . A d d B u f f I m m u n i t y (   E E T _ P u l l ,   ' H o r s e R i d i n g B u f f I m m u n i t y ' ,   t r u e   ) ;  
 	 	  
 	 	 h o r s e C o m p   =   ( W 3 H o r s e C o m p o n e n t ) v e h i c l e ;  
 	 	  
 	 	 i f (   h o r s e C o m p   )  
 	 	 {  
 	 	 	 h o r s e C o m p . c a n D i s m o u n t   =   f a l s e ;  
 	 	 	 t h i s . P r o c e s s M o u n t H o r s e ( ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 L o g A s s e r t (   v e h i c l e ,   " M o u n t H o r s e : : P r o c e s s M o u n t T h e V e h i c l e ,   ' v e h i c l e '   i s   n o t   s e t "   ) ;  
 	 	 }  
 	 	  
 	 	 i f (   m o u n t T y p e   = =   M T _ i n s t a n t   )  
 	 	 {  
 	 	 	 i n s t a n t M o u n t   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 t h e G a m e . A c t i v a t e H o r s e C a m e r a (   t r u e ,   0 . f ,   i n s t a n t M o u n t   ) ;  
 	 	  
 	 	 i f   (   ( W 3 R e p l a c e r C i r i ) t h e P l a y e r   )  
 	 	 {  
 	 	 	 t h e I n p u t . S e t C o n t e x t (   ' H o r s e _ R e p l a c e r _ C i r i '   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 	 t h e I n p u t . S e t C o n t e x t (   ' H o r s e '   ) ;  
 	 }  
 	  
 	 e v e n t   O n L e a v e S t a t e (   n e x t S t a t e N a m e   :   n a m e   )  
 	 {    
 	 	 s u p e r . O n L e a v e S t a t e (   n e x t S t a t e N a m e   ) ;  
 	 }  
 	  
 	  
 	 c l e a n u p   f u n c t i o n   M o u n t C l e a n u p ( )    
 	 {  
 	 	 s u p e r . M o u n t C l e a n u p ( ) ;  
 	 	  
 	 	 p a r e n t . S i g n a l G a m e p l a y E v e n t P a r a m I n t (   ' R i d i n g M a n a g e r D i s m o u n t H o r s e ' ,   D T _ i n s t a n t   |   D T _ f r o m S c r i p t   ) ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p r i v a t e   v a r   m o u n t A n i m S t a r t e d   :   b o o l ;  
 	  
 	 c o n s t   v a r   M O U N T _ T I M E O U T   :   f l o a t ;  
 	 d e f a u l t   M O U N T _ T I M E O U T   =   5 . 0 ;  
 	  
 	 e n t r y   f u n c t i o n   P r o c e s s M o u n t H o r s e ( )  
 	 {  
 	 	 v a r   r i d e r D a t a   	 	 	 :   C A I S t o r a g e R i d e r D a t a ;  
 	 	 v a r   d i s t a n c e 	 	 	 :   f l o a t ;  
 	 	 v a r   c o n t e x t S w i t c h O f f s e t 	 :   f l o a t ;  
 	 	 v a r   m o u n t S t a r t T i m e s t a m p   :   f l o a t ;  
 	 	  
 	 	 p a r e n t . S e t C l e a n u p F u n c t i o n (   ' M o u n t C l e a n u p '   ) ;  
 	 	  
 	 	 m o u n t A n i m S t a r t e d   =   f a l s e ;  
 	 	  
 	 	 i f   (   m o u n t T y p e   = =   M T _ i n s t a n t   )  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	 p a r e n t . O n H i t G r o u n d ( ) ;  
 	 	 }  
 	 	  
 	 	 r i d e r D a t a   =   t h e P l a y e r . G e t R i d e r D a t a ( ) ;  
 	 	  
 	 	 h o r s e C o m p . U n p a i r ( ) ;    
 	 	  
 	 	 h o r s e C o m p . P a i r W i t h R i d e r (   r i d e r D a t a . s h a r e d P a r a m s   ) ; 	  
 	 	 r i d e r D a t a . s h a r e d P a r a m s . r i d e r   	 	 =   t h e P l a y e r ;  
 	 	 r i d e r D a t a . s h a r e d P a r a m s . v e h i c l e S l o t     =   v e h i c l e S l o t ;  
 	 	  
 	 	 p a r e n t . S i g n a l G a m e p l a y E v e n t P a r a m I n t (   ' R i d i n g M a n a g e r M o u n t H o r s e ' ,   m o u n t T y p e   ) ;  
 	 	  
 	 	  
 	 	 S l e e p O n e F r a m e ( ) ;  
 	 	  
 	 	 m o u n t S t a r t T i m e s t a m p   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	 w h i l e (   t r u e   )  
 	 	 {  
 	 	 	 i f   (   r i d e r D a t a . G e t R i d i n g M a n a g e r C u r r e n t T a s k ( )   = =   R M T _ N o n e   & &   r i d e r D a t a . s h a r e d P a r a m s . m o u n t S t a t u s   = =   V M S _ m o u n t e d   )  
 	 	 	 {  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 	 i f   (   m o u n t A n i m S t a r t e d   )  
 	 	 	 {  
 	 	 	  
 	 	 	 }  
 	 	 	 e l s e   i f   (   r i d e r D a t a . r i d i n g M a n a g e r M o u n t E r r o r   = =   t r u e   | |   m o u n t S t a r t T i m e s t a m p   +   M O U N T _ T I M E O U T   <   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( )   )  
 	 	 	 {  
 	 	 	 	 O n M o u n t i n g F a i l e d ( ) ;  
 	 	 	 	 p a r e n t . P o p S t a t e ( ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 	 S l e e p O n e F r a m e ( ) ;  
 	 	 }  
 	 	  
 	 	 p a r e n t . C l e a r C l e a n u p F u n c t i o n ( ) ;  
 	 	 h o r s e C o m p . I s s u e C o m m a n d T o U s e V e h i c l e (   ) ;  
 	 }  
 	  
 	 e v e n t   O n S t a r t T r a v e r s i n g E x p l o r a t i o n (   t   :   C S c r i p t e d E x p l o r a t i o n T r a v e r s e r   )  
 	 {  
 	 	  
 	 	 r e t u r n   p a r e n t . O n S t a r t T r a v e r s i n g E x p l o r a t i o n ( t ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   O n M o u n t i n g F a i l e d ( )  
 	 { 	  
 	 	 s u p e r . O n M o u n t i n g F a i l e d ( ) ;  
  
 	 	 t h e G a m e . A c t i v a t e H o r s e C a m e r a (   f a l s e ,   0 . f   ) ; 	  
 	 }  
 	  
 	 e v e n t   O n M o u n t A n i m S t a r t e d ( )  
 	 {  
 	 	 m o u n t A n i m S t a r t e d   =   t r u e ;  
 	 }  
 	  
 	 e v e n t   O n H o r s e R i d i n g O n ( )  
 	 {  
 	 	 h o r s e C o m p . P u s h S t a t e (   ' E x p l o r a t i o n '   ) ;  
 	 }  
 	  
 	 e v e n t   O n D e a t h (   d a m a g e A c t i o n   :   W 3 D a m a g e A c t i o n   )  
 	 {  
 	 	 p a r e n t . A c t i o n C a n c e l A l l ( ) ;  
 	 	  
 	 	 p a r e n t . O n D e a t h (   d a m a g e A c t i o n   ) ;  
 	 }  
 }  
 