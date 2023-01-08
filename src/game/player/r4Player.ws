/ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / * *   	 �   2 0 1 5   C D   P R O J E K T   S . A .   A l l   r i g h t s   r e s e r v e d .  
 / * *   	 T H E   W I T C H E R �   i s   a   t r a d e m a r k   o f   C D   P R O J E K T   S .   A .  
 / * *   	 T h e   W i t c h e r   g a m e   i s   b a s e d   o n   t h e   p r o s e   o f   A n d r z e j   S a p k o w s k i .  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 s t a t e m a c h i n e   a b s t r a c t   i m p o r t   c l a s s   C R 4 P l a y e r   e x t e n d s   C P l a y e r  
 {    
 	  
 	 p r o t e c t e d   	 	 v a r   p c G a m e P l a y I n i t i a l i z e d 	 	 	 :   b o o l ; 	 	 	 	 	  
  
 	  
 	 p r i v a t e   	 	 v a r   p c M o d e 	 	 	 	 	 	 	 :   b o o l ; 	 	 	 	 	  
 	 d e f a u l t   p c M o d e   =   t r u e ;  
  
 	  
 	 p r o t e c t e d   s a v e d 	 v a r   w e a p o n H o l s t e r 	 	 	 	 	 :   W e a p o n H o l s t e r ; 	 	  
 	 p u b l i c 	 	 	 v a r   r a n g e d W e a p o n 	 	 	 	 	 :   C r o s s b o w ; 	 	 	 	  
 	 p u b l i c 	 	 	 v a r   c r o s s b o w D o n t P o p S t a t e H a c k 	 	 :   b o o l ;   	 	 	 	 d e f a u l t   c r o s s b o w D o n t P o p S t a t e H a c k   =   f a l s e ;  
 	  
 	 p r i v a t e 	 	 	 v a r   h i t R e a c t T r a n s S c a l e 	 	 	 	 :   f l o a t ;     	 	 	 	  
 	  
 	 p r i v a t e 	 	 	 v a r   b I s C o m b a t A c t i o n A l l o w e d 	 	 	 :   b o o l ;  
 	 p r i v a t e 	 	 	 v a r   c u r r e n t C o m b a t A c t i o n 	 	 	 	 :   E B u f f e r A c t i o n T y p e ;  
 	  
 	 p r i v a t e 	 	 	 v a r   u n i n t e r r u p t e d H i t s C o u n t   	 	 	 :   i n t ; 	 	 	 	 	  
 	 p r i v a t e   	 	 v a r   u n i n t e r r u p t e d H i t s C a m e r a S t a r t e d   	 :   b o o l ; 	 	 	 	 	  
 	 p r i v a t e   	 	 v a r   u n i n t e r r u p t e d H i t s C u r r e n t C a m e r a E f f e c t   :   n a m e ; 	 	 	  
 	  
 	 p r i v a t e   	 	 v a r   c o u n t e r T i m e s t a m p s 	 	 	 	 :   a r r a y < E n g i n e T i m e > ; 	  
 	  
 	 p r i v a t e   	 	 v a r   h i t R e a c t i o n E f f e c t   	 	 	 	 :   b o o l ; 	 	 	 	 	  
 	  
 	 p r i v a t e 	 	 	 v a r   l o o k A t P o s i t i o n 	 	 	 	 	 :   V e c t o r ;   	 	 	 	  
 	 p r i v a t e 	 	 	 v a r   o r i e n t a t i o n T a r g e t 	 	 	 	 :   E O r i e n t a t i o n T a r g e t ;  
 	 p r i v a t e 	 	 	 v a r   c u s t o m O r i e n t a t i o n T a r g e t 	 	 	 :   E O r i e n t a t i o n T a r g e t ;  
 	 p r o t e c t e d   	 	 v a r   c u s t o m O r i e n t a t i o n S t a c k   	 	 	 :   a r r a y < S C u s t o m O r i e n t a t i o n P a r a m s > ;  
 	  
 	 p u b l i c   	 	 	 v a r   d e l a y O r i e n t a t i o n C h a n g e   	 	 	 :   b o o l ;  
 	 p r o t e c t e d   	 	 v a r   d e l a y C a m e r a O r i e n t a t i o n C h a n g e   	 :   b o o l ;  
 	 p r i v a t e   	 	 v a r   a c t i o n T y p e 	   	 	 	 	 	 :   i n t ;    
 	 p r i v a t e   	 	 v a r   c u s t o m O r i e n t a t i o n S t a c k I n d e x 	 	 :   i n t ;    
 	  
 	 p r i v a t e   	 	 v a r   e m p t y M o v e T a r g e t T i m e r 	 	 	 :   f l o a t ;  
 	  
 	 p r i v a t e   	 	 v a r   o n l y O n e E n e m y L e f t   	 	 	 	 :   b o o l ;  
 	  
 	 p u b l i c 	   	 	 v a r   i s I n F i n i s h e r   	 	 	 	 	 :   b o o l ;  
 	 p r i v a t e   	 	 v a r   f i n i s h e r T a r g e t   	 	 	 	 	 :   C G a m e p l a y E n t i t y ;  
  
 	 p r i v a t e 	 	 	 v a r   c o m b a t S t a n c e 	 	 	 	 	 :   E P l a y e r C o m b a t S t a n c e ; 	  
  
 	 p u b l i c 	 	 	 v a r   a p p r o a c h A t t a c k 	 	 	 	 	 :   i n t ; 	 	 	 	 	  
 	 	 	 	 	 d e f a u l t   a p p r o a c h A t t a c k   	 	 	 	 =   1 ;  
 	 p r o t e c t e d 	 	 v a r   s p e c i a l A t t a c k C a m e r a   	 	 	 :   b o o l ;  
 	  
 	 p r i v a t e 	 	 	 v a r   s p e c i a l A t t a c k T i m e R a t i o 	 	   	 :   f l o a t ;  
 	 	  
 	 p u b l i c   s a v e d 	 v a r   i t e m s P e r L e v e l 	 	 	 	 	 :   a r r a y < n a m e > ;   	  
 	 p u b l i c       	 	 v a r   i t e m s P e r L e v e l G i v e n 	 	 	 	 :   a r r a y < b o o l > ;   	  
 	  
 	 p r i v a t e 	 	 	 v a r 	 p l a y e r T i c k T i m e r P h a s e 	 	 	 :   i n t ;  
 	 	 d e f a u l t   p l a y e r T i c k T i m e r P h a s e   =   0 ;  
 	 	  
 	 p r o t e c t e d   	 	 v a r   e v a d e H e a d i n g 	 	 	 	 	 :   f l o a t ;  
  
 	 p u b l i c 	 	 	 v a r   v e h i c l e C b t M g r A i m i n g 	 	 	 	 :   b o o l ; 	 	  
 	  
 	 p u b l i c 	 	 	 v a r   s p e c i a l H e a v y C h a r g e D u r a t i o n 	 	 :   f l o a t ; 	 	 	 	  
 	 p u b l i c   	 	 	 v a r   s p e c i a l H e a v y S t a r t E n g i n e T i m e   	 :   E n g i n e T i m e ; 	 	 	  
 	 p u b l i c   	 	 	 v a r   p l a y e d S p e c i a l A t t a c k M i s s i n g R e s o u r c e S o u n d   :   b o o l ; 	 	 	  
 	 p u b l i c   f u n c t i o n   S e t P l a y e d S p e c i a l A t t a c k M i s s i n g R e s o u r c e S o u n d ( b   :   b o o l )   { p l a y e d S p e c i a l A t t a c k M i s s i n g R e s o u r c e S o u n d   =   b ; }  
 	  
 	 p u b l i c   v a r   c o u n t e r C o l l i s i o n G r o u p N a m e s   :   a r r a y < n a m e > ;  
 	  
 	 p u b l i c   s a v e d 	 v a r   l a s t I n s t a n t K i l l T i m e 	 	 	 	 :   G a m e T i m e ;  
 	  
 	  
 	 p r i v a t e   	 	 v a r   n o S a v e L o c k C o m b a t A c t i o n N a m e 	 	 :   s t r i n g ; 	 	 d e f a u l t 	 n o S a v e L o c k C o m b a t A c t i o n N a m e 	 =   ' c o m b a t _ a c t i o n ' ; 	  
 	 p r i v a t e   	 	 v a r   n o S a v e L o c k C o m b a t A c t i o n 	 	 	 :   i n t ; 	  
 	 p r i v a t e   	 	 v a r   d e a t h N o S a v e L o c k 	 	 	 	 	 :   i n t ; 	  
 	 p r i v a t e 	 	 	 v a r   n o S a v e L o c k 	 	 	 	 	 	 :   i n t ;  
 	  
 	  
 	 p r o t e c t e d   s a v e d   v a r   n e w G a m e P l u s I n i t i a l i z e d 	 	 	 :   b o o l ;  
 	 	 d e f a u l t   n e w G a m e P l u s I n i t i a l i z e d   =   f a l s e ;  
 	  
 	  
 	 p r o t e c t e d 	 	 	 v a r   B u f f e r A l l S t e p s 	 	 	 	 	 :   b o o l ;  
 	 p r o t e c t e d 	 	 	 v a r   B u f f e r C o m b a t A c t i o n 	 	 	 	 :   E B u f f e r A c t i o n T y p e ;  
 	 p r o t e c t e d 	 	 	 v a r   B u f f e r B u t t o n S t a g e 	 	 	 	 :   E B u t t o n S t a g e ; 	  
 	  
 	 	 d e f a u l t   B u f f e r A l l S t e p s   =   f a l s e ; 	  
 	 	 d e f a u l t 	 c u s t o m O r i e n t a t i o n T a r g e t   =   O T _ N o n e ; 	  
 	 	 d e f a u l t   h i t R e a c t i o n E f f e c t   =   t r u e ; 	  
 	 	 d e f a u l t   u n i n t e r r u p t e d H i t s C o u n t   =   0 ;  
 	 	 d e f a u l t   u n i n t e r r u p t e d H i t s C a m e r a S t a r t e d   =   f a l s e ; 	  
 	 	 d e f a u l t   c u s t o m O r i e n t a t i o n S t a c k I n d e x   =   - 1 ;  
 	 	 	  
 	  
 	 p r i v a t e   v a r   k e e p R e q u e s t i n g C r i t i c a l A n i m S t a r t   :   b o o l ; 	 	 	 	  
 	  
 	 	 d e f a u l t   k e e p R e q u e s t i n g C r i t i c a l A n i m S t a r t   =   f a l s e ;  
 	  
 	  
 	 p r i v a t e 	 	 v a r   c u r r e n t C u s t o m A c t i o n 	 	 :   E P l a y e r E x p l o r a t i o n A c t i o n ;  
 	 p u b l i c 	 	 v a r   s u b s t a t e M a n a g e r 	 	 	 :   C E x p l o r a t i o n S t a t e M a n a g e r ;  
 	 p r o t e c t e d 	 v a r   i s O n B o a t 	 	 	 	 :   b o o l ; 	 	 	 	 	 	 	  
 	 p r o t e c t e d 	 v a r   i s I n S h a l l o w W a t e r   	 	 :   b o o l ;  
 	 p u b l i c 	 	 v a r   m e d a l l i o n 	 	 	 	 :   W 3 M e d a l l i o n F X ;  
 	 p r o t e c t e d 	 v a r   l a s t M e d a l l i o n E f f e c t   	 :   f l o a t ;  
 	 p r i v a t e 	 	 v a r   i s I n R u n A n i m a t i o n 	 	 :   b o o l ;  
 	 p u b l i c 	 	 v a r 	 i n t e r i o r T r a c k e r 	 	 	 : C P l a y e r I n t e r i o r T r a c k e r ;  
 	 p u b l i c 	 	 v a r   m _ S e t t l e m e n t B l o c k C a n t e r   :   i n t ;  
 	  
 	  
 	  
 	 p r i v a t e   v a r   f i s t F i g h t M i n i g a m e E n a b l e d 	 :   b o o l ;  
 	 p r i v a t e   v a r   i s F F M i n i g a m e T o T h e D e a t h 	 	 :   b o o l ;  
 	 p r i v a t e   v a r   F F M i n i g a m e E n d s i t h B S 	 	 	 :   b o o l ;  
 	 p u b l i c   	 v a r   f i s t F i g h t T e l e p o r t N o d e 	 	 :   C N o d e ;  
 	 p u b l i c     v a r   i s S t a r t i n g F i s t F i g h t M i n i g a m e   :   b o o l ;  
 	 p u b l i c     v a r   G e r a l t M a x H e a l t h   	 	 	 :   f l o a t ;  
 	 p u b l i c     v a r   f i s t s I t e m s 	 	 	 	 	 :   a r r a y <   S I t e m U n i q u e I d   > ;  
 	  
 	 	 d e f a u l t   F F M i n i g a m e E n d s i t h B S   =   f a l s e ;  
 	 	 d e f a u l t   f i s t F i g h t M i n i g a m e E n a b l e d   =   f a l s e ;  
 	 	 d e f a u l t   i s F F M i n i g a m e T o T h e D e a t h   =   f a l s e ;  
 	  
 	  
 	 p r i v a t e   v a r   g w i n t A i D i f f i c u l t y 	 	 	 :   E G w i n t D i f f i c u l t y M o d e ; 	 d e f a u l t   g w i n t A i D i f f i c u l t y   =   E G D M _ E a s y ;  
 	 p r i v a t e   v a r   g w i n t A i A g g r e s s i o n 	 	 	 :   E G w i n t A g g r e s s i o n M o d e ; 	 d e f a u l t   g w i n t A i A g g r e s s i o n   =   E G A M _ D e f e n s i v e ;  
 	 p r i v a t e   v a r   g w i n t M i n i g a m e S t a t e 	 	 	 :   E M i n i g a m e S t a t e ; 	 	 d e f a u l t   g w i n t M i n i g a m e S t a t e     =   E M S _ N o n e ;  
  
 	  
 	 i m p o r t   p r i v a t e   	 v a r   h o r s e W i t h I n v e n t o r y   	 	 :   E n t i t y H a n d l e ; 	 	 	  
 	 p r i v a t e   	 	 v a r   c u r r e n t l y M o u n t e d H o r s e 	 :   C N e w N P C ; 	  
 	 p r i v a t e 	 	 	 v a r   h o r s e S u m m o n T i m e S t a m p 	 :   f l o a t ;  
 	 p r i v a t e   s a v e d 	 v a r   i s H o r s e R a c i n g 	 	 	 :   b o o l ;  
 	 p r i v a t e   	 	 v a r   h o r s e C o m b a t S l o w M o 	 	 :   b o o l ;  
 	 d e f a u l t   i s H o r s e R a c i n g   =   f a l s e ;  
 	 d e f a u l t   h o r s e C o m b a t S l o w M o   =   t r u e ;  
 	  
 	  
 	 p r i v a t e   v a r   H u d M e s s a g e s   :   a r r a y   < s t r i n g > ;    
 	 p r o t e c t e d   v a r   f S h o w T o L o w S t a m i n a I n d i c a t i o n 	 :   f l o a t ;  
 	 p u b l i c   v a r   s h o w T o o L o w A d r e n a l i n e   :   b o o l ;  
 	 p r i v a t e   v a r   H A X E 3 C o n t a i n e r   :   W 3 C o n t a i n e r ;    
 	 p r i v a t e   v a r   H A X E 3 b A u t o L o o t :   b o o l ;    
 	 p r i v a t e   v a r   b S h o w H u d   :   b o o l ;  
 	 p r i v a t e   v a r   d o d g e F e e d b a c k T a r g e t   :   C A c t o r ;  
 	  
 	 	 d e f a u l t   H A X E 3 b A u t o L o o t   =   f a l s e ;  
 	 	 d e f a u l t   f S h o w T o L o w S t a m i n a I n d i c a t i o n 	 =   0 . 0 f ; 	  
 	 	 d e f a u l t   b S h o w H u d   =   t r u e ;  
 	 	  
 	 s a v e d   v a r   d i s p l a y e d Q u e s t s G U I D   :   a r r a y <   C G U I D   > ;    
 	 s a v e d   v a r   r e w a r d s M u l t i p l i e r   :   a r r a y <   S R e w a r d M u l t i p l i e r   > ;    
 	 s a v e d   v a r   g l o s s a r y I m a g e O v e r r i d e   :   a r r a y <   S G l o s s a r y I m a g e O v e r r i d e   > ;    
 	  
 	  
 	 p r i v a t e   	 	 	 v a r   p r e v R a w L e f t J o y R o t   	 	 	 :   f l o a t ;  
 	 p r o t e c t e d   	 	 	 v a r   e x p l o r a t i o n I n p u t C o n t e x t 	 	 :   n a m e ;  
 	 p r o t e c t e d 	 	 	 v a r   c o m b a t I n p u t C o n t e x t   	 	 	 :   n a m e ;  
 	 p r o t e c t e d 	 	 	 v a r   c o m b a t F i s t s I n p u t C o n t e x t 	 	 :   n a m e ;  
  
 	  
 	 p r i v a t e   v a r   i s I n s i d e I n t e r a c t i o n   	 	 :   b o o l ; 	 	 	 	 	 	 	  
 	 p r i v a t e   v a r   i s I n s i d e H o r s e I n t e r a c t i o n   	 :   b o o l ; 	 	 	 	 	 	 	  
 	 p u b l i c 	 v a r   h o r s e I n t e r a c t i o n S o u r c e   	 	 :   C E n t i t y ;  
 	 p u b l i c   	 v a r   n e a r b y L o c k e d C o n t a i n e r s N o K e y   :   a r r a y < W 3 L o c k a b l e E n t i t y > ; 	 	  
 	  
 	  
 	 p r i v a t e 	 v a r   b M o v e T a r g e t C h a n g e A l l o w e d 	 :   b o o l ; 	 	 d e f a u l t   b M o v e T a r g e t C h a n g e A l l o w e d   =   t r u e ;  
 	 p r i v a t e   v a r   m o v e A d j   	 	 	 	 	 :   C M o v e m e n t A d j u s t o r ;  
 	 p r i v a t e   v a r   d e f a u l t L o c o m o t i o n C o n t r o l l e r 	 :   C R 4 L o c o m o t i o n P l a y e r C o n t r o l l e r S c r i p t ;  
 	  
 	  
 	 p r i v a t e   v a r   c a n F o l l o w N p c   	 	 	 	 :   b o o l ;  
 	 p r i v a t e   v a r   a c t o r T o F o l l o w   	 	 	 	 :   C A c t o r ;  
 	 p u b l i c   v a r   t e r r a i n P i t c h 	 	 	 	 	 :   f l o a t ;  
 	 p u b l i c   v a r   s t e e p S l o p e N o r m a l P i t c h 	 	 :   f l o a t ;   	 d e f a u l t   s t e e p S l o p e N o r m a l P i t c h   =   6 5 . f ;  
 	 p u b l i c   v a r   d i s a b l e S p r i n t T e r r a i n P i t c h 	 :   f l o a t ;   	 d e f a u l t   d i s a b l e S p r i n t T e r r a i n P i t c h   =   5 4 . f ;  
 	 p r i v a t e   v a r   s u b m e r g e D e p t h 	 	 	 :   f l o a t ;  
 	  
 	 p r i v a t e   v a r   m _ u s e S e l e c t e d I t e m I f S p a w n e d   	 :   b o o l ;   d e f a u l t   m _ u s e S e l e c t e d I t e m I f S p a w n e d   =   f a l s e ;    
 	  
 	  
 	 v a r   n a v Q u e r y   :   C N a v i g a t i o n R e a c h a b i l i t y Q u e r y I n t e r f a c e ;  
 	  
 	  
 	 p u b l i c   s a v e d   v a r   r e m e m b e r e d C u s t o m H e a d   :   n a m e ;  
  
 	  
 	 p u b l i c   s a v e d   v a r   d i s a b l e W e a t h e r D i s p l a y   :   b o o l ;  
 	  
 	  
 	 p u b l i c   s a v e d   v a r   p r o u d W a l k   :   b o o l ;  
 	 p r i v a t e   v a r   e t h e r e a l C o u n t   :   i n t ;    
 	 d e f a u l t   e t h e r e a l C o u n t   =   0 ;  
 	  
 	  
 	 p u b l i c   s a v e d   v a r   i n j u r e d W a l k   :   b o o l ;  
 	 p u b l i c   s a v e d   v a r   t i e d W a l k   :   b o o l ;  
 	 p r i v a t e   v a r   i n s i d e D i v e A t t a c k A r e a   :   b o o l ;  
 	 d e f a u l t   i n s i d e D i v e A t t a c k A r e a   =   f a l s e ;  
 	 p r i v a t e   v a r   d i v e A r e a N u m b e r   :   i n t ;  
 	 d e f a u l t   d i v e A r e a N u m b e r   =   - 1 ;  
 	  
 	  
 	 p r i v a t e   v a r   f l y i n g B o s s C a m e r a   :   b o o l ;  
 	 d e f a u l t   f l y i n g B o s s C a m e r a   =   f a l s e ;  
 	  
 	 p u b l i c   f u n c t i o n   S e t F l y i n g B o s s C a m e r a (   v a l   :   b o o l   )   {   f l y i n g B o s s C a m e r a   =   v a l ;   }  
 	 p u b l i c   f u n c t i o n   G e t F l y i n g B o s s C a m e r a ( )   :   b o o l   {   r e t u r n   f l y i n g B o s s C a m e r a ;   }  
 	  
 	  
 	 p u b l i c   s a v e d   v a r   u p s c a l e d T o o l t i p S t a t e   :   b o o l ;  
 	 d e f a u l t   u p s c a l e d T o o l t i p S t a t e   =   f a l s e ;  
 	  
 	  
 	 p r i v a t e   v a r   p h a n t o m W e a p o n M g r   :   C P h a n t o m W e a p o n M a n a g e r ;  
 	  
 	  
  
 	 f u n c t i o n   E n a b l e P C M o d e (   f l a g   :   b o o l   )  
 	 {  
 	 	 p c M o d e   =   f l a g ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s P C M o d e E n a b l e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   p c M o d e   & &   t h e I n p u t . L a s t U s e d P C I n p u t ( ) ;  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   S h o u l d U s e P C M o d e T a r g e t i n g ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   I s P C M o d e E n a b l e d ( )   & &   ! l a s t A x i s I n p u t I s M o v e m e n t ;  
 	 } 	 	  
 	  
 	 p u b l i c   f u n c t i o n   S e t D o d g e F e e d b a c k T a r g e t (   t a r g e t   :   C A c t o r   )  
 	 {  
 	 	 d o d g e F e e d b a c k T a r g e t   =   t a r g e t ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   G e t D o d g e F e e d b a c k T a r g e t ( )   :   C A c t o r  
 	 {  
 	 	 r e t u r n   d o d g e F e e d b a c k T a r g e t ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t S u b m e r g e D e p t h (   d e p t h   :   f l o a t   )  
 	 {  
 	 	 s u b m e r g e D e p t h   =   d e p t h ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   G e t S u b m e r g e D e p t h ( )   :   f l o a t  
 	 {  
 	 	 r e t u r n   s u b m e r g e D e p t h ;  
 	 } 	  
 	  
 	  
 	 e d i t a b l e   v a r   d e l a y B e t w e e n I l l u s i o n O n e l i n e r s   :   f l o a t ;  
 	 	  
 	 	 h i n t   d e l a y B e t w e e n I l l u s i o n O n e l i n e r s   =   " d e l a y   i n   s e c s   b e t w e e n   o n e l i n e r s   a b o u t   i l l u s i o n a r y   o b j e c t s " ;  
 	 	  
 	 	 d e f a u l t   d e l a y B e t w e e n I l l u s i o n O n e l i n e r s   =   5 ;  
 	  
 	  
 	 p r i v a t e 	 	 	 v a r   b a t t l e c r y _ t i m e F o r N e x t 	 	 	 :   f l o a t ;  
 	 p r i v a t e   	 	 v a r   b a t t l e c r y _ d e l a y M i n 	 	 	 	 :   f l o a t ; 	 d e f a u l t   b a t t l e c r y _ d e l a y M i n   =   1 0 ;  
 	 p r i v a t e   	 	 v a r   b a t t l e c r y _ d e l a y M a x 	 	 	 	 :   f l o a t ; 	 d e f a u l t   b a t t l e c r y _ d e l a y M a x   =   5 5 ;  
 	 p r i v a t e 	 	 	 v a r   b a t t l e c r y _ l a s t T r y 	 	 	 	 :   n a m e ;  
 	  
 	  
 	 p r i v a t e   	 	 v a r   p r e v i o u s W e a t h e r   	 	 	 	 :   n a m e ;  
 	 p r i v a t e   	 	 v a r   p r e v i o u s R a i n S t r e n g t h 	 	 	 :   f l o a t ;  
 	  
 	  
 	 p r o t e c t e d   v a r   r e c e i v e d D a m a g e I n C o m b a t 	 :   b o o l ; 	 	 	  
 	 p r o t e c t e d   v a r   p r e v D a y N i g h t I s N i g h t 	 	 :   b o o l ; 	 	 	  
 	 p u b l i c 	 v a r   f a i l e d F u n d a m e n t a l s F i r s t A c h i e v e m e n t C o n d i t i o n   :   b o o l ; 	 	  
 	  
 	 p r i v a t e   v a r   s p a w n e d T i m e 	 	 	 	 	 :   f l o a t ;  
  
 	 p u b l i c 	 v a r   c u r r e n t M o n s t e r H u n t I n v e s t i g a t i o n A r e a   :   W 3 M o n s t e r H u n t I n v e s t i g a t i o n A r e a ; 	 	  
  
 	 p r i v a t e   v a r   i s P e r f o r m i n g P h a s e C h a n g e A n i m a t i o n   :   b o o l ; 	  
 	 d e f a u l t   i s P e r f o r m i n g P h a s e C h a n g e A n i m a t i o n   =   f a l s e ;  
 	  
 	 	 d e f a u l t   r e c e i v e d D a m a g e I n C o m b a t   =   f a l s e ;  
 	 	  
 	  
 	 p u b l i c   	 	 	   	 v a r   p l a y e r M o d e 	 	 	 	 	 :   W 3 P l a y e r M o d e ; 	  
 	 	  
 	  
 	 p r o t e c t e d   s a v e d 	 v a r   s e l e c t e d I t e m I d 	 	 	 	 	 :   S I t e m U n i q u e I d ; 	  
 	 p r o t e c t e d   s a v e d   v a r   b l o c k e d R a d i a l S l o t s 	 	 	 	 :   a r r a y   <   S R a d i a l S l o t D e f   > ;    
 	  
 	  
 	 p u b l i c 	 	 	 	 v a r   e n e m y C o l l e c t i o n D i s t 	 	 	 :   f l o a t ;  
 	 p u b l i c     	 	 	 v a r   f i n d M o v e T a r g e t D i s t M i n 	 	 :   f l o a t ; 	 	 	  
 	 p u b l i c   	 	 	 	 v a r   f i n d M o v e T a r g e t D i s t M a x 	 	 :   f l o a t ; 	 	 	  
 	 p r i v a t e 	 	 	 	 v a r   f i n d M o v e T a r g e t S c a l e d F r a m e 	 :   f l o a t ; 	 	 	  
 	 p u b l i c   	 	 	 	 v a r   i n t e r a c t D i s t 	 	 	 	 :   f l o a t ; 	 	 	  
 	 p r o t e c t e d 	 	 	 v a r   b C a n F i n d T a r g e t 	 	 	 	 :   b o o l ;  
 	 p r i v a t e 	 	 	 	 v a r   b I s C o n f i r m i n g E m p t y T a r g e t 	 :   b o o l ;  
 	 p r i v a t e   	 	 	 v a r   d i s p l a y T a r g e t 	 	 	 	 :   C G a m e p l a y E n t i t y ; 	  
 	 p r i v a t e 	 	 	 	 v a r   i s S h o o t i n g F r i e n d l y 	 	 	 :   b o o l ;  
 	  
 	 	 d e f a u l t   f i n d M o v e T a r g e t D i s t M a x   =   1 8 . f ;  
 	 	 d e f a u l t   f i n d M o v e T a r g e t S c a l e d F r a m e   =   0 . 5 f ;  
 	 	 d e f a u l t   i n t e r a c t D i s t   =   3 . 5 f ;  
 	  
 	  
 	 p r i v a t e   v a r   c u r r e n t S e l e c t e d T a r g e t 	 	 	 :   C A c t o r ;    
 	 p r i v a t e   v a r   s e l e c t e d T a r g e t T o C o n f i r m 	 	 	 :   C A c t o r ;  
 	 p r i v a t e   v a r   b C o n f i r m T a r g e t T i m e r I s E n a b l e d   	 :   b o o l ;  
 	 	  
 	  
 	 p u b l i c   s a v e d   	 	 v a r   t h r o w n E n t i t y H a n d l e 	 	 	 :   E n t i t y H a n d l e ; 	 	  
 	 p r i v a t e   	 	 	 v a r   i s T h r o w i n g I t e m W i t h A i m   	 	 :   b o o l ;  
 	 p r i v a t e 	 s a v e d 	 	 v a r   i s T h r o w i n g I t e m 	 	 	 	 :   b o o l ; 	 	 	 	  
 	 p r i v a t e   	 	 	 v a r   i s T h r o w H o l d P r e s s e d 	 	 	 :   b o o l ;  
 	  
 	  
 	 p r i v a t e 	 	 	 	 v a r   i s A i m i n g C r o s s b o w 	 	 	 :   b o o l ;  
 	  
 	 	 d e f a u l t   i s T h r o w i n g I t e m W i t h A i m   =   f a l s e ;  
 	 	  
 	  
 	 p u b l i c 	 	 	 	 v a r   p l a y e r A i m i n g 	 	 	 	 :   P l a y e r A i m i n g ;  
 	 	 	  
 	  
 	 p u b l i c   v a r   f o r c e D i s m e m b e r   	 	 	 :   b o o l ;  
 	 p u b l i c   v a r   f o r c e D i s m e m b e r N a m e   	 	 :   n a m e ;  
 	 p u b l i c   v a r   f o r c e D i s m e m b e r C h a n c e   	 :   i n t ;  
 	 p u b l i c   v a r   f o r c e D i s m e m b e r E x p l o s i o n   	 :   b o o l ;  
 	  
 	  
 	 p r i v a t e   v a r   f i n i s h e r V i c t i m   	 	 	 :   C A c t o r ;  
 	 p u b l i c   v a r   f o r c e F i n i s h e r   	 	 	 :   b o o l ;  
 	 p u b l i c   v a r   f o r c e F i n i s h e r A n i m N a m e   	 :   n a m e ;  
 	 p u b l i c   v a r   f o r c e F i n i s h e r C h a n c e   	 	 :   i n t ; 	  
 	 p u b l i c   v a r   f o r c e d S t a n c e 	 	   	 	 :   b o o l ; 	  
  
 	  
 	 p r i v a t e   v a r   m _ W e a p o n F X C o l l i s i o n G r o u p N a m e s   	 :   a r r a y   < n a m e > ;  
 	 p r i v a t e   v a r   m _ C o l l i s i o n E f f e c t   	 	 	 	 :   C E n t i t y ;  
 	 p r i v a t e   v a r   m _ L a s t W e a p o n T i p P o s 	 	 	 	 :   V e c t o r ;  
 	 p r i v a t e   v a r   m _ C o l l i s i o n F x T e m p l a t e   	 	 	 :   C E n t i t y T e m p l a t e ;  
 	 p r i v a t e   v a r   m _ R e f r e s h W e a p o n F X T y p e 	 	 	 :   b o o l ;  
 	 p r i v a t e   v a r   m _ P l a y W o o d e n F X 	 	 	 	 	 :   b o o l ;  
 	  
 	  
 	 p r i v a t e   v a r   m _ a c t i v e P o s t e r 	 	 	 	 	 :   W 3 P o s t e r ;  
 	  
 	 p u b l i c   f u n c t i o n   S e t A c t i v e P o s t e r   (   p o s t e r   :     W 3 P o s t e r   )  
 	 {  
 	 	 m _ a c t i v e P o s t e r   =   p o s t e r ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R e m o v e A c t i v e P o s t e r   ( )    
 	 {  
 	 	 m _ a c t i v e P o s t e r   =   N U L L ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t A c t i v e P o s t e r   ( )   :   W 3 P o s t e r  
 	 {  
 	 	 r e t u r n   m _ a c t i v e P o s t e r ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   v a r   h o r s e O n N a v M e s h   :   b o o l ;  
 	 d e f a u l t   h o r s e O n N a v M e s h   =   t r u e ;  
 	  
 	 p u b l i c   f u n c t i o n   S e t H o r s e N a v (   v a l   :   b o o l   )   {   h o r s e O n N a v M e s h   =   v a l ;   }  
 	  
 	  
 	 p u b l i c   v a r   t e s t A d j u s t R e q u e s t e d M o v e m e n t D i r e c t i o n   :   b o o l ;    
 	 	 d e f a u l t   t e s t A d j u s t R e q u e s t e d M o v e m e n t D i r e c t i o n   =   f a l s e ;  
 	 	  
 	  
 	 d e f a u l t 	 a u t o S t a t e 	 =   ' E x p l o r a t i o n ' ;  
 	  
 	  
 	  
 	  
 	  
 	  
 	 i m p o r t   f i n a l   f u n c t i o n   G e t E n e m i e s I n R a n g e (   o u t   e n e m i e s   :   a r r a y <   C A c t o r   >   ) ;  
 	 i m p o r t   f i n a l   f u n c t i o n   G e t V i s i b l e E n e m i e s (   o u t   e n e m i e s   :   a r r a y <   C A c t o r   >   ) ;  
 	 i m p o r t   f i n a l   f u n c t i o n   I s E n e m y V i s i b l e (   e n e m y   :   C A c t o r   )   :   b o o l ;  
 	  
 	  
 	 i m p o r t   f i n a l   f u n c t i o n   S e t u p E n e m i e s C o l l e c t i o n ( 	 r a n g e ,   h e i g h t T o l e r a n c e 	 :   f l o a t ,  
 	 	 	 	 	 	 	 	 	 	 	 	 	 m a x E n e m i e s 	 	 	 	 :   i n t ,  
 	 	 	 	 	 	 	 	 	 	 	 	 	 o p t i o n a l   t a g 	 	 	 :   n a m e ,  
 	 	 	 	 	 	 	 	 	 	 	 	 	 o p t i o n a l   f l a g s 	 	 	 :   i n t   ) ;    
  
 	 i m p o r t   f i n a l   f u n c t i o n   I s I n I n t e r i o r ( )   :   b o o l ;  
 	 i m p o r t   f i n a l   f u n c t i o n   I s I n S e t t l e m e n t ( )   :   b o o l ;  
 	 i m p o r t   f i n a l   f u n c t i o n   E n t e r S e t t l e m e n t (   i s E n t e r i n g   :   b o o l   ) ;  
 	 i m p o r t   f i n a l   f u n c t i o n   A c t i o n D i r e c t C o n t r o l (   c o n t r o l l e r   :   C R 4 L o c o m o t i o n D i r e c t C o n t r o l l e r   )   :   b o o l ;  
 	 i m p o r t   f i n a l   f u n c t i o n   S e t P l a y e r T a r g e t (   t a r g e t   :   C A c t o r   ) ;  
 	 i m p o r t   f i n a l   f u n c t i o n   S e t P l a y e r C o m b a t T a r g e t (   t a r g e t   :   C A c t o r   ) ;  
 	 i m p o r t   f i n a l   f u n c t i o n   O b t a i n T i c k e t F r o m C o m b a t T a r g e t (   t i c k e t N a m e   :   C N a m e ,   t i c k e t s C o u n t   :   i n t   ) ;  
 	 i m p o r t   f i n a l   f u n c t i o n   F r e e T i c k e t A t C o m b a t T a r g e t ( ) ;  
 	 i m p o r t   f i n a l   f u n c t i o n   S e t S c r i p t M o v e T a r g e t (   t a r g e t   :   C A c t o r   ) ;  
 	 i m p o r t   f i n a l   f u n c t i o n   G e t R i d e r D a t a ( )   :   C A I S t o r a g e R i d e r D a t a ;  
 	 i m p o r t   f i n a l   f u n c t i o n   S e t I s I n C o m b a t (   i n C o m b a t   :   b o o l   ) ;  
 	 i m p o r t   f i n a l   f u n c t i o n   S a v e L a s t M o u n t e d H o r s e (   m o u n t e d H o r s e   :   C A c t o r   ) ;  
 	  
 	 i m p o r t   f i n a l   f u n c t i o n   S e t B a c k l i g h t F r o m H e a l t h (   h e a l t h P e r c e n t a g e   :   f l o a t   ) ;  
 	 i m p o r t   p r i v a t e   f i n a l   f u n c t i o n   S e t B a c k l i g h t C o l o r (   c o l o r   :   V e c t o r   ) ;  
 	  
 	 i m p o r t   f i n a l   f u n c t i o n   G e t C o m b a t D a t a C o m p o n e n t ( )   :   C C o m b a t D a t a C o m p o n e n t ;  
 	  
 	 i m p o r t   f i n a l   f u n c t i o n   G e t T e m p l a t e P a t h A n d A p p e a r a n c e (   o u t   t e m p l a t e P a t h   :   s t r i n g ,   o u t   a p p e a r a n c e   :   n a m e   ) ;  
 	  
 	 i m p o r t   f i n a l   f u n c t i o n   H A C K _ B o a t D i s m o u n t P o s i t i o n C o r r e c t i o n (   s l o t P o s   :   V e c t o r   ) ;  
 	  
 	 i m p o r t   f i n a l   f u n c t i o n   H A C K _ F o r c e G e t B o n e P o s i t i o n (   b o n e I n d e x   :   i n t   )   :   V e c t o r ;  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t L e v e l ( )   :   i n t  
 	 {  
 	 	 r e t u r n   0 ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   A p p l y C a s t S e t t i n g s ( )  
 	 {  
 	 }  
 	  
 	  
 	  
 	 v a r   t a r g e t i n g 	 	 	 	 :   C R 4 P l a y e r T a r g e t i n g ;  
 	 v a r   t a r g e t i n g P r e c a l c s 	 	 :   S R 4 P l a y e r T a r g e t i n g P r e c a l c s ;  
 	 v a r   t a r g e t i n g I n 	 	 	 	 :   S R 4 P l a y e r T a r g e t i n g I n ;  
 	 v a r   t a r g e t i n g O u t 	 	 	 :   S R 4 P l a y e r T a r g e t i n g O u t ; 	  
 	 v a r   u s e N a t i v e T a r g e t i n g 	 	 :   b o o l ;  
 	 d e f a u l t   u s e N a t i v e T a r g e t i n g 	 =   t r u e ;  
 	  
 	 v a r   v i s i b l e A c t o r s 	 	 	 :   a r r a y <   C A c t o r   > ;  
 	 v a r   v i s i b l e A c t o r s T i m e 	 	 :   a r r a y <   f l o a t   > ;  
 	  
 	  
 	 	  
 	 e v e n t   O n S p a w n e d (   s p a w n D a t a   :   S E n t i t y S p a w n D a t a   )  
 	 {  
 	 	 v a r   a t t s   :   a r r a y < n a m e > ;  
 	 	 v a r   s k i l l   :   E S k i l l ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	  
 	 	 v a r   t e m p I t e m   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' T h r o w H o l d T e s t ' , 	 	 	 ' O n A n i m E v e n t _ T h r o w H o l d T e s t ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' O n W e a p o n D r a w R e a d y ' , 	 	 ' O n A n i m E v e n t _ O n W e a p o n D r a w R e a d y ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' O n W e a p o n H o l s t e r R e a d y ' , 	 ' O n A n i m E v e n t _ O n W e a p o n H o l s t e r R e a d y ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' A l l o w T e m p L o o k A t ' , 	 	 	 ' O n A n i m E v e n t _ A l l o w T e m p L o o k A t ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' S l i d e T o T a r g e t ' , 	 	 	 ' O n A n i m E v e n t _ S l i d e T o T a r g e t ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' P l a y F i n i s h e r B l o o d ' , 	 	 ' O n A n i m E v e n t _ P l a y F i n i s h e r B l o o d ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' S l o w M o ' , 	 	 	 	 	 ' O n A n i m E v e n t _ S l o w M o ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' B l o o d T r a i l F o r c e d ' , 	 	 ' O n A n i m E v e n t _ B l o o d T r a i l F o r c e d ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' F a d e O u t ' , 	 	 	 	 	 ' O n A n i m E v e n t _ F a d e O u t ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' F a d e I n ' , 	 	 	 	 	 ' O n A n i m E v e n t _ F a d e I n ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' D i s a l l o w H i t A n i m ' , 	 	 	 ' O n A n i m E v e n t _ D i s a l l o w H i t A n i m ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' A l l o w F a l l ' , 	 	 	 	 ' O n A n i m E v e n t _ A l l o w F a l l ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' A l l o w F a l l 2 ' , 	 	 	 	 ' O n A n i m E v e n t _ A l l o w F a l l 2 ' ) ; 	  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' D e t t a c h G r o u n d ' , 	 	 	 ' O n A n i m E v e n t _ D e t t a c h G r o u n d ' ) ; 	  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' K i l l W i t h R a g d o l l ' , 	 	 	 ' O n A n i m E v e n t _ K i l l W i t h R a g d o l l ' ) ; 	  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' p a d _ v i b r a t i o n ' , 	 	 	 ' O n A n i m E v e n t _ p a d _ v i b r a t i o n ' ) ; 	  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' p a d _ v i b r a t i o n _ l i g h t ' , 	 	 ' O n A n i m E v e n t _ p a d _ v i b r a t i o n _ l i g h t ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' R e m o v e B u r n i n g ' , 	 	 	 ' O n A n i m E v e n t _ R e m o v e B u r n i n g ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' R e m o v e T a n g l e d ' , 	 	 	 ' O n A n i m E v e n t _ R e m o v e T a n g l e d ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' M o v e N o i s e ' , 	 	 	 	 ' O n A n i m E v e n t _ M o v e N o i s e ' ) ;  
 	 	  
 	 	  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' C l i m b C a m e r a O n ' , 	 	 	 ' O n A n i m E v e n t _ C l i m b C a m e r a O n ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' C l i m b C a m e r a O f f ' , 	 	 	 ' O n A n i m E v e n t _ C l i m b C a m e r a O f f ' ) ; 	 	  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' L a d d e r C a m R e s e t ' , 	 	 	 ' O n A n i m E v e n t _ L a d d e r C a m R e s e t ' ) ;  
 	 	  
 	 	 A d d I t e m P e r L e v e l L i s t ( ) ;  
 	 	  
 	 	 e n e m y C o l l e c t i o n D i s t   =   f i n d M o v e T a r g e t D i s t M a x ;  
 	 	  
 	 	  
 	 	 t h e G a m e . R e m o v e T i m e S c a l e ( ' h o r s e _ m e l e e ' ) ;  
 	 	  
 	 	  
 	 	 i f ( ! s p a w n D a t a . r e s t o r e d   & &   ! ( ( W 3 R e p l a c e r C i r i ) t h i s )   )  
 	 	 {  
 	 	 	 A d d T i m e r ( ' G i v e S t a r t i n g I t e m s ' ,   0 . 0 0 0 0 1 ,   t r u e ,   ,   ,   t r u e ) ;  
 	 	 	  
 	 	 	 i f ( ! t h e G a m e . I s F i n a l B u i l d ( ) )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 A d d A b i l i t y ( ' G e r a l t S k i l l s _ T e s t i n g ' ) ; 	 	 	 	  
 	 	 	 	 A d d T i m e r ( ' D e b u g _ G i v e T e s t i n g I t e m s ' , 0 . 0 0 0 1 , t r u e ) ; 	 	 	  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 F a c t s A d d ( " t u t _ s t a s h _ f r e s h _ p l a y t h r o u g h " ) ;  
 	 	 }  
 	 	  
 	 	 I n i t T a r g e t i n g ( ) ;  
 	 	  
 	 	  
 	 	 i f (   s p a w n D a t a . r e s t o r e d   )  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 t h e G a m e . G a m e p l a y F a c t s R e m o v e (   " i n _ c o m b a t "   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	 i f   (   ! w e a p o n H o l s t e r   )  
 	 	 {  
 	 	 	 w e a p o n H o l s t e r   =   n e w   W e a p o n H o l s t e r   i n   t h i s ;  
 	 	 } 	 	  
 	 	  
 	 	 w e a p o n H o l s t e r . I n i t i a l i z e (   t h i s ,   s p a w n D a t a . r e s t o r e d   ) ;  
 	 	  
 	 	 i f   (   ! i n t e r i o r T r a c k e r   )  
 	 	 {  
 	 	 	 i n t e r i o r T r a c k e r   =   n e w   C P l a y e r I n t e r i o r T r a c k e r   i n   t h i s ;  
 	 	 }  
 	 	 i n t e r i o r T r a c k e r . I n i t (   s p a w n D a t a . r e s t o r e d   ) ;  
 	 	  
 	 	  
 	 	 s u p e r . O n S p a w n e d (   s p a w n D a t a   ) ;  
  
 	 	  
 	 	 m e d a l l i o n   =   n e w   W 3 M e d a l l i o n F X   i n   t h i s ;  
 	 	  
 	 	 p l a y e r M o d e   =   n e w   W 3 P l a y e r M o d e   i n   t h i s ;  
 	 	 p l a y e r M o d e . I n i t i a l i z e (   t h i s   ) ;  
 	 	  
 	 	  
 	 	 p l a y e r A i m i n g   =   n e w   P l a y e r A i m i n g   i n   t h i s ;  
 	 	 p l a y e r A i m i n g . I n i t i a l i z e (   t h i s   ) ;  
 	 	  
 	 	  
 	 	 n a v Q u e r y   =   n e w   C N a v i g a t i o n R e a c h a b i l i t y Q u e r y I n t e r f a c e   i n   t h i s ;  
 	 	  
 	 	  
 	 	 E n a b l e F i n d T a r g e t (   t r u e   ) ;  
 	 	 A d d T i m e r (   ' C o m b a t C h e c k ' ,   0 . 2 f ,   t r u e   ) ;  
 	 	  
 	 	  
 	 	 s u b s t a t e M a n a g e r 	 =   (   C E x p l o r a t i o n S t a t e M a n a g e r   )   G e t C o m p o n e n t B y C l a s s N a m e (   ' C E x p l o r a t i o n S t a t e M a n a g e r '   ) ;  
 	 	  
 	 	 f i n d M o v e T a r g e t D i s t   =   f i n d M o v e T a r g e t D i s t M a x ;  
 	 	  
 	 	 S e t u p E n e m i e s C o l l e c t i o n (   e n e m y C o l l e c t i o n D i s t ,   f i n d M o v e T a r g e t D i s t ,   1 0 ,   ' N o n e ' ,   F L A G _ A t t i t u d e _ N e u t r a l   +   F L A G _ A t t i t u d e _ H o s t i l e   +   F L A G _ A t t i t u d e _ F r i e n d l y   +   F L A G _ O n l y A l i v e A c t o r s   ) ;  
 	 	  
 	 	  
 	 	 i n p u t H a n d l e r . R e m o v e L o c k s O n S p a w n ( ) ;  
 	 	  
 	 	  
 	 	 ( ( C A c t o r )   t h i s   ) . S e t I n t e r a c t i o n P r i o r i t y (   I P _ P r i o _ 0   ) ;  
 	 	  
 	 	 p r e v D a y N i g h t I s N i g h t   =   t h e G a m e . e n v M g r . I s N i g h t ( ) ;  
 	 	 C h e c k D a y N i g h t C y c l e ( ) ;  
 	 	  
 	 	  
 	 	 E n a b l e V i s u a l D e b u g (   S H O W _ A I ,   t r u e   ) ;  
 	 	  
 	 	  
 	 	 F a c t s R e m o v e ( " b l o c k e d _ i l l u s i o n _ o n e l i n e r " ) ; 	  
 	 	  
 	 	 S e t F a i l e d F u n d a m e n t a l s F i r s t A c h i e v e m e n t C o n d i t i o n ( f a l s e ) ;  
 	 	 m _ C o l l i s i o n F x T e m p l a t e   	 =   ( C E n t i t y T e m p l a t e )   L o a d R e s o u r c e (   ' s w o r d _ c o l i s i o n _ f x '   ) ;  
 	 	 i f (   m _ W e a p o n F X C o l l i s i o n G r o u p N a m e s . S i z e ( )   = =   0   )  
 	 	 {  
 	 	 	 m _ W e a p o n F X C o l l i s i o n G r o u p N a m e s . P u s h B a c k ( ' S t a t i c ' ) ;  
 	 	 	 m _ W e a p o n F X C o l l i s i o n G r o u p N a m e s . P u s h B a c k ( ' F o l i a g e ' ) ;  
 	 	 	 m _ W e a p o n F X C o l l i s i o n G r o u p N a m e s . P u s h B a c k ( ' F e n c e ' ) ;  
 	 	 	 m _ W e a p o n F X C o l l i s i o n G r o u p N a m e s . P u s h B a c k ( ' B o a t S i d e ' ) ;  
 	 	 	 m _ W e a p o n F X C o l l i s i o n G r o u p N a m e s . P u s h B a c k ( ' D o o r ' ) ;  
 	 	 	 m _ W e a p o n F X C o l l i s i o n G r o u p N a m e s . P u s h B a c k ( ' R i g i d B o d y ' ) ;  
 	 	 	 m _ W e a p o n F X C o l l i s i o n G r o u p N a m e s . P u s h B a c k ( ' D y n a m i c ' ) ;  
 	 	 	 m _ W e a p o n F X C o l l i s i o n G r o u p N a m e s . P u s h B a c k ( ' D e s t r u c t i b l e ' ) ;  
 	 	 }  
 	 	  
 	 	 i f   (   c o u n t e r C o l l i s i o n G r o u p N a m e s . S i z e ( )   = =   0   )    
 	 	 {  
 	 	 	 c o u n t e r C o l l i s i o n G r o u p N a m e s . P u s h B a c k ( ' S t a t i c ' ) ;  
 	 	 	 c o u n t e r C o l l i s i o n G r o u p N a m e s . P u s h B a c k ( ' F o l i a g e ' ) ;  
 	 	 	 c o u n t e r C o l l i s i o n G r o u p N a m e s . P u s h B a c k ( ' F e n c e ' ) ;  
 	 	 	 c o u n t e r C o l l i s i o n G r o u p N a m e s . P u s h B a c k ( ' T e r r a i n ' ) ;  
 	 	 	 c o u n t e r C o l l i s i o n G r o u p N a m e s . P u s h B a c k ( ' D o o r ' ) ;  
 	 	 	 c o u n t e r C o l l i s i o n G r o u p N a m e s . P u s h B a c k ( ' R i g i d B o d y ' ) ;  
 	 	 	 c o u n t e r C o l l i s i o n G r o u p N a m e s . P u s h B a c k ( ' D y n a m i c ' ) ;  
 	 	 	 c o u n t e r C o l l i s i o n G r o u p N a m e s . P u s h B a c k ( ' D e s t r u c t i b l e ' ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 R e s e t P a d B a c k l i g h t C o l o r ( ) ;  
 	 	  
 	 	 i f (   s p a w n D a t a . r e s t o r e d   )  
 	 	 {  
 	 	 	 i f   ( I s C u r r e n t l y U s i n g I t e m L ( ) )  
 	 	 	 {  
 	 	 	 	 i f   ( i n v . H a s I t e m B y I d (   c u r r e n t l y E q u i p e d I t e m L   ) )  
 	 	 	 	 {  
 	 	 	 	 	 O n U s e S e l e c t e d I t e m ( ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 H i d e U s a b l e I t e m ( t r u e ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 i f   (   G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ S t e e l   | |   G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ S i l v e r   )  
 	 	 	 {  
 	 	 	 	 O n E q u i p M e l e e W e a p o n ( G e t C u r r e n t M e l e e W e a p o n T y p e ( ) ,   t r u e ,   t r u e ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 A d d T i m e r (   ' U n m o u n t C r o s s b o w T i m e r ' ,   0 . 0 1 ,   t r u e   ) ;  
 	 	 	  
 	 	 	 C l e a r B l o c k e d S l o t s ( ) ;  
 	 	 }  
 	 	  
 	 	 ( ( C R 4 P l a y e r S t a t e S w i m m i n g ) t h i s . G e t S t a t e ( ' S w i m m i n g ' ) ) . O n P a r e n t S p a w n e d ( ) ;  
 	 	  
 	 	  
 	 	 S e t I m m o r t a l i t y M o d e (   A I M _ N o n e ,   A I C _ S y n c e d A n i m   ) ;  
 	 	  
 	 	  
 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t C o n t a i n e d A b i l i t i e s ( ' D w i m e r i t i u m B o m b _ 3 ' ,   a t t s ) ;  
 	 	 f o r ( i = 0 ;   i < a t t s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 s k i l l   =   S k i l l N a m e T o E n u m ( a t t s [ i ] ) ;  
 	 	 	 i f ( s k i l l   ! =   S _ S U n d e f i n e d )  
 	 	 	 	 B l o c k S k i l l ( s k i l l ,   f a l s e ) ; 	 	  
 	 	 }  
 	 	  
 	 	  
 	 	 t h i s . G e t I n v e n t o r y ( ) . G e t I t e m E q u i p p e d O n S l o t (   E E S _ S t e e l S w o r d ,   i t e m   ) ;  
 	 	 i f (   t h i s . G e t I n v e n t o r y ( ) . I t e m H a s T a g (   i t e m ,   ' P h a n t o m W e a p o n '   )   )  
 	 	 {  
 	 	 	 t h i s . I n i t P h a n t o m W e a p o n M g r ( ) ;  
 	 	 }  
  
 	 	  
 	 	 i f ( F a c t s Q u e r y S u m ( " m q 3 0 3 6 _ f a c t _ d o n e " )   >   0 )  
 	 	 	 B l o c k A l l A c t i o n s ( ' m q 3 0 3 6 ' ,   f a l s e ) ;  
 	 	  
 	 	 s p a w n e d T i m e   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	  
 	 	 i f   (   t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) . G e t V a r V a l u e ( ' G a m e p l a y ' ,   ' E n a b l e U b e r M o v e m e n t '   )   = =   " 1 "   )  
 	 	 	 t h e G a m e . E n a b l e U b e r M o v e m e n t (   t r u e   ) ;  
 	 	 e l s e  
 	 	 	 t h e G a m e . E n a b l e U b e r M o v e m e n t (   f a l s e   ) ;  
 	 	  
 	 	  
 	 	 i f   (   ! F a c t s D o e s E x i s t ( " g w e n t _ d i f f i c u l t y " )   )  
 	 	 	 F a c t s A d d ( " g w e n t _ d i f f i c u l t y " ,   2 ) ;  
 	 	 	  
 	 	  
 	 	 i f ( ! n e w G a m e P l u s I n i t i a l i z e d   & &   F a c t s Q u e r y S u m ( " N e w G a m e P l u s " )   >   0 )  
 	 	 {  
 	 	 	 N e w G a m e P l u s I n i t i a l i z e ( ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   l a s t I n s t a n t K i l l T i m e   >   t h e G a m e . G e t G a m e T i m e ( )   )  
 	 	 {  
 	 	 	 S e t L a s t I n s t a n t K i l l T i m e (   G a m e T i m e C r e a t e ( 0 )   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 S e t P l a y e r C a m e r a P r e s e t ( ) ;  
 	 	  
 	 	 G e t W i t c h e r P l a y e r ( ) . U n e q u i p I t e m F r o m S l o t ( E E S _ P e t a r d 2 , t r u e ) ;  
 	 	  
 	 	 t h i s . G e t I n v e n t o r y ( ) . G e t I t e m E q u i p p e d O n S l o t (   E E S _ Q u i c k s l o t 2 ,   t e m p I t e m   ) ;  
 	 	 i f ( t h i s . G e t I n v e n t o r y ( ) . I s I d V a l i d ( t e m p I t e m )   & &   t h i s . G e t I n v e n t o r y ( ) . G e t I t e m C a t e g o r y ( t e m p I t e m )   ! =   ' m a s k ' )  
 	 	 {  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . U n e q u i p I t e m F r o m S l o t ( E E S _ Q u i c k s l o t 2 , t r u e ) ;  
 	 	 } 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   N e w G a m e P l u s I n i t i a l i z e ( )  
 	 {  
 	 	  
 	 	 S e t L a s t I n s t a n t K i l l T i m e (   G a m e T i m e C r e a t e ( 0 )   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t T i m e S i n c e S p a w n e d ( )   :   f l o a t  
 	 {  
 	 	 r e t u r n   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( )   -   s p a w n e d T i m e ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   U n m o u n t C r o s s b o w T i m e r (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 v a r   i t e m I d   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 i t e m I d   =   t h i s . i n v . G e t I t e m F r o m S l o t (   ' l _ w e a p o n '   ) ;  
 	 	 i f   (   i n v . I s I d V a l i d (   i t e m I d   )   & &   i n v . I s I t e m C r o s s b o w (   i t e m I d   )   )  
 	 	 {  
 	 	 	 r a n g e d W e a p o n   =   ( C r o s s b o w ) (   i n v . G e t I t e m E n t i t y U n s a f e (   i t e m I d   )   ) ;  
 	 	 	  
 	 	 	 i f   ( r a n g e d W e a p o n )  
 	 	 	 { 	  
 	 	 	 	 r a n g e d W e a p o n . I n i t i a l i z e (   ( C A c t o r ) (   r a n g e d W e a p o n . G e t P a r e n t E n t i t y ( )   )   ) ;  
 	 	 	 	 O n R a n g e d F o r c e H o l s t e r (   t r u e ,   t r u e   ) ;  
 	 	 	 	 R e m o v e T i m e r (   ' U n m o u n t C r o s s b o w T i m e r '   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 	 R e m o v e T i m e r (   ' U n m o u n t C r o s s b o w T i m e r '   ) ;  
 	 }  
 	  
 	 e v e n t   O n D e s t r o y e d ( )  
 	 {  
 	 	 p l a y e r A i m i n g . R e m o v e A i m i n g S l o M o ( ) ;  
 	 	  
 	 	 i f ( r a n g e d W e a p o n )  
 	 	 	 r a n g e d W e a p o n . C l e a r D e p l o y e d E n t i t y ( t r u e ) ;  
 	 	 	  
 	 	 R e s e t P a d B a c k l i g h t C o l o r ( ) ;  
 	 	  
 	 	  
 	 	 t h e G a m e . R e l e a s e N o S a v e L o c k (   n o S a v e L o c k   ) ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   O n S h i e l d H i t ( )  
 	 {  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t B l o c k e d S l o t s   ( )   :   a r r a y   <   S R a d i a l S l o t D e f   >  
 	 {  
 	 	 r e t u r n   b l o c k e d R a d i a l S l o t s ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n     C l e a r B l o c k e d S l o t s ( )  
 	 {  
 	 	 v a r   i   	 	 	 	   :   i n t ;  
 	 	  
 	 	  
 	 	  
 	 	 f o r   (   i   =   0 ;   i   <   b l o c k e d R a d i a l S l o t s . S i z e ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 i f (   ! I s S w i m m i n g ( )   )  
 	 	 	 {  
 	 	 	 	 i f   (   E n a b l e R a d i a l S l o t ( b l o c k e d R a d i a l S l o t s [ i ] . s l o t N a m e ,   ' s w i m m i n g ' ) )  
 	 	 	 	 {  
 	 	 	 	 	 i - = 1 ;  
 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 i f   ( ! I s U s i n g V e h i c l e ( ) )  
 	 	 	 {  
 	 	 	 	 i f   (   E n a b l e R a d i a l S l o t ( b l o c k e d R a d i a l S l o t s [ i ] . s l o t N a m e ,   ' u s e V e h i c l e ' ) )  
 	 	 	 	 {  
 	 	 	 	 	 i - = 1 ;  
 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 i f   (   ! I s C u r r e n t l y U s i n g I t e m L ( )   | |   ! I s U s a b l e I t e m L B l o c k e d ( )   )  
 	 	 	 {  
 	 	 	 	 i f   (   E n a b l e R a d i a l S l o t ( b l o c k e d R a d i a l S l o t s [ i ] . s l o t N a m e ,   ' u s a b l e I t e m L ' ) )  
 	 	 	 	 {  
 	 	 	 	 	 i - = 1 ;  
 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 i f   (   ! I s T h r o w i n g I t e m ( )   )  
 	 	 	 {  
 	 	 	 	 i f   (   E n a b l e R a d i a l S l o t ( b l o c k e d R a d i a l S l o t s [ i ] . s l o t N a m e ,   ' t h r o w B o m b ' ) )  
 	 	 	 	 {  
 	 	 	 	 	 i - = 1 ;  
 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 	  
 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R e s t o r e B l o c k e d S l o t s   ( )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   s l o t s T o B l o c k   :   a r r a y < n a m e > ;  
 	 	  
 	 	 f o r   (   i   =   0 ;   i   <   b l o c k e d R a d i a l S l o t s . S i z e ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 s l o t s T o B l o c k . P u s h B a c k   (   b l o c k e d R a d i a l S l o t s [ i ] . s l o t N a m e   ) ;  
 	 	 }  
 	 	 i f   (   s l o t s T o B l o c k . S i z e ( )   >   0   )    
 	 	 {  
 	 	 	 E n a b l e R a d i a l S l o t s   (   f a l s e ,   s l o t s T o B l o c k   ) ;  
 	 	 }  
 	 }  
 	 p r i v a t e   f u n c t i o n   D i s a b l e R a d i a l S l o t   (   s l o t N a m e   :   n a m e ,   s o u r c e N a m e   :   n a m e   )   :   b o o l  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   k   :   i n t ;  
 	 	 v a r   s l o t s T o B l o c k   :   a r r a y < n a m e > ;  
 	 	  
 	 	 v a r   b l o c k e d R a d i a l S l o t E n t r y   :   S R a d i a l S l o t D e f ;  
 	 	  
 	 	 s l o t s T o B l o c k . P u s h B a c k   (   s l o t N a m e   ) ;  
 	 	  
 	 	 f o r   (   i   =   0 ;   i   <   b l o c k e d R a d i a l S l o t s . S i z e ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 i f   (   b l o c k e d R a d i a l S l o t s [ i ] . s l o t N a m e   = =   s l o t N a m e   )  
 	 	 	 {  
 	 	 	 	 i f   (   s o u r c e N a m e   ! =   ' '   )  
 	 	 	 	 {  
 	 	 	 	 	 f o r   (   k   =   0 ;   k   <   b l o c k e d R a d i a l S l o t s [ i ] . d i s a b l e d B y S o u r c e s . S i z e ( ) ;   k   + =   1   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   b l o c k e d R a d i a l S l o t s [ i ] . d i s a b l e d B y S o u r c e s [ k ]   = =   s o u r c e N a m e   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	 b l o c k e d R a d i a l S l o t s [ i ] . d i s a b l e d B y S o u r c e s . P u s h B a c k   (   s o u r c e N a m e   ) ;  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 b l o c k e d R a d i a l S l o t E n t r y   =   I n i t B l o c k e d R a d i a l S l o t E n t r y   (   s l o t N a m e   ) ;  
 	 	  
 	 	 i f   (   s o u r c e N a m e   ! =   ' '   )  
 	 	 {  
 	 	 	 b l o c k e d R a d i a l S l o t E n t r y . d i s a b l e d B y S o u r c e s . P u s h B a c k   (   s o u r c e N a m e   ) ;  
 	 	 }  
 	 	 b l o c k e d R a d i a l S l o t s . P u s h B a c k   (   b l o c k e d R a d i a l S l o t E n t r y   ) ;  
 	 	 E n a b l e R a d i a l S l o t s   (   f a l s e ,   s l o t s T o B l o c k   ) ;  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   E n a b l e R a d i a l S l o t   (   s l o t N a m e   :   n a m e ,   s o u r c e N a m e   :   n a m e   )   :   b o o l  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   k   :   i n t ;  
 	 	  
 	 	 v a r   s l o t s T o B l o c k   :   a r r a y < n a m e > ;  
 	 	  
 	 	 s l o t s T o B l o c k . P u s h B a c k   (   s l o t N a m e   ) ;  
 	 	  
 	 	 f o r   (   i   =   0 ;   i   <   b l o c k e d R a d i a l S l o t s . S i z e ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 i f   (   b l o c k e d R a d i a l S l o t s [ i ] . s l o t N a m e   = =   s l o t N a m e   )  
 	 	 	 {  
 	 	 	  
 	 	 	 	 i f   (   s o u r c e N a m e   ! =   ' '   )  
 	 	 	 	 {  
 	 	 	 	 	 f o r   (   k   =   0 ;   k   <   b l o c k e d R a d i a l S l o t s [ i ] . d i s a b l e d B y S o u r c e s . S i z e ( ) ;   k   + =   1   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   b l o c k e d R a d i a l S l o t s [ i ] . d i s a b l e d B y S o u r c e s [ k ]   = =   s o u r c e N a m e     )  
 	 	 	 	 	 	 { 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 b l o c k e d R a d i a l S l o t s [ i ] . d i s a b l e d B y S o u r c e s . R e m o v e   (   b l o c k e d R a d i a l S l o t s [ i ] . d i s a b l e d B y S o u r c e s [ k ]   ) ; 	 	 	 	 	 	 	  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 i f   (   b l o c k e d R a d i a l S l o t s [ i ] . d i s a b l e d B y S o u r c e s . S i z e ( )   < =   0     )  
 	 	 	 	 {  
 	 	 	 	 	 b l o c k e d R a d i a l S l o t s . R e m o v e (   b l o c k e d R a d i a l S l o t s [ i ]   ) ;  
 	 	 	 	 	 E n a b l e R a d i a l S l o t s   (   t r u e ,   s l o t s T o B l o c k   ) ;  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 }  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   I n i t B l o c k e d R a d i a l S l o t E n t r y   (   s l o t N a m e   :   n a m e   )   :   S R a d i a l S l o t D e f  
 	 {  
 	 	 v a r   b l o c k e d R a d i a l S l o t E n t r y   :   S R a d i a l S l o t D e f ;  
 	 	  
 	 	 b l o c k e d R a d i a l S l o t E n t r y . s l o t N a m e   =   s l o t N a m e ;  
 	 	  
 	 	 r e t u r n   b l o c k e d R a d i a l S l o t E n t r y ;  
 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   E n a b l e R a d i a l S l o t s W i t h S o u r c e   (   e n a b l e   :   b o o l ,   s l o t s T o B l o c k   :   a r r a y   <   n a m e   > ,   s o u r c e N a m e   :   n a m e   )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 f o r   (   i   =   0 ;   i   <   s l o t s T o B l o c k . S i z e ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 i f   (   e n a b l e   )  
 	 	 	 {  
 	 	 	 	 E n a b l e R a d i a l S l o t   (   s l o t s T o B l o c k [ i ] ,   s o u r c e N a m e   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 D i s a b l e R a d i a l S l o t   (   s l o t s T o B l o c k [ i ] ,   s o u r c e N a m e   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 i f   (   b l o c k e d R a d i a l S l o t s . S i z e ( )   < =   0   )    
 	 	 {  
 	 	 	 b l o c k e d R a d i a l S l o t s . C l e a r ( ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s R a d i a l S l o t B l o c k e d   (   s l o t N a m e   :   n a m e   )   :   b o o l  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 f o r   (   i   =   0 ;   i   <   b l o c k e d R a d i a l S l o t s . S i z e ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 i f   (   b l o c k e d R a d i a l S l o t s [ i ] . s l o t N a m e   = =   s l o t N a m e   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   R e p a i r I t e m   (     r a p a i r K i t I d   :   S I t e m U n i q u e I d ,   u s e d O n I t e m   :   S I t e m U n i q u e I d   ) ;  
 	 p u b l i c   f u n c t i o n   H a s R e p a i r A b l e G e a r E q u i p e d   ( )   :   b o o l ;  
 	 p u b l i c   f u n c t i o n   H a s R e p a i r A b l e W a p o n E q u i p e d   ( )   :   b o o l ;  
 	 p u b l i c   f u n c t i o n   I s I t e m R e p a i r A b l e   (   i t e m   :   S I t e m U n i q u e I d   )   :   b o o l ;  
 	  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   R e d u c e A l l O i l s A m m o (   i d   :   S I t e m U n i q u e I d   )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   o i l s   :   a r r a y <   W 3 E f f e c t _ O i l   > ;  
 	 	  
 	 	 o i l s   =   i n v . G e t O i l s A p p l i e d O n I t e m (   i d   ) ;  
 	 	  
 	 	 f o r (   i = 0 ;   i < o i l s . S i z e ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 o i l s [   i   ] . R e d u c e A m m o ( ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   R e s u m e O i l B u f f s (   s t e e l   :   b o o l   )  
 	 {  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ;  
 	 	 v a r   o i l s   :   a r r a y <   C B a s e G a m e p l a y E f f e c t   > ;  
 	 	 v a r   b u f f ,   r e c e n t O i l   :   W 3 E f f e c t _ O i l ;  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 i t e m   =   G e t E q u i p p e d S w o r d (   s t e e l   ) ;  
 	 	 o i l s   =   G e t B u f f s (   E E T _ O i l   ) ;  
 	 	  
 	 	 i f (   o i l s . S i z e ( )   >   1   )  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	 r e c e n t O i l   =   i n v . G e t N e w e s t O i l A p p l i e d O n I t e m (   i t e m ,   f a l s e   ) ;  
 	 	 }  
 	 	  
 	 	 f o r (   i = 0 ;   i < o i l s . S i z e ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 b u f f   =   (   W 3 E f f e c t _ O i l   )   o i l s [   i   ] ;  
 	 	 	  
 	 	 	 i f (   r e c e n t O i l   & &   r e c e n t O i l   = =   b u f f   )  
 	 	 	 {  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f ( b u f f   & &   b u f f . G e t S w o r d I t e m I d ( )   = =   i t e m   )  
 	 	 	 {  
 	 	 	 	 b u f f . R e s u m e (   ' '   ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f (   r e c e n t O i l   )  
 	 	 {  
 	 	 	 r e c e n t O i l . R e s u m e (   ' '   ) ;  
 	 	 }  
 	 }  
 	  
 	 p r o t e c t e d   f i n a l   f u n c t i o n   P a u s e O i l B u f f s (   i s S t e e l   :   b o o l   )  
 	 {  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ;  
 	 	 v a r   o i l s   :   a r r a y <   C B a s e G a m e p l a y E f f e c t   > ;  
 	 	 v a r   b u f f   :   W 3 E f f e c t _ O i l ;  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 i t e m   =   G e t E q u i p p e d S w o r d (   i s S t e e l   ) ;  
 	 	 o i l s   =   G e t B u f f s (   E E T _ O i l   ) ;  
 	 	  
 	 	 f o r (   i = 0 ;   i < o i l s . S i z e ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 b u f f   =   (   W 3 E f f e c t _ O i l   )   o i l s [   i   ] ;  
 	 	 	 i f ( b u f f   & &   b u f f . G e t S w o r d I t e m I d ( )   = =   i t e m   )  
 	 	 	 {  
 	 	 	 	 b u f f . P a u s e (   ' ' ,   t r u e   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   M a n a g e A e r o n d i g h t B u f f (   a p p l y   :   b o o l   )  
 	 {  
 	 	 v a r   a e r o n d i g h t 	 	 :   W 3 E f f e c t _ A e r o n d i g h t ;  
 	 	 v a r   i t e m 	 	 	 :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 i t e m   =   i n v . G e t C u r r e n t l y H e l d S w o r d ( ) ;  
 	 	  
 	 	 i f (   i n v . I t e m H a s T a g (   i t e m ,   ' A e r o n d i g h t '   )   )  
 	 	 {  
 	 	 	 a e r o n d i g h t   =   ( W 3 E f f e c t _ A e r o n d i g h t ) G e t B u f f (   E E T _ A e r o n d i g h t   ) ;  
 	 	 	  
 	 	 	 i f (   a p p l y   )  
 	 	 	 {  
 	 	 	 	 i f (   ! a e r o n d i g h t   )  
 	 	 	 	 {  
 	 	 	 	 	 A d d E f f e c t D e f a u l t (   E E T _ A e r o n d i g h t ,   t h i s ,   " A e r o n d i g h t "   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 a e r o n d i g h t . R e s u m e (   ' M a n a g e A e r o n d i g h t B u f f '   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 a e r o n d i g h t . P a u s e (   ' M a n a g e A e r o n d i g h t B u f f '   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   C h e c k F o r P r e v i o u s L e v e l O i l E x p l o i t ( o i l N a m e   :   n a m e ,   o i l s   :   a r r a y <   W 3 E f f e c t _ O i l   > )  
 	 {  
 	 	 v a r   o i l s T o C h e c k   :   a r r a y < n a m e > ;  
 	 	 v a r   i   :   i n t ;  
 	  
 	 	 s w i t c h (   o i l N a m e   )  
 	 	 {  
 	 	 	 c a s e   ' B e a s t   O i l   3 ' :  
 	 	 	 c a s e   ' B e a s t   O i l   2 ' :  
 	 	 	 c a s e   ' B e a s t   O i l   1 ' :  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' B e a s t   O i l   3 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' B e a s t   O i l   2 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' B e a s t   O i l   1 ' ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   ' C u r s e d   O i l   3 ' :  
 	 	 	 c a s e   ' C u r s e d   O i l   2 ' :  
 	 	 	 c a s e   ' C u r s e d   O i l   1 ' :  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' C u r s e d   O i l   3 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' C u r s e d   O i l   2 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' C u r s e d   O i l   1 ' ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	  
 	 	 	 c a s e   ' D r a c o n i d e   O i l   3 ' :  
 	 	 	 c a s e   ' D r a c o n i d e   O i l   2 ' :  
 	 	 	 c a s e   ' D r a c o n i d e   O i l   1 ' :  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' D r a c o n i d e   O i l   3 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' D r a c o n i d e   O i l   2 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' D r a c o n i d e   O i l   1 ' ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   ' H a n g e d   M a n   V e n o m   3 ' :  
 	 	 	 c a s e   ' H a n g e d   M a n   V e n o m   2 ' :  
 	 	 	 c a s e   ' H a n g e d   M a n   V e n o m   1 ' :  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' H a n g e d   M a n   V e n o m   3 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' H a n g e d   M a n   V e n o m   2 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' H a n g e d   M a n   V e n o m   1 ' ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   ' H y b r i d   O i l   3 ' :  
 	 	 	 c a s e   ' H y b r i d   O i l   2 ' :  
 	 	 	 c a s e   ' H y b r i d   O i l   1 ' :  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' H y b r i d   O i l   3 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' H y b r i d   O i l   2 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' H y b r i d   O i l   1 ' ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   ' I n s e c t o i d   O i l   3 ' :  
 	 	 	 c a s e   ' I n s e c t o i d   O i l   2 ' :  
 	 	 	 c a s e   ' I n s e c t o i d   O i l   1 ' :  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' I n s e c t o i d   O i l   3 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' I n s e c t o i d   O i l   2 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' I n s e c t o i d   O i l   1 ' ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   ' M a g i c a l s   O i l   3 ' :  
 	 	 	 c a s e   ' M a g i c a l s   O i l   2 ' :  
 	 	 	 c a s e   ' M a g i c a l s   O i l   1 ' :  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' M a g i c a l s   O i l   3 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' M a g i c a l s   O i l   2 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' M a g i c a l s   O i l   1 ' ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   ' N e c r o p h a g e   O i l   3 ' :  
 	 	 	 c a s e   ' N e c r o p h a g e   O i l   2 ' :  
 	 	 	 c a s e   ' N e c r o p h a g e   O i l   1 ' :  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' N e c r o p h a g e   O i l   3 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' N e c r o p h a g e   O i l   2 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' N e c r o p h a g e   O i l   1 ' ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   ' O g r e   O i l   3 ' :  
 	 	 	 c a s e   ' O g r e   O i l   2 ' :  
 	 	 	 c a s e   ' O g r e   O i l   1 ' :  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' O g r e   O i l   3 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' O g r e   O i l   2 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' O g r e   O i l   1 ' ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   ' R e l i c   O i l   3 ' :  
 	 	 	 c a s e   ' R e l i c   O i l   2 ' :  
 	 	 	 c a s e   ' R e l i c   O i l   1 ' :  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' R e l i c   O i l   3 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' R e l i c   O i l   2 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' R e l i c   O i l   1 ' ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   ' S p e c t e r   O i l   3 ' :  
 	 	 	 c a s e   ' S p e c t e r   O i l   2 ' :  
 	 	 	 c a s e   ' S p e c t e r   O i l   1 ' :  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' S p e c t e r   O i l   3 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' S p e c t e r   O i l   2 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' S p e c t e r   O i l   1 ' ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   ' V a m p i r e   O i l   3 ' :  
 	 	 	 c a s e   ' V a m p i r e   O i l   2 ' :  
 	 	 	 c a s e   ' V a m p i r e   O i l   1 ' :  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' V a m p i r e   O i l   3 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' V a m p i r e   O i l   2 ' ) ;  
 	 	 	 	 o i l s T o C h e c k . P u s h B a c k ( ' V a m p i r e   O i l   1 ' ) ;  
 	 	 	 	 b r e a k ;  
 	 	 } 	  
 	 	  
 	 	 o i l s T o C h e c k . R e m o v e ( o i l N a m e ) ;  
  
 	 	 f o r (   i = 0 ;   i < o i l s T o C h e c k . S i z e ( ) ;   i + = 1   )  
 	 	 { 	  
 	 	 	 C h e c k I f P r e v i o u s O i l A p p l i e d ( o i l s T o C h e c k [ i ] ,   o i l s ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   C h e c k I f P r e v i o u s O i l A p p l i e d ( o i l   :   n a m e ,   o i l s   :   a r r a y <   W 3 E f f e c t _ O i l   > )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	  
 	 	 f o r (   i = 0 ;   i < o i l s . S i z e ( ) ;   i + = 1   )  
 	 	 { 	  
 	 	 	 i f (   o i l s [   i   ] . G e t O i l I t e m N a m e ( )   = =   o i l   )  
 	 	 	 {  
 	 	 	 	 R e m o v e E f f e c t (   o i l s [   i   ]   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   A p p l y O i l (   o i l I d   :   S I t e m U n i q u e I d ,   u s e d O n I t e m   :   S I t e m U n i q u e I d   )   :   b o o l  
 	 {  
 	 	 v a r   o i l A b i l i t i e s   :   a r r a y <   n a m e   > ;  
 	 	 v a r   a m m o ,   a m m o B o n u s   :   f l o a t ;  
 	 	 v a r   d m   :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ; 	 	  
 	 	 v a r   b u f f P a r a m s   :   S C u s t o m E f f e c t P a r a m s ;  
 	 	 v a r   o i l P a r a m s   :   W 3 O i l B u f f P a r a m s ;  
 	 	 v a r   o i l N a m e   :   n a m e ;  
 	 	 v a r   m i n ,   m a x   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   o i l s   :   a r r a y <   W 3 E f f e c t _ O i l   > ;  
 	 	 v a r   e x i s t i n g O i l   :   W 3 E f f e c t _ O i l ;  
 	 	 	 	  
 	 	 i f (   ! C a n A p p l y O i l O n I t e m (   o i l I d ,   u s e d O n I t e m   )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	 i n v . G e t I t e m A b i l i t i e s W i t h T a g (   o i l I d ,   t h e G a m e . p a r a m s . O I L _ A B I L I T Y _ T A G ,   o i l A b i l i t i e s   ) ;  
 	 	 o i l N a m e   =   i n v . G e t I t e m N a m e (   o i l I d   ) ;  
 	 	 o i l s   =   i n v . G e t O i l s A p p l i e d O n I t e m (   u s e d O n I t e m   ) ;  
 	 	  
 	 	  
 	 	 f o r (   i = 0 ;   i < o i l s . S i z e ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 i f (   o i l s [   i   ] . G e t O i l I t e m N a m e ( )   = =   o i l N a m e   )  
 	 	 	 {  
 	 	 	 	 e x i s t i n g O i l   =   o i l s [   i   ] ;  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( C a n U s e S k i l l ( S _ A l c h e m y _ s 0 6 ) )  
 	 	 	 C h e c k F o r P r e v i o u s L e v e l O i l E x p l o i t ( o i l N a m e , o i l s ) ;  
 	 	  
 	 	  
 	 	  
 	 	 i f (   ! e x i s t i n g O i l   )  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	 i f (   ! G e t W i t c h e r P l a y e r ( )   | |   ! C a n U s e S k i l l ( S _ A l c h e m y _ s 0 6 )   )  
 	 	 	  
 	 	 	 {  
 	 	 	 	 i n v . R e m o v e A l l O i l s F r o m I t e m (   u s e d O n I t e m   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f (   i n v . G e t A c t i v e O i l s A p p l i e d O n I t e m C o u n t (   u s e d O n I t e m   )   > =   G e t S k i l l L e v e l (   S _ A l c h e m y _ s 0 6   )   )  
 	 	 	 	  
 	 	 	 	 {  
 	 	 	 	 	 i n v . R e m o v e O l d e s t O i l F r o m I t e m (   u s e d O n I t e m   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 a m m o   =   C a l c u l a t e A t t r i b u t e V a l u e ( i n v . G e t I t e m A t t r i b u t e V a l u e ( o i l I d ,   ' a m m o ' ) ) ;  
 	 	 i f ( C a n U s e S k i l l ( S _ A l c h e m y _ s 0 6 ) )  
 	 	 {  
 	 	 	 a m m o B o n u s   =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t S k i l l A t t r i b u t e V a l u e ( S _ A l c h e m y _ s 0 6 ,   ' a m m o _ b o n u s ' ,   f a l s e ,   f a l s e ) ) ;  
 	 	 	 a m m o   * =   1   +   a m m o B o n u s   *   G e t S k i l l L e v e l ( S _ A l c h e m y _ s 0 6 ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   e x i s t i n g O i l   )  
 	 	 {  
 	 	 	 e x i s t i n g O i l . R e a p p l y (   R o u n d M a t h (   a m m o   )   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 b u f f P a r a m s . e f f e c t T y p e   =   E E T _ O i l ;  
 	 	 	 b u f f P a r a m s . c r e a t o r   =   t h i s ;  
 	 	 	 o i l P a r a m s   =   n e w   W 3 O i l B u f f P a r a m s   i n   t h i s ;  
 	 	 	 o i l P a r a m s . i c o n P a t h   =   d m . G e t I t e m I c o n P a t h (   o i l N a m e   ) ;  
 	 	 	 o i l P a r a m s . l o c a l i z e d N a m e   =   d m . G e t I t e m L o c a l i s a t i o n K e y N a m e (   o i l N a m e   ) ;  
 	 	 	 o i l P a r a m s . l o c a l i z e d D e s c r i p t i o n   =   d m . G e t I t e m L o c a l i s a t i o n K e y N a m e (   o i l N a m e   ) ;  
 	 	 	 o i l P a r a m s . s w o r d   =   u s e d O n I t e m ;  
 	 	 	 o i l P a r a m s . m a x C o u n t   =   R o u n d M a t h (   a m m o   ) ;  
 	 	 	 o i l P a r a m s . c u r r C o u n t   =   R o u n d M a t h (   a m m o   ) ;  
 	 	 	 o i l P a r a m s . o i l A b i l i t y N a m e   =   o i l A b i l i t i e s [   0   ] ;  
 	 	 	 o i l P a r a m s . o i l I t e m N a m e   =   o i l N a m e ;  
 	 	 	 b u f f P a r a m s . b u f f S p e c i f i c P a r a m s   =   o i l P a r a m s ;  
 	 	 	  
 	 	 	 A d d E f f e c t C u s t o m (   b u f f P a r a m s   ) ;  
 	 	 	  
 	 	 	 d e l e t e   o i l P a r a m s ;  
 	 	 }  
 	 	  
 	 	 L o g O i l s ( " A d d e d   o i l   < < "   +   o i l N a m e   +   " > >   t o   < < "   +   i n v . G e t I t e m N a m e (   u s e d O n I t e m   )   +   " > > " ) ;  
 	 	  
 	 	  
 	 	 S e t F a i l e d F u n d a m e n t a l s F i r s t A c h i e v e m e n t C o n d i t i o n (   t r u e   ) ; 	 	  
 	 	  
 	 	 t h e G a m e . G e t G l o b a l E v e n t s M a n a g e r ( ) . O n S c r i p t e d E v e n t (   S E C _ O n O i l A p p l i e d   ) ;  
 	 	  
 	 	 i f (   ! i n v . I s I t e m H e l d (   u s e d O n I t e m   )   )  
 	 	 {  
 	 	 	 P a u s e O i l B u f f s (   i n v . I s I t e m S t e e l S w o r d U s a b l e B y P l a y e r (   u s e d O n I t e m   )   ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   I s E q u i p p e d S w o r d U p g r a d e d W i t h O i l ( s t e e l   :   b o o l ,   o p t i o n a l   o i l N a m e   :   n a m e )   :   b o o l  
 	 {  
 	 	 v a r   s w o r d   :   S I t e m U n i q u e I d ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   o i l s   :   a r r a y <   W 3 E f f e c t _ O i l   > ;  
 	  
 	 	 s w o r d   =   G e t E q u i p p e d S w o r d (   s t e e l   ) ; 	 	 	 	  
 	 	 i f (   ! i n v . I s I d V a l i d (   s w o r d   )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	  
 	 	 i f (   o i l N a m e   = =   ' '   )  
 	 	 {  
 	 	 	 r e t u r n   i n v . I t e m H a s A n y A c t i v e O i l A p p l i e d (   s w o r d   ) ;  
 	 	 }  
 	 	  
 	 	 o i l s   =   i n v . G e t O i l s A p p l i e d O n I t e m (   s w o r d   ) ;  
 	 	 f o r (   i = 0 ;   i < o i l s . S i z e ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 i f (   o i l s [   i   ] . G e t O i l I t e m N a m e ( )   = =   o i l N a m e   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C a n A p p l y O i l O n I t e m ( o i l I d   :   S I t e m U n i q u e I d ,   u s e d O n I t e m   :   S I t e m U n i q u e I d )   :   b o o l  
 	 {  
 	 	 i f ( i n v . I t e m H a s T a g ( o i l I d ,   t h e G a m e . p a r a m s . T A G _ S T E E L _ O I L )   & &   i n v . I s I t e m S t e e l S w o r d U s a b l e B y P l a y e r ( u s e d O n I t e m ) )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 	  
 	 	 i f ( i n v . I t e m H a s T a g ( o i l I d ,   t h e G a m e . p a r a m s . T A G _ S I L V E R _ O I L )   & &   i n v . I s I t e m S i l v e r S w o r d U s a b l e B y P l a y e r ( u s e d O n I t e m ) )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   D i d F a i l F u n d a m e n t a l s F i r s t A c h i e v e m e n t C o n d i t i o n ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   f a i l e d F u n d a m e n t a l s F i r s t A c h i e v e m e n t C o n d i t i o n ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   S e t F a i l e d F u n d a m e n t a l s F i r s t A c h i e v e m e n t C o n d i t i o n ( b   :   b o o l )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   n p c   :   C N e w N P C ;  
 	 	  
 	 	 f a i l e d F u n d a m e n t a l s F i r s t A c h i e v e m e n t C o n d i t i o n   =   b ;  
 	 	  
 	 	  
 	 	 i f ( f a i l e d F u n d a m e n t a l s F i r s t A c h i e v e m e n t C o n d i t i o n )  
 	 	 {  
 	 	 	 f o r ( i = 0 ;   i < h o s t i l e E n e m i e s . S i z e ( ) ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 i f ( h o s t i l e E n e m i e s [ i ] . H a s T a g ( t h e G a m e . p a r a m s . M O N S T E R _ H U N T _ A C T O R _ T A G ) )  
 	 	 	 	 {  
 	 	 	 	 	 n p c   =   ( C N e w N P C ) h o s t i l e E n e m i e s [ i ] ;  
 	 	 	 	 	 n p c . A d d T a g ( ' f a i l e d F u n d a m e n t a l s A c h i e v e m e n t ' ) ;  
 	 	 	 	 	 n p c . A d d T i m e r ( ' F u n d a m e n t a l s A c h F a i l T i m e r ' ,   3 0 * 6 0 ,   ,   ,   ,   t r u e ,   t r u e ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s I n C o m b a t F i s t ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' C o m b a t F i s t s ' ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s I n i t i a l i z e d ( )   :   b o o l ;  
 	  
 	 p u b l i c   f u n c t i o n   I s C i r i ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   ( ( W 3 R e p l a c e r C i r i ) t h i s ) ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   W o u l d L i k e T o M o v e ( )   :   b o o l  
 	 {  
 	 	 v a r   s p e e d V e c   :   V e c t o r ;  
 	 	 v a r   s p e e d ,   s p e e d M u l t   :   f l o a t ;  
  
 	 	  
 	 	 s p e e d V e c . X   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s L e f t X '   ) ;    
 	 	 s p e e d V e c . Y   =   t h e I n p u t . G e t A c t i o n V a l u e (   ' G I _ A x i s L e f t Y '   ) ;  
 	 	 s p e e d   =   V e c L e n g t h 2 D (   s p e e d V e c   ) ;  
 	 	  
 	 	 r e t u r n   s p e e d   >   0 . 1 f ;  
 	 }  
  
 	 f u n c t i o n   H a n d l e M o v e m e n t (   d e l t a T i m e   :   f l o a t   )  
 	 {  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 i f   ( W o u l d L i k e T o M o v e ( ) )  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' p l a y e r W o u l d L i k e T o M o v e ' ,   1 . 0 f ) ;  
 	 	 e l s e  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' p l a y e r W o u l d L i k e T o M o v e ' ,   0 . 0 f ) ;  
  
 	 	 s u p e r . H a n d l e M o v e m e n t (   d e l t a T i m e   ) ;  
 	 }  
 	  
 	 f u n c t i o n   B a t t l e C r y I s R e a d y (   )   :   b o o l  
 	 {  
 	 	 v a r   l _ c u r r e n t T i m e   :   f l o a t ;  
 	 	  
 	 	 l _ c u r r e n t T i m e   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	  
 	 	 i f (   l _ c u r r e n t T i m e   > =   b a t t l e c r y _ t i m e F o r N e x t   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 } 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 f u n c t i o n   P l a y B a t t l e C r y (   _ B a t t l e C r y   :   n a m e   ,   _ C h a n c e   :   f l o a t ,   o p t i o n a l   _ I g n o r e D e l a y ,   i g n o r e R e p e a t C h e c k   :   b o o l   )  
 	 { 	  
 	 	 v a r   l _ r a n d V a l u e 	 	 	 :   f l o a t ;  
 	 	 v a r   f a c t 	 	 	 	 :   i n t ;  
 	 	  
 	 	 f a c t   =   F a c t s Q u e r y S u m ( " f o r c e _ s t a n c e _ n o r m a l " ) ;  
 	 	  
 	 	 i f (   I s S w i m m i n g ( )  
 	 	 	 | |   t h e G a m e . I s D i a l o g O r C u t s c e n e P l a y i n g ( )    
 	 	 	 | |   I s I n N o n G a m e p l a y C u t s c e n e ( )  
 	 	 	 | |   I s I n G a m e p l a y S c e n e ( )  
 	 	 	 | |   t h e G a m e . I s C u r r e n t l y P l a y i n g N o n G a m e p l a y S c e n e ( )  
 	 	 	 | |   t h e G a m e . I s F a d i n g ( )  
 	 	 	 | |   t h e G a m e . I s B l a c k s c r e e n ( )  
 	 	 	 | |   F a c t s Q u e r y S u m ( " f o r c e _ s t a n c e _ n o r m a l " )   >   0    
 	 	 	 | |   F a c t s Q u e r y S u m ( " b l o c k _ g e r a l t s _ b a t t l e c r i e s " )   >   0   )    
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   ! i g n o r e R e p e a t C h e c k   )  
 	 	 {  
 	 	 	 i f (   b a t t l e c r y _ l a s t T r y   = =   _ B a t t l e C r y   )  
 	 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 b a t t l e c r y _ l a s t T r y   =   _ B a t t l e C r y ;  
 	 	  
 	 	 l _ r a n d V a l u e   =   R a n d F ( ) ;  
 	 	  
 	 	  
 	 	 i f (   l _ r a n d V a l u e   <   _ C h a n c e   & &   (   _ I g n o r e D e l a y   | |   B a t t l e C r y I s R e a d y ( )   )     )  
 	 	 {  
 	 	 	 t h e P l a y e r . P l a y V o i c e s e t (   9 0 ,   _ B a t t l e C r y   ) ; 	 	 	  
 	 	 	  
 	 	 	 b a t t l e c r y _ t i m e F o r N e x t   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( )   +   R a n d R a n g e F (   b a t t l e c r y _ d e l a y M a x ,   b a t t l e c r y _ d e l a y M i n   ) ;  
 	 	 }  
 	 	  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   O n W e a t h e r C h a n g e d ( )  
 	 {  
 	 	 i f (   I s I n I n t e r i o r ( )  
 	 	 	 | |   G e t C u r r e n t S t a t e N a m e ( )   ! =   ' E x p l o r a t i o n '  
 	 	 	 | |   t h e G a m e . I s D i a l o g O r C u t s c e n e P l a y i n g ( )    
 	 	 	 | |   I s I n N o n G a m e p l a y C u t s c e n e ( )  
 	 	 	 | |   I s I n G a m e p l a y S c e n e ( )  
 	 	 	 | |   t h e G a m e . I s C u r r e n t l y P l a y i n g N o n G a m e p l a y S c e n e ( )  
 	 	 	 | |   t h e G a m e . I s F a d i n g ( )  
 	 	 	 | |   t h e G a m e . I s B l a c k s c r e e n ( )  
 	 	 	 | |   G e t T i m e S i n c e S p a w n e d ( )   <   6 0   )    
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 A d d T i m e r (   ' C o m m e n t O n W e a t h e r ' ,   1   ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   t i m e r   f u n c t i o n   C o m m e n t O n W e a t h e r (   _ D e l t a   :   f l o a t ,   _ I d   :   i n t   )  
 	 {  
 	 	 v a r   l _ w e a t h e r   	 	 	 	 :   n a m e ;  
 	 	 v a r   l _ c u r r e n t A r e a   	 	 	 :   E A r e a N a m e ;  
 	 	 v a r   l _ r a n d 	 	 	 	 	 :   f l o a t ;  
 	 	  
 	 	 l _ w e a t h e r   	 	 	 =   G e t W e a t h e r C o n d i t i o n N a m e ( ) ;  
 	 	  
 	 	 l _ c u r r e n t A r e a   =   t h e G a m e . G e t C o m m o n M a p M a n a g e r ( ) . G e t C u r r e n t A r e a ( ) ;  
 	 	  
 	 	 s w i t c h   (   l _ w e a t h e r   )  
 	 	 {  
 	 	 	 c a s e   ' W T _ C l e a r ' :  
 	 	 	  
 	 	 	 	 l _ r a n d   =   R a n d F ( ) ;  
 	 	 	 	  
 	 	 	 	 i f (   l _ r a n d   >   0 . 6 6 f   & &   ! A r e a I s C o l d ( )   & &   t h e G a m e . e n v M g r . I s D a y ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . P l a y V o i c e s e t (   9 0 ,   ' W e a t h e r H o t '   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   l _ r a n d   >   0 . 3 3 f   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . P l a y V o i c e s e t (   9 0 ,   ' W e a t h e r C l e a r i n g U p '   ) ;  
 	 	 	 	 } 	 	 	 	  
 	 	 	 b r e a k ;  
 	 	 	  
 	 	 	 c a s e   ' W T _ R a i n _ S t o r m ' :  
 	 	 	 	 t h e P l a y e r . P l a y V o i c e s e t (   9 0 ,   ' W e a t h e r S t o r m y '   ) ;  
 	 	 	 b r e a k ;  
 	 	 	  
 	 	 	 c a s e   ' W T _ L i g h t _ C l o u d s ' :  
 	 	 	 	 i f (   p r e v i o u s R a i n S t r e n g t h   <   G e t R a i n S t r e n g t h ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . P l a y V o i c e s e t (   9 0 ,   ' W e a t h e r L o o k s L i k e R a i n '   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f (   A r e a I s C o l d ( )   & &   p r e v i o u s W e a t h e r   = =   ' W T _ C l e a r '   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . P l a y V o i c e s e t (   9 0 ,   ' W e a t h e r C o l d '   ) ;  
 	 	 	 	 }  
 	 	 	 b r e a k ;  
 	 	 	  
 	 	 	 c a s e   ' W T _ M i d _ C l o u d s ' :  
 	 	 	 	 i f (   p r e v i o u s R a i n S t r e n g t h   <   G e t R a i n S t r e n g t h ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . P l a y V o i c e s e t (   9 0 ,   ' W e a t h e r R a i n i n g '   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f (   A r e a I s C o l d ( )   & &   p r e v i o u s W e a t h e r   = =   ' W T _ C l e a r '   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . P l a y V o i c e s e t (   9 0 ,   ' W e a t h e r C o l d '   ) ;  
 	 	 	 	 }  
 	 	 	 b r e a k ;  
 	 	 	  
 	 	 	 c a s e   ' W T _ M i d _ C l o u d s _ D a r k ' :  
 	 	 	 	 i f (   p r e v i o u s W e a t h e r   ! =   ' W T _ H e a v y _ C l o u d s '   & &   p r e v i o u s W e a t h e r   ! =   ' W T _ H e a v y _ C l o u d s _ D a r k '   )  
 	 	 	 	 	 t h e P l a y e r . P l a y V o i c e s e t (   9 0 ,   ' W e a t h e r W i n d y '   ) ;  
 	 	 	 b r e a k ;  
 	 	 	  
 	 	 	 c a s e   ' W T _ H e a v y _ C l o u d s ' :  
 	 	 	 	 i f (   p r e v i o u s W e a t h e r   ! =   ' W T _ M i d _ C l o u d s _ D a r k '   & &   p r e v i o u s W e a t h e r   ! =   ' W T _ H e a v y _ C l o u d s _ D a r k '   )  
 	 	 	 	 	 t h e P l a y e r . P l a y V o i c e s e t (   9 0 ,   ' W e a t h e r W i n d y '   ) ;  
 	 	 	 b r e a k ;  
 	 	 	  
 	 	 	 c a s e   ' W T _ H e a v y _ C l o u d s _ D a r k ' :  
 	 	 	 	 i f (   t h e P l a y e r . I s O n B o a t ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . P l a y V o i c e s e t (   9 0 ,   ' W e a t h e r S e a W i l l S t o r m '   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f (   p r e v i o u s R a i n S t r e n g t h   <   G e t R a i n S t r e n g t h ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . P l a y V o i c e s e t (   9 0 ,   ' W e a t h e r L o o k s L i k e R a i n '   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . P l a y V o i c e s e t (   9 0 ,   ' W e a t h e r W i n d y '   ) ;  
 	 	 	 	 }  
 	 	 	 b r e a k ;  
 	 	 	  
 	 	 	 c a s e   ' W T _ S n o w ' :  
 	 	 	 	 i f (   R a n d F ( )   >   0 . 5 f   )  
 	 	 	 	 	 t h e P l a y e r . P l a y V o i c e s e t (   9 0 ,   ' W e a t h e r S n o w y '   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 t h e P l a y e r . P l a y V o i c e s e t (   9 0 ,   ' W e a t h e r C o l d '   ) ;  
 	 	 	 b r e a k ;  
 	 	 } 	  
 	 	  
 	 	 p r e v i o u s R a i n S t r e n g t h   	 =   G e t R a i n S t r e n g t h ( ) ;  
 	 	 p r e v i o u s W e a t h e r   	 	 =   l _ w e a t h e r ;  
 	 }  
 	  
 	 f u n c t i o n   C a n U p d a t e M o v e m e n t ( )   :   b o o l  
 	 {  
 	 	 i f   (   r a n g e d W e a p o n    
 	 	 	 & &   G e t B e h a v i o r V a r i a b l e (   ' f u l l B o d y A n i m W e i g h t '   )   > =   1 . f  
 	 	 	 & &   r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '   )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t D e f a u l t L o c o m o t i o n C o n t r o l l e r ( )  
 	 {  
 	 	 i f (   ! d e f a u l t L o c o m o t i o n C o n t r o l l e r   )  
 	 	 {  
 	 	 	 d e f a u l t L o c o m o t i o n C o n t r o l l e r 	 =   n e w   C R 4 L o c o m o t i o n P l a y e r C o n t r o l l e r S c r i p t   i n   t h i s ;  
 	 	 }  
 	 	  
 	 	 A c t i o n D i r e c t C o n t r o l (   d e f a u l t L o c o m o t i o n C o n t r o l l e r   ) ;  
 	 }  
 	 	  
 	 e v e n t   O n P l a y e r T i c k T i m e r (   d e l t a T i m e   :   f l o a t   )  
 	 {  
 	 	 v a r   f o c u s M o d e C o n t r o l l e r   :   C F o c u s M o d e C o n t r o l l e r ;  
 	 	 v a r   c n t   :   i n t ;  
 	 	  
 	 	 s u p e r . O n P l a y e r T i c k T i m e r (   d e l t a T i m e   ) ;  
 	 	 	  
 	 	 H a n d l e M o v e m e n t (   d e l t a T i m e   ) ;  
 	 	  
 	 	 i f   (   p l a y e r A i m i n g . G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m i n g '   )  
 	 	 {  
 	 	 	 F i n d T a r g e t ( ) ;  
 	 	 	 F i n d N o n A c t o r T a r g e t (   f a l s e   ) ;  
 	 	 	 U p d a t e D i s p l a y T a r g e t ( ) ;  
 	 	 	 U p d a t e L o o k A t T a r g e t ( ) ; 	 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f (   p l a y e r T i c k T i m e r P h a s e   = =   0   )  
 	 	 	 {  
 	 	 	 	 F i n d T a r g e t ( ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f (   p l a y e r T i c k T i m e r P h a s e   = =   1   )  
 	 	 	 {  
 	 	 	 	 F i n d N o n A c t o r T a r g e t (   f a l s e   ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f   (   p l a y e r T i c k T i m e r P h a s e   = =   2   )  
 	 	 	 {  
 	 	 	 	 U p d a t e D i s p l a y T a r g e t ( ) ;  
 	 	 	 	 U p d a t e L o o k A t T a r g e t ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	 p l a y e r T i c k T i m e r P h a s e   =   (   p l a y e r T i c k T i m e r P h a s e   +   1   )   %   3 ;  
 	 	  
 	 	 f o c u s M o d e C o n t r o l l e r   =   t h e G a m e . G e t F o c u s M o d e C o n t r o l l e r ( ) ;  
 	 	 f o c u s M o d e C o n t r o l l e r . U p d a t e F o c u s I n t e r a c t i o n s (   d e l t a T i m e   ) ;  
 	 	  
 	 	  
 	 	 c n t   =   ( i n t ) (   e f f e c t M a n a g e r . G e t C r i t i c a l B u f f s C o u n t ( )   >   0   ) ; 	 	  
 	 	 S e t B e h a v i o r V a r i a b l e ( ' h a s C r i t i c a l B u f f ' ,   c n t ) ;  
 	 } 	  
 	  
 	 e v e n t   O n D e a t h (   d a m a g e A c t i o n   :   W 3 D a m a g e A c t i o n   )  
 	 {  
 	 	 s u p e r . O n D e a t h (   d a m a g e A c t i o n   ) ;  
 	 	  
 	 	 R e m o v e T i m e r ( ' R e q u e s t C r i t i c a l A n i m S t a r t ' ) ;  
 	 	  
 	 	 E n a b l e F i n d T a r g e t (   f a l s e   ) ;  
 	 	 B l o c k A l l A c t i o n s ( ' D e a t h ' ,   t r u e ) ;  
 	 	  
 	 	 E n a b l e H a r d L o c k (   f a l s e   ) ;  
 	 	  
 	 	 t h e G a m e . C r e a t e N o S a v e L o c k (   ' p l a y e r _ d e a t h ' ,   d e a t h N o S a v e L o c k ,   f a l s e ,   f a l s e   ) ;  
 	 	 t h e G a m e . S e t D e a t h S a v e L o c k I d (   d e a t h N o S a v e L o c k   ) ;  
 	 	  
 	 	 C l e a r H o s t i l e E n e m i e s L i s t ( ) ;  
 	 	 R e m o v e R e a c t i o n s ( ) ;  
 	 	 S e t P l a y e r C o m b a t T a r g e t ( N U L L ) ;  
 	 	 O n E n a b l e A i m i n g M o d e (   f a l s e   ) ; 	  
 	 	  
 	 	 t h e G a m e . E n a b l e F r e e C a m e r a (   f a l s e   ) ;  
 	 }  
 	  
 	  
 	 f u n c t i o n   O n R e v i v e d ( )  
 	 {  
 	 	 s u p e r . O n R e v i v e d ( ) ;  
 	 	 B l o c k A l l A c t i o n s ( ' D e a t h ' ,   f a l s e ) ;  
 	 	  
 	 	 t h e G a m e . R e l e a s e N o S a v e L o c k ( d e a t h N o S a v e L o c k ) ;  
 	 	  
 	 	 t h i s . R e s t a r t R e a c t i o n s I f N e e d e d ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C a n S t a r t T a l k ( )   :   b o o l  
 	 {  
 	 	 i f   (   b e i n g W a r n e d B y . S i z e ( )   >   0   )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 r e t u r n   s u p e r . C a n S t a r t T a l k ( ) ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   A d d C o u n t e r T i m e S t a m p ( t i m e   :   E n g i n e T i m e ) 	 	 { c o u n t e r T i m e s t a m p s . P u s h B a c k ( t i m e ) ; } 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   C h e c k C o u n t e r S p a m m i n g ( a t t a c k e r   :   C A c t o r )   :   b o o l  
 	 {  
 	 	 v a r   c o u n t e r W i n d o w S t a r t T i m e   :   E n g i n e T i m e ; 	 	  
 	 	 v a r   i ,   s p a m C o u n t e r   :   i n t ;  
 	 	 v a r   r e f l e x A c t i o n   :   b o o l ;  
 	 	 v a r   t e s t E n g i n e T i m e   :   E n g i n e T i m e ;  
 	 	  
 	 	 i f ( ! a t t a c k e r )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 c o u n t e r W i n d o w S t a r t T i m e   =   ( ( C N e w N P C ) a t t a c k e r ) . G e t C o u n t e r W i n d o w S t a r t T i m e ( ) ;  
 	 	 s p a m C o u n t e r   =   0 ;  
 	 	 r e f l e x A c t i o n   =   f a l s e ;  
 	 	  
 	 	  
 	 	 i f   (   c o u n t e r W i n d o w S t a r t T i m e   = =   t e s t E n g i n e T i m e   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 f o r ( i   =   c o u n t e r T i m e s t a m p s . S i z e ( )   -   1 ;   i > = 0 ;   i - = 1 )  
 	 	 {  
 	 	 	  
 	 	 	 i f ( c o u n t e r T i m e s t a m p s [ i ]   > =   ( c o u n t e r W i n d o w S t a r t T i m e   -   E n g i n e T i m e F r o m F l o a t ( 0 . 4 ) )   )  
 	 	 	 {  
 	 	 	 	 s p a m C o u n t e r   + =   1 ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 c o u n t e r T i m e s t a m p s . R e m o v e ( c o u n t e r T i m e s t a m p s [ i ] ) ;  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 i f ( ! r e f l e x A c t i o n   & &   ( c o u n t e r T i m e s t a m p s [ i ]   > =   c o u n t e r W i n d o w S t a r t T i m e ) )  
 	 	 	 	 r e f l e x A c t i o n   =   t r u e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( s p a m C o u n t e r   = =   1   & &   r e f l e x A c t i o n )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   P e r f o r m C o u n t e r C h e c k ( p a r r y I n f o :   S P a r r y I n f o )   :   b o o l  
 	 {  
 	 	 v a r   m u l t   	 	 	 	 	 	 :   f l o a t ;  
 	 	 v a r   p a r r y T y p e 	 	 	 	 	 :   E P a r r y T y p e ;  
 	 	 v a r   v a l i d C o u n t e r ,   u s e K n o c k d o w n   	 :   b o o l ;  
 	 	 v a r   s l i d e D i s t a n c e ,   d u r a t i o n   	 :   f l o a t ;  
 	 	 v a r   p l a y e r T o T a r g e t R o t 	 	 	 :   E u l e r A n g l e s ;  
 	 	 v a r   z D i f f e r e n c e ,   m u t a t i o n 8 T r i g g e r H P   :   f l o a t ;  
 	 	 v a r   e f f e c t T y p e   	 	 	 	 	 :   E E f f e c t T y p e ;  
 	 	 v a r   r e p e l T y p e 	 	 	 	 	 :   E P l a y e r R e p e l T y p e   =   P R T _ R a n d o m ;  
 	 	 v a r   p a r a m s 	 	 	 	 	 	 :   S C u s t o m E f f e c t P a r a m s ;  
 	 	 v a r   t h i s P o s ,   a t t a c k e r P o s   	 	 :   V e c t o r ;  
 	 	 v a r   f i s t F i g h t C h e c k ,   i s M u t a t i o n 8   :   b o o l ;  
 	 	 v a r   f i s t F i g h t C o u n t e r   	 	 	 :   b o o l ;  
 	 	 v a r   a t t a c k e r I n v e n t o r y 	 	 	 :   C I n v e n t o r y C o m p o n e n t ;  
 	 	 v a r   w e a p o n I d 	 	 	 	 	 :   S I t e m U n i q u e I d ;  
 	 	 v a r   w e a p o n T a g s 	 	 	 	 	 :   a r r a y < n a m e > ;  
 	 	 v a r   p l a y e r T o A t t a c k e r V e c t o r   	 	 :   V e c t o r ;  
 	 	 v a r   t r a c e P o s S t a r t 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   t r a c e P o s E n d 	 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   h i t P o s 	 	 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   h i t N o r m a l 	 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   m i n ,   m a x 	 	 	 	 	 :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   n p c   	 	 	 	 	 	 :   C N e w N P C ;  
 	 	  
 	 	 i f ( S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l D o d g e ' )   | |   S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l C o u n t e r ' ) )  
 	 	 {  
 	 	 	 t h e G a m e . R e m o v e T i m e S c a l e (   t h e G a m e . G e t T i m e s c a l e S o u r c e ( E T S _ T u t o r i a l F i g h t )   ) ;  
 	 	 	 F a c t s R e m o v e ( " t u t _ f i g h t _ s l o m o _ O N " ) ;  
 	 	 }  
 	 	  
 	 	 i f   (   ! p a r r y I n f o . c a n B e P a r r i e d   | |   p a r r y I n f o . a t t a c k e r . H a s A b i l i t y (   ' C a n n o t B e C o u n t e r e d '   )   )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 f i s t F i g h t C h e c k   =   F i s t F i g h t C h e c k (   p a r r y I n f o . t a r g e t ,   p a r r y I n f o . a t t a c k e r ,   f i s t F i g h t C o u n t e r   ) ;  
 	 	  
 	 	 i f (   P a r r y C o u n t e r C h e c k ( )   & &   p a r r y I n f o . t a r g e t T o A t t a c k e r A n g l e A b s   <   t h e G a m e . p a r a m s . P A R R Y _ H A L F _ A N G L E   & &   f i s t F i g h t C h e c k   )  
 	 	 {  
 	 	 	  
 	 	 	 v a l i d C o u n t e r   =   C h e c k C o u n t e r S p a m m i n g ( p a r r y I n f o . a t t a c k e r ) ;  
 	 	 	  
 	 	 	 i f ( v a l i d C o u n t e r )  
 	 	 	 {  
 	 	 	 	 i f   (   I s I n C o m b a t A c t i o n F r i e n d l y ( )   )  
 	 	 	 	 	 R a i s e E v e n t ( ' C o m b a t A c t i o n F r i e n d l y E n d ' ) ;  
 	 	 	 	  
 	 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' p a r r y T y p e ' ,   C h o o s e P a r r y T y p e I n d e x (   p a r r y I n f o   )   ) ;  
 	 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' c o u n t e r ' ,   ( f l o a t ) v a l i d C o u n t e r ) ; 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' p a r r y T y p e ' ,   C h o o s e P a r r y T y p e I n d e x (   p a r r y I n f o   )   ) ;  
 	 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' c o u n t e r ' ,   ( f l o a t ) v a l i d C o u n t e r ) ; 	 	 	  
 	 	 	 	 t h i s . S e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e ' ,   ( i n t ) C A T _ P a r r y   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f   (   ! f i s t F i g h t C o u n t e r   )  
 	 	 	 	 {  
 	 	 	 	 	 a t t a c k e r I n v e n t o r y   =   p a r r y I n f o . a t t a c k e r . G e t I n v e n t o r y ( ) ;  
 	 	 	 	 	 w e a p o n I d   =   a t t a c k e r I n v e n t o r y . G e t I t e m F r o m S l o t ( ' r _ w e a p o n ' ) ;  
 	 	 	 	 	 a t t a c k e r I n v e n t o r y . G e t I t e m T a g s (   w e a p o n I d   ,   w e a p o n T a g s   ) ;  
 	 	 	 	 	  
 	 	 	 	 	 i f (   G e t W i t c h e r P l a y e r ( ) . I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 8   )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i s M u t a t i o n 8   =   t r u e ;  
 	 	 	 	 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 8 ' ,   ' h p _ p e r c _ t r i g g e r ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 	 	 m u t a t i o n 8 T r i g g e r H P   =   m i n . v a l u e M u l t i p l i c a t i v e ;  
 	 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 n p c   =   ( C N e w N P C ) p a r r y I n f o . a t t a c k e r ;  
 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   p a r r y I n f o . a t t a c k e r . H a s A b i l i t y ( ' m o n _ g r a v e h a g ' )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e p e l T y p e   =   P R T _ S l a s h ;  
 	 	 	 	 	 	 p a r r y I n f o . a t t a c k e r . A d d E f f e c t D e f a u l t ( E E T _ C o u n t e r S t r i k e H i t ,   t h i s ,   ' R e f l e x P a r r y P e r f o r m e d ' ) ;  
 	 	 	 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f   (   n p c   & &   ! n p c . I s H u m a n ( )   & &   ! n p c . H a s T a g (   ' d e t t l a f f _ v a m p i r e '   )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e p e l T y p e   =   P R T _ S i d e S t e p S l a s h ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f   (   w e a p o n T a g s . C o n t a i n s ( ' s p e a r 2 h ' )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e p e l T y p e   =   P R T _ S i d e S t e p S l a s h ;  
 	 	 	 	 	 	 p a r r y I n f o . a t t a c k e r . A d d E f f e c t D e f a u l t ( E E T _ C o u n t e r S t r i k e H i t ,   t h i s ,   " R e f l e x P a r r y P e r f o r m e d " ) ;  
 	 	 	 	 	 	 p a r r y I n f o . a t t a c k e r . S i g n a l G a m e p l a y E v e n t (   ' S p e a r D e s t r u c t i o n ' ) ;  
 	 	 	 	 	 	 ( ( C N e w N P C ) p a r r y I n f o . a t t a c k e r ) . P r o c e s s S p e a r D e s t r u c t i o n ( ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f (   i s M u t a t i o n 8   & &   n p c   & &   ! n p c . I s I m m u n e T o M u t a t i o n 8 F i n i s h e r ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e p e l T y p e   =   P R T _ R e p e l T o F i n i s h e r ;  
 	 	 	 	 	 	 n p c . A d d E f f e c t D e f a u l t (   E E T _ C o u n t e r S t r i k e H i t ,   t h i s ,   " R e f l e x P a r r y P e r f o r m e d "   ) ;  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 	 S e t T a r g e t (   n p c ,   t r u e   ) ;  
 	 	 	 	 	 	  
 	 	 	 	 	 	 P e r f o r m F i n i s h e r (   0 . f ,   0   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	  
 	 	 	 	 	 	 t h i s P o s   =   t h i s . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 	 	 	 a t t a c k e r P o s   =   p a r r y I n f o . a t t a c k e r . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 	 	 	 p l a y e r T o T a r g e t R o t   =   V e c T o R o t a t i o n (   t h i s P o s   -   a t t a c k e r P o s   ) ;  
 	 	 	 	 	 	 z D i f f e r e n c e   =   t h i s P o s . Z   -   a t t a c k e r P o s . Z ;  
 	 	 	 	 	 	  
 	 	 	 	 	 	 i f   (   p l a y e r T o T a r g e t R o t . P i t c h   <   - 5 . f   & &   z D i f f e r e n c e   >   0 . 3 5   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 r e p e l T y p e   =   P R T _ K i c k ;  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 r a g d o l l T a r g e t   =   p a r r y I n f o . a t t a c k e r ;  
 	 	 	 	 	 	 	 A d d T i m e r (   ' A p p l y C o u n t e r R a g d o l l T i m e r ' ,   0 . 3   ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 u s e K n o c k d o w n   =   f a l s e ;  
 	 	 	 	 	 	 	 i f   (   C a n U s e S k i l l ( S _ S w o r d _ s 1 1 )   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 i f (   G e t S k i l l L e v e l ( S _ S w o r d _ s 1 1 )   >   1   & &   R a n d R a n g e F ( 3 , 0 )   <   G e t W i t c h e r P l a y e r ( ) . G e t S t a t ( B C S _ F o c u s )   )  
 	 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 	 d u r a t i o n   =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 1 1 ,   ' d u r a t i o n ' ,   f a l s e ,   t r u e ) ) ;  
 	 	 	 	 	 	 	 	 	 u s e K n o c k d o w n   =   t r u e ;  
 	 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 e l s e   i f   (   p a r r y I n f o . a t t a c k e r . I s H u m a n ( )   )  
 	 	 	 	 	 	 	 {    
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 t r a c e P o s S t a r t   =   p a r r y I n f o . a t t a c k e r . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 	 	 	 	 	 t r a c e P o s S t a r t . Z   + =   1 . f ;  
 	 	 	 	 	 	 	 	 p l a y e r T o A t t a c k e r V e c t o r   =   V e c N o r m a l i z e (   p a r r y I n f o . a t t a c k e r . G e t W o r l d P o s i t i o n ( )   -     p a r r y I n f o . t a r g e t . G e t W o r l d P o s i t i o n ( )   ) ;  
 	 	 	 	 	 	 	 	 t r a c e P o s E n d   =   (   p l a y e r T o A t t a c k e r V e c t o r   *   0 . 7 5 f   )   +   (   p l a y e r T o A t t a c k e r V e c t o r   *   p a r r y I n f o . a t t a c k e r . G e t R a d i u s ( )   )   +   p a r r y I n f o . a t t a c k e r . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 	 	 	 	 	 t r a c e P o s E n d . Z   + =   1 . f ;  
  
 	 	 	 	 	 	 	 	 i f   (   ! t h e G a m e . G e t W o r l d ( ) . S t a t i c T r a c e (   t r a c e P o s S t a r t ,   t r a c e P o s E n d ,   h i t P o s ,   h i t N o r m a l ,   c o u n t e r C o l l i s i o n G r o u p N a m e s   )   )  
 	 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 	 t r a c e P o s S t a r t   =   t r a c e P o s E n d ;  
 	 	 	 	 	 	 	 	 	 t r a c e P o s E n d   - =   3 . f ;  
 	 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 	 i f   (   ! t h e G a m e . G e t W o r l d ( ) . S t a t i c T r a c e (   t r a c e P o s S t a r t ,   t r a c e P o s E n d ,   h i t P o s ,   h i t N o r m a l ,   c o u n t e r C o l l i s i o n G r o u p N a m e s   )   )  
 	 	 	 	 	 	 	 	 	 	 u s e K n o c k d o w n   =   t r u e ;  
 	 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 i f ( u s e K n o c k d o w n   & &   ( ! p a r r y I n f o . a t t a c k e r . I s I m m u n e T o B u f f ( E E T _ H e a v y K n o c k d o w n )   | |   ! p a r r y I n f o . a t t a c k e r . I s I m m u n e T o B u f f ( E E T _ K n o c k d o w n ) ) )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 i f ( ! p a r r y I n f o . a t t a c k e r . I s I m m u n e T o B u f f ( E E T _ H e a v y K n o c k d o w n ) )  
 	 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 	 p a r a m s . e f f e c t T y p e   =   E E T _ H e a v y K n o c k d o w n ;  
 	 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 	 p a r a m s . e f f e c t T y p e   =   E E T _ K n o c k d o w n ;  
 	 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 r e p e l T y p e   =   P R T _ K i c k ;  
 	 	 	 	 	 	 	 	 p a r a m s . c r e a t o r   =   t h i s ;  
 	 	 	 	 	 	 	 	 p a r a m s . s o u r c e N a m e   =   " R e f l e x P a r r y P e r f o r m e d " ;  
 	 	 	 	 	 	 	 	 p a r a m s . d u r a t i o n   =   d u r a t i o n ;  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 p a r r y I n f o . a t t a c k e r . A d d E f f e c t C u s t o m ( p a r a m s ) ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 p a r r y I n f o . a t t a c k e r . A d d E f f e c t D e f a u l t ( E E T _ C o u n t e r S t r i k e H i t ,   t h i s ,   " R e f l e x P a r r y P e r f o r m e d " ) ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 	 p a r r y I n f o . a t t a c k e r . G e t I n v e n t o r y ( ) . P l a y I t e m E f f e c t ( p a r r y I n f o . a t t a c k e r W e a p o n I d ,   ' c o u n t e r a t t a c k ' ) ;  
 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   r e p e l T y p e   = =   P R T _ R a n d o m   )  
 	 	 	 	 	 	 i f   (   R a n d R a n g e ( 1 0 0 )   >   5 0   )  
 	 	 	 	 	 	 	 r e p e l T y p e   =   P R T _ B a s h ;  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 r e p e l T y p e   =   P R T _ K i c k ;  
 	 	 	 	 	  
 	 	 	 	 	 t h i s . S e t B e h a v i o r V a r i a b l e (   ' r e p e l T y p e ' ,   ( i n t ) r e p e l T y p e   ) ;  
 	 	 	 	 	 p a r r y I n f o . a t t a c k e r . S e t B e h a v i o r V a r i a b l e (   ' r e p e l T y p e ' ,   ( i n t ) r e p e l T y p e   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 p a r r y I n f o . a t t a c k e r . A d d E f f e c t D e f a u l t ( E E T _ C o u n t e r S t r i k e H i t ,   t h i s ,   " R e f l e x P a r r y P e r f o r m e d " ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 S e t P a r r y T a r g e t   (   p a r r y I n f o . a t t a c k e r   ) ;  
 	 	 	 	 S e t S l i d e T a r g e t (   p a r r y I n f o . a t t a c k e r   ) ;  
 	 	 	 	 i f   (   ! I s A c t o r L o c k e d T o T a r g e t ( )   )  
 	 	 	 	 	 S e t M o v e T a r g e t (   p a r r y I n f o . a t t a c k e r   ) ;  
 	 	 	 	  
 	 	 	 	 i f   (   R a i s e F o r c e E v e n t (   ' P e r f o r m C o u n t e r '   )   )  
 	 	 	 	 	 O n C o m b a t A c t i o n S t a r t ( ) ;  
 	 	 	 	  
 	 	 	 	 S e t C u s t o m R o t a t i o n (   ' C o u n t e r ' ,   V e c H e a d i n g (   p a r r y I n f o . a t t a c k e r . G e t W o r l d P o s i t i o n ( )   -   t h i s . G e t W o r l d P o s i t i o n ( )   ) ,   0 . 0 f ,   0 . 2 f ,   f a l s e   ) ;  
 	 	 	 	 A d d T i m e r (   ' U p d a t e C o u n t e r R o t a t i o n ' ,   0 . 4 f ,   t r u e   ) ;  
 	 	 	 	 A d d T i m e r (   ' S e t C o u n t e r R o t a t i o n ' ,   0 . 2 f   ) ;  
 	 	 	 	  
 	 	 	 	 I n c r e a s e U n i n t e r r u p t e d H i t s C o u n t ( ) ; 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f ( I s H e a v y A t t a c k ( p a r r y I n f o . a t t a c k A c t i o n N a m e ) )  
 	 	 	 	 	 m u l t   =   t h e G a m e . p a r a m s . H E A V Y _ S T R I K E _ C O S T _ M U L T I P L I E R ;  
 	 	 	 	 	  
 	 	 	 	 D r a i n S t a m i n a ( E S A T _ C o u n t e r a t t a c k ,   0 ,   0 ,   ' ' ,   0 ,   m u l t ) ;  
 	 	 	 	  
 	 	 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . I n c S t a t ( E S _ C o u n t e r a t t a c k C h a i n ) ;  
 	 	 	 	  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 R e s e t U n i n t e r r u p t e d H i t s C o u n t ( ) ;  
 	 	 	 }  
 	 	 	 r e t u r n   v a l i d C o u n t e r ;  
 	 	 } 	 	 	  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   U p d a t e C o u n t e r R o t a t i o n (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 U p d a t e C u s t o m R o t a t i o n H e a d i n g (   ' C o u n t e r ' ,   V e c H e a d i n g (   p a r r y T a r g e t . G e t W o r l d P o s i t i o n ( )   -   t h i s . G e t W o r l d P o s i t i o n ( )   )   ) ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   S e t C o u n t e r R o t a t i o n (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 S e t C u s t o m R o t a t i o n (   ' C o u n t e r ' ,   V e c H e a d i n g (   p a r r y T a r g e t . G e t W o r l d P o s i t i o n ( )   -   t h i s . G e t W o r l d P o s i t i o n ( )   ) ,   3 6 0 . f ,   0 . 2 f ,   f a l s e   ) ;  
 	 } 	  
 	  
 	 p r i v a t e   v a r   p a r r y T a r g e t   :   C A c t o r ;  
 	 p r i v a t e   f u n c t i o n   S e t P a r r y T a r g e t (   t   :   C A c t o r   )  
 	 {  
 	 	 p a r r y T a r g e t   =   t ;  
 	 }  
 	  
 	 p r i v a t e   v a r   r a g d o l l T a r g e t   :   C A c t o r ;  
 	 t i m e r   f u n c t i o n   A p p l y C o u n t e r R a g d o l l T i m e r (   t i m e   :   f l o a t   ,   i d   :   i n t )  
 	 {  
 	 	 v a r   a c t o r   :   C A c t o r ;  
 	 	 	 	  
 	 	 a c t o r   =   ( C A c t o r ) r a g d o l l T a r g e t ;  
 	 	  
 	 	 i f ( a c t o r )  
 	 	 {  
 	 	 	 a c t o r . A d d E f f e c t D e f a u l t ( E E T _ H e a v y K n o c k d o w n ,   t h i s ,   ' R e f l e x P a r r y P e r f o r m e d ' ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   E n a b l e M o d e (   m o d e   :   E P l a y e r M o d e ,   e n a b l e   :   b o o l   )  
 	 {  
 	 	 p l a y e r M o d e . E n a b l e M o d e (   m o d e ,   e n a b l e   ) ; 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t P l a y e r M o d e ( )   :   W 3 P l a y e r M o d e  
 	 {  
 	 	 r e t u r n   p l a y e r M o d e ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   G e t C l o s e s t I n c o m i n g A t t a c k e r ( )   :   C A c t o r  
 	 {  
 	 	 v a r   i ,   s i z e   	 	 	 	 	 :   i n t ;  
 	 	 v a r   a t t a c k e r T o P l a y e r D i s t a n c e s   	 :   a r r a y <   f l o a t   > ;  
 	 	 v a r   c l o s e s t A t t a c k e r I n d e x 	 	 :   i n t ;  
 	 	 v a r   i n c o m i n g A t t a c k e r s   	 	 	 :   a r r a y < C A c t o r > ;  
 	 	 	  
 	 	  
 	 	 i f ( p l a y e r M o d e   & &   p l a y e r M o d e . c o m b a t D a t a C o m p o n e n t )  
 	 	 {  
 	 	 	 i f   (   i n c o m i n g A t t a c k e r s . S i z e ( )   < =   0   )  
 	 	 	 	 t h i s . p l a y e r M o d e . c o m b a t D a t a C o m p o n e n t . G e t T i c k e t S o u r c e O w n e r s (   i n c o m i n g A t t a c k e r s ,   ' T I C K E T _ C h a r g e '   ) ;  
 	 	 	  
 	 	 	 i f   (   i n c o m i n g A t t a c k e r s . S i z e ( )   < =   0   )  
 	 	 	 	 t h i s . p l a y e r M o d e . c o m b a t D a t a C o m p o n e n t . G e t T i c k e t S o u r c e O w n e r s (   i n c o m i n g A t t a c k e r s ,   ' T I C K E T _ M e l e e '   ) ;  
 	 	 	 	  
 	 	 	 i f   (   i n c o m i n g A t t a c k e r s . S i z e ( )   < =   0   )  
 	 	 	 	 t h i s . p l a y e r M o d e . c o m b a t D a t a C o m p o n e n t . G e t T i c k e t S o u r c e O w n e r s (   i n c o m i n g A t t a c k e r s ,   ' T I C K E T _ R a n g e '   ) ;  
 	 	 }  
 	 	 	  
 	 	 s i z e   =   i n c o m i n g A t t a c k e r s . S i z e ( ) ;  
 	 	 a t t a c k e r T o P l a y e r D i s t a n c e s . R e s i z e (   s i z e   ) ;  
  
 	 	 i f   (   s i z e   >   0   )  
 	 	 {  
 	 	 	 f o r   (   i   =   i n c o m i n g A t t a c k e r s . S i z e ( ) - 1 ;   i   > =   0 ;   i   - =   1 )  
 	 	 	 {  
 	 	 	 	 i f   (   ! I s E n e m y V i s i b l e (   i n c o m i n g A t t a c k e r s [ i ]   )   )  
 	 	 	 	 {  
 	 	 	 	 	 i n c o m i n g A t t a c k e r s . E r a s e F a s t (   i   ) ;  
 	 	 	 	 }  
 	 	 	 } 	 	 	  
 	 	 }  
 	  
 	 	 i f   (   s i z e   >   0   )  
 	 	 {  
 	 	 	 f o r   (   i   =   0 ;   i   <   s i z e ;   i   + =   1   )  
 	 	 	 {  
 	 	 	 	 a t t a c k e r T o P l a y e r D i s t a n c e s [ i ]   =   V e c D i s t a n c e (   i n c o m i n g A t t a c k e r s [ i ] . G e t W o r l d P o s i t i o n ( ) ,   t h i s . G e t W o r l d P o s i t i o n ( )   ) ;  
 	 	 	 }  
 	 	 	 c l o s e s t A t t a c k e r I n d e x   =   A r r a y F i n d M i n F (   a t t a c k e r T o P l a y e r D i s t a n c e s   ) ;  
 	 	 	 r e t u r n   i n c o m i n g A t t a c k e r s [   c l o s e s t A t t a c k e r I n d e x   ] ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n   N U L L ;  
 	 	 }  
 	 }  
 	  
 	  
 	 t i m e r   f u n c t i o n   C o m b a t C h e c k (   t i m e   :   f l o a t   ,   i d   :   i n t )    
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   s t r L e v e l ,   t e m p   :   s t r i n g ;  
 	 	 v a r   e n e m i e s   :   a r r a y < C A c t o r > ;  
 	 	 	 	  
 	 	 U p d a t e F i n i s h a b l e E n e m y L i s t ( ) ;  
 	 	 F i n d M o v e T a r g e t ( ) ;    
 	 	 p l a y e r M o d e . U p d a t e C o m b a t M o d e ( ) ;  
 	 	  
 	 	 i f (   G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ G u a r d e d   )  
 	 	 {  
 	 	 	 i f (   G e t T a r g e t ( ) . G e t H e a l t h P e r c e n t s ( )   >   0 . 2 5 f   )  
 	 	 	 {  
 	 	 	 	 P l a y B a t t l e C r y (   ' B a t t l e C r y T a u n t ' ,   0 . 2 f   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f (   G e t T a r g e t ( ) . I s H u m a n ( )   )  
 	 	 	 	 	 P l a y B a t t l e C r y (   ' B a t t l e C r y H u m a n s E n d ' ,   0 . 3 f   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 P l a y B a t t l e C r y (   ' B a t t l e C r y M o n s t e r s E n d ' ,   0 . 3 f   ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f ( I s T h r e a t e n e d ( )   & &   S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l M o n s t e r T h r e a t L e v e l s ' )   & &   F a c t s Q u e r y S u m ( " q 0 0 1 _ n i g h t m a r e _ e n d e d " )   >   0 )  
 	 	 {  
 	 	 	 G e t E n e m i e s I n R a n g e ( e n e m i e s ) ;  
 	 	 	 f o r ( i = 0 ;   i < e n e m i e s . S i z e ( ) ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 s t r L e v e l   =   ( ( C N e w N P C ) e n e m i e s [ i ] ) . G e t E x p e r i e n c e D i f f e r e n c e L e v e l N a m e ( t e m p ) ;  
 	 	 	 	 i f ( s t r L e v e l   = =   " d e a d l y L e v e l "   | |   s t r L e v e l   = =   " h i g h L e v e l " )  
 	 	 	 	 {  
 	 	 	 	 	 F a c t s A d d ( " t u t _ h i g h _ t h r e a t _ m o n s t e r " ) ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 } 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R e c e i v e d D a m a g e I n C o m b a t ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   r e c e i v e d D a m a g e I n C o m b a t ;  
 	 }  
 	  
 	  
 	 e v e n t   O n C o m b a t S t a r t ( )  
 	 {  
 	 	 v a r   w e a p o n T y p e   :   E P l a y e r W e a p o n ;  
 	 	  
 	 	 t h e G a m e . C r e a t e N o S a v e L o c k (   ' c o m b a t ' ,   n o S a v e L o c k   ) ;  
 	 	  
 	 	 t h e G a m e . G a m e p l a y F a c t s A d d (   " i n _ c o m b a t "   ) ;  
 	 	  
 	 	  
 	 	 F a c t s R e m o v e ( " s t a t i s t i c s _ c e r b e r u s _ s i g n " ) ;  
 	 	 F a c t s R e m o v e ( " s t a t i s t i c s _ c e r b e r u s _ p e t a r d " ) ;  
 	 	 F a c t s R e m o v e ( " s t a t i s t i c s _ c e r b e r u s _ b o l t " ) ;  
 	 	 F a c t s R e m o v e ( " s t a t i s t i c s _ c e r b e r u s _ f i s t s " ) ;  
 	 	 F a c t s R e m o v e ( " s t a t i s t i c s _ c e r b e r u s _ m e l e e " ) ;  
 	 	 F a c t s R e m o v e ( " s t a t i s t i c s _ c e r b e r u s _ e n v i r o n m e n t " ) ;  
 	 	 	  
 	 	 B l o c k A c t i o n ( E I A B _ O p e n M e d i t a t i o n ,   ' I n C o m b a t ' ) ;  
 	 	 B l o c k A c t i o n ( E I A B _ H i g h l i g h t O b j e c t i v e ,   ' I n C o m b a t ' ) ;  
 	 	  
 	 	 i f   (   ! t h i s . I s U s i n g B o a t ( )   & &   G e t T a r g e t ( ) . G e t A t t i t u d e ( t h i s )   = =   A I A _ H o s t i l e   )  
 	 	 {  
 	 	 	 w e a p o n T y p e   =   G e t M o s t C o n v e n i e n t M e l e e W e a p o n (   G e t T a r g e t ( )   ) ;  
 	 	 	  
 	 	 	 i f   (   w e a p o n T y p e   = =   P W _ S t e e l   | |   w e a p o n T y p e   = =   P W _ S i l v e r   )  
 	 	 	 	 t h i s . O n E q u i p M e l e e W e a p o n (   w e a p o n T y p e ,   f a l s e   ) ;  
 	 	 }  
 	 }  
 	 	  
 	  
 	 e v e n t   O n C o m b a t F i n i s h e d ( )  
 	 {  
 	 	 v a r   c n t   :   i n t ;  
 	 	  
 	 	 r e e v a l u a t e C u r r e n t W e a p o n   =   f a l s e ;  
 	 	  
 	 	 t h e P l a y e r . H a r d L o c k T o T a r g e t (   f a l s e   ) ;  
 	  
 	 	 r e c e i v e d D a m a g e I n C o m b a t   =   f a l s e ;  
 	 	  
 	 	 t h e G a m e . G a m e p l a y F a c t s R e m o v e (   " i n _ c o m b a t "   ) ;  
 	 	 	  
 	 	  
 	 	 c n t   =   0 ;  
 	 	 i f ( F a c t s Q u e r y S u m ( " s t a t i s t i c s _ c e r b e r u s _ s i g n " )   >   0 )  
 	 	 	 c n t   + =   1 ;  
 	 	 i f ( F a c t s Q u e r y S u m ( " s t a t i s t i c s _ c e r b e r u s _ p e t a r d " )   >   0 )  
 	 	 	 c n t   + =   1 ;  
 	 	 i f ( F a c t s Q u e r y S u m ( " s t a t i s t i c s _ c e r b e r u s _ b o l t " )   >   0 )  
 	 	 	 c n t   + =   1 ;  
 	 	 i f ( F a c t s Q u e r y S u m ( " s t a t i s t i c s _ c e r b e r u s _ f i s t s " )   >   0 )  
 	 	 	 c n t   + =   1 ;  
 	 	 i f ( F a c t s Q u e r y S u m ( " s t a t i s t i c s _ c e r b e r u s _ m e l e e " )   >   0 )  
 	 	 	 c n t   + =   1 ;  
 	 	 i f ( F a c t s Q u e r y S u m ( " s t a t i s t i c s _ c e r b e r u s _ e n v i r o n m e n t " )   >   0 )  
 	 	 	 c n t   + =   1 ;  
 	 	  
 	 	  
 	 	 F a c t s R e m o v e ( " s t a t i s t i c s _ c e r b e r u s _ s i g n " ) ;  
 	 	 F a c t s R e m o v e ( " s t a t i s t i c s _ c e r b e r u s _ p e t a r d " ) ;  
 	 	 F a c t s R e m o v e ( " s t a t i s t i c s _ c e r b e r u s _ b o l t " ) ;  
 	 	 F a c t s R e m o v e ( " s t a t i s t i c s _ c e r b e r u s _ f i s t s " ) ;  
 	 	 F a c t s R e m o v e ( " s t a t i s t i c s _ c e r b e r u s _ m e l e e " ) ;  
 	 	 F a c t s R e m o v e ( " s t a t i s t i c s _ c e r b e r u s _ e n v i r o n m e n t " ) ;  
 	 	  
 	 	 i f ( c n t   > =   3 )  
 	 	 {  
 	 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . A d d A c h i e v e m e n t ( E A _ C e r b e r u s ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . N o t i c e A c h i e v e m e n t P r o g r e s s ( E A _ C e r b e r u s ,   c n t ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( t h e G a m e . G e t T u t o r i a l S y s t e m ( )   & &   F a c t s Q u e r y S u m ( " T u t o r i a l S h o w S i l v e r " )   >   0 )  
 	 	 {  
 	 	 	 F a c t s A d d ( " t u t _ s h o w _ s i l v e r _ s w o r d " ,   1 ) ;  
 	 	 	 F a c t s R e m o v e ( " T u t o r i a l S h o w S i l v e r " ) ;  
 	 	 }  
 	 	 t h i s . S e t B e h a v i o r V a r i a b l e ( ' i s I n C o m b a t F o r O v e r l a y ' , 0 . f ) ;  
 	 	 G o T o E x p l o r a t i o n I f N e e d e d ( ) ;  
 	 	 t h e G a m e . R e l e a s e N o S a v e L o c k (   n o S a v e L o c k   ) ;  
 	 	 L o g C h a n n e l (   ' O n C o m b a t F i n i s h e d ' ,   " O n C o m b a t F i n i s h e d :   R e l e a s e N o S a v e L o c k "   ) ;    
 	 	  
 	 	 S e t F a i l e d F u n d a m e n t a l s F i r s t A c h i e v e m e n t C o n d i t i o n ( f a l s e ) ;  
 	 	  
 	 	 U n b l o c k A c t i o n ( E I A B _ O p e n M e d i t a t i o n ,   ' I n C o m b a t ' ) ;  
 	 	 U n b l o c k A c t i o n ( E I A B _ H i g h l i g h t O b j e c t i v e ,   ' I n C o m b a t ' ) ;  
 	 }  
 	  
 	 e v e n t   O n R e a c t T o B e i n g H i t (   d a m a g e A c t i o n   :   W 3 D a m a g e A c t i o n   )  
 	 {  
 	 	 v a r   w e a p o n T y p e   :   E P l a y e r W e a p o n ;  
 	 	  
 	 	 s u p e r . O n R e a c t T o B e i n g H i t ( d a m a g e A c t i o n ) ;  
 	 	 I n c H i t C o u n t e r ( ) ;  
 	 	  
 	 	 i f   (   I s I n C o m b a t ( )   & &   d a m a g e A c t i o n . a t t a c k e r   & &   d a m a g e A c t i o n . a t t a c k e r   = =   G e t T a r g e t ( )   & &   ! (   t h i s . I s U s i n g V e h i c l e ( )   & &   t h i s . I s O n B o a t ( )   )   )  
 	 	 {  
 	 	 	 w e a p o n T y p e   =   G e t M o s t C o n v e n i e n t M e l e e W e a p o n (   G e t T a r g e t ( )   ) ;  
 	 	 	 i f   (   w e a p o n T y p e   ! =   P W _ F i s t s   & &   w e a p o n T y p e   ! =   P W _ N o n e   & &   w e a p o n T y p e   ! =   t h i s . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   )  
 	 	 	 	 O n E q u i p M e l e e W e a p o n (   w e a p o n T y p e ,   f a l s e   ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   R e c e i v e d C o m b a t D a m a g e ( )  
 	 {  
 	 	 r e c e i v e d D a m a g e I n C o m b a t   =   t r u e ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	 t i m e r   f u n c t i o n   U n i n t e r r u p t e d H i t s R e s e t O n I d l e ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 R e s e t U n i n t e r r u p t e d H i t s C o u n t ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R e s e t U n i n t e r r u p t e d H i t s C o u n t ( )  
 	 {  
 	 	 u n i n t e r r u p t e d H i t s C o u n t   =   0 ;  
 	 	 L o g U n i t A t t ( " U n i n t e r r u p t e d   a t t a c k s   r e s e t ! ! ! ! " ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I n c r e a s e U n i n t e r r u p t e d H i t s C o u n t ( )  
 	 {  
 	 	 u n i n t e r r u p t e d H i t s C o u n t   + =   1 ;  
 	 	 L o g U n i t A t t ( " U n i n t e r r u p t e d   a t t a c k s   c o u n t   i n c r e a s e d   t o   "   +   u n i n t e r r u p t e d H i t s C o u n t ) ;  
 	 	  
 	 	 i f ( u n i n t e r r u p t e d H i t s C o u n t   = =   4 )  
 	 	 	 A d d T i m e r ( ' S t a r t U n i n t e r r u p t e d B l u r r ' ,   1 ,   f a l s e ) ;  
 	 	  
 	 	  
 	 	 A d d T i m e r ( ' U n i n t e r r u p t e d H i t s R e s e t O n I d l e ' ,   4 . f ,   f a l s e ) ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   S t a r t U n i n t e r r u p t e d B l u r r ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 v a r   c h a n g e d   :   b o o l ;  
 	 	 v a r   m o v i n g A g e n t   :   C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ;  
 	 	 v a r   t a r g e t   :   C A c t o r ;  
 	 	  
 	 	  
 	 	 i f ( u n i n t e r r u p t e d H i t s C o u n t   <   4 )  
 	 	 {  
 	 	 	 L o g U n i t A t t ( " S t o p p i n g   c a m e r a   e f f e c t " ) ;  
 	 	 	 t h e P l a y e r . S t o p E f f e c t ( u n i n t e r r u p t e d H i t s C u r r e n t C a m e r a E f f e c t ) ;  
 	 	 	 u n i n t e r r u p t e d H i t s C u r r e n t C a m e r a E f f e c t   =   ' ' ;  
 	 	 	 u n i n t e r r u p t e d H i t s C a m e r a S t a r t e d   =   f a l s e ; 	 	 	  
 	 	 	 R e m o v e T i m e r ( ' S t a r t U n i n t e r r u p t e d B l u r r ' ) ;  
 	 	 }  
 	 	 e l s e 	  
 	 	 {  
 	 	 	 t a r g e t   =   G e t T a r g e t ( ) ;  
 	 	 	  
 	 	 	 i f (   t a r g e t   )  
 	 	 	 {  
 	 	 	 	 m o v i n g A g e n t   =   (   ( C M o v i n g P h y s i c a l A g e n t C o m p o n e n t )   ( t a r g e t . G e t M o v i n g A g e n t C o m p o n e n t ( ) )   ) ;  
 	 	 	 }  
 	 	 	 	  
 	 	 	 i f ( ! u n i n t e r r u p t e d H i t s C a m e r a S t a r t e d )  
 	 	 	 {  
 	 	 	 	 L o g U n i t A t t ( " S t a r t i n g   c a m e r a   e f f e c t " ) ;  
 	 	 	 	 A d d T i m e r ( ' S t a r t U n i n t e r r u p t e d B l u r r ' ,   0 . 0 0 1 ,   t r u e ) ; 	  
 	 	 	 	 i f ( m o v i n g A g e n t   & &   m o v i n g A g e n t . G e t C a p s u l e H e i g h t ( )   >   2 )  
 	 	 	 	 	 u n i n t e r r u p t e d H i t s C u r r e n t C a m e r a E f f e c t   =   t h e G a m e . p a r a m s . U N I N T E R R U P T E D _ H I T S _ C A M E R A _ E F F E C T _ B I G _ E N E M Y ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 u n i n t e r r u p t e d H i t s C u r r e n t C a m e r a E f f e c t   =   t h e G a m e . p a r a m s . U N I N T E R R U P T E D _ H I T S _ C A M E R A _ E F F E C T _ R E G U L A R _ E N E M Y ;  
 	 	 	 	 t h e P l a y e r . P l a y E f f e c t ( u n i n t e r r u p t e d H i t s C u r r e n t C a m e r a E f f e c t ) ;  
 	 	 	 	 u n i n t e r r u p t e d H i t s C a m e r a S t a r t e d   =   t r u e ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 c h a n g e d   =   f a l s e ;  
 	 	 	 	 i f ( m o v i n g A g e n t   & &   m o v i n g A g e n t . G e t C a p s u l e H e i g h t ( )   >   2   & &   u n i n t e r r u p t e d H i t s C u r r e n t C a m e r a E f f e c t   ! =   t h e G a m e . p a r a m s . U N I N T E R R U P T E D _ H I T S _ C A M E R A _ E F F E C T _ B I G _ E N E M Y )  
 	 	 	 	 	 c h a n g e d   =   t r u e ;  
 	 	 	 	 e l s e   i f ( ! m o v i n g A g e n t   | |   (   m o v i n g A g e n t . G e t C a p s u l e H e i g h t ( )   < =   2   & &   u n i n t e r r u p t e d H i t s C u r r e n t C a m e r a E f f e c t   ! =   t h e G a m e . p a r a m s . U N I N T E R R U P T E D _ H I T S _ C A M E R A _ E F F E C T _ R E G U L A R _ E N E M Y )   )  
 	 	 	 	 	 c h a n g e d   =   t r u e ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f ( c h a n g e d )  
 	 	 	 	 {  
 	 	 	 	 	  
 	 	 	 	 	 t h e P l a y e r . S t o p E f f e c t ( u n i n t e r r u p t e d H i t s C u r r e n t C a m e r a E f f e c t ) ;  
 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 i f ( u n i n t e r r u p t e d H i t s C u r r e n t C a m e r a E f f e c t   = =   t h e G a m e . p a r a m s . U N I N T E R R U P T E D _ H I T S _ C A M E R A _ E F F E C T _ B I G _ E N E M Y )  
 	 	 	 	 	 	 u n i n t e r r u p t e d H i t s C u r r e n t C a m e r a E f f e c t   =   t h e G a m e . p a r a m s . U N I N T E R R U P T E D _ H I T S _ C A M E R A _ E F F E C T _ R E G U L A R _ E N E M Y ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 u n i n t e r r u p t e d H i t s C u r r e n t C a m e r a E f f e c t   =   t h e G a m e . p a r a m s . U N I N T E R R U P T E D _ H I T S _ C A M E R A _ E F F E C T _ B I G _ E N E M Y ;  
 	 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 t h e P l a y e r . P l a y E f f e c t ( u n i n t e r r u p t e d H i t s C u r r e n t C a m e r a E f f e c t ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p r i v a t e   v a r   p l a y e r A c t i o n E v e n t L i s t e n e r s   	 	 	 :   a r r a y < C G a m e p l a y E n t i t y > ;  
 	 p r i v a t e   v a r   p l a y e r A c t i o n E v e n t B l o c k i n g L i s t e n e r s   	 :   a r r a y < C G a m e p l a y E n t i t y > ;  
 	  
 	 p r i v a t e   f u n c t i o n   P l a y e r A c t i o n B l o c k G a m e p l a y A c t i o n s (   s o u r c e N a m e   :   n a m e ,   l o c k   :   b o o l ,   i s F r o m P l a c e   :   b o o l   )  
 	 {  
 	 	 i f   (   l o c k   )  
 	 	 {  
 	 	 	 t h e P l a y e r . B l o c k A c t i o n (   E I A B _ S i g n s ,   s o u r c e N a m e ,   f a l s e ,   f a l s e ,   i s F r o m P l a c e   ) ;  
 	 	 	 t h e P l a y e r . B l o c k A c t i o n (   E I A B _ D r a w W e a p o n ,   s o u r c e N a m e ,   f a l s e ,   f a l s e ,   i s F r o m P l a c e   ) ;  
 	 	 	 t h e P l a y e r . B l o c k A c t i o n (   E I A B _ C a l l H o r s e ,   s o u r c e N a m e ,   f a l s e ,   f a l s e ,   i s F r o m P l a c e   ) ;  
 	 	 	 t h e P l a y e r . B l o c k A c t i o n (   E I A B _ F a s t T r a v e l ,   s o u r c e N a m e ,   f a l s e ,   f a l s e ,   i s F r o m P l a c e   ) ;  
 	 	 	 t h e P l a y e r . B l o c k A c t i o n (   E I A B _ F i s t s ,   s o u r c e N a m e ,   f a l s e ,   f a l s e ,   i s F r o m P l a c e   ) ;  
 	 	 	 t h e P l a y e r . B l o c k A c t i o n (   E I A B _ I n t e r a c t i o n A c t i o n ,   s o u r c e N a m e ,   f a l s e ,   f a l s e ,   i s F r o m P l a c e   ) ;  
 	 	 	 t h e P l a y e r . D i s a b l e C o m b a t S t a t e ( ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ S i g n s ,   s o u r c e N a m e   ) ;  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ D r a w W e a p o n ,   s o u r c e N a m e   ) ;  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ C a l l H o r s e ,   s o u r c e N a m e   ) ;  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ F a s t T r a v e l ,   s o u r c e N a m e   ) ;  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ F i s t s ,   s o u r c e N a m e   ) ;  
 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n (   E I A B _ I n t e r a c t i o n A c t i o n ,   s o u r c e N a m e   ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t P l a y e r A c t i o n E v e n t L i s t e n e r s ( )   :   a r r a y < C G a m e p l a y E n t i t y >  
 	 {  
 	 	 r e t u r n   p l a y e r A c t i o n E v e n t L i s t e n e r s ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   R e g i s t e r F o r P l a y e r A c t i o n (   l i s t e n e r   :   C G a m e p l a y E n t i t y ,   i s L o c k e d B y P l a c e   :   b o o l   )  
 	 {  
 	 	 i f   (   ! p l a y e r A c t i o n E v e n t L i s t e n e r s . C o n t a i n s (   l i s t e n e r   )   )  
 	 	 {  
 	 	 	 p l a y e r A c t i o n E v e n t L i s t e n e r s . P u s h B a c k (   l i s t e n e r   ) ;  
 	 	 }  
 	 	 i f   (   l i s t e n e r . S h o u l d B l o c k G a m e p l a y A c t i o n s O n I n t e r a c t i o n ( )   )  
 	 	 {  
 	 	 	 i f   (   ! p l a y e r A c t i o n E v e n t B l o c k i n g L i s t e n e r s . C o n t a i n s (   l i s t e n e r   )   )  
 	 	 	 {  
 	 	 	 	 p l a y e r A c t i o n E v e n t B l o c k i n g L i s t e n e r s . P u s h B a c k (   l i s t e n e r   ) ;  
 	 	 	 }  
 	 	 	 i f   (   p l a y e r A c t i o n E v e n t B l o c k i n g L i s t e n e r s . S i z e ( )   = =   1   )  
 	 	 	 {  
 	 	 	 	 P l a y e r A c t i o n B l o c k G a m e p l a y A c t i o n s (   ' P l a y e r A c t i o n ' ,   t r u e ,   i s L o c k e d B y P l a c e   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   U n r e g i s t e r F o r P l a y e r A c t i o n (   l i s t e n e r   :   C G a m e p l a y E n t i t y ,   i s L o c k e d B y P l a c e   :   b o o l   )  
 	 {  
 	 	 p l a y e r A c t i o n E v e n t L i s t e n e r s . R e m o v e (   l i s t e n e r   ) ;  
 	 	 p l a y e r A c t i o n E v e n t B l o c k i n g L i s t e n e r s . R e m o v e (   l i s t e n e r   ) ;  
 	 	 i f   (   p l a y e r A c t i o n E v e n t B l o c k i n g L i s t e n e r s . S i z e ( )   = =   0   )  
 	 	 {  
 	 	 	 P l a y e r A c t i o n B l o c k G a m e p l a y A c t i o n s (   ' P l a y e r A c t i o n ' ,   f a l s e ,   i s L o c k e d B y P l a c e   ) ;  
 	 	 } 	  
 	 }  
 	  
 	 e v e n t   O n P l a y e r A c t i o n S t a r t ( )  
 	 {  
 	 	  
 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i n J u m p S t a t e ' ,   1 . f   ) ;  
 	 }  
 	  
 	 e v e n t   O n P l a y e r A c t i o n E n d ( )  
 	 {  
 	 	 v a r   i   :   i n t ; 	 	  
 	 	 f o r   (   i   =   p l a y e r A c t i o n E v e n t L i s t e n e r s . S i z e ( )   -   1 ;   i   > =   0 ;   i - = 1   )  
 	 	 {  
 	 	 	 p l a y e r A c t i o n E v e n t L i s t e n e r s [ i ] . O n P l a y e r A c t i o n E n d ( ) ;  
 	 	 }  
 	 	 c u r r e n t C u s t o m A c t i o n   =   P E A _ N o n e ;  
 	 	  
 	 	  
 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i n J u m p S t a t e ' ,   0 . f   ) ;  
 	 }  
 	  
 	 e v e n t   O n P l a y e r A c t i o n S t a r t F i n i s h e d ( )  
 	 {  
 	 	 v a r   i   :   i n t ; 	 	  
 	 	 f o r   (   i   =   p l a y e r A c t i o n E v e n t L i s t e n e r s . S i z e ( )   -   1 ;   i   > =   0 ;   i - = 1   )  
 	 	 {  
 	 	 	 p l a y e r A c t i o n E v e n t L i s t e n e r s [ i ] . O n P l a y e r A c t i o n S t a r t F i n i s h e d ( ) ;  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   P l a y e r S t a r t A c t i o n (   p l a y e r A c t i o n   :   E P l a y e r E x p l o r a t i o n A c t i o n ,   o p t i o n a l   a n i m N a m e   :   n a m e   )   :   b o o l  
 	 {  
 	 	 i f   (   p l a y e r A c t i o n   = =   P E A _ S l o t A n i m a t i o n   & &   ! I s N a m e V a l i d ( a n i m N a m e )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 	  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' p l a y e r S t o p A c t i o n ' ,   0 . 0 ) ;  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' p l a y e r E x p l o r a t i o n A c t i o n ' ,   ( f l o a t ) ( i n t ) p l a y e r A c t i o n ) ;  
 	 	  
 	 	  
 	 	  
 	 	 i f   (   R a i s e F o r c e E v e n t ( ' p l a y e r A c t i o n S t a r t ' )   )  
 	 	 {  
 	 	 	 c u r r e n t C u s t o m A c t i o n   =   p l a y e r A c t i o n ;  
 	 	 	 i f   (   p l a y e r A c t i o n   = =   P E A _ S l o t A n i m a t i o n   )  
 	 	 	 {    
 	 	 	 	 p l a y e r A c t i o n S l o t A n i m N a m e   =   a n i m N a m e ;  
 	 	 	 	 A d d T i m e r ( ' P l a y A c t i o n A n i m W o r k a r o u n d ' , 0 , f a l s e ) ;  
 	 	 	 }  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p r i v a t e   v a r   p l a y e r A c t i o n S l o t A n i m N a m e   :   n a m e ;  
 	  
 	 t i m e r   f u n c t i o n   P l a y A c t i o n A n i m W o r k a r o u n d (   d t   :   f l o a t   ,   i d   :   i n t )  
 	 {  
 	 	 t h i s . A c t i o n P l a y S l o t A n i m a t i o n A s y n c ( ' P L A Y E R _ A C T I O N _ S L O T ' , p l a y e r A c t i o n S l o t A n i m N a m e ,   0 . 2 ,   0 . 2 ,   t r u e ) ;  
 	 }  
 	  
 	 f u n c t i o n   P l a y e r S t o p A c t i o n (   p l a y e r A c t i o n   :   E P l a y e r E x p l o r a t i o n A c t i o n   )  
 	 {  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' p l a y e r E x p l o r a t i o n A c t i o n ' ,   ( f l o a t ) ( i n t ) p l a y e r A c t i o n ) ;  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' p l a y e r S t o p A c t i o n ' ,   1 . 0 ) ;  
 	 	 c u r r e n t C u s t o m A c t i o n   =   P E A _ N o n e ;  
 	 }  
 	  
 	 f u n c t i o n   G e t P l a y e r A c t i o n ( )   :   E P l a y e r E x p l o r a t i o n A c t i o n  
 	 {  
 	 	 r e t u r n   c u r r e n t C u s t o m A c t i o n ;  
 	 }  
 	  
 	 f u n c t i o n   M e d a l l i o n P i n g ( )  
 	 {  
 	 	 v a r   c u r r T i m e   	 	 :   f l o a t   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	  
 	 	 i f   (   l a s t M e d a l l i o n E f f e c t   <   c u r r T i m e   )  
 	 	 {  
 	 	 	 l a s t M e d a l l i o n E f f e c t   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( )   +   m e d a l l i o n . e f f e c t D u r a t i o n ;  
 	 	 	 m e d a l l i o n . T r i g g e r M e d a l l i o n F X ( ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   C a n P e r f o r m P l a y e r A c t i o n ( o p t i o n a l   a l s o O u t s i d e E x p l o r a t i o n S t a t e   :   b o o l )   :   b o o l  
 	 {  
 	 	  
 	 	 i f ( ! a l s o O u t s i d e E x p l o r a t i o n S t a t e   & &   G e t C u r r e n t S t a t e N a m e ( )   ! =   ' E x p l o r a t i o n ' )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i f (   i s I n A i r   | |   ( s u b s t a t e M a n a g e r   & &   ! s u b s t a t e M a n a g e r . C a n I n t e r a c t ( ) )   | |   I s I n C o m b a t A c t i o n ( )   | |   G e t C r i t i c a l B u f f s C o u n t ( )   >   0 )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 e v e n t   O n I t e m G i v e n ( d a t a   :   S I t e m C h a n g e d D a t a )  
 	 {  
 	 	 v a r   k e y N a m e   :   n a m e ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	 v a r   m e s s a g e   :   s t r i n g ;  
 	 	 v a r   i n v e   :   C I n v e n t o r y C o m p o n e n t ;  
  
 	 	 i f ( d a t a . i n f o r m G u i )  
 	 	 { 	 	 	  
 	 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 	 i f ( h u d )  
 	 	 	 {  
 	 	 	 	 m e s s a g e   =   G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ c o m m o n _ i t e m _ r e c e i v e d " )   +   " :   "   +   G e t L o c S t r i n g B y K e y E x t ( i n v . G e t I t e m L o c a l i z e d N a m e B y U n i q u e I D ( d a t a . i d s [ 0 ] ) ) ;  
 	 	 	 	 i f ( d a t a . q u a n t i t y   >   1 )  
 	 	 	 	 	 m e s s a g e   + =   "   x "   +   d a t a . q u a n t i t y ;  
 	 	 	 	 h u d . H u d C o n s o l e M s g ( m e s s a g e ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i n v e   =   G e t I n v e n t o r y ( ) ; 	  
 	 	  
 	 	  
 	 	 i f ( i n v e . I t e m H a s T a g ( d a t a . i d s [ 0 ] ,   ' k e y ' ) )  
 	 	 {  
 	 	 	 k e y N a m e   =   i n v e . G e t I t e m N a m e ( d a t a . i d s [ 0 ] ) ;  
 	 	 	 f o r ( i = n e a r b y L o c k e d C o n t a i n e r s N o K e y . S i z e ( ) - 1 ;   i > = 0 ;   i - = 1 )  
 	 	 	 {  
 	 	 	 	 i f ( n e a r b y L o c k e d C o n t a i n e r s N o K e y [ i ] . G e t K e y N a m e ( )   = =   k e y N a m e   & &   n e a r b y L o c k e d C o n t a i n e r s N o K e y [ i ] . I s E n a b l e d ( ) )  
 	 	 	 	 {  
 	 	 	 	 	 n e a r b y L o c k e d C o n t a i n e r s N o K e y [ i ] . U p d a t e C o m p o n e n t s ( " U n l o c k " ) ;  
 	 	 	 	 	 n e a r b y L o c k e d C o n t a i n e r s N o K e y . R e m o v e ( n e a r b y L o c k e d C o n t a i n e r s N o K e y [ i ] ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
  
 	 	  
 	 	 i f ( i n v e . I s I t e m A l c h e m y I t e m ( d a t a . i d s [ 0 ] ) )  
 	 	 {  
 	 	 	 U p g r a d e A l c h e m y I t e m ( d a t a . i d s [ 0 ] ,   C a n U s e S k i l l ( S _ P e r k _ 0 8 ) ) ; 	 	 	  
 	 	 }  
 	 	  
 	 	 i f ( i n v e . I t e m H a s T a g ( d a t a . i d s [ 0 ] ,   t h e G a m e . p a r a m s . T A G _ O F I R _ S E T ) )  
 	 	 	 C h e c k O f i r S e t A c h i e v e m e n t ( ) ;  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   C h e c k O f i r S e t A c h i e v e m e n t ( )  
 	 {  
 	 	 v a r   h a s A r m o r ,   h a s B o o t s ,   h a s G l o v e s ,   h a s P a n t s ,   h a s S w o r d ,   h a s S a d d l e ,   h a s B a g ,   h a s B l i n d e r s   :   b o o l ;  
 	 	 v a r   d o n e I t e m s   :   i n t ;  
 	 	  
 	 	  
 	 	 C h e c k O f i r I t e m s ( G e t I n v e n t o r y ( ) ,   h a s A r m o r ,   h a s B o o t s ,   h a s G l o v e s ,   h a s P a n t s ,   h a s S w o r d ,   h a s S a d d l e ,   h a s B a g ,   h a s B l i n d e r s ) ;  
  
 	 	  
 	 	 C h e c k O f i r I t e m s ( G e t W i t c h e r P l a y e r ( ) . G e t H o r s e M a n a g e r ( ) . G e t I n v e n t o r y C o m p o n e n t ( ) ,   h a s A r m o r ,   h a s B o o t s ,   h a s G l o v e s ,   h a s P a n t s ,   h a s S w o r d ,   h a s S a d d l e ,   h a s B a g ,   h a s B l i n d e r s ) ;  
 	 	  
 	 	  
 	 	 d o n e I t e m s   =   0 ;  
 	 	 i f ( h a s A r m o r )  
 	 	 	 d o n e I t e m s   + =   1 ;  
 	 	 i f ( h a s B o o t s )  
 	 	 	 d o n e I t e m s   + =   1 ;  
 	 	 i f ( h a s G l o v e s )  
 	 	 	 d o n e I t e m s   + =   1 ;  
 	 	 i f ( h a s P a n t s )  
 	 	 	 d o n e I t e m s   + =   1 ;  
 	 	 i f ( h a s S w o r d )  
 	 	 	 d o n e I t e m s   + =   1 ;  
 	 	 i f ( h a s S a d d l e )  
 	 	 	 d o n e I t e m s   + =   1 ;  
 	 	 i f ( h a s B a g )  
 	 	 	 d o n e I t e m s   + =   1 ;  
 	 	 i f ( h a s B l i n d e r s )  
 	 	 	 d o n e I t e m s   + =   1 ;  
 	 	  
 	 	 i f ( d o n e I t e m s   > =   8 )  
 	 	 {  
 	 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . A d d A c h i e v e m e n t ( E A _ L a t e s t F a s h i o n ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . N o t i c e A c h i e v e m e n t P r o g r e s s ( E A _ L a t e s t F a s h i o n ,   d o n e I t e m s ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   C h e c k O f i r I t e m s ( i n v   :   C I n v e n t o r y C o m p o n e n t ,   o u t   h a s A r m o r   :   b o o l ,   o u t   h a s B o o t s   :   b o o l ,   o u t   h a s G l o v e s   :   b o o l ,   o u t   h a s P a n t s   :   b o o l ,   o u t   h a s S w o r d   :   b o o l ,   o u t   h a s S a d d l e   :   b o o l ,   o u t   h a s B a g   :   b o o l ,   o u t   h a s B l i n d e r s   :   b o o l )  
 	 {  
 	 	 v a r   o f i r s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 o f i r s   =   i n v . G e t I t e m s B y T a g ( t h e G a m e . p a r a m s . T A G _ O F I R _ S E T ) ;  
 	 	 f o r ( i = 0 ;   i < o f i r s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 i f ( i n v . I s I t e m C h e s t A r m o r ( o f i r s [ i ] ) )  
 	 	 	 {  
 	 	 	 	 h a s A r m o r   =   t r u e ;  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( i n v . I s I t e m B o o t s ( o f i r s [ i ] ) )  
 	 	 	 {  
 	 	 	 	 h a s B o o t s   =   t r u e ;  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( i n v . I s I t e m G l o v e s ( o f i r s [ i ] ) )  
 	 	 	 {  
 	 	 	 	 h a s G l o v e s   =   t r u e ;  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( i n v . I s I t e m P a n t s ( o f i r s [ i ] ) )  
 	 	 	 {  
 	 	 	 	 h a s P a n t s   =   t r u e ;  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( i n v . I s I t e m S t e e l S w o r d U s a b l e B y P l a y e r ( o f i r s [ i ] ) )  
 	 	 	 {  
 	 	 	 	 h a s S w o r d   =   t r u e ;  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( i n v . I s I t e m S i l v e r S w o r d U s a b l e B y P l a y e r ( o f i r s [ i ] ) )  
 	 	 	 {  
 	 	 	 	 h a s S w o r d   =   t r u e ;  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( i n v . I s I t e m S a d d l e ( o f i r s [ i ] ) )  
 	 	 	 {  
 	 	 	 	 h a s S a d d l e   =   t r u e ;  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( i n v . I s I t e m H o r s e B a g ( o f i r s [ i ] ) )  
 	 	 	 {  
 	 	 	 	 h a s B a g   =   t r u e ;  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( i n v . I s I t e m B l i n d e r s ( o f i r s [ i ] ) )  
 	 	 	 {  
 	 	 	 	 h a s B l i n d e r s   =   t r u e ;  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   C h a n g e A l c h e m y I t e m s A b i l i t i e s ( u p g r a d e   :   b o o l )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   d m   :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ;  
 	 	 v a r   i t e m s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	  
 	 	 i n v . G e t A l l I t e m s ( i t e m s ) ;  
 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	  
 	 	 f o r ( i = 0 ;   i < i t e m s . S i z e ( ) ;   i + = 1 )  
 	 	 	 i f ( i n v . I s I t e m A l c h e m y I t e m ( i t e m s [ i ] ) )  
 	 	 	 	 U p g r a d e A l c h e m y I t e m ( i t e m s [ i ] ,   u p g r a d e ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   U p g r a d e A l c h e m y I t e m ( i t e m I D   :   S I t e m U n i q u e I d ,   u p g r a d e   :   b o o l )  
 	 {  
 	 	 v a r   j ,   c u r r L e v e l ,   o t h e r L e v e l   :   i n t ;  
 	 	 v a r   d m   :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ;  
 	 	 v a r   a b s ,   c u r r A b i l i t i e s ,   o t h e r A b i l i t i e s   :   a r r a y < n a m e > ;  
 	 	 v a r   m i n ,   m a x   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	  
 	 	 i f ( ! i n v . I s I t e m A l c h e m y I t e m ( i t e m I D ) )  
 	 	 	 r e t u r n ;  
 	 	 	  
 	 	  
 	 	 c u r r L e v e l   =   ( i n t ) C a l c u l a t e A t t r i b u t e V a l u e ( i n v . G e t I t e m A t t r i b u t e V a l u e ( i t e m I D ,   ' l e v e l ' ) ) ;  
 	 	  
 	 	  
 	 	 i f ( c u r r L e v e l   = =   3   | |   c u r r L e v e l   = =   2   | |   c u r r L e v e l   <   2   | |   c u r r L e v e l   >   3 )  
 	 	 	 r e t u r n ;  
 	  
 	 	  
 	 	 c u r r A b i l i t i e s   =   i n v . G e t I t e m A b i l i t i e s W i t h A t t r i b u t e ( i t e m I D ,   ' l e v e l ' ,   c u r r L e v e l ) ;  
 	 	 	 	 	  
 	 	  
 	 	 i n v . G e t I t e m C o n t a i n e d A b i l i t i e s ( i t e m I D ,   a b s ) ;  
 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	 f o r ( j = 0 ;   j < a b s . S i z e ( ) ;   j + = 1 )  
 	 	 {  
 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e ( a b s [ j ] ,   ' l e v e l ' ,   m i n ,   m a x ) ;  
 	 	 	 o t h e r L e v e l   =   ( i n t ) C a l c u l a t e A t t r i b u t e V a l u e ( G e t A t t r i b u t e R a n d o m i z e d V a l u e ( m i n ,   m a x ) ) ;  
 	 	 	 i f (   ( o t h e r L e v e l   = =   2   | |   o t h e r L e v e l   = =   3 )   & &   o t h e r L e v e l   ! =   c u r r L e v e l )  
 	 	 	 	 o t h e r A b i l i t i e s . P u s h B a c k ( a b s [ j ] ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( o t h e r A b i l i t i e s . S i z e ( )   = =   0 )  
 	 	 {  
 	 	 	 L o g A s s e r t ( f a l s e ,   " C R 4 P l a y e r . U p g r a d e A l c h e m y I t e m :   c a n n o t   f i n d   a b i l i t y   t o   s w a p   t o   f r o m   < < "   +   c u r r A b i l i t i e s [ 0 ]   +   " > >   o n   i t e m   < < "   +   i n v . G e t I t e m N a m e ( i t e m I D )   +   " > >   ! ! ! " ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 f o r ( j = 0 ;   j < c u r r A b i l i t i e s . S i z e ( ) ;   j + = 1 )  
 	 	 	 	 i n v . R e m o v e I t e m B a s e A b i l i t y ( i t e m I D ,   c u r r A b i l i t i e s [ j ] ) ;  
 	 	 	 	  
 	 	 	 f o r ( j = 0 ;   j < o t h e r A b i l i t i e s . S i z e ( ) ;   j + = 1 )  
 	 	 	 	 i n v . A d d I t e m B a s e A b i l i t y ( i t e m I D ,   o t h e r A b i l i t i e s [ j ] ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
  
 	 p u b l i c   f u n c t i o n   M o v A d j R o t a t e T o T a r g e t (   t i c k e t   :   S M o v e m e n t A d j u s t m e n t R e q u e s t T i c k e t   )  
 	 {  
 	 	 v a r   m o v e m e n t A d j u s t o r   :   C M o v e m e n t A d j u s t o r   =   G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 v a r   l o c a l O r i e n t a t i o n T a r g e t   :   E O r i e n t a t i o n T a r g e t   =   G e t O r i e n t a t i o n T a r g e t ( ) ;  
  
 	 	 i f   (   l o c a l O r i e n t a t i o n T a r g e t   = =   O T _ C u s t o m H e a d i n g   )  
 	 	 {  
 	 	 	 m o v e m e n t A d j u s t o r . R o t a t e T o (   t i c k e t ,   G e t O r i e n t a t i o n T a r g e t C u s t o m H e a d i n g ( )   ) ; 	 	 	 	 	  
 	 	 }  
 	 	 e l s e   i f   (   l o c a l O r i e n t a t i o n T a r g e t   = =   O T _ A c t o r   )  
 	 	 {  
 	 	 	   i f   (   s l i d e T a r g e t   )  
 	 	 	 	 m o v e m e n t A d j u s t o r . R o t a t e T o w a r d s (   t i c k e t ,   s l i d e T a r g e t   ) ;  
 	 	 	 e l s e   i f   (   l A x i s R e l e a s e d A f t e r C o u n t e r   )  
 	 	 	 	 m o v e m e n t A d j u s t o r . R o t a t e T o (   t i c k e t ,   G e t H e a d i n g ( )   ) ;  
 	 	 	 e l s e  
 	 	 	 	 m o v e m e n t A d j u s t o r . R o t a t e T o (   t i c k e t ,   G e t C o m b a t A c t i o n H e a d i n g ( )   ) ;  
 	 	 }  
 	 	 e l s e   i f   (   l o c a l O r i e n t a t i o n T a r g e t   = =   O T _ P l a y e r   )  
 	 	 {  
 	 	 	 i f   (   b L A x i s R e l e a s e d   )  
 	 	 	 	 m o v e m e n t A d j u s t o r . R o t a t e T o (   t i c k e t ,   G e t H e a d i n g ( )   ) ;  
 	 	 	 e l s e    
 	 	 	 	 m o v e m e n t A d j u s t o r . R o t a t e T o (   t i c k e t ,   r a w P l a y e r H e a d i n g   ) ;  
 	 	 }  
 	 	 e l s e   i f   (   l o c a l O r i e n t a t i o n T a r g e t   = =   O T _ C a m e r a O f f s e t   )  
 	 	 {  
 	 	 	  
 	 	 	 m o v e m e n t A d j u s t o r . R o t a t e T o (   t i c k e t ,   V e c H e a d i n g (   t h e C a m e r a . G e t C a m e r a D i r e c t i o n ( )   )   ) ;  
 	 	 } 	 	  
 	 	 e l s e  
 	 	 {  
 	 	 	  
 	 	 	 m o v e m e n t A d j u s t o r . R o t a t e T o (   t i c k e t ,   r a w C a m e r a H e a d i n g   ) ;  
 	 	 }  
 	 	  
 	 }  
  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   U p d a t e L o o k A t T a r g e t ( )  
 	 {  
 	 	 v a r   l o c a l O r i e n t a t i o n T a r g e t 	 :   E O r i e n t a t i o n T a r g e t ;  
 	 	 v a r   p l a y e r R o t 	 	 	 :   E u l e r A n g l e s ;  
 	 	 v a r   l o o k A t A c t i v e 	 	 :   F l o a t ;  
 	 	 v a r   l o o k A t T a r g e t 	 	 :   V e c t o r ;  
 	 	 v a r   h e a d B o n e I d x 	 	 	 :   i n t ;  
 	 	 v a r   t e m p C o m p o n e n t 	 	 :   C D r a w a b l e C o m p o n e n t ;  
 	 	 v a r   e n t i t y H e i g h t 	 	 :   f l o a t ;  
 	 	 v a r   u s e T o r s o B o n e 	 	 :   b o o l ;  
 	 	  
 	 	 v a r   a n g l e s 	 	 	 	 :   E u l e r A n g l e s ;  
 	 	 v a r   d i r   	 	 	 	 :   V e c t o r ;  
 	 	 v a r   c a m Z   	 	 	 	 :   f l o a t ;  
 	 	  
 	 	 v a r   t a r g e t 	 	 	 	 :   C A c t o r ;  
 	 	  
 	 	 l o o k A t A c t i v e   =   0 . 0 f ;  
 	  
 	 	 l o c a l O r i e n t a t i o n T a r g e t   =   G e t O r i e n t a t i o n T a r g e t ( ) ;  
 	 	  
 	 	 i f   (   l o c a l O r i e n t a t i o n T a r g e t   = =   O T _ P l a y e r   | |   l o c a l O r i e n t a t i o n T a r g e t   = =   O T _ C u s t o m H e a d i n g   )  
 	 	 {  
 	 	 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 i f   (   l o c a l O r i e n t a t i o n T a r g e t   = =   O T _ P l a y e r     )  
 	 	 	 	 a n g l e s   =   V e c T o R o t a t i o n (   G e t H e a d i n g V e c t o r ( )   ) ;  
 	 	 	 e l s e   i f   (   c u s t o m O r i e n t a t i o n I n f o S t a c k . S i z e ( )   >   0   )  
 	 	 	 	 a n g l e s   =   V e c T o R o t a t i o n (   V e c F r o m H e a d i n g (   c u s t o m O r i e n t a t i o n I n f o S t a c k [   c u s t o m O r i e n t a t i o n I n f o S t a c k . S i z e ( )   -   1   ] . c u s t o m H e a d i n g   )   ) ;  
 	 	 	 e l s e  
 	 	 	 	 a n g l e s   =   V e c T o R o t a t i o n (   G e t H e a d i n g V e c t o r ( )   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 d i r   =   R o t F o r w a r d (   a n g l e s   ) ;  
 	 	 	 l o o k A t T a r g e t   =   d i r   *   3 0 . f   +   t h i s . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 l o o k A t T a r g e t . Z   + =   1 . 6 f ;  
 	 	 	 l o o k A t A c t i v e   =   1 . 0 f ; 	 	  
 	 	 }  
 	 	 e l s e   i f   (   l o c a l O r i e n t a t i o n T a r g e t   = =   O T _ C a m e r a   )  
 	 	 {  
 	 	 	 h e a d B o n e I d x   =   G e t H e a d B o n e I n d e x ( ) ;  
 	 	 	 i f   (   h e a d B o n e I d x   > =   0   )  
 	 	 	 {  
 	 	 	 	 l o o k A t T a r g e t   =   M a t r i x G e t T r a n s l a t i o n (   G e t B o n e W o r l d M a t r i x B y I n d e x (   h e a d B o n e I d x   )   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 l o o k A t T a r g e t   =   G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 	 l o o k A t T a r g e t . Z   + =   1 . 6 f ;    
 	 	 	 }  
 	 	 	 l o o k A t T a r g e t   + =   t h e C a m e r a . G e t C a m e r a D i r e c t i o n ( )   *   1 0 0 . f ;  
 	 	 	 l o o k A t A c t i v e   =   1 . 0 f ;  
 	 	 }  
 	 	 e l s e   i f   (   l o c a l O r i e n t a t i o n T a r g e t   = =   O T _ C a m e r a O f f s e t   )  
 	 	 {  
 	 	 	  
 	 	 	 	 	  
 	 	 	 d i r   =   t h e C a m e r a . G e t C a m e r a D i r e c t i o n ( ) ;  
 	 	 	 a n g l e s   =   V e c T o R o t a t i o n (   d i r   ) ;  
 	 	 	 a n g l e s . P i t c h   =   - a n g l e s . P i t c h   +   o T C a m e r a P i t c h O f f s e t ;  
 	 	 	 a n g l e s . Y a w   - =   o T C a m e r a O f f s e t ;  
 	 	 	 d i r   =   R o t F o r w a r d (   a n g l e s   ) ;  
 	  
 	 	 	 l o o k A t T a r g e t   =   d i r   *   3 0 . f   +   t h i s . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 l o o k A t T a r g e t . Z   + =   1 . 6 f ;  
 	 	 	 l o o k A t A c t i v e   =   1 . 0 f ;  
 	 	 } 	 	  
 	 	 e l s e   i f   (   l o c a l O r i e n t a t i o n T a r g e t   = =   O T _ A c t o r   )  
 	 	 {  
 	 	 	 i f   (   I s I n C o m b a t A c t i o n ( )   )  
 	 	 	 {    
 	 	 	 	 i f   (   (   (   (   W 3 P l a y e r W i t c h e r   ) t h i s   ) . G e t C u r r e n t l y C a s t S i g n ( )   ! =   S T _ N o n e   & &   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ C a s t S i g n   )  
 	 	 	 	 	 | |   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ I t e m T h r o w   )  
 	 	 	 	 	  
 	 	 	 	 u s e T o r s o B o n e   =   t r u e ;  
 	 	 	 }  
 	 	  
 	 	 	 i f   (   r a n g e d W e a p o n   & &   r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '   )  
 	 	 	 	 u s e T o r s o B o n e   =   t r u e ;  
 	 	  
 	 	 	 i f   (   t e m p L o o k A t T a r g e t   & &   ( C A c t o r ) ( t e m p L o o k A t T a r g e t )   )  
 	 	 	 {  
 	 	 	 	 l o o k A t T a r g e t   =   P r o c e s s L o o k A t T a r g e t P o s i t i o n (   t e m p L o o k A t T a r g e t ,   u s e T o r s o B o n e   ) ;  
 	 	 	 	 l o o k A t A c t i v e   =   1 . 0 f ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   G e t D i s p l a y T a r g e t ( )   & &   I s D i s p l a y T a r g e t T a r g e t a b l e ( )   )  
 	 	 	 {  
 	 	 	 	 l o o k A t T a r g e t   =   P r o c e s s L o o k A t T a r g e t P o s i t i o n (   G e t D i s p l a y T a r g e t ( ) ,   u s e T o r s o B o n e   ) ;  
 	 	 	 	 l o o k A t A c t i v e   =   1 . 0 f ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f   (   s l i d e T a r g e t   )  
 	 	 	 	 {  
 	 	 	 	 	 l o o k A t T a r g e t   =   P r o c e s s L o o k A t T a r g e t P o s i t i o n (   s l i d e T a r g e t ,   u s e T o r s o B o n e   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 t a r g e t   =   G e t T a r g e t ( ) ;  
 	 	 	 	 	 i f   (   t a r g e t   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 l o o k A t T a r g e t   =   P r o c e s s L o o k A t T a r g e t P o s i t i o n (   t a r g e t ,   u s e T o r s o B o n e   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 l o o k A t A c t i v e   =   1 . 0 f ; 	  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   ! s l i d e T a r g e t   & &   ! I s U s i n g V e h i c l e ( )   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 p l a y e r R o t   =   G e t W o r l d R o t a t i o n ( ) ;  
 	 	 	 	 l o o k A t T a r g e t   =   G e t W o r l d P o s i t i o n ( )   +   V e c F r o m H e a d i n g (   p l a y e r R o t . Y a w   )   *   1 0 0 . 0 f ;  
 	 	 	 	 l o o k A t A c t i v e   =   0 . 0 f ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   u s e T o r s o B o n e   )  
 	 	 	 	 l o o k A t T a r g e t . Z   + =   0 . 2 f ; 	  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 G e t V i s u a l D e b u g ( ) . A d d S p h e r e ( ' l o o k A t T a r g e t ' ,   1 . f ,   l o o k A t T a r g e t ,   t r u e ,   C o l o r ( 2 5 5 , 0 , 0 ) ,   3 . 0 f   ) ;  
 	 	 S e t L o o k A t P o s i t i o n (   l o o k A t T a r g e t   ) ;  
 	 	 U p d a t e L o o k A t V a r i a b l e s (   l o o k A t A c t i v e ,   l o o k A t T a r g e t   ) ;  
 	 }  
  
 	 p r i v a t e   f u n c t i o n   P r o c e s s L o o k A t T a r g e t P o s i t i o n (   e n t   :   C G a m e p l a y E n t i t y ,   u s e T o r s o B o n e   :   b o o l   )   :   V e c t o r  
 	 {  
 	 	 v a r   b o n e I d x   	 	 :   i n t ;  
 	 	 v a r   a c t o r 	 	 	 :   C A c t o r ;  
 	 	 v a r   l o o k A t T a r g e t 	 :   V e c t o r ;  
 	 	 v a r   t e m p C o m p o n e n t   	 :   C D r a w a b l e C o m p o n e n t ;  
 	 	 v a r   b o x 	 	 	 	 :   B o x ;  
 	 	 v a r   e n t i t y H e i g h t 	 :   f l o a t ;  
 	 	 v a r   e n t i t y P o s 	 	 :   V e c t o r ;  
 	 	 v a r   p r e d i c t e d P o s 	 :   V e c t o r ;  
 	 	 v a r   z 	 	 	 	 :   f l o a t ;  
 	 	 v a r   e n t M a t 	 	 	 :   M a t r i x ;  
 	  
 	 	 a c t o r   =   ( C A c t o r ) ( e n t ) ;  
 	 	 e n t i t y P o s   =   e n t . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 l o o k A t T a r g e t   =   e n t i t y P o s ;  
 	 	  
 	 	 i f   (   a c t o r   )  
 	 	 {  
 	 	 	 i f   (   u s e T o r s o B o n e   )  
 	 	 	 	 b o n e I d x   =   a c t o r . G e t T o r s o B o n e I n d e x ( ) ;  
 	 	 	 e l s e 	 	 	 	  
 	 	 	 	 b o n e I d x   =   a c t o r . G e t H e a d B o n e I n d e x ( ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 	 b o n e I d x   =   - 1 ;  
 	  
 	 	 i f   (   ! (   e n t . a i m V e c t o r . X   = =   0   & &   e n t . a i m V e c t o r . Y   = =   0   & &   e n t . a i m V e c t o r . Z   = =   0   )   )  
 	 	 {  
 	 	 	 e n t M a t   =   e n t . G e t L o c a l T o W o r l d ( ) ;  
 	 	 	 l o o k A t T a r g e t   =   V e c T r a n s f o r m (   e n t M a t ,   e n t . a i m V e c t o r   ) ;  
 	 	 } 	  
 	 	 e l s e   i f   (   b o n e I d x   > =   0   )  
 	 	 {  
 	 	 	 l o o k A t T a r g e t   =   M a t r i x G e t T r a n s l a t i o n (   e n t . G e t B o n e W o r l d M a t r i x B y I n d e x (   b o n e I d x   )   ) ; 	  
 	 	 } 	  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   (   a c t o r   )  
 	 	 	 	 l o o k A t T a r g e t . Z   + =   (   ( ( C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ) a c t o r . G e t M o v i n g A g e n t C o m p o n e n t ( ) ) . G e t C a p s u l e H e i g h t ( )   *   0 . 5   ) ;    
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t e m p C o m p o n e n t   =   ( C D r a w a b l e C o m p o n e n t ) (   e n t . G e t C o m p o n e n t B y C l a s s N a m e ( ' C D r a w a b l e C o m p o n e n t ' )   ) ;  
 	 	 	 	 i f   (   t e m p C o m p o n e n t . G e t O b j e c t B o u n d i n g V o l u m e (   b o x   )   )  
 	 	 	 	 {  
 	 	 	 	 	 e n t i t y H e i g h t   =   b o x . M a x . Z   -   b o x . M i n . Z ;  
 	 	 	 	 	 l o o k A t T a r g e t   =   l o o k A t T a r g e t   +   V e c t o r ( 0 , 0 , e n t i t y H e i g h t / 2 ) ;  
 	 	 	 	 } 	 	  
 	 	 	 }  
 	 	 }  
 	 	 z   =   ( ( C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ) a c t o r . G e t M o v i n g A g e n t C o m p o n e n t ( ) ) . G e t C a p s u l e H e i g h t ( ) ;  
 	 	 i f   (   a c t o r   )  
 	 	 {  
 	 	 	 i f   (   P r e d i c t L o o k A t T a r g e t P o s i t i o n (   a c t o r ,   l o o k A t T a r g e t . Z   -   e n t i t y P o s . Z ,   p r e d i c t e d P o s   )   )  
 	 	 	 	 l o o k A t T a r g e t   =   p r e d i c t e d P o s ;  
 	 	 }  
 	 	 	  
 	 	 r e t u r n   l o o k A t T a r g e t ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   P r e d i c t L o o k A t T a r g e t P o s i t i o n (   t a r g e t A c t o r   :   C A c t o r ,   z O f f S e t   :   f l o a t ,   o u t   p r e d i c t e d P o s   :   V e c t o r   )   :   b o o l  
 	 {  
 	 	 v a r   v i r t u a l P o s 	 	 :   V e c t o r ;  
 	 	 v a r   i   	 	 	 	 :   i n t ;  
 	 	 v a r   d i s t 	 	 	 :   f l o a t ;  
 	 	 v a r   d e l t a T i m e 	 	 :   f l o a t ;  
 	 	 v a r   p r o j S p e e d 	 	 :   f l o a t ;  
 	 	 v a r   p r o j S p e e d I n t 	 :   V e c t o r ;  
 	 	 v a r   p r o j A n g l e 	 	 :   f l o a t ; 	  
 	 	  
 	 	 v a r   e 3 H a c k 	 	 	 	 :   b o o l ;  
 	 	 v a r   c u r r e n t T i m e I n C u r v e   :   f l o a t ;  
 	 	 e 3 H a c k   =   f a l s e ; 	 	  
 	 	  
 	 	 i f   (   r a n g e d W e a p o n  
 	 	 	 & &   r a n g e d W e a p o n . G e t D e p l o y e d E n t i t y ( )  
 	 	 	 & &   (   r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n A i m '   | |   r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n S h o o t '   )   )  
 	 	 { 	  
 	 	 	 p r o j S p e e d   =   r a n g e d W e a p o n . G e t D e p l o y e d E n t i t y ( ) . p r o j S p e e d ;  
  
 	 	 	 v i r t u a l P o s   =   t a r g e t A c t o r . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	  
 	 	 	 i f   (   e 3 H a c k   & &   t a r g e t A c t o r . H a s T a g (   ' e 3 _ g r i f f i n '   )   )  
 	 	 	 {  
 	 	 	 	 f o r   (   i   =   0 ;   i   <   1 0 ;   i   + =   1   )  
 	 	 	 	 {  
 	 	 	 	 	 d i s t   =   V e c D i s t a n c e (   r a n g e d W e a p o n . G e t D e p l o y e d E n t i t y ( ) . G e t W o r l d P o s i t i o n ( ) ,   v i r t u a l P o s   ) ;  
 	 	 	 	 	 d e l t a T i m e   =   d i s t / p r o j S p e e d ;  
 	 	 	 	 	 v i r t u a l P o s   =   t a r g e t A c t o r . P r e d i c t W o r l d P o s i t i o n (   d e l t a T i m e   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 	 r e t u r n   f a l s e ;  
  
 	 	 	 v i r t u a l P o s . Z   + =   z O f f S e t ;  
 	 	 	 p r e d i c t e d P o s   =   v i r t u a l P o s ;  
 	 	 	 G e t V i s u a l D e b u g ( ) . A d d S p h e r e ( ' C r o s s b o w P r e d i c t e d P o s ' ,   1 . 0 f ,   v i r t u a l P o s   ,   t r u e ,   C o l o r ( 2 5 5 , 5 0 , 5 0 ) ,   5 . 0 f   ) ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t L o o k A t P o s i t i o n (   v e c   :   V e c t o r   )  
 	 {  
 	 	 l o o k A t P o s i t i o n   =   v e c ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   G e t L o o k A t P o s i t i o n ( )   :   V e c t o r  
 	 {  
 	 	 r e t u r n   l o o k A t P o s i t i o n ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 e v e n t   O n B l o c k i n g S c e n e E n d e d (   o p t i o n a l   o u t p u t   :   C S t o r y S c e n e O u t p u t )  
 	 {  
 	 	  
 	 	 S e t I m m o r t a l i t y M o d e (   A I M _ N o n e ,   A I C _ S y n c e d A n i m   ) ;  
 	 	 s u p e r . O n B l o c k i n g S c e n e E n d e d ( o u t p u t ) ;  
 	 }  
  
 	  
 	 e v e n t   O n D i s m o u n t C S H o l s t e r W e a p o n ( )  
 	 {  
 	 	 v a r   s t e e l ,   s i l v e r   :   S I t e m U n i q u e I d ;  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	 v a r   q s t   :   C R 4 H u d M o d u l e Q u e s t s ; 	 	  
 	 	 v a r   m m   :   C R 4 H u d M o d u l e M i n i m a p 2 ;  
 	 	  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 i f ( h u d )  
 	 	 {  
 	 	 	 m m   =   ( C R 4 H u d M o d u l e M i n i m a p 2 ) h u d . G e t H u d M o d u l e ( " M i n i m a p 2 M o d u l e " ) ;  
 	 	 	 q s t   =   ( C R 4 H u d M o d u l e Q u e s t s ) h u d . G e t H u d M o d u l e ( " Q u e s t s M o d u l e " ) ;  
 	 	 	  
 	 	 	 i f ( m m )  
 	 	 	 	 m m . S e t I s I n D l g ( t r u e ) ;  
 	 	 	 	  
 	 	 	 i f ( q s t )  
 	 	 	 	 q s t . S e t I s I n D l g ( t r u e ) ; 	  
 	 	 }  
 	  
 	 	 i f (   i n v . G e t I t e m E q u i p p e d O n S l o t ( E E S _ S i l v e r S w o r d ,   s i l v e r )   & &   i n v . I s I t e m H e l d ( s i l v e r ) )  
 	 	 	 H o l s t e r I t e m s ( t r u e ,   s i l v e r ) ;  
 	 	 i f (   i n v . G e t I t e m E q u i p p e d O n S l o t ( E E S _ S t e e l S w o r d ,   s t e e l )   & &   i n v . I s I t e m H e l d ( s t e e l ) )  
 	 	 	 H o l s t e r I t e m s ( t r u e ,   s t e e l ) ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	 f u n c t i o n   G e t C u r r e n t M e l e e W e a p o n N a m e ( )   :   n a m e  
 	 {  
 	 	 r e t u r n   w e a p o n H o l s t e r . G e t C u r r e n t M e l e e W e a p o n N a m e ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t C u r r e n t M e l e e W e a p o n T y p e ( )   :   E P l a y e r W e a p o n  
 	 {  
 	 	 r e t u r n   w e a p o n H o l s t e r . G e t C u r r e n t M e l e e W e a p o n ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   O n M e l e e F o r c e H o l s t e r ( i g n o r e A c t i o n L o c k   :   b o o l )  
 	 {  
 	 	 w e a p o n H o l s t e r . H o l s t e r W e a p o n ( i g n o r e A c t i o n L o c k ,   t r u e ) ;  
 	 }  
 	  
 	 e v e n t   O n F o r c e d H o l s t e r W e a p o n ( )  
 	 {  
 	 	 w e a p o n H o l s t e r . O n F o r c e d H o l s t e r W e a p o n ( ) ;  
 	 }  
 	  
 	 e v e n t   O n E q u i p p e d I t e m (   c a t e g o r y   :   n a m e ,   s l o t N a m e   :   n a m e   )  
 	 {  
 	 	 v a r   w e a p o n T y p e   :   E P l a y e r W e a p o n ;  
 	 	  
 	 	 i f   (   s l o t N a m e   = =   ' r _ w e a p o n '   )  
 	 	 {  
 	 	 	 s w i t c h   (   c a t e g o r y   )  
 	 	 	 {  
 	 	 	 	 c a s e   ' N o n e '   :  
 	 	 	 	 	 w e a p o n T y p e   =   P W _ N o n e ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 c a s e   ' f i s t '   :  
 	 	 	 	 	 w e a p o n T y p e   =   P W _ F i s t s ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 c a s e   ' s t e e l s w o r d '   :  
 	 	 	 	 	 w e a p o n T y p e   =   P W _ S t e e l ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 c a s e   ' s i l v e r s w o r d '   :  
 	 	 	 	 	 w e a p o n T y p e   =   P W _ S i l v e r ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 d e f a u l t   :  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 	  
 	 	 	 w e a p o n H o l s t e r . O n E q u i p p e d M e l e e W e a p o n (   w e a p o n T y p e   ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   v a r   i s H o l d i n g D e a d l y S w o r d   :   b o o l ;  
 	 p u b l i c   f u n c t i o n   P r o c e s s I s H o l d i n g D e a d l y S w o r d ( )    
 	 {  
 	 	 i s H o l d i n g D e a d l y S w o r d   =   I s D e a d l y S w o r d H e l d ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s H o l d i n g D e a d l y S w o r d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s H o l d i n g D e a d l y S w o r d ;  
 	 }  
 	  
 	 e v e n t   O n H o l s t e r e d I t e m (   c a t e g o r y   :     n a m e ,   s l o t N a m e   :   n a m e   )  
 	 {  
 	 	 v a r   w e a p o n T y p e   :   E P l a y e r W e a p o n ;  
 	 	  
 	 	  
 	 	 i f   (   s l o t N a m e   = =   ' r _ w e a p o n '   & &   ( c a t e g o r y   = =   ' s t e e l s w o r d '   | |   c a t e g o r y   = =   ' s i l v e r s w o r d ' )   )  
 	 	 {  
 	 	 	 i f (   c a t e g o r y   = =   ' s i l v e r s w o r d '   )  
 	 	 	 {  
 	 	 	 	 M a n a g e A e r o n d i g h t B u f f (   f a l s e   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 G e t B u f f (   E E T _ L y n x S e t B o n u s   ) . P a u s e (   ' d r a w i n g   w e a p o n '   ) ;  
 	 	 	  
 	 	 	 P a u s e O i l B u f f s (   c a t e g o r y   = =   ' s t e e l s w o r d '   ) ;  
 	 	 }  
 	 	  
 	 	 i f   (   s l o t N a m e   = =   ' r _ w e a p o n '   )  
 	 	 {  
 	 	 	 w e a p o n T y p e   =   w e a p o n H o l s t e r . G e t C u r r e n t M e l e e W e a p o n ( ) ;  
 	 	 	 s w i t c h   (   c a t e g o r y   )  
 	 	 	 {  
 	 	 	 	 c a s e   ' f i s t '   :  
 	 	 	 	 	 i f   (   w e a p o n T y p e   = =   P W _ F i s t s   )  
 	 	 	 	 	 	 w e a p o n H o l s t e r . O n E q u i p p e d M e l e e W e a p o n (   P W _ N o n e   ) ;  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 c a s e   ' s t e e l s w o r d '   :  
 	 	 	 	 	 i f   (   w e a p o n T y p e   = =   P W _ S t e e l   )  
 	 	 	 	 	 	 w e a p o n H o l s t e r . O n E q u i p p e d M e l e e W e a p o n (   P W _ N o n e   ) ;  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 c a s e   ' s i l v e r s w o r d '   :  
 	 	 	 	 	 i f   (   w e a p o n T y p e   = =   P W _ S i l v e r   )  
 	 	 	 	 	 	 w e a p o n H o l s t e r . O n E q u i p p e d M e l e e W e a p o n (   P W _ N o n e   ) ;  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 d e f a u l t   :  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n E q u i p M e l e e W e a p o n (   w e a p o n T y p e   :   E P l a y e r W e a p o n ,   i g n o r e A c t i o n L o c k   :   b o o l ,   o p t i o n a l   s h e a t h e I f A l r e a d y E q u i p p e d   :   b o o l   )  
 	 { 	  
 	 	 R e m o v e T i m e r (   ' D e l a y e d S h e a t h S w o r d '   ) ;  
 	 	 	 	  
 	 	 w e a p o n H o l s t e r . O n E q u i p M e l e e W e a p o n (   w e a p o n T y p e ,   i g n o r e A c t i o n L o c k ,   s h e a t h e I f A l r e a d y E q u i p p e d   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 m _ R e f r e s h W e a p o n F X T y p e   =   t r u e ;  
 	 }  
 	  
 	 e v e n t   O n H o l s t e r L e f t H a n d I t e m ( )  
 	 {  
 	 	 w e a p o n H o l s t e r . O n H o l s t e r L e f t H a n d I t e m ( ) ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   D e l a y e d T r y T o R e e q u i p W e a p o n (   d t :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 v a r   w e a p o n T y p e   :   E P l a y e r W e a p o n ;  
 	 	  
 	 	 i f (   I s I n C o m b a t ( )   & &   G e t T a r g e t ( )   )  
 	 	 {  
 	 	 	 w e a p o n T y p e   =   G e t M o s t C o n v e n i e n t M e l e e W e a p o n (   G e t T a r g e t ( )   ) ;  
 	 	 	  
 	 	 	 i f   (   w e a p o n T y p e   = =   P W _ S t e e l   | |   w e a p o n T y p e   = =   P W _ S i l v e r   )  
 	 	 	 	 w e a p o n H o l s t e r . O n E q u i p M e l e e W e a p o n (   w e a p o n T y p e ,   f a l s e   ) ;  
 	 	 } 	  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   D e l a y e d S h e a t h S w o r d (   d t :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 i f   (   ! I s C o m b a t M u s i c E n a b l e d ( )   )  
 	 	 {  
 	 	 	 i f   (   I s I n C o m b a t A c t i o n ( )   | |   ! I s A c t i o n A l l o w e d (   E I A B _ D r a w W e a p o n   )   )  
 	 	 	 {  
 	 	 	 	 L o g C h a n n e l (   ' O n C o m b a t F i n i s h e d ' ,   " D e l a y e d S h e a t h S w o r d :   S h e a t h   p u s h e d   t o   b u f f e r "   ) ;    
 	 	 	 	 P u s h C o m b a t A c t i o n O n B u f f e r ( E B A T _ S h e a t h e _ S w o r d , B S _ P r e s s e d ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 L o g C h a n n e l (   ' O n C o m b a t F i n i s h e d ' ,   " D e l a y e d S h e a t h S w o r d :   S h e a t h   s u c c e s s f u l "   ) ;    
 	 	 	 	 O n E q u i p M e l e e W e a p o n (   P W _ N o n e ,   f a l s e   ) ;  
 	 	 	 }  
 	 	 } 	  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   S h o u l d A u t o S h e a t h S w o r d I n s t a n t l y ( )   :   b o o l  
 	 {  
 	 	 v a r   e n e m i e s   :   a r r a y < C A c t o r > ;  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 G e t E n e m i e s I n R a n g e (   e n e m i e s   ) ;  
 	 	  
 	 	 f o r   (   i   =   0 ;   i   <   e n e m i e s . S i z e ( ) ;   i   + =   1   )  
 	 	 {  
 	 	 	 i f   (   I s T h r e a t (   e n e m i e s [ i ]   )   & &    
 	 	 	 	 V e c D i s t a n c e (   e n e m i e s [ i ] . G e t W o r l d P o s i t i o n ( ) ,   t h i s . G e t W o r l d P o s i t i o n ( )   )   < =   f i n d M o v e T a r g e t D i s t   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   P r e p a r e T o A t t a c k (   o p t i o n a l   t a r g e t   :   C A c t o r ,   o p t i o n a l   a c t i o n   :   E B u f f e r A c t i o n T y p e   )  
 	 {  
 	 	 v a r     w e a p o n T y p e   	 	 :   E P l a y e r W e a p o n ;  
 	 	  
 	 	 i f (   I s I n A i r ( )   | |   ! G e t B I s C o m b a t A c t i o n A l l o w e d ( )   )  
 	 	 {  
 	 	 	 r e t u r n   ;  
 	 	 }  
 	 	  
 	 	 i f (   ! t a r g e t   )  
 	 	 {  
 	 	 	 t a r g e t 	 =   ( C A c t o r ) d i s p l a y T a r g e t ;  
 	 	 }  
 	 	 i f (   ! t a r g e t   & &   I s C o m b a t M u s i c E n a b l e d ( )   )  
 	 	 {  
 	 	 	 t a r g e t 	 =   m o v e T a r g e t ;  
 	 	 }  
 	 	 i f (   ! t a r g e t   )  
 	 	 {  
 	 	 	 i f   (   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' E x p l o r a t i o n '   )  
 	 	 	 {  
 	 	 	 	 S e t C o m b a t A c t i o n H e a d i n g (   P r o c e s s C o m b a t A c t i o n H e a d i n g (   a c t i o n   )   ) ;  
 	 	 	 	 t h e P l a y e r . C a n A t t a c k W h e n N o t I n C o m b a t (   a c t i o n ,   f a l s e ,   t a r g e t   ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 w e a p o n H o l s t e r . T r y T o P r e p a r e M e l e e W e a p o n T o A t t a c k ( ) ;  
 	 	  
 	 	  
 	 	 {  
 	 	 	 w e a p o n T y p e   =   G e t C u r r e n t M e l e e W e a p o n T y p e ( ) ;  
 	 	 	  
 	 	 	 i f   (   w e a p o n T y p e   = =   P W _ N o n e   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 w e a p o n T y p e   =   G e t M o s t C o n v e n i e n t M e l e e W e a p o n (   t a r g e t   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 i f (   ! O n S t a t e C a n G o T o C o m b a t ( )   )  
 	 	 	 {  
 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	 	  
 	 	 	 G o T o C o m b a t (   w e a p o n T y p e   ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   D i s p l a y C a n n o t A t t a c k M e s s a g e (   a c t o r   :   C A c t o r   )   :   b o o l  
 	 {  
 	 	 i f   (   a c t o r   & &   (   a c t o r . G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t N a m e ( )   = =   " c h i l d _ b a s e "   | |   ( ( C N e w N P C ) a c t o r ) . G e t N P C T y p e ( )   = =   E N G T _ Q u e s t   )   )  
 	 	 {  
 	 	 	 D i s p l a y H u d M e s s a g e ( G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ h u d _ m e s s a g e _ c a n t _ a t t a c k _ t h i s _ t a r g e t " ) ) ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 } 	  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t M o s t C o n v e n i e n t M e l e e W e a p o n (   t a r g e t T o D r a w A g a i n s t   :   C A c t o r ,   o p t i o n a l   i g n o r e A c t i o n L o c k   :   b o o l   )   :   E P l a y e r W e a p o n  
 	 {  
 	 	 r e t u r n   w e a p o n H o l s t e r . G e t M o s t C o n v e n i e n t M e l e e W e a p o n (   t a r g e t T o D r a w A g a i n s t ,   i g n o r e A c t i o n L o c k   ) ;  
 	 }  
 	  
 	 p r i v a t e   v a r   r e e v a l u a t e C u r r e n t W e a p o n   :   b o o l ;  
 	  
 	 e v e n t   O n T a r g e t W e a p o n D r a w n ( )  
 	 {  
 	 	 v a r     w e a p o n T y p e   :   E P l a y e r W e a p o n   =   t h i s . G e t C u r r e n t M e l e e W e a p o n T y p e ( ) ;  
 	 	 i f   (   w e a p o n T y p e   = =   P W _ F i s t s   )  
 	 	 	 r e e v a l u a t e C u r r e n t W e a p o n   =   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G o T o C o m b a t I f N e e d e d (   o p t i o n a l   e n e m y   :   C A c t o r   )   :   b o o l  
 	 {  
 	 	 v a r     w e a p o n T y p e   :   E P l a y e r W e a p o n ;  
 	 	 v a r 	   t a r g e t   	 :   C A c t o r ;  
 	 	  
 	 	 i f (   ! e n e m y   & &   I s I n C o m b a t ( )   )  
 	 	 {  
 	 	 	 t a r g e t   =   G e t T a r g e t ( ) ;  
 	 	 	  
 	 	 	 i f   (   t a r g e t   )  
 	 	 	 	 e n e m y   =   t a r g e t ;  
 	 	 	 e l s e  
 	 	 	 	 e n e m y   =   m o v e T a r g e t ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   ! S h o u l d G o T o C o m b a t (   e n e m y   )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 w e a p o n T y p e   =   t h i s . G e t C u r r e n t M e l e e W e a p o n T y p e ( ) ;  
 	 	  
 	 	 i f   (   w e a p o n T y p e   = =   P W _ N o n e   | |   (   r e e v a l u a t e C u r r e n t W e a p o n   & &   w e a p o n T y p e   = =   P W _ F i s t s   )   | |   (   ! I s I n C o m b a t ( )   & &   w e a p o n H o l s t e r . I s O n T h e M i d d l e O f H o l s t e r i n g ( )   )   )  
 	 	 {  
 	 	 	  
 	 	 	 w e a p o n T y p e   =   w e a p o n H o l s t e r . G e t M o s t C o n v e n i e n t M e l e e W e a p o n (   e n e m y   ) ;  
 	 	 	 r e e v a l u a t e C u r r e n t W e a p o n   =   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 G o T o C o m b a t (   w e a p o n T y p e   ) ;  
 	 	  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G o T o C o m b a t I f W a n t e d (   )   :   b o o l  
 	 {  
 	 	 v a r   w e a p o n T y p e 	 :   E P l a y e r W e a p o n ;  
 	 	 v a r 	 t a r g e t   	 	 :   C A c t o r ;  
 	 	 v a r 	 e n e m y   	 	 :   C A c t o r ;  
 	 	  
 	 	  
 	 	 i f (   ! I s I n C o m b a t ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 t a r g e t   =   G e t T a r g e t ( ) ;  
 	 	  
 	 	 i f   (   t a r g e t   )  
 	 	 	 e n e m y   =   t a r g e t ;  
 	 	 e l s e  
 	 	 	 e n e m y   =   m o v e T a r g e t ;  
 	 	  
 	 	 w e a p o n T y p e   =   t h i s . G e t C u r r e n t M e l e e W e a p o n T y p e ( ) ;  
 	 	  
 	 	 i f   (   w e a p o n T y p e   = =   P W _ N o n e   | |   (   ! I s I n C o m b a t ( )   & &   w e a p o n H o l s t e r . I s O n T h e M i d d l e O f H o l s t e r i n g ( )   )   )  
 	 	 {  
 	 	 	  
 	 	 	 w e a p o n T y p e   =   w e a p o n H o l s t e r . G e t M o s t C o n v e n i e n t M e l e e W e a p o n (   e n e m y   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 G o T o C o m b a t (   w e a p o n T y p e   ) ;  
 	 	  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G o T o E x p l o r a t i o n I f N e e d e d ( )   :   b o o l  
 	 {  
 	 	  
 	 	  
 	 	 i f (   !   I s I n C o m b a t S t a t e ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f (   ! S h o u l d G o T o E x p l o r a t i o n ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 w e a p o n H o l s t e r . E n d e d C o m b a t ( ) ;  
 	 	  
 	 	  
 	 	 G o t o S t a t e (   ' E x p l o r a t i o n '   ) ;  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 e v e n t   O n S t a t e C a n G o T o C o m b a t ( )  
 	 {  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 e v e n t   O n S t a t e C a n U p d a t e E x p l o r a t i o n S u b s t a t e s ( )  
 	 {  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   S h o u l d G o T o C o m b a t (   o p t i o n a l   e n e m y   :   C A c t o r   )   :   b o o l  
 	 {  
 	 	 v a r   c u r r e n t S t a t e N a m e   :   n a m e ;  
 	 	  
 	 	  
 	 	 i f (   ! O n S t a t e C a n G o T o C o m b a t ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 c u r r e n t S t a t e N a m e   =   G e t C u r r e n t S t a t e N a m e ( ) ;  
 	 	  
 	 	 i f (   c u r r e n t S t a t e N a m e   = =   ' A i m T h r o w '   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f (   c u r r e n t S t a t e N a m e   = =   ' S w i m m i n g '   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 i f (   c u r r e n t S t a t e N a m e   = =   ' T r a v e r s e E x p l o r a t i o n '   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 i f   (   ! e n e m y   )  
 	 	 {    
 	 	 	 r e t u r n   p l a y e r M o d e . c o m b a t M o d e ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   S h o u l d G o T o E x p l o r a t i o n ( )   :   b o o l  
 	 {  
 	 	 i f   (   I s I n C o m b a t ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f   (   r a n g e d W e a p o n   & &   r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 i f (   I s F i s t F i g h t M i n i g a m e E n a b l e d ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 i f (   I s K n o c k e d U n c o n s c i o u s ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 i f (   I s I n C o m b a t A c t i o n ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 i f (   G e t C r i t i c a l B u f f s C o u n t ( )   >   0   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   G o T o C o m b a t (   w e a p o n T y p e   :   E P l a y e r W e a p o n ,   o p t i o n a l   i n i t i a l A c t i o n   :   E I n i t i a l A c t i o n   )  
 	 { 	 	 	  
 	 	  
 	 	 s w i t c h (   w e a p o n T y p e   )  
 	 	 {  
 	 	 	 c a s e   P W _ S i l v e r :  
 	 	 	 	 ( ( W 3 P l a y e r W i t c h e r S t a t e C o m b a t S i l v e r )   G e t S t a t e ( ' C o m b a t S i l v e r ' ) ) . S e t u p S t a t e (   i n i t i a l A c t i o n   ) ;  
 	 	 	 	 G o T o S t a t e I f N e w (   ' C o m b a t S i l v e r '   ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   P W _ S t e e l :  
 	 	 	 	 ( ( W 3 P l a y e r W i t c h e r S t a t e C o m b a t S t e e l )   G e t S t a t e ( ' C o m b a t S t e e l ' ) ) . S e t u p S t a t e (   i n i t i a l A c t i o n   ) ;  
 	 	 	 	 G o T o S t a t e I f N e w (   ' C o m b a t S t e e l '   ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   P W _ F i s t s :  
 	 	 	 c a s e   P W _ N o n e :  
 	 	 	 d e f a u l t   :  
 	 	 	 	 ( ( W 3 P l a y e r W i t c h e r S t a t e C o m b a t F i s t s )   G e t S t a t e ( ' C o m b a t F i s t s ' ) ) . S e t u p S t a t e (   i n i t i a l A c t i o n   ) ;  
 	 	 	 	 G o T o S t a t e I f N e w (   ' C o m b a t F i s t s '   ) ;  
 	 	 	 b r e a k ;  
 	 	 } 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G o T o S t a t e I f N e w (   n e w S t a t e   :   n a m e ,   o p t i o n a l   k e e p S t a c k   :   b o o l ,   o p t i o n a l   f o r c e E v e n t s   :   b o o l     )  
 	 {  
 	 	 i f (   n e w S t a t e   ! =   G e t C u r r e n t S t a t e N a m e ( )   )  
 	 	 {  
 	 	 	 G o t o S t a t e (   n e w S t a t e ,   k e e p S t a c k ,   f o r c e E v e n t s   ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G o t o S t a t e (   n e w S t a t e   :   n a m e ,   o p t i o n a l   k e e p S t a c k   :   b o o l ,   o p t i o n a l   f o r c e E v e n t s   :   b o o l     )  
 	 {  
 	 	  
 	 	  
 	 	 s u p e r . G o t o S t a t e (   n e w S t a t e ,   k e e p S t a c k ,   f o r c e E v e n t s   ) ;  
 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s T h i s A C o m b a t S u p e r S t a t e (   s t a t e N a m e   :   n a m e   )   :   b o o l  
 	 {  
 	 	 r e t u r n   s t a t e N a m e   = =   ' C o m b a t '   | |   s t a t e N a m e   = =   ' C o m b a t S t e e l '   | |   s t a t e N a m e   = =   ' C o m b a t S i l v e r '   | |   s t a t e N a m e   = =   ' C o m b a t F i s t s ' ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t W e a p o n H o l s t e r ( )   :   W e a p o n H o l s t e r  
 	 {  
 	 	 r e t u r n   w e a p o n H o l s t e r ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   A b o r t S i g n ( )  
 	 {  
 	 	 v a r   p l a y e r W i t c h e r   :   W 3 P l a y e r W i t c h e r ;  
 	 	 v a r   s i g n   :   W 3 S i g n E n t i t y ;  
 	 	  
 	 	 p l a y e r W i t c h e r   =   ( W 3 P l a y e r W i t c h e r ) t h i s ;  
 	 	  
 	 	 i f ( p l a y e r W i t c h e r )  
 	 	 {  
 	 	 	 s i g n   =   ( W 3 S i g n E n t i t y ) p l a y e r W i t c h e r . G e t C u r r e n t S i g n E n t i t y ( ) ;  
 	 	 	 i f   ( s i g n )  
 	 	 	 {  
 	 	 	 	 s i g n . O n S i g n A b o r t e d ( ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	  
 	  
 	  
 	 p r o t e c t e d   v a r   d i s a b l e A c t i o n B l e n d   :   b o o l ;  
 	  
 	 	  
 	 	  
 	 	  
 	 e v e n t   O n A n i m E v e n t _ D i s a l l o w H i t A n i m (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i f   (   a n i m E v e n t T y p e   = =   A E T _ D u r a t i o n E n d   )  
 	 	 { 	  
 	 	 	 i f   (   (   B u f f e r C o m b a t A c t i o n   = =   E B A T _ D o d g e   | |   B u f f e r C o m b a t A c t i o n   = =   E B A T _ R o l l   )  
 	 	 	 	 	 & &     I s I n C o m b a t A c t i o n ( )    
 	 	 	 	 	 & &   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ A t t a c k   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 (   ( C R 4 P l a y e r ) t h i s   ) . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	 	 	 d i s a b l e A c t i o n B l e n d   =   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   (   I s I n C o m b a t A c t i o n ( )   & &   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ D o d g e   & &   a n i m E v e n t T y p e   = =   A E T _ D u r a t i o n S t a r t   )  
 	 	 {  
 	 	 	 d i s a b l e A c t i o n B l e n d   =   f a l s e ;  
 	 	 }  
 	 	  
 	 	 s u p e r . O n A n i m E v e n t _ D i s a l l o w H i t A n i m (   a n i m E v e n t N a m e ,   a n i m E v e n t T y p e ,   a n i m I n f o   ) ;  
 	 }  
 	  
 	  
 	 e v e n t   O n A n i m E v e n t _ F a d e O u t (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 t h e G a m e . F a d e O u t A s y n c (   0 . 2 ,   C o l o r (   0 ,   0 ,   0 ,   1   )   ) ;  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ F a d e I n (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 t h e G a m e . F a d e I n A s y n c (   0 . 4   ) ;  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ B l o o d T r a i l F o r c e d (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 v a r   b l o o d T r a i l P a r a m   	 :   C B l o o d T r a i l E f f e c t ;  
 	 	 v a r   w e a p o n I d 	 	 	 :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 i f   (   i s I n F i n i s h e r   )  
 	 	 {  
 	 	 	 b l o o d T r a i l P a r a m   =   ( C B l o o d T r a i l E f f e c t ) ( G e t F i n i s h e r V i c t i m ( ) ) . G e t G a m e p l a y E n t i t y P a r a m (   ' C B l o o d T r a i l E f f e c t '   ) ;  
 	 	 	 w e a p o n I d   =   t h i s . i n v . G e t I t e m F r o m S l o t ( ' r _ w e a p o n ' ) ;  
 	 	 	 i f   (   b l o o d T r a i l P a r a m   )  
 	 	 	 	 t h e P l a y e r . i n v . P l a y I t e m E f f e c t (   w e a p o n I d ,   b l o o d T r a i l P a r a m . G e t E f f e c t N a m e ( )   ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ S l o w M o (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i f   (   i s I n F i n i s h e r   & &   D i s a b l e M a n u a l C a m e r a C o n t r o l S t a c k H a s S o u r c e (   ' F i n i s h e r '   )   )  
 	 	 {  
 	 	 	 i f (   a n i m E v e n t T y p e   ! =   A E T _ D u r a t i o n E n d     )  
 	 	 	 	 t h e G a m e . S e t T i m e S c a l e (   0 . 1 f ,   ' A n i m E v e n t S l o m o M o ' ,   1 0 0 0 ,   t r u e   ) ;  
 	 	 	 e l s e    
 	 	 	 	 t h e G a m e . R e m o v e T i m e S c a l e (   ' A n i m E v e n t S l o m o M o '   ) ; 	  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ P l a y F i n i s h e r B l o o d (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i f   (   i s I n F i n i s h e r   )    
 	 	 {  
 	 	 	 S p a w n F i n i s h e r B l o o d ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ O n W e a p o n D r a w R e a d y (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 w e a p o n H o l s t e r . O n W e a p o n D r a w R e a d y ( ) ;  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ O n W e a p o n H o l s t e r R e a d y (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 w e a p o n H o l s t e r . O n W e a p o n H o l s t e r R e a d y ( ) ;  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ T h r o w H o l d T e s t (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 v a r   t h r o w n E n t i t y 	 	 :   C T h r o w a b l e ;  
 	 	  
 	 	 t h r o w n E n t i t y   =   ( C T h r o w a b l e ) E n t i t y H a n d l e G e t (   t h r o w n E n t i t y H a n d l e   ) ;  
 	 	  
 	 	 i f (   I s T h r o w H o l d ( )   )  
 	 	 {  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' t h r o w S t a g e ' ,   ( i n t ) T S _ L o o p   ) ;  
 	 	 	 P u s h S t a t e (   ' A i m T h r o w '   ) ;  
 	 	 	 t h r o w n E n t i t y . S t a r t A i m i n g ( ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 B o m b T h r o w R e l e a s e ( ) ;  
 	 	 	 S e t C o m b a t I d l e S t a n c e (   1 . f   ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ A l l o w T e m p L o o k A t (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i f (   a n i m E v e n t T y p e   = =   A E T _ D u r a t i o n S t a r t   )  
 	 	 	 S e t T e m p L o o k A t T a r g e t (   s l i d e T a r g e t   ) ;  
 	 	 e l s e   i f (   a n i m E v e n t T y p e   = =   A E T _ D u r a t i o n E n d   )  
 	 	 	 S e t T e m p L o o k A t T a r g e t (   N U L L   ) ;  
 	 }  
 	  
 	 p r o t e c t e d   v a r   s l i d e N P C 	 	 	 :   C N e w N P C ;  
 	 p r o t e c t e d   v a r   m i n S l i d e D i s t a n c e 	 :   f l o a t ;  
 	 p r o t e c t e d   v a r   m a x S l i d e D i s t a n c e 	 :   f l o a t ;  
 	 p r o t e c t e d   v a r   s l i d e T i c k e t   	 	 :   S M o v e m e n t A d j u s t m e n t R e q u e s t T i c k e t ;  
 	  
 	 e v e n t   O n A n i m E v e n t _ S l i d e T o T a r g e t (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 v a r   m o v e m e n t A d j u s t o r 	 :   C M o v e m e n t A d j u s t o r ;  
 	 	  
 	 	 i f (   a n i m E v e n t T y p e   = =   A E T _ D u r a t i o n S t a r t   )  
 	 	 {  
 	 	 	 s l i d e N P C   =   ( C N e w N P C ) s l i d e T a r g e t ;  
 	 	 }  
 	 	 	  
 	 	 i f (   ! s l i d e N P C   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 	  
 	 	 i f (   a n i m E v e n t T y p e   = =   A E T _ D u r a t i o n S t a r t   & &   s l i d e N P C . G e t G a m e p l a y V i s i b i l i t y ( )   )  
 	 	 {  
 	 	 	 m o v e m e n t A d j u s t o r   =   G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 	 s l i d e T i c k e t   =   m o v e m e n t A d j u s t o r . G e t R e q u e s t (   ' S l i d e T o T a r g e t '   ) ;  
 	 	 	 m o v e m e n t A d j u s t o r . C a n c e l B y N a m e (   ' S l i d e T o T a r g e t '   ) ;  
 	 	 	 s l i d e T i c k e t   =   m o v e m e n t A d j u s t o r . C r e a t e N e w R e q u e s t (   ' S l i d e T o T a r g e t '   ) ;  
 	 	 	 m o v e m e n t A d j u s t o r . B i n d T o E v e n t A n i m I n f o (   s l i d e T i c k e t ,   a n i m I n f o   ) ;  
 	 	 	  
 	 	 	 m o v e m e n t A d j u s t o r . M a x L o c a t i o n A d j u s t m e n t S p e e d (   s l i d e T i c k e t ,   1 0 0 0 0 0 0   ) ;  
 	 	 	 m o v e m e n t A d j u s t o r . S c a l e A n i m a t i o n (   s l i d e T i c k e t   ) ;  
 	 	 	 m i n S l i d e D i s t a n c e   =   ( ( C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ) t h i s . G e t M o v i n g A g e n t C o m p o n e n t ( ) ) . G e t C a p s u l e R a d i u s ( ) + ( ( C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ) s l i d e N P C . G e t M o v i n g A g e n t C o m p o n e n t ( ) ) . G e t C a p s u l e R a d i u s ( ) ;  
 	 	 	 i f (   I s I n C o m b a t F i s t ( )   )  
 	 	 	 {  
 	 	 	 	 m a x S l i d e D i s t a n c e   =   1 0 0 0 . 0 f ; 	  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 m a x S l i d e D i s t a n c e   =   m i n S l i d e D i s t a n c e ;  
 	 	 	 }  
 	 	 	 m o v e m e n t A d j u s t o r . S l i d e T o w a r d s (   s l i d e T i c k e t ,   s l i d e T a r g e t ,   m i n S l i d e D i s t a n c e ,   m a x S l i d e D i s t a n c e   ) ; 	  
 	 	 }  
 	 	 e l s e   i f (   ! s l i d e N P C . G e t G a m e p l a y V i s i b i l i t y ( )   )  
 	 	 {  
 	 	 	 m o v e m e n t A d j u s t o r   =   G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 	 m o v e m e n t A d j u s t o r . C a n c e l B y N a m e (   ' S l i d e T o T a r g e t '   ) ;  
 	 	 	 s l i d e N P C   =   N U L L ;  
 	 	 }  
 	 	 e l s e    
 	 	 {  
 	 	 	 m o v e m e n t A d j u s t o r   =   G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 	 m o v e m e n t A d j u s t o r . S l i d e T o w a r d s (   s l i d e T i c k e t ,   s l i d e T a r g e t ,   m i n S l i d e D i s t a n c e ,   m a x S l i d e D i s t a n c e   ) ; 	 	 	 	  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ A c t i o n B l e n d (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 }  
 	  
 	  
 	 e v e n t   O n A n i m E v e n t _ S u b s t a t e M a n a g e r (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	  
 	 	 s u b s t a t e M a n a g e r . O n A n i m E v e n t (   a n i m E v e n t N a m e ,   a n i m E v e n t T y p e ,   a n i m I n f o   ) ;  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ A l l o w F a l l (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i f   (   ! s u b s t a t e M a n a g e r . m _ O w n e r M A C . I s O n G r o u n d ( )   )  
 	 	 {  
 	 	 	 s u b s t a t e M a n a g e r . m _ S h a r e d D a t a O . S e t F a l l F r o m C r i t i c a l (   t r u e   ) ;  
 	 	 	 s u b s t a t e M a n a g e r . m _ M o v e r O . S e t V e l o c i t y (   - 6 . 0 f   *   G e t W o r l d F o r w a r d ( )   ) ;  
 	 	 	 s u b s t a t e M a n a g e r . Q u e u e S t a t e E x t e r n a l (   ' J u m p '   ) ;  
 	 	 	 R e m o v e B u f f (   E E T _ K n o c k d o w n ,   t r u e   ) ;  
 	 	 	 R e m o v e B u f f (   E E T _ H e a v y K n o c k d o w n ,   t r u e   ) ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ A l l o w F a l l 2 (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i f   (   ! s u b s t a t e M a n a g e r . m _ O w n e r M A C . I s O n G r o u n d ( )   )  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	 s u b s t a t e M a n a g e r . Q u e u e S t a t e E x t e r n a l (   ' J u m p '   ) ;  
 	 	 	 R e m o v e B u f f (   E E T _ K n o c k d o w n ,   t r u e   ) ;  
 	 	 	 R e m o v e B u f f (   E E T _ H e a v y K n o c k d o w n ,   t r u e   ) ;  
 	 	 }  
 	 	 i f (   s u b s t a t e M a n a g e r . S t a t e W a n t s A n d C a n E n t e r (   ' S l i d e '   )   )  
 	 	 {  
 	 	 	 s u b s t a t e M a n a g e r . Q u e u e S t a t e E x t e r n a l (   ' S l i d e '   ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ D e t t a c h G r o u n d (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	  
 	 }  
 	  
 	  
 	 e v e n t   O n A n i m E v e n t _ p a d _ v i b r a t i o n (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 v a r   w i t c h e r   :   W 3 P l a y e r W i t c h e r ;  
 	 	  
 	 	 t h e G a m e . V i b r a t e C o n t r o l l e r H a r d ( ) ;  
 	 	  
 	 	  
 	 	 w i t c h e r   =   G e t W i t c h e r P l a y e r ( ) ;  
 	 	 i f ( i s I n F i n i s h e r   & &   w i t c h e r )  
 	 	 {  
 	 	 	 i f ( H a s A b i l i t y ( ' R u n e w o r d   1 0   _ S t a t s ' ,   t r u e )   & &   ! w i t c h e r . r u n e w o r d 1 0 T r i g g e r r e d O n F i n i s h e r   & &   ( ( b o o l ) t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) . G e t V a r V a l u e ( ' G a m e p l a y ' ,   ' A u t o m a t i c F i n i s h e r s E n a b l e d ' ) )   = =   t r u e )  
 	 	 	 { 	 	 	 	  
 	 	 	 	 w i t c h e r . R u n e w o r d 1 0 T r i g g e r r e d ( ) ;  
 	 	 	 	 w i t c h e r . r u n e w o r d 1 0 T r i g g e r r e d O n F i n i s h e r   =   t r u e ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( H a s A b i l i t y ( ' R u n e w o r d   1 2   _ S t a t s ' ,   t r u e )   & &   ! w i t c h e r . r u n e w o r d 1 2 T r i g g e r r e d O n F i n i s h e r )  
 	 	 	 {  
 	 	 	 	 w i t c h e r . R u n e w o r d 1 2 T r i g g e r r e d ( ) ;  
 	 	 	 	 w i t c h e r . r u n e w o r d 1 2 T r i g g e r r e d O n F i n i s h e r   =   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	 e v e n t   O n A n i m E v e n t _ p a d _ v i b r a t i o n _ l i g h t (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ K i l l W i t h R a g d o l l (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	  
 	 	  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ R e m o v e B u r n i n g (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 { 	  
 	 	 t h e P l a y e r . A d d B u f f I m m u n i t y ( E E T _ B u r n i n g ,   ' A n i m E v e n t _ R e m o v e B u r n i n g ' ,   t r u e ) ;  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ R e m o v e T a n g l e d (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i f   (   t h i s . H a s B u f f (   E E T _ T a n g l e d   )   )  
 	 	 {  
 	 	 	 t h i s . S t o p E f f e c t ( ' b l a c k _ s p i d e r _ w e b ' ) ;  
 	 	 	 t h i s . P l a y E f f e c t S i n g l e ( ' b l a c k _ s p i d e r _ w e b _ b r e a k ' ) ; 	 	  
 	 	 }  
 	 }  
 	  
 	  
 	 e v e n t   O n A n i m E v e n t _ M o v e N o i s e (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . C r e a t e R e a c t i o n E v e n t I f P o s s i b l e (   t h i s ,   ' M o v e N o i s e ' ,   - 1 ,   3 0 . 0 f ,   - 1 . f ,   - 1 ,   t r u e   ) ;  
 	 }  
  
 	  
 	 e v e n t   O n B e h a v i o r G r a p h N o t i f i c a t i o n (   n o t i f i c a t i o n N a m e   :   n a m e ,   s t a t e N a m e   :   n a m e   )  
 	 {  
 	 	 s u b s t a t e M a n a g e r . O n B e h a v i o r G r a p h N o t i f i c a t i o n (   n o t i f i c a t i o n N a m e ,   s t a t e N a m e   ) ;  
 	 	  
 	 	 i f (   n o t i f i c a t i o n N a m e   = =   ' P l a y e r R u n A c t i v a t e '   )  
 	 	 {  
 	 	 	 i s I n R u n A n i m a t i o n   =   t r u e ;  
 	 	 }  
 	 	 e l s e   i f (   n o t i f i c a t i o n N a m e   = =   ' P l a y e r R u n D e a c t i v a t e '   )  
 	 	 {  
 	 	 	 i s I n R u n A n i m a t i o n   =   f a l s e ;  
 	 	 }  
 	 }  
  
 	 e v e n t   O n E n u m A n i m E v e n t (   a n i m E v e n t N a m e   :   n a m e ,   v a r i a n t   :   S E n u m V a r i a n t ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m E v e n t D u r a t i o n   :   f l o a t ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 v a r   m o v e m e n t A d j u s t o r   :   C M o v e m e n t A d j u s t o r ;  
 	 	 v a r   t i c k e t   :   S M o v e m e n t A d j u s t m e n t R e q u e s t T i c k e t ;  
 	 	 v a r   r o t a t i o n R a t e   :   E R o t a t i o n R a t e ;  
 	 	  
 	 	 i f   (   a n i m E v e n t N a m e   = =   ' R o t a t e T o T a r g e t '   )  
 	 	 {  
 	 	 	  
 	 	 	 r o t a t i o n R a t e   =   G e t R o t a t i o n R a t e F r o m A n i m E v e n t (   v a r i a n t . e n u m V a l u e   ) ;  
  
 	 	 	 m o v e m e n t A d j u s t o r   =   G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 	 i f   (   a n i m E v e n t T y p e   = =   A E T _ D u r a t i o n S t a r t   | |   a n i m E v e n t T y p e   = =   A E T _ D u r a t i o n S t a r t I n T h e M i d d l e   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f   ( !   m o v e m e n t A d j u s t o r . I s R e q u e s t A c t i v e (   m o v e m e n t A d j u s t o r . G e t R e q u e s t (   ' R o t a t e T o T a r g e t '   )   )   )  
 	 	 	 	 {  
 	 	 	 	 	  
 	 	 	 	 	 t i c k e t   =   m o v e m e n t A d j u s t o r . C r e a t e N e w R e q u e s t (   ' R o t a t e T o T a r g e t '   ) ;  
 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 i f   ( ( i n t ) r o t a t i o n R a t e   = =   0 )  
 	 	 	 	 	 	 m o v e m e n t A d j u s t o r . A d j u s t m e n t D u r a t i o n (   t i c k e t ,   a n i m E v e n t D u r a t i o n   ) ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 m o v e m e n t A d j u s t o r . C o n t i n u o u s (   t i c k e t   ) ;  
 	 	 	 	 	 	 m o v e m e n t A d j u s t o r . B i n d T o E v e n t (   t i c k e t ,   ' R o t a t e T o T a r g e t '   ) ;  
 	 	 	 	 	 } 	  
 	 	 	 	 	  
 	 	 	 	 	 m o v e m e n t A d j u s t o r . D o n t U s e S o u r c e A n i m a t i o n (   t i c k e t   ) ;    
 	 	 	 	 	 m o v e m e n t A d j u s t o r . R e p l a c e R o t a t i o n (   t i c k e t   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	  
 	 	 	 	 	 t i c k e t   =   m o v e m e n t A d j u s t o r . G e t R e q u e s t (   ' R o t a t e T o T a r g e t '   ) ;  
 	 	 	 	 }  
 	 	 	 	 M o v A d j R o t a t e T o T a r g e t (   t i c k e t   ) ;  
 	 	 	 	  
 	 	 	 	 i f   ( ( i n t ) r o t a t i o n R a t e   >   0 )  
 	 	 	 	 {  
 	 	 	 	 	 m o v e m e n t A d j u s t o r . M a x R o t a t i o n A d j u s t m e n t S p e e d (   t i c k e t ,   ( f l o a t ) ( ( i n t ) r o t a t i o n R a t e )   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   i f   (   a n i m E v e n t T y p e   = =   A E T _ D u r a t i o n E n d   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 t i c k e t   =   m o v e m e n t A d j u s t o r . G e t R e q u e s t (   ' R o t a t e T o T a r g e t '   ) ;  
 	 	 	 	 M o v A d j R o t a t e T o T a r g e t (   t i c k e t   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 s u p e r . O n E n u m A n i m E v e n t ( a n i m E v e n t N a m e ,   v a r i a n t ,   a n i m E v e n t T y p e ,   a n i m E v e n t D u r a t i o n ,   a n i m I n f o ) ;  
 	 }  
 	 	  
 	 e v e n t   O n T e l e p o r t e d ( )  
 	 {  
 	 	 i f (   s u b s t a t e M a n a g e r   )  
 	 	 {  
 	 	 	 s u b s t a t e M a n a g e r . O n T e l e p o r t e d ( ) ;  
 	 	 }  
 	 }  
 	  
 	  
  
 	  
 	  
 	  
 	 e v e n t   O n S t a r t F i s t f i g h t M i n i g a m e ( )  
 	 {  
 	 	 s u p e r . O n S t a r t F i s t f i g h t M i n i g a m e ( ) ;  
 	 	  
 	 	  
 	 	 S e t F i s t F i g h t M i n i g a m e E n a b l e d (   t r u e   ) ;  
 	 	 F i s t F i g h t H e a l t h C h a n g e (   t r u e   ) ;  
 	 	 t h e P l a y e r . G e t P l a y e r M o d e ( ) . F o r c e C o m b a t M o d e (   F C M R _ Q u e s t F u n c t i o n   ) ;  
 	 	 S e t I m m o r t a l i t y M o d e ( A I M _ U n c o n s c i o u s ,   A I C _ F i s t f i g h t ) ;  
 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' p l a y e r W e a p o n L a t e n t ' ,   ( i n t ) P W _ F i s t s   ) ;  
 	 	 G o t o C o m b a t S t a t e W i t h A c t i o n (   I A _ N o n e   ) ;  
 	 	 ( ( C M o v i n g A g e n t C o m p o n e n t ) t h i s . G e t M o v i n g A g e n t C o m p o n e n t ( ) ) . S n a p T o N a v i g a b l e S p a c e (   t r u e   ) ;  
 	 	 E q u i p G e r a l t F i s t f i g h t W e a p o n (   t r u e   ) ; 	  
 	 	 B l o c k A c t i o n (   E I A B _ R a d i a l M e n u ,   	 ' F i s t f i g h t M i n i g a m e '   , , t r u e ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ S i g n s ,   	 	 ' F i s t f i g h t M i n i g a m e '   , , t r u e ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ T h r o w B o m b ,   	 ' F i s t f i g h t M i n i g a m e '   , , t r u e ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ U s a b l e I t e m ,   	 ' F i s t f i g h t M i n i g a m e '   , , t r u e ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ C r o s s b o w ,   	 ' F i s t f i g h t M i n i g a m e '   , , t r u e ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ D r a w W e a p o n ,   	 ' F i s t f i g h t M i n i g a m e '   , , t r u e ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ R u n A n d S p r i n t , 	 ' F i s t f i g h t M i n i g a m e '   , , t r u e ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ S w o r d A t t a c k ,   	 ' F i s t f i g h t M i n i g a m e '   , , t r u e ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ C a l l H o r s e ,   	 ' F i s t f i g h t M i n i g a m e '   , , t r u e ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ R o l l ,   	 	 ' F i s t f i g h t M i n i g a m e '   , , t r u e ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ I n t e r a c t i o n s ,   ' F i s t f i g h t M i n i g a m e '   , , t r u e ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ E x p l o r a t i o n s ,   ' F i s t f i g h t M i n i g a m e '   , , t r u e ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ O p e n I n v e n t o r y ,   ' F i s t f i g h t M i n i g a m e '   , , t r u e ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ Q u i c k S l o t s ,   	   ' F i s t f i g h t M i n i g a m e '   , , t r u e ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ O p e n C h a r a c t e r P a n e l ,   ' F i s t f i g h t M i n i g a m e '   , , t r u e ) ;  
 	 }  
 	  
 	 e v e n t   O n E n d F i s t f i g h t M i n i g a m e ( )  
 	 {  
 	 	 ( ( C M o v i n g A g e n t C o m p o n e n t ) t h i s . G e t M o v i n g A g e n t C o m p o n e n t ( ) ) . S n a p T o N a v i g a b l e S p a c e (   f a l s e   ) ;  
 	 	 F i s t F i g h t H e a l t h C h a n g e (   f a l s e   ) ;  
 	 	 t h e P l a y e r . G e t P l a y e r M o d e ( ) . R e l e a s e F o r c e C o m b a t M o d e (   F C M R _ Q u e s t F u n c t i o n   ) ;  
 	 	 E q u i p G e r a l t F i s t f i g h t W e a p o n (   f a l s e   ) ;  
 	 	 S e t F i s t F i g h t M i n i g a m e E n a b l e d (   f a l s e   ) ;  
 	 	 S e t I m m o r t a l i t y M o d e ( A I M _ N o n e ,   A I C _ F i s t f i g h t ) ;  
 	 	 B l o c k A l l A c t i o n s ( ' F i s t f i g h t M i n i g a m e ' , f a l s e ) ;  
 	 	  
 	 	 s u p e r . O n E n d F i s t f i g h t M i n i g a m e ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t F i s t F i g h t F i n i s h e r (   o u t   m a s t e r A n i m N a m e ,   s l a v e A n i m I n d e x   :   n a m e   )  
 	 {  
 	 	 v a r   i n d e x   :   i n t ;  
 	  
 	 	 i n d e x   =   R a n d R a n g e ( 1 ) ;  
 	 	 s w i t c h   (   i n d e x   )  
 	 	 {  
 	 	 	 c a s e   0   :   m a s t e r A n i m N a m e   =   ' m a n _ f i s t f i g h t _ f i n i s h e r _ 1 _ w i n ' ;   s l a v e A n i m I n d e x   =   ' m a n _ f i s t f i g h t _ f i n i s h e r _ 1 _ l o o s e r ' ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t F i s t F i g h t M i n i g a m e E n a b l e d (   f l a g   :   b o o l   )  
 	 {  
 	 	 f i s t F i g h t M i n i g a m e E n a b l e d   =   f l a g ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t F i s t F i g h t P a r a m s (   t o D e a t h   :   b o o l ,   e n d s W i t h B S   :   b o o l   )  
 	 {  
 	 	 i s F F M i n i g a m e T o T h e D e a t h   =   t o D e a t h ;  
 	 	 F F M i n i g a m e E n d s i t h B S   =   e n d s W i t h B S ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s F i s t F i g h t M i n i g a m e E n a b l e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   f i s t F i g h t M i n i g a m e E n a b l e d ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   I s F i s t F i g h t M i n i g a m e T o T h e D e a t h ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s F F M i n i g a m e T o T h e D e a t h ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   F i s t F i g h t H e a l t h C h a n g e (   v a l   :   b o o l   )  
 	 {  
 	 	 i f (   v a l   = =   t r u e   )  
 	 	 {  
 	 	 	 G e r a l t M a x H e a l t h   =   t h e P l a y e r . G e t S t a t M a x ( B C S _ V i t a l i t y ) ;  
 	 	 	 C l a m p G e r a l t M a x H e a l t h (   2 0 0 0   ) ;  
 	 	 	 S e t H e a l t h P e r c (   1 0 0   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 C l a m p G e r a l t M a x H e a l t h (   G e r a l t M a x H e a l t h   ) ;  
 	 	 	 S e t H e a l t h P e r c (   1 0 0   ) ;  
 	 	 }  
 	 	  
 	 }  
 	  
 	 f u n c t i o n   C l a m p G e r a l t M a x H e a l t h (   v a l   :   f l o a t   )  
 	 {  
 	 	 t h e P l a y e r . a b i l i t y M a n a g e r . S e t S t a t P o i n t M a x (   B C S _ V i t a l i t y ,   v a l   ) ;  
 	 }  
 	  
 	 f u n c t i o n   E q u i p G e r a l t F i s t f i g h t W e a p o n (   v a l   :   b o o l   )  
 	 {  
 	 	 i f   (   v a l   )  
 	 	 {  
 	 	 	 f i s t s I t e m s   =   t h e P l a y e r . G e t I n v e n t o r y ( ) . A d d A n I t e m (   ' G e r a l t   F i s t f i g h t   F i s t s ' ,   1 ,   t r u e ,   t r u e   ) ;  
 	 	 	 t h e P l a y e r . G e t I n v e n t o r y ( ) . M o u n t I t e m (   f i s t s I t e m s [ 0 ]   ,   t r u e   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e P l a y e r . G e t I n v e n t o r y ( ) . D r o p I t e m (   f i s t s I t e m s [ 0 ] ,   t r u e   ) ;  
 	 	 }  
 	 }  
  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t G w i n t A i D i f f i c u l t y ( )   :   E G w i n t D i f f i c u l t y M o d e  
 	 {  
 	 	 r e t u r n   g w i n t A i D i f f i c u l t y ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t G w i n t A i D i f f i c u l t y (   d i f f i c u l t y   :   E G w i n t D i f f i c u l t y M o d e   )  
 	 {  
 	 	 g w i n t A i D i f f i c u l t y   =   d i f f i c u l t y ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   G e t G w i n t A i A g g r e s s i o n ( )   :   E G w i n t A g g r e s s i o n M o d e  
 	 {  
 	 	 r e t u r n   g w i n t A i A g g r e s s i o n ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t G w i n t A i A g g r e s s i o n (   a g g r e s s i o n   :   E G w i n t A g g r e s s i o n M o d e   )  
 	 {  
 	 	 g w i n t A i A g g r e s s i o n   =   a g g r e s s i o n ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   G e t G w i n t M i n i g a m e S t a t e ( )   :   E M i n i g a m e S t a t e 	  
 	 {  
 	 	 r e t u r n   g w i n t M i n i g a m e S t a t e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t G w i n t M i n i g a m e S t a t e (   m i n i g a m e S t a t e   :   E M i n i g a m e S t a t e   )  
 	 {  
 	 	 g w i n t M i n i g a m e S t a t e   =   m i n i g a m e S t a t e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   O n G w i n t G a m e R e q u e s t e d (   d e c k N a m e   :   n a m e ,   f o r c e F a c t i o n   :   e G w i n t F a c t i o n   )  
 	 {  
 	 	 v a r   g w i n t M a n a g e r : C R 4 G w i n t M a n a g e r ;  
 	 	 g w i n t M a n a g e r   =   t h e G a m e . G e t G w i n t M a n a g e r ( ) ;  
 	 	  
 	 	 g w i n t M i n i g a m e S t a t e   =   E M S _ N o n e ;  
 	 	  
 	 	 g w i n t M a n a g e r . S e t E n e m y D e c k B y N a m e ( d e c k N a m e ) ;  
 	 	 g w i n t M a n a g e r . S e t F o r c e d F a c t i o n ( f o r c e F a c t i o n ) ;  
 	 	  
 	 	 i f   ( g w i n t M a n a g e r . G e t H a s D o n e T u t o r i a l ( )   | |   ! t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . A r e M e s s a g e s E n a b l e d ( ) )  
 	 	 {  
 	 	 	 g w i n t M a n a g e r . g a m e R e q u e s t e d   =   t r u e ;  
 	 	 	 t h e G a m e . R e q u e s t M e n u (   ' D e c k B u i l d e r '   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e G a m e . G e t G u i M a n a g e r ( ) . S h o w U s e r D i a l o g (   U M I D _ S k i p G w i n t T u t o r i a l ,   " g w i n t _ t u t o r i a l _ p l a y _ q u e r y _ t i t l e " ,   " g w i n t _ t u t o r i a l _ p l a y _ q u e r y " ,   U D B _ Y e s N o   ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S t a r t G w i n t _ T u t o r i a l O r S k i p (   s k i p T u t o r i a l   :   b o o l   )  
 	 {  
 	 	 v a r   g w i n t M a n a g e r   :   C R 4 G w i n t M a n a g e r ;  
 	 	  
 	 	 i f (   s k i p T u t o r i a l   )  
 	 	 {  
 	 	 	 g w i n t M a n a g e r   =   t h e G a m e . G e t G w i n t M a n a g e r ( ) ;  
 	 	 	 g w i n t M a n a g e r . g a m e R e q u e s t e d   =   t r u e ;  
 	 	 	 g w i n t M a n a g e r . S e t H a s D o n e T u t o r i a l ( t r u e ) ;  
 	 	 	 g w i n t M a n a g e r . S e t H a s D o n e D e c k T u t o r i a l ( t r u e ) ;  
 	 	 	 t h e G a m e . R e q u e s t M e n u (   ' D e c k B u i l d e r '   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e G a m e . R e q u e s t M e n u (   ' G w i n t G a m e '   ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   v a r   g w i n t C a r d N u m b e r s A r r a y   :   a r r a y < i n t > ;  
 	  
 	 p u b l i c   f u n c t i o n   I n i t G w i n t C a r d N u m b e r s A r r a y (   a r r   :   a r r a y < i n t >   )  
 	 {  
 	 	 g w i n t C a r d N u m b e r s A r r a y . C l e a r ( ) ;  
 	 	 g w i n t C a r d N u m b e r s A r r a y   =   a r r ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t C a r d N u m b e r s A r r a y ( )   :   a r r a y < i n t >  
 	 {  
 	 	 r e t u r n   g w i n t C a r d N u m b e r s A r r a y ;  
 	 }  
 	  
 	  
 	  
 	  
 	 p r o t e c t e d   v a r   c u s t o m C a m e r a S t a c k   :   a r r a y < S C u s t o m C a m e r a P a r a m s > ;  
 	  
 	 p u b l i c   f u n c t i o n   A d d C u s t o m C a m T o S t a c k (   c u s t o m C a m e r a P a r a m s   :   S C u s t o m C a m e r a P a r a m s   )   :   i n t  
 	 {  
 	 	 i f (   c u s t o m C a m e r a P a r a m s . u s e C u s t o m C a m e r a   )  
 	 	 {  
 	 	 	 i f   (   c u s t o m C a m e r a P a r a m s . c a m e r a P a r a m s . e n u m s [ 0 ] . e n u m T y p e   ! =   ' E C u s t o m C a m e r a T y p e '   )  
 	 	 	 {  
 	 	 	 	 L o g C h a n n e l (   ' C u s t o m C a m e r a ' ,   " E R R O R :   S e l e c t e d   e n u m   i s   n o t   a   c u s t o m   c a m e r a ! ! ! "   ) ;  
 	 	 	 	 r e t u r n   - 1 ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 { 	 	 	  
 	 	 	 	 c u s t o m C a m e r a S t a c k . P u s h B a c k (   c u s t o m C a m e r a P a r a m s   ) ;  
 	 	 	 	 r e t u r n   (   c u s t o m C a m e r a S t a c k . S i z e ( )   -   1   ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   0 ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   D i s a b l e C u s t o m C a m I n S t a c k (   c u s t o m C a m e r a S t a c k I n d e x   :   i n t   )  
 	 {  
 	 	 i f   (   c u s t o m C a m e r a S t a c k I n d e x   ! =   - 1   )  
 	 	 	 c u s t o m C a m e r a S t a c k [ c u s t o m C a m e r a S t a c k I n d e x ] . u s e C u s t o m C a m e r a   =   f a l s e ;  
 	 	 e l s e  
 	 	 	 L o g C h a n n e l (   ' C u s t o m C a m e r a ' ,   " E R R O R :   C u s t o m   c a m e r a   t o   d i s a b l e   d o e s   n o t   e x i s t ! ! ! "   ) ;  
 	 }  
 	  
 	 e v e n t   O n I n t e r i o r S t a t e C h a n g e d (   i n I n t e r i o r   :   b o o l   )  
 	 {  
 	 	 i n t e r i o r C a m e r a   =   i n I n t e r i o r ;  
 	 }  
 	  
 	 e v e n t   O n M o d i f y P l a y e r S p e e d (   f l a g   :   b o o l   )  
 	 {  
 	 	 m o d i f y P l a y e r S p e e d   =   f l a g ;  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' m o d i f y P l a y e r S p e e d ' ,   ( f l o a t ) m o d i f y P l a y e r S p e e d   ) ;  
 	 }  
 	 	  
 	 e v e n t   O n G a m e C a m e r a T i c k (   o u t   m o v e D a t a   :   S C a m e r a M o v e m e n t D a t a ,   d t   :   f l o a t   )  
 	 {  
 	 	 v a r   t a r g e t R o t a t i o n 	 :   E u l e r A n g l e s ;  
 	 	 v a r   d i s t   :   f l o a t ;  
 	 	  
 	 	 i f (   t h e P l a y e r . I s I n C o m b a t ( )   )  
 	 	 {  
 	 	 	 d i s t   =   V e c D i s t a n c e 2 D (   t h e P l a y e r . G e t W o r l d P o s i t i o n ( ) ,   t h e P l a y e r . G e t T a r g e t ( ) . G e t W o r l d P o s i t i o n ( )   ) ;  
 	 	 	 t h e P l a y e r . G e t V i s u a l D e b u g ( ) . A d d T e x t (   ' d b g ' ,   d i s t ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 2 . f   ) ,   t r u e ,   ,   C o l o r (   0 ,   2 5 5 ,   0   )   ) ;  
 	 	 }  
 	 	  
 	 	 i f   (   i s S t a r t i n g F i s t F i g h t M i n i g a m e   )  
 	 	 {  
 	 	 	 m o v e D a t a . p i v o t R o t a t i o n V a l u e   =   f i s t F i g h t T e l e p o r t N o d e . G e t W o r l d R o t a t i o n ( ) ;  
 	 	 	 i s S t a r t i n g F i s t F i g h t M i n i g a m e   =   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   s u b s t a t e M a n a g e r . U p d a t e C a m e r a I f N e e d e d (   m o v e D a t a ,   d t   )   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   t h e G a m e . I s F o c u s M o d e A c t i v e ( )   )  
 	 	 {  
 	 	 	  
 	 	 	 i f ( G e t E x p l C a m e r a ( ) )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 	  
 	 	  
 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . C h a n g e P i v o t R o t a t i o n C o n t r o l l e r (   ' E x p l o r a t i o n '   ) ;  
 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . C h a n g e P i v o t D i s t a n c e C o n t r o l l e r (   ' D e f a u l t '   ) ;  
 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . C h a n g e P i v o t P o s i t i o n C o n t r o l l e r (   ' D e f a u l t '   ) ;  
 	 	  
 	 	 	  
 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r   =   t h e G a m e . G e t G a m e C a m e r a ( ) . G e t A c t i v e P i v o t R o t a t i o n C o n t r o l l e r ( ) ;  
 	 	 	 m o v e D a t a . p i v o t D i s t a n c e C o n t r o l l e r   =   t h e G a m e . G e t G a m e C a m e r a ( ) . G e t A c t i v e P i v o t D i s t a n c e C o n t r o l l e r ( ) ;  
 	 	 	 m o v e D a t a . p i v o t P o s i t i o n C o n t r o l l e r   =   t h e G a m e . G e t G a m e C a m e r a ( ) . G e t A c t i v e P i v o t P o s i t i o n C o n t r o l l e r ( ) ;  
 	 	 	  
 	 	  
 	 	  
 	 	 	 m o v e D a t a . p i v o t P o s i t i o n C o n t r o l l e r . S e t D e s i r e d P o s i t i o n (   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   ) ;  
  
 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d P i t c h (   - 1 0 . 0 f   ) ;  
 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . m a x P i t c h   =   5 0 . 0 ;  
  
 	 	 	 m o v e D a t a . p i v o t D i s t a n c e C o n t r o l l e r . S e t D e s i r e d D i s t a n c e (   3 . 5 f   ) ;  
  
 	 	 	 i f   (   ! i n t e r i o r C a m e r a   )  
 	 	 	 {  
 	 	 	 	 m o v e D a t a . p i v o t P o s i t i o n C o n t r o l l e r . o f f s e t Z   =   1 . 5 f ;  
 	 	 	 	 D a m p V e c t o r S p r i n g (   m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t ,   m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t V e l ,   V e c t o r (   0 . 5 f ,   2 . 0 f ,   0 . 3 f   ) ,   0 . 2 0 f ,   d t   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 m o v e D a t a . p i v o t P o s i t i o n C o n t r o l l e r . o f f s e t Z   =   1 . 3 f ;  
 	 	 	 	 D a m p V e c t o r S p r i n g (   m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t ,   m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t V e l ,   V e c t o r (   0 . 5 f ,   2 . 3 f ,   0 . 5 f   ) ,   0 . 3 f ,   d t   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 i f (   c u s t o m C a m e r a S t a c k . S i z e ( )   >   0   )  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p r i v a t e   v a r   q u e s t C a m e r a R e q u e s t   :   S Q u e s t C a m e r a R e q u e s t ;  
 	 p r i v a t e   v a r   c a m e r a R e q u e s t T i m e S t a m p   :   f l o a t ;  
 	  
 	 p u b l i c   f u n c t i o n   R e q u e s t Q u e s t C a m e r a (   c a m e r a   :   S Q u e s t C a m e r a R e q u e s t   )  
 	 {  
 	 	 q u e s t C a m e r a R e q u e s t   =   c a m e r a ;  
 	 	 q u e s t C a m e r a R e q u e s t . r e q u e s t T i m e S t a m p   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R e s e t Q u e s t C a m e r a R e q u e s t ( )  
 	 {  
 	 	 v a r   c a m e r a R e q u e s t   :   S Q u e s t C a m e r a R e q u e s t ;  
 	 	  
 	 	 q u e s t C a m e r a R e q u e s t   =   c a m e r a R e q u e s t ;  
 	 }  
 	  
 	 e v e n t   O n G a m e C a m e r a P o s t T i c k (   o u t   m o v e D a t a   :   S C a m e r a M o v e m e n t D a t a ,   d t   :   f l o a t   )  
 	 {  
 	 	 v a r   e n t   :   C E n t i t y ;  
 	 	 v a r   p l a y e r P o s   :   V e c t o r ;  
 	 	 v a r   a n g l e s   :   E u l e r A n g l e s ;  
 	 	  
 	 	 v a r   d i s t a n c e   :   f l o a t ;  
 	 	  
 	 	  
 	 	 i f ( G e t E x p l C a m e r a ( )   & &   s u b s t a t e M a n a g e r . G e t S t a t e C u r ( )   = =   ' I n t e r a c t i o n ' )  
 	 	 {  
 	 	 	 m o v e D a t a . p i v o t D i s t a n c e C o n t r o l l e r . S e t D e s i r e d D i s t a n c e (   1 . 5 f   ) ;  
 	 	 	 D a m p V e c t o r S p r i n g (   m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t ,   m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t V e l ,   V e c t o r (   0 . 7 f ,   - 0 . 3 f ,   0 . 3 f   ) ,   0 . 5 f ,   d t   ) ;  
 	 	 }  
 	 	  
 	 	 	 	  
 	 	  
 	 	  
 	 	 i f   (   q u e s t C a m e r a R e q u e s t . r e q u e s t T i m e S t a m p   >   0   )  
 	 	 {  
 	 	 	 i f   (   q u e s t C a m e r a R e q u e s t . d u r a t i o n   >   0   & &   q u e s t C a m e r a R e q u e s t . r e q u e s t T i m e S t a m p   +   q u e s t C a m e r a R e q u e s t . d u r a t i o n   <   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( )   )  
 	 	 	 {  
 	 	 	 	 R e s e t Q u e s t C a m e r a R e q u e s t ( ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	 	  
 	 	 	 i f (   q u e s t C a m e r a R e q u e s t . l o o k A t T a g   )  
 	 	 	 {  
 	 	 	 	 e n t   =   t h e G a m e . G e t E n t i t y B y T a g (   q u e s t C a m e r a R e q u e s t . l o o k A t T a g   ) ;  
 	 	 	 	 p l a y e r P o s   =   G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 	 p l a y e r P o s . Z   + =   1 . 8 f ;  
 	 	 	 	  
 	 	 	 	 a n g l e s   =   V e c T o R o t a t i o n (   e n t . G e t W o r l d P o s i t i o n ( )   -   p l a y e r P o s   ) ;  
 	 	 	 	  
 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d H e a d i n g (   a n g l e s . Y a w   ) ;  
 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d P i t c h (   - a n g l e s . P i t c h   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f (   q u e s t C a m e r a R e q u e s t . r e q u e s t Y a w   )  
 	 	 	 	 {  
 	 	 	 	 	 a n g l e s   =   G e t W o r l d R o t a t i o n ( ) ;  
 	 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d H e a d i n g (   a n g l e s . Y a w   +   q u e s t C a m e r a R e q u e s t . y a w   ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f (   q u e s t C a m e r a R e q u e s t . r e q u e s t P i t c h   )  
 	 	 	 	 {  
 	 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d P i t c h (   q u e s t C a m e r a R e q u e s t . p i t c h   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 v a r   w a s R u n n i n g   :   b o o l ;  
 	 v a r   v e l   :   f l o a t ;  
 	 v a r   s m o o t h T i m e 	 :   f l o a t ;  
 	  
 	 v a r   c o n s t D a m p e r   :   C o n s t D a m p e r ;  
 	 v a r   r o t M u l t V e l 	 :   f l o a t ;  
 	  
 	 p u b l i c   f u n c t i o n   U p d a t e C a m e r a I n t e r i o r (   o u t   m o v e D a t a   :   S C a m e r a M o v e m e n t D a t a ,   t i m e D e l t a   :   f l o a t   )  
 	 { 	  
 	 	 v a r   c a m D i s t   	 :   f l o a t ;  
 	 	 v a r   c a m O f f s e t   	 :   f l o a t ;  
 	 	 v a r   r o t M u l t D e s t 	 :   f l o a t ;  
 	 	 v a r   r o t M u l t 	 :   f l o a t ;  
 	 	 v a r   a n g l e s 	 	 :   E u l e r A n g l e s ;  
  
 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . C h a n g e P i v o t R o t a t i o n C o n t r o l l e r (   ' E x p l o r a t i o n I n t e r i o r '   ) ;  
 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . C h a n g e P i v o t D i s t a n c e C o n t r o l l e r (   ' D e f a u l t '   ) ;  
 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . C h a n g e P i v o t P o s i t i o n C o n t r o l l e r (   ' D e f a u l t '   ) ;  
 	  
 	 	  
 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r   =   t h e G a m e . G e t G a m e C a m e r a ( ) . G e t A c t i v e P i v o t R o t a t i o n C o n t r o l l e r ( ) ;  
 	 	 m o v e D a t a . p i v o t D i s t a n c e C o n t r o l l e r   =   t h e G a m e . G e t G a m e C a m e r a ( ) . G e t A c t i v e P i v o t D i s t a n c e C o n t r o l l e r ( ) ;  
 	 	 m o v e D a t a . p i v o t P o s i t i o n C o n t r o l l e r   =   t h e G a m e . G e t G a m e C a m e r a ( ) . G e t A c t i v e P i v o t P o s i t i o n C o n t r o l l e r ( ) ;  
 	 	  
  
 	 	 m o v e D a t a . p i v o t P o s i t i o n C o n t r o l l e r . S e t D e s i r e d P o s i t i o n (   G e t W o r l d P o s i t i o n ( ) ,   1 5 . f   ) ;  
  
 	 	 i f   (   ! c o n s t D a m p e r   )  
 	 	 {  
 	 	 	 c o n s t D a m p e r   =   n e w   C o n s t D a m p e r   i n   t h i s ;  
 	 	 	 c o n s t D a m p e r . S e t D a m p (   0 . 3 5 f   ) ;  
 	 	 } 	 	  
 	 	  
 	 	 i f   (   r a w P l a y e r S p e e d   < =   0   | |   A b s F (   A n g l e D i s t a n c e (   r a w P l a y e r H e a d i n g ,   G e t H e a d i n g ( )   )   )   >   1 3 5   )  
 	 	 	 c o n s t D a m p e r . R e s e t ( ) ;  
 	 	 e l s e   i f   (   t h e G a m e . I s U b e r M o v e m e n t E n a b l e d ( )   )  
 	 	 	 r o t M u l t   =   0 . 5 f ;  
 	 	 e l s e  
 	 	 	 r o t M u l t   =   1 . f ;  
  
 	 	 r o t M u l t   =   c o n s t D a m p e r . U p d a t e A n d G e t (   t i m e D e l t a ,   r o t M u l t   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 i f   (   A b s F (   A n g l e D i s t a n c e (   G e t H e a d i n g ( ) ,   m o v e D a t a . p i v o t R o t a t i o n V a l u e . Y a w   )   )   <   1 3 5 . f   & &   r a w P l a y e r S p e e d   >   0   )  
 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d H e a d i n g (   G e t H e a d i n g ( ) ,   r o t M u l t   ) ;  
 	 	 e l s e    
 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d H e a d i n g (   m o v e D a t a . p i v o t R o t a t i o n V a l u e . Y a w   ) ;  
 	 	  
 	 	 m o v e D a t a . p i v o t D i s t a n c e C o n t r o l l e r . S e t D e s i r e d D i s t a n c e (   1 . 5 f   ) ;  
 	 	  
 	 	 a n g l e s   =   V e c T o R o t a t i o n (   G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t V e l o c i t y ( )   ) ; 	 	  
 	 	 i f   (   A b s F (   a n g l e s . P i t c h   )   <   8 . f   | |   b L A x i s R e l e a s e d   )  
 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d P i t c h (   - 1 0 . f   ) ;  
 	 	 e l s e  
 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d P i t c h (   - a n g l e s . P i t c h   -   1 8 . f   ) ; 	  
 	 	  
 	 	 i f   (   I s G u a r d e d ( )   )  
 	 	 	 m o v e D a t a . p i v o t P o s i t i o n C o n t r o l l e r . o f f s e t Z   =   1 . 0 f ;  
 	 	 e l s e    
 	 	 	 m o v e D a t a . p i v o t P o s i t i o n C o n t r o l l e r . o f f s e t Z   =   1 . 3 f ;  
 	 	  
 	 	  
 	 	  
 	 	 	 i f   (   p l a y e r M o v e T y p e   > =   P M T _ R u n   )  
 	 	 	 { 	 	  
 	 	 	 	  
 	 	 	 	 c a m D i s t   =   - 0 . 5 f ;  
 	 	 	 	 c a m O f f s e t   =   0 . 2 5 ;  
 	 	 	 	  
 	 	 	 	 i f   (   ! w a s R u n n i n g   )  
 	 	 	 	 {  
 	 	 	 	 	 s m o o t h T i m e   =   1 . f ;  
 	 	 	 	 	 w a s R u n n i n g   =   t r u e ;  
 	 	 	 	 } 	 	 	 	  
 	 	 	 	 D a m p F l o a t S p r i n g (   s m o o t h T i m e ,   v e l ,   0 . 1 ,   0 . 5 ,   t i m e D e l t a   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 c a m D i s t   =   0 . f ; 	 	 	  
 	 	 	 	 c a m O f f s e t   =   0 . 4 f ;  
 	 	 	 	 s m o o t h T i m e   =   0 . 2 f ;  
 	 	 	 	 w a s R u n n i n g   =   f a l s e ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
  
 	 	 	 D a m p V e c t o r S p r i n g (   m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t ,   m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t V e l ,   V e c t o r (   0 . 3 f ,   c a m D i s t ,   0 . 3 f   ) ,   s m o o t h T i m e ,   t i m e D e l t a   ) ; 	  
 	 	 	  
 	 	  
 	 	  
 	 	  
 	 	 	  
 	 }  
 	  
 	  
 	 p r i v a t e   v a r   c l o s e S i g n C a m   :   b o o l ;  
 	 p u b l i c   f u n c t i o n   G e t C l o s e S i g n C a m ( )   :   b o o l   { r e t u r n   c l o s e S i g n C a m ; }  
 	  
 	  
 	 v a r   w a s B R A x i s P u s h e d   	 	 	 	 	 :   b o o l ;  
 	 p r o t e c t e d   f u n c t i o n   U p d a t e C a m e r a C h a n n e l e d S i g n (   o u t   m o v e D a t a   :   S C a m e r a M o v e m e n t D a t a ,   t i m e D e l t a   :   f l o a t   )   :   b o o l  
 	 { 	  
 	 	 v a r   s c r e e n S p a c e O f f s e t 	 :   f l o a t ;  
 	 	 v a r   s c r e e n S p a c e O f f s e t F w d   :   f l o a t ;  
 	 	 v a r   s c r e e n S p a c e O f f s e t U p 	 :   f l o a t ;  
 	 	 v a r   h e a d i n g 	 	 	 	 :   f l o a t ;  
 	 	 v a r   p i t c h 	 	 	 	 :   f l o a t ;  
 	 	 v a r   p l a y e r T o T a r g e t R o t   	 :   E u l e r A n g l e s ;  
 	 	 v a r   r i g h t O f f s e t 	 	 	 :   f l o a t   =   - 2 0 . f ;  
 	 	 v a r   l e f t O f f s e t 	 	 	 :   f l o a t   =   1 5 . f ;  
 	 	 v a r   a n g l e s 	 	 	 	 :   E u l e r A n g l e s ;  
 	 	  
 	 	 v a r   v e c 	 	 	 	 	 :   V e c t o r ;  
 	 	  
 	 	 i f (   t h i s . I s C u r r e n t S i g n C h a n n e l e d ( )   & &   t h i s . G e t C u r r e n t l y C a s t S i g n ( )   ! =   S T _ Q u e n   & &   t h i s . G e t C u r r e n t l y C a s t S i g n ( )   ! =   S T _ Y r d e n   )  
 	 	 {  
 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . C h a n g e P i v o t R o t a t i o n C o n t r o l l e r (   ' S i g n C h a n n e l '   ) ;  
 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . C h a n g e P i v o t D i s t a n c e C o n t r o l l e r (   ' S i g n C h a n n e l '   ) ;  
 	 	 	  
 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r   =   t h e G a m e . G e t G a m e C a m e r a ( ) . G e t A c t i v e P i v o t R o t a t i o n C o n t r o l l e r ( ) ;  
 	 	 	 m o v e D a t a . p i v o t D i s t a n c e C o n t r o l l e r   =   t h e G a m e . G e t G a m e C a m e r a ( ) . G e t A c t i v e P i v o t D i s t a n c e C o n t r o l l e r ( ) ;  
 	 	 	  
  
 	 	 	 i f   (   G e t C u r r e n t l y C a s t S i g n ( )   = =   S T _ A x i i   )  
 	 	 	 	 l e f t O f f s e t   =   3 2 . f ;  
  
 	 	 	 i f   (   o T C a m e r a O f f s e t   ! =   l e f t O f f s e t   & &   o T C a m e r a O f f s e t   ! =   r i g h t O f f s e t     )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 i f (   ( G e t E x p l C a m e r a ( )   & &   ! I s I n C o m b a t ( ) )   | |   ( G e t C m b t C a m e r a ( )   & &   I s I n C o m b a t ( ) )   )  
 	 	 	 	 {  
 	 	 	 	 	 o T C a m e r a O f f s e t   =   l e f t O f f s e t ;  
 	 	 	 	 	 c l o s e S i g n C a m   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f (   (   i n t e r i o r C a m e r a   & &   ! m o v e T a r g e t   )  
 	 	 	 	 	 | |   (   A n g l e D i s t a n c e (   G e t H e a d i n g ( ) ,   m o v e D a t a . p i v o t R o t a t i o n V a l u e . Y a w   )   <   0   ) )  
 	 	 	 	 	 o T C a m e r a O f f s e t   =   l e f t O f f s e t ; 	 	 	 	  
 	 	 	 	 e l s e  
 	 	 	 	 	 o T C a m e r a O f f s e t   =   r i g h t O f f s e t ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   o T C a m e r a O f f s e t   = =   l e f t O f f s e t   )  
 	 	 	 {  
 	 	 	 	 s c r e e n S p a c e O f f s e t   =   0 . 9 5 f ;    
 	 	 	 	 o T C a m e r a P i t c h O f f s e t   =   1 3 . f ;    
 	 	 	 	  
 	 	 	 }  
 	 	 	 e l s e   i f   (   o T C a m e r a O f f s e t   = =   r i g h t O f f s e t   )  
 	 	 	 {  
 	 	 	 	 s c r e e n S p a c e O f f s e t   =   - 0 . 9 5 f ;    
 	 	 	 	 o T C a m e r a P i t c h O f f s e t   =   1 3 . f ;    
 	 	 	 	  
 	 	 	 }  
 	 	  
 	 	 	 m o v e D a t a . p i v o t P o s i t i o n C o n t r o l l e r . o f f s e t Z   =   1 . 3 f ;  
 	 	 	  
 	 	 	 i f   (   ! d e l a y C a m e r a O r i e n t a t i o n C h a n g e   )  
 	 	 	 {  
 	 	 	 	 i f   (   G e t O r i e n t a t i o n T a r g e t ( )   = =   O T _ C a m e r a   | |   G e t O r i e n t a t i o n T a r g e t ( )   = =   O T _ C a m e r a O f f s e t   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   b R A x i s R e l e a s e d   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 h e a d i n g   =   m o v e D a t a . p i v o t R o t a t i o n V a l u e . Y a w ;  
 	 	 	 	 	 	 p i t c h   =   m o v e D a t a . p i v o t R o t a t i o n V a l u e . P i t c h ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 h e a d i n g   =   m o v e D a t a . p i v o t R o t a t i o n V a l u e . Y a w   +   o T C a m e r a O f f s e t ;  
 	 	 	 	 	 	 p i t c h   =   m o v e D a t a . p i v o t R o t a t i o n V a l u e . P i t c h ;    
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   G e t O r i e n t a t i o n T a r g e t ( )   = =   O T _ A c t o r   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   G e t D i s p l a y T a r g e t ( )   )  
 	 	 	 	 	 	 v e c   =   G e t D i s p l a y T a r g e t ( ) . G e t W o r l d P o s i t i o n ( )   -   G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 	 	 e l s e   i f   (   s l i d e T a r g e t   ) 	  
 	 	 	 	 	 	 v e c   =   s l i d e T a r g e t . G e t W o r l d P o s i t i o n ( )   -   G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 	 	 e l s e   i f   (   G e t T a r g e t ( )   )  
 	 	 	 	 	 	 v e c   =   G e t T a r g e t ( ) . G e t W o r l d P o s i t i o n ( )   -   G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 v e c   =   G e t H e a d i n g V e c t o r ( ) ;  
 	 	 	 	 	 	  
 	 	 	 	 	 a n g l e s   =   V e c T o R o t a t i o n (   v e c   ) ;  
 	 	 	 	 	 h e a d i n g   =   a n g l e s . Y a w   +   o T C a m e r a O f f s e t ;  
 	 	 	 	 	 p i t c h   =   - a n g l e s . P i t c h   -   o T C a m e r a P i t c h O f f s e t ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 a n g l e s   =   V e c T o R o t a t i o n (   G e t H e a d i n g V e c t o r ( )   ) ;  
 	 	 	 	 	 h e a d i n g   =   a n g l e s . Y a w   +   o T C a m e r a O f f s e t ;  
 	 	 	 	 	 p i t c h   =   - a n g l e s . P i t c h   -   o T C a m e r a P i t c h O f f s e t ;  
 	 	 	 	 }  
 	 	 	  
 	 	 	 	 i f   (   ! w a s B R A x i s P u s h e d   & &   (   ! b R A x i s R e l e a s e d   )   )  
 	 	 	 	 	 w a s B R A x i s P u s h e d   =   t r u e ;  
  
 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d H e a d i n g (   h e a d i n g   ,   2 . f   ) ;  
 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d P i t c h (   p i t c h   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d H e a d i n g (   m o v e D a t a . p i v o t R o t a t i o n V a l u e . Y a w ,   1 . f   ) ;  
 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d P i t c h (   - o T C a m e r a P i t c h O f f s e t   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   m o v e D a t a . p i v o t R o t a t i o n V a l u e . P i t c h   < =   5 . f   & &   m o v e D a t a . p i v o t R o t a t i o n V a l u e . P i t c h   > =   - 1 5 . f   )  
 	 	 	 {  
 	 	 	 	 s c r e e n S p a c e O f f s e t F w d   =   0 . 5 ;    
 	 	 	 	 s c r e e n S p a c e O f f s e t U p   =   0 . 0 ;    
 	 	 	 }  
 	 	 	 e l s e   i f   (   m o v e D a t a . p i v o t R o t a t i o n V a l u e . P i t c h   >   0   )  
 	 	 	 {  
 	 	 	 	 s c r e e n S p a c e O f f s e t F w d   =   m o v e D a t a . p i v o t R o t a t i o n V a l u e . P i t c h * 0 . 0 0 7 2 7   +   1 . 2 7 5 f ;  
 	 	 	 	  
 	 	 	 	 s c r e e n S p a c e O f f s e t F w d   =   0 . 5 ; 	  
 	 	 	 	  
 	 	 	 	 s c r e e n S p a c e O f f s e t U p   =   - m o v e D a t a . p i v o t R o t a t i o n V a l u e . P i t c h * 0 . 0 0 7 2 7   +   0 . 4 3 6 3 f ;  
 	 	 	 	  
 	 	 	 	 s c r e e n S p a c e O f f s e t U p   =   0 ; 	 	  
 	 	 	 }  
 	 	 	 e l s e 	  
 	 	 	 {  
 	 	 	 	 i f   (   G e t C u r r e n t l y C a s t S i g n ( )   = =   S T _ A x i i   )  
 	 	 	 	 {  
 	 	 	 	 	 s c r e e n S p a c e O f f s e t F w d   =   - m o v e D a t a . p i v o t R o t a t i o n V a l u e . P i t c h * 0 . 0 4 2 5   +   0 . 8 6 2 5 f ; 	 	  
 	 	 	 	 	  
 	 	 	 	 	 s c r e e n S p a c e O f f s e t F w d   =   0 . 5 ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 s c r e e n S p a c e O f f s e t F w d   =   - m o v e D a t a . p i v o t R o t a t i o n V a l u e . P i t c h * 0 . 0 3 5   +   0 . 7 5 f ;  
 	 	 	 	 	  
 	 	 	 	 	 s c r e e n S p a c e O f f s e t F w d   =   0 . 5 ;  
 	 	 	 	 }  
 	 	 	 	 s c r e e n S p a c e O f f s e t U p   =   - m o v e D a t a . p i v o t R o t a t i o n V a l u e . P i t c h * 0 . 0 0 5   +   0 . 3 2 5 f ;  
 	 	 	 	  
 	 	 	 	 s c r e e n S p a c e O f f s e t U p   =   0 ; 	 	 	 	  
 	 	 	 }  
 	 	 	 	  
 	 	 	 D a m p V e c t o r S p r i n g (   m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t ,   m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t V e l ,   V e c t o r (   s c r e e n S p a c e O f f s e t ,   s c r e e n S p a c e O f f s e t F w d ,   s c r e e n S p a c e O f f s e t U p   ) ,   0 . 2 5 f ,   t i m e D e l t a   ) ;  
 	 	 	 m o v e D a t a . p i v o t D i s t a n c e C o n t r o l l e r . S e t D e s i r e d D i s t a n c e (   2 . 8 f ,   5 . f   ) ; 	  
 	 	 	 m o v e D a t a . p i v o t P o s i t i o n C o n t r o l l e r . S e t D e s i r e d P o s i t i o n (   G e t W o r l d P o s i t i o n ( )   ) ; 	 	  
 	 	  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 c l o s e S i g n C a m   =   f a l s e ; 	  
 	 	 	 t h i s . w a s B R A x i s P u s h e d   =   f a l s e ;  
 	 	 	  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 } 	  
  
 	 p r o t e c t e d   f u n c t i o n   U p d a t e C a m e r a F o r S p e c i a l A t t a c k (   o u t   m o v e D a t a   :   S C a m e r a M o v e m e n t D a t a ,   t i m e D e l t a   :   f l o a t   )   :   b o o l  
 	 { 	  
 	 	 v a r   s c r e e n S p a c e O f f s e t 	 :   f l o a t ;  
 	 	 v a r   t e m p H e a d i n g 	 	 	 :   f l o a t ;  
 	 	 v a r   c a m e r a O f f s e t L e f t 	 :   f l o a t ;  
 	 	 v a r   c a m e r a O f f s e t R i g h t 	 :   f l o a t ;  
 	 	  
 	 	 i f   (   ! s p e c i a l A t t a c k C a m e r a   )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	  
 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . F o r c e M a n u a l C o n t r o l H o r T i m e o u t ( ) ;  
 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . F o r c e M a n u a l C o n t r o l V e r T i m e o u t ( ) ; 	  
 	 	  
 	 	  
 	 	 	 c a m e r a O f f s e t L e f t   =   3 0 . f ;  
 	 	 	 c a m e r a O f f s e t R i g h t   =   - 3 0 . f ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . C h a n g e P i v o t R o t a t i o n C o n t r o l l e r (   ' S i g n C h a n n e l '   ) ;  
 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . C h a n g e P i v o t D i s t a n c e C o n t r o l l e r (   ' S i g n C h a n n e l '   ) ;  
 	 	  
 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r   =   t h e G a m e . G e t G a m e C a m e r a ( ) . G e t A c t i v e P i v o t R o t a t i o n C o n t r o l l e r ( ) ;  
 	 	 m o v e D a t a . p i v o t D i s t a n c e C o n t r o l l e r   =   t h e G a m e . G e t G a m e C a m e r a ( ) . G e t A c t i v e P i v o t D i s t a n c e C o n t r o l l e r ( ) ;  
  
 	 	 i f   (   s l i d e T a r g e t   )  
 	 	 	 t e m p H e a d i n g   =   V e c H e a d i n g (   s l i d e T a r g e t . G e t W o r l d P o s i t i o n ( )   -   G e t W o r l d P o s i t i o n ( )   ) ;  
 	 	 e l s e  
 	 	 	 t e m p H e a d i n g   =   G e t H e a d i n g ( ) ;  
 	 	 	  
 	 	 o T C a m e r a P i t c h O f f s e t   =   0 . f ; 	 	  
 	 	 	  
 	 	 i f (   (   i n t e r i o r C a m e r a   & &   ! m o v e T a r g e t   )  
 	 	 	 | |   (   A n g l e D i s t a n c e (   t e m p H e a d i n g ,   m o v e D a t a . p i v o t R o t a t i o n V a l u e . Y a w   )   <   0   )   )  
 	 	 	 o T C a m e r a O f f s e t   =   c a m e r a O f f s e t L e f t ; 	 	 	 	  
 	 	 e l s e  
 	 	 	 o T C a m e r a O f f s e t   =   c a m e r a O f f s e t R i g h t ;  
 	 	  
 	 	 i f   (   o T C a m e r a O f f s e t   = =   c a m e r a O f f s e t L e f t   )  
 	 	 {  
 	 	 	 i f   (   d e l a y C a m e r a O r i e n t a t i o n C h a n g e   | |   d e l a y O r i e n t a t i o n C h a n g e   )  
 	 	 	 {  
 	 	 	 	 s c r e e n S p a c e O f f s e t   =   0 . 7 5 f ;  
 	 	 	 	 m o v e D a t a . p i v o t D i s t a n c e C o n t r o l l e r . S e t D e s i r e d D i s t a n c e (   1 . 6 f ,   3 . f   ) ;  
 	 	 	 	 m o v e D a t a . p i v o t P o s i t i o n C o n t r o l l e r . o f f s e t Z   =   1 . 4 f ;  
 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d P i t c h (   - 1 5 . f   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 s c r e e n S p a c e O f f s e t   =   0 . 7 f ;  
 	 	 	 	 m o v e D a t a . p i v o t D i s t a n c e C o n t r o l l e r . S e t D e s i r e d D i s t a n c e (   3 . 2 5 f   ) ;  
 	 	 	 	 m o v e D a t a . p i v o t P o s i t i o n C o n t r o l l e r . o f f s e t Z   =   1 . 2 f ;  
 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d P i t c h (   - 1 0 . f   ) ; 	 	 	  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   (   o T C a m e r a O f f s e t   = =   c a m e r a O f f s e t R i g h t   )  
 	 	 {  
 	 	 	 i f   (   d e l a y C a m e r a O r i e n t a t i o n C h a n g e   | |   d e l a y O r i e n t a t i o n C h a n g e   )  
 	 	 	 {  
 	 	 	 	 s c r e e n S p a c e O f f s e t   =   - 0 . 8 5 f ;  
 	 	 	 	 m o v e D a t a . p i v o t D i s t a n c e C o n t r o l l e r . S e t D e s i r e d D i s t a n c e (   1 . 6 f ,   3 . f   ) ;  
 	 	 	 	 m o v e D a t a . p i v o t P o s i t i o n C o n t r o l l e r . o f f s e t Z   =   1 . 4 f ;  
 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d P i t c h (   - 1 5 . f   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 s c r e e n S p a c e O f f s e t   =   - 0 . 8 f ;  
 	 	 	 	 m o v e D a t a . p i v o t D i s t a n c e C o n t r o l l e r . S e t D e s i r e d D i s t a n c e (   3 . 2 5 f   ) ;  
 	 	 	 	 m o v e D a t a . p i v o t P o s i t i o n C o n t r o l l e r . o f f s e t Z   =   1 . 2 f ;  
 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d P i t c h (   - 1 0 . f   ) ; 	 	 	  
 	 	 	 } 	 	  
 	 	 }  
 	 	 e l s e    
 	 	 {  
 	 	 	 m o v e D a t a . p i v o t D i s t a n c e C o n t r o l l e r . S e t D e s i r e d D i s t a n c e (   1 . 2 5 f ,   3 . f   ) ;  
 	 	 	 m o v e D a t a . p i v o t P o s i t i o n C o n t r o l l e r . o f f s e t Z   =   1 . 3 f ;  
 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d P i t c h (   - 5 . 5 f   ) ; 	 	 	  
 	 	 }  
 	 	  
 	 	 D a m p V e c t o r S p r i n g (   m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t ,   m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t V e l ,   V e c t o r (   s c r e e n S p a c e O f f s e t ,   0 . f ,   0 . f   ) ,   1 . f ,   t i m e D e l t a   ) ;  
 	 	  
 	 	 i f   (   ! d e l a y C a m e r a O r i e n t a t i o n C h a n g e   )  
 	 	 {  
 	 	 	 i f   (   m o v e T a r g e t   )  
 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d H e a d i n g (   G e t H e a d i n g ( )   +   o T C a m e r a O f f s e t ,   0 . 5 f   ) ;  
 	 	 	 e l s e  
 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d H e a d i n g (   G e t H e a d i n g ( )   +   o T C a m e r a O f f s e t ,   1 . f   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d H e a d i n g (   m o v e D a t a . p i v o t R o t a t i o n V a l u e . Y a w ,   1 . f   ) ;  
 	 	  
 	 	 m o v e D a t a . p i v o t P o s i t i o n C o n t r o l l e r . S e t D e s i r e d P o s i t i o n (   G e t W o r l d P o s i t i o n ( )   ) ;  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
  
  
 	 p r i v a t e   v a r   f o v V e l   :   f l o a t ;  
 	 p r i v a t e   v a r   s p r i n t O f f s e t   :   V e c t o r ;  
 	 p r i v a t e   v a r   p r e v i o u s O f f s e t   :   b o o l ;  
 	 p r i v a t e   v a r   p r e v i o u s R o t a t i o n V e l o c i t y   :   f l o a t ;  
 	 p r i v a t e   v a r   p i v o t R o t a t i o n T i m e S t a m p   	 :   f l o a t ;  
 	 p r o t e c t e d   f u n c t i o n   U p d a t e C a m e r a S p r i n t (   o u t   m o v e D a t a   :   S C a m e r a M o v e m e n t D a t a ,   t i m e D e l t a   :   f l o a t   )  
 	 {  
 	 	 v a r   a n g l e D i f f   :   f l o a t ;  
 	 	 v a r   c a m O f f s e t V e c t o r   :   V e c t o r ;  
 	 	 v a r   s m o o t h S p e e d   :   f l o a t ;  
 	 	 v a r   c a m e r a   :   C C u s t o m C a m e r a ;  
 	 	 v a r   c a m A n g u l a r S p e e d   :   f l o a t ;  
 	 	  
 	 	 v a r   p l a y e r T o C a m A n g l e   :   f l o a t ;  
 	 	 v a r   u s e E x p l o r a t i o n S p r i n t C a m 	 :   b o o l ;  
 	 	  
 	 	  
 	 	 i f ( G e t E x p l C a m e r a ( )   | |   G e t C m b t C a m e r a ( ) )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 } 	 	  
 	 	  
 	 	  
 	 	 c a m e r a   =   t h e G a m e . G e t G a m e C a m e r a ( ) ;  
 	 	 i f (   c a m e r a   )  
 	 	 {  
 	 	 	 i f   (   s p r i n t i n g C a m e r a   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 i f (   t h e P l a y e r . G e t A u t o C a m e r a C e n t e r ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . F o r c e M a n u a l C o n t r o l V e r T i m e o u t ( ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 p l a y e r T o C a m A n g l e   =     A b s F (   A n g l e D i s t a n c e (   G e t H e a d i n g ( ) ,   m o v e D a t a . p i v o t R o t a t i o n V a l u e . Y a w   )   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 	 u s e E x p l o r a t i o n S p r i n t C a m   =   f a l s e ;  
 	 	 	 	  
 	 	 	 	 i f   (   u s e E x p l o r a t i o n S p r i n t C a m   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   p l a y e r T o C a m A n g l e   < =   4 5     )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . C h a n g e P i v o t R o t a t i o n C o n t r o l l e r (   ' S p r i n t '   ) ;  
 	 	 	 	 	 	  
 	 	 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r   =   t h e G a m e . G e t G a m e C a m e r a ( ) . G e t A c t i v e P i v o t R o t a t i o n C o n t r o l l e r ( ) ; 	  
  
 	 	 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d H e a d i n g (   G e t H e a d i n g ( ) ,   0 . 2 5 f   ) ;  
 	 	 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d P i t c h (   - 3 . 5 f ,   0 . 5 f   ) ;  
 	 	 	 	 	 	 t h e P l a y e r . E n a b l e M a n u a l C a m e r a C o n t r o l (   t r u e ,   ' S p r i n t '   ) ; 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 { 	 	 	  
 	 	 	 	 	 	 t h e P l a y e r . E n a b l e M a n u a l C a m e r a C o n t r o l (   f a l s e ,   ' S p r i n t '   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   t h e G a m e . I s U b e r M o v e m e n t E n a b l e d ( )   )  
 	 	 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d H e a d i n g (   G e t H e a d i n g ( ) ,   0 . 3 5 f   ) ;  
  
 	 	 	 	 	 t h e P l a y e r . E n a b l e M a n u a l C a m e r a C o n t r o l (   t r u e ,   ' S p r i n t '   ) ; 	 	  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f   (   b R A x i s R e l e a s e d   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   A b s F (   r a w L e f t J o y R o t   )   >   2 5   )  
 	 	 	 	 	 	 a n g l e D i f f   =   A n g l e D i s t a n c e (   G e t H e a d i n g ( ) ,   m o v e D a t a . p i v o t R o t a t i o n V a l u e . Y a w   ) ;  
 	 	 	 	 	  
 	 	 	 	 	 p i v o t R o t a t i o n T i m e S t a m p   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	 	 	 	 p r e v i o u s R o t a t i o n V e l o c i t y   =   0 . f ; 	  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   p r e v i o u s R o t a t i o n V e l o c i t y   < =   0   & &   A b s F (   m o v e D a t a . p i v o t R o t a t i o n V e l o c i t y . Y a w   )   >   2 5 0   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 p i v o t R o t a t i o n T i m e S t a m p   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	 	 	 	 	 p r e v i o u s R o t a t i o n V e l o c i t y   =   A b s F (   m o v e D a t a . p i v o t R o t a t i o n V e l o c i t y . Y a w   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f   (   p i v o t R o t a t i o n T i m e S t a m p   +   0 . 4 f   < =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( )   & &   A b s F (   m o v e D a t a . p i v o t R o t a t i o n V e l o c i t y . Y a w   )   >   2 5 0   )  
 	 	 	 	 	 a n g l e D i f f   =   V e c H e a d i n g (   r a w R i g h t J o y V e c   ) ;  
 	  
 	 	 	 	 i f   (   u s e E x p l o r a t i o n S p r i n t C a m   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   p l a y e r T o C a m A n g l e   >   9 0   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 c a m O f f s e t V e c t o r . X   =   0 . f ;  
 	 	 	 	 	 	 s m o o t h S p e e d   =   1 . f ; 	 	 	 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f   (   a n g l e D i f f   >   1 5 . f   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 c a m O f f s e t V e c t o r . X   =   - 0 . 8 ;  
 	 	 	 	 	 	 s m o o t h S p e e d   =   1 . f ;  
 	 	 	 	 	 	 p r e v i o u s O f f s e t   =   t r u e ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f   (   a n g l e D i f f   <   - 1 5 . f   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 c a m O f f s e t V e c t o r . X   =   0 . 4 7 5 f ;  
 	 	 	 	 	 	 s m o o t h S p e e d   =   1 . 5 f ;  
 	 	 	 	 	 	 p r e v i o u s O f f s e t   =   f a l s e ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   p r e v i o u s O f f s e t   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 c a m O f f s e t V e c t o r . X   =   - 0 . 8 ;  
 	 	 	 	 	 	 	 s m o o t h S p e e d   =   1 . 5 f ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 c a m O f f s e t V e c t o r . X   =   0 . 4 7 5 f ;  
 	 	 	 	 	 	 	 s m o o t h S p e e d   =   1 . 5 f ; 	 	 	 	 	 	  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 	 c a m O f f s e t V e c t o r . Y   =   1 . 4 f ;  
 	 	 	 	 	 c a m O f f s e t V e c t o r . Z   =   0 . 2 7 5 f ;  
 	 	 	 	 }  
 	 	 	 	 e l s e    
 	 	 	 	 { 	  
 	 	 	 	 	  
 	 	 	 	 	 s m o o t h S p e e d   =   0 . 7 5 f ;  
 	 	 	 	 	  
 	 	 	 	 	 c a m O f f s e t V e c t o r . X   =   0 . f ;  
 	 	 	 	 	 c a m O f f s e t V e c t o r . Y   =   1 . f ;  
 	 	 	 	 	 c a m O f f s e t V e c t o r . Z   =   0 . 2 f ;  
 	 	 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d P i t c h (   - 1 0 . f ,   0 . 5 f   ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 D a m p V e c t o r C o n s t (   s p r i n t O f f s e t ,   c a m O f f s e t V e c t o r ,   s m o o t h S p e e d ,   t i m e D e l t a   ) ;  
 	 	 	 	  
 	 	 	 	 m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t   =   s p r i n t O f f s e t ;  
 	 	 	 	  
 	 	 	 	 D a m p F l o a t S p r i n g (   c a m e r a . f o v ,   f o v V e l ,   7 0 . f ,   1 . 0 ,   t i m e D e l t a   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 s p r i n t O f f s e t   =   m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t ;  
 	 	 	 	 D a m p F l o a t S p r i n g (   c a m e r a . f o v ,   f o v V e l ,   6 0 . f ,   1 . 0 ,   t i m e D e l t a   ) ;  
 	 	 	 	 p r e v i o u s O f f s e t   =   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   E n a b l e S p r i n t i n g C a m e r a (   f l a g   :   b o o l   )  
 	 { 	  
 	 	 i f (   ! t h e G a m e . I s U b e r M o v e m e n t E n a b l e d ( )   & &   ! u s e S p r i n t i n g C a m e r a A n i m   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 } 	  
 	  
 	 	 s u p e r . E n a b l e S p r i n t i n g C a m e r a (   f l a g   ) ;  
 	 	  
 	 	 i f   (   ! f l a g   )  
 	 	 {  
 	 	 	 t h e P l a y e r . E n a b l e M a n u a l C a m e r a C o n t r o l (   t r u e ,   ' S p r i n t '   ) ;  
 	 	 }  
 	 } 	  
  
 	 p r o t e c t e d   f u n c t i o n   U p d a t e C a m e r a C o m b a t A c t i o n B u t N o t I n C o m b a t (   o u t   m o v e D a t a   :   S C a m e r a M o v e m e n t D a t a ,   t i m e D e l t a   :   f l o a t   )  
 	 { 	  
 	 	 v a r   v e l 	 	 	 :   V e c t o r ;  
 	 	 v a r   h e a d i n g   	 :   f l o a t ;  
 	 	 v a r   p i t c h 	 	 :   f l o a t ;  
 	 	 v a r   h e a d i n g M u l t   :   f l o a t ;  
 	 	 v a r   p i t c h M u l t 	 :   f l o a t ;  
 	 	 v a r   c a m O f f s e t 	 :   V e c t o r ;  
 	 	 v a r   b u f f   	 	 :   C B a s e G a m e p l a y E f f e c t ;  
 	 	 v a r   r u n n i n g A n d A l e r t N e a r 	 	 :   b o o l ;  
 	 	 v a r   d e s i r e d D i s t 	 	 	 	 :   f l o a t ;  
 	  
 	 	 i f   (   ! G e t E x p l C a m e r a ( )   & &   ! G e t C m b t C a m e r a ( )   & &       (   ! I s C u r r e n t S i g n C h a n n e l e d ( )   | |   G e t C u r r e n t l y C a s t S i g n ( )   = =   S T _ Q u e n   | |   G e t C u r r e n t l y C a s t S i g n ( )   = =   S T _ Y r d e n   )   & &   ! s p e c i a l A t t a c k C a m e r a   & &   ! I s I n C o m b a t A c t i o n F r i e n d l y ( )   )  
 	 	 {  
 	 	 	 b u f f   =   G e t C u r r e n t l y A n i m a t e d C S ( ) ;  
 	 	 	 r u n n i n g A n d A l e r t N e a r   =   G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ A l e r t N e a r   & &   p l a y e r M o v e T y p e   = =   P M T _ R u n   & &   ! G e t D i s p l a y T a r g e t ( ) ;  
 	 	 	 i f   (   r u n n i n g A n d A l e r t N e a r   | |  
 	 	 	 	 (   G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ A l e r t F a r   & &   ! I s I n C o m b a t A c t i o n ( )   & &   ! b u f f   )   )  
 	 	 	 {  
 	 	 	 	 c a m O f f s e t . X   =   0 . f ;  
 	 	 	 	 c a m O f f s e t . Y   =   0 . f ;  
 	 	 	 	 c a m O f f s e t . Z   =   - 0 . 1 f ;  
 	 	 	 	  
 	 	 	 	 i f   (   r u n n i n g A n d A l e r t N e a r   )  
 	 	 	 	 {  
 	 	 	 	 	 m o v e D a t a . p i v o t D i s t a n c e C o n t r o l l e r . S e t D e s i r e d D i s t a n c e (   4 . f   ) ;  
 	 	 	 	 	 m o v e D a t a . p i v o t P o s i t i o n C o n t r o l l e r . o f f s e t Z   =   1 . 5 f ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 c a m O f f s e t . X   =   0 . f ;  
 	 	 	 	 c a m O f f s e t . Y   =   - 1 . 5 f ;  
 	 	 	 	 c a m O f f s e t . Z   =   - 0 . 2 f ;  
 	 	 	 }  
 	 	 	 	  
 	 	 	 D a m p V e c t o r S p r i n g (   m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t ,   m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t V e l ,   V e c t o r (   c a m O f f s e t . X ,   c a m O f f s e t . Y ,   c a m O f f s e t . Z   ) ,   0 . 4 f ,   t i m e D e l t a   ) ;  
 	 	 	 s p r i n t O f f s e t   =   m o v e D a t a . c a m e r a L o c a l S p a c e O f f s e t ;  
 	 	 	 h e a d i n g   =   m o v e D a t a . p i v o t R o t a t i o n V a l u e . Y a w ;  
 	 	 	  
 	 	 	 i f   (   G e t O r i e n t a t i o n T a r g e t ( )   = =   O T _ C a m e r a   | |   G e t O r i e n t a t i o n T a r g e t ( )   = =   O T _ C a m e r a O f f s e t   )  
 	 	 	 	 p i t c h   =   m o v e D a t a . p i v o t R o t a t i o n V a l u e . P i t c h ;  
 	 	 	 e l s e   i f   (   l a s t A x i s I n p u t I s M o v e m e n t    
 	 	 	 	 	 | |   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ A t t a c k    
 	 	 	 	 	 | |   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ S p e c i a l A t t a c k  
 	 	 	 	 	 | |   (   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ C a s t S i g n   & &   ! I s C u r r e n t S i g n C h a n n e l e d ( )   & &   G e t C u r r e n t l y C a s t S i g n ( )   = =   S T _ Q u e n   )   )  
 	 	 	 {  
 	 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . F o r c e M a n u a l C o n t r o l V e r T i m e o u t ( ) ; 	  
 	 	 	 	 p i t c h   =   - 2 0 . f ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 	 p i t c h   =   m o v e D a t a . p i v o t R o t a t i o n V a l u e . P i t c h ;  
 	 	 	 	  
 	 	 	 h e a d i n g M u l t   =   1 . f ;  
 	 	 	 p i t c h M u l t   =   1 . f ;  
 	 	  
 	 	 	  
 	 	 	 i f (   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ C a s t S i g n    
 	 	 	 	 & &   (   G e t E q u i p p e d S i g n ( )   = =   S T _ A a r d   | |   G e t E q u i p p e d S i g n ( )   = =   S T _ Y r d e n   )    
 	 	 	 	 & &   G e t B e h a v i o r V a r i a b l e (   ' a l t e r n a t e S i g n C a s t '   )   = =   1   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . F o r c e M a n u a l C o n t r o l V e r T i m e o u t ( ) ; 	 	 	  
 	 	 	 	 p i t c h   =   - 2 0 . f ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 } 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 i f   (   I s C u r r e n t S i g n C h a n n e l e d ( )   & &   G e t C u r r e n t l y C a s t S i g n ( )   = =   S T _ Q u e n   )  
 	 	 	 {  
 	 	 	 	 p i t c h   =   m o v e D a t a . p i v o t R o t a t i o n V a l u e . P i t c h ;  
 	 	 	 }  
 	 	 	  
 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d H e a d i n g (   h e a d i n g ,   ) ;  
 	 	 	 m o v e D a t a . p i v o t R o t a t i o n C o n t r o l l e r . S e t D e s i r e d P i t c h (   p i t c h   ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	 e v e n t   O n G a m e C a m e r a E x p l o r a t i o n R o t C t r l C h a n g e ( )  
 	 {  
 	 	 i f (   s u b s t a t e M a n a g e r   )  
 	 	 {  
 	 	 	 r e t u r n   s u b s t a t e M a n a g e r . O n G a m e C a m e r a E x p l o r a t i o n R o t C t r l C h a n g e (   ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	  
 	  
  
 	  
 	 f u n c t i o n   S e t C u s t o m R o t a t i o n (   c u s t o m R o t a t i o n N a m e   :   n a m e ,   r o t H e a d i n g   :   f l o a t ,   r o t S p e e d   :   f l o a t ,   a c t i v e T i m e   :   f l o a t ,   r o t a t e E x i s t i n g D e l t a L o c a t i o n   :   b o o l   )  
 	 {  
 	 	 v a r   m o v e m e n t A d j u s t o r 	 :   C M o v e m e n t A d j u s t o r ;  
 	 	 v a r   t i c k e t   	 	 	 	 :   S M o v e m e n t A d j u s t m e n t R e q u e s t T i c k e t ;  
 	  
 	 	 m o v e m e n t A d j u s t o r   =   G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 t i c k e t   =   m o v e m e n t A d j u s t o r . G e t R e q u e s t (   c u s t o m R o t a t i o n N a m e   ) ;  
 	 	 m o v e m e n t A d j u s t o r . C a n c e l (   t i c k e t   ) ;  
 	 	 t i c k e t   =   m o v e m e n t A d j u s t o r . C r e a t e N e w R e q u e s t (   c u s t o m R o t a t i o n N a m e   ) ;  
 	 	 m o v e m e n t A d j u s t o r . C o n t i n u o u s (   t i c k e t   ) ;  
 	 	 m o v e m e n t A d j u s t o r . R e p l a c e R o t a t i o n (   t i c k e t   ) ;  
 	 	 m o v e m e n t A d j u s t o r . R o t a t e T o (   t i c k e t ,   r o t H e a d i n g   ) ;  
 	 	 m o v e m e n t A d j u s t o r . M a x R o t a t i o n A d j u s t m e n t S p e e d (   t i c k e t ,   r o t S p e e d   ) ;  
 	 	 i f   ( r o t S p e e d   = =   0 . 0 f )  
 	 	 {  
 	 	 	 m o v e m e n t A d j u s t o r . A d j u s t m e n t D u r a t i o n (   t i c k e t ,   a c t i v e T i m e   ) ; 	  
 	 	 }  
 	 	 m o v e m e n t A d j u s t o r . K e e p A c t i v e F o r (   t i c k e t ,   a c t i v e T i m e   ) ; 	  
 	 	 m o v e m e n t A d j u s t o r . R o t a t e E x i s t i n g D e l t a L o c a t i o n (   t i c k e t ,   r o t a t e E x i s t i n g D e l t a L o c a t i o n   ) ;  
 	 }  
 	  
 	 f u n c t i o n   U p d a t e C u s t o m R o t a t i o n H e a d i n g (   c u s t o m R o t a t i o n N a m e   :   n a m e ,   r o t H e a d i n g   :   f l o a t   )  
 	 {  
 	 	 v a r   m o v e m e n t A d j u s t o r 	 :   C M o v e m e n t A d j u s t o r ;  
 	 	 v a r   t i c k e t   	 	 	 	 :   S M o v e m e n t A d j u s t m e n t R e q u e s t T i c k e t ;  
 	 	  
 	 	 m o v e m e n t A d j u s t o r   =   G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 t i c k e t   =   m o v e m e n t A d j u s t o r . G e t R e q u e s t (   c u s t o m R o t a t i o n N a m e   ) ;  
 	 	 m o v e m e n t A d j u s t o r . R o t a t e T o (   t i c k e t ,   r o t H e a d i n g   ) ;  
 	 }  
 	  
 	 f u n c t i o n   S e t C u s t o m R o t a t i o n T o w a r d s (   c u s t o m R o t a t i o n N a m e   :   n a m e ,   t a r g e t   :   C A c t o r ,   r o t S p e e d   :   f l o a t ,   o p t i o n a l   a c t i v e T i m e   :   f l o a t   )  
 	 {  
 	 	 v a r   m o v e m e n t A d j u s t o r 	 :   C M o v e m e n t A d j u s t o r ;  
 	 	 v a r   t i c k e t   	 	 	 	 :   S M o v e m e n t A d j u s t m e n t R e q u e s t T i c k e t ;  
 	  
 	 	 m o v e m e n t A d j u s t o r   =   G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 t i c k e t   =   m o v e m e n t A d j u s t o r . G e t R e q u e s t (   c u s t o m R o t a t i o n N a m e   ) ;  
 	 	 m o v e m e n t A d j u s t o r . C a n c e l (   t i c k e t   ) ;  
 	 	 t i c k e t   =   m o v e m e n t A d j u s t o r . C r e a t e N e w R e q u e s t (   c u s t o m R o t a t i o n N a m e   ) ;  
 	 	 m o v e m e n t A d j u s t o r . C o n t i n u o u s (   t i c k e t   ) ;  
 	 	 m o v e m e n t A d j u s t o r . R e p l a c e R o t a t i o n (   t i c k e t   ) ;  
 	 	 m o v e m e n t A d j u s t o r . R o t a t e T o w a r d s (   t i c k e t ,   t a r g e t   ) ;  
 	 	 m o v e m e n t A d j u s t o r . M a x R o t a t i o n A d j u s t m e n t S p e e d (   t i c k e t ,   r o t S p e e d   ) ;  
 	 	 i f   ( a c t i v e T i m e   >   0 . 0 f )  
 	 	 {  
 	 	 	 m o v e m e n t A d j u s t o r . K e e p A c t i v e F o r (   t i c k e t ,   a c t i v e T i m e   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 m o v e m e n t A d j u s t o r . D o n t E n d (   t i c k e t   ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 f u n c t i o n   C u s t o m L o c k M o v e m e n t (   c u s t o m M o v e m e n t N a m e   :   n a m e ,   h e a d i n g   :   f l o a t   )  
 	 {  
 	 	 v a r   m o v e m e n t A d j u s t o r 	 :   C M o v e m e n t A d j u s t o r ;  
 	 	 v a r   t i c k e t   	 	 	 	 :   S M o v e m e n t A d j u s t m e n t R e q u e s t T i c k e t ;  
 	  
 	 	 m o v e m e n t A d j u s t o r   =   G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 t i c k e t   =   m o v e m e n t A d j u s t o r . G e t R e q u e s t (   c u s t o m M o v e m e n t N a m e   ) ;  
 	 	 m o v e m e n t A d j u s t o r . C a n c e l (   t i c k e t   ) ;  
 	 	 t i c k e t   =   m o v e m e n t A d j u s t o r . C r e a t e N e w R e q u e s t (   c u s t o m M o v e m e n t N a m e   ) ;  
 	 	 m o v e m e n t A d j u s t o r . C o n t i n u o u s (   t i c k e t   ) ;  
 	 	 m o v e m e n t A d j u s t o r . D o n t E n d (   t i c k e t   ) ;  
 	 	 m o v e m e n t A d j u s t o r . L o c k M o v e m e n t I n D i r e c t i o n (   t i c k e t ,   h e a d i n g   ) ;  
 	 }  
 	  
 	 f u n c t i o n   B i n d M o v e m e n t A d j u s t m e n t T o E v e n t (   c u s t o m R o t a t i o n N a m e   :   n a m e ,   e v e n t N a m e   :   C N a m e   )  
 	 {  
 	 	 v a r   m o v e m e n t A d j u s t o r 	 :   C M o v e m e n t A d j u s t o r ;  
 	 	 v a r   t i c k e t   	 	 	 	 :   S M o v e m e n t A d j u s t m e n t R e q u e s t T i c k e t ;  
 	 	  
 	 	 m o v e m e n t A d j u s t o r   =   G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 t i c k e t   =   m o v e m e n t A d j u s t o r . G e t R e q u e s t (   c u s t o m R o t a t i o n N a m e   ) ;  
 	 	 m o v e m e n t A d j u s t o r . B i n d T o E v e n t (   t i c k e t ,   e v e n t N a m e   ) ;  
 	 }  
 	  
 	 f u n c t i o n   U p d a t e C u s t o m L o c k M o v e m e n t H e a d i n g (   c u s t o m M o v e m e n t N a m e   :   n a m e ,   h e a d i n g   :   f l o a t   )  
 	 {  
 	 	 v a r   m o v e m e n t A d j u s t o r 	 :   C M o v e m e n t A d j u s t o r ;  
 	 	 v a r   t i c k e t   	 	 	 	 :   S M o v e m e n t A d j u s t m e n t R e q u e s t T i c k e t ;  
 	 	  
 	 	 m o v e m e n t A d j u s t o r   =   G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 t i c k e t   =   m o v e m e n t A d j u s t o r . G e t R e q u e s t (   c u s t o m M o v e m e n t N a m e   ) ;  
 	 	 m o v e m e n t A d j u s t o r . L o c k M o v e m e n t I n D i r e c t i o n (   t i c k e t ,   h e a d i n g   ) ;  
 	 } 	  
 	  
 	 f u n c t i o n   C u s t o m L o c k D i s t a n c e (   c u s t o m M o v e m e n t N a m e   :   n a m e ,   m a i n t a i n D i s t a n c e T o   :   C N o d e ,   m i n D i s t ,   m a x D i s t   :   f l o a t   )  
 	 {  
 	 	 v a r   m o v e m e n t A d j u s t o r 	 :   C M o v e m e n t A d j u s t o r ;  
 	 	 v a r   t i c k e t   	 	 	 	 :   S M o v e m e n t A d j u s t m e n t R e q u e s t T i c k e t ;  
 	  
 	 	 m o v e m e n t A d j u s t o r   =   G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 t i c k e t   =   m o v e m e n t A d j u s t o r . G e t R e q u e s t (   c u s t o m M o v e m e n t N a m e   ) ;  
 	 	 m o v e m e n t A d j u s t o r . C a n c e l (   t i c k e t   ) ;  
 	 	 t i c k e t   =   m o v e m e n t A d j u s t o r . C r e a t e N e w R e q u e s t (   c u s t o m M o v e m e n t N a m e   ) ;  
 	 	 m o v e m e n t A d j u s t o r . C o n t i n u o u s (   t i c k e t   ) ; 	  
 	 	 m o v e m e n t A d j u s t o r . S l i d e T o w a r d s (   t i c k e t ,   m a i n t a i n D i s t a n c e T o ,   m i n D i s t ,   m a x D i s t   ) ; 	  
 	 }  
  
 	 f u n c t i o n   U p d a t e C u s t o m L o c k D i s t a n c e (   c u s t o m M o v e m e n t N a m e   :   n a m e ,   m a i n t a i n D i s t a n c e T o   :   C N o d e ,   m i n D i s t ,   m a x D i s t   :   f l o a t     )  
 	 {  
 	 	 v a r   m o v e m e n t A d j u s t o r 	 :   C M o v e m e n t A d j u s t o r ;  
 	 	 v a r   t i c k e t   	 	 	 	 :   S M o v e m e n t A d j u s t m e n t R e q u e s t T i c k e t ;  
 	 	  
 	 	 m o v e m e n t A d j u s t o r   =   G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 t i c k e t   =   m o v e m e n t A d j u s t o r . G e t R e q u e s t (   c u s t o m M o v e m e n t N a m e   ) ;  
 	 	 m o v e m e n t A d j u s t o r . S l i d e T o w a r d s (   t i c k e t ,   m a i n t a i n D i s t a n c e T o ,   m i n D i s t ,   m a x D i s t   ) ;  
 	 } 	 	  
  
 	 p r i v a t e   v a r   d i s a b l e M a n u a l C a m e r a C o n t r o l S t a c k   :   a r r a y < n a m e > ;  
 	 p u b l i c   f u n c t i o n   E n a b l e M a n u a l C a m e r a C o n t r o l (   e n a b l e   :   b o o l ,   s o u r c e N a m e   :   n a m e   )  
 	 {  
 	 	 i f   (   ! e n a b l e   )  
 	 	 {  
 	 	 	 i f   (   ! d i s a b l e M a n u a l C a m e r a C o n t r o l S t a c k . C o n t a i n s (   s o u r c e N a m e   )   )  
 	 	 	 {  
 	 	 	 	 d i s a b l e M a n u a l C a m e r a C o n t r o l S t a c k . P u s h B a c k (   s o u r c e N a m e   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 d i s a b l e M a n u a l C a m e r a C o n t r o l S t a c k . R e m o v e (   s o u r c e N a m e   ) ;  
 	 	 }  
 	 	  
 	 	 i f   (   d i s a b l e M a n u a l C a m e r a C o n t r o l S t a c k . S i z e ( )   >   0   )    
 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . E n a b l e M a n u a l C o n t r o l (   f a l s e   ) ;  
 	 	 e l s e  
 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . E n a b l e M a n u a l C o n t r o l (   t r u e   ) ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   I s C a m e r a C o n t r o l D i s a b l e d (   o p t i o n a l   d i s a b l e d B y S o u r c e N a m e   :   n a m e   )   :   b o o l  
 	 {  
 	 	 i f   (   d i s a b l e d B y S o u r c e N a m e   )  
 	 	 	 r e t u r n   d i s a b l e M a n u a l C a m e r a C o n t r o l S t a c k . C o n t a i n s (   d i s a b l e d B y S o u r c e N a m e   ) ;  
 	 	 e l s e  
 	 	 	 r e t u r n   d i s a b l e M a n u a l C a m e r a C o n t r o l S t a c k . S i z e ( )   >   0 ; 	  
 	 }  
  
 	 p u b l i c   f u n c t i o n   D i s a b l e M a n u a l C a m e r a C o n t r o l S t a c k H a s S o u r c e (   s o u r c e N a m e   :   n a m e   )   :   b o o l  
 	 {  
 	 	 r e t u r n   d i s a b l e M a n u a l C a m e r a C o n t r o l S t a c k . C o n t a i n s (   s o u r c e N a m e   ) ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   C l e a r D i s a b l e M a n u a l C a m e r a C o n t r o l S t a c k ( )  
 	 {  
 	 	 d i s a b l e M a n u a l C a m e r a C o n t r o l S t a c k . C l e a r ( ) ;  
 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . E n a b l e M a n u a l C o n t r o l (   t r u e   ) ;  
 	 } 	  
 	  
 	 f u n c t i o n   S e t O r i e n t a t i o n T a r g e t (   t a r g e t   :   E O r i e n t a t i o n T a r g e t   )  
 	 {  
 	 	 i f   (   I s P C M o d e E n a b l e d ( )   & &   t a r g e t   = =   O T _ P l a y e r   )  
 	 	 {  
 	 	 	 t a r g e t   =   O T _ C a m e r a ;  
 	 	 }  
 	  
 	 	 o r i e n t a t i o n T a r g e t   =   t a r g e t ;  
 	 }  
 	  
 	 f u n c t i o n   G e t O r i e n t a t i o n T a r g e t ( )   :   E O r i e n t a t i o n T a r g e t  
 	 {  
 	 	 r e t u r n   o r i e n t a t i o n T a r g e t ;  
 	 }  
 	  
 	 v a r   c u s t o m O r i e n t a t i o n I n f o S t a c k   :   a r r a y < S C u s t o m O r i e n t a t i o n I n f o > ;  
 	 p u b l i c   f u n c t i o n   A d d C u s t o m O r i e n t a t i o n T a r g e t (   o r i e n t a t i o n T a r g e t   :   E O r i e n t a t i o n T a r g e t ,   s o u r c e N a m e   :   n a m e   )  
 	 {  
 	 	 v a r   c u s t o m O r i e n t a t i o n I n f o     	 :   S C u s t o m O r i e n t a t i o n I n f o ;  
 	 	 v a r   i 	 	 	 	 	 	 :   i n t ;  
 	 	  
 	 	 i f   (   c u s t o m O r i e n t a t i o n I n f o S t a c k . S i z e ( )   >   0   )  
 	 	 {  
 	 	 	 f o r (   i   =   c u s t o m O r i e n t a t i o n I n f o S t a c k . S i z e ( ) - 1 ;   i > = 0 ;   i - = 1   )  
 	 	 	 {  
 	 	 	 	 i f   (   c u s t o m O r i e n t a t i o n I n f o S t a c k [ i ] . s o u r c e N a m e   = =   s o u r c e N a m e   )  
 	 	 	 	 	 c u s t o m O r i e n t a t i o n I n f o S t a c k . E r a s e ( i ) ; 	  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 c u s t o m O r i e n t a t i o n I n f o . s o u r c e N a m e   =   s o u r c e N a m e ;  
 	 	 c u s t o m O r i e n t a t i o n I n f o . o r i e n t a t i o n T a r g e t   =   o r i e n t a t i o n T a r g e t ;  
 	 	 c u s t o m O r i e n t a t i o n I n f o S t a c k . P u s h B a c k (   c u s t o m O r i e n t a t i o n I n f o   ) ;  
 	 	 S e t O r i e n t a t i o n T a r g e t (   o r i e n t a t i o n T a r g e t   ) ;  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   R e m o v e C u s t o m O r i e n t a t i o n T a r g e t (   s o u r c e N a m e   :   n a m e   )  
 	 {  
 	 	 v a r   c u s t o m O r i e n t a t i o n I n f o     	 :   S C u s t o m O r i e n t a t i o n I n f o ;  
 	 	 v a r   i 	 	 	 	 	 	 :   i n t ;  
 	 	  
 	 	 i f   (   c u s t o m O r i e n t a t i o n I n f o S t a c k . S i z e ( )   >   0   )  
 	 	 {  
 	 	 	 f o r (   i   =   c u s t o m O r i e n t a t i o n I n f o S t a c k . S i z e ( ) - 1 ;   i > = 0 ;   i - = 1   )  
 	 	 	 {  
 	 	 	 	 i f   (   c u s t o m O r i e n t a t i o n I n f o S t a c k [ i ] . s o u r c e N a m e   = =   s o u r c e N a m e   )  
 	 	 	 	 	 c u s t o m O r i e n t a t i o n I n f o S t a c k . E r a s e ( i ) ; 	  
 	 	 	 }  
 	 	 }  
 	 	 e l s e    
 	 	 	 L o g C h a n n e l (   ' C u s t o m O r i e n a t a t i o n ' ,   " E R R O R :   C u s t o m   o r i e n t a t i o n   c a n n o t   b e   r e m o v e d ,   s t a c k   i s   a l r e a d y   e m p t y ! ! ! "   ) ;  
 	 }  
  
 	 p r o t e c t e d   f u n c t i o n   C l e a r C u s t o m O r i e n t a t i o n I n f o S t a c k ( )  
 	 {  
 	 	 c u s t o m O r i e n t a t i o n I n f o S t a c k . C l e a r ( ) ;  
 	 }  
  
 	 p r o t e c t e d   f u n c t i o n   G e t C u s t o m O r i e n t a t i o n T a r g e t (   o u t   i n f o S t a c k   :   S C u s t o m O r i e n t a t i o n I n f o   )   :   b o o l    
 	 {  
 	 	 v a r   s i z e   :   i n t ;  
 	 	  
 	 	 s i z e   =   c u s t o m O r i e n t a t i o n I n f o S t a c k . S i z e ( ) ;  
 	 	  
 	 	 i f   (   s i z e   < =   0   )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 e l s e  
 	 	 {  
 	 	 	 i n f o S t a c k   =   c u s t o m O r i e n t a t i o n I n f o S t a c k [   s i z e   -   1   ] ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 } 	 	  
 	  
 	 p u b l i c   f u n c t i o n   S e t O r i e n t a t i o n T a r g e t C u s t o m H e a d i n g (   h e a d i n g   :   f l o a t ,   s o u r c e N a m e   :   n a m e     )   :   b o o l  
 	 { 	  
 	 	 v a r     i   :   i n t ;  
 	 	 i f   (   c u s t o m O r i e n t a t i o n I n f o S t a c k . S i z e ( )   >   0   )  
 	 	 {  
 	 	 	 f o r (   i   =   c u s t o m O r i e n t a t i o n I n f o S t a c k . S i z e ( ) - 1 ;   i > = 0 ;   i - = 1   )  
 	 	 	 {  
 	 	 	 	 i f   (   c u s t o m O r i e n t a t i o n I n f o S t a c k [ i ] . s o u r c e N a m e   = =   s o u r c e N a m e   )  
 	 	 	 	 {  
 	 	 	 	 	 c u s t o m O r i e n t a t i o n I n f o S t a c k [ i ] . c u s t o m H e a d i n g   =   h e a d i n g ;  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	  
 	 	 L o g C h a n n e l (   ' S e t O r i e n t a t i o n T a r g e t C u s t o m H e a d i n g ' ,   " E R R O R :   C a n n o t   s e t   c u s t o m H e a d i n g   b e c a u s e   s t a c k   i s   e m p t y   o r   s o u r c e N a m e   i s   n o t   f o u n d ! ! ! "   ) ;  
 	 	 r e t u r n   f a l s e ;  
 	 }  
  
 	  
 	 p u b l i c   f u n c t i o n   G e t O r i e n t a t i o n T a r g e t C u s t o m H e a d i n g ( )   :   f l o a t  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 i f   (   c u s t o m O r i e n t a t i o n I n f o S t a c k . S i z e ( )   >   0   )  
 	 	 {  
 	 	 	 f o r (   i   =   c u s t o m O r i e n t a t i o n I n f o S t a c k . S i z e ( ) - 1 ;   i > = 0 ;   i - = 1   )  
 	 	 	 {  
 	 	 	 	 i f   (   c u s t o m O r i e n t a t i o n I n f o S t a c k [ i ] . o r i e n t a t i o n T a r g e t   = =   O T _ C u s t o m H e a d i n g   )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   c u s t o m O r i e n t a t i o n I n f o S t a c k [ i ] . c u s t o m H e a d i n g ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
  
 	 	 L o g C h a n n e l (   ' S e t O r i e n t a t i o n T a r g e t C u s t o m H e a d i n g ' ,   " E R R O R :   C a n n o t   g e t   c u s t o m H e a d i n g   b e c a u s e   s t a c k   i s   e m p t y   o r   n o   O T _ C u s t o m H e a d i n g   i n   s t a c k ! ! ! "   ) ;  
 	 	 r e t u r n   - 1 . f ;  
 	 } 	  
  
 	 p u b l i c   f u n c t i o n 	 G e t C o m b a t A c t i o n O r i e n t a t i o n T a r g e t (   c o m b a t A c t i o n T y p e   :   E C o m b a t A c t i o n T y p e   )   :   E O r i e n t a t i o n T a r g e t  
 	 {  
 	 	 v a r   n e w C u s t o m O r i e n t a t i o n T a r g e t   :   E O r i e n t a t i o n T a r g e t ;  
 	 	 v a r   t a r g e t E n t 	 	 :   C G a m e p l a y E n t i t y ;  
 	 	 v a r   t a r g e t A c t o r 	 	 :   C A c t o r ;  
 	  
 	 	 i f   (   G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m T h r o w '   )  
 	 	 	 n e w C u s t o m O r i e n t a t i o n T a r g e t   =   O T _ C a m e r a O f f s e t ;  
 	 	 e l s e  
 	 	 {  
 	 	 	 t a r g e t E n t   =   G e t D i s p l a y T a r g e t ( ) ;  
 	 	 	 t a r g e t A c t o r   =   ( C A c t o r ) t a r g e t E n t ; 	 	  
 	 	  
 	 	 	 i f   (   t a r g e t E n t   )  
 	 	 	 {  
 	 	 	 	 i f   (   t a r g e t A c t o r   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   m o v e T a r g e t   )  
 	 	 	 	 	 	 n e w C u s t o m O r i e n t a t i o n T a r g e t   =   O T _ A c t o r ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 { 	  
 	 	 	 	 	 	 i f   (   t h i s . I s S w i m m i n g ( )   )  
 	 	 	 	 	 	 	 n e w C u s t o m O r i e n t a t i o n T a r g e t   =   O T _ C a m e r a ;  
 	 	 	 	 	 	 e l s e   i f   (   l a s t A x i s I n p u t I s M o v e m e n t   )  
 	 	 	 	 	 	 	 n e w C u s t o m O r i e n t a t i o n T a r g e t   =   O T _ P l a y e r ;  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 n e w C u s t o m O r i e n t a t i o n T a r g e t   =   O T _ A c t o r ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   c o m b a t A c t i o n T y p e   = =   C A T _ C r o s s b o w   & &   t a r g e t E n t . H a s T a g (   ' s o f t L o c k _ B o l t '   )   )  
 	 	 	 	 	 	 n e w C u s t o m O r i e n t a t i o n T a r g e t   =   O T _ A c t o r ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   t h i s . I s S w i m m i n g ( )   )  
 	 	 	 	 	 	 	 n e w C u s t o m O r i e n t a t i o n T a r g e t   =   O T _ C a m e r a ; 	 	 	 	 	  
 	 	 	 	 	 	 e l s e   i f   (   l a s t A x i s I n p u t I s M o v e m e n t   )  
 	 	 	 	 	 	 	 n e w C u s t o m O r i e n t a t i o n T a r g e t   =   O T _ P l a y e r ;  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 n e w C u s t o m O r i e n t a t i o n T a r g e t   =   O T _ C a m e r a ;  
 	 	 	 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   I s U s i n g V e h i c l e ( )   )  
 	 	 	 	 	 n e w C u s t o m O r i e n t a t i o n T a r g e t   =   O T _ C a m e r a ;  
 	 	 	 	 e l s e   i f   (   l a s t A x i s I n p u t I s M o v e m e n t   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   t h i s . I s S w i m m i n g ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 	 	 n e w C u s t o m O r i e n t a t i o n T a r g e t   =   O T _ C a m e r a ;  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 n e w C u s t o m O r i e n t a t i o n T a r g e t   =   O T _ P l a y e r ;  
 	 	 	 	 	  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 	 n e w C u s t o m O r i e n t a t i o n T a r g e t   =   O T _ C a m e r a ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   n e w C u s t o m O r i e n t a t i o n T a r g e t ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n 	 G e t O r i e n t a t i o n T a r g e t H e a d i n g (   o r i e n t a t i o n T a r g e t   :   E O r i e n t a t i o n T a r g e t   )   :   f l o a t  
 	 { 	  
 	 	 v a r   h e a d i n g   :   f l o a t ;  
 	  
 	 	 i f (   o r i e n t a t i o n T a r g e t   = =   O T _ C a m e r a   )  
 	 	 	 h e a d i n g   =   V e c H e a d i n g (   t h e C a m e r a . G e t C a m e r a D i r e c t i o n ( )   ) ;  
 	 	 e l s e   i f (   o r i e n t a t i o n T a r g e t   = =   O T _ C a m e r a O f f s e t   )  
 	 	 	 h e a d i n g   =   V e c H e a d i n g (   t h e C a m e r a . G e t C a m e r a D i r e c t i o n ( )   )   -   o T C a m e r a O f f s e t ; 	  
 	 	 e l s e   i f (   o r i e n t a t i o n T a r g e t   = =   O T _ C u s t o m H e a d i n g   )  
 	 	 	 h e a d i n g   =   G e t O r i e n t a t i o n T a r g e t C u s t o m H e a d i n g ( ) ;  
 	 	 e l s e   i f   (   G e t D i s p l a y T a r g e t ( )   & &   o r i e n t a t i o n T a r g e t   = =   O T _ A c t o r   )  
 	 	 {  
 	 	 	 i f   (   ( C A c t o r ) (   G e t D i s p l a y T a r g e t ( )   )   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 	 h e a d i n g   =   V e c H e a d i n g (   G e t D i s p l a y T a r g e t ( ) . G e t W o r l d P o s i t i o n ( )   -   G e t W o r l d P o s i t i o n ( )   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   G e t D i s p l a y T a r g e t ( ) . H a s T a g (   ' s o f t L o c k _ B o l t '   )   )  
 	 	 	 	 	 h e a d i n g   =   V e c H e a d i n g (   G e t D i s p l a y T a r g e t ( ) . G e t W o r l d P o s i t i o n ( )   -   G e t W o r l d P o s i t i o n ( )   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 h e a d i n g   =   G e t H e a d i n g ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 	 h e a d i n g   =   G e t H e a d i n g ( ) ;  
 	 	 	  
 	 	 r e t u r n   h e a d i n g ; 	 	  
 	 }  
 	 	  
 	 e v e n t   O n D e l a y O r i e n t a t i o n C h a n g e ( )  
 	 {  
 	 	 v a r   d e l a y O r i e n t a t i o n   	 :   b o o l ;  
 	 	 v a r   d e l a y C a m e r a R o t a t i o n 	 :   b o o l ;  
 	 	 v a r   m o v e D a t a   	 	 	 :   S C a m e r a M o v e m e n t D a t a ;  
 	 	 v a r   t i m e 	 	 	 	 :   f l o a t ;  
 	 	  
 	 	 t i m e   =   0 . 0 1 f ;  
 	  
 	 	 i f   (   t h e I n p u t . G e t A c t i o n V a l u e (   ' C a s t S i g n H o l d '   )   = =   1 . f   )  
 	 	 {  
 	 	 	 a c t i o n T y p e   =   0 ;  
 	 	 	 i f   (   m o v e T a r g e t   )  
 	 	 	 	 d e l a y O r i e n t a t i o n   =   t r u e ;  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   ! G e t B I s C o m b a t A c t i o n A l l o w e d ( )   )  
 	 	 	 	 	 d e l a y O r i e n t a t i o n   =   t r u e ;  
 	 	 	 }  
 	 	 	  
  
 	 	 }  
 	 	 e l s e   i f   (   t h e I n p u t . G e t A c t i o n V a l u e (   ' T h r o w I t e m H o l d '   )   = =   1 . f   )  
 	 	 {  
 	 	 	 a c t i o n T y p e   =   3 ;  
 	 	 	 d e l a y O r i e n t a t i o n   =   t r u e ; 	 	  
 	 	 }  
 	 	 e l s e   i f   (   t h e I n p u t . G e t A c t i o n V a l u e (   ' S p e c i a l A t t a c k H e a v y '   )   = =   1 . f   )  
 	 	 {  
 	 	 	 a c t i o n T y p e   =   2 ;  
 	 	 	 i f   (   ! s l i d e T a r g e t   )  
 	 	 	 	 d e l a y O r i e n t a t i o n   =   t r u e ;  
 	 	 	 e l s e  
 	 	 	 	 d e l a y O r i e n t a t i o n   =   t r u e ;  
 	 	 }  
 	 	 e l s e   i f   (   I s G u a r d e d ( )   & &   ! m o v e T a r g e t   )  
 	 	 {  
 	 	 	 a c t i o n T y p e   =   1 ;  
 	 	 	 d e l a y O r i e n t a t i o n   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 i f   (   d e l a y O r i e n t a t i o n   )  
 	 	 {    
 	 	 	 d e l a y O r i e n t a t i o n C h a n g e   =   t r u e ;  
 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . F o r c e M a n u a l C o n t r o l H o r T i m e o u t ( ) ;  
 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . F o r c e M a n u a l C o n t r o l V e r T i m e o u t ( ) ;  
 	 	 	 A d d T i m e r (   ' D e l a y O r i e n t a t i o n C h a n g e T i m e r ' ,   t i m e ,   t r u e   ) ;  
 	 	 }  
 	 	  
 	 	 i f   (   d e l a y C a m e r a R o t a t i o n   )  
 	 	 {  
 	 	 	 d e l a y C a m e r a O r i e n t a t i o n C h a n g e   =   t r u e ;  
 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . F o r c e M a n u a l C o n t r o l H o r T i m e o u t ( ) ;  
 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . F o r c e M a n u a l C o n t r o l V e r T i m e o u t ( ) ;  
 	 	 	 A d d T i m e r (   ' D e l a y O r i e n t a t i o n C h a n g e T i m e r ' ,   t i m e ,   t r u e   ) ; 	 	 	  
 	 	 }  
 	 }  
  
 	  
 	 e v e n t   O n D e l a y O r i e n t a t i o n C h a n g e O f f ( )  
 	 {  
 	 	 d e l a y O r i e n t a t i o n C h a n g e   =   f a l s e ;  
 	 	 d e l a y C a m e r a O r i e n t a t i o n C h a n g e   =   f a l s e ;  
 	 	 R e m o v e T i m e r (   ' D e l a y O r i e n t a t i o n C h a n g e T i m e r '   ) ;  
  
 	 	  
 	 	  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   D e l a y O r i e n t a t i o n C h a n g e T i m e r (   t i m e   :   f l o a t   ,   i d   :   i n t )  
 	 { 	  
 	 	 i f   (   (   a c t i o n T y p e   = =   0   & &   t h e I n p u t . G e t A c t i o n V a l u e (   ' C a s t S i g n H o l d '   )   = =   0 . f   )    
 	 	 	 | |   (   a c t i o n T y p e   = =   2   & &   t h e I n p u t . G e t A c t i o n V a l u e (   ' S p e c i a l A t t a c k H e a v y '   )   = =   0 . f   )  
 	 	 	 | |   (   a c t i o n T y p e   = =   3   & &   t h e I n p u t . G e t A c t i o n V a l u e (   ' T h r o w I t e m H o l d '   )   = =   0 . f   )  
 	 	 	 | |   (   a c t i o n T y p e   = =   1   & &   ! I s G u a r d e d ( )   )  
 	 	 	 | |   (   V e c L e n g t h (   r a w R i g h t J o y V e c   )   >   0 . f   )   )  
 	 	 {  
 	 	 	 O n D e l a y O r i e n t a t i o n C h a n g e O f f ( ) ;  
 	 	 }  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   S e t C o m b a t A c t i o n H e a d i n g (   h e a d i n g   :   f l o a t   )  
 	 {  
 	 	 c o m b a t A c t i o n H e a d i n g   =   h e a d i n g ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t C o m b a t A c t i o n H e a d i n g ( )   :   f l o a t  
 	 {  
 	 	 r e t u r n   c o m b a t A c t i o n H e a d i n g ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   E n a b l e C l o s e C o m b a t C h a r a c t e r R a d i u s (   f l a g   :   b o o l   )  
 	 {  
 	 	 v a r   a c t o r   :   C A c t o r ;  
 	  
 	 	 a c t o r   =   ( C A c t o r ) s l i d e T a r g e t ;  
 	 	 i f   (   f l a g   )  
 	 	 {  
 	 	 	 t h i s . G e t M o v i n g A g e n t C o m p o n e n t ( ) . S e t V i r t u a l R a d i u s (   ' C l o s e C o m b a t C h a r a c t e r R a d i u s '   ) ;  
 	 	 	 i f ( a c t o r )  
 	 	 	 	 a c t o r . G e t M o v i n g A g e n t C o m p o n e n t ( ) . S e t V i r t u a l R a d i u s (   ' C l o s e C o m b a t C h a r a c t e r R a d i u s '   ) ;  
 	 	 }  
 	 	 e l s e    
 	 	 {  
 	 	 	 i f     (   t h i s . I s I n C o m b a t ( )   )  
 	 	 	 {  
 	 	 	 	 G e t M o v i n g A g e n t C o m p o n e n t ( ) . S e t V i r t u a l R a d i u s (   ' C o m b a t C h a r a c t e r R a d i u s '   ) ; 	 	 	 	  
 	 	 	 	 i f ( a c t o r )  
 	 	 	 	 	 a c t o r . G e t M o v i n g A g e n t C o m p o n e n t ( ) . S e t V i r t u a l R a d i u s (   ' C o m b a t C h a r a c t e r R a d i u s '   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t h i s . G e t M o v i n g A g e n t C o m p o n e n t ( ) . R e s e t V i r t u a l R a d i u s ( ) ;  
 	 	 	 	 i f ( a c t o r )  
 	 	 	 	 	 a c t o r . G e t M o v i n g A g e n t C o m p o n e n t ( ) . R e s e t V i r t u a l R a d i u s ( ) ; 	 	 	  
 	 	 	 }  
 	 	 }  
 	 } 	 	  
 	  
 	  
 	  
 	  
  
 	  
 	 p r i v a t e   v a r   i s S n a p p e d T o N a v M e s h   :   b o o l ;  
 	 p r i v a t e   v a r   s n a p T o N a v M e s h C a c h e d F l a g   :   b o o l ;  
 	 p u b l i c   f u n c t i o n   S n a p T o N a v M e s h (   f l a g   :   b o o l   ) 	  
 	 {  
 	 	 v a r   c o m p   	 :   C M o v i n g A g e n t C o m p o n e n t ;  
  
 	 	 c o m p   =   ( C M o v i n g A g e n t C o m p o n e n t ) t h i s . G e t M o v i n g A g e n t C o m p o n e n t ( ) ;  
 	  
 	 	 i f   (   c o m p   )  
 	 	 {  
 	 	 	 c o m p . S n a p T o N a v i g a b l e S p a c e (   f l a g   ) ;  
 	 	 	 i s S n a p p e d T o N a v M e s h   =   f l a g ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 s n a p T o N a v M e s h C a c h e d F l a g   =   f l a g ;  
 	 	 	 A d d T i m e r (   ' D e l a y e d S n a p T o N a v M e s h ' ,   0 . 2 f   ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   P l a y R u n e w o r d 4 F X ( o p t i o n a l   w e a p o n T y p e   :   E P l a y e r W e a p o n )  
 	 {  
 	 	 v a r   h a s S w o r d D r a w n   :   b o o l ;  
 	 	 v a r   s w o r d   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 i f ( a b i l i t y M a n a g e r . G e t O v e r h e a l B o n u s ( )   >   ( 0 . 0 0 5   *   G e t S t a t M a x ( B C S _ V i t a l i t y ) ) )  
 	 	 {  
 	 	 	 h a s S w o r d D r a w n   =   H a s A b i l i t y ( ' R u n e w o r d   4   _ S t a t s ' ,   t r u e ) ;  
 	 	 	  
 	 	 	 i f ( ! h a s S w o r d D r a w n   & &   G e t W i t c h e r P l a y e r ( ) ) 	 	 	  
 	 	 	 {  
 	 	 	 	 i f ( w e a p o n T y p e   = =   P W _ S t e e l )  
 	 	 	 	 {  
 	 	 	 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . G e t I t e m E q u i p p e d O n S l o t ( E E S _ S t e e l S w o r d ,   s w o r d ) )  
 	 	 	 	 	 	 h a s S w o r d D r a w n   =   i n v . I t e m H a s A b i l i t y ( s w o r d ,   ' R u n e w o r d   4   _ S t a t s ' ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f ( w e a p o n T y p e   = =   P W _ S i l v e r )  
 	 	 	 	 {  
 	 	 	 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . G e t I t e m E q u i p p e d O n S l o t ( E E S _ S i l v e r S w o r d ,   s w o r d ) )  
 	 	 	 	 	 	 h a s S w o r d D r a w n   =   i n v . I t e m H a s A b i l i t y ( s w o r d ,   ' R u n e w o r d   4   _ S t a t s ' ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 i f ( h a s S w o r d D r a w n )  
 	 	 	 {  
 	 	 	 	 i f ( ! I s E f f e c t A c t i v e ( ' r u n e w o r d _ 4 ' ,   t r u e ) )  
 	 	 	 	 	 P l a y E f f e c t ( ' r u n e w o r d _ 4 ' ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   D e l a y e d S n a p T o N a v M e s h (   d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 S n a p T o N a v M e s h (   s n a p T o N a v M e s h C a c h e d F l a g   ) ;  
 	 }  
 	  
 	 s a v e d   v a r   n a v M e s h S n a p I n f o S t a c k   :   a r r a y < n a m e > ;  
 	 p u b l i c   f u n c t i o n   E n a b l e S n a p T o N a v M e s h (   s o u r c e   :   n a m e ,   e n a b l e   :   b o o l   )  
 	 {  
 	 	 i f   (   e n a b l e   )  
 	 	 {  
 	 	 	 i f   (   ! n a v M e s h S n a p I n f o S t a c k . C o n t a i n s (   s o u r c e   )   )  
 	 	 	 	 n a v M e s h S n a p I n f o S t a c k . P u s h B a c k (   s o u r c e   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   (   n a v M e s h S n a p I n f o S t a c k . C o n t a i n s (   s o u r c e   )   )  
 	 	 	 	 n a v M e s h S n a p I n f o S t a c k . R e m o v e (   s o u r c e   ) ; 	  
 	 	 }  
 	 	  
 	 	 i f   (   n a v M e s h S n a p I n f o S t a c k . S i z e ( )   >   0   )  
 	 	 	 S n a p T o N a v M e s h (   t r u e   ) ;  
 	 	 e l s e  
 	 	 	 S n a p T o N a v M e s h (   f a l s e   ) ;  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   F o r c e R e m o v e A l l N a v M e s h S n a p s ( )  
 	 {  
 	 	 n a v M e s h S n a p I n f o S t a c k . C l e a r ( ) ;  
 	 	 S n a p T o N a v M e s h (   f a l s e   ) ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   C a n S p r i n t (   s p e e d   :   f l o a t   )   :   b o o l  
 	 {  
 	 	 i f (   s p e e d   < =   0 . 8 f   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f   (   t h e P l a y e r . G e t I s S p r i n t T o g g l e d ( )   )  
 	 	 {  
 	 	 }  
 	 	  
 	 	 e l s e   i f ( G e t L e f t S t i c k S p r i n t ( )   & &   t h e I n p u t . L a s t U s e d G a m e p a d ( ) )  
 	 	 { 	 	  
 	 	 	 i f ( G e t I s S p r i n t T o g g l e d ( )   & &   G e t I s S p r i n t i n g ( ) )  
 	 	 	 {  
 	 	 	 }  
 	 	 	 e l s e   i f ( ! G e t I s S p r i n t T o g g l e d ( ) )  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 e l s e   i f   (   ! s p r i n t A c t i o n P r e s s e d   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 e l s e   i f (   ! t h e I n p u t . I s A c t i o n P r e s s e d ( ' S p r i n t ' )   | |   (   t h e I n p u t . L a s t U s e d G a m e p a d ( )   & &   I s I n s i d e I n t e r a c t i o n ( )   & &   G e t H o w L o n g S p r i n t B u t t o n W a s P r e s s e d ( )   <   0 . 1 2   )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f   (   t h e P l a y e r . H a s B u f f (   E E T _ O v e r E n c u m b e r e d   )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 i f   (   ! I s S w i m m i n g ( )   )  
 	 	 {  
 	 	 	 i f   (   S h o u l d U s e S t a m i n a W h i l e S p r i n t i n g ( )   & &   ! G e t I s S p r i n t i n g ( )   & &   ! I s I n C o m b a t ( )   & &   G e t S t a t P e r c e n t s ( B C S _ S t a m i n a )   < =   0 . 9   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	 i f (   (   ! I s C o m b a t M u s i c E n a b l e d ( )   | |   I s I n F i s t F i g h t M i n i G a m e ( )   )   & &   (   ! I s A c t i o n A l l o w e d ( E I A B _ R u n A n d S p r i n t )   | |   ! I s A c t i o n A l l o w e d ( E I A B _ S p r i n t )   )     )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	 i f (   I s T e r r a i n T o o S t e e p T o R u n U p ( )   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	 i f (   I s I n C o m b a t A c t i o n ( )   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	 i f (   I s I n A i r ( )   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	 i f (   t h e G a m e . I s F o c u s M o d e A c t i v e ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   S e t T e r r a i n P i t c h (   p i t c h   :   f l o a t   )  
 	 {  
 	 	 t e r r a i n P i t c h 	 =   p i t c h ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s T e r r a i n T o o S t e e p T o R u n U p ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   t e r r a i n P i t c h   < =   d i s a b l e S p r i n t T e r r a i n P i t c h ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t T e m p L o o k A t T a r g e t (   a c t o r   :   C G a m e p l a y E n t i t y   )  
 	 {  
 	 	 t e m p L o o k A t T a r g e t   =   a c t o r ;  
 	 }  
 	  
 	 p r i v a t e   v a r   b e i n g W a r n e d B y   :   a r r a y < C A c t o r > ;  
 	  
 	 e v e n t   O n B e i n g W a r n e d S t a r t (   s e n d e r   :   C A c t o r   )  
 	 {  
 	 	 i f   (   ! b e i n g W a r n e d B y . C o n t a i n s ( s e n d e r )   )  
 	 	 	 b e i n g W a r n e d B y . P u s h B a c k ( s e n d e r ) ;  
 	 }  
 	 e v e n t   O n B e i n g W a r n e d S t o p (   s e n d e r   :   C A c t o r   )  
 	 {  
 	 	 b e i n g W a r n e d B y . R e m o v e ( s e n d e r ) ;  
 	 }  
 	  
 	 e v e n t   O n C a n F i n d P a t h (   s e n d e r   :   C A c t o r   )  
 	 {  
 	 	 A d d C a n F i n d P a t h E n e m y T o L i s t ( s e n d e r , t r u e ) ;  
 	 }  
 	 e v e n t   O n C a n n o t F i n d P a t h (   s e n d e r   :   C A c t o r   )  
 	 {  
 	 	 A d d C a n F i n d P a t h E n e m y T o L i s t ( s e n d e r , f a l s e ) ;  
 	 }  
 	 e v e n t   O n B e c o m e A w a r e A n d C a n A t t a c k (   s e n d e r   :   C A c t o r   )  
 	 {  
 	 	 A d d E n e m y T o H o s t i l e E n e m i e s L i s t (   s e n d e r ,   t r u e   ) ;  
 	 	 O n A p p r o a c h A t t a c k (   s e n d e r   ) ; 	 	  
 	 }  
 	 e v e n t   O n B e c o m e U n a w a r e O r C a n n o t A t t a c k (   s e n d e r   :   C A c t o r   )  
 	 {  
 	 	 A d d E n e m y T o H o s t i l e E n e m i e s L i s t (   s e n d e r ,   f a l s e   ) ;  
 	 	 O n A p p r o a c h A t t a c k E n d (   s e n d e r   ) ;  
 	 	 O n C a n n o t F i n d P a t h ( s e n d e r ) ;  
 	 } 	  
 	 e v e n t   O n A p p r o a c h A t t a c k (   s e n d e r   :   C A c t o r   )  
 	 {  
 	 	 A d d E n e m y T o H o s t i l e E n e m i e s L i s t (   s e n d e r ,   t r u e   ) ;  
 	 	 s u p e r . O n A p p r o a c h A t t a c k (   s e n d e r   ) ;  
 	 }  
 	 e v e n t   O n A p p r o a c h A t t a c k E n d (   s e n d e r   :   C A c t o r   )  
 	 {  
 	 	 A d d E n e m y T o H o s t i l e E n e m i e s L i s t (   s e n d e r ,   f a l s e   ) ;  
 	 	 s u p e r . O n A p p r o a c h A t t a c k E n d (   s e n d e r   ) ;  
 	 }  
 	 e v e n t   O n A t t a c k (   s e n d e r   :   C A c t o r   )  
 	 {  
 	 	 s u p e r . O n A t t a c k (   s e n d e r   ) ;  
 	 }  
 	 e v e n t   O n A t t a c k E n d (   s e n d e r   :   C A c t o r   )  
 	 {  
 	 	 s u p e r . O n A t t a c k E n d (   s e n d e r   ) ;  
 	 }  
  
 	 e v e n t   O n H i t C e i l i n g ( )  
 	 {  
 	 	 s u b s t a t e M a n a g e r . R e a c t O n H i t C e i l i n g ( ) ;  
 	 }  
 	  
 	 p r o t e c t e d   v a r   h o s t i l e E n e m i e s 	 	 	 :   a r r a y < C A c t o r > ; 	 	  
 	 p r i v a t e   v a r   h o s t i l e M o n s t e r s   	 	 :   a r r a y < C A c t o r > ; 	 	  
 	 f u n c t i o n   A d d E n e m y T o H o s t i l e E n e m i e s L i s t (   a c t o r   :   C A c t o r ,   a d d   :   b o o l   )  
 	 {  
 	 	 i f   (   a d d   )  
 	 	 {  
 	 	 	 R e m o v e T i m e r (   ' R e m o v e E n e m y F r o m H o s t i l e E n e m i e s L i s t T i m e r '   ) ;  
 	 	 	 i f   (   ! h o s t i l e E n e m i e s . C o n t a i n s (   a c t o r   )   )    
 	 	 	 {  
 	 	 	 	 h o s t i l e E n e m i e s . P u s h B a c k (   a c t o r   ) ;  
 	 	 	 	  
 	 	 	 	 i f (   ! a c t o r . I s H u m a n ( )   )  
 	 	 	 	 	 h o s t i l e M o n s t e r s . P u s h B a c k (   a c t o r   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   (   h o s t i l e E n e m i e s . S i z e ( )   = =   1   )  
 	 	 	 {  
 	 	 	 	 i f   (   ! a c t o r . I s A l i v e ( )   | |   a c t o r . I s K n o c k e d U n c o n s c i o u s ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 h o s t i l e E n e m i e s . R e m o v e (   a c t o r   ) ;  
 	 	 	 	 	 i f (   ! a c t o r . I s H u m a n ( )   )  
 	 	 	 	 	 	 h o s t i l e M o n s t e r s . R e m o v e (   a c t o r   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	  
 	 	 	 	 	 i f (   h o s t i l e E n e m y T o R e m o v e   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 h o s t i l e E n e m i e s . R e m o v e (   h o s t i l e E n e m y T o R e m o v e   ) ;  
 	 	 	 	 	 	 i f (   ! h o s t i l e E n e m y T o R e m o v e . I s H u m a n ( )   )  
 	 	 	 	 	 	 	 h o s t i l e M o n s t e r s . R e m o v e (   h o s t i l e E n e m y T o R e m o v e   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 h o s t i l e E n e m y T o R e m o v e   =   a c t o r ;  
 	 	 	 	 	 A d d T i m e r (   ' R e m o v e E n e m y F r o m H o s t i l e E n e m i e s L i s t T i m e r ' ,   3 . f   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e    
 	 	 	 {  
 	 	 	 	 h o s t i l e E n e m i e s . R e m o v e (   a c t o r   ) ;  
 	 	 	 	 i f (   ! a c t o r . I s H u m a n ( )   )  
 	 	 	 	 	 h o s t i l e M o n s t e r s . R e m o v e (   a c t o r   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	    
 	  
 	 p u b l i c   f u n c t i o n   S h o u l d E n a b l e C o m b a t M u s i c ( )   :   b o o l  
 	 {  
 	 	 v a r   m o v e T a r g e t N P C 	 :   C N e w N P C ;  
 	  
 	 	 i f   (   t h e P l a y e r . G e t P l a y e r M o d e ( ) . G e t F o r c e C o m b a t M o d e ( )   )  
 	 	 	 r e t u r n   t r u e ; 	  
 	 	 e l s e   i f   (   ! I s C o m b a t M u s i c E n a b l e d ( )   )  
 	 	 {  
 	 	 	 i f   (   I s I n C o m b a t ( )   )  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 e l s e   i f   (   I s T h r e a t e n e d ( )   )  
 	 	 	 {  
 	 	 	 	 m o v e T a r g e t N P C   =   ( C N e w N P C ) m o v e T a r g e t ;  
 	 	 	 	 i f   (   m o v e T a r g e t N P C . I s R a n g e d ( )   & &   h o s t i l e E n e m i e s . C o n t a i n s (   m o v e T a r g e t N P C   )   )  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 e l s e   i f   (   (   t h e P l a y e r . I s T h r e a t e n e d ( )   & &   (   h o s t i l e E n e m i e s . S i z e ( )   >   0   | |   t h e P l a y e r . G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ A l e r t N e a r   )   )  
 	 	 	 	 | |   I s I n C o m b a t ( )    
 	 	 	 	 | |   f i n i s h a b l e E n e m i e s L i s t . S i z e ( )   >   0    
 	 	 	 	 | |   i s I n F i n i s h e r   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 }  
 	  
 	 p u b l i c   v a r   c a n F i n d P a t h E n e m i e s L i s t   :   a r r a y < C A c t o r > ;  
 	 p u b l i c   v a r   d i s a b l e c a n F i n d P a t h E n e m i e s L i s t U p d a t e 	 :   b o o l ;  
 	 p r i v a t e   v a r   l a s t C a n F i n d P a t h E n e m y 	 :   C A c t o r ;  
 	 p r i v a t e   v a r   c a c h e d M o v e T a r g e t 	 	 :   C A c t o r ;  
 	 p r i v a t e   v a r   r e a c h a b i l i t y T e s t I d   	 :   i n t ;  
 	 p r i v a t e   v a r   r e a c h a b i l i t y T e s t I d 2   :   i n t ;  
 	 f u n c t i o n   A d d C a n F i n d P a t h E n e m y T o L i s t (   a c t o r   :   C A c t o r ,   a d d   :   b o o l   )  
 	 {  
 	 	 i f   (   d i s a b l e c a n F i n d P a t h E n e m i e s L i s t U p d a t e   )  
 	 	 	 r e t u r n ;  
 	 	 	  
 	 	 i f   (   a d d   & &   ! c a n F i n d P a t h E n e m i e s L i s t . C o n t a i n s (   a c t o r   )   )  
 	 	 {  
 	 	 	 c a n F i n d P a t h E n e m i e s L i s t . P u s h B a c k ( a c t o r ) ;  
 	 	 }  
 	 	 e l s e   i f   (   ! a d d   )  
 	 	 {  
 	 	 	 c a n F i n d P a t h E n e m i e s L i s t . R e m o v e ( a c t o r ) ;  
 	 	 	  
 	 	 	 i f   (   c a n F i n d P a t h E n e m i e s L i s t . S i z e ( )   < =   0   )  
 	 	 	 	 p l a y e r M o d e . U p d a t e C o m b a t M o d e ( ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C l e a r C a n F i n d P a t h E n e m i e s L i s t (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 c a n F i n d P a t h E n e m i e s L i s t . C l e a r ( ) ;  
 	 } 	  
 	  
 	 p u b l i c   v a r   f i n i s h a b l e E n e m i e s L i s t   :   a r r a y < C A c t o r > ;  
 	 f u n c t i o n   A d d T o F i n i s h a b l e E n e m y L i s t (   a c t o r   :   C A c t o r ,   a d d   :   b o o l   )  
 	 {  
 	 	 i f   (   a d d   & &   ! f i n i s h a b l e E n e m i e s L i s t . C o n t a i n s (   a c t o r   )   )  
 	 	 {  
 	 	 	 f i n i s h a b l e E n e m i e s L i s t . P u s h B a c k ( a c t o r ) ;  
 	 	 }  
 	 	 e l s e   i f   (   ! a d d   )  
 	 	 {  
 	 	 	 f i n i s h a b l e E n e m i e s L i s t . R e m o v e ( a c t o r ) ;  
 	 	 }  
 	 } 	  
 	  
 	 p r i v a t e   f u n c t i o n   U p d a t e F i n i s h a b l e E n e m y L i s t ( )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 i   =   0 ;  
 	 	 w h i l e   (   i   <   f i n i s h a b l e E n e m i e s L i s t . S i z e ( )   )  
 	 	 {  
 	 	 	 i f   (   ! f i n i s h a b l e E n e m i e s L i s t [   i   ]   )  
 	 	 	 {  
 	 	 	 	 f i n i s h a b l e E n e m i e s L i s t . E r a s e F a s t (   i   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i   + =   1 ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   t i m e r   f u n c t i o n   C l e a r F i n i s h a b l e E n e m y L i s t (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 f i n i s h a b l e E n e m i e s L i s t . C l e a r ( ) ;  
 	 } 	  
  
 	 p r i v a t e   v a r   h o s t i l e E n e m y T o R e m o v e   :   C A c t o r ;  
 	 p r i v a t e   t i m e r   f u n c t i o n   R e m o v e E n e m y F r o m H o s t i l e E n e m i e s L i s t T i m e r (   t i m e   :   f l o a t   ,   i d   :   i n t )  
 	 {  
 	 	 h o s t i l e E n e m i e s . R e m o v e (   h o s t i l e E n e m y T o R e m o v e   ) ;  
 	 	  
 	 	 i f (   h o s t i l e E n e m y T o R e m o v e . I s M o n s t e r ( )   )  
 	 	 	 h o s t i l e M o n s t e r s . R e m o v e (   h o s t i l e E n e m y T o R e m o v e   ) ;  
 	 	 	  
 	 	 h o s t i l e E n e m y T o R e m o v e   =   N U L L ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   C l e a r H o s t i l e E n e m i e s L i s t ( )  
 	 {  
 	 	 h o s t i l e E n e m i e s . C l e a r ( ) ;  
 	 	 h o s t i l e M o n s t e r s . C l e a r ( ) ;  
 	 	 c a n F i n d P a t h E n e m i e s L i s t . C l e a r ( ) ;  
 	 }  
  
 	 p r i v a t e   v a r   m o v e T a r g e t s   	 	 	 	 	 :   a r r a y < C A c t o r > ; 	 	  
 	 p u b l i c   f u n c t i o n   G e t M o v e T a r g e t s ( )   	 	 	 :   a r r a y < C A c t o r > 	 {   r e t u r n   m o v e T a r g e t s ;   }  
 	 p u b l i c   f u n c t i o n   G e t N u m b e r O f M o v e T a r g e t s ( )   	 :   i n t 	 {   r e t u r n   m o v e T a r g e t s . S i z e ( ) ;   }  
 	 p u b l i c   f u n c t i o n   G e t H o s t i l e E n e m i e s ( ) 	 	 	 :   a r r a y < C A c t o r > 	 {   r e t u r n   h o s t i l e E n e m i e s ;   }  
 	 p u b l i c   f u n c t i o n   G e t H o s t i l e E n e m i e s C o u n t ( ) 	 :   i n t 	 {   r e t u r n   h o s t i l e E n e m i e s . S i z e ( ) ;   }  
  
 	 p r o t e c t e d   v a r   e n a b l e S t r a f e   	 	 :   b o o l ;  
 	  
 	  
 	 p u b l i c   f u n c t i o n   F i n d M o v e T a r g e t ( )  
 	 {  
 	 	 v a r   m o v e T a r g e t D i s t s 	 	 	 	 :   a r r a y < f l o a t > ;  
 	 	 v a r   m o v e T a r g e t C a n P a t h F i n d s 	 	 :   a r r a y < b o o l > ;  
 	 	 v a r   a P o t e n t i a l M o v e T a r g e t C a n F i n d P a t h 	 	 :   b o o l ;  
 	 	  
 	 	 v a r   n e w M o v e T a r g e t 	 	 	 	 :   C A c t o r ;  
 	 	 v a r   a c t o r s   	 	 	 	 	 	 :   a r r a y < C A c t o r > ;  
 	 	 v a r   c u r r e n t H e a d i n g 	 	 	 	 :   f l o a t ;  
 	 	 v a r   s i z e ,   i 	 	 	 	 	 	 :   i n t ;  
 	 	 v a r   p l a y e r T o N e w M o v e T a r g e t D i s t 	 :   f l o a t ;  
 	 	 v a r   p l a y e r T o M o v e T a r g e t D i s t 	 	 :   f l o a t ;  
 	 	 v a r   c o n f i r m E m p t y M o v e T a r g e t 	 	 :   b o o l ;  
 	 	 v a r   n e w E m p t y M o v e T a r g e t T i m e r 	 	 :   f l o a t ;  
 	 	 v a r   w a s V i s i b l e I n F u l l F r a m e 	 	 :   b o o l ;  
 	 	 v a r   s e t I s T h r e a t e n e d 	 	 	 	 :   b o o l ;  
 	 	  
 	 	 v a r   e n e m y s T a r g e t 	 	 	 	 :   C A c t o r ;  
 	 	 v a r   i s E n e m y I n C o m b a t 	 	 	 	 :   b o o l ;  
 	 	 v a r   p o t e n t i a l M o v e T a r g e t s 	 	 :   a r r a y < C A c t o r > ;  
 	 	 v a r   o n l y T h r e a t T a r g e t s 	 	 	 :   b o o l ;  
 	 	  
 	 	 t h e P l a y e r . S e t u p E n e m i e s C o l l e c t i o n (   e n e m y C o l l e c t i o n D i s t ,   e n e m y C o l l e c t i o n D i s t ,   1 0 ,   ' N o n e ' ,   F L A G _ A t t i t u d e _ N e u t r a l   +   F L A G _ A t t i t u d e _ H o s t i l e   +   F L A G _ A t t i t u d e _ F r i e n d l y   +   F L A G _ O n l y A l i v e A c t o r s   ) ;  
 	  
 	 	  
 	 	  
 	  
 	 	 i f   (   G e t C u r r e n t S t a t e N a m e ( )   ! =   ' P l a y e r D i a l o g S c e n e '   & &   I s A l i v e ( )   )  
 	 	 {  
 	 	 	 G e t V i s i b l e E n e m i e s (   a c t o r s   ) ;  
  
 	 	 	  
 	 	 	 i f   (   h o s t i l e E n e m i e s . S i z e ( )   >   0   )  
 	 	 	 {  
 	 	 	 	 f o r (   i = 0 ;   i   <   h o s t i l e E n e m i e s . S i z e ( )   ;   i + = 1   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   ! a c t o r s . C o n t a i n s (   h o s t i l e E n e m i e s [ i ]   )   )  
 	 	 	 	 	 	 a c t o r s . P u s h B a c k (   h o s t i l e E n e m i e s [ i ]   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 i f   (   f i n i s h a b l e E n e m i e s L i s t . S i z e ( )   >   0   )  
 	 	 	 {  
 	 	 	 	 f o r (   i = 0 ;   i   <   f i n i s h a b l e E n e m i e s L i s t . S i z e ( )   ;   i + = 1   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   ! a c t o r s . C o n t a i n s (   f i n i s h a b l e E n e m i e s L i s t [ i ]   )   )  
 	 	 	 	 	 	 a c t o r s . P u s h B a c k (   f i n i s h a b l e E n e m i e s L i s t [ i ]   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 i f   (   m o v e T a r g e t   & &   ! a c t o r s . C o n t a i n s (   m o v e T a r g e t   )     )  
 	 	 	 	 a c t o r s . P u s h B a c k (   m o v e T a r g e t   ) ; 	 	 	  
 	 	 	  
 	 	 	 F i l t e r A c t o r s (   a c t o r s ,   o n l y T h r e a t T a r g e t s ,   f a l s e   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f   (   a c t o r s . S i z e ( )   >   0   )  
 	 	 	 {  
 	 	 	 	 s e t I s T h r e a t e n e d   =   f a l s e ;  
 	 	 	  
 	 	 	 	 i f   (   o n l y T h r e a t T a r g e t s   )  
 	 	 	 	 {  
 	 	 	 	 	 s e t I s T h r e a t e n e d   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 f o r (   i = 0 ;   i   <   a c t o r s . S i z e ( )   ;   i + = 1   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   I s T h r e a t (   a c t o r s [ i ]   )   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 s e t I s T h r e a t e n e d   =   t r u e ;  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 e n e m y s T a r g e t   =   a c t o r s [ i ] . G e t T a r g e t ( ) ;  
 	 	 	 	 	 	 	 i s E n e m y I n C o m b a t   =   a c t o r s [ i ] . I s I n C o m b a t ( ) ;  
 	 	 	 	 	 	 	 i f   (   i s E n e m y I n C o m b a t   & &   e n e m y s T a r g e t   & &   G e t A t t i t u d e B e t w e e n (   e n e m y s T a r g e t ,   t h i s   )   = =   A I A _ F r i e n d l y   & &   e n e m y s T a r g e t . i s P l a y e r F o l l o w e r   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 s e t I s T h r e a t e n e d   =   t r u e ;  
 	 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 	 } 	 	 	 	 	 	 	  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 f o r (   i   =   a c t o r s . S i z e ( ) - 1 ;   i > = 0 ;   i - = 1   )  
 	 	 	 	 { 	 	 	  
 	 	 	 	 	 i f   (   (   ! a c t o r s [ i ] . I s A l i v e ( )   & &   ! f i n i s h a b l e E n e m i e s L i s t . C o n t a i n s (   a c t o r s [ i ]   )   )  
 	 	 	 	 	 	 | |   a c t o r s [ i ] . I s K n o c k e d U n c o n s c i o u s ( )  
 	 	 	 	 	 	 | |   t h i s . G e t U s e d V e h i c l e ( )   = =   a c t o r s [ i ]  
 	 	 	 	 	 	 | |   ! a c t o r s [ i ] . C a n B e T a r g e t e d ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t o r s . E r a s e F a s t ( i ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f   (   ! I s T h r e a t e n e d ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   ! W a s V i s i b l e I n S c a l e d F r a m e (   a c t o r s [ i ] ,   1 . f ,   1 . f   )   )  
 	 	 	 	 	 	 	 a c t o r s . E r a s e F a s t ( i ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   i f   (   m o v e T a r g e t   & &   I s T h r e a t (   m o v e T a r g e t   )   )  
 	 	 	 	 s e t I s T h r e a t e n e d   =   t r u e ;  
 	 	 	 	  
 	 	 	 e l s e  
 	 	 	 	 s e t I s T h r e a t e n e d   =   f a l s e ;  
 	 	 	 	  
  
 	 	 	 i f   (   s e t I s T h r e a t e n e d   )  
 	 	 	 { 	 	 	 	  
 	 	 	 	 e n e m y C o l l e c t i o n D i s t   =   5 0 . f ;  
 	 	 	 	 S e t I s T h r e a t e n e d (   t r u e   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   I s T h r e a t e n e d ( )   )  
 	 	 	 	 	 A d d T i m e r (   ' f i n i s h a b l e E n e m i e s L i s t ' ,   1 . f   ) ;  
 	 	 	 	  
 	 	 	 	 e n e m y C o l l e c t i o n D i s t   =   f i n d M o v e T a r g e t D i s t M a x ;  
 	 	 	 	 S e t I s T h r e a t e n e d (   f a l s e   ) ;  
 	 	 	 }  
  
 	 	 	 m o v e T a r g e t s   =   a c t o r s ;  
 	 	 	 p o t e n t i a l M o v e T a r g e t s   =   m o v e T a r g e t s ;  
 	 	 	  
 	 	 	  
 	 	 	 i f   (   ! m o v e T a r g e t   )    
 	 	 	 	 e n a b l e S t r a f e   =   f a l s e ;  
 	 	 	 	  
 	 	 	 i f   (   p o t e n t i a l M o v e T a r g e t s . S i z e ( )   >   0   )  
 	 	 	 {  
 	 	 	 	 f o r   (   i   =   0 ;   i   <   p o t e n t i a l M o v e T a r g e t s . S i z e ( ) ;   i   + =   1   )  
 	 	 	 	 { 	  
 	 	 	 	 	 i f   (   p o t e n t i a l M o v e T a r g e t s [ i ] . C a n B e S t r a f e d ( )   )  
 	 	 	 	 	 	 e n a b l e S t r a f e   =   t r u e ;  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   ! p o t e n t i a l M o v e T a r g e t s [ i ] . G e t G a m e p l a y V i s i b i l i t y ( )   )  
 	 	 	 	 	 	 m o v e T a r g e t D i s t s . P u s h B a c k (   1 0 0 . f   ) ;    
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 m o v e T a r g e t D i s t s . P u s h B a c k (   V e c D i s t a n c e (   p o t e n t i a l M o v e T a r g e t s [ i ] . G e t N e a r e s t P o i n t I n P e r s o n a l S p a c e (   G e t W o r l d P o s i t i o n ( )   ) ,   G e t W o r l d P o s i t i o n ( )   )   ) ;  
  
 	 	 	 	 	 i f   (   c a n F i n d P a t h E n e m i e s L i s t . C o n t a i n s (   p o t e n t i a l M o v e T a r g e t s [ i ]   )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 m o v e T a r g e t C a n P a t h F i n d s . P u s h B a c k (   t r u e   ) ;  
 	 	 	 	 	 	 a P o t e n t i a l M o v e T a r g e t C a n F i n d P a t h   =   t r u e ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 m o v e T a r g e t C a n P a t h F i n d s . P u s h B a c k (   f a l s e   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 } 	 	 	 	 	  
  
 	 	 	 	 i f   (   a P o t e n t i a l M o v e T a r g e t C a n F i n d P a t h   )  
 	 	 	 	 {  
 	 	 	 	 	 f o r   (   i   =   m o v e T a r g e t C a n P a t h F i n d s . S i z e ( ) - 1   ;   i   > =   0 ;   i - = 1   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   ! m o v e T a r g e t C a n P a t h F i n d s [ i ]   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 m o v e T a r g e t C a n P a t h F i n d s . E r a s e F a s t ( i ) ;  
 	 	 	 	 	 	 	 p o t e n t i a l M o v e T a r g e t s . E r a s e F a s t ( i ) ;  
 	 	 	 	 	 	 	 m o v e T a r g e t D i s t s . E r a s e F a s t ( i ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 }  
  
 	 	 	 	 i f   (   m o v e T a r g e t D i s t s . S i z e ( )   >   0   )  
 	 	 	 	 	 n e w M o v e T a r g e t   =   p o t e n t i a l M o v e T a r g e t s [   A r r a y F i n d M i n F (   m o v e T a r g e t D i s t s   )   ] ;  
 	 	 	 }  
  
 	 	 	 i f   (   n e w M o v e T a r g e t   & &   n e w M o v e T a r g e t   ! =   m o v e T a r g e t   )  
 	 	 	 {  
 	 	 	 	 i f   (   m o v e T a r g e t   )  
 	 	 	 	 {  
 	 	 	 	 	 p l a y e r T o N e w M o v e T a r g e t D i s t   = 	 V e c D i s t a n c e (   n e w M o v e T a r g e t . G e t N e a r e s t P o i n t I n P e r s o n a l S p a c e (   G e t W o r l d P o s i t i o n ( )   ) ,   G e t W o r l d P o s i t i o n ( )   ) ;  
 	 	 	 	 	 p l a y e r T o M o v e T a r g e t D i s t   =   V e c D i s t a n c e (   m o v e T a r g e t . G e t N e a r e s t P o i n t I n P e r s o n a l S p a c e (   G e t W o r l d P o s i t i o n ( )   ) ,   G e t W o r l d P o s i t i o n ( )   ) ;  
 	 	 	 	 	 w a s V i s i b l e I n F u l l F r a m e   =   W a s V i s i b l e I n S c a l e d F r a m e (   m o v e T a r g e t ,   1 . f ,   1 . f   )   ;  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   ! I s T h r e a t (   m o v e T a r g e t   )  
 	 	 	 	 	 	 | |   ! w a s V i s i b l e I n F u l l F r a m e  
 	 	 	 	 	 	 | |   ! I s E n e m y V i s i b l e (   m o v e T a r g e t   )    
 	 	 	 	 	 	 | |   (   ! m o v e T a r g e t . I s A l i v e ( )   & &   ! f i n i s h a b l e E n e m i e s L i s t . C o n t a i n s (   m o v e T a r g e t   )   )  
 	 	 	 	 	 	 | |   ! m o v e T a r g e t . G e t G a m e p l a y V i s i b i l i t y ( )  
 	 	 	 	 	 	 | |   (   m o v e T a r g e t . I s A l i v e ( )   & &   m o v e T a r g e t . I s K n o c k e d U n c o n s c i o u s ( )   )    
 	 	 	 	 	 	 | |   (   w a s V i s i b l e I n F u l l F r a m e   & &   I s E n e m y V i s i b l e (   m o v e T a r g e t   )   & &   p l a y e r T o N e w M o v e T a r g e t D i s t   <   p l a y e r T o M o v e T a r g e t D i s t   -   0 . 2 5 f   )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 S e t M o v e T a r g e t (   n e w M o v e T a r g e t   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e    
 	 	 	 	 	 S e t M o v e T a r g e t (   n e w M o v e T a r g e t   ) ;  
 	 	 	 }  
  
  
 	 	 	 i f   (   ! I s T h r e a t e n e d ( )   )  
 	 	 	 {  
 	 	 	 	 i f   (   m o v e T a r g e t    
 	 	 	 	 	 & &   (   (   ! m o v e T a r g e t . I s A l i v e ( )   & &   ! f i n i s h a b l e E n e m i e s L i s t . C o n t a i n s (   m o v e T a r g e t   )   )   | |   ! W a s V i s i b l e I n S c a l e d F r a m e (   m o v e T a r g e t ,   0 . 8 f ,   1 . f   )   | |   V e c D i s t a n c e (   m o v e T a r g e t . G e t W o r l d P o s i t i o n ( ) ,   t h i s . G e t W o r l d P o s i t i o n ( )   )   >   t h e G a m e . p a r a m s . M A X _ T H R O W _ R A N G E     ) 	 )  
 	 	 	 	 {  
 	 	 	 	 	 c o n f i r m E m p t y M o v e T a r g e t   =     t r u e ;  
 	 	 	 	 	 n e w E m p t y M o v e T a r g e t T i m e r   =   0 . f ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 	  
 	 	 	 e l s e   i f   (   m o v e T a r g e t   & &   (   I s T h r e a t (   m o v e T a r g e t   )   | |   f i n i s h a b l e E n e m i e s L i s t . C o n t a i n s (   m o v e T a r g e t   )   )   ) 	 	 	 	  
 	 	 	 {  
 	 	 	 	 i f   (   ! I s E n e m y V i s i b l e (   m o v e T a r g e t   )   )  
 	 	 	 	 {  
 	 	 	 	 	 c o n f i r m E m p t y M o v e T a r g e t   =     t r u e ;  
 	 	 	 	 	 n e w E m p t y M o v e T a r g e t T i m e r   =   5 . f ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 	 S e t M o v e T a r g e t (   m o v e T a r g e t   ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f   (   I s I n C o m b a t ( )   )  
 	 	 	 {  
 	 	 	 	 c o n f i r m E m p t y M o v e T a r g e t   =     t r u e ;  
 	 	 	 	 n e w E m p t y M o v e T a r g e t T i m e r   =   1 . 0 f ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   c o n f i r m E m p t y M o v e T a r g e t   )  
 	 	 	 {  
 	 	 	 	 i f   (   n e w E m p t y M o v e T a r g e t T i m e r   <   e m p t y M o v e T a r g e t T i m e r   )  
 	 	 	 	 {  
 	 	 	 	 	 b I s C o n f i r m i n g E m p t y T a r g e t   =   f a l s e ;  
 	 	 	 	 	 e m p t y M o v e T a r g e t T i m e r   =   n e w E m p t y M o v e T a r g e t T i m e r ;  
 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 C o n f i r m E m p t y M o v e T a r g e t (   n e w E m p t y M o v e T a r g e t T i m e r   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 	 S e t I s T h r e a t e n e d (   f a l s e   ) ;  
 	 	 	  
 	 	  
 	 	 i f   (   I s T h r e a t e n e d ( )   & &   ! I s I n F i s t F i g h t M i n i G a m e ( )   )  
 	 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . C r e a t e R e a c t i o n E v e n t I f P o s s i b l e (   t h i s ,   ' C o m b a t N e a r b y A c t i o n ' ,   5 . 0 ,   1 8 . 0 f ,   - 1 . f ,   - 1 ,   t r u e   ) ;    
 	 	 e l s e  
 	 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . R e m o v e R e a c t i o n E v e n t (   t h i s ,   ' C o m b a t N e a r b y A c t i o n ' ) ;    
 	 	 	  
 	 	  
 	 	 t h e S o u n d . S o u n d P a r a m e t e r (   " m o n s t e r _ c o u n t " ,   h o s t i l e M o n s t e r s . S i z e ( )   ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   C o n f i r m E m p t y M o v e T a r g e t (   t i m e D e l t a   :   f l o a t   )  
 	 {  
 	 	 i f   (   ! b I s C o n f i r m i n g E m p t y T a r g e t   )  
 	 	 {    
 	 	 	 b I s C o n f i r m i n g E m p t y T a r g e t   =   t r u e ;  
 	 	 	 A d d T i m e r (   ' C o n f i r m E m p t y T a r g e t T i m e r ' ,   t i m e D e l t a   ) ;  
 	 	 }  
 	 }  
  
 	 p r i v a t e   t i m e r   f u n c t i o n   C o n f i r m E m p t y T a r g e t T i m e r (   t i m e   :   f l o a t   ,   i d   :   i n t )  
 	 { 	 	  
 	 	 S e t M o v e T a r g e t (   N U L L   ) ; 	  
 	 }  
 	  
  
 	 v a r   i s I n C o m b a t R e a s o n 	 	 	 	 :   i n t ;  
 	 v a r   c a n F i n d P a t h T o E n e m y 	 	 	 	 :   b o o l ;  
 	 v a r   c o m b a t M o d e E n t   	 	 	 	 	 :   C E n t i t y ; 	  
 	 v a r   n a v D i s t   	 	 	 	 	 	 :   f l o a t ;  
 	 v a r   d i r e c t D i s t   	 	 	 	 	 	 :   f l o a t ; 	  
 	 v a r   r e a c h a b l e E n e m y W a s T o o F a r 	 	 	 :   b o o l ;  
 	 v a r   r e a c h a b l e E n e m y W a s T o o F a r T i m e S t a m p 	 :   f l o a t ;  
 	 v a r   r e a c h a b l i l i t y F a i l e d 	 	 	 	 :   b o o l ;  
 	 v a r   r e a c h a b l i l i t y F a i l e d T i m e S t a m p 	 :   f l o a t ; 	  
 	 p u b l i c   f u n c t i o n   S h o u l d E n a b l e C o m b a t (   o u t   u n a b l e T o P a t h F i n d   :   b o o l ,   f o r c e C o m b a t M o d e   :   b o o l   )   :   b o o l  
 	 {  
 	 	 v a r   s h o u l d F i n d P a t h T o N P C s   	 :   b o o l ;  
 	 	 v a r   p l a y e r T o T a r g e t D i s t 	   	 :   f l o a t ;  
 	 	 v a r   c a n F i n d P a t h T o T a r g e t 	 	 :   b o o l ;  
 	 	 v a r   m o v e T a r g e t N P C   	 	 	 :   C N e w N P C ;  
 	 	 v a r   c u r r e n t T i m e 	 	 	 	 :   f l o a t ;  
 	 	 v a r   c u r r e n t T i m e 2 	 	 	 :   f l o a t ;  
 	 	 v a r   i s R e a c h a b l e E n e m y T o o F a r 	 :   b o o l ;  
 	 	 v a r   r e a c h a b l e E n e m y W a s T o o F a r T i m e S t a m p D e l t a 	 :   f l o a t ;  
 	 	 v a r   r e a c h a b l i l i t y F a i l e d T i m e S t a m p D e l t a 	 	 :   f l o a t ;  
 	 	 v a r   c u r r e n t T i m e T e m p   	 	 :   f l o a t ;  
 	  
 	 	  
  
 	 	 i f   (   f o r c e C o m b a t M o d e   & &   i s S n a p p e d T o N a v M e s h   )  
 	 	 	 r e t u r n   t r u e ;  
 	  
 	 	 i f   (   ! I s T h r e a t e n e d ( )   )  
 	 	 {  
 	 	 	 r e a c h a b l e E n e m y W a s T o o F a r   =   f a l s e ;  
 	 	 	 r e a c h a b l i l i t y F a i l e d   =   f a l s e ; 	 	  
 	 	 	 i s I n C o m b a t R e a s o n   =   0 ;    
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	  
 	 	 i f (   t h e P l a y e r . s u b s t a t e M a n a g e r . G e t S t a t e C u r ( )   ! =   ' C o m b a t E x p l o r a t i o n '   & &   ! t h e P l a y e r . s u b s t a t e M a n a g e r . C a n C h a n g e T o S t a t e (   ' C o m b a t E x p l o r a t i o n '   )  
 	 	 & &   t h e P l a y e r . s u b s t a t e M a n a g e r . G e t S t a t e C u r ( )   ! =   ' R a g d o l l '   )    
 	 	 {  
 	 	 	 r e a c h a b l e E n e m y W a s T o o F a r   =   f a l s e ;  
 	 	 	 r e a c h a b l i l i t y F a i l e d   =   f a l s e ; 	 	  
 	 	 	 i s I n C o m b a t R e a s o n   =   0 ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 i f   (   m o v e T a r g e t   )  
 	 	 {  
 	 	 	 c a n F i n d P a t h T o E n e m y   =   C a n F i n d P a t h T o T a r g e t (   u n a b l e T o P a t h F i n d   ) ;  
 	 	 	 c u r r e n t T i m e T e m p   =   E n g i n e T i m e T o F l o a t (   t h e G a m e . G e t E n g i n e T i m e ( )   ) ;  
 	 	 	  
 	 	 	 i f   (   c a n F i n d P a t h T o E n e m y   )  
 	 	 	 	 i s R e a c h a b l e E n e m y T o o F a r   =   I s R e a c h a b l e E n e m y T o o F a r ( ) ; 	 	 	 	 	  
 	 	 	  
 	 	 	 i f   (   I s I n C o m b a t ( )   )  
 	 	 	 {  
 	 	 	 	 i f   (   c a n F i n d P a t h T o E n e m y   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   f o r c e C o m b a t M o d e   )  
 	 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	  
 	 	 	 	 	 r e a c h a b l i l i t y F a i l e d   =   f a l s e ;  
 	 	 	 	 	 r e a c h a b l i l i t y F a i l e d T i m e S t a m p   =   c u r r e n t T i m e T e m p ; 	 	 	 	 	 	  
 	 	 	 	  
 	 	 	 	 	 i f   (   r e a c h a b l e E n e m y W a s T o o F a r   )  
 	 	 	 	 	 { 	 	 	 	 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 i f   (   i s R e a c h a b l e E n e m y T o o F a r   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 c u r r e n t T i m e   =   c u r r e n t T i m e T e m p ;  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 i f   (   G e t I s S p r i n t i n g ( )   )  
 	 	 	 	 	 	 	 	 r e a c h a b l e E n e m y W a s T o o F a r T i m e S t a m p D e l t a   =   0 . f ;  
 	 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 	 r e a c h a b l e E n e m y W a s T o o F a r T i m e S t a m p D e l t a   =   3 . f ;  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 i f   (   c u r r e n t T i m e   >   r e a c h a b l e E n e m y W a s T o o F a r T i m e S t a m p   +   r e a c h a b l e E n e m y W a s T o o F a r T i m e S t a m p D e l t a   )  
 	 	 	 	 	 	 	 { 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 i s I n C o m b a t R e a s o n   =   0 ;  
 	 	 	 	 	 	 	 	 u n a b l e T o P a t h F i n d   =   t r u e ;  
 	 	 	 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 r e a c h a b l e E n e m y W a s T o o F a r   =   f a l s e ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   i s R e a c h a b l e E n e m y T o o F a r   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 r e a c h a b l e E n e m y W a s T o o F a r   =   t r u e ;  
 	 	 	 	 	 	 	 r e a c h a b l e E n e m y W a s T o o F a r T i m e S t a m p   =   c u r r e n t T i m e T e m p ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 r e a c h a b l e E n e m y W a s T o o F a r   =   f a l s e ;  
 	 	 	 	 	 } 	  
 	 	 	  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 r e a c h a b l e E n e m y W a s T o o F a r   =   f a l s e ;  
 	 	 	 	 	 r e a c h a b l e E n e m y W a s T o o F a r T i m e S t a m p   =   c u r r e n t T i m e T e m p ;  
 	 	 	 	  
 	 	 	 	 	 i f   (   r e a c h a b l i l i t y F a i l e d   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   I s E n e m y T o o H i g h T o R e a c h ( )   )  
 	 	 	 	 	 	 	 r e a c h a b l i l i t y F a i l e d T i m e S t a m p D e l t a   =   1 . f ;  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 r e a c h a b l i l i t y F a i l e d T i m e S t a m p D e l t a   =   5 . f ;  
 	 	 	 	 	  
 	 	 	 	 	 	 c u r r e n t T i m e 2   =   c u r r e n t T i m e T e m p ;  
 	 	 	 	 	 	 i f   (   c u r r e n t T i m e 2   >   r e a c h a b l i l i t y F a i l e d T i m e S t a m p   +   r e a c h a b l i l i t y F a i l e d T i m e S t a m p D e l t a   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 u n a b l e T o P a t h F i n d   =   t r u e ;  
 	 	 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e a c h a b l i l i t y F a i l e d   =   t r u e ;  
 	 	 	 	 	 	 r e a c h a b l i l i t y F a i l e d T i m e S t a m p   =   c u r r e n t T i m e T e m p ;  
 	 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   i f   (   c a n F i n d P a t h T o E n e m y   )  
 	 	 	 {  
 	 	 	 	 i f   (   f o r c e C o m b a t M o d e   )  
 	 	 	 	 {  
 	 	 	 	 	 r e a c h a b l e E n e m y W a s T o o F a r   =   f a l s e ;  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 }  
 	 	 	  
 	 	 	 	 r e a c h a b l i l i t y F a i l e d   =   f a l s e ;  
 	 	 	 	 r e a c h a b l i l i t y F a i l e d T i m e S t a m p   =   c u r r e n t T i m e T e m p ;  
 	 	 	 	  
 	 	 	 	 m o v e T a r g e t N P C   =   ( C N e w N P C ) m o v e T a r g e t ;  
 	 	 	 	 p l a y e r T o T a r g e t D i s t   =   V e c D i s t a n c e (   m o v e T a r g e t . G e t W o r l d P o s i t i o n ( ) ,   t h i s . G e t W o r l d P o s i t i o n ( )   ) ;  
  
 	 	 	 	   i f   (   r e a c h a b l e E n e m y W a s T o o F a r    
 	 	 	 	 	 & &   (   i s R e a c h a b l e E n e m y T o o F a r   | |   ! t h e G a m e . G e t W o r l d ( ) . N a v i g a t i o n L i n e T e s t (   t h i s . G e t W o r l d P o s i t i o n ( ) ,   m o v e T a r g e t . G e t W o r l d P o s i t i o n ( ) ,   0 . 4 f   )   )   )  
 	 	 	 	 {  
 	 	 	 	 	 i s I n C o m b a t R e a s o n   =   0 ;  
 	 	 	 	 	 r e t u r n   f a l s e ; 	 	 	  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   p l a y e r T o T a r g e t D i s t   < =   f i n d M o v e T a r g e t D i s t M i n   )  
 	 	 	 	 	 i s I n C o m b a t R e a s o n   =   1 ;  
 	 	 	 	 e l s e   i f   (   (   m o v e T a r g e t N P C . G e t C u r r e n t S t a n c e ( )   = =   N S _ F l y   | |   m o v e T a r g e t N P C . I s R a n g e d ( )   )   & &   h o s t i l e E n e m i e s . C o n t a i n s (   m o v e T a r g e t   )   )    
 	 	 	 	 	 i s I n C o m b a t R e a s o n   =   2 ;  
 	 	 	 	 e l s e  
 	 	 	 	 { 	 	 	    
 	 	 	 	 	 i s I n C o m b a t R e a s o n   =   0 ;  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 r e a c h a b l e E n e m y W a s T o o F a r   =   f a l s e ;  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 } 	 	 	 	 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e a c h a b l e E n e m y W a s T o o F a r   =   f a l s e ;  
 	 	 	 r e a c h a b l i l i t y F a i l e d   =   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i s I n C o m b a t R e a s o n   =   0 ;  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   C a n F i n d P a t h T o T a r g e t (   o u t   u n a b l e T o P a t h F i n d   :   b o o l ,   o p t i o n a l   f o r c e d T a r g e t   :   C N e w N P C   )   :   b o o l  
 	 {  
 	 	 v a r   m o v e T a r g e t N P C   :   C N e w N P C ;  
 	 	 v a r   m o v e T a r g e t s T e m p 	 :   a r r a y < C A c t o r > ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   s a f e S p o t T o l e r a n c e   :   f l o a t ;  
 	 	 v a r   e n t   :   C E n t i t y ;  
  
 	 	 m o v e T a r g e t s T e m p   =   m o v e T a r g e t s ;  
 	  
 	 	 f o r   (   i   =   0 ;   i   <   m o v e T a r g e t s T e m p . S i z e ( ) ;   i   + =   1   )  
 	 	 {  
 	 	 	 m o v e T a r g e t N P C   =   ( C N e w N P C ) m o v e T a r g e t s T e m p [ i ] ;  
 	 	  
 	 	 	 i f   (   m o v e T a r g e t N P C   & &   m o v e T a r g e t N P C . G e t C u r r e n t S t a n c e ( )   = =   N S _ F l y   )  
 	 	 	 {  
 	 	 	 	 i s I n C o m b a t R e a s o n   =   2 ;    
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	  
 	 	 s w i t c h   (   n a v Q u e r y . G e t L a s t O u t p u t (   0 . 4   )   )  
 	 	 {  
 	 	 	 c a s e   E A s y n c T a s t R e s u l t _ F a i l u r e :  
 	 	 	 {  
 	 	 	 	 i s I n C o m b a t R e a s o n   =   0 ;    
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	 c a s e   E A s y n c T a s t R e s u l t _ S u c c e s s :  
 	 	 	 {  
 	 	 	 	 e n t   =   n a v Q u e r y . G e t O u t p u t C l o s e s t E n t i t y ( ) ;  
 	 	 	 	  
 	 	 	 	 i f   (   e n t   )  
 	 	 	 	 	 c o m b a t M o d e E n t   =   m o v e T a r g e t ;  
 	 	 	 	 	  
 	 	 	 	 n a v D i s t   =   n a v Q u e r y . G e t O u t p u t C l o s e s t D i s t a n c e ( ) ;  
 	 	 	 	  
 	 	 	 	 i s I n C o m b a t R e a s o n   =   1 ;    
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 	 c a s e   E A s y n c T a s t R e s u l t _ P e n d i n g :  
 	 	 	 {  
 	 	 	 	 r e t u r n   c a n F i n d P a t h T o E n e m y ;  
 	 	 	 }  
 	 	 	 c a s e   E A s y n c T a s t R e s u l t _ I n v a l i d a t e d :  
 	 	 	 {  
 	 	 	 	 i f   (   I s I n C o m b a t ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   I s E n e m y T o o H i g h T o R e a c h ( )   )    
 	 	 	 	 	 	 s a f e S p o t T o l e r a n c e   =   0 . f ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 s a f e S p o t T o l e r a n c e   =   3 . f ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 	 s a f e S p o t T o l e r a n c e   =   0 . f ;  
 	 	 	  
 	 	 	 	 s w i t c h (   n a v Q u e r y . T e s t A c t o r s L i s t (   E N a v i g a t i o n R e a c h a b i l i t y _ A n y ,   t h i s ,   m o v e T a r g e t s T e m p ,   s a f e S p o t T o l e r a n c e ,   7 5 . 0   )   )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   E A s y n c T a s t R e s u l t _ F a i l u r e :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i s I n C o m b a t R e a s o n   =   0 ;  
 	 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 	 }  
 	 	 	 	 	 c a s e   E A s y n c T a s t R e s u l t _ S u c c e s s :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 e n t   =   n a v Q u e r y . G e t O u t p u t C l o s e s t E n t i t y ( ) ;  
 	 	 	 	 	 	  
 	 	 	 	 	 	 i f   (   e n t   )  
 	 	 	 	 	 	 	 c o m b a t M o d e E n t   =   m o v e T a r g e t ;  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 n a v D i s t   =   n a v Q u e r y . G e t O u t p u t C l o s e s t D i s t a n c e ( ) ; 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 	 i s I n C o m b a t R e a s o n   =   1 ;    
 	 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 	 }  
 	 	 	 	 	 c a s e   E A s y n c T a s t R e s u l t _ P e n d i n g :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e t u r n   c a n F i n d P a t h T o E n e m y ;  
 	 	 	 	 	 } 	  
 	 	 	 	 	 c a s e   E A s y n c T a s t R e s u l t _ I n v a l i d a t e d :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   I s I n C o m b a t ( )   )  
 	 	 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 	 } 	  
 	 	 	 	 }  
 	 	 	 }  
 	 	 } 	  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   I s R e a c h a b l e E n e m y T o o F a r ( )   :   b o o l  
 	 {  
 	 	  
 	 	 v a r   n a v D i s t L i m i t 	 	 	 :   f l o a t   =   f i n d M o v e T a r g e t D i s t ;    
 	 	 v a r   n a v D i s t D i v i s o r 	 	 	 :   f l o a t   =   2 . f ;  
 	 	 v a r   p l a y e r T o T a r g e t V e c t o r 	 :   V e c t o r ; 	  
 	  
 	 	 d i r e c t D i s t   =   V e c D i s t a n c e (   c o m b a t M o d e E n t . G e t W o r l d P o s i t i o n ( ) ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   ) ; 	  
 	 	 p l a y e r T o T a r g e t V e c t o r   =   t h i s . G e t W o r l d P o s i t i o n ( )   -   c o m b a t M o d e E n t . G e t W o r l d P o s i t i o n ( ) ;  
 	 	  
 	 	 i f   (   p l a y e r M o d e . G e t F o r c e C o m b a t M o d e ( )   | |   i s I n C o m b a t R e a s o n   = =   2   )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i f   (   (   p l a y e r T o T a r g e t V e c t o r . Z   <   0 . 5   & &   n a v D i s t   >   n a v D i s t L i m i t   & &   d i r e c t D i s t   <   n a v D i s t / n a v D i s t D i v i s o r   )   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e  
 	 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   I s E n e m y T o o H i g h T o R e a c h ( )   :   b o o l  
 	 { 	  
 	 	 v a r   p l a y e r T o T a r g e t V e c t o r 	 :   V e c t o r ; 	 	  
 	  
 	 	 p l a y e r T o T a r g e t V e c t o r   =   t h i s . G e t W o r l d P o s i t i o n ( )   -   c o m b a t M o d e E n t . G e t W o r l d P o s i t i o n ( ) ;  
 	  
 	 	 i f   (   p l a y e r T o T a r g e t V e c t o r . Z   <   - 0 . 5 f   & &   ! t h e G a m e . G e t W o r l d ( ) . N a v i g a t i o n L i n e T e s t (   t h i s . G e t W o r l d P o s i t i o n ( ) ,   c o m b a t M o d e E n t . G e t W o r l d P o s i t i o n ( ) ,   0 . 4 f   )   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e  
 	 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   L o c k T o M o v e T a r g e t (   l o c k T i m e   :   f l o a t   )  
 	 {  
 	 	  
 	 }  
 	  
 	 p r i v a t e   t i m e r   f u n c t i o n   D i s a b l e L o c k T o M o v e T a r g e t T i m e r (   t i m e   :   f l o a t   ,   i d   :   i n t )  
 	 {  
 	 	 i f   (   ! t h i s . I s A c t o r L o c k e d T o T a r g e t ( )   )  
 	 	 {  
 	 	 	 S e t M o v e T a r g e t C h a n g e A l l o w e d (   t r u e   ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t M o v e T a r g e t C h a n g e A l l o w e d (   f l a g   :   b o o l   )  
 	 {  
 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s M o v e T a r g e t C h a n g e A l l o w e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   b M o v e T a r g e t C h a n g e A l l o w e d ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t M o v e T a r g e t (   a c t o r   :   C A c t o r   )  
 	 { 	 	  
 	 	 i f   (   ! a c t o r   & &   F o r c e C o m b a t M o d e O v e r r i d e ( )   )  
 	 	 	 r e t u r n ;  
 	  
 	 	 i f   (   I s M o v e T a r g e t C h a n g e A l l o w e d ( )  
 	 	 	 & &   m o v e T a r g e t   ! =   a c t o r   )  
 	 	 {  
 	 	 	 m o v e T a r g e t   =   a c t o r ;  
 	 	 	 b I s C o n f i r m i n g E m p t y T a r g e t   =   f a l s e ;  
 	 	 	 R e m o v e T i m e r (   ' C o n f i r m E m p t y T a r g e t T i m e r '   ) ;  
 	 	 	  
 	 	 	 i f   (   ! m o v e T a r g e t   )  
 	 	 	 	 S e t S c r i p t M o v e T a r g e t (   m o v e T a r g e t   ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   v a r   i s T h r e a t e n e d 	 :   b o o l ; 	  
 	 p r o t e c t e d   f u n c t i o n   S e t I s T h r e a t e n e d (   f l a g   :   b o o l   )   	  
 	 {   	  
 	 	 v a r   a l l o w S e t I s T h r e a t e n e d   :   b o o l ;  
 	 	  
 	 	 a l l o w S e t I s T h r e a t e n e d   =   t r u e ;  
 	 	 i f   (   F o r c e C o m b a t M o d e O v e r r i d e ( )   )  
 	 	 {  
 	 	 	 i f   (   f l a g   | |   ! m o v e T a r g e t   )  
 	 	 	 	 a l l o w S e t I s T h r e a t e n e d   =   t r u e ;  
 	 	 	 e l s e  
 	 	 	 	 a l l o w S e t I s T h r e a t e n e d   =   f a l s e ;  
 	 	 }  
 	  
 	 	 i f   (   a l l o w S e t I s T h r e a t e n e d   )  
 	 	 {  
 	 	 	 i s T h r e a t e n e d   =   f l a g ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   F o r c e C o m b a t M o d e O v e r r i d e ( )   :   b o o l  
 	 {  
 	 	 i f ( 	 t h i s . G e t P l a y e r M o d e ( ) . G e t F o r c e C o m b a t M o d e ( )    
 	 	 	 & &   c a n F i n d P a t h T o E n e m y    
 	 	 	 & &   t h e G a m e . G e t G l o b a l A t t i t u d e (   G e t B a s e A t t i t u d e G r o u p ( ) ,   m o v e T a r g e t . G e t B a s e A t t i t u d e G r o u p ( )   )   = =   A I A _ H o s t i l e   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e  
 	 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s T h r e a t e n e d ( )   :   b o o l 	 {   r e t u r n   i s T h r e a t e n e d ;   }  
 	 	  
 	 p u b l i c   f u n c t i o n   E n a b l e F i n d T a r g e t (   f l a g   :   b o o l   )  
 	 {  
 	 	 v a r   t a r g e t   :   C A c t o r ;  
 	 	  
 	 	 i f (   I s A c t o r L o c k e d T o T a r g e t ( )   )  
 	 	 {  
 	 	 	 t a r g e t   =   G e t T a r g e t ( ) ;  
 	 	 	  
 	 	 	 i f   (   t a r g e t   & &   t a r g e t . I s A l i v e ( )   )  
 	 	 	 	 b C a n F i n d T a r g e t   =   f l a g ;  
 	 	 	 e l s e  
 	 	 	 	 b C a n F i n d T a r g e t   =   t r u e ;  
 	 	 }  
 	 	 e l s e  
 	 	 	 b C a n F i n d T a r g e t   =   f l a g ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   U p d a t e D i s p l a y T a r g e t (   o p t i o n a l   f o r c e U p d a t e   :   b o o l ,   o p t i o n a l   f o r c e N u l l A c t o r   :   b o o l   )  
 	 {  
 	 	 v a r   h u d   	 	 	 	 	 :   C R 4 S c r i p t e d H u d ;  
 	 	 v a r   t e m p T a r g e t 	 	 	 	 :   C G a m e p l a y E n t i t y ;  
 	 	 v a r   a n g l e D i s t 1 	 	 	 	 :   f l o a t ;  
 	 	 v a r   a n g l e D i s t 2 	 	 	 	 :   f l o a t ;  
 	 	 v a r   n o n A c t o r T a r g e t M u l t 	 	 :   f l o a t ;  
 	 	 v a r   c o m b a t A c t i o n T y p e   	 	 :   i n t ;  
 	 	 v a r   c u r r T a r g e t 	 	 	 	 :   C A c t o r ;  
 	 	 v a r   i n t e r a c t i o n T a r g e t 	 	 :   C I n t e r a c t i o n C o m p o n e n t ;  
 	 	  
 	 	 v a r   h e a d i n g 	 	 	 	 	 :   f l o a t ;  
  
 	 	 i f ( t h e G a m e . I s D i a l o g O r C u t s c e n e P l a y i n g ( ) )  
 	 	 {  
 	 	 	 c u r r e n t S e l e c t e d D i s p l a y T a r g e t   =   N U L L ;  
 	 	 	  
 	 	 	 i f   (   d i s p l a y T a r g e t   )  
 	 	 	 	 C o n f i r m D i s p l a y T a r g e t (   N U L L   ) ;  
 	 	 	  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 i f   (   f o r c e N u l l A c t o r   )  
 	 	 	 c u r r T a r g e t   =   N U L L ;  
 	 	 e l s e  
 	 	 	 c u r r T a r g e t   =   G e t T a r g e t ( ) ;  
 	 	 	  
 	 	 c u r r e n t S e l e c t e d D i s p l a y T a r g e t   =   c u r r T a r g e t ;  
 	 	  
 	 	 i f   (   c u r r T a r g e t   & &   ! c u r r T a r g e t . I s T a r g e t a b l e B y P l a y e r ( )   )  
 	 	 {  
 	 	 	 c u r r e n t S e l e c t e d D i s p l a y T a r g e t   =   N U L L ;  
 	 	 	 C o n f i r m D i s p l a y T a r g e t (   c u r r e n t S e l e c t e d D i s p l a y T a r g e t   ) ;  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 n o n A c t o r T a r g e t M u l t   =   1 . 2 5 ;  
 	 	  
 	 	  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ; 	  
 	 	  
 	 	 i f   (   ! I s T h r e a t e n e d ( )   )  
 	 	 {  
 	 	 	 i f   (   ! b L A x i s R e l e a s e d   | |   l a s t A x i s I n p u t I s M o v e m e n t     )  
 	 	 	 {  
 	 	 	 	 i f   (   c u r r T a r g e t   )  
 	 	 	 	 	 a n g l e D i s t 1   =   A b s F (   A n g l e D i s t a n c e (   t h i s . G e t H e a d i n g ( ) ,   V e c H e a d i n g (   c u r r T a r g e t . G e t W o r l d P o s i t i o n ( )   -   t h i s . G e t W o r l d P o s i t i o n ( )   )   )   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 a n g l e D i s t 1   =   3 6 0 ;  
 	 	 	 	  
 	 	 	 	 i f   (   n o n A c t o r T a r g e t   )  
 	 	 	 	 	 a n g l e D i s t 2   =   A b s F (   A n g l e D i s t a n c e (   t h i s . G e t H e a d i n g ( ) ,   V e c H e a d i n g (   n o n A c t o r T a r g e t . G e t W o r l d P o s i t i o n ( )   -   t h i s . G e t W o r l d P o s i t i o n ( )   )   )   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 a n g l e D i s t 2   =   3 6 0 ; 	 	 	  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   c u r r T a r g e t   )  
 	 	 	 	 	 a n g l e D i s t 1   =   A b s F (   A n g l e D i s t a n c e (   t h e C a m e r a . G e t C a m e r a H e a d i n g ( ) ,   V e c H e a d i n g (   c u r r T a r g e t . G e t W o r l d P o s i t i o n ( )   -   t h e C a m e r a . G e t C a m e r a P o s i t i o n ( )   )   )   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 a n g l e D i s t 1   =   3 6 0 ;  
 	 	 	 	  
 	 	 	 	 i f   (   n o n A c t o r T a r g e t   )  
 	 	 	 	 	 a n g l e D i s t 2   =   A b s F (   A n g l e D i s t a n c e (   t h e C a m e r a . G e t C a m e r a H e a d i n g ( ) ,   V e c H e a d i n g (   n o n A c t o r T a r g e t . G e t W o r l d P o s i t i o n ( )   -   t h e C a m e r a . G e t C a m e r a P o s i t i o n ( )   )   )   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 a n g l e D i s t 2   =   3 6 0 ;  
 	 	 	 }  
 	 	 }  
  
 	 	 e l s e  
 	 	 { 	 	  
 	 	 	 i f   (   ! b L A x i s R e l e a s e d   )    
 	 	 	 {  
 	 	 	 	 i f   (   S h o u l d U s e P C M o d e T a r g e t i n g ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   c u r r T a r g e t   )  
 	 	 	 	 	 	 a n g l e D i s t 1   =   A b s F (   A n g l e D i s t a n c e (   t h e C a m e r a . G e t C a m e r a H e a d i n g ( ) ,   V e c H e a d i n g (   c u r r T a r g e t . G e t W o r l d P o s i t i o n ( )   -   t h e C a m e r a . G e t C a m e r a P o s i t i o n ( )   )   )   ) ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 a n g l e D i s t 1   =   3 6 0 ;  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   n o n A c t o r T a r g e t   & &   I s I n C o m b a t A c t i o n ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a n g l e D i s t 2   =   n o n A c t o r T a r g e t M u l t   *   A b s F (   A n g l e D i s t a n c e (   t h e C a m e r a . G e t C a m e r a H e a d i n g ( ) ,   V e c H e a d i n g (   n o n A c t o r T a r g e t . G e t W o r l d P o s i t i o n ( )   -   t h e C a m e r a . G e t C a m e r a P o s i t i o n ( )   )   )   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 a n g l e D i s t 2   =   3 6 0 ; 	 	 	 	  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   c u r r T a r g e t   )  
 	 	 	 	 	 	 a n g l e D i s t 1   =   A b s F (   A n g l e D i s t a n c e (   r a w P l a y e r H e a d i n g ,   V e c H e a d i n g (   c u r r T a r g e t . G e t W o r l d P o s i t i o n ( )   -   t h i s . G e t W o r l d P o s i t i o n ( )   )   )   ) ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 a n g l e D i s t 1   =   3 6 0 ;  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   n o n A c t o r T a r g e t   & &   I s I n C o m b a t A c t i o n ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a n g l e D i s t 2   =   n o n A c t o r T a r g e t M u l t   *   A b s F (   A n g l e D i s t a n c e (   r a w P l a y e r H e a d i n g ,   V e c H e a d i n g (   n o n A c t o r T a r g e t . G e t W o r l d P o s i t i o n ( )   -   t h i s . G e t W o r l d P o s i t i o n ( )   )   )   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 a n g l e D i s t 2   =   3 6 0 ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 a n g l e D i s t 1   =   0 ;  
 	 	 	 	 a n g l e D i s t 2   =   3 6 0 ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   a n g l e D i s t 1   <   a n g l e D i s t 2   )  
 	 	 	 t e m p T a r g e t   =   c u r r T a r g e t ;  
 	 	 e l s e  
 	 	 	 t e m p T a r g e t   =   n o n A c t o r T a r g e t ;  
 	 	 	  
 	 	 	  
 	 	 i f   (   s l i d e T a r g e t   & &   I s I n C o m b a t A c t i o n ( )   )  
 	 	 {  
 	 	 	 c o m b a t A c t i o n T y p e   =   ( i n t ) t h i s . G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   ) ;  
 	 	 	 i f   (     	 c o m b a t A c t i o n T y p e   = =   ( i n t ) C A T _ A t t a c k 	 	 	  
 	 	 	 	 	 | |   (   c o m b a t A c t i o n T y p e   = =   ( i n t ) C A T _ S p e c i a l A t t a c k   & &   t h i s . G e t B e h a v i o r V a r i a b l e (   ' p l a y e r A t t a c k T y p e '   )   = =   1 . f   )  
 	 	 	 	 	 | |   (   c o m b a t A c t i o n T y p e   = =   ( i n t ) C A T _ I t e m T h r o w   )  
 	 	 	 	 	 | |   (   c o m b a t A c t i o n T y p e   = =   ( i n t ) C A T _ C a s t S i g n   & &   ! I s C u r r e n t S i g n C h a n n e l e d ( )   )    
 	 	 	 	 	 | |   (   c o m b a t A c t i o n T y p e   = =   ( i n t ) C A T _ C a s t S i g n   & &   I s C u r r e n t S i g n C h a n n e l e d ( )   & &   G e t C u r r e n t l y C a s t S i g n ( )   = =   S T _ A x i i   )  
 	 	 	 	 	 | |   (   c o m b a t A c t i o n T y p e   = =   ( i n t ) C A T _ C a s t S i g n   & &   I s C u r r e n t S i g n C h a n n e l e d ( )   & &   G e t C u r r e n t l y C a s t S i g n ( )   = =   S T _ I g n i   )  
 	 	 	 	 	 | |   c o m b a t A c t i o n T y p e   = =   ( i n t ) C A T _ D o d g e  
 	 	 	 	 	 | |   c o m b a t A c t i o n T y p e   = =   ( i n t ) C A T _ R o l l   )  
 	 	 	 {  
 	 	 	 	 i f   (   c o m b a t A c t i o n T y p e   = =   ( i n t ) C A T _ C a s t S i g n   & &   G e t C u r r e n t l y C a s t S i g n ( )   = =   S T _ I g n i   & &   ! I s C o m b a t M u s i c E n a b l e d ( )   )  
 	 	 	 	 	 c u r r e n t S e l e c t e d D i s p l a y T a r g e t   =   t e m p T a r g e t ; 	  
 	 	 	 	 e l s e  
 	 	 	 	 	 c u r r e n t S e l e c t e d D i s p l a y T a r g e t   =   s l i d e T a r g e t ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 	 c u r r e n t S e l e c t e d D i s p l a y T a r g e t   =   t e m p T a r g e t ; 	  
 	 	 }  
 	 	 e l s e   i f   (   s l i d e T a r g e t    
 	 	 	 & &   t h i s . r a n g e d W e a p o n    
 	 	 	 & &   t h i s . r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '  
 	 	 	 & &   t h i s . p l a y e r A i m i n g . G e t C u r r e n t S t a t e N a m e ( )   = =   ' W a i t i n g '   )    
 	 	 	 	 c u r r e n t S e l e c t e d D i s p l a y T a r g e t   =   s l i d e T a r g e t ;  
 	 	 e l s e    
 	 	 	 c u r r e n t S e l e c t e d D i s p l a y T a r g e t   =   t e m p T a r g e t ; 	  
 	 	  
 	 	 i n t e r a c t i o n T a r g e t   =   t h e G a m e . G e t I n t e r a c t i o n s M a n a g e r ( ) . G e t A c t i v e I n t e r a c t i o n ( ) ;  
 	 	 i f     (   i n t e r a c t i o n T a r g e t   & &   ! I s T h r e a t e n e d ( )   & &   ! (   t h i s . I s C a s t i n g S i g n ( )   & &   t h i s . I s C u r r e n t S i g n C h a n n e l e d ( )   )   )  
 	 	 {  
 	 	 	 t e m p T a r g e t   =   ( C G a m e p l a y E n t i t y ) i n t e r a c t i o n T a r g e t . G e t E n t i t y ( ) ;  
 	 	 	 i f   (   t e m p T a r g e t   & &   t e m p T a r g e t   ! =     t h i s . G e t U s e d V e h i c l e ( )   )  
 	 	 	 {  
 	 	 	 	 c u r r e n t S e l e c t e d D i s p l a y T a r g e t   =   t e m p T a r g e t ;  
 	 	 	 	 S e t D i s p l a y T a r g e t (   c u r r e n t S e l e c t e d D i s p l a y T a r g e t   ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   ( C A c t o r ) c u r r e n t S e l e c t e d D i s p l a y T a r g e t   & &   ! ( ( C A c t o r ) c u r r e n t S e l e c t e d D i s p l a y T a r g e t ) . G e t G a m e p l a y V i s i b i l i t y ( )   )  
 	 	 {  
 	 	 	 c u r r e n t S e l e c t e d D i s p l a y T a r g e t   =   N U L L ;  
 	 	 }  
 	 	  
 	 	 i f   (   d i s p l a y T a r g e t   ! =   c u r r e n t S e l e c t e d D i s p l a y T a r g e t   )  
 	 	 {  
 	 	 	 i f   (   f o r c e U p d a t e   )  
 	 	 	 	 S e t D i s p l a y T a r g e t (   c u r r e n t S e l e c t e d D i s p l a y T a r g e t   ) ;  
 	 	 	 e l s e  
 	 	 	 	 C o n f i r m D i s p l a y T a r g e t (   c u r r e n t S e l e c t e d D i s p l a y T a r g e t   ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   v a r   b C o n f i r m D i s p l a y T a r g e t T i m e r E n a b l e d   	 :   b o o l ;  
 	 p r i v a t e   v a r   d i s p l a y T a r g e t T o C o n f i r m   	 	 	 	 :   C G a m e p l a y E n t i t y ;  
 	 p r i v a t e   v a r   c u r r e n t S e l e c t e d D i s p l a y T a r g e t   	 	 :   C G a m e p l a y E n t i t y ;  
 	  
 	 p r i v a t e   f u n c t i o n   C o n f i r m D i s p l a y T a r g e t (   t a r g e t T o C o n f i r m   :   C G a m e p l a y E n t i t y   )  
 	 { 	  
 	 	 i f   (   t a r g e t T o C o n f i r m   ! =   d i s p l a y T a r g e t   )  
 	 	 {  
 	 	 	 d i s p l a y T a r g e t T o C o n f i r m   =   t a r g e t T o C o n f i r m ;  
 	 	 	 i f (   ! b C o n f i r m D i s p l a y T a r g e t T i m e r E n a b l e d   )  
 	 	 	 {  
 	 	 	 	 b C o n f i r m D i s p l a y T a r g e t T i m e r E n a b l e d   =   t r u e ;  
 	 	 	 	  
 	 	 	 	 i f   (   t a r g e t T o C o n f i r m   )  
 	 	 	 	 	 A d d T i m e r (   ' C o n f i r m D i s p l a y T a r g e t T i m e r ' ,   0 . 1 f   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 A d d T i m e r (   ' C o n f i r m D i s p l a y T a r g e t T i m e r ' ,   0 . f   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   t i m e r   f u n c t i o n   C o n f i r m D i s p l a y T a r g e t T i m e r (   t i m e   :   f l o a t ,   o p t i o n a l   i d   :   i n t )  
 	 {  
 	 	 i f   (   d i s p l a y T a r g e t T o C o n f i r m   = =   c u r r e n t S e l e c t e d D i s p l a y T a r g e t   )  
 	 	 	 S e t D i s p l a y T a r g e t (   d i s p l a y T a r g e t T o C o n f i r m   ) ;  
  
 	 	 b C o n f i r m D i s p l a y T a r g e t T i m e r E n a b l e d   =   f a l s e ;  
 	 } 	  
 	  
 	  
 	 p r o t e c t e d   f u n c t i o n   S e t D i s p l a y T a r g e t (   e   :   C G a m e p l a y E n t i t y   )  
 	 {    
 	 	 v a r   d i s p l a y T a r g e t A c t o r   :   C A c t o r ;  
 	 	  
 	 	 i f   (   e   ! =   d i s p l a y T a r g e t   )  
 	 	 {  
 	 	 	 d i s p l a y T a r g e t   =   e ;  
 	 	 	 d i s p l a y T a r g e t A c t o r   =   ( C A c t o r ) d i s p l a y T a r g e t ;  
 	 	 	 S e t P l a y e r C o m b a t T a r g e t (   d i s p l a y T a r g e t A c t o r   ) ;  
 	 	 	  
 	 	 	 i f   (   d i s p l a y T a r g e t A c t o r   & &   ! d i s p l a y T a r g e t A c t o r . I s T a r g e t a b l e B y P l a y e r ( ) )  
 	 	 	 {  
 	 	 	 	 i s D i s p l a y T a r g e t T a r g e t a b l e   =   f a l s e ;  
 	 	 	 }  
 	 	 	 e l s e   i f   (   ! d i s p l a y T a r g e t A c t o r   & &   d i s p l a y T a r g e t   ! =   n o n A c t o r T a r g e t   )    
 	 	 	 {  
 	 	 	 	 i s D i s p l a y T a r g e t T a r g e t a b l e   =   f a l s e ;  
 	 	 	 }  
 	 	 	 e l s e    
 	 	 	 {  
 	 	 	 	 i s D i s p l a y T a r g e t T a r g e t a b l e   =   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 p u b l i c   f u n c t i o n   G e t D i s p l a y T a r g e t ( )   :   C G a m e p l a y E n t i t y 	 	 {   r e t u r n   d i s p l a y T a r g e t ;   }  
 	  
 	 p r i v a t e   v a r   i s D i s p l a y T a r g e t T a r g e t a b l e   :   b o o l ;  
 	 p u b l i c   f u n c t i o n   I s D i s p l a y T a r g e t T a r g e t a b l e ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s D i s p l a y T a r g e t T a r g e t a b l e ;  
 	 }  
 	  
 	 p u b l i c   	 v a r   r a d i a l S l o t s 	 	 	 	 	 :   a r r a y < n a m e > ; 	  
 	 p u b l i c   f u n c t i o n   E n a b l e R a d i a l S l o t s (   e n a b l e   :   b o o l ,   s l o t N a m e s   :   a r r a y < n a m e >   )  
 	 {  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	 v a r   m o d u l e   :   C R 4 H u d M o d u l e R a d i a l M e n u ;  
 	 	 v a r   i   :   i n t ;  
  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 m o d u l e   =   ( C R 4 H u d M o d u l e R a d i a l M e n u ) h u d . G e t H u d M o d u l e ( " R a d i a l M e n u M o d u l e " ) ;  
  
 	 	 f o r ( i = 0 ;   i < s l o t N a m e s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 m o d u l e . S e t D e s a t u r a t e d (   ! e n a b l e ,   s l o t N a m e s [ i ]   ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s E n e m y I n C o n e (   s o u r c e   :   C A c t o r ,   c o n e H e a d i n g   :   V e c t o r ,   c o n e D i s t ,   c o n e A n g l e   :   f l o a t ,   o u t   n e w L o c k T a r g e t   :   C A c t o r   )   :   b o o l  
 	 {  
 	 	 v a r   t a r g e t s   	 	 	 :   a r r a y < C A c t o r > ;  
 	 	 v a r   s o u r c e T o T a r g e t D i s t s 	 :   a r r a y < f l o a t > ; 	  
 	 	 v a r   i 	 	 	 	 	 :   i n t ;  
 	 	 v a r   t a r g e t i n g I n f o 	 	 :   S T a r g e t i n g I n f o ;  
 	 	  
 	 	  
 	 	  
 	 	 t a r g e t s   =   G e t M o v e T a r g e t s ( ) ;  
 	  
 	 	 i f   (   t a r g e t s . S i z e ( )   >   0   )  
 	 	 {  
 	 	 	 t a r g e t i n g I n f o . s o u r c e   	 	 	 	 =   t h i s ;  
 	 	 	 t a r g e t i n g I n f o . c a n B e T a r g e t e d C h e c k 	 =   t r u e ;  
 	 	 	 t a r g e t i n g I n f o . c o n e C h e c k   	 	 	 =   t r u e ;  
 	 	 	 t a r g e t i n g I n f o . c o n e H a l f A n g l e C o s 	 	 =   C o s F (   D e g 2 R a d (   c o n e A n g l e   *   0 . 5 f   )   ) ;  
 	 	 	 t a r g e t i n g I n f o . c o n e D i s t 	 	 	 	 =   c o n e D i s t ;  
 	 	 	 t a r g e t i n g I n f o . c o n e H e a d i n g V e c t o r 	 	 =   c o n e H e a d i n g ;  
 	 	 	 t a r g e t i n g I n f o . d i s t C h e c k 	 	 	 	 =   t r u e ;  
 	 	 	 t a r g e t i n g I n f o . i n v i s i b l e C h e c k 	 	 =   t r u e ;  
 	 	 	 t a r g e t i n g I n f o . n a v M e s h C h e c k 	 	 	 =   t r u e ;    
 	 	 	 t a r g e t i n g I n f o . i n F r a m e C h e c k   	 	 	 =   f a l s e ;    
 	 	 	 t a r g e t i n g I n f o . f r a m e S c a l e X   	 	 	 =   1 . f ;    
 	 	 	 t a r g e t i n g I n f o . f r a m e S c a l e Y   	 	 	 =   1 . f ;    
 	 	 	 t a r g e t i n g I n f o . k n o c k D o w n C h e c k   	 	 =   f a l s e ;    
 	 	 	 t a r g e t i n g I n f o . k n o c k D o w n C h e c k D i s t   	 =   1 . 5 f ;    
 	 	 	 t a r g e t i n g I n f o . r s H e a d i n g C h e c k   	 	 =   f a l s e ;  
 	 	 	 t a r g e t i n g I n f o . r s H e a d i n g L i m i t C o s   	 =   1 . 0 f ;  
 	 	 	  
 	 	 	 f o r (   i   =   t a r g e t s . S i z e ( )   -   1 ;   i   > =   0 ;   i   - =   1   )  
 	 	 	 {  
 	 	 	 	 t a r g e t i n g I n f o . t a r g e t E n t i t y   	 	 =   t a r g e t s [ i ] ;  
 	 	 	 	 i f   (   ! I s E n t i t y T a r g e t a b l e (   t a r g e t i n g I n f o   )   )  
 	 	 	 	 	 t a r g e t s . E r a s e (   i   ) ;  
 	 	 	 }  
  
 	 	 	 f o r   (     i   =   0 ;   i   <   t a r g e t s . S i z e ( ) ;   i   + =   1   )  
 	 	 	 	 s o u r c e T o T a r g e t D i s t s . P u s h B a c k (   V e c D i s t a n c e (   s o u r c e . G e t W o r l d P o s i t i o n ( ) ,   t a r g e t s [ i ] . G e t W o r l d P o s i t i o n ( )   )   ) ;  
 	 	 	  
 	 	 	 i f ( s o u r c e T o T a r g e t D i s t s . S i z e ( )   >   0 )  
 	 	 	 	 n e w L o c k T a r g e t   =   t a r g e t s [   A r r a y F i n d M i n F (   s o u r c e T o T a r g e t D i s t s   )   ] ;  
 	 	 	 e l s e  
 	 	 	 	 n e w L o c k T a r g e t   =   N U L L ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t a r g e t s . S i z e ( )   >   0 ;  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t S c r e e n S p a c e L o c k T a r g e t (   s o u r c e E n t   :   C G a m e p l a y E n t i t y ,   c o n e A n g l e ,   c o n e D i s t ,   c o n e H e a d i n g   :   f l o a t ,   o p t i o n a l   i n F r a m e C h e c k   :   b o o l   )   :   C A c t o r  
 	 {  
 	 	 v a r   s o u r c e 	 	 	 	 	 :   C A c t o r ;  
 	 	 v a r   s o u r c e P o s ,   t a r g e t P o s 	 :   V e c t o r ;  
 	 	 v a r   t a r g e t s   	 	 	 	 :   a r r a y < C A c t o r > ;  
 	 	 v a r   s o u r c e T o T a r g e t D i s t s 	 	 :   a r r a y < f l o a t > ;  
 	 	 v a r   s o u r c e C o o r d 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   t a r g e t C o o r d 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   i   	 	 	 	 	 	 :   i n t ;  
 	 	 v a r   a n g l e D i f f 	 	 	 	 :   f l o a t ;  
 	 	 v a r   s o u r c e T o T a r g e t H e a d i n g 	 :   f l o a t ;  
 	 	 v a r   s o u r c e T o T a r g e t D i s t 	 	 :   f l o a t ;  
 	 	 v a r   s i z e   	 	 	 	 	 :   f l o a t ;  
 	 	 v a r   t a r g e t i n g D i s t 	 	 	 :   f l o a t ;  
 	 	 v a r   t a r g e t i n g I n f o 	 	 	 :   S T a r g e t i n g I n f o ;  
 	 	  
 	 	 v a r   t e m p   :   i n t ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 s o u r c e   =   ( C A c t o r ) s o u r c e E n t ;  
 	 	  
 	 	 t a r g e t s   =   G e t M o v e T a r g e t s ( ) ;  
 	 	  
 	 	 i f   (   t h i s . I s P C M o d e E n a b l e d ( )   )  
 	 	 {  
 	 	 	 i f   (   (   c o n e H e a d i n g   >   - 4 5 . f   & &   c o n e H e a d i n g   <   4 5 . f   )  
 	 	 	 	 | |   c o n e H e a d i n g   >   1 3 5 . f    
 	 	 	 	 | |   c o n e H e a d i n g   <   - 1 3 5 . f   )  
 	 	 	 {  
 	 	 	 	 i f   (   c o n e H e a d i n g   >   0   )  
 	 	 	 	 	 c o n e H e a d i n g   =   1 8 0   -   c o n e H e a d i n g ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 c o n e H e a d i n g   =   1 8 0   +   c o n e H e a d i n g ;  
 	 	 	 }  
 	 	 } 	 	  
 	 	  
 	 	 	  
 	 	  
 	 	 f o r (   i   =   t a r g e t s . S i z e ( )   -   1 ;   i   > =   0 ;   i   - =   1   )  
 	 	 {  
 	 	 	 i f   (   (   ! t a r g e t s [ i ] . G e t G a m e p l a y V i s i b i l i t y ( )   | |   ! I s T h r e a t (   t a r g e t s [ i ]   )   | |   ! I s E n e m y V i s i b l e (   t a r g e t s [ i ]   )   | |   ! t h i s . C a n B e T a r g e t e d I f S w i m m i n g (   t a r g e t s [ i ]   )   )    
 	 	 	 	 & &   (   ! I s C a s t i n g S i g n ( )   | |   G e t C u r r e n t l y C a s t S i g n ( )   ! =   S T _ A x i i   )   )  
 	 	 	 	 t a r g e t s . E r a s e ( i ) ;  
 	 	 }  
 	 	  
 	 	 i f   (   s o u r c e   )  
 	 	 {  
 	 	 	 t e m p   =   s o u r c e . G e t T o r s o B o n e I n d e x ( ) ;  
 	 	 	  
 	 	 	 i f   (   t e m p   <   0   )  
 	 	 	 	 s o u r c e P o s   =   s o u r c e . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 e l s e  
 	 	 	 	 s o u r c e P o s   =   M a t r i x G e t T r a n s l a t i o n (   s o u r c e . G e t B o n e W o r l d M a t r i x B y I n d e x (   s o u r c e . G e t T o r s o B o n e I n d e x ( )   )   ) ; 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 	 s o u r c e P o s   =   s o u r c e E n t . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	  
 	 	 t h e C a m e r a . W o r l d V e c t o r T o V i e w R a t i o (   s o u r c e P o s ,   s o u r c e C o o r d . X   ,   s o u r c e C o o r d . Y   ) ;    
 	 	  
 	 	  
 	 	 	 t a r g e t i n g D i s t   =   s o f t L o c k D i s t V e h i c l e ;  
 	 	  
 	 	 i f   (   t a r g e t s . S i z e ( )   >   0   )  
 	 	 {  
 	 	 	 t a r g e t i n g I n f o . s o u r c e   	 	 	 	 =   t h i s ;  
 	 	 	 t a r g e t i n g I n f o . c a n B e T a r g e t e d C h e c k 	 =   t r u e ;  
 	 	 	 t a r g e t i n g I n f o . c o n e C h e c k   	 	 	 =   f a l s e ;  
 	 	 	 t a r g e t i n g I n f o . c o n e H a l f A n g l e C o s 	 	 =   0 . 8 6 6 0 2 5 4 0 3 7 8 f ;    
 	 	 	 t a r g e t i n g I n f o . c o n e D i s t 	 	 	 	 =   t a r g e t i n g D i s t ;  
 	 	 	 t a r g e t i n g I n f o . c o n e H e a d i n g V e c t o r 	 	 =   V e c t o r (   0 . 0 f ,   1 . 0 f ,   0 . 0 f   ) ;    
 	 	 	 t a r g e t i n g I n f o . d i s t C h e c k 	 	 	 	 =   t r u e ;  
 	 	 	 t a r g e t i n g I n f o . i n v i s i b l e C h e c k 	 	 =   t r u e ;  
 	 	 	 t a r g e t i n g I n f o . n a v M e s h C h e c k 	 	 	 =   f a l s e ;    
 	 	 	  
 	 	 	 i f   (   i n F r a m e C h e c k   )  
 	 	 	 	 t a r g e t i n g I n f o . i n F r a m e C h e c k   	 	 =   t r u e ;  
 	 	 	 e l s e  
 	 	 	 	 t a r g e t i n g I n f o . i n F r a m e C h e c k   	 	 =   f a l s e ;  
 	 	 	 	  
 	 	 	 t a r g e t i n g I n f o . f r a m e S c a l e X   	 	 	 =   1 . f ;    
 	 	 	 t a r g e t i n g I n f o . f r a m e S c a l e Y   	 	 	 =   1 . f ;    
 	 	 	 t a r g e t i n g I n f o . k n o c k D o w n C h e c k   	 	 =   f a l s e ;    
 	 	 	 t a r g e t i n g I n f o . k n o c k D o w n C h e c k D i s t   	 =   s o f t L o c k D i s t ;  
 	 	 	 i f   (   b R A x i s R e l e a s e d   )  
 	 	 	 	 t a r g e t i n g I n f o . r s H e a d i n g C h e c k 	 =   f a l s e ;  
 	 	 	 e l s e  
 	 	 	 	 t a r g e t i n g I n f o . r s H e a d i n g C h e c k 	 =   t r u e ;  
 	 	 	 t a r g e t i n g I n f o . r s H e a d i n g L i m i t C o s 	 	 =   - 0 . 5 f ;    
 	 	  
 	 	 	 f o r (   i   =   t a r g e t s . S i z e ( )   -   1 ;   i   > =   0 ;   i   - =   1   )  
 	 	 	 {  
 	 	 	 	 t e m p   =   t a r g e t s [ i ] . G e t T o r s o B o n e I n d e x ( ) ;  
 	 	 	 	  
 	 	 	 	 i f   (   t e m p   <   0   )  
 	 	 	 	 	 t a r g e t P o s   =   t a r g e t s [ i ] . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 t a r g e t P o s   =   M a t r i x G e t T r a n s l a t i o n (   t a r g e t s [ i ] . G e t B o n e W o r l d M a t r i x B y I n d e x (   t a r g e t s [ i ] . G e t T o r s o B o n e I n d e x ( )   )   ) ;  
 	 	 	 	 	  
 	 	 	 	 t h e C a m e r a . W o r l d V e c t o r T o V i e w R a t i o (   t a r g e t P o s ,   t a r g e t C o o r d . X ,   t a r g e t C o o r d . Y   ) ;  
 	 	 	 	 s o u r c e T o T a r g e t H e a d i n g   =   V e c H e a d i n g (   t a r g e t C o o r d   -   s o u r c e C o o r d   ) ;  
 	 	 	 	 a n g l e D i f f   =   A b s F (   A n g l e D i s t a n c e (   c o n e H e a d i n g ,   s o u r c e T o T a r g e t H e a d i n g   )   ) ;  
 	 	 	 	  
 	 	 	 	 t a r g e t i n g I n f o . t a r g e t E n t i t y   	 	 	 =   t a r g e t s [ i ] ;  
 	 	 	 	 i f   (   ! I s E n t i t y T a r g e t a b l e (   t a r g e t i n g I n f o   )   )  
 	 	 	 	 	 t a r g e t s . E r a s e (   i   ) ;  
 	 	 	 	 e l s e   i f   (   ! b R A x i s R e l e a s e d   & &   a n g l e D i f f   >   (   c o n e A n g l e   *   0 . 5   )   )    
 	 	 	 	 	 t a r g e t s . E r a s e (   i   ) ;  
 	 	 	 	 e l s e   i f   (   t a r g e t s [ i ]   = =   s o u r c e E n t   )  
 	 	 	 	 	 t a r g e t s . E r a s e (   i   ) ; 	  
 	 	 	  
 	 	 	 	  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 s i z e   =   t a r g e t s . S i z e ( ) ;  
 	 	 i f   (   s i z e   >   0   )  
 	 	 {  
 	 	 	 f o r   (     i   =   0 ;   i   <   t a r g e t s . S i z e ( ) ;   i   + =   1   )  
 	 	 	 {  
 	 	 	 	 t e m p   =   t a r g e t s [ i ] . G e t T o r s o B o n e I n d e x ( ) ;  
 	 	 	 	  
 	 	 	 	 i f   (   t e m p   <   0   )  
 	 	 	 	 	 t a r g e t P o s   =   t a r g e t s [ i ] . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 t a r g e t P o s   =   M a t r i x G e t T r a n s l a t i o n (   t a r g e t s [ i ] . G e t B o n e W o r l d M a t r i x B y I n d e x (   t a r g e t s [ i ] . G e t T o r s o B o n e I n d e x ( )   )   ) ;  
 	  
 	 	 	 	 t h e C a m e r a . W o r l d V e c t o r T o V i e w R a t i o (   t a r g e t P o s ,   t a r g e t C o o r d . X ,   t a r g e t C o o r d . Y   ) ;  
 	 	 	 	 s o u r c e T o T a r g e t H e a d i n g   =   A b s F (   V e c H e a d i n g (   t a r g e t C o o r d   -   s o u r c e C o o r d   )   ) ;  
 	 	 	 	 a n g l e D i f f   =   A n g l e D i s t a n c e (   1 8 0 ,   s o u r c e T o T a r g e t H e a d i n g   ) ;  
 	 	 	 	 s o u r c e T o T a r g e t D i s t   =   V e c D i s t a n c e 2 D (   s o u r c e C o o r d ,   t a r g e t C o o r d   ) ;  
 	 	 	 	  
 	 	 	 	 s o u r c e T o T a r g e t D i s t s . P u s h B a c k (   S i n F (   D e g 2 R a d (   a n g l e D i f f   )   )   *   s o u r c e T o T a r g e t D i s t   ) ;  
 	 	 	 } 	 	 	  
 	 	 }  
 	 	  
 	 	 i f   (   t a r g e t s . S i z e ( )   >   0   )  
 	 	 	 r e t u r n   t a r g e t s [   A r r a y F i n d M i n F (   s o u r c e T o T a r g e t D i s t s   )   ] ;  
 	 	 e l s e  
 	 	 	 r e t u r n   N U L L ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   I s E n t i t y T a r g e t a b l e (   o u t   i n f o   :   S T a r g e t i n g I n f o ,   o p t i o n a l   u s e P r e c a l c s   :   b o o l   )   :   b o o l  
 	 {  
 	 	 v a r   p l a y e r H a s B l o c k i n g B u f f s 	 :   b o o l ;  
 	 	 v a r   s o u r c e A c t o r 	 	 	 	 :   C A c t o r ;  
 	 	 v a r   t a r g e t E n t i t y 	 	 	 :   C E n t i t y ;  
 	 	 v a r   t a r g e t A c t o r 	 	 	 	 :   C A c t o r ;  
 	 	 v a r   t a r g e t N P C 	 	 	 	 :   C N e w N P C ;  
 	 	 v a r   s o u r c e P o s i t i o n 	 	 	 :   V e c t o r ;  
 	 	 v a r   t a r g e t P o s i t i o n 	 	 	 :   V e c t o r ;  
 	 	 v a r   d i r e c t i o n 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   s o u r c e T o T a r g e t D i s t 	 	 :   f l o a t ;  
 	 	 v a r   s o u r c e C a p s u l e R a d i u s   	 :   f l o a t ;  
 	 	 v a r   m p a c 	 	 	 	 	 :   C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ;  
 	 	  
 	 	 v a r   c o n e D i s t S q     	 	 	 :   f l o a t ;  
 	 	 v a r   k n o c k D o w n C h e c k D i s t S q 	 :   f l o a t ;  
 	 	 v a r   s o u r c e T o T a r g e t A n g l e D i s t 	 :   f l o a t ;  
 	 	 v a r   b 	 	 	 	 	 	 :   b o o l ;  
 	 	 v a r   i n f o S o u r c e W o r l d P o s 	 	 :   V e c t o r ;  
 	 	 v a r   i n f o T a r g e t W o r l d P o s 	 	 :   V e c t o r ;  
 	 	 v a r   f i n i s h E n a b l e d 	 	 	 :   b o o l ;  
 	  
 	 	 i f   (   u s e P r e c a l c s   )  
 	 	 {  
 	 	 	 p l a y e r H a s B l o c k i n g B u f f s   =   t a r g e t i n g I n . p l a y e r H a s B l o c k i n g B u f f s ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 p l a y e r H a s B l o c k i n g B u f f s   =   t h e P l a y e r . H a s B u f f (   E E T _ C o n f u s i o n   )   | |   t h e P l a y e r . H a s B u f f (   E E T _ H y p n o t i z e d   )   | |   t h e P l a y e r . H a s B u f f (   E E T _ B l i n d n e s s   )   | |   t h e P l a y e r . H a s B u f f (   E E T _ W r a i t h B l i n d n e s s   ) ;  
 	 	 } 	 	  
 	 	 i f   (   p l a y e r H a s B l o c k i n g B u f f s   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	  
 	 	 s o u r c e A c t o r   =   i n f o . s o u r c e ;  
 	 	 t a r g e t E n t i t y   =   i n f o . t a r g e t E n t i t y ;  
 	 	 i f   (   ! s o u r c e A c t o r   | |   ! t a r g e t E n t i t y   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 t a r g e t A c t o r   =   ( C A c t o r ) t a r g e t E n t i t y ;  
  
 	 	  
 	 	 i f   (   i n f o . c a n B e T a r g e t e d C h e c k   & &   ! t a r g e t A c t o r . C a n B e T a r g e t e d ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   i n f o . i n v i s i b l e C h e c k   & &   ! t a r g e t A c t o r . G e t G a m e p l a y V i s i b i l i t y ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	  
 	 	 s o u r c e P o s i t i o n   =   s o u r c e A c t o r . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 t a r g e t P o s i t i o n   =   t a r g e t E n t i t y . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 	  
 	 	 i f   (   t a r g e t A c t o r   )  
 	 	 {  
 	 	 	 {    
 	 	 	 	 t a r g e t N P C   =   ( C N e w N P C ) t a r g e t A c t o r ;  
 	 	 	 	 i f   (   t a r g e t N P C   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   t a r g e t N P C . I s H o r s e ( )   & &   ! t a r g e t N P C . G e t H o r s e C o m p o n e n t ( ) . I s D i s m o u n t e d ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 	  
 	 	 i f   (   i n f o . d i s t C h e c k   | |   i n f o . k n o c k D o w n C h e c k   )  
 	 	 { 	 	 	  
 	 	 	 i f   (   u s e P r e c a l c s   )  
 	 	 	 {  
 	 	 	 	 i f   (   t a r g e t A c t o r   )  
 	 	 	 	 {  
 	 	 	 	 	  
 	 	 	 	 	 s o u r c e T o T a r g e t D i s t   =   D i s t a n c e 2 D B e t w e e n C a p s u l e A n d P o i n t (   t a r g e t A c t o r ,   s o u r c e A c t o r   )   -   t a r g e t i n g P r e c a l c s . p l a y e r R a d i u s ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 s o u r c e T o T a r g e t D i s t   =   V e c D i s t a n c e 2 D (   s o u r c e P o s i t i o n ,   t a r g e t P o s i t i o n   )   -   t a r g e t i n g P r e c a l c s . p l a y e r R a d i u s ;  
 	 	 	 	 } 	 	 	  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   t a r g e t A c t o r   )  
 	 	 	 	 {  
 	 	 	 	 	 s o u r c e T o T a r g e t D i s t   =   D i s t a n c e 2 D B e t w e e n C a p s u l e s (   s o u r c e A c t o r ,   t a r g e t A c t o r   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 s o u r c e T o T a r g e t D i s t   =   D i s t a n c e 2 D B e t w e e n C a p s u l e A n d P o i n t (   s o u r c e A c t o r ,   t a r g e t E n t i t y   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
  
 	 	  
 	 	 i f   (   i n f o . d i s t C h e c k   )  
 	 	 {  
 	 	 	 i f   (   s o u r c e T o T a r g e t D i s t   > =   i n f o . c o n e D i s t   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
  
 	 	  
 	 	 i f   (   i n f o . c o n e C h e c k   | |   i n f o . r s H e a d i n g C h e c k   )  
 	 	 {  
 	 	 	 d i r e c t i o n   =   V e c N o r m a l i z e 2 D (   t a r g e t P o s i t i o n   -   s o u r c e P o s i t i o n   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   i n f o . c o n e C h e c k   )  
 	 	 {  
 	 	 	 i f   (   V e c D o t 2 D (   d i r e c t i o n ,   i n f o . c o n e H e a d i n g V e c t o r   )   <   i n f o . c o n e H a l f A n g l e C o s   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   i n f o . r s H e a d i n g C h e c k   )  
 	 	 {  
 	 	 	 i f   (   u s e P r e c a l c s   )  
 	 	 	 {  
 	 	 	 	 i f   (   V e c D o t 2 D (   d i r e c t i o n ,   t a r g e t i n g I n . l o o k A t D i r e c t i o n   )   <   i n f o . r s H e a d i n g L i m i t C o s   )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   V e c D o t 2 D (   d i r e c t i o n ,   V e c N o r m a l i z e 2 D (   G e t L o o k A t P o s i t i o n ( )   -   s o u r c e P o s i t i o n   )   )   <   i n f o . r s H e a d i n g L i m i t C o s   )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 	 	  
 	 	  
 	 	 i f   (   i n f o . i n F r a m e C h e c k   & &   ! W a s V i s i b l e I n S c a l e d F r a m e (   t a r g e t E n t i t y ,   i n f o . f r a m e S c a l e X ,   i n f o . f r a m e S c a l e Y   )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   i n f o . n a v M e s h C h e c k   & &   ! I s S w i m m i n g ( )   )  
 	 	 {  
 	 	 	 s o u r c e C a p s u l e R a d i u s   =   0 . 1 f ;  
 	 	 	 i f   (   u s e P r e c a l c s   )  
 	 	 	 {  
 	 	 	 	 s o u r c e C a p s u l e R a d i u s   =   t a r g e t i n g P r e c a l c s . p l a y e r R a d i u s ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 m p a c   =   ( C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ) s o u r c e A c t o r . G e t M o v i n g A g e n t C o m p o n e n t ( ) ;  
 	 	 	 	 i f   (   m p a c   )  
 	 	 	 	 {  
 	 	 	 	 	 s o u r c e C a p s u l e R a d i u s   =   m p a c . G e t C a p s u l e R a d i u s ( ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 i f   (   ! t h e G a m e . G e t W o r l d ( ) . N a v i g a t i o n L i n e T e s t (   s o u r c e P o s i t i o n ,   t a r g e t P o s i t i o n ,   s o u r c e C a p s u l e R a d i u s   )   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   i n f o . k n o c k D o w n C h e c k   )  
 	 	 {  
 	 	 	  
 	 	 	 i f   (   t a r g e t A c t o r   & &   ! t a r g e t A c t o r . I s A l i v e ( )   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 f i n i s h E n a b l e d   =   t a r g e t A c t o r . G e t C o m p o n e n t (   ' F i n i s h '   ) . I s E n a b l e d ( ) ;  
 	 	 	 	 i f   (   f i n i s h E n a b l e d   )  
 	 	 	 	 {  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   f i n i s h a b l e E n e m i e s L i s t . C o n t a i n s (   t a r g e t A c t o r   )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	  
 	 	 	 	 	 	 i f   (   s o u r c e T o T a r g e t D i s t   > =   i n f o . k n o c k D o w n C h e c k D i s t   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 	 	 } 	 	 	 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 } 	 	 	 	  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C a n B e T a r g e t e d I f S w i m m i n g (   a c t o r   :   C A c t o r ,   o p t i o n a l   u s e P r e c a l c s   :   b o o l   )   :   b o o l  
 	 {  
 	 	 v a r   s u b D e p t h 	 :   f l o a t ;  
 	 	 v a r   i s D i v i n g 	 :   b o o l ;  
 	  
 	 	 i f   (   ! a c t o r   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f   (   u s e P r e c a l c s   )  
 	 	 {  
 	 	 	 i s D i v i n g   =   t a r g e t i n g I n . i s D i v i n g ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i s D i v i n g   =   I s S w i m m i n g ( )   & &   O n C h e c k D i v i n g ( ) ;  
 	 	 }  
 	  
 	 	 s u b D e p t h   =   ( ( C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ) a c t o r . G e t M o v i n g A g e n t C o m p o n e n t ( ) ) . G e t S u b m e r g e D e p t h ( ) ;  
 	 	 	 	  
 	 	 i f   (   i s D i v i n g   )  
 	 	 {  
 	 	 	 r e t u r n   (   s u b D e p t h   <   - 1 . 0 f   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n   (   s u b D e p t h   > =   - 1 . 0 f   ) ;  
 	 	 }  
 	 }  
 	  
 	 	  
 	 p r i v a t e   f u n c t i o n   F i l t e r A c t o r s (   o u t   t a r g e t s   :   a r r a y < C A c t o r > ,   o u t   o n l y T h r e a t s R e t u r n e d   :   b o o l ,   o p t i o n a l   u s e P r e c a l c s   :   b o o l   )  
 	 {  
 	 	 v a r   i     	 	 	 	 	 	 	 	 :   i n t ;  
 	 	 v a r   s i z e 	 	 	 	 	 	 	 :   i n t ;  
 	 	 v a r 	 f o u n d T h r e a t 	 	 	 	 	 	 :   b o o l ;  
 	 	 v a r   f o u n d N o n T h r e a t 	 	 	 	 	 :   b o o l ;  
 	 	 v a r   t h r e a t s C o u n t 	 	 	 	 	 :   i n t ;  
 	 	 v a r   t m p A c t o r 	 	 	 	 	 	 :   C A c t o r ;  
 	 	  
 	 	 f o u n d T h r e a t   =   f a l s e ;  
 	 	 f o u n d N o n T h r e a t   =   f a l s e ;  
 	 	  
 	 	 s i z e   =   t a r g e t s . S i z e ( ) ;  
 	 	 i   =   0 ;  
 	 	 t h r e a t s C o u n t   =   0 ;  
 	 	  
 	 	  
 	 	 f o r   (   i   =   0 ;   i   <   s i z e ;   i + = 1   )  
 	 	 {  
 	 	 	 i f (   I s T h r e a t (   t a r g e t s [   i   ] ,   u s e P r e c a l c s   )   )  
 	 	 	 {  
 	 	 	 	 f o u n d T h r e a t   =   t r u e ;  
 	 	 	 	 i f   (   i   ! =   t h r e a t s C o u n t   )  
 	 	 	 	 {  
 	 	 	 	 	 t m p A c t o r   =   t a r g e t s [   i   ] ;  
 	 	 	 	 	 t a r g e t s [   i   ]   =   t a r g e t s [   t h r e a t s C o u n t   ] ;  
 	 	 	 	 	 t a r g e t s [   t h r e a t s C o u n t   ]   =   t m p A c t o r ;  
 	 	 	 	 }  
 	 	 	 	 t h r e a t s C o u n t   + =   1 ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 f o u n d N o n T h r e a t   =   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f   (   f o u n d T h r e a t   )  
 	 	 {  
 	 	 	 o n l y T h r e a t s R e t u r n e d   =   t r u e ;  
 	 	 	 i f   (   f o u n d N o n T h r e a t   )  
 	 	 	 {  
 	 	 	 	 t a r g e t s . R e s i z e (   t h r e a t s C o u n t   ) ;  
 	 	 	 }  
 	 	 }  
 	 } 	  
 	  
 	 p r i v a t e   f u n c t i o n   I n t e r n a l F i n d T a r g e t s I n C o n e (   o u t   t a r g e t s   :   a r r a y <   C A c t o r   > ,   o u t   o u t H e a d i n g V e c t o r   :   V e c t o r ,   o p t i o n a l   u s e P r e c a l c s   :   b o o l   )  
 	 {  
 	 	 v a r   s i z e ,   i 	 	 	 	 	 	 	 :   i n t ;  
 	 	 v a r   c o n e H a l f A n g l e D o t 	 	 	 	 :   f l o a t ;  
 	 	 v a r   c o n e H e a d i n g 	 	 	 	 	 	 :   f l o a t ;  
 	 	 v a r   c o n e H e a d i n g V e c t o r 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   p o s i t i o n 	 	 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   d i r e c t i o n 	 	 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   o n l y T h r e a t T a r g e t s F o u n d 	 	 	 :   b o o l ;  
 	 	  
 	 	 t a r g e t s . C l e a r ( ) ;  
 	 	 G e t V i s i b l e E n e m i e s (   t a r g e t s   ) ;  
 	 	  
 	 	  
 	 	 f o r (   i   =   0 ;   i   <   f i n i s h a b l e E n e m i e s L i s t . S i z e ( )   ;   i + = 1   )  
 	 	 {  
 	 	 	 i f   (   ! t a r g e t s . C o n t a i n s (   f i n i s h a b l e E n e m i e s L i s t [ i ]   )   )  
 	 	 	 {  
 	 	 	 	 t a r g e t s . P u s h B a c k (   f i n i s h a b l e E n e m i e s L i s t [ i ]   ) ;  
 	 	 	 }  
 	 	 } 	 	  
  
 	 	 o n l y T h r e a t T a r g e t s F o u n d   =   f a l s e ;  
 	 	 F i l t e r A c t o r s (   t a r g e t s ,   o n l y T h r e a t T a r g e t s F o u n d ,   t r u e   ) ;  
 	 	 	  
 	 	 i f   (   I s C o m b a t M u s i c E n a b l e d ( )   & &   t a r g e t s . S i z e ( )   >   0   & &   ! o n l y T h r e a t T a r g e t s F o u n d   & &   ! I s T h r e a t (   t a r g e t s [ 0 ] ,   u s e P r e c a l c s   )   )    
 	 	 {  
 	 	 	 t a r g e t s . C l e a r ( ) ;  
 	 	 }  
 	 	  
 	 	 c o n e H e a d i n g   =   0 . 0 f ;  
 	 	 c o n e H a l f A n g l e D o t   =   0 . 0 f ;  
 	 	 i f   (   (   o r i e n t a t i o n T a r g e t   = =   O T _ C a m e r a   )   | |   (   o r i e n t a t i o n T a r g e t   = =   O T _ C a m e r a O f f s e t   )   )  
 	 	 {  
 	 	 	 i f   (   u s e P r e c a l c s   )  
 	 	 	 {  
 	 	 	 	 c o n e H e a d i n g   =   t a r g e t i n g P r e c a l c s . c a m e r a H e a d i n g ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 c o n e H e a d i n g   =   t h e G a m e . G e t G a m e C a m e r a ( ) . G e t H e a d i n g ( ) ;  
 	 	 	 }  
 	 	 	 c o n e H a l f A n g l e D o t   =   0 . 5 f ;    
 	 	 }  
 	 	 e l s e  
 	 	 {    
 	 	 	 i f   (   I s S w i m m i n g ( )   )  
 	 	 	 {  
 	 	 	 	 i f   (   u s e P r e c a l c s   )  
 	 	 	 	 {  
 	 	 	 	 	 c o n e H e a d i n g   =   t a r g e t i n g P r e c a l c s . c a m e r a H e a d i n g ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 c o n e H e a d i n g   =   t h e G a m e . G e t G a m e C a m e r a ( ) . G e t H e a d i n g ( ) ;  
 	 	 	 	 }  
 	 	 	 	 c o n e H a l f A n g l e D o t   =   0 . 1 7 3 6 4 8 1 7 7 6 6 f ;    
 	 	 	 }  
 	 	 	 e l s e   i f   (   b L A x i s R e l e a s e d   )  
 	 	 	 {  
 	 	 	 	 i f (   I s I n C o m b a t A c t i o n ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 c o n e H e a d i n g   =   G e t C o m b a t A c t i o n H e a d i n g ( ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   S h o u l d U s e P C M o d e T a r g e t i n g ( )   )  
 	 	 	 	 	 	 c o n e H e a d i n g   =   t h e G a m e . G e t G a m e C a m e r a ( ) . G e t H e a d i n g ( ) ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 c o n e H e a d i n g   =   c a c h e d R a w P l a y e r H e a d i n g ;  
 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 i f   (   I s I n C o m b a t ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   S h o u l d U s e P C M o d e T a r g e t i n g ( )   )  
 	 	 	 	 	 	 c o n e H a l f A n g l e D o t   =   - 1 ;    
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 c o n e H a l f A n g l e D o t   =   0 . 1 7 3 6 4 8 1 7 7 6 6 f ;    
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 c o n e H a l f A n g l e D o t   =   - 1 . 0 f ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f (   I s I n C o m b a t A c t i o n ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 c o n e H e a d i n g   =   G e t C o m b a t A c t i o n H e a d i n g ( ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   S h o u l d U s e P C M o d e T a r g e t i n g ( )   )  
 	 	 	 	 	 	 c o n e H e a d i n g   =   t h e G a m e . G e t G a m e C a m e r a ( ) . G e t H e a d i n g ( ) ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 c o n e H e a d i n g   =   c a c h e d R a w P l a y e r H e a d i n g ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f   (   S h o u l d U s e P C M o d e T a r g e t i n g ( )   )  
 	 	 	 	 	 c o n e H a l f A n g l e D o t   =   - 1 ;    
 	 	 	 	 e l s e 	 	 	 	  
 	 	 	 	 	 c o n e H a l f A n g l e D o t   =   0 . 1 7 3 6 4 8 1 7 7 6 6 f ;    
 	 	 	 }  
  
 	 	 	 c o n e H e a d i n g V e c t o r   =   V e c F r o m H e a d i n g (   c o n e H e a d i n g   ) ;  
 	 	 	 p o s i t i o n   =   t h i s . G e t W o r l d P o s i t i o n ( ) ;  
  
 	 	 	 f o r   (   i   =   t a r g e t s . S i z e ( )   -   1 ;   i   > =   0 ;   i   - =   1   )  
 	 	 	 {  
 	 	 	 	 i f   (   ! t a r g e t s [ i ]   )  
 	 	 	 	 {  
 	 	 	 	 	 t a r g e t s . E r a s e F a s t ( i ) ;  
 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 d i r e c t i o n   =   V e c N o r m a l i z e 2 D (   t a r g e t s [ i ] . G e t W o r l d P o s i t i o n ( )   -   p o s i t i o n   ) ;  
 	 	 	 	  
 	 	 	 	 i f   (   V e c D o t 2 D (   c o n e H e a d i n g V e c t o r ,   d i r e c t i o n   )   <   c o n e H a l f A n g l e D o t   )  
 	 	 	 	 {  
 	 	 	 	 	 t a r g e t s . E r a s e F a s t (   i   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 o u t H e a d i n g V e c t o r   =   c o n e H e a d i n g V e c t o r ;  
 	 }  
 	  
 	  
 	  
 	  
 	 f u n c t i o n   I n i t T a r g e t i n g ( )  
 	 {  
 	 	 v a r   c o n s t s   :   S R 4 P l a y e r T a r g e t i n g C o n s t s ;  
 	 	  
 	 	 i f   (   ! t a r g e t i n g   )  
 	 	 {  
 	 	 	 t a r g e t i n g   =   n e w   C R 4 P l a y e r T a r g e t i n g   i n   t h i s ;  
 	 	 }  
 	 	 i f   (   t a r g e t i n g   )  
 	 	 {  
 	 	 	 c o n s t s . s o f t L o c k D i s t a n c e   =   t h i s . s o f t L o c k D i s t ;  
 	 	 	 c o n s t s . s o f t L o c k F r a m e S i z e   =   t h i s . s o f t L o c k F r a m e S i z e ;  
 	 	 	 t a r g e t i n g . S e t C o n s t s (   c o n s t s   ) ;  
 	 	 } 	 	  
 	 }  
 	  
 	 f u n c t i o n   P r e p a r e T a r g e t i n g I n (   a c t i o n C h e c k   :   b o o l ,   b u f f e r A c t i o n T y p e   :   E B u f f e r A c t i o n T y p e ,   a c t i o n I n p u t   :   b o o l   )  
 	 {  
 	 	 v a r   c o n e D i s t   :   f l o a t ;  
 	 	  
 	 	 i f   (   a c t i o n C h e c k   & &   b u f f e r A c t i o n T y p e   = =   E B A T _ I t e m U s e   )  
 	 	 {  
 	 	 	 c o n e D i s t   =   f i n d M o v e T a r g e t D i s t ;  
 	 	 }  
 	 	 e l s e   i f   (   I s S w i m m i n g ( )   )  
 	 	 {  
 	 	 	 c o n e D i s t   =   t h e G a m e . p a r a m s . M A X _ T H R O W _ R A N G E ;  
 	 	 }  
 	 	 e l s e   i f   (   (   G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ A l e r t N e a r   )   & &   (   (   p l a y e r M o v e T y p e   = =   P M T _ W a l k   )   | |   (   p l a y e r M o v e T y p e   = =   P M T _ I d l e   )   )   )  
 	 	 {  
 	 	 	 c o n e D i s t   =   s o f t L o c k D i s t ;    
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 c o n e D i s t   =   f i n d M o v e T a r g e t D i s t ;  
 	 	 }  
 	  
 	 	 t a r g e t i n g I n . c a n F i n d T a r g e t   	 	 	 	 	 =   t h i s . b C a n F i n d T a r g e t ;  
 	 	 t a r g e t i n g I n . p l a y e r H a s B l o c k i n g B u f f s   	 	 	 =   t h e P l a y e r . H a s B u f f (   E E T _ C o n f u s i o n   )   | |   t h e P l a y e r . H a s B u f f (   E E T _ H y p n o t i z e d   )   | |   t h e P l a y e r . H a s B u f f (   E E T _ B l i n d n e s s   )   | |   t h e P l a y e r . H a s B u f f (   E E T _ W r a i t h B l i n d n e s s   ) ;  
 	 	 t a r g e t i n g I n . i s H a r d L o c k e d T o T a r g e t 	 	 	 =   t h i s . I s H a r d L o c k E n a b l e d ( ) ;  
 	 	 t a r g e t i n g I n . i s A c t o r L o c k e d T o T a r g e t   	 	 	 =   t h i s . I s A c t o r L o c k e d T o T a r g e t ( ) ;  
 	 	 t a r g e t i n g I n . i s C a m e r a L o c k e d T o T a r g e t   	 	 	 =   t h i s . I s C a m e r a L o c k e d T o T a r g e t ( ) ;  
 	 	 t a r g e t i n g I n . a c t i o n C h e c k   	 	 	 	 	 =   a c t i o n C h e c k ;  
 	 	 t a r g e t i n g I n . a c t i o n I n p u t 	 	 	 	 	 	 =   a c t i o n I n p u t ;  
 	 	 t a r g e t i n g I n . i s I n C o m b a t A c t i o n 	 	 	 	 =   t h i s . I s I n C o m b a t A c t i o n ( ) ;  
 	 	 t a r g e t i n g I n . i s L A x i s R e l e a s e d   	 	 	 	 =   t h i s . b L A x i s R e l e a s e d ;  
 	 	 t a r g e t i n g I n . i s L A x i s R e l e a s e d A f t e r C o u n t e r   	 =   t h i s . l A x i s R e l e a s e d A f t e r C o u n t e r ;  
 	 	 t a r g e t i n g I n . i s L A x i s R e l e a s e d A f t e r C o u n t e r N o C A   =   t h i s . l A x i s R e l e a s e d A f t e r C o u n t e r N o C A ;  
 	 	 t a r g e t i n g I n . l a s t A x i s I n p u t I s M o v e m e n t   	 	 =   t h i s . l a s t A x i s I n p u t I s M o v e m e n t ;  
 	 	 t a r g e t i n g I n . i s A i m i n g   	 	 	 	 	 	 =   t h i s . p l a y e r A i m i n g . G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m i n g ' ;  
 	 	 t a r g e t i n g I n . i s S w i m m i n g   	 	 	 	 	 	 =   t h i s . I s S w i m m i n g ( ) ;  
 	 	 t a r g e t i n g I n . i s D i v i n g   	 	 	 	 	 	 =   t h i s . I s S w i m m i n g ( )   & &   O n C h e c k D i v i n g ( ) ;  
 	 	 t a r g e t i n g I n . i s T h r e a t e n e d   	 	 	 	 	 =   t h i s . I s T h r e a t e n e d ( ) ;  
 	 	 t a r g e t i n g I n . i s C o m b a t M u s i c E n a b l e d   	 	 	 =   t h i s . I s C o m b a t M u s i c E n a b l e d ( ) ;  
 	 	 t a r g e t i n g I n . i s P c M o d e E n a b l e d   	 	 	 	 =   t h i s . I s P C M o d e E n a b l e d ( ) ;  
 	 	 t a r g e t i n g I n . i s I n P a r r y O r C o u n t e r 	 	 	 	 =   t h i s . i s I n P a r r y O r C o u n t e r ;  
 	 	 t a r g e t i n g I n . s h o u l d U s e P c M o d e T a r g e t i n g   	 	 =   t h i s . S h o u l d U s e P C M o d e T a r g e t i n g ( ) ;  
 	 	 t a r g e t i n g I n . b u f f e r A c t i o n T y p e   	 	 	 	 =   b u f f e r A c t i o n T y p e ;  
 	 	 t a r g e t i n g I n . o r i e n t a t i o n T a r g e t   	 	 	 	 =   t h i s . G e t O r i e n t a t i o n T a r g e t ( ) ;  
 	 	 t a r g e t i n g I n . c o n e D i s t   	 	 	 	 	 	 =   c o n e D i s t ;    
 	 	 t a r g e t i n g I n . f i n d M o v e T a r g e t D i s t   	 	 	 	 =   t h i s . f i n d M o v e T a r g e t D i s t ;  
 	 	 t a r g e t i n g I n . c a c h e d R a w P l a y e r H e a d i n g   	 	 	 =   t h i s . c a c h e d R a w P l a y e r H e a d i n g ;  
 	 	 t a r g e t i n g I n . c o m b a t A c t i o n H e a d i n g   	 	 	 =   t h i s . G e t C o m b a t A c t i o n H e a d i n g ( ) ;  
 	 	 t a r g e t i n g I n . r a w P l a y e r H e a d i n g V e c t o r   	 	 	 =   V e c F r o m H e a d i n g (   t h i s . r a w P l a y e r H e a d i n g   ) ;  
 	 	 t a r g e t i n g I n . l o o k A t D i r e c t i o n 	 	 	 	 	 =   V e c N o r m a l i z e 2 D (   t h i s . G e t L o o k A t P o s i t i o n ( )   -   G e t W o r l d P o s i t i o n ( )   ) ;  
 	 	 t a r g e t i n g I n . m o v e T a r g e t   	 	 	 	 	 	 =   t h i s . m o v e T a r g e t ;  
 	 	 t a r g e t i n g I n . a i m i n g T a r g e t   	 	 	 	 	 =   t h i s . p l a y e r A i m i n g . G e t A i m e d T a r g e t ( ) ; 	  
 	 	 t a r g e t i n g I n . d i s p l a y T a r g e t   	 	 	 	 	 =   ( C A c t o r ) t h i s . d i s p l a y T a r g e t ;  
 	 	 t a r g e t i n g I n . f i n i s h a b l e E n e m i e s   	 	 	 	 =   t h i s . f i n i s h a b l e E n e m i e s L i s t ;  
 	 	 t a r g e t i n g I n . h o s t i l e E n e m i e s   	 	 	 	 	 =   t h i s . h o s t i l e E n e m i e s ;  
 	 	 t a r g e t i n g I n . d e f a u l t S e l e c t i o n W e i g h t s   	 	 =   P r o c e s s S e l e c t i o n W e i g h t s ( ) ;  
 	 }  
 	  
 	 f u n c t i o n   R e s e t T a r g e t i n g O u t ( )  
 	 {  
 	 	 t a r g e t i n g O u t . t a r g e t   	 	 	 	 	 =   N U L L ;  
 	 	 t a r g e t i n g O u t . r e s u l t   	 	 	 	 	 =   f a l s e ;  
 	 	 t a r g e t i n g O u t . c o n f i r m N e w T a r g e t   	 	 	 =   f a l s e ;  
 	 	 t a r g e t i n g O u t . f o r c e D i s a b l e U p d a t e P o s i t i o n 	 =   f a l s e ; 	  
 	 }  
 	  
 	 f u n c t i o n   M a k e F i n d T a r g e t P r e c a l c s ( )  
 	 {  
 	 	 v a r   m p a c   :   C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ;  
 	  
 	 	 t a r g e t i n g P r e c a l c s . p l a y e r P o s i t i o n   	 	 =   t h e P l a y e r . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 t a r g e t i n g P r e c a l c s . p l a y e r H e a d i n g 	 	 	 =   t h e P l a y e r . G e t H e a d i n g ( ) ;  
 	 	 t a r g e t i n g P r e c a l c s . p l a y e r H e a d i n g V e c t o r 	 =   t h e P l a y e r . G e t H e a d i n g V e c t o r ( ) ;  
 	 	 t a r g e t i n g P r e c a l c s . p l a y e r H e a d i n g V e c t o r . Z   =   0 ;  
 	 	 t a r g e t i n g P r e c a l c s . p l a y e r H e a d i n g V e c t o r   	 =   V e c N o r m a l i z e 2 D (   t a r g e t i n g P r e c a l c s . p l a y e r H e a d i n g V e c t o r   ) ;  
 	 	  
 	 	 t a r g e t i n g P r e c a l c s . p l a y e r R a d i u s   =   0 . 5 f ;  
 	 	 m p a c   =   ( C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ) t h e P l a y e r . G e t M o v i n g A g e n t C o m p o n e n t ( ) ;  
 	 	 i f   (   m p a c   )  
 	 	 {  
 	 	 	 t a r g e t i n g P r e c a l c s . p l a y e r R a d i u s   =   m p a c . G e t C a p s u l e R a d i u s ( ) ;  
 	 	 }  
 	 	  
 	 	 t a r g e t i n g P r e c a l c s . c a m e r a P o s i t i o n   	 	 =   t h e C a m e r a . G e t C a m e r a P o s i t i o n ( ) ;  
 	 	 t a r g e t i n g P r e c a l c s . c a m e r a D i r e c t i o n   	 	 =   t h e C a m e r a . G e t C a m e r a D i r e c t i o n ( ) ;  
 	 	 t a r g e t i n g P r e c a l c s . c a m e r a H e a d i n g V e c t o r   	 =   t a r g e t i n g P r e c a l c s . c a m e r a D i r e c t i o n ;  
 	 	 t a r g e t i n g P r e c a l c s . c a m e r a H e a d i n g V e c t o r . Z   =   0 ;  
 	 	 t a r g e t i n g P r e c a l c s . c a m e r a H e a d i n g V e c t o r 	 =   V e c N o r m a l i z e 2 D (   t a r g e t i n g P r e c a l c s . c a m e r a H e a d i n g V e c t o r   ) ; 	 	 	  
 	 	 t a r g e t i n g P r e c a l c s . c a m e r a H e a d i n g   	 	 =   V e c H e a d i n g (   t a r g e t i n g P r e c a l c s . c a m e r a H e a d i n g V e c t o r   ) ; 	 	 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t F o r c e D i s a b l e U p d a t e P o s i t i o n ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   t a r g e t i n g O u t . f o r c e D i s a b l e U p d a t e P o s i t i o n ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t U s e N a t i v e T a r g e t i n g (   u s e   :   b o o l   )  
 	 {  
 	 	 u s e N a t i v e T a r g e t i n g   =   u s e ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   F i n d T a r g e t (   o p t i o n a l   a c t i o n C h e c k   :   b o o l ,   o p t i o n a l   a c t i o n   :   E B u f f e r A c t i o n T y p e ,   o p t i o n a l   a c t i o n I n p u t   :   b o o l   )   :   C A c t o r  
 	 {  
 	 	 i f   (   I s C o m b a t M u s i c E n a b l e d ( )   & &   ! I s I n C o m b a t ( )   & &   r e a c h a b l e E n e m y W a s T o o F a r   )  
 	 	 {  
 	 	 	 p l a y e r M o d e . U p d a t e C o m b a t M o d e ( ) ;  
 	 	 }  
 	  
 	 	 P r e p a r e T a r g e t i n g I n (   a c t i o n C h e c k ,   a c t i o n ,   a c t i o n I n p u t   ) ;  
 	 	 i f   (   u s e N a t i v e T a r g e t i n g   )  
 	 	 {  
 	 	 	 t a r g e t i n g . B e g i n F i n d T a r g e t (   t a r g e t i n g I n   ) ;  
 	 	 	 t a r g e t i n g . F i n d T a r g e t ( ) ;  
 	 	 	 t a r g e t i n g . E n d F i n d T a r g e t (   t a r g e t i n g O u t   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 U p d a t e V i s i b l e A c t o r s ( ) ;  
 	 	 	 M a k e F i n d T a r g e t P r e c a l c s ( ) ;  
 	 	 	 R e s e t T a r g e t i n g O u t ( ) ;  
 	 	 	 F i n d T a r g e t _ S c r i p t e d ( ) ;  
 	 	 }  
 	 	 i f   (   t a r g e t i n g O u t . r e s u l t   )  
 	 	 {  
 	 	 	 i f   (   t a r g e t i n g O u t . c o n f i r m N e w T a r g e t   )  
 	 	 	 {  
 	 	 	 	 C o n f i r m N e w T a r g e t (   t a r g e t i n g O u t . t a r g e t   ) ;  
 	 	 	 }  
 	 	 	 r e t u r n   t a r g e t i n g O u t . t a r g e t ;  
 	 	 }  
 	 	 r e t u r n   N U L L ;  
 	 }  
 	 	  
 	 p r o t e c t e d   f u n c t i o n   F i n d T a r g e t _ S c r i p t e d ( )  
 	 {  
 	 	 v a r   c u r r e n t T a r g e t 	 	 	 	 	 :   C A c t o r ;  
 	 	 v a r   n e w T a r g e t 	 	 	 	 	 	 :   C A c t o r ;  
 	 	 v a r   s e l e c t e d T a r g e t 	 	 	 	 	 :   C A c t o r ;  
 	 	 v a r   d i s p l a y T a r g e t A c t o r 	 	 	 	 :   C A c t o r ;  
 	 	 v a r   p l a y e r P o s i t i o n 	 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   p l a y e r H e a d i n g V e c t o r 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   c a m e r a P o s i t i o n 	 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   c a m e r a H e a d i n g V e c t o r 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   s e l e c t i o n H e a d i n g V e c t o r 	 	 	 :   V e c t o r ;  
 	 	 v a r   t a r g e t i n g I n f o 	 	 	 	 	 :   S T a r g e t i n g I n f o ;  
 	 	 v a r   s e l e c t i o n W e i g h t s 	 	 	 	 :   S T a r g e t S e l e c t i o n W e i g h t s ;  
 	 	 v a r   t a r g e t s 	 	 	 	 	 	 	 :   a r r a y <   C A c t o r   > ;  
 	 	 v a r   i s M o v e T a r g e t T a r g e t a b l e 	 	 	 :   b o o l ; 	 	  
 	 	 v a r   t a r g e t C h a n g e F r o m A c t i o n I n p u t 	 	 :   b o o l ;  
 	 	 v a r   r e t a i n C u r r e n t T a r g e t 	 	 	 	 :   b o o l ;  
 	 	  
 	 	  
 	 	  
 	 	 p l a y e r P o s i t i o n   =   t h i s . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 p l a y e r H e a d i n g V e c t o r   =   t a r g e t i n g P r e c a l c s . p l a y e r H e a d i n g V e c t o r ; 	 	 	  
 	 	 c a m e r a P o s i t i o n   =   t h e C a m e r a . G e t C a m e r a P o s i t i o n ( ) ;  
 	 	 c a m e r a H e a d i n g V e c t o r   =   t a r g e t i n g P r e c a l c s . c a m e r a H e a d i n g V e c t o r ;  
 	 	  
 	 	 c u r r e n t T a r g e t   =   G e t T a r g e t ( ) ; 	 	  
 	 	 i f   (   c u r r e n t T a r g e t   )  
 	 	 {  
 	 	 	 i f   (   I s H a r d L o c k E n a b l e d ( )   & &   c u r r e n t T a r g e t . I s A l i v e ( )   & &   ! c u r r e n t T a r g e t . I s K n o c k e d U n c o n s c i o u s ( )   )  
 	 	 	 {  
 	 	 	 	 i f   (   V e c D i s t a n c e S q u a r e d (   p l a y e r P o s i t i o n ,   c u r r e n t T a r g e t . G e t W o r l d P o s i t i o n ( )   )   >   5 0 . f   *   5 0 . 0 f   )  
 	 	 	 	 {  
 	 	 	 	 	 H a r d L o c k T o T a r g e t (   f a l s e   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 t a r g e t i n g O u t . t a r g e t   =   c u r r e n t T a r g e t ;  
 	 	 	 	 	 t a r g e t i n g O u t . r e s u l t   =   t r u e ;  
 	 	 	 	 	 r e t u r n ;  
 	 	 	 	 }  
 	 	 	 } 	 	 	 	  
 	 	 	 G e t V i s u a l D e b u g ( ) . A d d S p h e r e ( ' t a r g e t ' ,   1 . 0 f ,   c u r r e n t T a r g e t . G e t W o r l d P o s i t i o n ( ) ,   t r u e ,   C o l o r (   2 5 5 ,   2 5 5 ,   0   ) ,   1 . 0 f   ) ;  
 	 	 }  
  
 	 	 i f   (   b C a n F i n d T a r g e t   & &   ! I s A c t o r L o c k e d T o T a r g e t ( )   )  
 	 	 { 	 	  
 	 	 	 i f   (   ! t a r g e t i n g I n . p l a y e r H a s B l o c k i n g B u f f s   )  
 	 	 	 {  
 	 	 	 	 I n t e r n a l F i n d T a r g e t s I n C o n e (   t a r g e t s ,   s e l e c t i o n H e a d i n g V e c t o r ,   t r u e   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 t a r g e t i n g I n f o . s o u r c e   	 	 	 	 =   t h i s ;  
 	 	 	 t a r g e t i n g I n f o . c a n B e T a r g e t e d C h e c k 	 =   t r u e ;  
 	 	 	 t a r g e t i n g I n f o . c o n e C h e c k   	 	 	 =   f a l s e ;  
 	 	 	 t a r g e t i n g I n f o . c o n e H a l f A n g l e C o s 	 	 =   1 . 0 f ;  
 	 	 	 t a r g e t i n g I n f o . c o n e D i s t 	 	 	 	 =   t a r g e t i n g I n . c o n e D i s t ;  
 	 	 	 t a r g e t i n g I n f o . d i s t C h e c k 	 	 	 	 =   t r u e ;  
 	 	 	 t a r g e t i n g I n f o . i n v i s i b l e C h e c k 	 	 =   t r u e ;  
 	 	 	 t a r g e t i n g I n f o . n a v M e s h C h e c k 	 	 	 =   f a l s e ;    
 	 	 	  
 	 	 	 i f   (   S h o u l d U s e P C M o d e T a r g e t i n g ( )   )  
 	 	 	 	 t a r g e t i n g I n f o . i n F r a m e C h e c k   	 	 	 =   f a l s e ;    
 	 	 	 e l s e  
 	 	 	 	 t a r g e t i n g I n f o . i n F r a m e C h e c k   	 	 	 =   t r u e ;    
 	 	 	 	  
 	 	 	 t a r g e t i n g I n f o . f r a m e S c a l e X   	 	 	 =   1 . 0 f ;    
 	 	 	 t a r g e t i n g I n f o . f r a m e S c a l e Y   	 	 	 =   1 . 0 f ;    
 	 	 	 t a r g e t i n g I n f o . k n o c k D o w n C h e c k   	 	 =   f a l s e ;    
 	 	 	 t a r g e t i n g I n f o . k n o c k D o w n C h e c k D i s t   	 =   1 . 5 f ;    
 	 	 	 t a r g e t i n g I n f o . r s H e a d i n g C h e c k   	 	 =   f a l s e ;  
 	 	 	 t a r g e t i n g I n f o . r s H e a d i n g L i m i t C o s   	 =   1 . 0 f ;  
  
 	 	 	 i f   (   c u r r e n t T a r g e t   )  
 	 	 	 {  
 	 	 	 	 t a r g e t i n g I n f o . t a r g e t E n t i t y   =   c u r r e n t T a r g e t ;  
 	 	 	 	 i f   (   ! I s E n t i t y T a r g e t a b l e (   t a r g e t i n g I n f o ,   t r u e   )   )  
 	 	 	 	 {  
 	 	 	 	 	 c u r r e n t T a r g e t   =   N U L L ;  
 	 	 	 	 } 	  
 	 	 	 	 i f   (   c u r r e n t T a r g e t   & &   ! C a n B e T a r g e t e d I f S w i m m i n g (   c u r r e n t T a r g e t ,   t r u e   )   )  
 	 	 	 	 {  
 	 	 	 	 	 c u r r e n t T a r g e t   =   N U L L ;  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	 i s M o v e T a r g e t T a r g e t a b l e   =   f a l s e ;  
 	 	 	 i f   (   m o v e T a r g e t   )  
 	 	 	 {  
 	 	 	 	 i f   (   C a n B e T a r g e t e d I f S w i m m i n g (   m o v e T a r g e t ,   t r u e   )   )  
 	 	 	 	 {  
 	 	 	 	 	 t a r g e t i n g I n f o . t a r g e t E n t i t y   =   m o v e T a r g e t ;  
 	 	 	 	 	 t a r g e t i n g I n f o . c o n e D i s t   =   f i n d M o v e T a r g e t D i s t ;  
 	 	 	 	 	 t a r g e t i n g I n f o . i n F r a m e C h e c k   =   f a l s e ;  
 	 	 	 	 	 i f   (   I s E n t i t y T a r g e t a b l e (   t a r g e t i n g I n f o ,   t r u e   )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i s M o v e T a r g e t T a r g e t a b l e   =   t r u e ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	  
 	 	 	 t a r g e t i n g I n f o . c o n e D i s t   =   t a r g e t i n g I n . c o n e D i s t ;  
 	 	 	  
 	 	 	 i f   (   ! t a r g e t i n g I n . p l a y e r H a s B l o c k i n g B u f f s   )  
 	 	 	 {  
 	 	 	 	 R e m o v e N o n T a r g e t a b l e (   t a r g e t s ,   t a r g e t i n g I n f o ,   s e l e c t i o n H e a d i n g V e c t o r   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 n e w T a r g e t   =   N U L L ;  
 	 	 	 i f   (   t h i s . p l a y e r A i m i n g . G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m i n g '   )  
 	 	 	 {  
 	 	 	 	 n e w T a r g e t   =   t h i s . p l a y e r A i m i n g . G e t A i m e d T a r g e t ( ) ; 	 	 	 	  
 	 	 	 	 i f   (   ! n e w T a r g e t   )  
 	 	 	 	 {  
 	 	 	 	 	 s e l e c t i o n W e i g h t s . a n g l e W e i g h t   =   1 . f ;  
 	 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   =   0 . f ;  
 	 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   =   0 . f ;  
 	 	 	 	 	  
 	 	 	 	 	 s e l e c t e d T a r g e t   =   S e l e c t T a r g e t (   t a r g e t s ,   f a l s e ,   c a m e r a P o s i t i o n ,   c a m e r a H e a d i n g V e c t o r ,   s e l e c t i o n W e i g h t s ,   t r u e   ) ;  
 	 	 	 	 	 n e w T a r g e t   =   s e l e c t e d T a r g e t ; 	 	 	 	  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   i f   (   I s S w i m m i n g ( )   )  
 	 	 	 {  
 	 	 	 	 s e l e c t i o n W e i g h t s . a n g l e W e i g h t   =   0 . 9 f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   =   0 . 1 f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   =   0 . f ;  
 	 	 	 	  
 	 	 	 	 s e l e c t e d T a r g e t   =   S e l e c t T a r g e t (   t a r g e t s ,   t r u e ,   c a m e r a P o s i t i o n ,   c a m e r a H e a d i n g V e c t o r ,   s e l e c t i o n W e i g h t s ,   t r u e   ) ; 	 	  
 	 	 	 	 n e w T a r g e t   =   s e l e c t e d T a r g e t ;  
 	 	 	 } 	 	 	  
 	 	 	 e l s e   i f   (   I s T h r e a t e n e d ( )   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 i f   (   I s C a m e r a L o c k e d T o T a r g e t ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   c u r r e n t T a r g e t   & &   ! c u r r e n t T a r g e t . G e t G a m e p l a y V i s i b i l i t y ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 F o r c e S e l e c t L o c k T a r g e t ( ) ;  
 	 	 	 	 	 }  
 	 	 	 	 } 	 	 	  
 	 	 	  
 	 	 	 	 d i s p l a y T a r g e t A c t o r   =   ( C A c t o r ) d i s p l a y T a r g e t ;  
 	 	 	 	 s e l e c t e d T a r g e t   =   S e l e c t T a r g e t (   t a r g e t s ,   t r u e ,   p l a y e r P o s i t i o n ,   s e l e c t i o n H e a d i n g V e c t o r ,   t a r g e t i n g I n . d e f a u l t S e l e c t i o n W e i g h t s ,   t r u e   ) ;  
 	 	 	 	 	  
 	 	 	 	 i f   (   ! s e l e c t e d T a r g e t   )  
 	 	 	 	 {  
 	 	 	 	 	 t a r g e t i n g O u t . f o r c e D i s a b l e U p d a t e P o s i t i o n   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 t a r g e t C h a n g e F r o m A c t i o n I n p u t   =   t a r g e t i n g I n . a c t i o n I n p u t   & &   ! l A x i s R e l e a s e d A f t e r C o u n t e r ; 	 	 	 	  
 	 	 	 	 i f   (   s e l e c t e d T a r g e t   & &  
 	 	 	 	 	   (   ! I s T h r e a t (   c u r r e n t T a r g e t ,   t r u e   )   | |   S h o u l d U s e P C M o d e T a r g e t i n g ( )   | |   (   ! I s I n C o m b a t A c t i o n ( )   & &   ! l A x i s R e l e a s e d A f t e r C o u n t e r N o C A   )   | |   t a r g e t C h a n g e F r o m A c t i o n I n p u t   )   )  
 	 	 	 	 {  
 	 	 	 	 	 n e w T a r g e t   =   s e l e c t e d T a r g e t ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   d i s p l a y T a r g e t A c t o r   & &  
 	 	 	 	 	 	     (   (   b L A x i s R e l e a s e d   & &   ! S h o u l d U s e P C M o d e T a r g e t i n g ( )   ) | |   I s I n C o m b a t A c t i o n ( )   )   & &  
 	 	 	 	 	 	     (   d i s p l a y T a r g e t A c t o r . I s A l i v e ( )   | |   f i n i s h a b l e E n e m i e s L i s t . C o n t a i n s (   d i s p l a y T a r g e t A c t o r   )   )   & &  
 	 	 	 	 	 	     d i s p l a y T a r g e t A c t o r . G e t G a m e p l a y V i s i b i l i t y ( )   & &  
 	 	 	 	 	 	     (   I s E n e m y V i s i b l e (   d i s p l a y T a r g e t A c t o r   )   | |   f i n i s h a b l e E n e m i e s L i s t . C o n t a i n s (   d i s p l a y T a r g e t A c t o r   )   )   & &  
 	 	 	 	 	 	     t h i s . C a n B e T a r g e t e d I f S w i m m i n g (   d i s p l a y T a r g e t A c t o r ,   t r u e   )   & &  
 	 	 	 	 	 	     I s T h r e a t (   d i s p l a y T a r g e t A c t o r ,   t r u e   )   & &  
 	 	 	 	 	 	     W a s V i s i b l e I n S c a l e d F r a m e (   d i s p l a y T a r g e t A c t o r ,   1 . f ,   1 . f   )   )  
 	 	 	 	 {  
 	 	 	 	 	 n e w T a r g e t   =   d i s p l a y T a r g e t A c t o r ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 e l s e   i f   (   m o v e T a r g e t   & &  
 	 	 	 	 	 	     i s M o v e T a r g e t T a r g e t a b l e   & &    
 	 	 	 	 	 	   (   ! I s I n C o m b a t A c t i o n ( )   | |   i s I n P a r r y O r C o u n t e r   | |   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ D o d g e   | |   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ R o l l   )   )  
 	 	 	 	 {  
 	 	 	 	 	 n e w T a r g e t   =   m o v e T a r g e t ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 n e w T a r g e t   =   N U L L ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 r e t a i n C u r r e n t T a r g e t   =   f a l s e ;  
 	 	 	 	 i f   (   l A x i s R e l e a s e d A f t e r C o u n t e r N o C A   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   l a s t A x i s I n p u t I s M o v e m e n t   & &   ! t h i s . I s S w i m m i n g ( ) )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 s e l e c t i o n W e i g h t s . a n g l e W e i g h t   =   0 . 3 7 5 f ;  
 	 	 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   =   0 . 2 7 5 f ;  
 	 	 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   =   0 . 3 5 f ;  
 	 	 	 	 	 	 s e l e c t e d T a r g e t   =   S e l e c t T a r g e t (   t a r g e t s ,   f a l s e ,   p l a y e r P o s i t i o n ,   p l a y e r H e a d i n g V e c t o r ,   s e l e c t i o n W e i g h t s ,   t r u e   ) ; 	  
  
 	 	 	 	 	 	 i f   (   c u r r e n t T a r g e t   ! =   s e l e c t e d T a r g e t   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 t a r g e t i n g I n f o . t a r g e t E n t i t y   =   c u r r e n t T a r g e t ;  
 	 	 	 	 	 	 	 i f   (   I s E n t i t y T a r g e t a b l e (   t a r g e t i n g I n f o ,   t r u e   )   & &   c u r r e n t T a r g e t . I s A l i v e ( )   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 r e t a i n C u r r e n t T a r g e t   =   t r u e ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 s e l e c t i o n W e i g h t s . a n g l e W e i g h t   =   0 . 7 5 f ;  
 	 	 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   =   0 . 1 2 5 f ;  
 	 	 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   =   0 . 1 2 5 f ;  
 	 	 	 	 	 	 s e l e c t e d T a r g e t   =   S e l e c t T a r g e t (   t a r g e t s ,   f a l s e ,   c a m e r a P o s i t i o n ,   c a m e r a H e a d i n g V e c t o r ,   s e l e c t i o n W e i g h t s ,   t r u e   ) ; 	 	  
 	 	 	 	 	 } 	 	 	  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 s e l e c t i o n W e i g h t s . a n g l e W e i g h t   =   0 . 6 f ;  
 	 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   =   0 . 4 f ;  
 	 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   =   0 . f ;  
 	 	 	 	 	 s e l e c t e d T a r g e t   =   S e l e c t T a r g e t (   t a r g e t s ,   t r u e ,   p l a y e r P o s i t i o n ,   t a r g e t i n g I n . r a w P l a y e r H e a d i n g V e c t o r ,   s e l e c t i o n W e i g h t s ,   t r u e   ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f   (   r e t a i n C u r r e n t T a r g e t   )  
 	 	 	 	 {  
 	 	 	 	 	 n e w T a r g e t   =   c u r r e n t T a r g e t ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   I s I n C o m b a t A c t i o n ( )   & &   G e t B e h a v i o r V a r i a b l e (   ' i s P e r f o r m i n g S p e c i a l A t t a c k '   )   = =   1 . 0 f   )  
 	 	 	 	 {  
 	 	 	 	 	 n e w T a r g e t   =   m o v e T a r g e t ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   s e l e c t e d T a r g e t   )  
 	 	 	 	 {  
 	 	 	 	 	 n e w T a r g e t   =   s e l e c t e d T a r g e t ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 n e w T a r g e t   =   N U L L ;  
 	 	 	 	 }  
 	 	 	 } 	  
 	 	  
 	 	 	 t a r g e t i n g O u t . c o n f i r m N e w T a r g e t   =   t r u e ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 n e w T a r g e t   =   N U L L ;  
 	 	 }  
 	 	  
 	 	 t a r g e t i n g O u t . r e s u l t   =   t r u e ;  
 	 	 t a r g e t i n g O u t . t a r g e t   =   n e w T a r g e t ; 	 	 	  
 	 }  
 	  
 	 f u n c t i o n   U p d a t e V i s i b l e A c t o r s ( )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   n o w   :   f l o a t ;  
 	 	  
 	 	 n o w   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	 f o r   (   i   =   v i s i b l e A c t o r s . S i z e ( )   -   1 ;   i   > =   0 ;   i - = 1   )  
 	 	 {  
 	 	 	  
 	 	 	 i f   (   (   n o w   -   v i s i b l e A c t o r s T i m e [ i ]   )   >   1 . 0 f   )  
 	 	 	 {  
 	 	 	 	 v i s i b l e A c t o r s . E r a s e F a s t (   i   ) ;  
 	 	 	 	 v i s i b l e A c t o r s T i m e . E r a s e F a s t (   i   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   R e m o v e N o n T a r g e t a b l e (   o u t   t a r g e t s   :   a r r a y <   C A c t o r   > ,   o u t   i n f o   :   S T a r g e t i n g I n f o ,   s e l e c t i o n H e a d i n g V e c t o r   :   V e c t o r   )  
 	 {  
 	 	 v a r   i 	 	 	 	 	 	 :   i n t ;  
 	 	 v a r   c a m e r a P o s i t i o n   	 	 	 :   V e c t o r ;  
 	 	 v a r   c a m e r a D i r e c t i o n 	 	 	 :   V e c t o r ;  
 	 	 v a r   n o n C o m b a t C h e c k 	 	 	 :   b o o l ;  
 	 	 v a r   p l a y e r T o C a m P l a n e D i s t 	 :   f l o a t ;  
 	 	 v a r   t a r g e t T o C a m P l a n e D i s t 	 :   f l o a t ;  
 	 	  
 	 	 i f   (   t a r g e t s . S i z e ( )   = =   0   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 n o n C o m b a t C h e c k   =   b L A x i s R e l e a s e d   & &   ! I s I n C o m b a t ( ) ;  
 	 	  
 	 	  
 	 	 i f   (   n o n C o m b a t C h e c k   )  
 	 	 {  
 	 	 	 i n f o . c o n e H e a d i n g V e c t o r 	 =   t a r g e t i n g P r e c a l c s . p l a y e r H e a d i n g V e c t o r ;   	 	 	 	 	  
 	 	 	 i f   (   l a s t A x i s I n p u t I s M o v e m e n t   )  
 	 	 	 {  
 	 	 	 	 i n f o . c o n e H e a d i n g V e c t o r 	 =   s e l e c t i o n H e a d i n g V e c t o r ;  
 	 	 	 	 i n f o . i n v i s i b l e C h e c k 	 	 =   f a l s e ;  
 	 	 	 	 i n f o . c o n e C h e c k   	 	 	 =   t r u e ;  
 	 	 	 	 i n f o . c o n e H a l f A n g l e C o s 	 =   0 . 7 6 6 0 4 4 4 4 3 1 1 f ;    
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i n f o . i n v i s i b l e C h e c k 	 =   f a l s e ;  
 	 	 	 	 i n f o . f r a m e S c a l e X   	 =   0 . 9 f ;    
 	 	 	 	 i n f o . f r a m e S c a l e Y   	 =   0 . 9 f ;    
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i n f o . c o n e H e a d i n g V e c t o r 	 =   V e c t o r (   0 . 0 f ,   0 . 0 f ,   0 . 0 f   ) ;  
 	 	 	 	  
 	 	 	  
 	 	 	 i f   (   I s I n C o m b a t ( )   )  
 	 	 	 {  
 	 	 	 	 i n f o . i n F r a m e C h e c k   =   f a l s e ;    
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   ! b L A x i s R e l e a s e d   )  
 	 	 	 	 {  
 	 	 	 	 	 i n f o . c o n e C h e c k   	 	 	 =   t r u e ;  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   t h i s . I s S w i m m i n g ( )   )  
 	 	 	 	 	 	 i n f o . c o n e H a l f A n g l e C o s 	 =   - 1 ;    
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 i n f o . c o n e H a l f A n g l e C o s 	 =   0 . 8 6 6 0 2 5 4 0 3 7 8 f ;    
 	 	 	 	 	 	  
 	 	 	 	 	 i n f o . c o n e H e a d i n g V e c t o r 	 =   t a r g e t i n g I n . r a w P l a y e r H e a d i n g V e c t o r ;    
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 c a m e r a P o s i t i o n   =   t h e C a m e r a . G e t C a m e r a P o s i t i o n ( ) ;  
 	 	 c a m e r a D i r e c t i o n   =   t a r g e t i n g P r e c a l c s . c a m e r a D i r e c t i o n ;  
 	 	 p l a y e r T o C a m P l a n e D i s t   =   V e c D o t 2 D (   c a m e r a D i r e c t i o n ,   t h i s . G e t W o r l d P o s i t i o n ( )   -   c a m e r a P o s i t i o n   ) ;  
 	 	  
 	 	  
 	 	 f o r (   i   =   t a r g e t s . S i z e ( )   -   1 ;   i   > =   0 ;   i   - =   1   )  
 	 	 { 	  
 	 	 	 i n f o . t a r g e t E n t i t y   =   t a r g e t s [ i ] ;  
 	 	 	  
 	 	 	 i f   (   ! C a n B e T a r g e t e d I f S w i m m i n g (   t a r g e t s [ i ] ,   t r u e   )   )  
 	 	 	 {  
 	 	 	 	 t a r g e t s . E r a s e F a s t (   i   ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f   (   ! I s E n t i t y T a r g e t a b l e (   i n f o ,   t r u e   )   )  
 	 	 	 {  
 	 	 	 	 t a r g e t s . E r a s e F a s t (   i   ) ;  
 	 	 	 } 	 	 	  
 	 	 	 e l s e    
 	 	 	 {  
 	 	 	 	 i f   (   n o n C o m b a t C h e c k   & &   ! l a s t A x i s I n p u t I s M o v e m e n t   )  
 	 	 	 	 {  
 	 	 	 	 	  
 	 	 	 	 	 t a r g e t T o C a m P l a n e D i s t   =   V e c D o t 2 D (   c a m e r a D i r e c t i o n ,   t a r g e t s [ i ] . G e t W o r l d P o s i t i o n ( )   -   c a m e r a P o s i t i o n   ) ;  
 	 	 	 	 	 i f   (   t a r g e t T o C a m P l a n e D i s t   <   p l a y e r T o C a m P l a n e D i s t   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t a r g e t s . E r a s e F a s t (   i   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 v a r   c o m b a t M o d e C o l o r   :   C o l o r ;  
 	 p u b l i c   f u n c t i o n   C o m b a t M o d e D e b u g ( )  
 	 {  
 	 	 v a r   v i s u a l D e b u g   :   C V i s u a l D e b u g   =   G e t V i s u a l D e b u g ( ) ;  
 	 	  
 	 	 v a r   n a v i Q u e r y M s g 	 :   s t r i n g ;  
 	 	 v a r   n a v i Q u e r y M s g 1 	 :   s t r i n g ;  
 	 	 v a r   n a v i Q u e r y M s g 2 	 :   s t r i n g ;  
 	 	  
 	 	 v a r   n a v S n a p M s g 	 	 :   s t r i n g ;  
 	 	 v a r   i 	 	 	 	 :   i n t ;  
 	  
 	 	 i f   (   I s C o m b a t M u s i c E n a b l e d ( )   )   	  
 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' C o m b a t M u s i c ' ,   " C o m b a t M u s i c   :   O n " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 7 f   ) ,   t r u e ,   ,   C o l o r (   2 5 5 ,   2 5 5 ,   2 5 5   )   ) ;  
 	 	 e l s e  
 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' C o m b a t M u s i c ' ,   " C o m b a t M u s i c   :   O f f " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 7 f   ) ,   t r u e ,   ,   C o l o r (   0 ,   0 ,   0   )   ) ; 	 	  
  
 	 	 i f   (   G e t P l a y e r M o d e ( ) . G e t F o r c e C o m b a t M o d e ( )   )  
 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' F o r c e d C o m b a t M o d e ' ,   " F o r c e d C o m b a t M o d e   :   T R U E " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 6 f   ) ,   t r u e ,   ,   C o l o r (   2 5 5 ,   2 5 5 ,   2 5 5   )   ) ;  
 	 	 e l s e  
 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' F o r c e d C o m b a t M o d e ' ,   " F o r c e d C o m b a t M o d e   :   F A L S E " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 6 f   ) ,   t r u e ,   ,   C o l o r (   0 ,   0 ,   0   )   ) ; 	  
  
 	  
 	 	 i f   (   I s T h r e a t e n e d ( )   )  
 	 	 {  
 	 	 	 i f   (   I s I n C o m b a t ( )   )  
 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' C o m b a t M o d e ' ,   " C o m b a t M o d e   :   A l e r t N e a r / F a r " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 5 f   ) ,   t r u e ,   ,   C o l o r (   2 5 5 ,   0 ,   0   )   ) ;  
 	 	 	 e l s e  
 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' C o m b a t M o d e ' ,   " C o m b a t M o d e   :   C o m b a t E x p l o r a t i o n " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 5 f   ) ,   t r u e ,   ,   C o l o r (   2 5 5 ,   2 5 5 ,   0   )   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' C o m b a t M o d e ' ,   " C o m b a t M o d e   :   N o r m a l E x p l o r a t i o n " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 5 f   ) ,   t r u e ,   ,   C o l o r (   0 ,   2 5 5 ,   0   )   ) ;  
 	  
 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y ' ,   n a v i Q u e r y M s g ,   c o m b a t M o d e E n t . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 3 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y 1 ' ,   n a v i Q u e r y M s g 1 ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 3 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y 2 ' ,   n a v i Q u e r y M s g 2 ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 2 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	  
 	 	 i f   (   i s I n C o m b a t R e a s o n   = =   0   )  
 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' C o m b a t M o d e R e a s o n ' ,   " C o m b a t M o d e R e a s o n   :   " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 4 f   ) ,   t r u e ,   ,   C o l o r (   1 2 5 ,   1 2 5 ,   1 2 5   )   ) ;  
 	 	 e l s e   i f   (   i s I n C o m b a t R e a s o n   = =   1   )  
 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' C o m b a t M o d e R e a s o n ' ,   " C o m b a t M o d e R e a s o n   :   G e r a l t   C A N   p a t h f i n d   t o   N P C " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 4 f   ) ,   t r u e ,   ,   C o l o r (   2 5 5 ,   0 ,   0   )   ) ;  
 	 	 e l s e   i f   (   i s I n C o m b a t R e a s o n   = =   2   )  
 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' C o m b a t M o d e R e a s o n ' ,   " C o m b a t M o d e R e a s o n   :   A n   N P C   i s   f l y i n g   o r   r a n g e d " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 4 f   ) ,   t r u e ,   ,   C o l o r (   2 5 5 ,   0 ,   0   )   ) ; 	 	 	 	 	  
 	 	 e l s e   i f   (   i s I n C o m b a t R e a s o n   = =   2   )  
 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' C o m b a t M o d e R e a s o n ' ,   " C o m b a t M o d e R e a s o n   :   F o r c e d   C o m b a t   M o d e " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 4 f   ) ,   t r u e ,   ,   C o l o r (   2 5 5 ,   0 ,   0   )   ) ;  
  
 	 	 i f   (   r e a c h a b l e E n e m y W a s T o o F a r   )  
 	 	 {  
 	 	 	 c o m b a t M o d e C o l o r . R e d   =   2 5 5 ;  
 	 	 	 c o m b a t M o d e C o l o r . G r e e n   =   2 5 5 ;  
 	 	 	 c o m b a t M o d e C o l o r . B l u e   =   0 ; 	 	 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 c o m b a t M o d e C o l o r . R e d   =   0 ;  
 	 	 	 c o m b a t M o d e C o l o r . G r e e n   =   2 5 5 ;  
 	 	 	 c o m b a t M o d e C o l o r . B l u e   =   0 ; 	 	 	 	  
 	 	 }  
 	 	  
 	 	 i f   (   I s T h r e a t e n e d ( )   )  
 	 	 {  
 	 	 	 s w i t c h   (   n a v Q u e r y . G e t L a s t O u t p u t (   2 . 0   )   )  
 	 	 	 {  
 	 	 	 	 c a s e   E A s y n c T a s t R e s u l t _ F a i l u r e :  
 	 	 	 	 { 	  
 	 	 	 	 	 i f   (   t h i s . p l a y e r M o d e . G e t F o r c e C o m b a t M o d e ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   i s S n a p p e d T o N a v M e s h   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y ' ,   " " ,   c o m b a t M o d e E n t . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 3 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	 	 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y 1 ' ,   " N a v i q u e r y   :   S n a p p e d   S o   n o   n e e d   f o r   q u e r y " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 3 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	 	 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y 2 ' ,   " N a v i q u e r y   :   S n a p p e d   S o   n o   n e e d   f o r   q u e r y " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 2 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y ' ,   " " ,   c o m b a t M o d e E n t . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 3 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	 	 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y 1 ' ,   " N a v i q u e r y   :   F a i l e d " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 3 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	 	 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y 2 ' ,   " N a v i q u e r y   :   F a i l e d " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 2 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ; 	 	 	 	 	 	  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y ' ,   " " ,   c o m b a t M o d e E n t . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 3 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y 1 ' ,   " N a v i q u e r y   :   F a i l e d " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 3 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y 2 ' ,   " N a v i q u e r y   :   F a i l e d " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 2 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 	 c a s e   E A s y n c T a s t R e s u l t _ S u c c e s s :  
 	 	 	 	 { 	 	 	  
 	 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y ' ,   c o m b a t M o d e E n t . G e t N a m e ( ) ,   c o m b a t M o d e E n t . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 3 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y 1 ' ,   " N a v i q u e r y   :   S u c c e s s   ( n a v D i s t :   "   +   n a v D i s t   +   " ) " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 3 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y 2 ' ,   " N a v i q u e r y   :   S u c c e s s   ( d i r e c t D i s t :   "   +   d i r e c t D i s t   +   " ) " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 2 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ; 	  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 	 c a s e   E A s y n c T a s t R e s u l t _ P e n d i n g :  
 	 	 	 	 {  
 	 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y ' ,   c o m b a t M o d e E n t . G e t N a m e ( ) ,   c o m b a t M o d e E n t . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 3 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y 1 ' ,   " N a v i q u e r y   :   P e n d i n g   ( n a v D i s t :   "   +   n a v D i s t   +   " ) " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 3 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y 2 ' ,   " N a v i q u e r y   :   P e n d i n g   ( d i r e c t D i s t :   "   +   d i r e c t D i s t   +   " ) " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 2 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ; 	  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 	 c a s e   E A s y n c T a s t R e s u l t _ I n v a l i d a t e d :  
 	 	 	 	 {  
 	 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y ' ,   " " ,   c o m b a t M o d e E n t . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 3 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y 1 ' ,   " N a v i q u e r y   :   I n v a l i d a t e d " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 3 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y 2 ' ,   " N a v i q u e r y   :   I n v a l i d a t e d " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 2 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ; 	 	 	  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 } 	 	 	  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y ' ,   " " ,   c o m b a t M o d e E n t . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 3 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y 1 ' ,   " " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 3 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ;  
 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v i Q u e r y 2 ' ,   " " ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 2 f   ) ,   t r u e ,   ,   c o m b a t M o d e C o l o r   ) ; 	 	 	 	  
 	 	 }  
 	 	  
 	 	 i f   (   n a v M e s h S n a p I n f o S t a c k . S i z e ( )   >   0   )  
 	 	 {  
 	 	 	 f o r   (   i   =   n a v M e s h S n a p I n f o S t a c k . S i z e ( ) - 1 ;   i   > =   0 ;   i   - =   1   )  
 	 	 	 {  
 	 	 	 	 n a v S n a p M s g   =   n a v S n a p M s g   +   n a v M e s h S n a p I n f o S t a c k [ i ]   +   "   " ;  
 	 	 	 }  
 	 	 	  
 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v M e s h S n a p ' ,   " N a v M e s h S n a p :   E n a b l e d ,   S o u r c e s   :   "   +   n a v S n a p M s g ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 1 f   ) ,   t r u e ,   ,   C o l o r (   2 5 5 ,   2 5 5 ,   2 5 5   )   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 	 v i s u a l D e b u g . A d d T e x t (   ' N a v M e s h S n a p ' ,   " N a v M e s h S n a p :   D i s a b l e d "   ,   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   +   V e c t o r (   0 . f , 0 . f , 1 . 1 f   ) ,   t r u e ,   ,   C o l o r (   0 ,   0 ,   0   )   ) ;  
 	 	  
 	 }  
 	  
 	 f u n c t i o n   I s C o m b a t M u s i c E n a b l e d ( )   :   b o o l  
 	 {  
 	 	 i f   (   t h e S o u n d . G e t C u r r e n t G a m e S t a t e ( )   = =   E S G S _ U n d e r w a t e r C o m b a t    
 	 	 	 | |   t h e S o u n d . G e t C u r r e n t G a m e S t a t e ( )   = =   E S G S _ C o m b a t    
 	 	 	 | |   t h e S o u n d . G e t C u r r e n t G a m e S t a t e ( )   = =   E S G S _ C o m b a t M o n s t e r H u n t    
 	 	 	 | |   t h e S o u n d . G e t C u r r e n t G a m e S t a t e ( )   = =   E S G S _ F o c u s U n d e r w a t e r C o m b a t   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e  
 	 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 f u n c t i o n   I s S o u n d S t a t e C o m b a t M u s i c (   g a m e S t a t e   :   E S o u n d G a m e S t a t e     )   :   b o o l  
 	 {  
 	 	 i f   (   g a m e S t a t e   = =   E S G S _ U n d e r w a t e r C o m b a t    
 	 	 	 | |   g a m e S t a t e   = =   E S G S _ C o m b a t    
 	 	 	 | |   g a m e S t a t e   = =   E S G S _ C o m b a t M o n s t e r H u n t    
 	 	 	 | |   g a m e S t a t e   = =   E S G S _ F o c u s U n d e r w a t e r C o m b a t   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e  
 	 	 	 r e t u r n   f a l s e ;  
 	 } 	  
 	 	  
 	 p r i v a t e   f u n c t i o n   C o n f i r m N e w T a r g e t (   a c t o r T o C o n f i r m   :   C A c t o r   )  
 	 {  
 	 	 v a r   l e f t J o y R o t L i m i t   :   f l o a t   =   1 . f ;  
 	 	  
 	 	 v a r   t a r g e t   :   C A c t o r ;  
 	 	  
 	 	 t a r g e t   =   G e t T a r g e t ( ) ;  
 	 	  
 	 	  
 	 	 i f   (   	 ! t a r g e t  
 	 	 	 	 | |   ! m o v e T a r g e t  
 	 	 	 	 | |   (   t a r g e t   & &   (   ! I s T h r e a t (   t a r g e t   )   | |   ! t a r g e t . I s A l i v e ( )   )   )    
 	 	 	 	 | |   V e c L e n g t h (   r a w L e f t J o y V e c   )   <   0 . 7 f  
 	 	 	 	 | |   (   I s I n C o m b a t A c t i o n ( )   & &   (   (   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e ' )   = =   ( i n t ) C A T _ D o d g e   )   | |   (   V e c L e n g t h (   r a w L e f t J o y V e c   )   > =   0 . 7 f   & &   (   p r e v R a w L e f t J o y R o t   > =   (   r a w L e f t J o y R o t   +   l e f t J o y R o t L i m i t   )   | |   p r e v R a w L e f t J o y R o t   < =   (   r a w L e f t J o y R o t   -   l e f t J o y R o t L i m i t   )   | |   A b s F (   A n g l e D i s t a n c e (   c a c h e d R a w P l a y e r H e a d i n g ,   V e c H e a d i n g (   G e t D i s p l a y T a r g e t ( ) . G e t W o r l d P o s i t i o n ( )   -   t h i s . G e t W o r l d P o s i t i o n ( )   )   )   )   >   6 0   )   )   )   )    
 	 	 	 	 | |   (   ! I s I n C o m b a t A c t i o n ( )   & &   (   ! r a n g e d W e a p o n   | |   (   r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n H o l s t e r '   )   )   ) )  
 	 	 {  
 	 	 	 S e t P r e v R a w L e f t J o y R o t ( ) ;  
 	 	 	  
 	 	 	 i f   (   a c t o r T o C o n f i r m   ! =   t a r g e t   )  
 	 	 	 {  
 	 	 	 	 S e t T a r g e t (   a c t o r T o C o n f i r m   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   S e l e c t T a r g e t (   t a r g e t s   :   a r r a y <   C A c t o r   > ,   u s e V i s i b i l i t y C h e c k   :   b o o l ,   s o u r c e P o s i t i o n   :   V e c t o r ,   h e a d i n g V e c t o r   :   V e c t o r ,   s e l e c t i o n W e i g h t s   :   S T a r g e t S e l e c t i o n W e i g h t s ,   o p t i o n a l   u s e P r e c a l c s   :   b o o l   )   :   C A c t o r  
 	 {  
 	 	 v a r   i 	 	 	 	 	 :   i n t ;  
 	 	 v a r 	 t a r g e t 	 	 	 	 :   C A c t o r ; 	  
 	 	 v a r 	 s e l e c t e d T a r g e t 	 	 :   C A c t o r ; 	  
 	 	 v a r   c u r r e n t T a r g e t 	 	 :   C A c t o r ;  
 	 	 v a r   p l a y e r P o s i t i o n 	 	 :   V e c t o r ;  
 	 	 v a r   d i s t a n c e T o P l a y e r 	 :   f l o a t ;  
 	 	 v a r   p r i o r i t y 	 	 	 :   f l o a t ;  
 	 	 v a r   m a x P r i o r i t y 	 	 	 :   f l o a t ;  
 	 	 v a r   n o w 	 	 	 	 	 :   f l o a t ;  
 	 	 v a r   r e m o v e 	 	 	 	 :   b o o l ;  
 	 	 v a r   v i s i b l e A c t o r I n d e x 	 :   i n t ;  
 	 	 	 	  
 	 	 i f   (   u s e V i s i b i l i t y C h e c k   )  
 	 	 {  
 	 	 	 c u r r e n t T a r g e t   =   t h i s . G e t T a r g e t ( ) ; 	 	 	  
 	 	 	 p l a y e r P o s i t i o n   =   t h i s . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 n o w   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	 	 	  
 	 	 	 f o r   (   i   =   t a r g e t s . S i z e ( )   -   1 ;   i   > =   0 ;   i - = 1   )    
 	 	 	 { 	  
 	 	 	 	 t a r g e t   =   t a r g e t s [   i   ] ;  
 	 	 	 	 i f   (   t a r g e t   ! =   c u r r e n t T a r g e t   & &   (   ! I s P C M o d e E n a b l e d ( )   & &   ! W a s V i s i b l e I n S c a l e d F r a m e (   t a r g e t ,   s o f t L o c k F r a m e S i z e ,   s o f t L o c k F r a m e S i z e   )   )   ) 	 	 	  
 	 	 	 	 {  
 	 	 	 	 	 r e m o v e   =   t r u e ;  
 	 	 	 	 	 v i s i b l e A c t o r I n d e x   =   v i s i b l e A c t o r s . F i n d F i r s t (   t a r g e t   ) ;  
 	 	 	 	 	 i f   (   v i s i b l e A c t o r I n d e x   ! =   - 1   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   u s e P r e c a l c s   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 d i s t a n c e T o P l a y e r   =   D i s t a n c e 2 D B e t w e e n C a p s u l e A n d P o i n t (   t a r g e t ,   t h i s   )   -   t a r g e t i n g P r e c a l c s . p l a y e r R a d i u s ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 d i s t a n c e T o P l a y e r   =   D i s t a n c e 2 D B e t w e e n C a p s u l e s (   t h i s ,   t a r g e t   ) ; 	 	 	 	 	 	  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	  
 	 	 	 	 	 	 i f   (   d i s t a n c e T o P l a y e r   <   t h i s . s o f t L o c k D i s t   & &   (   n o w   -   v i s i b l e A c t o r s T i m e [   i   ]   )   <   1 . 0 f   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 r e m o v e   =   f a l s e ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	 i f   (   r e m o v e   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t a r g e t s . E r a s e F a s t (   i   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 v i s i b l e A c t o r I n d e x   =   v i s i b l e A c t o r s . F i n d F i r s t (   t a r g e t   ) ;  
 	 	 	 	 	 i f   (   v i s i b l e A c t o r I n d e x   = =   - 1   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 v i s i b l e A c t o r s . P u s h B a c k (   t a r g e t   ) ;  
 	 	 	 	 	 	 v i s i b l e A c t o r s T i m e . P u s h B a c k (   n o w   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 v i s i b l e A c t o r s T i m e [   v i s i b l e A c t o r I n d e x   ]   =   n o w ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
  
 	 	 s e l e c t e d T a r g e t   =   N U L L ;  
 	 	 m a x P r i o r i t y   =   - 1 . 0 f ;  
 	 	 f o r (   i   =   t a r g e t s . S i z e ( )   -   1 ;   i   > =   0 ;   i - = 1   )  
 	 	 {  
 	 	 	 p r i o r i t y   =   C a l c S e l e c t i o n P r i o r i t y (   t a r g e t s [   i   ] ,   s e l e c t i o n W e i g h t s ,   s o u r c e P o s i t i o n ,   h e a d i n g V e c t o r   ) ; 	 	 	 	  
 	 	 	 i f   (   p r i o r i t y   >   m a x P r i o r i t y   )  
 	 	 	 {  
 	 	 	 	 m a x P r i o r i t y   =   p r i o r i t y ;  
 	 	 	 	 s e l e c t e d T a r g e t   =   t a r g e t s [   i   ] ;  
 	 	 	 }  
 	 	 } 	 	 	  
 	  
 	 	  
 	 	 r e t u r n   s e l e c t e d T a r g e t ; 	  
 	 }  
  
 	 f u n c t i o n   D i s t a n c e 2 D B e t w e e n C a p s u l e A n d P o i n t (   a c t o r   :   C A c t o r ,   e n t i t y   :   C E n t i t y   )   :   f l o a t  
 	 {  
 	 	 v a r   d i s t a n c e   	 :   f l o a t ;  
 	 	 v a r   m p a c   	 	 :   C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ;  
 	 	  
 	 	 d i s t a n c e   =   V e c D i s t a n c e 2 D (   a c t o r . G e t W o r l d P o s i t i o n ( ) ,   e n t i t y . G e t W o r l d P o s i t i o n ( )   ) ;  
 	 	  
 	 	 m p a c   =   ( C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ) a c t o r . G e t M o v i n g A g e n t C o m p o n e n t ( ) ;  
 	 	 i f   (   m p a c   )  
 	 	 {  
 	 	 	 d i s t a n c e   - =   m p a c . G e t C a p s u l e R a d i u s ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   d i s t a n c e ; 	 	  
 	 }  
  
  
 	 f u n c t i o n   D i s t a n c e 2 D B e t w e e n C a p s u l e s (   a c t o r 1   :   C A c t o r ,   a c t o r 2   :   C A c t o r   )   :   f l o a t  
 	 {  
 	 	 v a r   d i s t a n c e   	 :   f l o a t ;  
 	 	 v a r   m p a c   	 	 :   C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ;  
 	 	  
 	 	 d i s t a n c e   =   V e c D i s t a n c e 2 D (   a c t o r 1 . G e t W o r l d P o s i t i o n ( ) ,   a c t o r 2 . G e t W o r l d P o s i t i o n ( )   ) ;  
 	 	  
 	 	 m p a c   =   ( C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ) a c t o r 1 . G e t M o v i n g A g e n t C o m p o n e n t ( ) ;  
 	 	 i f   (   m p a c   )  
 	 	 {  
 	 	 	 d i s t a n c e   - =   m p a c . G e t C a p s u l e R a d i u s ( ) ;  
 	 	 }  
 	 	  
 	 	 m p a c   =   ( C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ) a c t o r 2 . G e t M o v i n g A g e n t C o m p o n e n t ( ) ;  
 	 	 i f   (   m p a c   )  
 	 	 {  
 	 	 	 d i s t a n c e   - =   m p a c . G e t C a p s u l e R a d i u s ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   d i s t a n c e ; 	 	  
 	 }  
  
 	 p r o t e c t e d   f u n c t i o n   P r o c e s s S e l e c t i o n W e i g h t s ( )   :   S T a r g e t S e l e c t i o n W e i g h t s  
 	 {  
 	 	 v a r   s e l e c t i o n W e i g h t s   	 	 	 :   S T a r g e t S e l e c t i o n W e i g h t s ;  
 	 	  
 	 	 i f   (   S h o u l d U s e P C M o d e T a r g e t i n g ( )   )  
 	 	 {  
 	 	 	 s e l e c t i o n W e i g h t s . a n g l e W e i g h t   =   0 . 7 5 f ;  
 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   =   0 . 2 5 f ;  
 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   =   0 . f ; 	 	  
 	 	 	 r e t u r n   s e l e c t i o n W e i g h t s ; 	 	  
 	 	 }  
 	 	  
 	 	 i f   (   I s I n C o m b a t A c t i o n ( )   & &   (   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ D o d g e   | |   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ R o l l   )   )  
 	 	 {  
 	 	 	 s e l e c t i o n W e i g h t s . a n g l e W e i g h t   =   0 . 5 7 5 f ;  
 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   =   0 . 1 7 5 f ;  
 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   =   0 . 2 5 f ;  
 	 	 } 	 	  
 	 	 i f   (   ! l A x i s R e l e a s e d A f t e r C o u n t e r   | |   I s I n C o m b a t A c t i o n ( )   )    
 	 	 {  
 	 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 	 i f   (   t h e I n p u t . G e t A c t i o n V a l u e (   ' R G C _ C r o s s B o w '   )   = =   1 . f   | |   (   r a n g e d W e a p o n   & &   r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '   )   )  
 	 	 	 {  
 	 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	 	 	 s e l e c t i o n W e i g h t s . a n g l e W e i g h t   =   1 . f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   =   0 . f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   =   0 . f ; 	  
 	 	 	 }  
 	 	 	 e l s e   i f   (   ! l A x i s R e l e a s e d A f t e r C o u n t e r   )    
 	 	 	 {  
 	 	 	 	 s e l e c t i o n W e i g h t s . a n g l e W e i g h t   =   0 . 5 5 f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   =   0 . 4 5 f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   =   0 . f ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 s e l e c t i o n W e i g h t s . a n g l e W e i g h t   =   0 . 7 5 f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   =   0 . 2 5 f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   =   0 . f ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f (   ! I s C u r r e n t S i g n C h a n n e l e d ( )   )  
 	 	 {  
 	 	 	 s e l e c t i o n W e i g h t s . a n g l e W e i g h t   =   0 . 3 5 f ;  
 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   =   0 . 6 5 f ;  
 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   =   0 . f ; 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 s e l e c t i o n W e i g h t s . a n g l e W e i g h t   =   0 . 2 7 5 f ;  
 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   =   0 . 3 7 5 f ;  
 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   =   0 . 3 5 f ; 	 	  
 	 	 }  
 	 	  
 	 	 r e t u r n   s e l e c t i o n W e i g h t s ; 	  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   C a l c S e l e c t i o n P r i o r i t y (   t a r g e t   :   C E n t i t y ,   s e l e c t i o n W e i g h t s   :   S T a r g e t S e l e c t i o n W e i g h t s ,   s o u r c e P o s i t i o n   :   V e c t o r ,   h e a d i n g V e c t o r   :   V e c t o r   )   :   f l o a t  
 	 {  
 	 	 v a r   s o u r c e T o T a r g e t 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   s o u r c e T o T a r g e t D i s t 	 	 	 :   f l o a t ;  
 	 	 v a r   s o u r c e T o T a r g e t A n g l e D i f f 	 	 :   f l o a t ;  
 	 	 v a r   s e l e c t i o n P r i o r i t y 	 	 	 :   f l o a t ;  
 	 	  
 	 	 s o u r c e T o T a r g e t   =   t a r g e t . G e t W o r l d P o s i t i o n ( )   -   s o u r c e P o s i t i o n ;  
 	 	 s o u r c e T o T a r g e t D i s t   =   V e c L e n g t h 2 D (   s o u r c e T o T a r g e t   ) ;  
 	 	  
 	 	 i f   (   s o u r c e T o T a r g e t D i s t   <   0 . 0 0 0 1 f   )  
 	 	 {  
 	 	 	 s o u r c e T o T a r g e t   =   V e c t o r (   0 . 0 f ,   0 . 0 f ,   0 . 0 f   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 s o u r c e T o T a r g e t   * =   (   1 . 0 f   /   s o u r c e T o T a r g e t D i s t   ) ;  
 	 	 }  
 	 	 s o u r c e T o T a r g e t A n g l e D i f f   =   A b s F (   R a d 2 D e g (   A c o s F (   V e c D o t 2 D (   s o u r c e T o T a r g e t ,   h e a d i n g V e c t o r   )   )   )   ) ;  
 	 	  
 	 	 s e l e c t i o n P r i o r i t y   =   (   s e l e c t i o n W e i g h t s . a n g l e W e i g h t   *   (   (   1 8 0   -   s o u r c e T o T a r g e t A n g l e D i f f   )   /   1 8 0   )   ) ;  
 	 	 s e l e c t i o n P r i o r i t y   + =   s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   *   (   (   s o f t L o c k D i s t   -   s o u r c e T o T a r g e t D i s t   )   /   s o f t L o c k D i s t   ) ; 	  
 	 	  
 	 	 i f   (   s o u r c e T o T a r g e t D i s t   >   0 . f     & &   s o u r c e T o T a r g e t D i s t   < =   6 . f   )  
 	 	 {  
 	 	 	 s e l e c t i o n P r i o r i t y   + =   s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   *   1 . 0 f ; 	  
 	 	 }  
 	 	 e l s e   i f   (   s o u r c e T o T a r g e t D i s t   >   6 . f     & &   s o u r c e T o T a r g e t D i s t   < =   s o f t L o c k D i s t   )  
 	 	 {  
 	 	 	 s e l e c t i o n P r i o r i t y   + =   s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   *   0 . 4 f ;  
 	 	 } 	  
 	 	  
 	 	 r e t u r n   s e l e c t i o n P r i o r i t y ;  
 	 }  
  
 	 p r o t e c t e d   f u n c t i o n   S e t T a r g e t (   t a r g e t A c t o r   :   C A c t o r ,   o p t i o n a l   f o r c e S e t T a r g e t   :   b o o l   )  
 	 {  
 	 	 v a r   p l a y e r T o T a r g e t D i s t a n c e   	 :   f l o a t ;  
 	 	 v a r   t a r g e t 	 	 	 	   	 :   C A c t o r ;  
 	 	 v a r   a l l o w 	 	 	 	 	 :   b o o l ;  
 	 	  
 	 	 t a r g e t   =   G e t T a r g e t ( ) ;  
  
 	 	 i f   (   ! I s I n N o n G a m e p l a y C u t s c e n e ( )   )  
 	 	 	 a l l o w   =   t r u e ;  
 	 	  
 	 	 i f   (   a l l o w   )  
 	 	 {  
 	 	 	 i f   (   t a r g e t A c t o r   )  
 	 	 	 {  
 	 	 	 	 i f   (   (   t a r g e t A c t o r . I s A l i v e ( )   & &   ! t a r g e t A c t o r . I s K n o c k e d U n c o n s c i o u s ( )   )   | |   f i n i s h a b l e E n e m i e s L i s t . C o n t a i n s (   t a r g e t A c t o r   )   )  
 	 	 	 	 	 a l l o w   =   t r u e ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 a l l o w   =   f a l s e ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 	 a l l o w   =   t r u e ; 	 	  
 	 	 }  
 	 	  
 	 	 i f   (   f o r c e S e t T a r g e t   )  
 	 	 	 a l l o w   =   t r u e ;  
 	 	 	  
 	 	 i f   (   a l l o w   & &   t a r g e t   ! =   t a r g e t A c t o r   )  
 	 	 	 a l l o w   =   t r u e ;  
 	 	 e l s e  
 	 	 	 a l l o w   =   f a l s e ;  
 	 	  
 	 	 i f   (   a l l o w   )  
 	 	 { 	  
 	 	 	 S e t P l a y e r T a r g e t (   t a r g e t A c t o r   ) ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 }  
 	 }  
  
 	  
 	 p u b l i c   f u n c t i o n   S e t S l i d e T a r g e t (   a c t o r   :   C G a m e p l a y E n t i t y   )  
 	 {  
 	 	  
 	 	  
  
 	 	 s l i d e T a r g e t   =   a c t o r ;  
 	 	  
 	 	 i f   (   s l i d e T a r g e t   )  
 	 	 	 S e t P l a y e r C o m b a t T a r g e t ( ( C A c t o r ) s l i d e T a r g e t ) ; 	 	  
 	 	 e l s e  
 	 	 	 L o g (   " s l i d e T a r g e t   =   N U L L "   ) ;  
 	 	  
 	 	 i f   (   s l i d e T a r g e t   = =   n o n A c t o r T a r g e t   )  
 	 	 	 U p d a t e D i s p l a y T a r g e t (   t r u e ,   t r u e   ) ;  
 	 	 e l s e  
 	 	 	 U p d a t e D i s p l a y T a r g e t ( ) ;  
 	 	 	  
 	 	 C o n f i r m D i s p l a y T a r g e t T i m e r ( 0 . f ) ;  
 	 }  
 	  
 	 e v e n t   O n F o r c e S e l e c t L o c k T a r g e t ( )  
 	 {  
 	 	 F o r c e S e l e c t L o c k T a r g e t ( ) ;  
 	 }  
  
 	 p r i v a t e   f u n c t i o n   F o r c e S e l e c t L o c k T a r g e t ( )  
 	 {  
 	 	 v a r   n e w M o v e T a r g e t   	 :   C A c t o r ;  
 	 	 v a r   t a r g e t 	 	 	 :   C A c t o r ;  
 	  
 	 	 n e w M o v e T a r g e t   =   G e t S c r e e n S p a c e L o c k T a r g e t (   G e t D i s p l a y T a r g e t ( ) ,   1 8 0 . f ,   1 . f ,   9 0   ) ;  
 	 	  
 	 	 i f   (   ! n e w M o v e T a r g e t   )  
 	 	 	 n e w M o v e T a r g e t   =   G e t S c r e e n S p a c e L o c k T a r g e t (   G e t D i s p l a y T a r g e t ( ) ,   1 8 0 . f ,   1 . f ,   - 9 0   ) ;  
 	 	 	  
 	 	 i f   (   n e w M o v e T a r g e t   )  
 	 	 {  
 	 	 	 t h e P l a y e r . P r o c e s s L o c k T a r g e t (   n e w M o v e T a r g e t   ) ;  
 	 	 	  
 	 	 	 t a r g e t   =   G e t T a r g e t ( ) ;  
 	 	 	 i f   (   t a r g e t   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . S e t S l i d e T a r g e t (   t a r g e t   ) ;  
 	  
 	 	 	 	 i f   (   I s H a r d L o c k E n a b l e d ( )   )    
 	 	 	 	 	 t h e P l a y e r . H a r d L o c k T o T a r g e t (   t r u e   ) ; 	  
 	 	 	 }  
 	 	 }  
 	 	 e l s e    
 	 	 {  
 	 	 	 t h e P l a y e r . H a r d L o c k T o T a r g e t (   f a l s e   ) ; 	 	 	  
 	 	 } 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t F i n i s h e r V i c t i m (   a c t o r   :   C A c t o r   )  
 	 {  
 	 	 f i n i s h e r V i c t i m   =   a c t o r ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t F i n i s h e r V i c t i m ( )   :   C A c t o r    
 	 {  
 	 	 r e t u r n   f i n i s h e r V i c t i m ;  
 	 } 	  
 	  
 	 p r o t e c t e d   f u n c t i o n   S e t N o n A c t o r T a r g e t (   a c t o r   :   C G a m e p l a y E n t i t y   ) 	 	  
 	 {    
 	 	 i f   (   n o n A c t o r T a r g e t   ! =   a c t o r   )  
 	 	 n o n A c t o r T a r g e t   =   a c t o r ;  
 	 }  
  
 	 t i m e r   f u n c t i o n   D i s a b l e T a r g e t H i g h l i g h t T i m e r (   t i m e   :   f l o a t   ,   i d   :   i n t )  
 	 {  
 	 	 v a r   t a r g e t   :   C A c t o r ;  
 	 	 t a r g e t   =   G e t T a r g e t ( ) ;  
 	 	  
 	 	 i f (   t a r g e t   )  
 	 	 {  
 	 	 	 t a r g e t . S t o p E f f e c t (   ' s e l e c t _ c h a r a c t e r '   ) ;  
 	 	 }  
 	 }  
  
 	 p u b l i c   f u n c t i o n   W a s V i s i b l e I n S c a l e d F r a m e (   e n t i t y   :   C E n t i t y ,   f r a m e S i z e X   :   f l o a t ,   f r a m e S i z e Y   :   f l o a t   )   :   b o o l  
 	 {  
 	 	 v a r   p o s i t i o n 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   p o s i t i o n F o u n d 	 	 	 :   b o o l ;  
 	 	 v a r   i n F r o n t 	 	 	 	 	 :   b o o l ;  
 	 	 v a r   x ,   y 	 	 	 	 	 :   f l o a t ;  
 	 	 v a r   b o n e I n d e x 	 	 	 	 :   i n t ;  
 	 	 v a r   a c t o r 	 	 	 	 	 :   C A c t o r ;  
 	 	 v a r   g a m e p l a y E n t i t y 	 	 	 :   C G a m e p l a y E n t i t y ;  
 	 	 v a r   g a m e p l a y E n t i t y M a t r i x 	 :   M a t r i x ;  
 	 	 v a r   d r a w a b l e C o m p 	 	 	 :   C D r a w a b l e C o m p o n e n t ; 	  
 	 	 v a r   b o x   	 	 	 	 	 :   B o x ;  
 	 	 v a r   o k 	 	 	 	 	 	 :   b o o l ;  
 	 	 	  
 	 	 i f   (   ! e n t i t y   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 i f   (   f r a m e S i z e X   < =   0 . 0 f   & &   f r a m e S i z e Y   < =   0 . 0 f   )  
 	 	 {  
 	 	 	 L o g C h a n n e l (   ' W a s V i s i b l e I n S c a l e d F r a m e ' ,   " E R R O R :   W a s V i s i b l e I n S c a l e d F r a m e :   f r a m e S i z e X   & &   f r a m e S i z e Y   a r e   b o t h   n e g a t i v e ! ! ! "   ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 i f   (   u s e N a t i v e T a r g e t i n g   )  
 	 	 {  
 	 	 	 r e t u r n   t a r g e t i n g . W a s V i s i b l e I n S c a l e d F r a m e (   e n t i t y ,   f r a m e S i z e X ,   f r a m e S i z e Y   ) ;  
 	 	 }  
 	  
 	 	 p o s i t i o n   =   e n t i t y . G e t W o r l d P o s i t i o n ( ) ;  
 	  
 	 	 a c t o r   =   ( C A c t o r ) e n t i t y ;  
 	 	 i f   (   a c t o r   )  
 	 	 {  
 	 	 	 b o n e I n d e x   =   e n t i t y . G e t B o n e I n d e x (   ' p e l v i s '   ) ;  
 	 	 	 i f   (   b o n e I n d e x   = =   - 1   )  
 	 	 	 {  
 	 	 	 	 b o n e I n d e x   =   e n t i t y . G e t B o n e I n d e x (   ' k _ p e l v i s _ g '   ) ;    
 	 	 	 }  
 	 	 	 	  
 	 	 	 i f   (   b o n e I n d e x   ! =   - 1   )  
 	 	 	 {  
 	 	 	 	 p o s i t i o n   =   M a t r i x G e t T r a n s l a t i o n (   e n t i t y . G e t B o n e W o r l d M a t r i x B y I n d e x (   b o n e I n d e x   )   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 p o s i t i o n   =   e n t i t y . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 	 	 p o s i t i o n . Z   + =   (   ( C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ) a c t o r . G e t M o v i n g A g e n t C o m p o n e n t ( )   ) . G e t C a p s u l e H e i g h t ( )   *   0 . 5 ;  
 	 	 	 }  
 	 	 	 p o s i t i o n F o u n d   =   t r u e ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 g a m e p l a y E n t i t y   =   ( C G a m e p l a y E n t i t y ) e n t i t y ;  
 	 	 	 i f   (   g a m e p l a y E n t i t y   & &   ! (   g a m e p l a y E n t i t y . a i m V e c t o r . X   = =   0   & &   g a m e p l a y E n t i t y . a i m V e c t o r . Y   = =   0   & &   g a m e p l a y E n t i t y . a i m V e c t o r . Z   = =   0   )   )  
 	 	 	 {  
 	 	 	 	 g a m e p l a y E n t i t y M a t r i x   =   g a m e p l a y E n t i t y . G e t L o c a l T o W o r l d ( ) ; 	 	 	 	  
 	 	 	 	 p o s i t i o n   =   V e c T r a n s f o r m (   g a m e p l a y E n t i t y M a t r i x ,   g a m e p l a y E n t i t y . a i m V e c t o r   ) ;  
 	 	 	 	 p o s i t i o n F o u n d   =   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f     (   ! p o s i t i o n F o u n d   )  
 	 	 {  
 	 	 	 d r a w a b l e C o m p   =   ( C D r a w a b l e C o m p o n e n t ) e n t i t y . G e t C o m p o n e n t B y C l a s s N a m e (   ' C D r a w a b l e C o m p o n e n t '   ) ;  
 	 	 	 i f   (   d r a w a b l e C o m p   & &   d r a w a b l e C o m p . G e t O b j e c t B o u n d i n g V o l u m e (   b o x   )   )  
 	 	 	 {  
 	 	 	 	 p o s i t i o n . Z   + =   (   (   b o x . M a x . Z   -   b o x . M i n . Z   )   *   0 . 6 6 f   ) ; 	 	  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i n F r o n t   =   t h e C a m e r a . W o r l d V e c t o r T o V i e w R a t i o (   p o s i t i o n ,   x ,   y   ) ;  
 	 	 i f   (   ! i n F r o n t   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 x   =   A b s F (   x   ) ;  
 	 	 y   =   A b s F (   y   ) ;  
 	  
 	 	 o k   =   t r u e ;  
 	 	 o k   =   o k   & &   (   f r a m e S i z e X   < =   0 . 0 f   | |   x   <   f r a m e S i z e X   ) ;  
 	 	 o k   =   o k   & &   (   f r a m e S i z e Y   < =   0 . 0 f   | |   y   <   f r a m e S i z e Y   ) ;  
 	  
 	 	 r e t u r n   o k ;  
 	 } 	  
  
 	 p u b l i c   f u n c t i o n   H a r d L o c k T o T a r g e t (   f l a g   :   b o o l   )  
 	 {  
 	 	 i f (   f l a g   & &   G e t T a r g e t ( ) . H a s T a g (   ' N o H a r d L o c k '   )   )  
 	 	 	 r e t u r n ;  
 	 	 	  
 	 	 E n a b l e H a r d L o c k (   f l a g   ) ;  
 	 	 L o c k T o T a r g e t (   f l a g   ) ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   L o c k T o T a r g e t (   f l a g   :   b o o l   )  
 	 {  
 	 	 i f   (   I s H a r d L o c k E n a b l e d ( )   & &   ! f l a g   )  
 	 	 	 r e t u r n ;  
 	 	 	  
 	 	 L o c k C a m e r a T o T a r g e t (   f l a g   ) ;  
 	 	 L o c k A c t o r T o T a r g e t (   f l a g   ) ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   L o c k C a m e r a T o T a r g e t (   f l a g   :   b o o l   )  
 	 {  
 	 	 i f   (   f l a g   & &   ! I s C a m e r a L o c k e d T o T a r g e t ( )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . E n a b l e M a n u a l C a m e r a C o n t r o l (   f a l s e ,   ' L o c k C a m e r a T o T a r g e t '   ) ;  
 	 	 	  
 	 	 	 S e t I s C a m e r a L o c k e d T o T a r g e t (   f l a g   ) ;  
 	 	 }  
 	 	 e l s e   i f   (   ! f l a g   & &   I s C a m e r a L o c k e d T o T a r g e t ( )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . E n a b l e M a n u a l C a m e r a C o n t r o l (   t r u e ,   ' L o c k C a m e r a T o T a r g e t '   ) ;  
 	 	 	  
 	 	 	 S e t I s C a m e r a L o c k e d T o T a r g e t (   f l a g   ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   L o c k A c t o r T o T a r g e t (   f l a g   :   b o o l ,   o p t i o n a l   w i t h o u t I c o n   :   b o o l   )  
 	 {  
 	 	 v a r   d i s p l a y T a r g e t A c t o r   :   C A c t o r ;  
 	  
 	 	 i f   (   f l a g   )  
 	 	 { 	 	  
 	 	 	 i f   (   ! I s A c t o r L o c k e d T o T a r g e t ( )   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 S e t I s A c t o r L o c k e d T o T a r g e t (   f l a g   ) ;  
 	 	 	 	 S e t M o v e T a r g e t C h a n g e A l l o w e d (   t r u e   ) ;  
 	 	 	 	 S e t M o v e T a r g e t (   G e t T a r g e t ( )   ) ;  
 	 	 	 	 S e t M o v e T a r g e t C h a n g e A l l o w e d (   f a l s e   ) ;  
 	 	 	 	 S e t T a r g e t (   G e t T a r g e t ( )   ) ;  
 	 	 	 	 S e t S l i d e T a r g e t (   G e t T a r g e t ( )   ) ;  
 	 	 	 	 A d d T i m e r (   ' C h e c k L o c k T a r g e t I s A l i v e ' ,   0 . 5 ,   t r u e   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   I s A c t o r L o c k e d T o T a r g e t ( )   )  
 	 	 	 {  
 	 	 	 	 d i s p l a y T a r g e t A c t o r   =   ( C A c t o r ) (   G e t D i s p l a y T a r g e t ( )   ) ;  
 	 	 	 	  
 	 	 	 	 i f   (   d i s p l a y T a r g e t A c t o r   & &   I s T h r e a t (   d i s p l a y T a r g e t A c t o r   )   & &   ! w i t h o u t I c o n   )  
 	 	 	 	 	 E n a b l e H a r d L o c k I c o n (   f l a g   ) ; 	  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   (   ! f l a g   & &   I s A c t o r L o c k e d T o T a r g e t ( )   )  
 	 	 {  
 	 	 	 S e t I s A c t o r L o c k e d T o T a r g e t (   f l a g   ) ;  
 	 	 	 S e t M o v e T a r g e t C h a n g e A l l o w e d (   t r u e   ) ; 	 	 	  
 	 	 	 R e m o v e T i m e r (   ' C h e c k L o c k T a r g e t I s A l i v e '   ) ;  
 	 	 	 E n a b l e H a r d L o c k I c o n (   f l a g   ) ;  
 	 	 } 	  
 	 }  
  
 	 p r i v a t e   f u n c t i o n   E n a b l e H a r d L o c k I c o n (   f l a g   :   b o o l   )  
 	 {  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	 v a r   m o d u l e   :   C R 4 H u d M o d u l e E n e m y F o c u s ;  
 	 	  
 	 	 i f (   G e t T a r g e t ( ) . H a s T a g (   ' N o H a r d L o c k I c o n '   )   )  
 	 	 	 r e t u r n ;  
  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 m o d u l e   =   ( C R 4 H u d M o d u l e E n e m y F o c u s ) h u d . G e t H u d M o d u l e ( " E n e m y F o c u s M o d u l e " ) ;  
 	 	 m o d u l e . S e t S h o w H a r d L o c k (   f l a g   ) ;  
 	 }  
 	  
 	 p r i v a t e   t i m e r   f u n c t i o n   C h e c k L o c k T a r g e t I s A l i v e (   t i m e   :   f l o a t   ,   i d   :   i n t )  
 	 {  
 	 	 v a r   v i t a l i t y 	 :   f l o a t ;  
 	 	 v a r   e s s e n c e 	 	 :   f l o a t ;  
 	 	 v a r   a c t o r   	 	 :   C A c t o r ;  
 	 	 v a r   t a r g e t   	 	 :   C A c t o r ;  
 	 	  
 	 	 t a r g e t   =   ( C A c t o r ) G e t D i s p l a y T a r g e t ( ) ;  
 	  
 	 	 i f (   ! t a r g e t    
 	 	 	 | |   ! t a r g e t . I s A l i v e ( )    
 	 	 	 | |   (   ! t a r g e t . G e t G a m e p l a y V i s i b i l i t y ( )   )    
 	 	 	 | |   ! C a n B e T a r g e t e d I f S w i m m i n g (   t a r g e t   )    
 	 	 	 | |   ( ! t a r g e t . U s e s V i t a l i t y ( )   & &   ! t a r g e t . U s e s E s s e n c e ( ) ) )  
 	 	 {  
 	 	 	 i f   (   ! P r o c e s s L o c k T a r g e t ( )   )  
 	 	 	 	 H a r d L o c k T o T a r g e t (   f a l s e   ) ; 	 	 	  
 	 	 } 	 	  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	 p r o t e c t e d   f u n c t i o n   P l a y H i t A n i m a t i o n ( d a m a g e A c t i o n   :   W 3 D a m a g e A c t i o n ,   a n i m T y p e   :   E H i t R e a c t i o n T y p e )  
 	 {  
 	 	 v a r   h i t R o t a t i o n   	 :   f l o a t ;  
 	 	 v a r   o n H i t C o u n t e r   	 :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   c o u n t e r   	 	 :   i n t ;  
 	 	  
 	 	 i f (   d a m a g e A c t i o n . H a s A n y C r i t i c a l E f f e c t ( )   )  
 	 	 	 r e t u r n ;  
 	 	  
 	 	 i f (   ! s u b s t a t e M a n a g e r . R e a c t O n B e i n g H i t ( )   & &   ! I s U s i n g V e h i c l e ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 i f   (   d a m a g e A c t i o n . G e t H i t R e a c t i o n T y p e ( )   = =   E H R T _ R e f l e c t   )  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' i s A t t a c k R e f l e c t e d ' ,   1 . f   ) ;  
 	 	 e l s e  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' i s A t t a c k R e f l e c t e d ' ,   0 . f   ) ;  
 	 	  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' H i t R e a c t i o n T y p e ' , ( i n t ) a n i m T y p e ) ;  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' H i t R e a c t i o n W e a p o n ' ,   P r o c e s s S w o r d O r F i s t H i t R e a c t i o n (   t h i s ,   ( C A c t o r ) d a m a g e A c t i o n . a t t a c k e r   )   ) ;  
 	 	  
 	 	 i f   ( d a m a g e A c t i o n . a t t a c k e r )  
 	 	 {  
 	 	 	 s u p e r . P l a y H i t A n i m a t i o n (   d a m a g e A c t i o n ,   a n i m T y p e   ) ;  
 	 	 	 i f   (   d a m a g e A c t i o n . a t t a c k e r . H a s A b i l i t y (   ' I n c r e a s e H i t R e a c t i o n S e v e r i t y W i t h H i t C o u n t e r '   )   )  
 	 	 	 {  
 	 	 	 	 c o u n t e r   =   G e t H i t C o u n t e r ( ) ;  
 	 	 	 	 s w i t c h   (   c o u n t e r   )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   2   : 	 	 	 	 	 	  
 	 	 	 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' H i t R e a c t i o n T y p e ' ,   2   ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	  
 	 	 	 	 	 c a s e   3   : 	 	 	 	 	 	  
 	 	 	 	 	 	 A d d E f f e c t D e f a u l t (   E E T _ S t a g g e r ,   d a m a g e A c t i o n . a t t a c k e r ,   d a m a g e A c t i o n . a t t a c k e r . G e t N a m e ( )   ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	  
 	 	 	 	 	 c a s e   4   : 	 	 	 	 	 	  
 	 	 	 	 	 	 A d d E f f e c t D e f a u l t (   E E T _ K n o c k d o w n ,   d a m a g e A c t i o n . a t t a c k e r ,   d a m a g e A c t i o n . a t t a c k e r . G e t N a m e ( )   ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	  
 	 	 	 	 	 d e f a u l t   :    
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 S e t H i t R e a c t i o n D i r e c t i o n ( d a m a g e A c t i o n . a t t a c k e r ) ;  
 	 	 	 S e t D e t a i l e d H i t R e a c t i o n ( d a m a g e A c t i o n . G e t S w i n g T y p e ( ) ,   d a m a g e A c t i o n . G e t S w i n g D i r e c t i o n ( ) ) ;  
 	 	 }  
 	 	  
 	 	 R a i s e F o r c e E v e n t (   ' H i t '   ) ;  
 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . C r e a t e R e a c t i o n E v e n t I f P o s s i b l e (   t h i s ,   ' A c t o r I n H i t R e a c t i o n ' ,   - 1 ,   3 0 . 0 f ,   - 1 . f ,   - 1 ,   t r u e   ) ;    
 	 	  
 	 	 i f   (   I s U s i n g B o a t ( )   )  
 	 	 {  
 	 	 	 S o u n d E v e n t ( " c m b _ p l a y _ h i t _ l i g h t " ) ;  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 i f   (   I s U s i n g V e h i c l e ( )   )  
 	 	 	 r e t u r n ;  
 	 	  
 	 	 i f ( d a m a g e A c t i o n . a t t a c k e r )  
 	 	 {  
 	 	 	 h i t R o t a t i o n   =   V e c H e a d i n g (   d a m a g e A c t i o n . a t t a c k e r . G e t W o r l d P o s i t i o n ( )   -   G e t W o r l d P o s i t i o n ( )   ) ;  
 	 	 	 i f   (   t h i s . G e t B e h a v i o r V a r i a b l e (   ' H i t R e a c t i o n D i r e c t i o n '   )   = =   ( f l o a t ) (   ( i n t ) E H R D _ B a c k   )   )  
 	 	 	 	 h i t R o t a t i o n   + =   1 8 0 . f ;  
 	 	  
 	 	 	  
 	 	 	 S e t C u s t o m R o t a t i o n (   ' H i t ' ,   h i t R o t a t i o n ,   1 0 8 0 . f ,   0 . 1 f ,   f a l s e   ) ;  
 	 	 }  
 	 	  
 	 	 C r i t i c a l E f f e c t A n i m a t i o n I n t e r r u p t e d ( " P l a y H i t A n i m a t i o n " ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R e d u c e D a m a g e (   o u t   d a m a g e D a t a   :   W 3 D a m a g e A c t i o n )  
 	 {  
 	 	 s u p e r . R e d u c e D a m a g e ( d a m a g e D a t a ) ;  
 	 	  
 	 	  
 	 	 i f ( d a m a g e D a t a . a t t a c k e r   = =   t h i s   & &   ( d a m a g e D a t a . G e t B u f f S o u r c e N a m e ( )   = =   " p e t a r d "   | |   ( W 3 P e t a r d ) d a m a g e D a t a . c a u s e r )   )  
 	 	 {  
 	 	 	 i f   (   t h e G a m e . C a n L o g ( )   )  
 	 	 	 {  
 	 	 	 	 L o g D M H i t s ( " C R 4 P l a y e r . R e d u c e D a m a g e :   h i t t i n g   s e l f   w i t h   o w n   b o m b   -   d a m a g e   r e d u c e d   b y   5 0 % " ,   d a m a g e D a t a   ) ;  
 	 	 	 }  
 	 	 	 d a m a g e D a t a . p r o c e s s e d D m g . v i t a l i t y D a m a g e   =   d a m a g e D a t a . p r o c e s s e d D m g . v i t a l i t y D a m a g e   /   2 ;  
 	 	 	 d a m a g e D a t a . p r o c e s s e d D m g . e s s e n c e D a m a g e   =   d a m a g e D a t a . p r o c e s s e d D m g . e s s e n c e D a m a g e   /   2 ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t C r i t i c a l H i t C h a n c e (   i s L i g h t A t t a c k   :   b o o l ,   i s H e a v y A t t a c k   :   b o o l ,   t a r g e t   :   C A c t o r ,   v i c t i m M o n s t e r C a t e g o r y   :   E M o n s t e r C a t e g o r y ,   i s B o l t   :   b o o l   )   :   f l o a t  
 	 {  
 	 	 v a r   c r i t C h a n c e   :   f l o a t ;  
 	 	 v a r   o i l C h a n c e A t t r i b u t e   :   n a m e ;  
 	 	 v a r   w e a p o n s   :   a r r a y <   S I t e m U n i q u e I d   > ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   h o l d s C r o s s b o w   :   b o o l ;  
 	 	 v a r   c r i t V a l   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	  
 	 	 c r i t C h a n c e   =   0 ;  
 	 	  
 	 	  
 	 	 i f (   F a c t s Q u e r y S u m (   ' d e b u g _ f a c t _ c r i t i c a l _ b o y '   )   >   0   )  
 	 	 {  
 	 	 	 c r i t C h a n c e   + =   1 ;  
 	 	 }  
 	 	  
 	 	 i f (   I s I n S t a t e (   ' H o r s e R i d i n g '   )   & &   (   (   C A c t o r   ) G e t U s e d V e h i c l e ( )   ) . G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t R e l a t i v e M o v e S p e e d ( )   > =   4 . 0   )  
 	 	 {  
 	 	 	 c r i t C h a n c e   + =   1 ;  
 	 	 }  
 	 	  
 	 	  
 	 	 c r i t C h a n c e   + =   C a l c u l a t e A t t r i b u t e V a l u e (   G e t A t t r i b u t e V a l u e (   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ C H A N C E   )   ) ;  
 	 	  
 	 	  
 	 	 w e a p o n s   =   i n v . G e t H e l d W e a p o n s ( ) ;  
 	 	 f o r (   i = 0 ;   i < w e a p o n s . S i z e ( ) ;   i + = 1   )  
 	 	 { 	 	 	  
 	 	 	 h o l d s C r o s s b o w   =   (   i n v . I s I t e m C r o s s b o w (   w e a p o n s [ i ]   )   | |   i n v . I s I t e m B o l t (   w e a p o n s [ i ]   )   ) ;  
 	 	 	 i f (   h o l d s C r o s s b o w   ! =   i s B o l t   )  
 	 	 	 {  
 	 	 	 	 c r i t V a l   =   i n v . G e t I t e m A t t r i b u t e V a l u e (   w e a p o n s [ i ] ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ C H A N C E   ) ;  
 	 	 	 	 c r i t C h a n c e   - =   C a l c u l a t e A t t r i b u t e V a l u e (   c r i t V a l   ) ;  
 	 	 	 } 	 	 	  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   i s H e a v y A t t a c k   & &   C a n U s e S k i l l (   S _ S w o r d _ s 0 8   )   )  
 	 	 {  
 	 	 	 c r i t C h a n c e   + =   C a l c u l a t e A t t r i b u t e V a l u e (   G e t S k i l l A t t r i b u t e V a l u e (   S _ S w o r d _ s 0 8 ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ C H A N C E ,   f a l s e ,   t r u e   )   )   *   G e t S k i l l L e v e l (   S _ S w o r d _ s 0 8   ) ;  
 	 	 }  
 	 	 e l s e   i f (   i s L i g h t A t t a c k   & &   C a n U s e S k i l l (   S _ S w o r d _ s 1 7   )   )  
 	 	 {  
 	 	 	 c r i t C h a n c e   + =   C a l c u l a t e A t t r i b u t e V a l u e (   G e t S k i l l A t t r i b u t e V a l u e (   S _ S w o r d _ s 1 7 ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ C H A N C E ,   f a l s e ,   t r u e   )   )   *   G e t S k i l l L e v e l (   S _ S w o r d _ s 1 7   ) ;  
 	 	 }  
 	  
 	 	 i f (   t a r g e t   & &   t a r g e t . H a s B u f f (   E E T _ C o n f u s i o n   )   )  
 	 	 {  
 	 	 	 c r i t C h a n c e   + =   (   (   W 3 C o n f u s e E f f e c t   ) t a r g e t . G e t B u f f (   E E T _ C o n f u s i o n   )   ) . G e t C r i t i c a l H i t C h a n c e B o n u s ( ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 o i l C h a n c e A t t r i b u t e   =   M o n s t e r C a t e g o r y T o C r i t i c a l C h a n c e B o n u s (   v i c t i m M o n s t e r C a t e g o r y   ) ;  
 	 	 i f (   I s N a m e V a l i d (   o i l C h a n c e A t t r i b u t e   )   )  
 	 	 {  
 	 	 	 c r i t C h a n c e   + =   C a l c u l a t e A t t r i b u t e V a l u e (   G e t A t t r i b u t e V a l u e (   o i l C h a n c e A t t r i b u t e   )   ) ;  
 	 	 }  
 	  
 	 	 r e t u r n   c r i t C h a n c e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t C r i t i c a l H i t D a m a g e B o n u s ( w e a p o n I d   :   S I t e m U n i q u e I d ,   v i c t i m M o n s t e r C a t e g o r y   :   E M o n s t e r C a t e g o r y ,   i s S t r i k e A t B a c k   :   b o o l )   :   S A b i l i t y A t t r i b u t e V a l u e  
 	 {  
 	 	 v a r   b o n u s ,   o i l B o n u s   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   v s A t t r i b u t e N a m e   :   n a m e ;  
 	  
 	 	 b o n u s   =   s u p e r . G e t C r i t i c a l H i t D a m a g e B o n u s ( w e a p o n I d ,   v i c t i m M o n s t e r C a t e g o r y ,   i s S t r i k e A t B a c k ) ;  
 	 	  
 	 	  
 	 	 i f (   i n v . I t e m H a s A c t i v e O i l A p p l i e d (   w e a p o n I d ,   v i c t i m M o n s t e r C a t e g o r y   )   )  
 	 	 {  
 	 	 	 v s A t t r i b u t e N a m e   =   M o n s t e r C a t e g o r y T o C r i t i c a l D a m a g e B o n u s ( v i c t i m M o n s t e r C a t e g o r y ) ;  
 	 	 	 o i l B o n u s   =   i n v . G e t I t e m A t t r i b u t e V a l u e ( w e a p o n I d ,   v s A t t r i b u t e N a m e ) ;  
 	 	 	 b o n u s   + =   o i l B o n u s ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   b o n u s ;  
 	 }  
 	  
 	 	  
 	 p u b l i c   f u n c t i o n   R e a c t T o B e i n g H i t ( d a m a g e A c t i o n   :   W 3 D a m a g e A c t i o n ,   o p t i o n a l   b u f f N o t A p p l i e d   :   b o o l )   :   b o o l  
 	 {  
 	 	 v a r   s t r e n g t h   	 :   f l o a t ;  
 	 	 v a r   a n i m T y p e   	 :   E H i t R e a c t i o n T y p e ;  
 	 	 v a r   s u p   	 	 :   b o o l ;  
 	 	 v a r   b o a t   :   C B o a t C o m p o n e n t ;  
 	 	 v a r   c o m b a t A c t i o n T y p e   :   i n t ;  
 	 	 v a r   a t t a c k A c t i o n   :   W 3 A c t i o n _ A t t a c k ;  
 	 	 v a r   n p c   :   C N e w N P C ;  
 	 	 v a r   s h a k e C a m   :   b o o l ;  
 	 	  
 	 	 a t t a c k A c t i o n   =   ( W 3 A c t i o n _ A t t a c k ) d a m a g e A c t i o n ;  
 	 	  
 	 	 i f ( ! d a m a g e A c t i o n . I s D o T D a m a g e ( )   & &   ( ! a t t a c k A c t i o n   | |   ( ! a t t a c k A c t i o n . I s P a r r i e d ( )   & &   ! a t t a c k A c t i o n . I s C o u n t e r e d ( )   & &   ! a t t a c k A c t i o n . W a s D o d g e d ( ) )   )   )  
 	 	 {  
 	 	 	 n p c   =   ( C N e w N P C ) a t t a c k A c t i o n . a t t a c k e r ;  
 	 	 	 i f ( n p c   & &   n p c . I s H e a v y A t t a c k ( a t t a c k A c t i o n . G e t A t t a c k N a m e ( ) ) )  
 	 	 	 	 t h e G a m e . V i b r a t e C o n t r o l l e r V e r y H a r d ( ) ;  
 	 	 	 e l s e  
 	 	 	 	 t h e G a m e . V i b r a t e C o n t r o l l e r H a r d ( ) ;  
 	 	 }  
 	 	  
 	 	 i f   (   ( C A c t o r ) G e t U s e d V e h i c l e ( )   & &   t h i s . p l a y e r A i m i n g . G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m i n g '   & &   ! d a m a g e A c t i o n . I s D o T D a m a g e ( ) )    
 	 	 {  
 	 	 	 O n R a n g e d F o r c e H o l s t e r (   t r u e ,   t r u e   ) ;  
 	 	 }  
 	 	  
 	 	 c o m b a t A c t i o n T y p e   =   ( i n t ) G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   ) ;  
 	 	  
 	 	 i f   (   t h e P l a y e r . I s C u r r e n t l y D o d g i n g ( )   & &   (   c o m b a t A c t i o n T y p e   = =   ( i n t ) C A T _ R o l l   | |   c o m b a t A c t i o n T y p e   = =   ( i n t ) C A T _ C i r i D o d g e   )   )  
 	 	 	 s u p   =   f a l s e ;  
 	 	 e l s e   i f   (   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' D i s m o u n t H o r s e '   )  
 	 	 	 s u p   =   f a l s e ;  
 	 	 e l s e  
 	 	 	 s u p   =   s u p e r . R e a c t T o B e i n g H i t ( d a m a g e A c t i o n ,   b u f f N o t A p p l i e d ) ;  
 	 	 s u p   =   f a l s e ;  
 	 	  
 	 	 i f ( d a m a g e A c t i o n . a t t a c k e r )  
 	 	 	 t h e T e l e m e t r y . L o g W i t h L a b e l A n d V a l u e (   T E _ F I G H T _ H E R O _ G E T S _ H I T ,   d a m a g e A c t i o n . a t t a c k e r . T o S t r i n g ( ) ,   ( i n t ) d a m a g e A c t i o n . p r o c e s s e d D m g . v i t a l i t y D a m a g e   ) ;  
 	 	  
 	 	  
 	 	 i f ( d a m a g e A c t i o n . D e a l s A n y D a m a g e ( ) )  
 	 	 {  
 	 	 	 i f (   ( ( W 3 P l a y e r W i t c h e r ) t h i s )   & &   G e t W i t c h e r P l a y e r ( ) . I s A n y Q u e n A c t i v e ( )   & &   d a m a g e A c t i o n . I s D o T D a m a g e ( ) )  
 	 	 	 {  
 	 	 	 	 s h a k e C a m   =   f a l s e ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 s h a k e C a m   =   t r u e ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f ( s h a k e C a m )  
 	 	 	 {  
 	 	 	 	 a n i m T y p e   =   M o d i f y H i t S e v e r i t y R e a c t i o n ( t h i s ,   d a m a g e A c t i o n . G e t H i t R e a c t i o n T y p e ( ) ) ;  
 	 	 	  
 	 	 	 	 i f ( a n i m T y p e   = =   E H R T _ L i g h t   | |   a n i m T y p e   = =   E H R T _ L i g h t C l o s e )  
 	 	 	 	 	 s t r e n g t h   =   0 . 1 ;  
 	 	 	 	 e l s e   i f ( a n i m T y p e   = =   E H R T _ H e a v y   | |   a n i m T y p e   = =   E H R T _ I g n i )  
 	 	 	 	 	 s t r e n g t h   =   0 . 2 ;  
 	 	 	 	  
 	 	 	 	 G C a m e r a S h a k e L i g h t ( s t r e n g t h ,   f a l s e ,   G e t W o r l d P o s i t i o n ( ) ,   1 0 . 0 ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 t h i s . H i t R e a c t i o n E f f e c t (   0 . 2 5   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 R e s e t U n i n t e r r u p t e d H i t s C o u n t ( ) ;  
 	 	 }  
 	 	 	 	  
 	 	  
 	 	 i f ( ! d a m a g e A c t i o n . I s D o T D a m a g e ( )   & &   I s T h r e a t e n e d ( )   & &   S h o u l d P a u s e H e a l t h R e g e n O n H i t ( )   & &   d a m a g e A c t i o n . D e a l s A n y D a m a g e ( )   & &   ! d a m a g e A c t i o n . W a s D o d g e d ( )   & &   a t t a c k A c t i o n . C a n B e P a r r i e d ( )   & &   ! a t t a c k A c t i o n . I s P a r r i e d ( ) )  
 	 	 {  
 	 	 	 P a u s e H P R e g e n E f f e c t s ( ' b e i n g _ h i t ' ,   t h e G a m e . p a r a m s . O N _ H I T _ H P _ R E G E N _ D E L A Y ) ;  
 	 	 }  
 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 i f ( d a m a g e A c t i o n . p r o c e s s e d D m g . v i t a l i t y D a m a g e   >   0   & &   ! ( ( W 3 E f f e c t _ T o x i c i t y ) d a m a g e A c t i o n . c a u s e r ) )  
 	 	 	 R e c e i v e d C o m b a t D a m a g e ( ) ;  
 	 	  
 	 	  
 	 	 i f ( F a c t s Q u e r y S u m ( " t u t _ f i g h t _ u s e _ s l o m o " )   >   0 )  
 	 	 {  
 	 	 	 t h e G a m e . R e m o v e T i m e S c a l e (   t h e G a m e . G e t T i m e s c a l e S o u r c e ( E T S _ T u t o r i a l F i g h t )   ) ;  
 	 	 	 F a c t s R e m o v e ( " t u t _ f i g h t _ s l o m o _ O N " ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   ! s u b s t a t e M a n a g e r . R e a c t O n B e i n g H i t (   d a m a g e A c t i o n   )   )  
 	 	 {  
 	 	 	 G o T o C o m b a t I f N e e d e d ( ) ;  
 	 	 	  
 	 	 }  
 	 	  
 	 	 r e t u r n   s u p ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   S h o u l d P a u s e H e a l t h R e g e n O n H i t ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   P l a y H i t E f f e c t ( d a m a g e A c t i o n   :   W 3 D a m a g e A c t i o n )  
 	 {  
 	 	 s u p e r . P l a y H i t E f f e c t ( d a m a g e A c t i o n ) ;  
  
 	 	  
 	 	 i f ( d a m a g e A c t i o n . D e a l s A n y D a m a g e ( )   & &   ! d a m a g e A c t i o n . I s D o T D a m a g e ( ) )  
 	 	 	 P l a y E f f e c t ( ' h i t _ s c r e e n ' ) ;  
 	 }  
 	  
 	 f u n c t i o n   H i t R e a c t i o n E f f e c t (   i n t e r v a l   :   f l o a t   )  
 	 {  
 	 	 i f   (   h i t R e a c t i o n E f f e c t   )  
 	 	 {  
 	 	 	 P l a y E f f e c t (   ' r a d i a l _ b l u r '   ) ;  
 	 	 	 h i t R e a c t i o n E f f e c t   =   f a l s e ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 A d d T i m e r (   ' H i t R e a c t i o n E f f e c t C o o l d o w n ' ,   i n t e r v a l ,   f a l s e   ) ;  
 	 	 }  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   H i t R e a c t i o n E f f e c t C o o l d o w n (   t d   :   f l o a t   ,   i d   :   i n t )  
 	 {  
 	 	 h i t R e a c t i o n E f f e c t   =   t r u e ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	 f u n c t i o n   P e r f o r m P a r r y C h e c k (   p a r r y I n f o   :   S P a r r y I n f o )   :   b o o l  
 	 {  
 	 	 v a r   m u l t   	 	 	 	 	 :   f l o a t ;  
 	 	 v a r   p a r r y T y p e   	 	 	 	 :   E P a r r y T y p e ;  
 	 	 v a r   p a r r y D i r   	 	 	 	 :   E P l a y e r P a r r y D i r e c t i o n ;  
 	 	 v a r   p a r r y H e a d i n g 	 	 	 :   f l o a t ;  
 	 	 v a r   f i s t F i g h t P a r r y   	 	 	 :   b o o l ;  
 	 	 v a r   a c t i o n 	 	 	 	 	 :   W 3 D a m a g e A c t i o n ;  
 	 	 v a r   x m l S t a m i n a D a m a g e   	 	 :   f l o a t ;  
 	 	 v a r   x m l S t a m i n a D a m a g e N a m e 	 :   n a m e   =   ' s t a m i n a _ d a m a g e '   ;  
 	 	 v a r   c o u n t e r   	 	 	 	 :   i n t ;  
 	 	 v a r   o n H i t C o u n t e r   	 	 	 :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	  
  
  
 	 	  
 	 	 i f ( C a n P a r r y A t t a c k ( )   & &     F i s t F i g h t C h e c k (   p a r r y I n f o . t a r g e t ,   p a r r y I n f o . a t t a c k e r ,   f i s t F i g h t P a r r y   )   )  
 	 	 { 	  
 	 	 	 p a r r y H e a d i n g   =   G e t P a r r y H e a d i n g (   p a r r y I n f o ,   p a r r y D i r   )   ;  
 	 	 	  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' p a r r y D i r e c t i o n ' ,   ( f l o a t ) (   ( i n t ) (   p a r r y D i r   )   )   ) ;  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' p a r r y D i r e c t i o n O v e r l a y ' ,   ( f l o a t ) (   ( i n t ) (   p a r r y D i r   )   )   ) ;  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' p a r r y T y p e ' ,   C h o o s e P a r r y T y p e I n d e x (   p a r r y I n f o   )   ) ;  
 	 	 	  
 	 	 	 i f   (   I s I n C o m b a t A c t i o n F r i e n d l y ( )   )  
 	 	 	 	 R a i s e E v e n t ( ' C o m b a t A c t i o n F r i e n d l y E n d ' ) ;  
 	 	 	  
 	 	 	 i f   (   H a s S t a m i n a T o P a r r y ( p a r r y I n f o . a t t a c k A c t i o n N a m e )   )  
 	 	 	 {  
 	 	 	 	 t h i s . S e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e ' ,   ( i n t ) C A T _ P a r r y   ) ;  
 	 	 	 	  
 	 	 	 	 i f   (   p a r r y I n f o . t a r g e t T o A t t a c k e r D i s t   >   3 . f   & &   ! b L A x i s R e l e a s e d   & &   ! t h e P l a y e r . I s C i r i ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   ! R a i s e F o r c e E v e n t (   ' P e r f o r m P a r r y O v e r l a y '   )   )  
 	 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 C l e a r C u s t o m O r i e n t a t i o n I n f o S t a c k ( ) ;  
 	 	 	 	 	 	 I n c D e f e n d C o u n t e r ( ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 c o u n t e r   =   G e t D e f e n d C o u n t e r ( ) ;  
 	 	 	 	 	 o n H i t C o u n t e r   =   p a r r y I n f o . a t t a c k e r . G e t A t t r i b u t e V a l u e (   ' b r e a k _ t h r o u g h _ p a r r y _ o n _ h i t _ c o u n t e r '   ) ;  
 	 	 	 	 	 i f   (   o n H i t C o u n t e r . v a l u e B a s e   >   0   & &   c o u n t e r   = =   o n H i t C o u n t e r . v a l u e B a s e   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 A d d E f f e c t D e f a u l t (   E E T _ S t a g g e r ,   p a r r y I n f o . a t t a c k e r ,   " B r e a k   t h r o u g h   p a r r y "   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f   (   R a i s e F o r c e E v e n t (   ' P e r f o r m P a r r y '   )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 O n C o m b a t A c t i o n S t a r t ( ) ;  
 	 	 	 	 	 	 C l e a r C u s t o m O r i e n t a t i o n I n f o S t a c k ( ) ;  
 	 	 	 	 	 	 S e t S l i d e T a r g e t (   p a r r y I n f o . a t t a c k e r   ) ;  
 	 	 	 	 	 	 S e t C u s t o m R o t a t i o n (   ' P a r r y ' ,   p a r r y H e a d i n g ,   1 0 8 0 . f ,   0 . 1 f ,   f a l s e   ) ;  
 	 	 	 	 	 	 I n c D e f e n d C o u n t e r ( ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 A d d E f f e c t D e f a u l t ( E E T _ S t a g g e r ,   p a r r y I n f o . a t t a c k e r ,   " P a r r y " ) ;  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   p a r r y I n f o . a t t a c k e r . I s W e a p o n H e l d (   ' f i s t '   )   & &   ! p a r r y I n f o . t a r g e t . I s W e a p o n H e l d (   ' f i s t '   )   )  
 	 	 	 {  
 	 	 	 	 p a r r y I n f o . a t t a c k e r . R e a c t T o R e f l e c t e d A t t a c k ( p a r r y I n f o . t a r g e t ) ;  
 	 	 	 }  
 	 	 	 e l s e    
 	 	 	 {  
 	 	 	 	 i f   (   t h i s . I s I n F i s t F i g h t M i n i G a m e ( )   & &   f i s t F i g h t P a r r y   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   I s N a m e V a l i d ( x m l S t a m i n a D a m a g e N a m e )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 x m l S t a m i n a D a m a g e   =   C a l c u l a t e A t t r i b u t e V a l u e ( p a r r y I n f o . a t t a c k e r . G e t A t t r i b u t e V a l u e (   x m l S t a m i n a D a m a g e N a m e   ) ) ;  
 	 	 	 	 	 	 D r a i n S t a m i n a ( E S A T _ F i x e d V a l u e ,   x m l S t a m i n a D a m a g e ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 D r a i n S t a m i n a ( E S A T _ P a r r y ,   0 ,   0 ,   ' ' ,   0 ,   m u l t ) ;  
 	 	 	 	 }  
 	 	 	 	 i f ( I s L i g h t A t t a c k ( p a r r y I n f o . a t t a c k A c t i o n N a m e ) )  
 	 	 	 	 	 p a r r y I n f o . t a r g e t . P l a y E f f e c t O n H e l d W e a p o n ( ' l i g h t _ b l o c k ' ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 p a r r y I n f o . t a r g e t . P l a y E f f e c t O n H e l d W e a p o n ( ' h e a v y _ b l o c k ' ) ;  
 	 	 	 }  
 	 	 	 r e t u r n   t r u e ;  
 	 	 } 	 	 	  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	 	  
 	 p r o t e c t e d   f u n c t i o n   G e t P a r r y H e a d i n g (   p a r r y I n f o   :   S P a r r y I n f o ,   o u t   p a r r y D i r   :   E P l a y e r P a r r y D i r e c t i o n   )   :   f l o a t  
 	 {  
 	 	 v a r   t a r g e t T o A t t a c k e r H e a d i n g   	 	 :   f l o a t ;  
 	 	 v a r   c u r r T o T a r g e t A t t a c k e r A n g l e D i f f 	 :   f l o a t ;  
 	  
 	 	 t a r g e t T o A t t a c k e r H e a d i n g   =   V e c H e a d i n g (   p a r r y I n f o . a t t a c k e r . G e t W o r l d P o s i t i o n ( )   -   p a r r y I n f o . t a r g e t . G e t W o r l d P o s i t i o n ( )   ) ;  
 	 	 c u r r T o T a r g e t A t t a c k e r A n g l e D i f f   =   A n g l e D i s t a n c e (   V e c H e a d i n g (   p a r r y I n f o . t a r g e t . G e t H e a d i n g V e c t o r ( )   ) ,   t a r g e t T o A t t a c k e r H e a d i n g   ) ;  
 	 	  
 	 	 i f   (   ! p a r r y I n f o . t a r g e t . I s W e a p o n H e l d (   ' f i s t '   )   )  
 	 	 {  
 	 	 	 i f (   c u r r T o T a r g e t A t t a c k e r A n g l e D i f f   >   - 4 5   & &   c u r r T o T a r g e t A t t a c k e r A n g l e D i f f   <   4 5     )  
 	 	 	 {  
 	 	 	 	 p a r r y D i r   =   P P D _ F o r w a r d ;  
 	 	 	 	 r e t u r n   t a r g e t T o A t t a c k e r H e a d i n g ;  
 	 	 	 }  
 	 	 	 e l s e   i f (   c u r r T o T a r g e t A t t a c k e r A n g l e D i f f   > =   4 5   & &   c u r r T o T a r g e t A t t a c k e r A n g l e D i f f   <   1 3 5   )  
 	 	 	 {  
 	 	 	 	 p a r r y D i r   =   P P D _ R i g h t ;  
 	 	 	 	  
 	 	 	 	 r e t u r n   t a r g e t T o A t t a c k e r H e a d i n g   +   9 0 ;  
 	 	 	 }  
 	 	 	 e l s e   i f (   c u r r T o T a r g e t A t t a c k e r A n g l e D i f f   < =   - 4 5   & &   c u r r T o T a r g e t A t t a c k e r A n g l e D i f f   >   - 1 3 5   )  
 	 	 	 {  
 	 	 	 	 p a r r y D i r   =   P P D _ L e f t ;  
 	 	 	 	  
 	 	 	 	 r e t u r n   t a r g e t T o A t t a c k e r H e a d i n g   -   9 0 ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 p a r r y D i r   =   P P D _ B a c k ;  
 	 	 	 	  
 	 	 	 	 r e t u r n   t a r g e t T o A t t a c k e r H e a d i n g   +   1 8 0 ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
   	 	 {  
 	 	 	 i f (   c u r r T o T a r g e t A t t a c k e r A n g l e D i f f   >   - 4 5   & &   c u r r T o T a r g e t A t t a c k e r A n g l e D i f f   <   4 5     )  
 	 	 	 {  
 	 	 	 	 p a r r y D i r   =   P P D _ F o r w a r d ;  
 	 	 	 	 r e t u r n   t a r g e t T o A t t a c k e r H e a d i n g ;  
 	 	 	 }  
 	 	 	 e l s e   i f (   c u r r T o T a r g e t A t t a c k e r A n g l e D i f f   > =   4 5   & &   c u r r T o T a r g e t A t t a c k e r A n g l e D i f f   <   1 8 0   )  
 	 	 	 {  
 	 	 	 	 p a r r y D i r   =   P P D _ R i g h t ;  
 	 	 	 	 r e t u r n   t a r g e t T o A t t a c k e r H e a d i n g   +   9 0 ; 	  
 	 	 	 }  
 	 	 	 e l s e   i f (   c u r r T o T a r g e t A t t a c k e r A n g l e D i f f   < =   - 4 5   & &   c u r r T o T a r g e t A t t a c k e r A n g l e D i f f   > =   - 1 8 0   )  
 	 	 	 {  
 	 	 	 	 p a r r y D i r   =   P P D _ L e f t ;  
 	 	 	 	 r e t u r n   t a r g e t T o A t t a c k e r H e a d i n g   -   9 0 ; 	  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 p a r r y D i r   =   P P D _ B a c k ;  
 	 	 	 	 r e t u r n   t a r g e t T o A t t a c k e r H e a d i n g   +   1 8 0 ; 	  
 	 	 	 } 	  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   P r o c e s s L o c k T a r g e t (   o p t i o n a l   n e w L o c k T a r g e t   :   C A c t o r ,   o p t i o n a l   c h e c k L e f t S t i c k H e a d i n g   :   b o o l   )   :   b o o l  
 	 {  
 	 	 v a r   a t t a c k e r N e a r e s t P o i n t 	 	 :   V e c t o r ;  
 	 	 v a r   p l a y e r N e a r e s t P o i n t 	 	 	 :   V e c t o r ;  
 	 	 v a r   i n c o m i n g A t t a c k e r   	 	 	 :   C A c t o r ;  
 	 	 v a r   t e m p L o c k T a r g e t 	 	 	 	 :   C A c t o r ;  
 	 	 v a r   t a r g e t 	 	 	 	 	 	 :   C A c t o r ;  
 	 	 v a r   u s e I n c o m i n g A t t a c k e r 	 	 	 :   b o o l ;  
 	 	  
 	 	 i f (   n e w L o c k T a r g e t . H a s T a g (   ' N o H a r d L o c k '   )   )  
 	 	 	 r e t u r n   f a l s e ;  
  
 	 	 i f   (   n e w L o c k T a r g e t   )  
 	 	 	 t e m p L o c k T a r g e t   =   n e w L o c k T a r g e t ;  
 	 	 e l s e  
 	 	 {  
 	 	 	 i n c o m i n g A t t a c k e r   =   G e t C l o s e s t I n c o m i n g A t t a c k e r ( ) ;  
 	 	 	 i f   (   i n c o m i n g A t t a c k e r   & &   i n c o m i n g A t t a c k e r . I s A l i v e ( )     & &   I s U s i n g V e h i c l e ( )   )  
 	 	 	 { 	  
 	 	 	 	 t e m p L o c k T a r g e t   =   i n c o m i n g A t t a c k e r ;  
 	 	 	 	 u s e I n c o m i n g A t t a c k e r   =   f a l s e ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   ! u s e I n c o m i n g A t t a c k e r   )  
 	 	 	 {  
 	 	 	 	 t a r g e t   =   G e t T a r g e t ( ) ;  
 	 	 	 	 i f (   t a r g e t . H a s T a g ( ' F o r c e H a r d L o c k ' ) )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   t a r g e t   & &   t a r g e t . I s A l i v e ( )   & &   t a r g e t . G e t G a m e p l a y V i s i b i l i t y ( )   & &   I s E n e m y V i s i b l e (   t a r g e t   )   & &   I s T h r e a t (   t a r g e t   )   & &   C a n B e T a r g e t e d I f S w i m m i n g (   t a r g e t   )   )  
 	 	 	 	 	 t e m p L o c k T a r g e t   =   F i n d T a r g e t ( ) ;  
 	 	 	 	 e l s e    
 	 	 	 	 {  
 	 	 	 	 	 t e m p L o c k T a r g e t   =   G e t S c r e e n S p a c e L o c k T a r g e t (   G e t D i s p l a y T a r g e t ( ) ,   1 8 0 . f ,   1 . f ,   0 . f   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f (   t e m p L o c k T a r g e t . H a s T a g (   ' N o H a r d L o c k '   )   )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i f   (   t e m p L o c k T a r g e t   )  
 	 	 {  
 	 	 	 i f   (   I s C o m b a t M u s i c E n a b l e d ( )   | |   h o s t i l e E n e m i e s . S i z e ( )   >   0   )  
 	 	 	 {  
 	 	 	 	 i f   (   ! I s T h r e a t (   t e m p L o c k T a r g e t   )   )  
 	 	 	 	 	 t e m p L o c k T a r g e t   =   N U L L ;  
 	 	 	 }  
 	 	 } 	  
 	 	  
 	 	 S e t T a r g e t (   t e m p L o c k T a r g e t ,   t r u e   ) ;  
 	 	 S e t M o v e T a r g e t C h a n g e A l l o w e d (   t r u e   ) ;  
 	 	 S e t M o v e T a r g e t (   t e m p L o c k T a r g e t   ) ;  
 	 	 S e t M o v e T a r g e t C h a n g e A l l o w e d (   f a l s e   ) ;  
 	 	 S e t S l i d e T a r g e t (   t e m p L o c k T a r g e t   ) ;  
 	 	  
 	 	 i f   (   t e m p L o c k T a r g e t   )  
 	 	 {  
 	 	 	 i f   (   t h i s . I s A c t o r L o c k e d T o T a r g e t ( )   )  
 	 	 	 	 E n a b l e H a r d L o c k I c o n (   t r u e   ) ; 	  
 	 	 	  
 	 	 	 r e t u r n   t r u e ;  
 	 	 } 	  
 	 	 e l s e  
 	 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 e v e n t   O n T a s k S y n c A n i m (   n p c   :   C N e w N P C ,   a n i m N a m e L e f t   :   n a m e   )   { }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   I s D o i n g S p e c i a l A t t a c k ( h e a v y   :   b o o l )   :   b o o l  
 	 {  
 	 	 v a r   p a t   :   E P l a y e r A t t a c k T y p e ;  
 	 	  
 	 	 i f ( I s I n C o m b a t A c t i o n ( )   & &   (   ( i n t ) G e t B e h a v i o r V a r i a b l e ( ' c o m b a t A c t i o n T y p e ' ) )   = =   C A T _ S p e c i a l A t t a c k )  
 	 	 {  
 	 	 	 p a t   =   ( i n t ) G e t B e h a v i o r V a r i a b l e ( ' p l a y e r A t t a c k T y p e ' ) ;  
 	 	 	  
 	 	 	 i f ( h e a v y   & &   p a t   = =   P A T _ H e a v y )  
 	 	 	 {  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( ! h e a v y   & &   p a t   = =   P A T _ L i g h t )  
 	 	 	 {  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t I s C u r r e n t l y D o d g i n g ( e n a b l e   :   b o o l ,   o p t i o n a l   i s R o l l i n g   :   b o o l )  
 	 {  
 	 	 s u p e r . S e t I s C u r r e n t l y D o d g i n g ( e n a b l e ,   i s R o l l i n g ) ;  
 	 	  
 	 	 i f   (   i s R o l l i n g   )  
 	 	 {  
 	 	 	 S e t C a n P l a y H i t A n i m (   f a l s e   ) ;  
 	 	 	 t h i s . A d d B u f f I m m u n i t y (   E E T _ K n o c k d o w n T y p e A p p l i c a t o r ,   ' R o l l ' ,   f a l s e   ) ;  
 	 	 	 t h i s . A d d B u f f I m m u n i t y (   E E T _ K n o c k d o w n ,   ' R o l l ' ,   f a l s e   ) ;  
 	 	 	 t h i s . A d d B u f f I m m u n i t y (   E E T _ H e a v y K n o c k d o w n ,   ' R o l l ' ,   f a l s e   ) ;  
 	 	 	 t h i s . A d d B u f f I m m u n i t y (   E E T _ S t a g g e r ,   ' R o l l ' ,   f a l s e   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 S e t C a n P l a y H i t A n i m (   t r u e   ) ;  
 	 	 	 t h i s . R e m o v e B u f f I m m u n i t y (   E E T _ K n o c k d o w n T y p e A p p l i c a t o r ,   ' R o l l '   ) ;  
 	 	 	 t h i s . R e m o v e B u f f I m m u n i t y (   E E T _ K n o c k d o w n ,   ' R o l l '   ) ;  
 	 	 	 t h i s . R e m o v e B u f f I m m u n i t y (   E E T _ H e a v y K n o c k d o w n ,   ' R o l l '   ) ;  
 	 	 	 t h i s . R e m o v e B u f f I m m u n i t y (   E E T _ S t a g g e r ,   ' R o l l '   ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   E n a b l e H a r d L o c k (   f l a g   :   b o o l   )  
 	 {  
 	 	 s u p e r . E n a b l e H a r d L o c k ( f l a g ) ;  
 	 	  
 	 	 i f ( f l a g   & &   S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l T a r g e t t i n g W a i t i n g ' ) )  
 	 	 {  
 	 	 	 F a c t s A d d ( " t u t _ h a r d l o c k e d " ) ;  
 	 	 }  
 	 }  
 	 	  
 	 p r o t e c t e d   f u n c t i o n   T e s t P a r r y A n d C o u n t e r ( d a t a   :   C P r e A t t a c k E v e n t D a t a ,   w e a p o n I d   :   S I t e m U n i q u e I d ,   o u t   p a r r i e d   :   b o o l ,   o u t   c o u n t e r e d   :   b o o l )   :   a r r a y < C A c t o r >  
 	 {  
 	 	 v a r   r e t   :   a r r a y < C A c t o r > ;  
 	  
 	 	  
 	 	 i f ( F a c t s Q u e r y S u m ( ' p l a y e r _ i s _ t h e _ b o s s ' )   >   0 )  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	 S e t D e b u g A t t a c k R a n g e ( d a t a . r a n g e N a m e ) ;  
 	 	 	 R e m o v e T i m e r ( ' P o s t A t t a c k D e b u g R a n g e C l e a r ' ) ; 	 	  
 	 	  
 	 	 	 r e t u r n   r e t ;  
 	 	 }  
 	 	  
 	 	 r e t   =   s u p e r . T e s t P a r r y A n d C o u n t e r ( d a t a ,   w e a p o n I d ,   p a r r i e d ,   c o u n t e r e d ) ;  
 	 	  
 	 	  
 	 	 i f ( p a r r i e d )  
 	 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . R e s e t S t a t ( E S _ C o u n t e r a t t a c k C h a i n ) ;  
 	 	 	  
 	 	 r e t u r n   r e t ;  
 	 }  
 	 	  
 	 p u b l i c   f u n c t i o n   S e t S p e c i a l A t t a c k T i m e R a t i o ( f   :   f l o a t )  
 	 {  
 	 	 L o g S p e c i a l H e a v y ( f ) ;  
 	 	 s p e c i a l A t t a c k T i m e R a t i o   =   f ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S p e c i a l A t t a c k T i m e R a t i o ( )   :   f l o a t  
 	 {  
 	 	 r e t u r n   s p e c i a l A t t a c k T i m e R a t i o ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   O n S p e c i a l A t t a c k H e a v y A c t i o n P r o c e s s ( )  
 	 {  
 	 	  
 	 	 S e t S p e c i a l A t t a c k T i m e R a t i o ( 0 . f ) ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   D o A t t a c k ( a n i m D a t a   :   C P r e A t t a c k E v e n t D a t a ,   w e a p o n I d   :   S I t e m U n i q u e I d ,   p a r r i e d   :   b o o l ,   c o u n t e r e d   :   b o o l ,   p a r r i e d B y   :   a r r a y < C A c t o r > ,   a t t a c k A n i m a t i o n N a m e   :   n a m e ,   h i t T i m e   :   f l o a t )  
 	 {  
 	 	 v a r   s h a k e S t r   :   f l o a t ;  
 	 	 v a r   w e a p o n   :   E P l a y e r W e a p o n ;  
 	 	 v a r   t a r g e t A c t o r   :   C A c t o r ;  
 	 	  
 	 	  
 	 	 i f   (   a n i m D a t a . a t t a c k N a m e   = =   ' a t t a c k _ h e a v y _ s p e c i a l '   )  
 	 	 {  
 	 	 	 i f (   s p e c i a l A t t a c k T i m e R a t i o   ! =   1   )  
 	 	 	 	 s h a k e S t r   =   ( s p e c i a l A t t a c k T i m e R a t i o   /   3 . 3 3 3 )   +   0 . 2 ;  
 	 	 	 e l s e  
 	 	 	 	 s h a k e S t r   =   0 . 5 ; 	  
 	  
 	 	 	 G C a m e r a S h a k e (   s h a k e S t r ,   f a l s e ,   G e t W o r l d P o s i t i o n ( ) ,   1 0 ) ;  
 	 	 }  
 	 	 e l s e   i f   (   I s H e a v y A t t a c k ( a t t a c k A c t i o n N a m e )   )  
 	 	 {  
 	 	 	 i f ( p a r r i e d B y . S i z e ( )   >   0 )  
 	 	 	 	 s h a k e S t r   =   0 . 2 ;  
 	 	 	 e l s e  
 	 	 	 	 s h a k e S t r   =   0 . 1 ;  
 	 	 	 	  
 	 	 	 G C a m e r a S h a k e ( s h a k e S t r ,   f a l s e ,   G e t W o r l d P o s i t i o n ( ) ,   1 0 ) ;  
 	 	 }  
 	 	  
 	 	 t a r g e t A c t o r   =   ( C A c t o r ) s l i d e T a r g e t ;  
 	 	 i f   (   t a r g e t A c t o r   & &   h i t T a r g e t s . C o n t a i n s ( t a r g e t A c t o r )   )  
 	 	 {  
 	 	 	 w e a p o n   =   t h i s . G e t M o s t C o n v e n i e n t M e l e e W e a p o n ( t a r g e t A c t o r , t r u e ) ;  
 	 	 	 i f   (   t h i s . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   ! =   P W _ F i s t s   & &   w e a p o n   ! =   t h i s . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   )  
 	 	 	 {  
 	 	 	 	 i f   (   w e a p o n   = =   P W _ S t e e l   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . O n E q u i p M e l e e W e a p o n ( P W _ S t e e l , t r u e ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   w e a p o n   = =   P W _ S i l v e r   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . O n E q u i p M e l e e W e a p o n ( P W _ S i l v e r , t r u e ) ;  
 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 s u p e r . D o A t t a c k ( a n i m D a t a ,   w e a p o n I d ,   p a r r i e d ,   c o u n t e r e d ,   p a r r i e d B y ,   a t t a c k A n i m a t i o n N a m e ,   h i t T i m e ) ;  
 	 }  
 	  
 	  
 	  
 	 p r i v a t e   v a r   c o n f i r m C o m b a t S t a n c e T i m e S t a m p   :   f l o a t ;  
 	 p r i v a t e   v a r   i s C o n f i r m i n g C o m b a t S t a n c e   :   b o o l ;  
 	 f i n a l   f u n c t i o n   S e t P l a y e r C o m b a t S t a n c e ( s t a n c e   :   E P l a y e r C o m b a t S t a n c e ,   o p t i o n a l   f o r c e   :   b o o l   )  
 	 {  
 	 	 v a r   s t a n c e I n t   :   i n t ;  
 	  
 	 	 i f   (   ! C a n C h a n g e C o m b a t S t a n c e (   s t a n c e ,   f o r c e   )   )  
 	 	 	 r e t u r n ;  
 	 	  
 	 	 c o m b a t S t a n c e   =   s t a n c e ;  
 	 	 s t a n c e I n t   =   ( i n t ) s t a n c e ;  
 	 	  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' p l a y e r C o m b a t S t a n c e '   ,   ( f l o a t ) s t a n c e I n t ) ;  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' p l a y e r C o m b a t S t a n c e F o r O v e r l a y '   ,   ( f l o a t ) s t a n c e I n t ) ;  
 	 	 i f   (   f o r c e   )  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' f o r c e C o m b a t S t a n c e '   ,   1 . f ) ;  
 	 	 e l s e  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' f o r c e C o m b a t S t a n c e '   ,   0 . f ) ;  
 	 	 	  
 	 	 i f   (   s t a n c e   = =   P C S _ A l e r t N e a r   )  
 	 	 	 t h i s . S e t B e h a v i o r V a r i a b l e ( ' i s I n C o m b a t F o r O v e r l a y ' , 1 . f ) ;  
 	 	 e l s e  
 	 	 	 t h i s . S e t B e h a v i o r V a r i a b l e ( ' i s I n C o m b a t F o r O v e r l a y ' , 0 . f ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   C a n C h a n g e C o m b a t S t a n c e (   s t a n c e   :   E P l a y e r C o m b a t S t a n c e ,   o p t i o n a l   f o r c e   :   b o o l   )   :   b o o l  
 	 {  
 	 	 v a r   c u r r T i m e   :   f l o a t ;  
 	 	  
 	 	 i f   (   f o r c e   )  
 	 	 	 r e t u r n   t r u e ;  
  
 	 	 i f   (   I s I n F i s t F i g h t M i n i G a m e ( )   )  
 	 	 	 r e t u r n   t r u e ;  
  
 	 	 i f   (   i s I n H o l s t e r A n i m   )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i f   (   (   c o m b a t S t a n c e   = =     P C S _ N o r m a l   | |   c o m b a t S t a n c e   = =     P C S _ A l e r t F a r   )   & &   s t a n c e   = =   P C S _ A l e r t N e a r   )  
 	 	 {  
 	 	 	 c u r r T i m e   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	 	 i f   (   ! i s C o n f i r m i n g C o m b a t S t a n c e   )  
 	 	 	 { 	 	  
 	 	 	 	 i s C o n f i r m i n g C o m b a t S t a n c e   =   t r u e ;  
 	 	 	 	 c o n f i r m C o m b a t S t a n c e T i m e S t a m p   =   c u r r T i m e ;  
 	 	 	 	  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	 e l s e   i f   (   c u r r T i m e   <   c o n f i r m C o m b a t S t a n c e T i m e S t a m p   +   1 . f   )  
 	 	 	 {  
 	 	 	 	 i f   (     s t a n c e   = =   P C S _ A l e r t N e a r   )  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 	 i s C o n f i r m i n g C o m b a t S t a n c e   =   f a l s e ;  
 	 	 }  
 	 	 e l s e  
 	 	 	 i s C o n f i r m i n g C o m b a t S t a n c e   =   f a l s e ;  
  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p r i v a t e   v a r   i s I n H o l s t e r A n i m   :     b o o l ;  
 	 e v e n t   O n H o l s t e r W e a p o n S t a r t ( )  
 	 {  
 	 	 i s I n H o l s t e r A n i m   =   t r u e ;  
 	 }  
 	  
 	 e v e n t   O n H o l s t e r W e a p o n E n d ( )  
 	 {  
 	 	 i s I n H o l s t e r A n i m   =   f a l s e ; 	 	  
 	 } 	  
 	  
 	 f i n a l   f u n c t i o n   G e t P l a y e r C o m b a t S t a n c e ( )   :   E P l a y e r C o m b a t S t a n c e  
 	 {  
 	 	 r e t u r n   c o m b a t S t a n c e ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   D e l a y e d D i s a b l e F i n d T a r g e t (   t i m e   :   f l o a t   ,   i d   :   i n t )  
 	 {  
 	 	 i f   (   G e t T a r g e t ( ) . I s A l i v e ( )   )  
 	 	 {  
 	 	 	 E n a b l e F i n d T a r g e t (   f a l s e   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 E n a b l e F i n d T a r g e t (   t r u e   ) ;  
 	 	 } 	 	  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p r i v a t e   v a r   d o d g e T i m e r R u n n i n g   :   b o o l ;  
 	  
 	 f u n c t i o n   S t a r t D o d g e T i m e r ( )  
 	 {  
 	 	 d o d g e T i m e r R u n n i n g   =   t r u e ;  
 	 	 t h e P l a y e r . A d d T i m e r ( ' D o d g e T i m e r ' , 0 . 2 , f a l s e ) ;  
 	 }  
 	  
 	 f u n c t i o n   S t o p D o d g e T i m e r ( )  
 	 {  
 	 	 t h i s . R e m o v e T i m e r ( ' D o d g e T i m e r ' ) ;  
 	 	 d o d g e T i m e r R u n n i n g   =   f a l s e ;  
 	 }  
 	  
 	 f u n c t i o n   I s D o d g e T i m e r R u n n i n g ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   d o d g e T i m e r R u n n i n g ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   D o d g e T i m e r (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 d o d g e T i m e r R u n n i n g   =   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   E v a d e P r e s s e d (   b u f f e r A c t i o n   :   E B u f f e r A c t i o n T y p e   )  
 	 {  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   P e r f o r m i n g C o m b a t A c t i o n ( )   :   E B u f f e r A c t i o n T y p e  
 	 {  
 	 	 r e t u r n   B u f f e r C o m b a t A c t i o n ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   P u s h C o m b a t A c t i o n O n B u f f e r (   a c t i o n   :   E B u f f e r A c t i o n T y p e ,   s t a g e   :   E B u t t o n S t a g e ,   o p t i o n a l   a l l S t e p s   :   b o o l   )  
 	 {  
 	 	 B u f f e r B u t t o n S t a g e   =   s t a g e ;  
 	 	 B u f f e r C o m b a t A c t i o n   =   a c t i o n ;  
 	 	 B u f f e r A l l S t e p s   =   a l l S t e p s ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   P r o c e s s C o m b a t A c t i o n H e a d i n g (   a c t i o n   :   E B u f f e r A c t i o n T y p e   )   :   f l o a t  
 	 {  
 	 	 v a r   p r o c e s s e d A c t i o n H e a d i n g   	 :   f l o a t ;  
 	  
 	 	 H a n d l e M o v e m e n t (   0 . f   ) ;  
 	  
 	 	 i f   (   S h o u l d U s e P C M o d e T a r g e t i n g ( )   )  
 	 	 	 r e t u r n   t h e G a m e . G e t G a m e C a m e r a ( ) . G e t H e a d i n g ( ) ;  
 	  
 	 	 i f   (   l A x i s R e l e a s e d A f t e r C o u n t e r   )    
 	 	 	 R e s e t C a c h e d R a w P l a y e r H e a d i n g ( ) ;  
 	 	 	  
 	 	 p r o c e s s e d A c t i o n H e a d i n g   =   c a c h e d R a w P l a y e r H e a d i n g ;  
 	 	 	  
 	 	 r e t u r n   p r o c e s s e d A c t i o n H e a d i n g ;  
 	 }  
 	  
 	  
 	 f u n c t i o n   R e s e t R a w P l a y e r H e a d i n g ( )  
 	 { 	 	  
 	 	 i f   (   G e t D i s p l a y T a r g e t ( )   )  
 	 	 	 r a w P l a y e r H e a d i n g   =   V e c H e a d i n g (   G e t D i s p l a y T a r g e t ( ) . G e t W o r l d P o s i t i o n ( )   -   t h i s . G e t W o r l d P o s i t i o n ( )   ) ; 	  
 	 	 e l s e  
 	 	 	 r a w P l a y e r H e a d i n g   =   G e t H e a d i n g ( ) ;  
  
 	 	  
 	 } 	  
 	  
 	 f u n c t i o n   R e s e t C a c h e d R a w P l a y e r H e a d i n g ( )  
 	 {  
 	 	 c a c h e d R a w P l a y e r H e a d i n g   =   r a w P l a y e r H e a d i n g ;  
 	 	 i f   (   G e t D i s p l a y T a r g e t ( )   & &   I s D i s p l a y T a r g e t T a r g e t a b l e ( )   & &   A b s F (   A n g l e D i s t a n c e (   V e c H e a d i n g (   G e t D i s p l a y T a r g e t ( ) . G e t W o r l d P o s i t i o n ( )   -   t h i s . G e t W o r l d P o s i t i o n ( )   ) ,   t h i s . G e t H e a d i n g ( )   )   )   <   9 0 . f   )  
 	 	 	 c a c h e d R a w P l a y e r H e a d i n g   =   V e c H e a d i n g (   G e t D i s p l a y T a r g e t ( ) . G e t W o r l d P o s i t i o n ( )   -   t h i s . G e t W o r l d P o s i t i o n ( )   ) ; 	  
 	 	 e l s e  
 	 	 	 c a c h e d R a w P l a y e r H e a d i n g   =   t h i s . G e t H e a d i n g ( ) ;  
 	 	 	  
 	 	 i f   (   c a n R e s e t C a c h e d C o m b a t A c t i o n H e a d i n g   )  
 	 	 	 c a c h e d C o m b a t A c t i o n H e a d i n g   =   c a c h e d R a w P l a y e r H e a d i n g ; 	  
 	 } 	 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t C o m b a t A c t i o n T a r g e t (   a c t i o n   :   E B u f f e r A c t i o n T y p e   )   :   C G a m e p l a y E n t i t y  
 	 {  
 	 	 v a r   s e l e c t e d T a r g e t a b l e E n t i t y 	 :   C G a m e p l a y E n t i t y ;  
 	  
 	 	 i f   (     ! t h i s . I s U s i n g V e h i c l e ( )   )  
 	 	 	 s e l e c t e d T a r g e t a b l e E n t i t y   =   F i n d N o n A c t o r T a r g e t (   t r u e ,   a c t i o n   ) ;  
  
 	 	 i f   (   s e l e c t e d T a r g e t a b l e E n t i t y   )  
 	 	 {  
 	 	 	 r e t u r n   s e l e c t e d T a r g e t a b l e E n t i t y ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	 i f   (   ! t h i s . I s U s i n g V e h i c l e ( )   )  
 	 	 	 	 F i n d T a r g e t (   t r u e ,   a c t i o n ,   t r u e   ) ;  
 	 	 	 e l s e  
 	 	 	 	 ( ( C R 4 P l a y e r S t a t e U s e G e n e r i c V e h i c l e ) t h i s . G e t S t a t e (   ' U s e G e n e r i c V e h i c l e '   ) ) . F i n d T a r g e t ( ) ;  
  
 	 	 	 r e t u r n   G e t T a r g e t ( ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   F i n d N o n A c t o r T a r g e t (   a c t i o n C h e c k   :   b o o l ,   o p t i o n a l   a c t i o n   :   E B u f f e r A c t i o n T y p e   )   :   C G a m e p l a y E n t i t y  
 	 {  
 	 	 v a r   t a r g e t a b l e E n t i t i e s 	 	 	 :   a r r a y < C G a m e p l a y E n t i t y > ;  
 	 	 v a r   s e l e c t e d T a r g e t a b l e E n t i t y 	 :   C G a m e p l a y E n t i t y ;  
 	 	 v a r   s e l e c t i o n P r i o r i t y 	 	 	 :   a r r a y <   f l o a t   > ;  
 	 	 v a r   s e l e c t i o n W e i g h t s 	 	 	 :   S T a r g e t S e l e c t i o n W e i g h t s ;  
 	 	 v a r   f i n d E n t i t y D i s t 	 	 	 	 :   f l o a t ;  
 	 	 v a r   i ,   s i z e 	 	 	 	 	 	 :   i n t ;  
 	 	 v a r   p l a y e r H e a d i n g 	 	 	 	 :   f l o a t ;  
 	 	 v a r   p l a y e r I n v e n t o r y 	 	 	 	 :   C I n v e n t o r y C o m p o n e n t ;  
 	 	 v a r   c a s t S i g n T y p e 	 	 	 	 :   E S i g n T y p e ;  
 	 	 v a r   t a r g e t i n g I n f o 	 	 	 	 :   S T a r g e t i n g I n f o ;  
 	 	 v a r   p l a y e r P o s i t i o n 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   c a m e r a P o s i t i o n 	 	 	 	 :   V e c t o r ;  
 	 	 v a r   p l a y e r H e a d i n g V e c t o r 	 	 	 :   V e c t o r ;  
 	 	 v a r   r a w P l a y e r H e a d i n g V e c t o r 	 	 :   V e c t o r ;  
 	  
 	 	 p l a y e r P o s i t i o n   =   t h i s . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 c a m e r a P o s i t i o n   =   t h e C a m e r a . G e t C a m e r a P o s i t i o n ( ) ;  
 	 	 r a w P l a y e r H e a d i n g V e c t o r   =   V e c F r o m H e a d i n g (   r a w P l a y e r H e a d i n g   ) ;  
 	  
 	 	 i f   (   b C a n F i n d T a r g e t   & &   ! I s H a r d L o c k E n a b l e d ( )   )  
 	 	 { 	  
 	 	 	 i f   (   a c t i o n C h e c k   & &   I s I n C o m b a t ( )   & &   a c t i o n   = =   E B A T _ C a s t S i g n   )  
 	 	 	 {  
 	 	 	 	 f i n d E n t i t y D i s t   =   6 . f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . a n g l e W e i g h t   =   0 . 3 7 5 f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   =   0 . 2 7 5 f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   =   0 . 3 5 f ; 	 	 	 	 	  
 	 	 	 }  
 	 	 	 e l s e   i f   (   ! I s I n C o m b a t ( )   & &   l a s t A x i s I n p u t I s M o v e m e n t   )  
 	 	 	 {  
 	 	 	 	 f i n d E n t i t y D i s t   =   s o f t L o c k D i s t ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . a n g l e W e i g h t   =   0 . 3 7 5 f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   =   0 . 2 7 5 f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   =   0 . 3 5 f ; 	 	 	 	  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 f i n d E n t i t y D i s t   =   s o f t L o c k D i s t ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . a n g l e W e i g h t   =   0 . 7 5 f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e W e i g h t   =   0 . 1 2 5 f ;  
 	 	 	 	 s e l e c t i o n W e i g h t s . d i s t a n c e R i n g W e i g h t   =   0 . 1 2 5 f ; 	 	 	 	 	  
 	 	 	 }  
  
 	 	 	  
 	 	 	 i f   (   ! I s I n C o m b a t ( )   | |   ! b L A x i s R e l e a s e d   )  
 	 	 	 {  
 	 	 	 	 F i n d G a m e p l a y E n t i t i e s I n R a n g e (   t a r g e t a b l e E n t i t i e s ,   t h i s ,   f i n d E n t i t y D i s t ,   1 0 ,   t h e G a m e . p a r a m s . T A G _ S O F T _ L O C K   ) ;  
 	 	 	 } 	  
 	 	 	  
 	 	 	 i f   (   t a r g e t a b l e E n t i t i e s . S i z e ( )   >   0   )  
 	 	 	 {  
 	 	 	 	 p l a y e r I n v e n t o r y   =   t h i s . G e t I n v e n t o r y ( ) ;  
 	 	 	 	 c a s t S i g n T y p e   =   t h i s . G e t E q u i p p e d S i g n ( ) ;  
 	 	 	 	  
 	 	 	 	 i f   (   ! b L A x i s R e l e a s e d   )  
 	 	 	 	 {  
 	 	 	 	 	 t a r g e t i n g I n f o . s o u r c e   	 	 	 	 =   t h i s ;  
 	 	 	 	 	 t a r g e t i n g I n f o . c a n B e T a r g e t e d C h e c k 	 =   f a l s e ;  
 	 	 	 	 	 t a r g e t i n g I n f o . c o n e C h e c k   	 	 	 =   t r u e ;  
 	 	 	 	 	 t a r g e t i n g I n f o . c o n e H a l f A n g l e C o s 	 	 =   0 . 5 f ;    
 	 	 	 	 	 t a r g e t i n g I n f o . c o n e D i s t 	 	 	 	 =   s o f t L o c k D i s t ;  
 	 	 	 	 	 t a r g e t i n g I n f o . c o n e H e a d i n g V e c t o r 	 	 =   r a w P l a y e r H e a d i n g V e c t o r ;    
 	 	 	 	 	 t a r g e t i n g I n f o . d i s t C h e c k 	 	 	 	 =   t r u e ;  
 	 	 	 	 	 t a r g e t i n g I n f o . i n v i s i b l e C h e c k 	 	 =   f a l s e ;  
 	 	 	 	 	 t a r g e t i n g I n f o . n a v M e s h C h e c k 	 	 	 =   f a l s e ;    
 	 	 	 	 	 t a r g e t i n g I n f o . f r a m e S c a l e X   	 	 	 =   1 . 0 f ;    
 	 	 	 	 	 t a r g e t i n g I n f o . f r a m e S c a l e Y   	 	 	 =   1 . 0 f ;    
 	 	 	 	 	 t a r g e t i n g I n f o . k n o c k D o w n C h e c k   	 	 =   f a l s e ;    
 	 	 	 	 	 t a r g e t i n g I n f o . k n o c k D o w n C h e c k D i s t   	 =   0 . 0 f ;    
 	 	 	 	 	 t a r g e t i n g I n f o . r s H e a d i n g C h e c k   	 	 =   f a l s e ;  
 	 	 	 	 	 t a r g e t i n g I n f o . r s H e a d i n g L i m i t C o s 	 	 =   1 . 0 f ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 f o r (   i   =   t a r g e t a b l e E n t i t i e s . S i z e ( ) - 1 ;   i > = 0 ;   i - = 1   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   b L A x i s R e l e a s e d   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   ! l a s t A x i s I n p u t I s M o v e m e n t   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   (   ! W a s V i s i b l e I n S c a l e d F r a m e (   t a r g e t a b l e E n t i t i e s [ i ] ,   0 . 9 f ,   0 . 9 f   )   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 t a r g e t a b l e E n t i t i e s . E r a s e ( i ) ;  
 	 	 	 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e   i f   (   ! W a s V i s i b l e I n S c a l e d F r a m e (   t a r g e t a b l e E n t i t i e s [ i ] ,   1 . f ,   1 . f   )   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 t a r g e t a b l e E n t i t i e s . E r a s e ( i ) ;  
 	 	 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t a r g e t i n g I n f o . t a r g e t E n t i t y   	 	 	 =   t a r g e t a b l e E n t i t i e s [ i ] ;  
 	 	 	 	 	 	 i f   (   a c t i o n C h e c k   & &   m o v e T a r g e t   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 t a r g e t i n g I n f o . i n F r a m e C h e c k   	 	 	 =   f a l s e ;    
 	 	 	 	 	 	 	 i f   (   ! I s E n t i t y T a r g e t a b l e (   t a r g e t i n g I n f o   )   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 t a r g e t a b l e E n t i t i e s . E r a s e ( i ) ;  
 	 	 	 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 t a r g e t i n g I n f o . i n F r a m e C h e c k   	 	 	 =   t r u e ;    
 	 	 	 	 	 	 	 i f   (   ! I s E n t i t y T a r g e t a b l e (   t a r g e t i n g I n f o   )   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 t a r g e t a b l e E n t i t i e s . E r a s e ( i ) ; 	  
 	 	 	 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   a c t i o n C h e c k   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   a c t i o n   = =   E B A T _ I t e m U s e   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   (   (   p l a y e r I n v e n t o r y . I s I t e m B o m b (   t h i s . G e t S e l e c t e d I t e m I d ( )   )   & &   ! t a r g e t a b l e E n t i t i e s [ i ] . H a s T a g (   ' s o f t L o c k _ B o m b '   )   )  
 	 	 	 	 	 	 	 	 | |   (   p l a y e r I n v e n t o r y . I s I t e m C r o s s b o w (   t h i s . G e t S e l e c t e d I t e m I d ( )   )   & &   ! t a r g e t a b l e E n t i t i e s [ i ] . H a s T a g (   ' s o f t L o c k _ B o l t '   )   )   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 t a r g e t a b l e E n t i t i e s . E r a s e ( i ) ;  
 	 	 	 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 } 	  
 	 	 	 	 	 	 e l s e   i f   (   a c t i o n   = =   E B A T _ C a s t S i g n   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   (   (   c a s t S i g n T y p e   = =   S T _ A a r d   & &   ! t a r g e t a b l e E n t i t i e s [ i ] . H a s T a g (   ' s o f t L o c k _ A a r d '   )   )  
 	 	 	 	 	 	 	 	 | |   (   c a s t S i g n T y p e   = =   S T _ I g n i   & &   ! t a r g e t a b l e E n t i t i e s [ i ] . H a s T a g (   ' s o f t L o c k _ I g n i '   )   )  
 	 	 	 	 	 	 	 	 | |   (   c a s t S i g n T y p e   = =   S T _ A x i i   & &   ! t a r g e t a b l e E n t i t i e s [ i ] . H a s T a g (   ' s o f t L o c k _ A x i i '   )   )  
 	 	 	 	 	 	 	 	 | |   c a s t S i g n T y p e   = =   S T _ Y r d e n    
 	 	 	 	 	 	 	 	 | |   c a s t S i g n T y p e   = =   S T _ Q u e n   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 t a r g e t a b l e E n t i t i e s . E r a s e ( i ) ;  
 	 	 	 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 	 	 	 } 	 	 	 	 	 	  
 	 	 	 	 	 	 } 	  
 	 	 	 	 	 	 e l s e   i f   (   a c t i o n   = =   E B A T _ L i g h t A t t a c k   | |   a c t i o n   = =   E B A T _ H e a v y A t t a c k   | |   a c t i o n   = =   E B A T _ S p e c i a l A t t a c k _ H e a v y   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   (   (   I s W e a p o n H e l d (   ' f i s t '   )   & &   ! t a r g e t a b l e E n t i t i e s [ i ] . H a s T a g (   ' s o f t L o c k _ F i s t '   )   )   | |   (   ! I s W e a p o n H e l d (   ' f i s t '   )   & &   ! t a r g e t a b l e E n t i t i e s [ i ] . H a s T a g (   ' s o f t L o c k _ W e a p o n '   )   )   )    
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 t a r g e t a b l e E n t i t i e s . E r a s e ( i ) ;  
 	 	 	 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 t a r g e t a b l e E n t i t i e s . E r a s e ( i ) ;  
 	 	 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   t a r g e t a b l e E n t i t i e s . S i z e ( )   >   0 )  
 	 	 	 {  
 	 	 	 	 p l a y e r H e a d i n g   =   t h i s . G e t H e a d i n g ( ) ;  
 	 	 	 	 p l a y e r H e a d i n g V e c t o r   =   t h i s . G e t H e a d i n g V e c t o r ( ) ;  
 	 	 	 	 i f     (   I s I n C o m b a t ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 f o r (   i   =   0 ;   i   <   t a r g e t a b l e E n t i t i e s . S i z e ( ) ;   i   + =   1   )  
 	 	 	 	 	 { 	 	 	 	 	  
 	 	 	 	 	 	 i f   (   b L A x i s R e l e a s e d   )  
 	 	 	 	 	 	 	 s e l e c t i o n P r i o r i t y . P u s h B a c k (   C a l c S e l e c t i o n P r i o r i t y (   t a r g e t a b l e E n t i t i e s [ i ] ,   s e l e c t i o n W e i g h t s ,   c a m e r a P o s i t i o n ,   r a w P l a y e r H e a d i n g V e c t o r   )   ) ;  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 s e l e c t i o n P r i o r i t y . P u s h B a c k (   C a l c S e l e c t i o n P r i o r i t y (   t a r g e t a b l e E n t i t i e s [ i ] ,   s e l e c t i o n W e i g h t s ,   p l a y e r P o s i t i o n ,   r a w P l a y e r H e a d i n g V e c t o r   )   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   s e l e c t i o n P r i o r i t y . S i z e ( )   >   0   )  
 	 	 	 	 	 	 s e l e c t e d T a r g e t a b l e E n t i t y   =   t a r g e t a b l e E n t i t i e s [   A r r a y F i n d M a x F (   s e l e c t i o n P r i o r i t y   )   ] ;  
 	 	 	 	 }  
 	 	 	 	 e l s e    
 	 	 	 	 {  
 	 	 	 	 	 i f   (   b L A x i s R e l e a s e d   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   ! l a s t A x i s I n p u t I s M o v e m e n t   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 f o r (   i   =   0 ;   i   <   t a r g e t a b l e E n t i t i e s . S i z e ( ) ;   i   + =   1   )    
 	 	 	 	 	 	 	 	 s e l e c t i o n P r i o r i t y . P u s h B a c k (   C a l c S e l e c t i o n P r i o r i t y (   t a r g e t a b l e E n t i t i e s [ i ] ,   s e l e c t i o n W e i g h t s ,   c a m e r a P o s i t i o n ,   r a w P l a y e r H e a d i n g V e c t o r   )   ) ; 	  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 i f   (   s e l e c t i o n P r i o r i t y . S i z e ( )   >   0   )  
 	 	 	 	 	 	 	 	 s e l e c t e d T a r g e t a b l e E n t i t y   =   t a r g e t a b l e E n t i t i e s [   A r r a y F i n d M a x F (   s e l e c t i o n P r i o r i t y   )   ] ; 	 	  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   (   I s I n C o m b a t A c t i o n ( )   )  
 	 	 	 	 	 	 	 	 s e l e c t e d T a r g e t a b l e E n t i t y   =   n o n A c t o r T a r g e t ;  
 	 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 f o r (   i   =   0 ;   i   <   t a r g e t a b l e E n t i t i e s . S i z e ( ) ;   i   + =   1   )    
 	 	 	 	 	 	 	 	 	 s e l e c t i o n P r i o r i t y . P u s h B a c k (   C a l c S e l e c t i o n P r i o r i t y (   t a r g e t a b l e E n t i t i e s [ i ] ,   s e l e c t i o n W e i g h t s ,   p l a y e r P o s i t i o n ,   p l a y e r H e a d i n g V e c t o r   )   ) ;  
 	 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 i f   (   s e l e c t i o n P r i o r i t y . S i z e ( )   >   0   )  
 	 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 	 s e l e c t e d T a r g e t a b l e E n t i t y   =   t a r g e t a b l e E n t i t i e s [   A r r a y F i n d M a x F (   s e l e c t i o n P r i o r i t y   )   ] ;  
 	 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 	 t a r g e t i n g I n f o . s o u r c e   	 	 	 	 =   t h i s ;  
 	 	 	 	 	 	 	 	 	 t a r g e t i n g I n f o . t a r g e t E n t i t y   	 	 	 =   s e l e c t e d T a r g e t a b l e E n t i t y ;  
 	 	 	 	 	 	 	 	 	 t a r g e t i n g I n f o . c a n B e T a r g e t e d C h e c k 	 =   f a l s e ;  
 	 	 	 	 	 	 	 	 	 t a r g e t i n g I n f o . c o n e C h e c k   	 	 	 =   t r u e ;  
 	 	 	 	 	 	 	 	 	 t a r g e t i n g I n f o . c o n e H a l f A n g l e C o s 	 	 =   0 . 0 f ;    
 	 	 	 	 	 	 	 	 	 t a r g e t i n g I n f o . c o n e D i s t 	 	 	 	 =   s o f t L o c k D i s t ;  
 	 	 	 	 	 	 	 	 	 t a r g e t i n g I n f o . c o n e H e a d i n g V e c t o r 	 	 =   t h i s . G e t H e a d i n g V e c t o r ( ) ;    
 	 	 	 	 	 	 	 	 	 t a r g e t i n g I n f o . d i s t C h e c k 	 	 	 	 =   t r u e ;  
 	 	 	 	 	 	 	 	 	 t a r g e t i n g I n f o . i n v i s i b l e C h e c k 	 	 =   f a l s e ;  
 	 	 	 	 	 	 	 	 	 t a r g e t i n g I n f o . n a v M e s h C h e c k 	 	 	 =   f a l s e ;    
 	 	 	 	 	 	 	 	 	 t a r g e t i n g I n f o . i n F r a m e C h e c k   	 	 	 =   f a l s e ;    
 	 	 	 	 	 	 	 	 	 t a r g e t i n g I n f o . f r a m e S c a l e X   	 	 	 =   1 . 0 f ;    
 	 	 	 	 	 	 	 	 	 t a r g e t i n g I n f o . f r a m e S c a l e Y   	 	 	 =   1 . 0 f ;    
 	 	 	 	 	 	 	 	 	 t a r g e t i n g I n f o . k n o c k D o w n C h e c k   	 	 =   f a l s e ;    
 	 	 	 	 	 	 	 	 	 t a r g e t i n g I n f o . k n o c k D o w n C h e c k D i s t   	 =   0 . 0 f ;    
 	 	 	 	 	 	 	 	 	 t a r g e t i n g I n f o . r s H e a d i n g C h e c k   	 	 =   f a l s e ;  
 	 	 	 	 	 	 	 	 	 t a r g e t i n g I n f o . r s H e a d i n g L i m i t C o s 	 	 =   1 . 0 f ; 	 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 	 i f   (   ! I s E n t i t y T a r g e t a b l e (   t a r g e t i n g I n f o   )   )  
 	 	 	 	 	 	 	 	 	 	 s e l e c t e d T a r g e t a b l e E n t i t y   =   N U L L ;  
 	 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 } 	  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 f o r (   i   =   0 ;   i   <   t a r g e t a b l e E n t i t i e s . S i z e ( ) ;   i   + =   1   )    
 	 	 	 	 	 	 	 s e l e c t i o n P r i o r i t y . P u s h B a c k (   C a l c S e l e c t i o n P r i o r i t y (   t a r g e t a b l e E n t i t i e s [ i ] ,   s e l e c t i o n W e i g h t s ,   p l a y e r P o s i t i o n ,   r a w P l a y e r H e a d i n g V e c t o r   )   ) ;  
 	 	 	 	 	 	  
 	 	 	 	 	 	 i f   (   s e l e c t i o n P r i o r i t y . S i z e ( )   >   0   )  
 	 	 	 	 	 	 	 s e l e c t e d T a r g e t a b l e E n t i t y   =   t a r g e t a b l e E n t i t i e s [   A r r a y F i n d M a x F (   s e l e c t i o n P r i o r i t y   )   ] ; 	 	 	 	 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 	 s e l e c t e d T a r g e t a b l e E n t i t y   =   N U L L ;  
 	 	 } 	  
 	 	  
 	 	 S e t N o n A c t o r T a r g e t (   s e l e c t e d T a r g e t a b l e E n t i t y   ) ;  
 	 	 r e t u r n   s e l e c t e d T a r g e t a b l e E n t i t y ;  
 	 }  
 	  
  
 	 p u b l i c   f u n c t i o n   S e t u p C o m b a t A c t i o n (   a c t i o n   :   E B u f f e r A c t i o n T y p e ,   s t a g e   :   E B u t t o n S t a g e   )  
 	 {  
 	 	 v a r   w e a p o n T y p e   :   E P l a y e r W e a p o n ;  
 	 	 v a r   c a n A t t a c k T a r g e t 	 :   C G a m e p l a y E n t i t y ;  
 	 	 v a r   t a r g e t   :   C A c t o r ;  
 	 	  
 	 	  
 	 	 i f   (   ! I s C o m b a t M u s i c E n a b l e d ( )   )  
 	 	 {  
 	 	 	 S e t C o m b a t A c t i o n H e a d i n g (   P r o c e s s C o m b a t A c t i o n H e a d i n g (   a c t i o n   )   ) ;    
 	 	 	 F i n d T a r g e t ( ) ;  
 	 	 	 U p d a t e D i s p l a y T a r g e t (   t r u e   ) ;  
 	 	 }  
 	 	  
 	 	 i f   (   d i s p l a y T a r g e t   & &   I s D i s p l a y T a r g e t T a r g e t a b l e ( )   )  
 	 	 	 c a n A t t a c k T a r g e t   =   d i s p l a y T a r g e t ;  
 	 	 e l s e   i f   (   G e t T a r g e t ( )   )  
 	 	 	 c a n A t t a c k T a r g e t   =   G e t T a r g e t ( ) ;    
 	 	 e l s e   i f (   ! t a r g e t   & &   I s C o m b a t M u s i c E n a b l e d ( )   )  
 	 	 	 c a n A t t a c k T a r g e t   =   m o v e T a r g e t ; 	 	 	  
 	 	 	  
 	 	 t a r g e t   =   ( C A c t o r ) c a n A t t a c k T a r g e t ; 	 	  
  
 	 	 i f   (   ! A l l o w A t t a c k (   t a r g e t ,   a c t i o n   )   )  
 	 	 	 r e t u r n ;  
 	  
 	 	 i f (   (   a c t i o n   ! =   E B A T _ I t e m U s e   )   & &   (   a c t i o n   ! =   E B A T _ C a s t S i g n   )   )  
 	 	 {  
 	 	 	 w e a p o n T y p e   =   w e a p o n H o l s t e r . G e t C u r r e n t M e l e e W e a p o n ( ) ;  
 	 	 	 P r e p a r e T o A t t a c k (   t a r g e t ,   a c t i o n   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f   (   w e a p o n T y p e   ! =   w e a p o n H o l s t e r . G e t C u r r e n t M e l e e W e a p o n ( )   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 i f   (   ! (   w e a p o n T y p e   = =   P W _ N o n e   & &   w e a p o n H o l s t e r . G e t C u r r e n t M e l e e W e a p o n ( )   = =   P W _ F i s t s   )   )  
 	 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( a c t i o n   = =   E B A T _ S p e c i a l A t t a c k _ H e a v y   & &   ! ( ( W 3 R e p l a c e r C i r i ) t h i s )   )  
 	 	 	 t h e P l a y e r . S e t A t t a c k A c t i o n N a m e ( S k i l l E n u m T o N a m e ( S _ S w o r d _ s 0 2 ) ) ;  
 	 	  
 	 	 C r i t i c a l E f f e c t A n i m a t i o n I n t e r r u p t e d ( " S e t u p C o m b a t A c t i o n   "   +   a c t i o n ) ;  
 	 	 P u s h C o m b a t A c t i o n O n B u f f e r (   a c t i o n ,   s t a g e   ) ;  
 	 	  
 	 	 i f (   G e t B I s C o m b a t A c t i o n A l l o w e d ( )   )  
 	 	 {  
 	 	 	 P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   A l l o w A t t a c k (   t a r g e t   :   C A c t o r ,   a c t i o n   :   E B u f f e r A c t i o n T y p e   )   :   b o o l  
 	 {  
 	 	 v a r   n e w T a r g e t   :   C A c t o r ;  
 	 	 v a r   c a n A t t a c k W h e n N o t I n C o m b a t   :   b o o l ;  
 	 	 v a r   m e s s a g e D i s p l a y e d 	 :   b o o l ;  
 	 	  
 	 	 v a r   i t e m I d   :   S I t e m U n i q u e I d ;  
 	 	 v a r   i s S h o o t i n g C r o s s b o w   :   b o o l ;  
 	 	  
 	 	 v a r   i s I n C o r r e c t S t a t e   :   b o o l ;  
 	 	  
 	 	 i f   (   t a r g e t   )  
 	 	 {  
 	 	 	 i f   (   t a r g e t . I s T a r g e t a b l e B y P l a y e r ( ) )  
 	 	 	 {  
 	 	 	 	 i f   (   ! t a r g e t . I s A t t a c k a b l e B y P l a y e r ( )   )    
 	 	 	 	 {  
 	 	 	 	 	 D i s p l a y H u d M e s s a g e ( G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ h u d _ m e s s a g e _ c a n t _ a t t a c k _ t h i s _ t a r g e t " ) ) ;  
 	 	 	 	 	 r e t u r n   f a l s e ; 	 	 	 	  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f   (   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' E x p l o r a t i o n '   )  
 	 	 	 i s I n C o r r e c t S t a t e   =   t r u e ;  
 	 	  
 	 	 i f   (   a c t i o n   = =   E B A T _ I t e m U s e   )    
 	 	 {  
 	 	 	 i t e m I d   =   t h e P l a y e r . G e t S e l e c t e d I t e m I d ( ) ;  
 	 	 	 i f   (   i n v . I s I d V a l i d ( i t e m I d )   & &   i n v . I s I t e m C r o s s b o w ( i t e m I d )   )  
 	 	 	 	 i s S h o o t i n g C r o s s b o w   =   t r u e ;  
 	 	 	 	  
 	 	 	 i f   (   ! i s I n C o r r e c t S t a t e   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m T h r o w '   & &   ! i s S h o o t i n g C r o s s b o w   )  
 	 	 	 	 {  
 	 	 	 	 	 i s I n C o r r e c t S t a t e   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 } 	 	  
 	 	 } 	 	  
 	 	  
 	 	 i f   (   i s I n C o r r e c t S t a t e     )  
 	 	 	 c a n A t t a c k W h e n N o t I n C o m b a t   =   t h e P l a y e r . C a n A t t a c k W h e n N o t I n C o m b a t (   a c t i o n ,   f a l s e ,   n e w T a r g e t ,   t a r g e t   ) ;  
 	 	  
 	 	 i f (   ! t a r g e t   )  
 	 	 {  
 	 	 	 i f   (   i s I n C o r r e c t S t a t e   )  
 	 	 	 {  
 	 	 	 	 S e t C o m b a t A c t i o n H e a d i n g (   P r o c e s s C o m b a t A c t i o n H e a d i n g (   a c t i o n   )   ) ;  
 	 	 	 	 t a r g e t   =   n e w T a r g e t ;  
 	 	 	 }  
 	 	 }  
  
 	 	 i f   (   i s I n C o r r e c t S t a t e   )  
 	 	 {  
 	 	 	 i f   (   ! c a n A t t a c k W h e n N o t I n C o m b a t   )  
 	 	 	 { 	 	 	 	  
 	 	 	 	 i f   (   D i s p l a y C a n n o t A t t a c k M e s s a g e (   t a r g e t   )   )  
 	 	 	 	 	 m e s s a g e D i s p l a y e d   =   t r u e ;  
 	 	 	 	 e l s e   i f   (   (   a c t i o n   = =   E B A T _ L i g h t A t t a c k   | |   a c t i o n   = =   E B A T _ H e a v y A t t a c k   )    
 	 	 	 	 	 	 & &   ! R a i s e A t t a c k F r i e n d l y E v e n t (   t a r g e t   )   )  
 	 	 	 	 	 m e s s a g e D i s p l a y e d   =   t r u e ; 	 	 	 	  
 	 	 	 	 e l s e    
 	 	 	 	 {  
 	 	 	 	 	 i f   (   ! C a n R a i s e C o m b a t A c t i o n F r i e n d l y E v e n t (   i s S h o o t i n g C r o s s b o w   )   )  
 	 	 	 	 	 	 m e s s a g e D i s p l a y e d   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   m e s s a g e D i s p l a y e d   )  
 	 	 	 {  
 	 	 	 	 t h e I n p u t . F o r c e D e a c t i v a t e A c t i o n ( ' T h r o w I t e m ' ) ;  
 	 	 	 	 t h e I n p u t . F o r c e D e a c t i v a t e A c t i o n ( ' T h r o w I t e m H o l d ' ) ;  
 	 	 	 	 t h i s . S i g n a l G a m e p l a y E v e n t (   ' F r i e n d l y A t t a c k A c t i o n '   ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
  
 	  
 	 p u b l i c   f u n c t i o n   P r o c e s s C o m b a t A c t i o n B u f f e r ( )   :   b o o l  
 	 {  
 	 	 v a r   a c t i o n R e s u l t   	 	 :   b o o l ;  
 	 	 v a r   a c t i o n 	   	 	 	 :   E B u f f e r A c t i o n T y p e 	 	 	 =   t h i s . B u f f e r C o m b a t A c t i o n ;  
 	 	 v a r   s t a g e 	   	 	 	 :   E B u t t o n S t a g e   	 	 	 	 =   t h i s . B u f f e r B u t t o n S t a g e ;  
 	 	 v a r   s 	 	 	 	 	 :   S N o t W o r k i n g O u t F u n c t i o n P a r a m e t e r s H a c k S t r u c t 1 ;  
 	 	 v a r   a l l S t e p s   	 	 	 :   b o o l 	 	 	 	 	 	 =   t h i s . B u f f e r A l l S t e p s ;  
  
 	 	 i f   (   I s I n C o m b a t A c t i o n F r i e n d l y ( )   )  
 	 	 {  
 	 	 	 R a i s e E v e n t ( ' C o m b a t A c t i o n F r i e n d l y E n d ' ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   (   a c t i o n   ! =   E B A T _ S p e c i a l A t t a c k _ H e a v y   & &   a c t i o n   ! =   E B A T _ I t e m U s e   )  
 	 	 	 | |   (   a c t i o n   = =   E B A T _ S p e c i a l A t t a c k _ H e a v y   & &   s t a g e   = =   B S _ P r e s s e d   )    
 	 	 	 | |   (   a c t i o n   = =   E B A T _ I t e m U s e   & &   s t a g e   ! =   B S _ R e l e a s e d   )     )  
 	 	 {  
 	 	 	 G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t M o v e m e n t A d j u s t o r ( ) . C a n c e l A l l ( ) ;  
 	 	 	 S e t U n p u s h a b l e T a r g e t (   N U L L   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   ! (   a c t i o n   = =   E B A T _ D o d g e   | |   a c t i o n   = =   E B A T _ R o l l   )   )  
 	 	 {  
 	 	 	 S e t I s C u r r e n t l y D o d g i n g ( f a l s e ) ;  
 	 	 }  
 	 	  
 	 	 S e t C o m b a t A c t i o n H e a d i n g (   P r o c e s s C o m b a t A c t i o n H e a d i n g (   a c t i o n   )   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 i f   (   a c t i o n   = =   E B A T _ I t e m U s e   & &   G e t I n v e n t o r y ( ) . I s I t e m C r o s s b o w (   s e l e c t e d I t e m I d   )   )  
 	 	 {  
 	 	 	  
 	 	 	 i f   (   r a n g e d W e a p o n    
 	 	 	 	 & &   (   (   r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n S h o o t '   & &   r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n A i m '   )   | |   G e t I s S h o o t i n g F r i e n d l y ( )   )   )  
 	 	 	 {  
 	 	 	 	 S e t S l i d e T a r g e t (   G e t C o m b a t A c t i o n T a r g e t (   a c t i o n   )   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   (   ! (   (   a c t i o n   = =   E B A T _ S p e c i a l A t t a c k _ H e a v y   & &   s t a g e   = =   B S _ R e l e a s e d   )   | |   G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m T h r o w '   )   )  
 	 	 {  
 	 	 	 S e t S l i d e T a r g e t (   G e t C o m b a t A c t i o n T a r g e t (   a c t i o n   )   ) ;  
 	 	 }  
 	 	  
 	 	 i f (   ! s l i d e T a r g e t   )  
 	 	 	 L o g C h a n n e l (   ' T a r g e t i n g ' ,   " N O   S L I D E   T A R G E T "   ) ;  
 	 	 	  
 	 	  
 	 	 a c t i o n R e s u l t   =   t r u e ;  
 	 	  
 	 	 s w i t c h   (   a c t i o n   )  
 	 	 {  
 	 	 	 c a s e   E B A T _ E M P T Y   :  
 	 	 	 {  
 	 	 	 	 t h i s . B u f f e r A l l S t e p s   =   f a l s e ;  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }   b r e a k ;  
 	 	 	  
 	 	 	 c a s e   E B A T _ L i g h t A t t a c k   :  
 	 	 	 {  
 	 	 	 	 i f   (   I s C i r i ( )   )  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	  
 	 	 	 	 s w i t c h   (   s t a g e   )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   B S _ P r e s s e d   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 D r a i n S t a m i n a ( E S A T _ L i g h t A t t a c k ) ;  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 t h e P l a y e r . B r e a k P h e r o m o n e E f f e c t ( ) ;  
 	 	 	 	 	 	 	 a c t i o n R e s u l t   =   O n P e r f o r m A t t a c k ( t h e G a m e . p a r a m s . A T T A C K _ N A M E _ L I G H T ) ;  
 	 	 	 	 	 	  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 	  
 	 	 	 	 	 d e f a u l t   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   f a l s e ;  
 	 	 	 	 	 } b r e a k ;  
 	 	 	 	 }  
 	 	 	 } b r e a k ;  
 	 	 	  
 	 	 	 c a s e     E B A T _ H e a v y A t t a c k   :  
 	 	 	 {  
 	 	 	 	 i f   (   I s C i r i ( )   )  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	  
 	 	 	 	 s w i t c h   (   s t a g e   )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   B S _ R e l e a s e d   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 D r a i n S t a m i n a ( E S A T _ H e a v y A t t a c k ) ;  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 t h e P l a y e r . B r e a k P h e r o m o n e E f f e c t ( ) ; 	 	  
 	 	 	 	 	 	 	 a c t i o n R e s u l t   =   t h i s . O n P e r f o r m A t t a c k ( t h e G a m e . p a r a m s . A T T A C K _ N A M E _ H E A V Y ) ;  
 	 	 	 	 	 	  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 	  
 	 	 	 	 	 c a s e   B S _ P r e s s e d   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' C o m b a t F i s t s '   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 D r a i n S t a m i n a ( E S A T _ H e a v y A t t a c k ) ;  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 t h e P l a y e r . B r e a k P h e r o m o n e E f f e c t ( ) ; 	 	  
 	 	 	 	 	 	 	 	 a c t i o n R e s u l t   =   t h i s . O n P e r f o r m A t t a c k ( t h e G a m e . p a r a m s . A T T A C K _ N A M E _ H E A V Y ) ;  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }   b r e a k ; 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 d e f a u l t   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   f a l s e ;  
 	 	 	 	 	 	  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 }  
 	 	 	 }   b r e a k ;  
 	 	 	  
 	 	 	 c a s e   E B A T _ I t e m U s e   : 	 	  
 	 	 	 { 	 	 	 	  
 	 	 	 	 s w i t c h   (   s t a g e   )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   B S _ P r e s s e d   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   ! (   ( W 3 P l a y e r W i t c h e r ) t h i s   )   | |    
 	 	 	 	 	 	 	 (   ! I s I n C o m b a t A c t i o n F r i e n d l y ( )   & &   ! (   ! G e t B I s C o m b a t A c t i o n A l l o w e d ( )   & &   (   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ A t t a c k   | |   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ C a s t S i g n   )   )   )   ) 	 	 	 	 	 	  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   (   i n v . I s I t e m C r o s s b o w (   s e l e c t e d I t e m I d   )   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 r a n g e d W e a p o n   =   (   C r o s s b o w   ) (   i n v . G e t I t e m E n t i t y U n s a f e (   s e l e c t e d I t e m I d   )   ) ;  
 	 	 	 	 	 	 	 	 r a n g e d W e a p o n . O n R a n g e d W e a p o n P r e s s ( ) ;  
 	 	 	 	 	 	 	 	 G e t T a r g e t ( ) . S i g n a l G a m e p l a y E v e n t (   ' A p p r o a c h '   ) ;  
 	 	 	 	 	 	 	 	 G e t T a r g e t ( ) . S i g n a l G a m e p l a y E v e n t (   ' S h o o t i n g C r o s s b o w '   ) ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 e l s e   i f ( i n v . I s I t e m B o m b ( s e l e c t e d I t e m I d )   & &   t h i s . i n v . S i n g l e t o n I t e m G e t A m m o ( s e l e c t e d I t e m I d )   >   0   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 i f (   ( ( W 3 P l a y e r W i t c h e r ) t h i s ) . G e t B o m b D e l a y (   ( ( W 3 P l a y e r W i t c h e r ) t h i s ) . G e t I t e m S l o t (   s e l e c t e d I t e m I d   )   )   < =   0 . 0 f   )  
 	 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 	 B o m b T h r o w S t a r t ( ) ;  
 	 	 	 	 	 	 	 	 	 G e t T a r g e t ( ) . S i g n a l G a m e p l a y E v e n t (   ' A p p r o a c h '   ) ;  
 	 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 D r a i n S t a m i n a ( E S A T _ U s a b l e I t e m ) ;  
 	 	 	 	 	 	 	 	 U s a b l e I t e m S t a r t ( ) ; 	 	 	 	  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	  
 	 	 	 	 	 }   i f   ( ! a l l S t e p s )   b r e a k ;  
 	 	 	 	 	  
 	 	 	 	 	 c a s e   B S _ R e l e a s e d :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   ! (   ( W 3 P l a y e r W i t c h e r ) t h i s   )   | |    
 	 	 	 	 	 	 	 (   ! I s I n C o m b a t A c t i o n F r i e n d l y ( )   & &   (   G e t B I s C o m b a t A c t i o n A l l o w e d ( )   | |   ! (   ! G e t B I s C o m b a t A c t i o n A l l o w e d ( )   & &   (   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ A t t a c k   | |   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ C a s t S i g n   )   )   )   )   ) 	 	 	 	 	 	  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   (   i n v . I s I t e m C r o s s b o w (   s e l e c t e d I t e m I d   )   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 r a n g e d W e a p o n . O n R a n g e d W e a p o n R e l e a s e ( ) ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 e l s e   i f ( i n v . I s I t e m B o m b ( s e l e c t e d I t e m I d ) )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 B o m b T h r o w R e l e a s e ( ) ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 e l s e 	 	 	 	 	 	  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 U s a b l e I t e m R e l e a s e ( ) ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 	  
 	 	 	 	 	 d e f a u l t   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   f a l s e ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }   b r e a k ;  
 	 	 	  
 	 	 	 c a s e   E B A T _ D o d g e   :  
 	 	 	 {  
 	 	 	 	 s w i t c h   (   s t a g e   )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   B S _ R e l e a s e d   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . C r e a t e R e a c t i o n E v e n t (   t h i s ,   ' P l a y e r E v a d e ' ,   1 . 0 f ,   1 0 . 0 f ,   - 1 . 0 f ,   - 1   ) ;  
 	 	 	 	 	 	 t h e P l a y e r . B r e a k P h e r o m o n e E f f e c t ( ) ;  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   t h i s . O n P e r f o r m E v a d e (   P E T _ D o d g e   ) ;  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 d e f a u l t   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   f a l s e ;  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 }  
 	 	 	 }   b r e a k ;  
 	 	 	  
 	 	 	 c a s e   E B A T _ R o l l   :  
 	 	 	 {  
 	 	 	 	 i f   (   I s C i r i ( )   )  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	  
 	 	 	 	 s w i t c h   (   s t a g e   )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   B S _ R e l e a s e d   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . C r e a t e R e a c t i o n E v e n t (   t h i s ,   ' P l a y e r E v a d e ' ,   1 . 0 f ,   1 0 . 0 f ,   - 1 . 0 f ,   - 1   ) ;  
 	 	 	 	 	 	 t h e P l a y e r . B r e a k P h e r o m o n e E f f e c t ( ) ;  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   t h i s . O n P e r f o r m E v a d e (   P E T _ R o l l   ) ;  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 	  
 	 	 	 	 	 c a s e   B S _ P r e s s e d   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   t h i s . G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   2 . f   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   (   G e t C u r r e n t S t a t e N a m e ( )   = =   ' C o m b a t S t e e l '   | |   G e t C u r r e n t S t a t e N a m e ( )   = =   ' C o m b a t S i l v e r '   )  
 	 	 	 	 	 	 	 	 a c t i o n R e s u l t   =   t h i s . O n P e r f o r m E v a d e (   P E T _ P i r o u e t t e   ) ;  
 	 	 	 	 	 	 	 e l s e 	  
 	 	 	 	 	 	 	 	 a c t i o n R e s u l t   =   t h i s . O n P e r f o r m E v a d e (   P E T _ R o l l   ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f   (   G e t C u r r e n t S t a t e N a m e ( )   = =   ' C o m b a t S t e e l '   | |   G e t C u r r e n t S t a t e N a m e ( )   = =   ' C o m b a t S i l v e r '   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 a c t i o n R e s u l t   =   t h i s . O n P e r f o r m E v a d e (   P E T _ D o d g e   ) ;  
 	 	 	 	 	 	 	 	 a c t i o n R e s u l t   =   t h i s . O n P e r f o r m E v a d e (   P E T _ P i r o u e t t e   ) ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 a c t i o n R e s u l t   =   t h i s . O n P e r f o r m E v a d e (   P E T _ D o d g e   ) ;  
 	 	 	 	 	 	 	 	 a c t i o n R e s u l t   =   t h i s . O n P e r f o r m E v a d e (   P E T _ R o l l   ) ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 	  
 	 	 	 	 	 d e f a u l t   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   f a l s e ;  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 }  
 	 	 	 }   b r e a k ;  
 	 	 	  
 	 	 	 c a s e   E B A T _ D r a w _ S t e e l   :  
 	 	 	 {  
 	 	 	 	 s w i t c h   (   s t a g e   )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   B S _ P r e s s e d   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f (   ! I s A c t i o n A l l o w e d ( E I A B _ D r a w W e a p o n )   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ D r a w W e a p o n ) ;  
 	 	 	 	 	 	 	 a c t i o n R e s u l t   =   f a l s e ;  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 i f (   G e t W i t c h e r P l a y e r ( ) . I s I t e m E q u i p p e d B y C a t e g o r y N a m e (   ' s t e e l s w o r d '   )   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 O n E q u i p M e l e e W e a p o n (   P W _ S t e e l ,   f a l s e ,   t r u e   ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   f a l s e ;  
 	 	 	 	 	 	  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 	  
 	 	 	 	 	 d e f a u l t   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   f a l s e ;  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 }  
 	 	 	 }   b r e a k ;  
 	 	 	  
 	 	 	 c a s e   E B A T _ D r a w _ S i l v e r   :  
 	 	 	 {  
 	 	 	 	 s w i t c h   (   s t a g e   )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   B S _ P r e s s e d   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f (   ! I s A c t i o n A l l o w e d ( E I A B _ D r a w W e a p o n )   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ D r a w W e a p o n ) ; 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 a c t i o n R e s u l t   =   f a l s e ;  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 i f (   G e t W i t c h e r P l a y e r ( ) . I s I t e m E q u i p p e d B y C a t e g o r y N a m e (   ' s i l v e r s w o r d '   )   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 O n E q u i p M e l e e W e a p o n (   P W _ S i l v e r ,   f a l s e ,   t r u e   ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   f a l s e ;  
 	 	 	 	 	 	  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 	  
 	 	 	 	 	 d e f a u l t   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   f a l s e ;  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 }  
 	 	 	 }   b r e a k ;  
 	 	 	  
 	 	 	 c a s e   E B A T _ S h e a t h e _ S w o r d   :  
 	 	 	 {  
 	 	 	 	 s w i t c h   (   s t a g e   )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   B S _ P r e s s e d   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f (   G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ S i l v e r   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f (   G e t W i t c h e r P l a y e r ( ) . I s I t e m E q u i p p e d B y C a t e g o r y N a m e (   ' s i l v e r s w o r d '   )   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 O n E q u i p M e l e e W e a p o n (   P W _ S i l v e r ,   f a l s e ,   t r u e   ) ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e   i f (   G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ S t e e l   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f (   G e t W i t c h e r P l a y e r ( ) . I s I t e m E q u i p p e d B y C a t e g o r y N a m e (   ' s t e e l s w o r d '   )   )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 O n E q u i p M e l e e W e a p o n (   P W _ S t e e l ,   f a l s e ,   t r u e   ) ;  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   f a l s e ;  
 	 	 	 	 	 	  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 	  
 	 	 	 	 	 d e f a u l t   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   f a l s e ;  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 }  
 	 	 	 }   b r e a k ;  
 	 	 	  
 	 	 	 d e f a u l t :  
 	 	 	 	 r e t u r n   f a l s e ; 	  
 	 	 }  
  
 	 	  
 	 	 C l e a n C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	  
 	 	 i f   ( a c t i o n R e s u l t )  
 	 	 {  
 	 	 	 S e t C o m b a t A c t i o n (   a c t i o n   )   ;  
 	 	 	  
 	 	 	 i f ( G e t W i t c h e r P l a y e r ( ) . I s I n F r e n z y ( ) )  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S k i l l F r e n z y F i n i s h ( 0 ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ; 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C l e a n C o m b a t A c t i o n B u f f e r ( )  
 	 {  
 	 	 B u f f e r C o m b a t A c t i o n   =   E B A T _ E M P T Y ;  
 	 	 B u f f e r A l l S t e p s   =   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C a n c e l H o l d A t t a c k s ( )  
 	 {  
 	 	 R e m o v e T i m e r (   ' I s S p e c i a l L i g h t A t t a c k I n p u t H e l d '   ) ;  
 	 	 R e m o v e T i m e r (   ' I s S p e c i a l H e a v y A t t a c k I n p u t H e l d '   ) ;  
 	 	 R e m o v e T i m e r (   ' S p e c i a l A t t a c k L i g h t S u s t a i n C o s t '   ) ;  
 	 	 R e m o v e T i m e r (   ' S p e c i a l A t t a c k H e a v y S u s t a i n C o s t '   ) ;  
 	 	 R e m o v e T i m e r (   ' U p d a t e S p e c i a l A t t a c k L i g h t H e a d i n g '   ) ;  
 	 	 U n b l o c k A c t i o n (   E I A B _ C r o s s b o w ,   ' S p e c i a l A t t a c k '   ) ;  
 	 	  
 	 	 R e s u m e S t a m i n a R e g e n ( ' W h i r l S k i l l ' ) ;  
 	 	  
 	 	 i f   (   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ S p e c i a l A t t a c k   & &   G e t B e h a v i o r V a r i a b l e (   ' i s P e r f o r m i n g S p e c i a l A t t a c k '   )   = =   1 . f   )  
 	 	 {  
 	 	 	 i f (   G e t B e h a v i o r V a r i a b l e (   ' p l a y e r A t t a c k T y p e '   )   = =   ( i n t ) P A T _ L i g h t   )  
 	 	 	 { 	  
 	 	 	 	 S e t A t t a c k A c t i o n N a m e ( S k i l l E n u m T o N a m e ( S _ S w o r d _ s 0 1 ) ) ;  
 	 	 	 	 P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ S p e c i a l A t t a c k _ L i g h t ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ; 	 	  
 	 	 	 	  
 	 	 	 	 ( ( W 3 P l a y e r W i t c h e r S t a t e C o m b a t F i s t s )   G e t S t a t e ( ' C o m b a t ' ) ) . R e s e t T i m e T o E n d C o m b a t ( ) ;  
 	 	 	 	  
 	 	 	 }  
 	 	 	 e l s e   i f (   G e t B e h a v i o r V a r i a b l e (   ' p l a y e r A t t a c k T y p e '   )   = =   ( i n t ) P A T _ H e a v y   )  
 	 	 	 { 	  
 	 	 	 	 S e t A t t a c k A c t i o n N a m e ( S k i l l E n u m T o N a m e ( S _ S w o r d _ s 0 2 ) ) ;  
 	 	 	 	 P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ S p e c i a l A t t a c k _ H e a v y ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	 	 	  
 	 	 	 	 t h e G a m e . H a p t i c S t a r t (   " h a p t i c _ r e n d _ s t o p "   ) ;  
 	 	 	 }  
 	 	 }  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   R a i s e A t t a c k F r i e n d l y E v e n t (   a c t o r   :   C A c t o r   )   :   b o o l  
 	 {  
 	 	 v a r   p l a y e r T o T a r g e t H e a d i n g   :   f l o a t ;  
 	  
 	 	 i f   (   a c t o r   & &   R a i s e C o m b a t A c t i o n F r i e n d l y E v e n t ( )   )  
 	 	 {  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' t a u n t T y p e F o r O v e r l a y ' ,   0 . f   ) ;  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e F o r O v e r l a y ' ,   ( i n t ) C A T _ A t t a c k   ) ;  
 	 	 	  
 	 	 	 i f   (   a c t o r   )  
 	 	 	 	 a c t o r . S i g n a l G a m e p l a y E v e n t ( ' P e r s o n a l T a u n t A c t i o n ' ) ;  
 	 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . C r e a t e R e a c t i o n E v e n t I f P o s s i b l e (   t h i s ,   ' T a u n t A c t i o n ' ,   - 1 . 0 ,   4 . 5 f ,   - 1 ,   9 9 9 9 ,   t r u e   ) ;    
 	 	  
 	 	 	 O n C o m b a t A c t i o n S t a r t ( ) ;  
  
 	 	 	 p l a y e r T o T a r g e t H e a d i n g   =   V e c H e a d i n g (   a c t o r . G e t W o r l d P o s i t i o n ( )   -   G e t W o r l d P o s i t i o n ( )   ) ;  
  
 	 	 	 S e t C u s t o m R o t a t i o n (   ' A t t a c k ' ,   p l a y e r T o T a r g e t H e a d i n g ,   0 . 0 f ,   0 . 3 f ,   f a l s e   ) ;  
 	 	 	  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   S e n d A t t a c k R e a c t i o n E v e n t ( )  
 	 {  
 	 	 v a r   r e a c t i o n N a m e   :   n a m e ;  
 	 	  
 	 	  
 	 	  
 	 	 r e a c t i o n N a m e   =   ' A t t a c k A c t i o n ' ;  
 	 	  
 	 	 i f   (   I s N a m e V a l i d ( r e a c t i o n N a m e )   )  
 	 	 {  
 	 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . C r e a t e R e a c t i o n E v e n t I f P o s s i b l e (   t h i s ,   r e a c t i o n N a m e ,   - 1 . 0 ,   8 . 0 f ,   - 1 ,   5 ,   t r u e   ) ;    
 	 	 }  
 	 	  
 	 	  
 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . C r e a t e R e a c t i o n E v e n t I f P o s s i b l e (   t h i s ,   ' o u t O f M y W a y ' ,   - 1 . 0 ,   2 . 0 f ,   - 1 ,   5 ,   t r u e   ) ;    
 	 }  
 	  
 	 v a r   f o r c e C a n A t t a c k W h e n N o t I n C o m b a t   :   i n t ;    
 	 p u b l i c   f u n c t i o n   S e t F o r c e C a n A t t a c k W h e n N o t I n C o m b a t (   f o r c e M o d e   :   i n t   )  
 	 {  
 	 	 f o r c e C a n A t t a c k W h e n N o t I n C o m b a t   =   f o r c e M o d e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C a n A t t a c k W h e n N o t I n C o m b a t (   a c t i o n T y p e   :   E B u f f e r A c t i o n T y p e ,   a l t C a s t   :   b o o l ,   o u t   n e w T a r g e t   :   C A c t o r ,   o p t i o n a l   t a r g e t   :   C G a m e p l a y E n t i t y   )   :   b o o l  
 	 {  
 	 	 v a r   l o c a l T a r g e t s 	 	 	 	 	 :   a r r a y < C A c t o r > ;  
 	 	 v a r   i ,   s i z e 	 	 	 	 	 	 :   i n t ;  
 	 	 v a r   i n p u t H e a d i n g   	 	 	 	 :   f l o a t ;  
 	 	 v a r   c l e a r a n c e M i n ,   c l e a r a n c e M a x 	 :   f l o a t ;  
 	 	 v a r   a t t a c k L e n g t h 	 	 	 	 :   f l o a t ;  
 	 	 v a r   a t t a c k A n g l e 	 	 	 	 	 :   f l o a t ;  
 	 	 v a r   n p c 	 	 	 	 	 	 	 :   C N e w N P C ;  
 	 	 v a r   c a n A t t a c k T a r g e t 	 	 	 	 :   C G a m e p l a y E n t i t y ;  
 	 	 v a r   c a n A t t a c k T a r g e t A c t o r 	 	 :   C A c t o r ;  
 	 	  
 	 	 i f   (   t a r g e t   )  
 	 	 	 c a n A t t a c k T a r g e t   =   t a r g e t ;  
 	 	 e l s e   i f   (   d i s p l a y T a r g e t   & &   I s D i s p l a y T a r g e t T a r g e t a b l e ( )   )  
 	 	 	 c a n A t t a c k T a r g e t   =   d i s p l a y T a r g e t ;  
 	 	 e l s e  
 	 	 	 c a n A t t a c k T a r g e t   =   s l i d e T a r g e t ;  
 	 	  
 	 	 c a n A t t a c k T a r g e t A c t o r   =   ( C A c t o r ) c a n A t t a c k T a r g e t ;  
 	 	  
 	 	 i f   (   f o r c e C a n A t t a c k W h e n N o t I n C o m b a t   = =   2   )    
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e   i f   (   f o r c e C a n A t t a c k W h e n N o t I n C o m b a t   = =   1   & &   (   ! c a n A t t a c k T a r g e t   | |   ! c a n A t t a c k T a r g e t A c t o r . I s H u m a n ( )   )   )    
 	 	 	 r e t u r n   t r u e ; 	 	 	  
 	 	  
 	 	 i f   (   a c t i o n T y p e   = =   E B A T _ C a s t S i g n   )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . G e t E q u i p p e d S i g n ( )   ! =   S T _ Q u e n   & &   t h e P l a y e r . G e t E q u i p p e d S i g n ( )   ! =   S T _ A x i i   )  
 	 	 	 {  
 	 	 	 	 i f   (   C a n U s e S k i l l (   S _ M a g i c _ s 2 0   )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   t h e P l a y e r . G e t E q u i p p e d S i g n ( )   = =   S T _ A a r d   )  
 	 	 	 	 	 	 a t t a c k L e n g t h   =   6 . f ;  
 	 	 	 	 	 e l s e   i f   (   t h e P l a y e r . G e t E q u i p p e d S i g n ( )   = =   S T _ I g n i   )  
 	 	 	 	 	 	 a t t a c k L e n g t h   =   4 . f ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 a t t a c k L e n g t h   =   6 . f ; 	  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   t h e P l a y e r . G e t E q u i p p e d S i g n ( )   = =   S T _ A a r d   )  
 	 	 	 	 	 	 a t t a c k L e n g t h   =   9 . f ;  
 	 	 	 	 	 e l s e   i f   (   t h e P l a y e r . G e t E q u i p p e d S i g n ( )   = =   S T _ I g n i   )  
 	 	 	 	 	 	 a t t a c k L e n g t h   =   6 . f ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 a t t a c k L e n g t h   =   6 . f ; 	 	 	 	 	  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f   (   a l t C a s t   )  
 	 	 	 	 	 a t t a c k A n g l e 	 =   1 8 0 . f ;  
 	 	 	 	 e l s e  
 	 	 	 	 	  
 	 	 	 	 	 a t t a c k A n g l e 	 =   9 0 . f ;  
 	 	 	 	  
 	 	 	 	 i f   (   ! l a s t A x i s I n p u t I s M o v e m e n t   )  
 	 	 	 	 	 i n p u t H e a d i n g   =   V e c H e a d i n g (   t h e C a m e r a . G e t C a m e r a D i r e c t i o n ( )   ) ;  
 	 	 	 	 e l s e   i f   (   l A x i s R e l e a s e d A f t e r C o u n t e r   )  
 	 	 	 	 	 i n p u t H e a d i n g   =   G e t H e a d i n g ( ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 i n p u t H e a d i n g   =   G e t C o m b a t A c t i o n H e a d i n g ( ) ; 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 c l e a r a n c e M i n   =   1 . f ;  
 	 	 	 	 c l e a r a n c e M a x   =   a t t a c k L e n g t h 	 +   1 . f ;  
 	 	 	 }  
 	 	 	 e l s e   i f   (   t h e P l a y e r . G e t E q u i p p e d S i g n ( )   = =   S T _ A x i i   )  
 	 	 	 {  
 	 	 	 	 n p c   =   ( C N e w N P C ) c a n A t t a c k T a r g e t ;  
 	 	 	 	 i f   (   n p c   & &   n p c . G e t N P C T y p e ( )   = =   E N G T _ Q u e s t   & &   ! n p c . H a s T a g ( t h e G a m e . p a r a m s . T A G _ A X I I A B L E _ L O W E R _ C A S E )   & &   ! n p c . H a s T a g ( t h e G a m e . p a r a m s . T A G _ A X I I A B L E ) )  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 e l s e   i f   (   n p c   & &   n p c . I s U s i n g H o r s e ( )   )  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 e l s e   i f   (   a c t i o n T y p e   = =   E B A T _ I t e m U s e   )  
 	 	 {  
 	 	 	 a t t a c k L e n g t h   =   t h e G a m e . p a r a m s . M A X _ T H R O W _ R A N G E ;  
 	 	 	 a t t a c k A n g l e 	 =   9 0 . f ;  
 	 	 	  
 	 	 	 i f   (   t h e P l a y e r . l a s t A x i s I n p u t I s M o v e m e n t   )  
 	 	 	 	 i n p u t H e a d i n g   =   G e t C o m b a t A c t i o n H e a d i n g ( ) ;  
 	 	 	 e l s e    
 	 	 	 	 i n p u t H e a d i n g   =   V e c H e a d i n g (   t h e C a m e r a . G e t C a m e r a D i r e c t i o n ( )   ) ;  
  
 	 	 	 c l e a r a n c e M i n   =   0 . 8 f ;  
 	 	 	 c l e a r a n c e M a x   =   a t t a c k L e n g t h 	 +   3 . f ; 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   (   a c t i o n T y p e   = =   E B A T _ S p e c i a l A t t a c k _ L i g h t   | |   a c t i o n T y p e   = =   E B A T _ S p e c i a l A t t a c k _ H e a v y   )  
 	 	 	 {  
 	 	 	 	 a t t a c k L e n g t h   =   1 . 9 f ;  
 	 	 	 	 a t t a c k A n g l e 	 =   9 0 . f ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f (   t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ F i s t s   | |   t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ N o n e   )  
 	 	 	 	 	 a t t a c k L e n g t h   =   1 . 2 f ;    
 	 	 	 	 e l s e  
 	 	 	 	 	 a t t a c k L e n g t h   =   1 . 9 f ;  
 	 	 	 	 	  
 	 	 	 	 a t t a c k A n g l e 	 =   9 0 . f ; 	  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   l a s t A x i s I n p u t I s M o v e m e n t   )  
 	 	 	 	 i n p u t H e a d i n g   =   G e t C o m b a t A c t i o n H e a d i n g ( ) ;  
 	 	 	 e l s e  
 	 	 	 	 i n p u t H e a d i n g   =   V e c H e a d i n g (   t h e C a m e r a . G e t C a m e r a D i r e c t i o n ( )   ) ;  
 	 	 	 	  
 	 	 	 c l e a r a n c e M i n   =   a t t a c k L e n g t h 	 /   2 . f ;  
 	 	 	 c l e a r a n c e M a x   =   a t t a c k L e n g t h 	 +   3 . f ;  
 	 	 }  
  
 	 	  
 	 	 i f   (   c a n A t t a c k T a r g e t   )  
 	 	 {  
 	 	 	 i f   (   (   c a n A t t a c k T a r g e t A c t o r   & &   c a n A t t a c k T a r g e t A c t o r . I s H u m a n ( )   )   | |   c a n A t t a c k T a r g e t A c t o r . H a s T a g (   ' s o f t L o c k _ F r i e n d l y '   )   )  
 	 	 	 {  
 	 	 	 	 i f   (   S h o u l d P e r f o r m F r i e n d l y A c t i o n (   c a n A t t a c k T a r g e t A c t o r ,   i n p u t H e a d i n g ,   a t t a c k A n g l e ,   c l e a r a n c e M i n ,   c l e a r a n c e M a x   )   )  
 	 	 	 	 {  
 	 	 	 	 	 S e t S l i d e T a r g e t (   c a n A t t a c k T a r g e t A c t o r   ) ;  
 	 	 	 	 	 n e w T a r g e t   = 	 c a n A t t a c k T a r g e t A c t o r ;  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 	  
 	 	 t h e P l a y e r . G e t V i s i b l e E n e m i e s (   l o c a l T a r g e t s   ) ; 	  
 	 	 s i z e   =   l o c a l T a r g e t s . S i z e ( ) ;  
 	 	  
 	 	 i f   (   s i z e   >   0   )  
 	 	 {  
 	 	 	 f o r   (   i   =   s i z e - 1 ;   i > = 0 ;   i - = 1   )  
 	 	 	 { 	  
 	 	 	 	  
 	 	 	 	 i f   (   ! l o c a l T a r g e t s [ i ] . I s H u m a n ( )   & &   ! l o c a l T a r g e t s [ i ] . H a s T a g (   ' s o f t L o c k _ F r i e n d l y '   )   )  
 	 	 	 	 	 l o c a l T a r g e t s . E r a s e ( i ) ;  
 	 	 	 }  
 	 	 }  
 	  
 	 	 s i z e   =   l o c a l T a r g e t s . S i z e ( ) ;  
 	 	 i f   (   s i z e   >   0   )  
 	 	 { 	 	  
 	 	 	 f o r   (   i   =   0 ;   i   <   l o c a l T a r g e t s . S i z e ( ) ;   i   + =   1   )  
 	 	 	 { 	  
 	 	 	 	 i f   (   S h o u l d P e r f o r m F r i e n d l y A c t i o n (   l o c a l T a r g e t s [ i ] ,   i n p u t H e a d i n g ,   a t t a c k A n g l e ,   c l e a r a n c e M i n ,   c l e a r a n c e M a x   )   ) 	 	 	  
 	 	 	 	 {  
 	 	 	 	 	 S e t S l i d e T a r g e t (   l o c a l T a r g e t s [ i ]   ) ;  
 	 	 	 	 	 n e w T a r g e t   = 	 l o c a l T a r g e t s [ i ] ;  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
  
 	 	 n e w T a r g e t   = 	 N U L L ;  
  
 	 	 r e t u r n   t r u e ;  
 	 } 	  
 	  
 	 p r i v a t e   f u n c t i o n   S h o u l d P e r f o r m F r i e n d l y A c t i o n (   a c t o r   :   C A c t o r ,   i n p u t H e a d i n g ,   a t t a c k A n g l e ,   c l e a r a n c e M i n ,   c l e a r a n c e M a x   :   f l o a t   )   :   b o o l  
 	 {  
 	 	 v a r   n p c   :   C N e w N P C ;  
 	 	 v a r   a r g h   :   f l o a t ;  
 	 	 v a r   p l a y e r T o T a r g e t D i s t 	 	 	 :   f l o a t ;  
 	  
 	 	 n p c   =   ( C N e w N P C ) a c t o r ;  
 	 	  
 	 	 i f   (   n p c   & &   ! n p c . H a s T a g ( ' f o r c e _ f r i e n d l y _ a c t i o n ' )   & &   (   G e t A t t i t u d e B e t w e e n ( t h e P l a y e r ,   n p c )   = =   A I A _ H o s t i l e   | |   (   G e t A t t i t u d e B e t w e e n ( t h e P l a y e r ,   n p c )   = =   A I A _ N e u t r a l   & &   n p c . G e t N P C T y p e ( )   ! =   E N G T _ G u a r d   )   )   )  
 	 	 {  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 p l a y e r T o T a r g e t D i s t   =   V e c D i s t a n c e (   t h i s . G e t W o r l d P o s i t i o n ( ) ,   a c t o r . P r e d i c t W o r l d P o s i t i o n (   0 . 5 f   )   ) ;    
 	 	 	  
 	 	 	 a r g h   =   A b s F (   A n g l e D i s t a n c e (   i n p u t H e a d i n g ,   V e c H e a d i n g (   a c t o r . G e t W o r l d P o s i t i o n ( )   -   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   )   )   ) ;  
 	 	 	  
 	 	 	 i f   (   A b s F (   A n g l e D i s t a n c e (   i n p u t H e a d i n g ,   V e c H e a d i n g (   a c t o r . G e t W o r l d P o s i t i o n ( )   -   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   )   )   )   <   a t t a c k A n g l e   )  
 	 	 	 {  
 	 	 	 	 i f   (   p l a y e r T o T a r g e t D i s t   <   c l e a r a n c e M a x   )  
 	 	 	 	 { 	 	  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   p l a y e r T o T a r g e t D i s t   <   c l e a r a n c e M i n   )  
 	 	 	 	 { 	  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t H u d M e s s a g e s S i z e ( )   :   i n t    
 	 {  
 	 	 r e t u r n   H u d M e s s a g e s . S i z e ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t H u d P e n d i n g M e s s a g e ( )   :   s t r i n g  
 	 {  
 	 	 r e t u r n   H u d M e s s a g e s [ 0 ] ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   D i s p l a y H u d M e s s a g e (   v a l u e   :   s t r i n g   )   :   v o i d  
 	 {  
 	 	 i f   ( v a l u e   = =   " " )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 i f (   G e t H u d M e s s a g e s S i z e ( )   >   0   )  
 	 	 {  
 	 	 	 i f (   H u d M e s s a g e s [ H u d M e s s a g e s . S i z e ( ) - 1 ]   = =   v a l u e   )  
 	 	 	 {  
 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	 }  
 	 	 H u d M e s s a g e s . P u s h B a c k ( v a l u e ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   D i s a l l o w e d A c t i o n D o n t S h o w H a c k ( a c t i o n   :   E I n p u t A c t i o n B l o c k ,   i s T i m e L o c k   :   b o o l )   :   b o o l  
 	 {  
 	 	 v a r   l o c k s   :   a r r a y <   S I n p u t A c t i o n L o c k   > ;  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	  
 	 	 i f ( ( a c t i o n   = =   E I A B _ F i s t s   | |   a c t i o n   = =   E I A B _ S w o r d A t t a c k   | |   a c t i o n   = =   E I A B _ S i g n s   | |   a c t i o n   = =   E I A B _ L i g h t A t t a c k s   | |   a c t i o n   = =   E I A B _ H e a v y A t t a c k s   | |   a c t i o n   = =   E I A B _ S p e c i a l A t t a c k L i g h t   | |   a c t i o n   = =   E I A B _ S p e c i a l A t t a c k H e a v y )   & &   ( H a s B u f f ( E E T _ S t a g g e r )   | |   H a s B u f f ( E E T _ L o n g S t a g g e r ) )   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   a c t i o n   = =   E I A B _ T h r o w B o m b   & &   (   H a s B u f f (   E E T _ H y p n o t i z e d   )   | |   H a s B u f f (   E E T _ C o n f u s i o n   )   )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( i s T i m e L o c k )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	  
 	 	 i f ( a c t i o n   = =   E I A B _ O p e n M e d i t a t i o n )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	  
 	 	 l o c k s   =   G e t A c t i o n L o c k s ( a c t i o n ) ;  
 	 	 f o r ( i = 0 ;   i < l o c k s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 i f ( l o c k s [ i ] . i s F r o m Q u e s t   | |   l o c k s [ i ] . i s F r o m P l a c e )  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f   (   t h i s . I s C u r r e n t l y U s i n g I t e m L ( )   )  
 	 	 {  
 	 	 	 i f   (   a c t i o n   = =   E I A B _ H e a v y A t t a c k s   | |   a c t i o n   = =   E I A B _ P a r r y   )  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( a c t i o n   :   E I n p u t A c t i o n B l o c k ,   o p t i o n a l   i s C o m b a t L o c k   :   b o o l ,   o p t i o n a l   i s P l a c e L o c k   :   b o o l ,   o p t i o n a l   i s T i m e L o c k   :   b o o l ,   o p t i o n a l   i s D a n g e r o u s   :   b o o l )  
 	 {  
 	 	 v a r   l o c k T y p e   :   n a m e ;  
 	 	  
 	 	 i f ( a c t i o n   ! =   E I A B _ U n d e f i n e d   & &   D i s a l l o w e d A c t i o n D o n t S h o w H a c k ( a c t i o n ,   i s T i m e L o c k ) )  
 	 	 	 r e t u r n ;  
 	 	  
 	 	  
 	 	 i f ( I s I n C o m b a t ( )   & &   ! I s A c t i o n C o m b a t ( a c t i o n ) )  
 	 	 	 i s C o m b a t L o c k   =   t r u e ;  
 	 	 	  
 	 	  
 	 	 i f ( ! i s C o m b a t L o c k   & &   ! i s P l a c e L o c k   & &   ! i s T i m e L o c k   & &   a c t i o n   ! =   E I A B _ U n d e f i n e d )  
 	 	 {  
 	 	 	 l o c k T y p e   =   i n p u t H a n d l e r . G e t A c t i o n B l o c k e d H u d L o c k T y p e ( a c t i o n ) ;  
 	 	 	  
 	 	 	 i f ( l o c k T y p e   = =   ' c o m b a t ' )  
 	 	 	 	 i s C o m b a t L o c k   =   t r u e ;  
 	 	 	 e l s e   i f ( l o c k T y p e   = =   ' p l a c e ' )  
 	 	 	 	 i s P l a c e L o c k   =   t r u e ;  
 	 	 	 e l s e   i f ( l o c k T y p e   = =   ' t i m e ' )  
 	 	 	 	 i s T i m e L o c k   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 i f ( i s D a n g e r o u s )  
 	 	 {  
 	 	 	 D i s p l a y H u d M e s s a g e ( G e t L o c S t r i n g B y K e y E x t (   " m e s s a g e _ m e d i t a t i o n _ t o o _ d a n g e r o u s "   ) ) ;  
 	 	 }  
 	 	 e l s e   i f ( i s C o m b a t L o c k )  
 	 	 {  
 	 	 	 D i s p l a y H u d M e s s a g e ( G e t L o c S t r i n g B y K e y E x t (   " p a n e l _ h u d _ m e s s a g e _ a c t i o n n o t a l l o w e d _ c o m b a t "   ) ) ;  
 	 	 }  
 	 	 e l s e   i f ( i s P l a c e L o c k )  
 	 	 {  
 	 	 	 D i s p l a y H u d M e s s a g e ( G e t L o c S t r i n g B y K e y E x t (   " m e n u _ c a n n o t _ p e r f o r m _ a c t i o n _ h e r e "   ) ) ;  
 	 	 }  
 	 	 e l s e   i f ( i s T i m e L o c k )  
 	 	 {  
 	 	 	 D i s p l a y H u d M e s s a g e ( G e t L o c S t r i n g B y K e y E x t (   " m e n u _ c a n n o t _ p e r f o r m _ a c t i o n _ n o w "   ) ) ;  
 	 	 } 	 	  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   R e m o v e H u d M e s s a g e B y S t r i n g ( m s g   :   s t r i n g ,   o p t i o n a l   a l l Q u e u e d I n s t a n c e s   :   b o o l )  
 	 {  
 	 	 v a r   i ,   j   :   i n t ;  
 	 	  
 	 	 f o r ( i = 0 ;   i < H u d M e s s a g e s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 i f ( H u d M e s s a g e s [ i ]   = =   m s g )  
 	 	 	 {  
 	 	 	 	 H u d M e s s a g e s . E r a s e F a s t ( i ) ;  
 	 	 	 	  
 	 	 	 	 i f ( ! a l l Q u e u e d I n s t a n c e s )  
 	 	 	 	 	 r e t u r n ;  
 	 	 	 	 	  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 f o r ( j = H u d M e s s a g e s . S i z e ( ) - 1 ;   j   > =   i ;   j - = 1 )  
 	 	 {  
 	 	 	 i f ( H u d M e s s a g e s [ i ]   = =   m s g )  
 	 	 	 {  
 	 	 	 	 H u d M e s s a g e s . E r a s e F a s t ( i ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	 	 	  
 	 p u b l i c   f u n c t i o n   R e m o v e H u d M e s s a g e B y I n d e x ( i d x   :   i n t )  
 	 {  
 	 	 i f ( i d x   > =   0   & &   i d x   <   H u d M e s s a g e s . S i z e ( ) )  
 	 	 	 H u d M e s s a g e s . E r a s e ( i d x ) ;  
 	 }  
 	  
 	 f u n c t i o n   S e t S e t t l e m e n t B l o c k C a n t e r (   v a l u e A d d   :   i n t   )    
 	 {  
 	 	 m _ S e t t l e m e n t B l o c k C a n t e r   + =   v a l u e A d d ;  
 	 }  
 	  
 	 v a r   c o u n t D o w n T o S t a r t   :   i n t ;  
 	 d e f a u l t   c o u n t D o w n T o S t a r t   =   0 ;  
 	  
 	 f u n c t i o n   D i s p l a y R a c e S t a r t (   c o u n t D o w n S e c o n d s N u m b e r   :   i n t   )    
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 c o u n t D o w n T o S t a r t   =   c o u n t D o w n S e c o n d s N u m b e r ;  
 	 	 f o r (   i   =   c o u n t D o w n S e c o n d s N u m b e r ;   i   >   0 ;   i   - =   1   )  
 	 	 {  
 	 	 	 D i s p l a y H u d M e s s a g e ( I n t T o S t r i n g ( i ) ) ;  
 	 	 }  
 	 	 D i s p l a y H u d M e s s a g e ( G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ h u d _ m e s s a g e _ r a c e _ s t a r t " ) ) ;  
 	 	 A d d T i m e r ( ' R a c e C o u n t d o w n ' , 1 , t r u e ) ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   R a c e C o u n t d o w n ( d t   :   f l o a t ,   i d   :   i n t )    
 	 {  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	 v a r   m e s s a g e M o d u l e   :   C R 4 H u d M o d u l e M e s s a g e ;  
 	 	  
 	 	 c o u n t D o w n T o S t a r t   - =   1 ;  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	  
 	 	 i f (   h u d   )  
 	 	 {  
 	 	 	 m e s s a g e M o d u l e   =   ( C R 4 H u d M o d u l e M e s s a g e ) h u d . G e t H u d M o d u l e ( " M e s s a g e M o d u l e " ) ;  
 	 	 	 i f (   m e s s a g e M o d u l e   )  
 	 	 	 {  
 	 	 	 	 m e s s a g e M o d u l e . O n M e s s a g e H i d d e n ( ) ;    
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f (   c o u n t D o w n T o S t a r t   < =   0   )  
 	 	 {  
 	 	 	 R e m o v e T i m e r ( ' R a c e C o u n t d o w n ' ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t C o u n t D o w n T o S t a r t ( )   :   i n t    
 	 {  
 	 	 r e t u r n   c o u n t D o w n T o S t a r t ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   H A X E 3 G e t C o n t a i n e r ( )   :   W 3 C o n t a i n e r    
 	 {  
 	 	 r e t u r n   H A X E 3 C o n t a i n e r ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   H A X E 3 S e t C o n t a i n e r (   c o n t a i n e r   :   W 3 C o n t a i n e r )   :   v o i d    
 	 {  
 	 	 H A X E 3 C o n t a i n e r   =   c o n t a i n e r ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   H A X E 3 G e t A u t o L o o t ( )   :   b o o l    
 	 {  
 	 	 r e t u r n   H A X E 3 b A u t o L o o t ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   H A X E 3 S e t A u t o L o o t (   v a l u e   :   b o o l   )   :   v o i d    
 	 {  
 	 	 H A X E 3 b A u t o L o o t   =   v a l u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S h o w H u d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   b S h o w H u d ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t S h o w H u d (   v a l u e   :   b o o l   )   :   v o i d  
 	 {  
 	 	 b S h o w H u d   =   v a l u e ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   D i s p l a y I t e m R e w a r d N o t i f i c a t i o n (   i t e m N a m e   :   n a m e ,   o p t i o n a l   q u a n t i t y   :   i n t   )   :   v o i d    
 	 {  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 h u d . O n I t e m R e c i v e d D u r i n g S c e n e ( i t e m N a m e ,   q u a n t i t y ) ;    
 	 }  
 	  
 	 f u n c t i o n   I s N e w Q u e s t (   q u e s t G u i d   :   C G U I D   )   :   b o o l    
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 f o r ( i   =   0 ;   i   <   d i s p l a y e d Q u e s t s G U I D . S i z e ( ) ;   i   + =   1   )  
 	 	 {  
 	 	 	 i f (   d i s p l a y e d Q u e s t s G U I D [ i ]   = =   q u e s t G u i d   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	 d i s p l a y e d Q u e s t s G U I D . P u s h B a c k ( q u e s t G u i d ) ;  
 	 	 r e t u r n   t r u e ;  
 	 } 	  
 	  
 	 f u n c t i o n   G e t R e w a r d M u l t i p l i e r D a t a (   r e w a r d N a m e   :   n a m e   )   :   S R e w a r d M u l t i p l i e r  
 	 {  
 	 	 v a r   d e f a u l t R e w a r d   :   S R e w a r d M u l t i p l i e r ;  
 	 	 v a r   i   	 	 	     :   i n t ;  
 	 	  
 	 	 f o r ( i   =   0 ;   i   <   r e w a r d s M u l t i p l i e r . S i z e ( ) ;   i   + =   1   )  
 	 	 {  
 	 	 	 i f (   r e w a r d s M u l t i p l i e r [ i ] . r e w a r d N a m e   = =   r e w a r d N a m e   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   r e w a r d s M u l t i p l i e r [ i ] ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 d e f a u l t R e w a r d . r e w a r d N a m e   =   r e w a r d N a m e ;  
 	 	 d e f a u l t R e w a r d . r e w a r d M u l t i p l i e r   =   1 . 0 ;  
 	 	 d e f a u l t R e w a r d . i s I t e m M u l t i p l i e r   =   f a l s e ;  
 	 	  
 	 	 r e t u r n   d e f a u l t R e w a r d ;  
 	 }  
  
 	 f u n c t i o n   G e t R e w a r d M u l t i p l i e r (   r e w a r d N a m e   :   n a m e   )   :   f l o a t    
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 f o r ( i   =   0 ;   i   <   r e w a r d s M u l t i p l i e r . S i z e ( ) ;   i   + =   1   )  
 	 	 {  
 	 	 	 i f (   r e w a r d s M u l t i p l i e r [ i ] . r e w a r d N a m e   = =   r e w a r d N a m e   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   r e w a r d s M u l t i p l i e r [ i ] . r e w a r d M u l t i p l i e r ;  
 	 	 	 }  
 	 	 }  
 	 	 r e t u r n   1 . 0 ;  
 	 }  
  
 	 f u n c t i o n   G e t R e w a r d M u l t i p l i e r E x i s t s (   r e w a r d N a m e   :   n a m e   )   :   b o o l    
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 f o r ( i   =   0 ;   i   <   r e w a r d s M u l t i p l i e r . S i z e ( ) ;   i   + =   1   )  
 	 	 {  
 	 	 	 i f (   r e w a r d s M u l t i p l i e r [ i ] . r e w a r d N a m e   = =   r e w a r d N a m e   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	 r e t u r n   f a l s e ;  
 	 }  
  
 	 f u n c t i o n   S e t R e w a r d M u l t i p l i e r (   r e w a r d N a m e   :   n a m e ,   v a l u e   :   f l o a t ,   o p t i o n a l   i s I t e m M u l t i p l i e r   :   b o o l   )   :   v o i d    
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   r e w a r d M u l t i p l i e r   :   S R e w a r d M u l t i p l i e r ;  
 	 	  
 	 	 f o r ( i   =   0 ;   i   <   r e w a r d s M u l t i p l i e r . S i z e ( ) ;   i   + =   1   )  
 	 	 {  
 	 	 	 i f (   r e w a r d s M u l t i p l i e r [ i ] . r e w a r d N a m e   = =   r e w a r d N a m e   )  
 	 	 	 {  
 	 	 	 	 r e w a r d s M u l t i p l i e r [ i ] . r e w a r d M u l t i p l i e r   =   v a l u e ;  
 	 	 	 	 r e w a r d s M u l t i p l i e r [ i ] . i s I t e m M u l t i p l i e r   =   i s I t e m M u l t i p l i e r ;  
 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e w a r d M u l t i p l i e r . r e w a r d N a m e   =   r e w a r d N a m e ;  
 	 	 r e w a r d M u l t i p l i e r . r e w a r d M u l t i p l i e r   =   v a l u e ;  
 	 	 r e w a r d M u l t i p l i e r . i s I t e m M u l t i p l i e r   =   i s I t e m M u l t i p l i e r ;  
 	 	  
 	 	 r e w a r d s M u l t i p l i e r . P u s h B a c k ( r e w a r d M u l t i p l i e r ) ;  
 	 } 	  
  
 	 f u n c t i o n   R e m o v e R e w a r d M u l t i p l i e r (   r e w a r d N a m e   :   n a m e   )   :   v o i d    
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 f o r ( i   =   0 ;   i   <   r e w a r d s M u l t i p l i e r . S i z e ( ) ;   i   + =   1   )  
 	 	 {  
 	 	 	 i f (   r e w a r d s M u l t i p l i e r [ i ] . r e w a r d N a m e   = =   r e w a r d N a m e   )  
 	 	 	 {  
 	 	 	 	 r e w a r d s M u l t i p l i e r . E r a s e ( i ) ;  
 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   T i s s u e E x t r a c t o r D i s c h a r g e ( )   :   b o o l  
 	 {  
 	 	 v a r   i d s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   c h a r g e s L e f t ,   u s e s ,   c u r r ,   m a x ,   r e d ,   b l u e ,   g r e e n   :   i n t ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   t e x t   :   s t r i n g ;  
 	 	  
 	 	 i d s   =   t h e P l a y e r . i n v . G e t I t e m s B y N a m e (   ' q 7 0 5 _ t i s s u e _ e x t r a c t o r '   ) ; 	 	  
 	 	 i f (   i d s . S i z e ( )   = =   0   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 c u r r   =   G e t T i s s u e E x t r a c t o r C h a r g e s C u r r ( ) ;  
 	 	 m a x   =   G e t T i s s u e E x t r a c t o r C h a r g e s M a x ( ) ;  
 	 	  
 	 	 i f (   c u r r   > =   m a x   )  
 	 	 {  
 	 	 	  
 	 	 	 u s e s   =   F l o o r F (   (   (   f l o a t   )   c u r r   )   /   (   (   f l o a t   )   m a x   )   ) ;  
 	 	 	 c h a r g e s L e f t   =   M a x (   0 ,   c u r r   -   u s e s   *   m a x   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i n v . S e t I t e m M o d i f i e r I n t (   i d s [ 0 ] ,   ' c h a r g e s ' ,   c h a r g e s L e f t   ) ; 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 b l u e   =   0 ;  
 	 	 	 g r e e n   =   0 ;  
 	 	 	 r e d   =   0 ;  
 	 	 	 f o r (   i = 0 ;   i < u s e s ;   i + = 1   )  
 	 	 	 {  
 	 	 	 	 s w i t c h (   R a n d R a n g e (   3   )   )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   0 :  
 	 	 	 	 	 	 b l u e   + =   1 ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 c a s e   1 :  
 	 	 	 	 	 	 g r e e n   + =   1 ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 c a s e   2 :  
 	 	 	 	 	 	 r e d   + =   1 ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 t e x t   =   G e t L o c S t r i n g B y K e y E x t (   " m e s s a g e _ q 7 0 5 _ e x t r a c t o r _ e x t r a c t e d "   ) ;  
 	 	 	  
 	 	 	 i f (   b l u e   >   0   )  
 	 	 	 {  
 	 	 	 	 i n v . A d d A n I t e m (   ' G r e a t e r   m u t a g e n   b l u e ' ,   b l u e ,   f a l s e ,   t r u e   ) ;  
 	 	 	 	 t e x t   + =   " < b r / > "   +   b l u e   +   " x   "   +   G e t L o c S t r i n g B y K e y (   i n v . G e t I t e m L o c a l i z e d N a m e B y N a m e (   ' G r e a t e r   m u t a g e n   b l u e '   )   ) ;  
 	 	 	 }  
 	 	 	 i f (   g r e e n   >   0   )  
 	 	 	 {  
 	 	 	 	 i n v . A d d A n I t e m (   ' G r e a t e r   m u t a g e n   g r e e n ' ,   g r e e n ,   f a l s e ,   t r u e   ) ;  
 	 	 	 	 t e x t   + =   " < b r / > "   +   g r e e n   +   " x   "   +   G e t L o c S t r i n g B y K e y (   i n v . G e t I t e m L o c a l i z e d N a m e B y N a m e (   ' G r e a t e r   m u t a g e n   g r e e n '   )   ) ;  
 	 	 	 }  
 	 	 	 i f (   r e d   >   0   )  
 	 	 	 {  
 	 	 	 	 i n v . A d d A n I t e m (   ' G r e a t e r   m u t a g e n   r e d ' ,   r e d ,   f a l s e ,   t r u e   ) ;  
 	 	 	 	 t e x t   + =   " < b r / > "   +   r e d   +   " x   "   +   G e t L o c S t r i n g B y K e y (   i n v . G e t I t e m L o c a l i z e d N a m e B y N a m e (   ' G r e a t e r   m u t a g e n   r e d '   )   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 t h e G a m e . G e t G u i M a n a g e r ( ) . S h o w N o t i f i c a t i o n (   t e x t   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i n v . S e t I t e m M o d i f i e r I n t (   i d s [ 0 ] ,   ' u i _ n o t i f i e d ' ,   0   ) ;  
 	 	 	  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	  
 	 	 	 t h e G a m e . G e t G u i M a n a g e r ( ) . S h o w N o t i f i c a t i o n (   G e t L o c S t r i n g B y K e y E x t (   " m e s s a g e _ q 7 0 5 _ e x t r a c t o r _ t o o _ f e w _ c h a r g e s "   )   ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   T i s s u e E x t r a c t o r I n c C h a r g e ( )  
 	 {  
 	 	 v a r   i d s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   u i D a t a   :   S I n v e n t o r y I t e m U I D a t a ;  
 	 	 v a r   c u r r   :   i n t ;  
 	 	  
 	 	 i d s   =   t h e P l a y e r . i n v . G e t I t e m s B y N a m e (   ' q 7 0 5 _ t i s s u e _ e x t r a c t o r '   ) ;  
 	 	 i f (   i d s . S i z e ( )   = =   0   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 c u r r   =   G e t T i s s u e E x t r a c t o r C h a r g e s C u r r ( )   +   1 ;  
 	 	 i n v . S e t I t e m M o d i f i e r I n t (   i d s [ 0 ] ,   ' c h a r g e s ' ,   c u r r   ) ;  
 	 	  
 	 	  
 	 	 i f (   c u r r   > =   G e t T i s s u e E x t r a c t o r C h a r g e s M a x ( )   )  
 	 	 {  
 	 	 	 u i D a t a   =   i n v . G e t I n v e n t o r y I t e m U I D a t a (   i d s [ 0 ]   ) ;  
 	 	 	 u i D a t a . i s N e w   =   t r u e ;  
 	 	 	 i n v . S e t I n v e n t o r y I t e m U I D a t a (   i d s [ 0 ] ,   u i D a t a   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f (   i n v . G e t I t e m M o d i f i e r I n t (   i d s [ 0 ] ,   ' u i _ n o t i f i e d ' ,   0   )   = =   0   )  
 	 	 	 {  
 	 	 	 	 i n v . S e t I t e m M o d i f i e r I n t (   i d s [ 0 ] ,   ' u i _ n o t i f i e d ' ,   1   ) ;  
 	 	 	 	 t h e G a m e . G e t G u i M a n a g e r ( ) . S h o w N o t i f i c a t i o n (   G e t L o c S t r i n g B y K e y E x t (   " m e s s a g e _ q 7 0 5 _ e x t r a c t o r _ c h a r g e d "   ) ,   ,   t r u e   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t T i s s u e E x t r a c t o r C h a r g e s C u r r ( )   :   i n t  
 	 {  
 	 	 v a r   i d s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	  
 	 	 i d s   =   t h e P l a y e r . i n v . G e t I t e m s B y N a m e (   ' q 7 0 5 _ t i s s u e _ e x t r a c t o r '   ) ;  
 	 	 i f (   i d s . S i z e ( )   = =   0   )  
 	 	 {  
 	 	 	 r e t u r n   0 ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   i n v . G e t I t e m M o d i f i e r I n t (   i d s [ 0 ] ,   ' c h a r g e s ' ,   0   ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t T i s s u e E x t r a c t o r C h a r g e s M a x ( )   :   i n t  
 	 {  
 	 	 v a r   i d s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   v a l   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	  
 	 	 i d s   =   t h e P l a y e r . i n v . G e t I t e m s B y N a m e (   ' q 7 0 5 _ t i s s u e _ e x t r a c t o r '   ) ;  
 	 	 i f (   i d s . S i z e ( )   = =   0   )  
 	 	 {  
 	 	 	 r e t u r n   0 ;  
 	 	 }  
 	 	  
 	 	 v a l   =   i n v . G e t I t e m A t t r i b u t e V a l u e (   i d s [ 0 ] ,   ' m a x C h a r g e s '   ) ;  
 	 	  
 	 	 r e t u r n   F l o o r F (   v a l . v a l u e B a s e   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t E q u i p p e d S w o r d ( s t e e l   :   b o o l )   :   S I t e m U n i q u e I d ;  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   H a s R e q u i r e d L e v e l T o E q u i p I t e m ( i t e m   :   S I t e m U n i q u e I d )   :   b o o l  
 	 {  
 	 	  
 	 	 i f   ( t h e P l a y e r . I s C i r i ( ) )  
 	 	 	 r e t u r n   t r u e ;  
 	  
 	 	 i f ( H a s B u f f ( E E T _ W o l f H o u r ) )  
 	 	 {  
 	 	 	 i f ( ( i n v . G e t I t e m L e v e l ( i t e m )   -   2 )   >   G e t L e v e l ( )   )  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f ( i n v . G e t I t e m L e v e l ( i t e m )   >   G e t L e v e l ( )   ) 	  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S k i l l R e d u c e B o m b A m m o B o n u s ( )  
 	 {  
 	 	 v a r   i ,   a m m o ,   m a x A m m o   :   i n t ;  
 	 	 v a r   i t e m s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	  
 	 	 i t e m s   =   i n v . G e t S i n g l e t o n I t e m s ( ) ;  
 	 	  
 	 	 f o r ( i = 0 ;   i < i t e m s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 a m m o   =   i n v . G e t I t e m M o d i f i e r I n t ( i t e m s [ i ] ,   ' a m m o _ c u r r e n t ' ) ;  
 	 	 	 	 	 	 	  
 	 	 	  
 	 	 	 i f ( a m m o   >   0 )  
 	 	 	 {  
 	 	 	 	 m a x A m m o   =   i n v . S i n g l e t o n I t e m G e t M a x A m m o ( i t e m s [ i ] ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f ( a m m o   >   m a x A m m o )  
 	 	 	 	 {  
 	 	 	 	 	 i n v . S e t I t e m M o d i f i e r I n t ( i t e m s [ i ] ,   ' a m m o _ c u r r e n t ' ,   m a x A m m o ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 t h e G a m e . G e t G l o b a l E v e n t s M a n a g e r ( ) . O n S c r i p t e d E v e n t (   S E C _ O n A m m o C h a n g e d   ) ;  
 	 }  
 	 	  
 	 p u b l i c   f u n c t i o n   C o n s u m e I t e m (   i t e m I d   :   S I t e m U n i q u e I d   )   :   b o o l  
 	 {  
 	 	 v a r   p a r a m s   :   S C u s t o m E f f e c t P a r a m s ;  
 	 	 v a r   b u f f s   :   a r r a y < S E f f e c t I n f o > ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   c a t e g o r y   :   n a m e ;  
 	 	 v a r   p o t i o n T o x i c i t y   :   f l o a t ;  
 	 	  
 	 	 i f ( ! i n v . I s I d V a l i d ( i t e m I d ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	  
 	 	 c a t e g o r y   =   i n v . G e t I t e m C a t e g o r y ( i t e m I d ) ;  
 	 	 i f ( c a t e g o r y   = =   ' e d i b l e s '   | |   i n v . I t e m H a s T a g ( i t e m I d ,   ' D r i n k s ' )   | |   (   c a t e g o r y   = =   ' a l c h e m y _ i n g r e d i e n t '   & &   i n v . I t e m H a s T a g ( i t e m I d ,   ' A l c o h o l ' ) )   )  
 	 	 {  
 	 	 	  
 	 	 	 i f ( I s F i s t F i g h t M i n i g a m e E n a b l e d ( ) )  
 	 	 	 {  
 	 	 	 	 D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ U n d e f i n e d ,   f a l s e ,   f a l s e ,   t r u e ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	  
 	 	 	  
 	 	 	 i n v . G e t I t e m B u f f s ( i t e m I d ,   b u f f s ) ;  
 	 	 	  
 	 	 	 f o r ( i = 0 ;   i < b u f f s . S i z e ( ) ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 p a r a m s . e f f e c t T y p e   =   b u f f s [ i ] . e f f e c t T y p e ;  
 	 	 	 	 p a r a m s . c r e a t o r   =   t h i s ;  
 	 	 	 	 p a r a m s . s o u r c e N a m e   =   " e d i b l e " ;  
 	 	 	 	 p a r a m s . c u s t o m A b i l i t y N a m e   =   b u f f s [ i ] . e f f e c t A b i l i t y N a m e ;  
 	 	 	 	 A d d E f f e c t C u s t o m ( p a r a m s ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 i f   (   i n v . I t e m H a s T a g ( i t e m I d ,   ' A l c o h o l ' )   )  
 	 	 	 {  
 	 	 	 	 p o t i o n T o x i c i t y   =   C a l c u l a t e A t t r i b u t e V a l u e ( i n v . G e t I t e m A t t r i b u t e V a l u e ( i t e m I d ,   ' t o x i c i t y ' ) ) ;  
 	 	 	 	 a b i l i t y M a n a g e r . G a i n S t a t ( B C S _ T o x i c i t y ,   p o t i o n T o x i c i t y   ) ; 	 	 	 	  
 	 	 	 	 A d d E f f e c t D e f a u l t ( E E T _ D r u n k e n n e s s ,   N U L L ,   i n v . G e t I t e m N a m e ( i t e m I d ) ) ;  
 	 	 	 }  
 	 	 	 P l a y I t e m C o n s u m e S o u n d (   i t e m I d   ) ;  
 	 	 }  
 	 	  
 	 	 i f ( i n v . I s I t e m F o o d ( i t e m I d ) )  
 	 	 	 F a c t s A d d ( " c o n s u m e d _ f o o d _ c n t " ) ;  
 	 	  
 	 	  
 	 	 i f ( ! i n v . I t e m H a s T a g ( i t e m I d ,   t h e G a m e . p a r a m s . T A G _ I N F I N I T E _ U S E )   & &   ! i n v . R e m o v e I t e m ( i t e m I d ) )  
 	 	 {  
 	 	 	 L o g A s s e r t ( f a l s e , " F a i l e d   t o   r e m o v e   c o n s u m a b l e   i t e m   f r o m   p l a y e r   i n v e n t o r y ! "   +   i n v . G e t I t e m N a m e (   i t e m I d   )   ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   M o u n t V e h i c l e (   v e h i c l e E n t i t y   :   C E n t i t y ,   m o u n t T y p e   :   E V e h i c l e M o u n t T y p e ,   o p t i o n a l   v e h i c l e S l o t   :   E V e h i c l e S l o t   )  
 	 {  
 	 	 v a r   v e h i c l e   :   C V e h i c l e C o m p o n e n t ;    
 	 	 v e h i c l e   =   ( C V e h i c l e C o m p o n e n t ) ( v e h i c l e E n t i t y . G e t C o m p o n e n t B y C l a s s N a m e ( ' C V e h i c l e C o m p o n e n t ' ) ) ;  
 	 	  
 	 	 i f   (   v e h i c l e   )  
 	 	 	 v e h i c l e . M o u n t (   t h i s ,   m o u n t T y p e ,   v e h i c l e S l o t   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   D i s m o u n t V e h i c l e (   v e h i c l e E n t i t y   :   C E n t i t y ,   d i s m o u n t T y p e   :   E D i s m o u n t T y p e   )  
 	 {  
 	 	 v a r   v e h i c l e   :   C V e h i c l e C o m p o n e n t ;    
 	 	 v e h i c l e   =   ( C V e h i c l e C o m p o n e n t ) ( v e h i c l e E n t i t y . G e t C o m p o n e n t B y C l a s s N a m e ( ' C V e h i c l e C o m p o n e n t ' ) ) ;  
 	 	  
 	 	 i f   (   v e h i c l e   )  
 	 	 	 v e h i c l e . I s s u e C o m m a n d T o D i s m o u n t (   d i s m o u n t T y p e   ) ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p r o t e c t e d   f u n c t i o n   S h o u l d D r a i n S t a m i n a W h i l e S p r i n t i n g ( )   :   b o o l  
 	 {  
 	 	 i f (   H a s B u f f (   E E T _ P o l i s h e d G e n i t a l s   )   & &   ! I s I n C o m b a t ( )   & &   ! I s T h r e a t e n e d ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   s u p e r . S h o u l d D r a i n S t a m i n a W h i l e S p r i n t i n g ( ) ;  
 	 }  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   H a s S t a m i n a T o U s e A c t i o n ( a c t i o n   :   E S t a m i n a A c t i o n T y p e ,   o p t i o n a l   a b i l i t y N a m e   :   n a m e ,   o p t i o n a l   d t   : f l o a t ,   o p t i o n a l   m u l t i p l i e r   :   f l o a t )   :   b o o l  
 	 {  
 	 	 v a r   c o s t   :   f l o a t ;  
 	 	 v a r   r e t   :   b o o l ;  
 	 	  
 	 	 r e t   =   s u p e r . H a s S t a m i n a T o U s e A c t i o n ( a c t i o n ,   a b i l i t y N a m e ,   d t ,   m u l t i p l i e r ) ;  
 	  
 	 	 i f ( ! r e t )  
 	 	 {  
 	 	 	 S e t C o m b a t A c t i o n H e a d i n g (   G e t H e a d i n g ( )   ) ;  
 	 	 	  
 	 	 	 i f ( m u l t i p l i e r   = =   0 )  
 	 	 	 	 m u l t i p l i e r   =   1 ;  
 	 	 	 	  
 	 	 	 c o s t   =   m u l t i p l i e r   *   G e t S t a m i n a A c t i o n C o s t ( a c t i o n ,   a b i l i t y N a m e ,   d t ) ;  
 	 	 	 S e t S h o w T o L o w S t a m i n a I n d i c a t i o n ( c o s t ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   r e t ;  
 	 }  
 	 	  
 	  
 	 t i m e r   f u n c t i o n   A b i l i t y M a n a g e r _ F l o o r S t a m i n a S e g m e n t ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . F l o o r S t a m i n a S e g m e n t ( ) ;  
 	 }  
 	 	  
 	 p u b l i c   f u n c t i o n   D r a i n T o x i c i t y ( a m o u n t   :   f l o a t   )  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( )   & &   I s A l i v e ( ) )  
 	 	 	 a b i l i t y M a n a g e r . D r a i n T o x i c i t y ( a m o u n t ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   D r a i n F o c u s ( a m o u n t   :   f l o a t   )  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( )   & &   I s A l i v e ( ) )  
 	 	 	 a b i l i t y M a n a g e r . D r a i n F o c u s ( a m o u n t ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t O f f e n s e S t a t ( ) : i n t  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t O f f e n s e S t a t ( ) ;  
 	 	  
 	 	 r e t u r n   0 ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t D e f e n s e S t a t ( ) : i n t  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t D e f e n s e S t a t ( ) ;  
 	 	  
 	 	 r e t u r n   0 ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S i g n s S t a t ( ) : f l o a t  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S i g n s S t a t ( ) ;  
 	 	  
 	 	 r e t u r n   0 ;  
 	 }  
 	 	  
 	  
 	  
 	  
 	  
 	 p r i v a t e   v a r   i n W a t e r T r i g g e r   :   b o o l ;  
 	  
 	 e v e n t   O n O c e a n T r i g g e r E n t e r ( )  
 	 {  
 	 	 i n W a t e r T r i g g e r   =   t r u e ;  
 	 }  
 	  
 	 e v e n t   O n O c e a n T r i g g e r L e a v e ( )  
 	 {  
 	 	 i n W a t e r T r i g g e r   =   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s I n W a t e r T r i g g e r ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i n W a t e r T r i g g e r ;  
 	 }  
 	  
 	  
 	  
 	  
  
 	 p u b l i c   f u n c t i o n   G e t S k i l l C o l o r ( s k i l l   :   E S k i l l )   :   E S k i l l C o l o r  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l C o l o r ( s k i l l ) ;  
 	 	 	  
 	 	 r e t u r n   S C _ N o n e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S k i l l S l o t I n d e x F r o m S k i l l ( s k i l l   :   E S k i l l )   :   i n t  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l S l o t I n d e x F r o m S k i l l ( s k i l l ) ;  
 	 	 	  
 	 	 r e t u r n   - 1 ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t S k i l l S l o t I n d e x ( s l o t I D   :   i n t ,   c h e c k I f U n l o c k e d   :   b o o l )   :   i n t  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l S l o t I n d e x ( s l o t I D ,   c h e c k I f U n l o c k e d ) ;  
 	 	 	  
 	 	 r e t u r n   - 1 ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t S k i l l S l o t I D F r o m I n d e x ( s k i l l S l o t I n d e x   :   i n t )   :   i n t  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l S l o t I D F r o m I n d e x ( s k i l l S l o t I n d e x ) ;  
 	 	 	  
 	 	 r e t u r n   - 1 ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S k i l l S l o t I D ( s k i l l   :   E S k i l l )   :   i n t  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l S l o t I D ( s k i l l ) ;  
 	 	 	  
 	 	 r e t u r n   - 1 ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S k i l l G r o u p B o n u s ( g r o u p I D   :   i n t )   :   n a m e  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t G r o u p B o n u s ( g r o u p I D ) ;  
 	 	 	  
 	 	 r e t u r n   ' ' ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t G r o u p B o n u s C o u n t ( c o m m o n C o l o r   :   E S k i l l C o l o r , g r o u p I D   :   i n t )   :   i n t  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l G r o u p C o l o r C o u n t ( c o m m o n C o l o r ,   g r o u p I D ) ;  
 	 	 	  
 	 	 r e t u r n   0 ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t M u t a g e n S l o t I D F r o m G r o u p I D ( g r o u p I D   :   i n t )   :   i n t  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t M u t a g e n S l o t I D F r o m G r o u p I D ( g r o u p I D ) ;  
 	 	 	  
 	 	 r e t u r n   - 1 ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S k i l l L e v e l ( s k i l l   :   E S k i l l )   :   i n t  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l L e v e l ( s k i l l ) ;  
 	 	 	  
 	 	 r e t u r n   - 1 ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t B o u g h t S k i l l L e v e l ( s k i l l   :   E S k i l l )   :   i n t  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t B o u g h t S k i l l L e v e l ( s k i l l ) ;  
 	 	 	  
 	 	 r e t u r n   - 1 ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   A d d S k i l l ( s k i l l   :   E S k i l l ,   o p t i o n a l   i s T e m p o r a r y   :   b o o l )  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . A d d S k i l l ( s k i l l ,   i s T e m p o r a r y ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   A d d M u l t i p l e S k i l l s ( s k i l l   :   E S k i l l ,   o p t i o n a l   n u m b e r   :   i n t ,   o p t i o n a l   i s T e m p o r a r y   :   b o o l )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 i f ( n u m b e r )  
 	 	 {  
 	 	 	 f o r (   i = 0 ;   i < n u m b e r ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 A d d S k i l l ( s k i l l , i s T e m p o r a r y ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 A d d S k i l l ( s k i l l , i s T e m p o r a r y ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S k i l l A b i l i t y N a m e ( s k i l l   :   E S k i l l )   :   n a m e  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l A b i l i t y N a m e ( s k i l l ) ;  
 	 	 	  
 	 	 r e t u r n   ' ' ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   H a s S t a m i n a T o U s e S k i l l ( s k i l l   :   E S k i l l ,   o p t i o n a l   p e r S e c   :   b o o l ,   o p t i o n a l   s i g n H a c k   :   b o o l )   :   b o o l  
 	 {  
 	 	 v a r   r e t   :   b o o l ;  
 	 	 v a r   c o s t   :   f l o a t ;  
 	  
 	 	 c o s t   =   G e t S k i l l S t a m i n a U s e C o s t ( s k i l l ,   p e r S e c ) ;  
 	 	  
 	 	 r e t   =   (   C a n U s e S k i l l ( s k i l l )   & &   ( a b i l i t y M a n a g e r . G e t S t a t ( B C S _ S t a m i n a ,   s i g n H a c k )   > =   c o s t )   ) ;  
 	 	  
 	 	  
 	 	 i f ( ! r e t   & &   I s S k i l l S i g n ( s k i l l )   & &   C a n U s e S k i l l ( S _ P e r k _ 0 9 )   & &   ( G e t S t a t ( B C S _ F o c u s )   > =   1   | |   G e t W i t c h e r P l a y e r ( ) . I s S u p e r c h a r g e d S i g n ( ) )   )    
 	 	 {  
 	 	 	 r e t   =   t r u e ;  
 	 	 }  
 	 	 	  
 	 	  
 	 	 i f (   ! r e t   & &   I s S k i l l S i g n (   s k i l l   )   & &   G e t W i t c h e r P l a y e r ( ) . H a s B u f f (   E E T _ G r y p h o n S e t B o n u s   )   )  
 	 	 {  
 	 	 	 r e t   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 i f ( ! r e t )  
 	 	 {  
 	 	 	 S e t C o m b a t A c t i o n H e a d i n g (   G e t H e a d i n g ( )   ) ;  
 	 	 	 S e t S h o w T o L o w S t a m i n a I n d i c a t i o n ( c o s t ) ;  
 	 	 }  
 	 	 	  
 	 	 r e t u r n   r e t ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   G e t S k i l l S t a m i n a U s e C o s t ( s k i l l   :   E S k i l l ,   o p t i o n a l   p e r S e c   :   b o o l )   :   f l o a t  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l S t a m i n a U s e C o s t ( s k i l l ,   p e r S e c ) ;  
 	 	 	  
 	 	 r e t u r n   0 ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t S k i l l A t t r i b u t e V a l u e ( s k i l l   :   E S k i l l ,   a t t r i b u t e N a m e   :   n a m e ,   a d d B a s e C h a r A t t r i b u t e   :   b o o l ,   a d d S k i l l M o d s A t t r i b u t e   :   b o o l )   :   S A b i l i t y A t t r i b u t e V a l u e  
 	 {  
 	 	 v a r   n u l l   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   a b i l i t y M a n a g e r . G e t S k i l l A t t r i b u t e V a l u e ( S k i l l E n u m T o N a m e ( s k i l l ) ,   a t t r i b u t e N a m e ,   a d d B a s e C h a r A t t r i b u t e ,   a d d S k i l l M o d s A t t r i b u t e ) ;  
 	 	  
 	 	 r e t u r n   n u l l ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S k i l l L o c a l i s a t i o n K e y N a m e ( s k i l l   :   E S k i l l )   :   s t r i n g    
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l L o c a l i s a t i o n K e y N a m e ( s k i l l ) ;  
 	 	 	  
 	 	 r e t u r n   " " ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S k i l l L o c a l i s a t i o n K e y D e s c r i p t i o n ( s k i l l   :   E S k i l l )   :   s t r i n g    
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l L o c a l i s a t i o n K e y D e s c r i p t i o n ( s k i l l ) ;  
 	 	 	  
 	 	 r e t u r n   " " ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S k i l l I c o n P a t h ( s k i l l   :   E S k i l l )   :   s t r i n g    
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l I c o n P a t h ( s k i l l ) ;  
 	 	  
 	 	 r e t u r n   " " ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   H a s L e a r n e d S k i l l ( s k i l l   :   E S k i l l )   :   b o o l  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . H a s L e a r n e d S k i l l ( s k i l l ) ;  
 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s S k i l l E q u i p p e d ( s k i l l   :   E S k i l l )   :   b o o l  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . I s S k i l l E q u i p p e d ( s k i l l ) ;  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C a n U s e S k i l l ( s k i l l   :   E S k i l l )   :   b o o l  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . C a n U s e S k i l l ( s k i l l ) ;  
 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   C a n L e a r n S k i l l ( s k i l l   :   E S k i l l )   :   b o o l    
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . C a n L e a r n S k i l l ( s k i l l ) ;  
 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   H a s S p e n t E n o u g h P o i n t s ( s k i l l   :   E S k i l l )   :   b o o l    
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . H a s S p e n t E n o u g h P o i n t s ( s k i l l ) ;  
 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   P a t h P o i n t s F o r S k i l l s P a t h ( s k i l l   :   E S k i l l )   :   i n t    
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . P a t h P o i n t s S p e n t I n S k i l l P a t h O f S k i l l ( s k i l l ) ;  
 	 	 	  
 	 	 r e t u r n   - 1 ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t P l a y e r S k i l l s ( )   :   a r r a y < S S k i l l >    
 	 {  
 	 	 v a r   n u l l   :   a r r a y < S S k i l l > ;  
 	 	  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t P l a y e r S k i l l s ( ) ;  
 	 	 	  
 	 	 r e t u r n   n u l l ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t P l a y e r S k i l l ( s   :   E S k i l l )   :   S S k i l l    
 	 {  
 	 	 v a r   n u l l   :   S S k i l l ;  
 	 	  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t P l a y e r S k i l l ( s ) ;  
 	 	 	  
 	 	 r e t u r n   n u l l ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S k i l l S u b P a t h T y p e ( s   :   E S k i l l )   :   E S k i l l S u b P a t h    
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l S u b P a t h T y p e ( s ) ;  
 	 	 	  
 	 	 r e t u r n   E S S P _ N o t S e t ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S k i l l S l o t s C o u n t ( )   :   i n t  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l S l o t s C o u n t ( ) ;  
 	 	 	  
 	 	 r e t u r n   0 ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S k i l l S l o t s ( )   :   a r r a y < S S k i l l S l o t >  
 	 {  
 	 	 v a r   n u l l   :   a r r a y < S S k i l l S l o t > ;  
 	 	  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l S l o t s ( ) ;  
 	 	 	  
 	 	 r e t u r n   n u l l ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t P l a y e r S k i l l M u t a g e n s ( )   :   a r r a y < S M u t a g e n S l o t >  
 	 {  
 	 	 v a r   n u l l   :   a r r a y < S M u t a g e n S l o t > ;  
 	 	  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t P l a y e r S k i l l M u t a g e n s ( ) ;  
 	 	 	  
 	 	 r e t u r n   n u l l ;  
 	 }  
 	  
 	  
 	  
  
 	 p u b l i c   f u n c t i o n   B l o c k S k i l l ( s k i l l   :   E S k i l l ,   b l o c k   :   b o o l ,   o p t i o n a l   c o o l d o w n   :   f l o a t )   :   b o o l  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . B l o c k S k i l l ( s k i l l ,   b l o c k ,   c o o l d o w n ) ;  
 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s S k i l l B l o c k e d ( s k i l l   :   E S k i l l )   :   b o o l  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . I s S k i l l B l o c k e d ( s k i l l ) ;  
 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
  
 	  
 	 p u b l i c   f u n c t i o n   E q u i p S k i l l ( s k i l l   :   E S k i l l ,   s l o t I D   :   i n t )   :   b o o l  
 	 {  
 	 	 v a r   r e t   :   b o o l ;  
 	 	 v a r   g r o u p I D   :   i n t ;  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 {  
 	 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 	 r e t   =   p a m . E q u i p S k i l l ( s k i l l ,   s l o t I D ) ;  
 	 	 	 i f ( r e t )  
 	 	 	 {  
 	 	 	 	 g r o u p I D   =   p a m . G e t S k i l l G r o u p I d F r o m S k i l l S l o t I d ( s l o t I D ) ;  
 	 	 	 	 L o g S k i l l C o l o r s ( " E q u i p p e d   < < "   +   G e t S k i l l C o l o r ( s k i l l )   +   " > >   s k i l l   < < "   +   s k i l l   +   " > >   t o   g r o u p   < < "   +   g r o u p I D   +   " > > " ) ;  
 	 	 	 	 L o g S k i l l C o l o r s ( " G r o u p   b o n u s   c o l o r   i s   n o w   < < "   +   p a m . G e t S k i l l G r o u p C o l o r ( g r o u p I D )   +   " > > " ) ;  
 	 	 	 	 L o g S k i l l C o l o r s ( " " ) ;  
 	 	 	 }  
 	  
 	 	 	 r e t u r n   r e t ;  
 	 	 }  
 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   U n e q u i p S k i l l ( s l o t I D   :   i n t )   :   b o o l  
 	 {  
 	 	 v a r   r e t   :   b o o l ;  
 	 	 v a r   g r o u p I D   :   i n t ;  
 	 	 v a r   s k i l l   :   E S k i l l ;  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 {  
 	 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 	 G e t S k i l l O n S l o t ( s l o t I D ,   s k i l l ) ;  
 	 	 	 r e t   =   p a m . U n e q u i p S k i l l ( s l o t I D ) ;  
 	 	 	 i f ( r e t )  
 	 	 	 {  
 	 	 	 	 g r o u p I D   =   p a m . G e t S k i l l G r o u p I d F r o m S k i l l S l o t I d ( s l o t I D ) ;  
 	 	 	 	 L o g S k i l l C o l o r s ( " U n e q u i p p e d   < < "   +   G e t S k i l l C o l o r ( s k i l l )   +   " > >   s k i l l   < < "   +   s k i l l   +   " > >   f r o m   g r o u p   < < "   +   g r o u p I D   +   " > > " ) ;  
 	 	 	 	 L o g S k i l l C o l o r s ( " G r o u p   b o n u s   c o l o r   i s   n o w   < < "   +   p a m . G e t S k i l l G r o u p C o l o r ( g r o u p I D )   +   " > > " ) ;  
 	 	 	 	 L o g S k i l l C o l o r s ( " " ) ;  
 	 	 	 }  
 	 	 	 r e t u r n   r e t ;  
 	 	 }  
 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t S k i l l O n S l o t ( s l o t I D   :   i n t ,   o u t   s k i l l   :   E S k i l l )   :   b o o l  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l O n S l o t ( s l o t I D ,   s k i l l ) ;  
 	 	 	  
 	 	 s k i l l   =   S _ S U n d e f i n e d ;  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t F r e e S k i l l S l o t ( )   :   i n t  
 	 {  
 	 	 v a r   i ,   s i z e   :   i n t ;  
 	 	 v a r   s k i l l   :   E S k i l l ;  
 	  
 	 	 s i z e   =   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l S l o t s C o u n t ( ) ;  
 	 	 f o r ( i = 1 ;   i < s i z e ;   i + = 1 )  
 	 	 {  
 	 	 	 i f ( ! G e t S k i l l O n S l o t ( i ,   s k i l l ) )  
 	 	 	 	 c o n t i n u e ; 	  
 	 	 	 	  
 	 	 	 i f ( s k i l l   = =   S _ S U n d e f i n e d ) 	  
 	 	 	 	 r e t u r n   i ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   - 1 ;  
 	 }  
  
 	  
 	  
 	  
 	  
 	  
 	 p r o t e c t e d   f u n c t i o n   A t t a c k (   h i t T a r g e t   :   C G a m e p l a y E n t i t y ,   a n i m D a t a   :   C P r e A t t a c k E v e n t D a t a ,   w e a p o n I d   :   S I t e m U n i q u e I d ,   p a r r i e d   :   b o o l ,   c o u n t e r e d   :   b o o l ,   p a r r i e d B y   :   a r r a y < C A c t o r > ,   a t t a c k A n i m a t i o n N a m e   :   n a m e ,   h i t T i m e   :   f l o a t ,   w e a p o n E n t i t y   :   C I t e m E n t i t y )  
 	 { 	  
 	 	 v a r   a t t a c k A c t i o n   :   W 3 A c t i o n _ A t t a c k ;  
 	  
 	 	 i f ( ! P r e p a r e A t t a c k A c t i o n ( h i t T a r g e t ,   a n i m D a t a ,   w e a p o n I d ,   p a r r i e d ,   c o u n t e r e d ,   p a r r i e d B y ,   a t t a c k A n i m a t i o n N a m e ,   h i t T i m e ,   w e a p o n E n t i t y ,   a t t a c k A c t i o n ) )  
 	 	 	 r e t u r n ; 	  
 	 	  
 	 	 i f   (   a t t a c k A c t i o n . I s P a r r i e d ( )   & &   (   ( ( C N e w N P C ) a t t a c k A c t i o n . v i c t i m ) . I s S h i e l d e d ( a t t a c k A c t i o n . a t t a c k e r )   | |   ( ( C N e w N P C ) a t t a c k A c t i o n . v i c t i m ) . S i g n a l G a m e p l a y E v e n t R e t u r n I n t ( ' I s D e f e n d i n g ' , 0 )   = =   1   )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . S e t C a n P l a y H i t A n i m ( t r u e ) ;  
 	 	 	 t h e P l a y e r . R e a c t T o R e f l e c t e d A t t a c k ( a t t a c k A c t i o n . v i c t i m ) ;  
 	 	 }  
 	 	 	 	  
 	 	 t h e T e l e m e t r y . L o g W i t h L a b e l (   T E _ F I G H T _ P L A Y E R _ A T T A C K S ,   a t t a c k A c t i o n . G e t A t t a c k N a m e ( )   ) ;  
 	  
 	 	  
 	 	 t h e G a m e . d a m a g e M g r . P r o c e s s A c t i o n ( a t t a c k A c t i o n ) ;  
 	 	  
 	 	 d e l e t e   a t t a c k A c t i o n ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s H e a v y A t t a c k ( a t t a c k N a m e   :   n a m e )   :   b o o l  
 	 {  
 	 	 v a r   s k i l l   :   E S k i l l ;  
 	 	 v a r   s u p   :   b o o l ;  
 	  
 	 	 s u p   =   s u p e r . I s H e a v y A t t a c k ( a t t a c k N a m e ) ;  
 	 	 i f ( s u p )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 	  
 	 	 i f   (   a t t a c k N a m e   = =   ' a t t a c k _ h e a v y _ s p e c i a l '   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 	  
 	 	 s k i l l   =   S k i l l N a m e T o E n u m ( a t t a c k N a m e ) ;  
 	 	  
 	 	 r e t u r n   s k i l l   = =   S _ S w o r d _ 2   | |   s k i l l   = =   S _ S w o r d _ s 0 2 ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   I s L i g h t A t t a c k ( a t t a c k N a m e   :   n a m e )   :   b o o l  
 	 {  
 	 	 v a r   s k i l l   :   E S k i l l ;  
 	 	 v a r   s u p   :   b o o l ;  
 	  
 	 	 s u p   =   s u p e r . I s L i g h t A t t a c k ( a t t a c k N a m e ) ;  
 	 	 i f ( s u p )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 	  
 	 	 s k i l l   =   S k i l l N a m e T o E n u m ( a t t a c k N a m e ) ;  
 	 	  
 	 	 r e t u r n   s k i l l   = =   S _ S w o r d _ 1   | |   s k i l l   = =   S _ S w o r d _ s 0 1 ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   P r o c e s s W e a p o n C o l l i s i o n ( )  
 	 {  
 	 	 v a r   l _ s t a t e N a m e 	 	 	 :   n a m e ;  
 	 	  
 	 	 v a r   l _ w e a p o n P o s i t i o n 	 :   V e c t o r ;  
 	 	 v a r   l _ w e a p o n T i p P o s 	 	 :   V e c t o r ;  
 	 	 v a r   l _ c o l l i d i n g P o s i t i o n 	 :   V e c t o r ;  
 	 	 v a r   l _ o f f s e t 	 	 	 :   V e c t o r ;  
 	 	 v a r   l _ n o r m a l 	 	 	 :   V e c t o r ;  
 	 	  
 	 	 v a r   l _ s l o t M a t r i x 	 	 :   M a t r i x ;  
 	 	  
 	 	 v a r   l _ d i s t a n c e 	 	 	 :   f l o a t ;  
 	 	  
 	 	 v a r   l _ m a t e r i a l N a m e 	 	 :   n a m e ;  
 	 	 v a r   l _ h i t C o m p o n e n t 	 	 :   C C o m p o n e n t ;  
 	 	 v a r   l _ d e s t r u c t i b l e C m p 	 :   C D e s t r u c t i o n S y s t e m C o m p o n e n t ;  
 	 	 v a r   b a r r e l   :   C O i l B a r r e l E n t i t y ;  
 	 	  
 	 	  
 	 	  
 	 	 i f (   i s C u r r e n t l y D o d g i n g   )  
 	 	 	 r e t u r n ;  
 	 	  
 	 	 l _ s t a t e N a m e   =   G e t C u r r e n t S t a t e N a m e ( ) ;  
 	 	  
 	 	 i f (   ! a t t a c k E v e n t I n P r o g r e s s   & &   l _ s t a t e N a m e   = =   ' C o m b a t F i s t s '   )  
 	 	 	 r e t u r n ;  
 	 	  
 	 	 C a l c E n t i t y S l o t M a t r i x ( ' r _ w e a p o n ' ,   l _ s l o t M a t r i x ) ;  
 	 	  
 	 	 l _ w e a p o n P o s i t i o n   	 =   M a t r i x G e t T r a n s l a t i o n (   l _ s l o t M a t r i x   ) ;  
 	 	  
 	 	  
 	 	 s w i t c h (   l _ s t a t e N a m e   )  
 	 	 {  
 	 	 	 c a s e   ' C o m b a t F i s t s ' :  
 	 	 	 	 l _ o f f s e t   	 =   M a t r i x G e t A x i s X (   l _ s l o t M a t r i x   ) ;  
 	 	 	 	 l _ o f f s e t   	 =   V e c N o r m a l i z e (   l _ o f f s e t   )   *   0 . 2 5 f ;  
 	 	 	 b r e a k ;  
 	 	 	  
 	 	 	 d e f a u l t :  
 	 	 	 	 l _ o f f s e t   	 =   M a t r i x G e t A x i s Z (   l _ s l o t M a t r i x   ) ;  
 	 	 	 	 l _ o f f s e t   	 =   V e c N o r m a l i z e (   l _ o f f s e t   )   *   1 . f ;  
 	 	 	 b r e a k ;  
 	 	 }  
 	 	  
 	 	 l _ w e a p o n T i p P o s 	 	 	 =   l _ w e a p o n P o s i t i o n   +   l _ o f f s e t ;  
 	 	  
 	 	  
 	 	  
 	 	 i f (   ! a t t a c k E v e n t I n P r o g r e s s   )  
 	 	 { 	 	 	  
 	 	 	  
 	 	 	 i f (   m _ L a s t W e a p o n T i p P o s   = =   V e c t o r   (   0 ,   0 ,   0   )   )  
 	 	 	 	 l _ d i s t a n c e   =   0 ;  
 	 	 	 e l s e  
 	 	 	 	 l _ d i s t a n c e   	 =   V e c D i s t a n c e (   l _ w e a p o n T i p P o s ,   m _ L a s t W e a p o n T i p P o s   )   ;  
 	 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 	  
 	 	 	 m _ L a s t W e a p o n T i p P o s 	 =   l _ w e a p o n T i p P o s ;  
 	 	 	 i f (   l _ d i s t a n c e   <   0 . 3 5 f   )  
 	 	 	 	 r e t u r n ; 	 	 	 	  
 	 	 	  
 	 	 } 	  
 	 	  
 	 	  
 	 	  
 	 	 m _ L a s t W e a p o n T i p P o s 	 	 =   l _ w e a p o n T i p P o s ; 	 	 	  
 	 	  
 	 	 i f   (   ! t h e G a m e . G e t W o r l d ( ) . S t a t i c T r a c e W i t h A d d i t i o n a l I n f o (   l _ w e a p o n P o s i t i o n ,   l _ w e a p o n T i p P o s ,   l _ c o l l i d i n g P o s i t i o n ,   l _ n o r m a l ,   l _ m a t e r i a l N a m e ,   l _ h i t C o m p o n e n t ,   m _ W e a p o n F X C o l l i s i o n G r o u p N a m e s   )   )  
 	 	 {  
 	 	 	  
 	 	 	 i f (   l _ s t a t e N a m e   = =   ' C o m b a t F i s t s '   )  
 	 	 	 {  
 	 	 	 	 C a l c E n t i t y S l o t M a t r i x ( ' l _ w e a p o n ' ,   l _ s l o t M a t r i x ) ;  
 	 	 	 	 l _ w e a p o n P o s i t i o n   	 =   M a t r i x G e t T r a n s l a t i o n (   l _ s l o t M a t r i x   ) ;  
 	 	 	 	 l _ o f f s e t   	 	 	 =   M a t r i x G e t A x i s X (   l _ s l o t M a t r i x   ) ;  
 	 	 	 	 l _ o f f s e t   	 	 	 =   V e c N o r m a l i z e (   l _ o f f s e t   )   *   0 . 2 5 f ;  
 	 	 	 	 l _ w e a p o n T i p P o s 	 	 =   l _ w e a p o n P o s i t i o n   +   l _ o f f s e t ;  
 	 	 	 	 i f (   ! t h e G a m e . G e t W o r l d ( ) . S t a t i c T r a c e (   l _ w e a p o n P o s i t i o n ,   l _ w e a p o n T i p P o s ,   l _ c o l l i d i n g P o s i t i o n ,   l _ n o r m a l ,   m _ W e a p o n F X C o l l i s i o n G r o u p N a m e s   )   )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f (   ! m _ C o l l i s i o n E f f e c t   )  
 	 	 {  
 	 	 	 m _ C o l l i s i o n E f f e c t   =   t h e G a m e . C r e a t e E n t i t y (   m _ C o l l i s i o n F x T e m p l a t e ,   l _ c o l l i d i n g P o s i t i o n ,   E u l e r A n g l e s ( 0 , 0 , 0 )   ) ;  
 	 	 }  
 	 	  
 	 	 m _ C o l l i s i o n E f f e c t . T e l e p o r t (   l _ c o l l i d i n g P o s i t i o n   ) ;  
 	 	  
 	 	  
 	 	 s w i t c h (   l _ s t a t e N a m e   )  
 	 	 {  
 	 	 	 c a s e   ' C o m b a t F i s t s ' :  
 	 	 	 	 m _ C o l l i s i o n E f f e c t . P l a y E f f e c t ( ' f i s t ' ) ;  
 	 	 	 b r e a k ;  
 	 	 	 d e f a u l t : 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f (   m _ R e f r e s h W e a p o n F X T y p e   )  
 	 	 	 	 {  
 	 	 	 	 	 m _ P l a y W o o d e n F X   	 	 	 =   I s S w o r d W o o d e n ( ) ;  
 	 	 	 	 	 m _ R e f r e s h W e a p o n F X T y p e   	 =   f a l s e ;  
 	 	 	 	 }  
 	 	 	  
 	 	 	 	 i f (   m _ P l a y W o o d e n F X   )  
 	 	 	 	 {  
 	 	 	 	 	 m _ C o l l i s i o n E f f e c t . P l a y E f f e c t ( ' w o o d ' ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 s w i t c h (   l _ m a t e r i a l N a m e   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 c a s e   ' w o o d _ h o l l o w ' :  
 	 	 	 	 	 	 c a s e   ' w o o d _ d e b r i s ' :  
 	 	 	 	 	 	 c a s e   ' w o o d _ s o l i d ' :  
 	 	 	 	 	 	 	 m _ C o l l i s i o n E f f e c t . P l a y E f f e c t ( ' w o o d ' ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 c a s e   ' d i r t _ h a r d ' :  
 	 	 	 	 	 	 c a s e   ' d i r t _ s o i l ' :  
 	 	 	 	 	 	 c a s e   ' h a y ' :  
 	 	 	 	 	 	 	 m _ C o l l i s i o n E f f e c t . P l a y E f f e c t ( ' f i s t ' ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 c a s e   ' s t o n e _ d e b r i s ' :  
 	 	 	 	 	 	 c a s e   ' s t o n e _ s o l i d ' :  
 	 	 	 	 	 	 c a s e   ' c l a y _ t i l e ' :  
 	 	 	 	 	 	 c a s e   ' g r a v e l _ l a r g e ' :  
 	 	 	 	 	 	 c a s e   ' g r a v e l _ s m a l l ' :  
 	 	 	 	 	 	 c a s e   ' m e t a l ' :  
 	 	 	 	 	 	 c a s e   ' c u s t o m _ s w o r d ' :  
 	 	 	 	 	 	 	 m _ C o l l i s i o n E f f e c t . P l a y E f f e c t ( ' s p a r k s ' ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 c a s e   ' f l e s h ' :  
 	 	 	 	 	 	 	 m _ C o l l i s i o n E f f e c t . P l a y E f f e c t ( ' b l o o d ' ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 d e f a u l t :  
 	 	 	 	 	 	 	 m _ C o l l i s i o n E f f e c t . P l a y E f f e c t ( ' w o o d ' ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 }  
 	 	 	 b r e a k ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( l _ h i t C o m p o n e n t )  
 	 	 {  
 	 	 	 b a r r e l   =   ( C O i l B a r r e l E n t i t y ) l _ h i t C o m p o n e n t . G e t E n t i t y ( ) ;  
 	 	 	 i f ( b a r r e l )  
 	 	 	 {  
 	 	 	 	 b a r r e l . O n F i r e H i t ( N U L L ) ; 	  
 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 l _ d e s t r u c t i b l e C m p   =   ( C D e s t r u c t i o n S y s t e m C o m p o n e n t )   l _ h i t C o m p o n e n t ;  
 	 	 i f (   l _ d e s t r u c t i b l e C m p   & &   l _ s t a t e N a m e   ! =   ' C o m b a t F i s t s '   )  
 	 	 {  
 	 	 	 l _ d e s t r u c t i b l e C m p . A p p l y F r a c t u r e ( ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R e a c t T o R e f l e c t e d A t t a c k (   t a r g e t   :   C G a m e p l a y E n t i t y )  
 	 {  
 	 	  
 	 	 v a r   h p ,   d m g   :   f l o a t ;  
 	 	 v a r   a c t i o n   :   W 3 D a m a g e A c t i o n ;  
 	 	  
 	 	 s u p e r . R e a c t T o R e f l e c t e d A t t a c k ( t a r g e t ) ;  
 	 	  
 	 	  
 	 	 t h e G a m e . V i b r a t e C o n t r o l l e r L i g h t ( ) ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	 f u n c t i o n   G e t F a l l D i s t (   o u t   f a l l D i s t   :   f l o a t   )   :   b o o l  
 	 {  
 	 	 v a r   f a l l D i f f ,   j u m p T o t a l D i f f   :   f l o a t ;  
 	 	  
 	 	  
 	 	 s u b s t a t e M a n a g e r . m _ S h a r e d D a t a O . C a l c u l a t e F a l l i n g H e i g h t s (   f a l l D i f f ,   j u m p T o t a l D i f f   ) ;  
 	 	  
 	 	 i f   (   f a l l D i f f   < =   0   )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 f a l l D i s t   =   f a l l D i f f ;  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 f u n c t i o n   A p p l y F a l l i n g D a m a g e ( h e i g h t D i f f   :   f l o a t ,   o p t i o n a l   r e d u c i n g   :   b o o l )   :   f l o a t  
 	 {  
 	 	 v a r   h p P e r c   :   f l o a t ;  
 	 	 v a r   t u t   :   S T u t o r i a l M e s s a g e ;  
 	  
 	 	 i f   (   I s S w i m m i n g ( )   | |   F a c t s Q u e r y S u m ( " b l o c k _ f a l l i n g _ d a m a g e " )   > =   1   )  
 	 	 	 r e t u r n   0 . 0 f ;  
 	 	  
 	 	 h p P e r c   =   s u p e r . A p p l y F a l l i n g D a m a g e (   h e i g h t D i f f ,   r e d u c i n g   ) ;  
 	 	 	  
 	 	 i f ( h p P e r c   >   0 ) 	 	  
 	 	 {  
 	 	 	 t h e G a m e . V i b r a t e C o n t r o l l e r H a r d ( ) ;  
 	 	  
 	 	 	 i f ( I s A l i v e ( ) )  
 	 	 	 {  
 	 	 	 	 i f ( S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l F a l l i n g D a m a g e ' ) )  
 	 	 	 	 {  
 	 	 	 	 	 F a c t s S e t (   " t u t o r i a l _ f a l l i n g _ d a m a g e " ,   1   ) ;  
 	 	 	 	 } 	  
 	 	 	 	  
 	 	 	 	 i f ( F a c t s Q u e r y S u m ( " t u t o r i a l _ f a l l i n g _ d a m a g e " )   >   1   & &   S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l F a l l i n g R o l l ' ) )  
 	 	 	 	 {  
 	 	 	 	 	  
 	 	 	 	 	 t u t . t y p e   =   E T M T _ H i n t ;  
 	 	 	 	 	 t u t . t u t o r i a l S c r i p t T a g   =   ' T u t o r i a l F a l l i n g R o l l ' ;  
 	 	 	 	 	 t u t . h i n t P o s i t i o n T y p e   =   E T H P T _ D e f a u l t G l o b a l ;  
 	 	 	 	 	 t u t . h i n t D u r a t i o n T y p e   =   E T H D T _ L o n g ;  
 	 	 	 	 	 t u t . c a n B e S h o w n I n M e n u s   =   f a l s e ;  
 	 	 	 	 	 t u t . g l o s s a r y L i n k   =   f a l s e ;  
 	 	 	 	 	 t u t . m a r k A s S e e n O n S h o w   =   t r u e ;  
 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . D i s p l a y T u t o r i a l ( t u t ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 	  
 	 	 r e t u r n   h p P e r c ;  
 	 }  
 	 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   S e t S h o w T o L o w S t a m i n a I n d i c a t i o n (   v a l u e   :   f l o a t   )   :   v o i d  
 	 {  
 	 	 f S h o w T o L o w S t a m i n a I n d i c a t i o n   =   v a l u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S h o w T o L o w S t a m i n a I n d i c a t i o n ( )   :   f l o a t  
 	 {  
 	 	 r e t u r n   f S h o w T o L o w S t a m i n a I n d i c a t i o n ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   I n d i c a t e T o o L o w A d r e n a l i n e ( )  
 	 {  
 	 	 S o u n d E v e n t ( " g u i _ n o _ a d r e n a l i n e " ) ;  
 	 	 s h o w T o o L o w A d r e n a l i n e   =   t r u e ;  
 	 }  
 	  
 	  
 	 	  
 	 p r o t e c t e d   f u n c t i o n   G o t o C o m b a t S t a t e W i t h A c t i o n (   i n i t i a l A c t i o n   :   E I n i t i a l A c t i o n ,   o p t i o n a l   i n i t i a l B u f f   :   C B a s e G a m e p l a y E f f e c t   )  
 	 {  
 	 	 i f   (   t h i s . G e t C u r r e n t A c t i o n T y p e ( )   = =   A c t o r A c t i o n _ E x p l o r a t i o n   )  
 	 	 	 A c t i o n C a n c e l A l l ( ) ;  
 	 	 	  
 	 	 ( ( W 3 P l a y e r W i t c h e r S t a t e C o m b a t F i s t s ) t h i s . G e t S t a t e ( ' C o m b a t F i s t s ' ) ) . S e t u p S t a t e (   i n i t i a l A c t i o n ,   i n i t i a l B u f f   ) ; 	  
 	 	 t h i s . G o t o S t a t e (   ' C o m b a t F i s t s '   ) ;  
 	 	  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   I s T h r e a t (   a c t o r   :   C A c t o r ,   o p t i o n a l   u s e P r e c a l c s   :   b o o l   )   :   b o o l  
 	 {  
 	 	 v a r   n p c   	 	 	 	 :   C N e w N P C ;  
 	 	 v a r   d i s t   	 	 	 	 :   f l o a t ;  
 	 	 v a r   t a r g e t C a p s u l e H e i g h t   :   f l o a t ;  
 	 	 v a r   i s D i s t a n c e E x p a n d e d   	 :   b o o l ;  
 	 	 v a r   d i s t a n c e T o T a r g e t 	 :   f l o a t ;  
 	 	 v a r   a t t i t u d e   	 	 	 :   E A I A t t i t u d e ;  
  
 	 	 i f   ( ! a c t o r )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 	  
 	 	 i f   (   f i n i s h a b l e E n e m i e s L i s t . C o n t a i n s (   a c t o r   )   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 	  
 	 	 i f   (   ! a c t o r . I s A l i v e ( )   | |   a c t o r . I s K n o c k e d U n c o n s c i o u s ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 	  
 	 	 n p c   =   ( C N e w N P C ) a c t o r ;  
 	 	 i f   ( n p c   & &   n p c . I s H o r s e ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f   (   h o s t i l e E n e m i e s . C o n t a i n s (   a c t o r   )   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   (   G e t A t t i t u d e B e t w e e n (   t h i s ,   a c t o r   )   = =   A I A _ H o s t i l e   )  
 	 	 { 	 	  
 	 	 	 i f   (   u s e P r e c a l c s   )  
 	 	 	 {  
 	 	 	 	 d i s t a n c e T o T a r g e t   =   D i s t a n c e 2 D B e t w e e n C a p s u l e A n d P o i n t (   a c t o r ,   t h i s   )   -   t a r g e t i n g P r e c a l c s . p l a y e r R a d i u s ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 d i s t a n c e T o T a r g e t   =   D i s t a n c e 2 D B e t w e e n C a p s u l e s (   t h i s ,   a c t o r   ) ;  
 	 	 	 }  
  
 	 	 	  
 	 	 	 i f   (   d i s t a n c e T o T a r g e t   <   f i n d M o v e T a r g e t D i s t   +   5 . 0 f   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   a c t o r . I s I n C o m b a t ( )   | |   t h i s . I s H a r d L o c k E n a b l e d ( )   )  
 	 	 	 {  
 	 	 	 	 t a r g e t C a p s u l e H e i g h t   =   (   ( C M o v i n g P h y s i c a l A g e n t C o m p o n e n t ) a c t o r . G e t M o v i n g A g e n t C o m p o n e n t ( )   ) . G e t C a p s u l e H e i g h t ( ) ;  
 	 	 	 	 i f   (   t a r g e t C a p s u l e H e i g h t   > =   2 . 0 f   | |   n p c . G e t C u r r e n t S t a n c e ( )   = =   N S _ F l y   )  
 	 	 	 	 { 	  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   d i s t a n c e T o T a r g e t   <   4 0 . 0 f   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 } 	 	 	  
 	 	 }  
 	 	  
 	 	 i f   (   a c t o r . G e t A t t i t u d e G r o u p ( )   = =   ' n p c _ c h a r m e d '   )  
 	 	 {  
 	 	 	 i f   (   t h e G a m e . G e t G l o b a l A t t i t u d e (   G e t B a s e A t t i t u d e G r o u p ( ) ,   a c t o r . G e t B a s e A t t i t u d e G r o u p ( )   )   = =   A I A _ H o s t i l e   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
  
 	 f u n c t i o n   S e t B I s C o m b a t A c t i o n A l l o w e d   (   f l a g   :   b o o l   )  
 	 {  
 	 	 b I s C o m b a t A c t i o n A l l o w e d   =   f l a g ;  
 	 	  
 	 	 i f   (   ! f l a g   )  
 	 	 {  
 	 	 	 S e t B I s I n C o m b a t A c t i o n ( t r u e ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h i s . P r o c e s s L A x i s C a c h i n g ( ) ;  
 	 	 	  
 	 	 }  
 	 	  
 	 	  
 	 }  
 	  
 	 f u n c t i o n   G e t B I s C o m b a t A c t i o n A l l o w e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   b I s C o m b a t A c t i o n A l l o w e d ;  
 	 }  
 	  
 	 f u n c t i o n   S e t C o m b a t A c t i o n (   a c t i o n   :   E B u f f e r A c t i o n T y p e   )  
 	 {  
 	 	 c u r r e n t C o m b a t A c t i o n   =   a c t i o n ;  
 	 }  
 	  
 	 f u n c t i o n   G e t C o m b a t A c t i o n ( )   :   E B u f f e r A c t i o n T y p e  
 	 {  
 	 	 r e t u r n   c u r r e n t C o m b a t A c t i o n ;  
 	 } 	  
  
 	 p r o t e c t e d   f u n c t i o n   W h e n C o m b a t A c t i o n I s F i n i s h e d ( )  
 	 {  
 	 	 i f ( I s T h r o w i n g I t e m ( )   | |   I s T h r o w i n g I t e m W i t h A i m ( )   )  
 	 	 {  
 	 	 	 i f ( i n v . I s I t e m B o m b ( s e l e c t e d I t e m I d ) )  
 	 	 	 {  
 	 	 	 	 B o m b T h r o w A b o r t ( ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 T h r o w i n g A b o r t ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f   (   t h i s . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' D i s m o u n t H o r s e '   )  
 	 	 	 O n R a n g e d F o r c e H o l s t e r (   t r u e   ) ; 	  
 	 	  
 	 	  
 	 }  
  
 	 p u b l i c   f u n c t i o n   I s I n C o m b a t A c t i o n _ A t t a c k ( ) :   b o o l  
 	 {  
 	 	 i f   (   I s I n C o m b a t A c t i o n _ N o n S p e c i a l A t t a c k ( )   | |   I s I n C o m b a t A c t i o n _ S p e c i a l A t t a c k ( )   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e  
 	 	 	 r e t u r n   f a l s e ;  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   I s I n C o m b a t A c t i o n _ N o n S p e c i a l A t t a c k ( ) :   b o o l  
 	 {  
 	 	 i f   (   I s I n C o m b a t A c t i o n ( )   & &   (   G e t C o m b a t A c t i o n ( )   = =   E B A T _ L i g h t A t t a c k   | |   G e t C o m b a t A c t i o n ( )   = =   E B A T _ H e a v y A t t a c k   )   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e  
 	 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s I n S p e c i f i c C o m b a t A c t i o n   (   s p e c i f i c C o m b a t A c t i o n   :   E B u f f e r A c t i o n T y p e   )   :   b o o l  
 	 {  
 	 	 i f   (   I s I n C o m b a t A c t i o n ( )   & &   G e t C o m b a t A c t i o n ( )   = =   s p e c i f i c C o m b a t A c t i o n   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e  
 	 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s I n R u n A n i m a t i o n ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s I n R u n A n i m a t i o n ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   S e t C o m b a t I d l e S t a n c e (   s t a n c e   :   f l o a t   )  
 	 {  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' c o m b a t I d l e S t a n c e ' ,   s t a n c e   ) ;  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' C o m b a t S t a n c e F o r O v e r l a y ' ,   s t a n c e   ) ;  
 	 	  
 	 	 i f   (   s t a n c e   = =   0 . f   )  
 	 	 	 L o g C h a n n e l (   ' C o m b o I n p u t ' ,     " c o m b a t I d l e S t a n c e   =   L e f t "   ) ;  
 	 	 e l s e  
 	 	 	 L o g C h a n n e l (   ' C o m b o I n p u t ' ,     " c o m b a t I d l e S t a n c e   =   R i g h t "   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t C o m b a t I d l e S t a n c e ( )   :   f l o a t  
 	 {  
 	 	  
 	 	 r e t u r n   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t I d l e S t a n c e '   ) ;  
 	 } 	  
  
 	 p r o t e c t e d   v a r   i s R o t a t i n g I n P l a c e 	 :   b o o l ;  
 	 e v e n t   O n R o t a t e I n P l a c e S t a r t ( )  
 	 {  
 	 	 i s R o t a t i n g I n P l a c e   =   t r u e ;  
 	 }  
 	  
 	 e v e n t   O n R o t a t e I n P l a c e E n d ( )  
 	 {  
 	 	 i s R o t a t i n g I n P l a c e   =   f a l s e ;  
 	 } 	  
  
 	 e v e n t   O n F u l l y B l e n d e d I d l e ( )  
 	 {  
 	 	 i f   (   b L A x i s R e l e a s e d   )  
 	 	 {  
 	 	 	 R e s e t R a w P l a y e r H e a d i n g ( ) ;  
 	 	 	 R e s e t C a c h e d R a w P l a y e r H e a d i n g ( ) ;  
 	 	 	 d e f a u l t L o c o m o t i o n C o n t r o l l e r . R e s e t M o v e D i r e c t i o n ( ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   v a r   i s I n I d l e   :   b o o l ;  
 	  
 	 e v e n t   O n P l a y e r I d l e S t a r t ( )  
 	 {  
 	 	 i s I n I d l e   =   t r u e ;  
 	 }  
 	  
 	 e v e n t   O n P l a y e r I d l e E n d ( )  
 	 {  
 	 	 i s I n I d l e   =   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s I n I d l e ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s I n I d l e ;  
 	 }  
 	  
 	 e v e n t   O n R u n L o o p S t a r t ( )  
 	 {  
 	 	 E n a b l e R u n C a m e r a (   t r u e   ) ;  
 	 }  
  
 	 e v e n t   O n R u n L o o p E n d ( )  
 	 {  
 	 	 E n a b l e R u n C a m e r a (   f a l s e   ) ;  
 	 }  
 	  
 	 e v e n t   O n C o m b a t A c t i o n S t a r t B e h g r a p h ( )  
 	 {  
 	 	 v a r   a c t i o n   :   E B u f f e r A c t i o n T y p e ;  
 	 	 v a r   c o s t ,   d e l a y   :   f l o a t ;  
 	  
 	 	  
 	 	  
 	  
 	 	 O n C o m b a t A c t i o n S t a r t ( ) ; 	  
 	 	  
 	 	 a c t i o n   =   P e r f o r m i n g C o m b a t A c t i o n ( ) ;  
 	 	 s w i t c h   (   a c t i o n   )  
 	 	 {  
 	 	 	 c a s e   E B A T _ L i g h t A t t a c k   :  
 	 	 	 {  
 	 	 	 	 a b i l i t y M a n a g e r . G e t S t a m i n a A c t i o n C o s t ( E S A T _ L i g h t A t t a c k ,   c o s t ,   d e l a y ) ;  
 	 	 	 }   b r e a k ;  
 	 	 	 c a s e   E B A T _ H e a v y A t t a c k   :  
 	 	 	 {  
 	 	 	 	 a b i l i t y M a n a g e r . G e t S t a m i n a A c t i o n C o s t ( E S A T _ H e a v y A t t a c k ,   c o s t ,   d e l a y ) ;  
 	 	 	 }   b r e a k ;  
 	 	 	 c a s e   E B A T _ I t e m U s e   :  
 	 	 	 {  
 	 	 	 	 a b i l i t y M a n a g e r . G e t S t a m i n a A c t i o n C o s t ( E S A T _ U s a b l e I t e m ,   c o s t ,   d e l a y ) ;  
 	 	 	 }   b r e a k ;  
 	 	 	 c a s e   E B A T _ P a r r y   :  
 	 	 	 {  
 	 	 	 	 a b i l i t y M a n a g e r . G e t S t a m i n a A c t i o n C o s t ( E S A T _ P a r r y ,   c o s t ,   d e l a y ) ;  
 	 	 	 }   b r e a k ;  
 	 	 	 c a s e   E B A T _ D o d g e   :  
 	 	 	 {  
 	 	 	 	 a b i l i t y M a n a g e r . G e t S t a m i n a A c t i o n C o s t ( E S A T _ D o d g e ,   c o s t ,   d e l a y ) ;  
 	 	 	 }   b r e a k ;  
 	 	 	 c a s e   E B A T _ R o l l   :  
 	 	 	 	 a b i l i t y M a n a g e r . G e t S t a m i n a A c t i o n C o s t ( E S A T _ R o l l ,   c o s t ,   d e l a y ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   E B A T _ S p e c i a l A t t a c k _ L i g h t   :  
 	 	 	 {  
 	 	 	 	 a b i l i t y M a n a g e r . G e t S t a m i n a A c t i o n C o s t ( E S A T _ A b i l i t y ,   c o s t ,   d e l a y ,   0 , 0 ,   G e t S k i l l A b i l i t y N a m e ( S _ S w o r d _ s 0 1 ) ) ;  
 	 	 	 }   b r e a k ;  
 	 	 	 c a s e   E B A T _ S p e c i a l A t t a c k _ H e a v y   :  
 	 	 	 {  
 	 	 	 	 a b i l i t y M a n a g e r . G e t S t a m i n a A c t i o n C o s t ( E S A T _ A b i l i t y ,   c o s t ,   d e l a y ,   0 , 0 ,   G e t S k i l l A b i l i t y N a m e ( S _ S w o r d _ s 0 2 ) ) ;  
 	 	 	 }   b r e a k ;  
 	 	 	 c a s e   E B A T _ R o l l   :  
 	 	 	 {  
 	 	 	 	 a b i l i t y M a n a g e r . G e t S t a m i n a A c t i o n C o s t ( E S A T _ E v a d e ,   c o s t ,   d e l a y ) ;  
 	 	 	 }   b r e a k ;  
 	 	 	  
 	 	 	 d e f a u l t   :  
 	 	 	 	 ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	 i f (   d e l a y   >   0   )  
 	 	 	 P a u s e S t a m i n a R e g e n (   ' I n s i d e C o m b a t A c t i o n '   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   H o l s t e r U s a b l e I t e m ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   h o l s t e r U s a b l e I t e m ;  
 	 }  
  
 	 p r i v a t e   v a r   i s I n G u a r d e d S t a t e   :   b o o l ;  
 	 p u b l i c   f u n c t i o n   I s I n G u a r d e d S t a t e ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s I n G u a r d e d S t a t e ;  
 	 }  
 	  
 	 e v e n t   O n G u a r d e d S t a r t ( )    
 	 {  
 	 	 i s I n P a r r y O r C o u n t e r   =   t r u e ;  
 	 	 i s I n G u a r d e d S t a t e   =   t r u e ;  
 	 }  
 	  
 	 e v e n t   O n G u a r d e d E n d ( )    
 	 {  
 	 	 i s I n P a r r y O r C o u n t e r   =   f a l s e ;  
 	 	 i s I n G u a r d e d S t a t e   =   f a l s e ;  
 	 }  
 	  
 	 p r i v a t e   v a r   r e s t o r e U s a b l e I t e m   :   b o o l ;  
 	 p r i v a t e   v a r   h o l s t e r U s a b l e I t e m   :   b o o l ;  
 	 e v e n t   O n C o m b a t A c t i o n S t a r t ( )  
 	 { 	  
 	 	  
 	 	  
 	 	 B l o c k A c t i o n (   E I A B _ U s a b l e I t e m ,   ' O n C o m b a t A c t i o n S t a r t '   ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ C a l l H o r s e ,   ' O n C o m b a t A c t i o n S t a r t '   ) ;  
 	 	  
 	 	  
 	  
 	 	 L o g C h a n n e l ( ' c o m b a t A c t i o n A l l o w e d ' , " F A L S E   O n C o m b a t A c t i o n S t a r t " ) ;  
 	 	 S e t B I s C o m b a t A c t i o n A l l o w e d (   f a l s e   ) ;  
 	 	 S e t B I s I n p u t A l l o w e d (   f a l s e ,   ' O n C o m b a t A c t i o n S t a r t '   ) ;  
 	 	  
 	 	  
 	 	 C l e a r F i n i s h a b l e E n e m y L i s t (   0 . f ,   0   ) ; 	 	  
 	 	  
 	 	 b I s I n H i t A n i m   =   f a l s e ;  
 	 	  
 	 	  
 	 	  
 	 	 i f   (   r a n g e d W e a p o n   & &   r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '   )  
 	 	 {  
 	 	 	 C l e a n C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	 	 S e t I s A i m i n g C r o s s b o w (   f a l s e   ) ;  
 	 	 	 O n R a n g e d F o r c e H o l s t e r (   f a l s e ,   t r u e   ) ;  
 	 	 }  
 	 	 	  
 	 	  
 	 	 h o l s t e r U s a b l e I t e m   =   f a l s e ; 	  
 	 	 i f   (   t h e P l a y e r . I s H o l d i n g I t e m I n L H a n d ( )   )    
 	 	 {  
 	 	 	 i f   (   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ C a s t S i g n   )  
 	 	 	 	 / /   m o d B e t t e r T o r c h e s N e x t G e n  
 	 	 	 	 h o l s t e r U s a b l e I t e m   =   f a l s e ;  
 	 	 	 e l s e   i f   (   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ A t t a c k   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' C o m b a t F i s t s '   )  
 	 	 	 	 	 / /   m o d B e t t e r T o r c h e s N e x t G e n  
 	 	 	 	 	 h o l s t e r U s a b l e I t e m   =   f a l s e ;  
 	 	 	 }  
 	 	 }  
  
 	 	 i f   (   h o l s t e r U s a b l e I t e m   )  
 	 	 {  
 	 	 	 t h e P l a y e r . S e t P l a y e r A c t i o n T o R e s t o r e   (   P A T R _ N o n e   ) ;  
 	 	 	 t h e P l a y e r . O n U s e S e l e c t e d I t e m (   t r u e   ) ;  
  
 	 	 	 r e s t o r e U s a b l e I t e m   =   t r u e ; 	 	  
 	 	 }  
  
 	 	  
 	 	 i f   (   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   ! =   ( i n t ) C A T _ A t t a c k   & &   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   ! =   ( i n t ) C A T _ P r e A t t a c k   )  
 	 	 {  
 	 	 	 R e m o v e T i m e r (   ' P r o c e s s A t t a c k T i m e r '   ) ;  
 	 	 	 R e m o v e T i m e r (   ' A t t a c k T i m e r E n d '   ) ;  
 	 	 	 U n b l o c k A c t i o n (   E I A B _ D r a w W e a p o n ,   ' O n C o m b a t A c t i o n S t a r t _ A t t a c k '   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	  
 	 	 	 B l o c k A c t i o n (   E I A B _ D r a w W e a p o n ,   ' O n C o m b a t A c t i o n S t a r t _ A t t a c k '   ) ;  
 	 	 } 	 	  
 	 	 	  
 	 	  
 	 }  
  
 	 v a r   i s I n P a r r y O r C o u n t e r   :   b o o l ;  
 	 e v e n t   O n P a r r y O r C o u n t e r S t a r t ( )  
 	 {  
 	 	 i s I n P a r r y O r C o u n t e r   =   t r u e ;  
 	 	 O n C o m b a t A c t i o n S t a r t B e h g r a p h ( ) ;  
 	 }  
 	  
 	 e v e n t   O n P a r r y O r C o u n t e r E n d ( )  
 	 {  
 	 	 i s I n P a r r y O r C o u n t e r   =   f a l s e ;  
 	 	 O n C o m b a t A c t i o n E n d ( ) ;  
 	 	 S e t B I s I n C o m b a t A c t i o n (   f a l s e   ) ;  
 	 }  
 	  
 	  
 	 e v e n t   O n C o m b a t A c t i o n E n d ( )  
 	 {  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ;  
 	 	 v a r   c o m b a t A c t i o n T y p e   :   f l o a t ;  
 	 	  
 	 	 s u p e r . O n C o m b a t A c t i o n E n d ( ) ;  
 	 	  
 	 	  
 	 	  
 	 	 B l o c k A l l A c t i o n s (   ' O n C o m b a t A c t i o n S t a r t ' ,   f a l s e   ) ;  
 	 	  
 	 	 U n b l o c k A c t i o n (   E I A B _ D r a w W e a p o n ,   ' O n C o m b a t A c t i o n S t a r t _ A t t a c k '   ) ;  
 	 	  
 	 	  
 	 	 U n b l o c k A c t i o n (   E I A B _ M o v e m e n t ,   ' C o m b a t A c t i o n F r i e n d l y '   ) ; 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 o T C a m e r a O f f s e t   =   0 . f ;  
 	 	 o T C a m e r a P i t c h O f f s e t   =   0 . f ;  
 	 	  
 	 	  
 	 	 S e t B I s C o m b a t A c t i o n A l l o w e d (   t r u e   ) ;  
 	 	  
 	 	  
 	 	 S e t B I s I n p u t A l l o w e d (   t r u e ,   ' O n C o m b a t A c t i o n E n d '   ) ; 	 	 	  
 	 	 S e t C a n P l a y H i t A n i m (   t r u e   ) ;  
 	 	 E n a b l e F i n d T a r g e t (   t r u e   ) ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 S e t F i n i s h e r V i c t i m (   N U L L   ) ;  
 	 	  
 	 	 O n B l o c k A l l C o m b a t T i c k e t s (   f a l s e   ) ;  
 	 	  
 	 	 L o g S t a m i n a ( " C o m b a t A c t i o n E n d " ) ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 i f ( ! I s D o i n g S p e c i a l A t t a c k ( t r u e ) )  
 	 	 	 S e t A t t a c k A c t i o n N a m e ( ' ' ) ;  
 	 	  
 	 	  
 	 	 c o m b a t A c t i o n T y p e   =   G e t B e h a v i o r V a r i a b l e ( ' c o m b a t A c t i o n T y p e ' ) ;  
 	 	  
 	 	  
 	 	 i f ( G e t B e h a v i o r V a r i a b l e ( ' c o m b a t A c t i o n T y p e ' )   = =   ( i n t ) C A T _ S p e c i a l A t t a c k )  
 	 	 {  
 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . S t o p A n i m a t i o n (   ' c a m e r a _ s h a k e _ l o o p _ l v l 1 _ 1 '   ) ;  
 	 	 	 O n S p e c i a l A t t a c k H e a v y A c t i o n P r o c e s s ( ) ;  
 	 	 }  
 	 	  
 	 	 s u b s t a t e M a n a g e r . R e a c t T o C h a n c e T o F a l l A n d S l i d e ( ) ;  
 	 }  
 	  
 	 e v e n t   O n C o m b a t A c t i o n F r i e n d l y S t a r t ( )  
 	 {  
 	 	 S e t B I s I n C o m b a t A c t i o n F r i e n d l y ( t r u e ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ M o v e m e n t ,   ' C o m b a t A c t i o n F r i e n d l y ' ,   f a l s e ,   f a l s e ,   f a l s e   ) ;  
 	 	 O n C o m b a t A c t i o n S t a r t ( ) ;  
 	 }  
 	  
 	 e v e n t   O n C o m b a t A c t i o n F r i e n d l y E n d ( )  
 	 {  
 	 	 S e t B I s I n C o m b a t A c t i o n F r i e n d l y ( f a l s e ) ;  
 	 	 U n b l o c k A c t i o n (   E I A B _ M o v e m e n t ,   ' C o m b a t A c t i o n F r i e n d l y '   ) ;  
 	 	 O n C o m b a t A c t i o n E n d ( ) ;  
 	 	 S e t B I s I n C o m b a t A c t i o n ( f a l s e ) ;  
 	 	  
 	 } 	  
 	  
 	 e v e n t   O n H i t S t a r t ( )  
 	 {  
 	 	 v a r   t i m e L e f t   :   f l o a t ;  
 	 	 v a r   c u r r e n t E f f e c t s   :   a r r a y < C B a s e G a m e p l a y E f f e c t > ;  
 	 	 v a r   n o n e   	 :   S A b i l i t y A t t r i b u t e V a l u e ;  
  
 	 	 C a n c e l H o l d A t t a c k s ( ) ; 	  
 	 	 W h e n C o m b a t A c t i o n I s F i n i s h e d ( ) ;  
 	 	 i f   (   i s I n F i n i s h e r   )  
 	 	 {  
 	 	 	 i f   (   f i n i s h e r T a r g e t   )  
 	 	 	 	 (   ( C N e w N P C ) f i n i s h e r T a r g e t   ) . S i g n a l G a m e p l a y E v e n t (   ' F i n i s h e r I n t e r r u p t '   ) ;  
 	 	 	 i s I n F i n i s h e r   =   f a l s e ;  
 	 	 	 f i n i s h e r T a r g e t   =   N U L L ;  
 	 	 	 S e t B I s C o m b a t A c t i o n A l l o w e d (   t r u e   ) ;  
 	 	 } 	  
 	 	  
 	 	 b I s I n H i t A n i m   =   t r u e ;  
 	 	  
 	 	 O n C o m b a t A c t i o n S t a r t ( ) ; 	  
 	 	  
 	 	  
 	 	 R e s u m e S t a m i n a R e g e n (   ' I n s i d e C o m b a t A c t i o n '   ) ;  
 	 	  
 	 	 i f (   G e t H e a l t h P e r c e n t s ( )   <   0 . 3 f   )  
 	 	 {  
 	 	 	 P l a y B a t t l e C r y ( ' B a t t l e C r y B a d S i t u a t i o n ' ,   0 . 1 0 f ,   t r u e   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 P l a y B a t t l e C r y ( ' B a t t l e C r y B a d S i t u a t i o n ' ,   0 . 0 5 f ,   t r u e   ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n H i t S t a r t S w i m m i n g ( )  
 	 { 	  
 	 	 O n R a n g e d F o r c e H o l s t e r (   t r u e ,   t r u e ,   f a l s e   ) ;  
 	 }  
 	  
 	 p r i v a t e   v a r   f i n i s h e r S a v e L o c k   :   i n t ;  
 	 e v e n t   O n F i n i s h e r S t a r t ( )  
 	 {  
 	 	 v a r   c u r r e n t E f f e c t s   :   a r r a y < C B a s e G a m e p l a y E f f e c t > ;  
 	 	  
 	 	 t h e G a m e . C r e a t e N o S a v e L o c k ( " F i n i s h e r " , f i n i s h e r S a v e L o c k , t r u e , f a l s e ) ;  
 	 	  
 	 	 i s I n F i n i s h e r   =   t r u e ;  
 	 	  
 	 	 f i n i s h e r T a r g e t   =   s l i d e T a r g e t ;  
 	 	 O n C o m b a t A c t i o n S t a r t ( ) ;  
 	 	  
 	 	 C a n c e l H o l d A t t a c k s ( ) ;  
 	  
 	 	 P l a y F i n i s h e r C a m e r a A n i m a t i o n (   t h e G a m e . G e t S y n c A n i m M a n a g e r ( ) . G e t F i n i s h e r C a m e r a A n i m N a m e ( )   ) ;  
 	 	 t h i s . A d d A n i m E v e n t C a l l b a c k ( ' S y n c E v e n t ' , ' O n F i n i s h e r A n i m E v e n t _ S y n c E v e n t ' ) ;  
 	 	 S e t I m m o r t a l i t y M o d e (   A I M _ I n v u l n e r a b l e ,   A I C _ S y n c e d A n i m   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s P e r f o r m i n g F i n i s h e r ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s I n F i n i s h e r ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   P l a y F i n i s h e r C a m e r a A n i m a t i o n (   c a m e r a A n i m N a m e   :   n a m e   )  
 	 {  
 	 	 v a r   c a m e r a   	 :   C C u s t o m C a m e r a   =   t h e G a m e . G e t G a m e C a m e r a ( ) ;  
 	 	 v a r   a n i m a t i o n 	 	 :   S C a m e r a A n i m a t i o n D e f i n i t i o n ;  
 	 	  
 	 	 i f (   I s L a s t E n e m y K i l l e d ( )   & &   t h e G a m e . G e t W o r l d ( ) . N a v i g a t i o n C i r c l e T e s t (   t h i s . G e t W o r l d P o s i t i o n ( ) ,   3 . f   )   )  
 	 	 {  
 	 	 	 c a m e r a . S t o p A n i m a t i o n ( ' c a m e r a _ s h a k e _ h i t _ l v l 3 _ 1 '   ) ;  
 	 	 	  
 	 	 	 a n i m a t i o n . a n i m a t i o n   =   c a m e r a A n i m N a m e ;  
 	 	 	 a n i m a t i o n . p r i o r i t y   =   C A P _ H i g h e s t ;  
 	 	 	 a n i m a t i o n . b l e n d I n   =   0 . 5 f ; 	  
 	 	 	 a n i m a t i o n . b l e n d O u t   =   0 . 5 f ;   	  
 	 	 	 a n i m a t i o n . w e i g h t   =   1 . f ;  
 	 	 	 a n i m a t i o n . s p e e d 	 =   1 . 0 f ;  
 	 	 	 a n i m a t i o n . r e s e t   =   t r u e ;  
 	 	 	  
 	 	 	 c a m e r a . P l a y A n i m a t i o n (   a n i m a t i o n   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 t h e P l a y e r . E n a b l e M a n u a l C a m e r a C o n t r o l (   f a l s e ,   ' F i n i s h e r '   ) ;  
 	 	 }  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   I s L a s t E n e m y K i l l e d ( )   :   b o o l  
 	 {  
 	 	 v a r   t e m p M o v e T a r g e t s 	 	 :   a r r a y < C A c t o r > ;  
 	 	  
 	 	 F i n d M o v e T a r g e t ( ) ;  
 	 	 t e m p M o v e T a r g e t s   =   G e t M o v e T a r g e t s ( ) ;  
 	 	 i f     (   t e m p M o v e T a r g e t s . S i z e ( )   < =   0   | |   ! t h e P l a y e r . I s T h r e a t (   t e m p M o v e T a r g e t s [ 0 ]   )   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	  
 	 	 r e t u r n   f a l s e ;    
 	 }  
 	  
 	 e v e n t   O n F i n i s h e r A n i m E v e n t _ S y n c E v e n t (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i f   (   f i n i s h e r T a r g e t   )  
 	 	 	 (   ( C N e w N P C ) f i n i s h e r T a r g e t   ) . S i g n a l G a m e p l a y E v e n t ( ' F i n i s h e r K i l l ' ) ;  
 	 	 f i n i s h e r T a r g e t   =   N U L L ;  
 	 }  
 	  
 	 e v e n t   O n F i n i s h e r E n d ( )  
 	 {  
 	 	 i s I n F i n i s h e r   =   f a l s e ;  
 	 	 f i n i s h e r T a r g e t   =   N U L L ;  
 	 	  
 	 	 t h e G a m e . R e l e a s e N o S a v e L o c k ( f i n i s h e r S a v e L o c k ) ;  
 	 	  
 	 	 t h i s . R e m o v e A n i m E v e n t C a l l b a c k ( ' S y n c E v e n t ' ) ;  
 	 	  
 	 	  
 	 	 S e t I m m o r t a l i t y M o d e (   A I M _ N o n e ,   A I C _ S y n c e d A n i m   ) ;  
 	 	 t h e G a m e . R e m o v e T i m e S c a l e (   ' A n i m E v e n t S l o m o M o '   ) ;  
 	 	 A d d T i m e r (   ' F i n i s h e r E n d E n a b l e C a m e r a ' ,   0 . 5 f   ) ;  
 	 	  
 	 	 O n C o m b a t A c t i o n E n d ( ) ;  
 	 	 O n C o m b a t A c t i o n E n d C o m p l e t e ( ) ;  
 	 }  
 	  
 	 p r i v a t e   t i m e r   f u n c t i o n   F i n i s h e r E n d E n a b l e C a m e r a (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 t h e P l a y e r . E n a b l e M a n u a l C a m e r a C o n t r o l (   t r u e ,   ' F i n i s h e r '   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S p a w n F i n i s h e r B l o o d ( )  
 	 {  
 	 	 v a r   w e a p o n E n t i t y 	 	 :   C E n t i t y ;  
 	 	 v a r   w e a p o n S l o t M a t r i x 	 :   M a t r i x ;  
 	 	 v a r   b l o o d F x P o s 	 	 	 :   V e c t o r ;  
 	 	 v a r   b l o o d F x R o t 	 	 	 :   E u l e r A n g l e s ;  
 	 	 v a r   t e m p E n t i t y 	 	 	 :   C E n t i t y ;  
 	 	  
 	 	 w e a p o n E n t i t y   =   t h i s . G e t I n v e n t o r y ( ) . G e t I t e m E n t i t y U n s a f e (   G e t I n v e n t o r y ( ) . G e t I t e m F r o m S l o t ( ' r _ w e a p o n ' )   ) ;  
 	 	 w e a p o n E n t i t y . C a l c E n t i t y S l o t M a t r i x (   ' b l o o d _ f x _ p o i n t ' ,   w e a p o n S l o t M a t r i x   ) ;  
 	 	 b l o o d F x P o s   =   M a t r i x G e t T r a n s l a t i o n (   w e a p o n S l o t M a t r i x   ) ;  
 	 	 b l o o d F x R o t   =   t h i s . G e t W o r l d R o t a t i o n ( ) ;  
 	 	 t e m p E n t i t y   =   t h e G a m e . C r e a t e E n t i t y (   ( C E n t i t y T e m p l a t e ) L o a d R e s o u r c e ( ' f i n i s h e r _ b l o o d ' ) ,   b l o o d F x P o s ,   b l o o d F x R o t ) ;  
 	 	 t e m p E n t i t y . P l a y E f f e c t ( ' c r a w l _ b l o o d ' ) ;  
 	 }  
  
 	  
 	 e v e n t   O n C o m b a t A c t i o n E n d C o m p l e t e ( )  
 	 {  
 	 	 v a r   b u f f   :   C B a s e G a m e p l a y E f f e c t ;  
 	 	  
 	 	 b u f f   =   C h o o s e C u r r e n t C r i t i c a l B u f f F o r A n i m ( ) ;  
 	 	 S e t C o m b a t A c t i o n (   E B A T _ E M P T Y   ) ;  
 	 	  
 	 	  
 	 	 U n b l o c k A c t i o n (   E I A B _ D r a w W e a p o n ,   ' O n C o m b a t A c t i o n S t a r t '   ) ;  
 	 	 U n b l o c k A c t i o n (   E I A B _ O p e n I n v e n t o r y ,   ' O n C o m b a t A c t i o n S t a r t '   ) ;  
 	 	 U n b l o c k A c t i o n (   E I A B _ U s a b l e I t e m ,   ' O n C o m b a t A c t i o n S t a r t '   ) ;  
 	 	  
 	 	 U n b l o c k A c t i o n (   E I A B _ D r a w W e a p o n ,   ' O n C o m b a t A c t i o n S t a r t _ A t t a c k '   ) ; 	 	 	  
 	 	  
 	 	 S e t U n p u s h a b l e T a r g e t (   N U L L   ) ;  
 	 	 S e t B I s I n C o m b a t A c t i o n ( f a l s e ) ;  
 	 	 S e t I s C u r r e n t l y D o d g i n g ( f a l s e ) ;  
 	 	 S e t M o v e T a r g e t C h a n g e A l l o w e d (   t r u e   ) ;  
 	 	 S e t C a n P l a y H i t A n i m (   t r u e   ) ;  
 	 	  
 	 	 S e t F i n i s h e r V i c t i m (   N U L L   ) ;  
 	 	  
 	 	 t h i s . R e m o v e B u f f I m m u n i t y ( E E T _ B u r n i n g ,   ' A n i m E v e n t _ R e m o v e B u r n i n g ' ) ;  
 	 	  
 	 	 i f   (   r a n g e d W e a p o n   & &   r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n W a i t '   & &   ! b u f f   )  
 	 	 {  
 	 	 	 C l e a r C u s t o m O r i e n t a t i o n I n f o S t a c k ( ) ;  
 	 	 	 S e t S l i d e T a r g e t (   N U L L   ) ;  
 	 	 }  
 	 	  
 	 	 U n b l o c k A c t i o n (   E I A B _ C r o s s b o w ,   ' O n F o r c e H o l s t e r '   ) ;  
 	 	 	  
 	 	 s p e c i a l A t t a c k C a m e r a   =   f a l s e ;  
 	 	  
 	 	 b I s R o l l A l l o w e d   =   f a l s e ;  
 	 	  
 	 	 i f   (   b L A x i s R e l e a s e d   )  
 	 	 {  
 	 	 	 R e s e t R a w P l a y e r H e a d i n g ( ) ;  
 	 	 	 R e s e t C a c h e d R a w P l a y e r H e a d i n g ( ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 R e a p p l y C r i t i c a l B u f f ( ) ; 	  
 	 	 S e t B I s I n p u t A l l o w e d (   t r u e ,   ' O n C o m b a t A c t i o n E n d C o m p l e t e '   ) ;  
 	 	  
 	 	  
 	 	 R e s u m e S t a m i n a R e g e n (   ' I n s i d e C o m b a t A c t i o n '   ) ;  
 	 	  
 	 	 b I s I n H i t A n i m   =   f a l s e ;  
 	 	  
 	 	 S e t B I s C o m b a t A c t i o n A l l o w e d (   t r u e   ) ;  
 	 	  
 	 	 m _ L a s t W e a p o n T i p P o s   =   V e c t o r ( 0 ,   0 ,   0 ,   0   ) ;  
 	 	  
 	 	  
 	 	 t h i s . A d d T i m e r ( ' F r e e T i c k e t s ' , 3 . f , f a l s e ) ;  
 	 	  
 	 	  
 	 	  
 	 }  
 	  
 	 e v e n t   O n M o v e m e n t F u l l y B l e n d e d ( )    
 	 {  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' i s P e r f o r m i n g S p e c i a l A t t a c k ' ,   0 . f   ) ; 	  
 	  
 	 	 i f   (   r e s t o r e U s a b l e I t e m   )  
 	 	 {  
 	 	 	 r e s t o r e U s a b l e I t e m   =   f a l s e ;  
 	 	 	 S e t P l a y e r A c t i o n T o R e s t o r e   (   P A T R _ D e f a u l t   ) ;  
 	 	 	 O n U s e S e l e c t e d I t e m ( ) ;  
 	 	 } 	  
 	 }  
 	  
 	 e v e n t   O n C o m b a t M o v e m e n t S t a r t ( )  
 	 {  
 	 	 S e t C o m b a t I d l e S t a n c e (   1 . f   ) ;  
 	 	 O n C o m b a t A c t i o n E n d C o m p l e t e ( ) ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   F r e e T i c k e t s (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 F r e e T i c k e t A t C o m b a t T a r g e t ( ) ;  
 	 }  
 	  
 	  
 	  
 	 e v e n t   O n G u a r d e d R e l e a s e d ( ) { }  
 	 e v e n t   O n P e r f o r m A t t a c k (   p l a y e r A t t a c k T y p e   :   n a m e   ) { }  
 	 e v e n t   O n P e r f o r m E v a d e (   p l a y e r E v a d e T y p e   :   E P l a y e r E v a d e T y p e   ) { } 	  
 	 e v e n t   O n I n t e r r u p t A t t a c k ( ) { }  
 	 e v e n t   O n P e r f o r m G u a r d ( ) { }  
 	 e v e n t   O n S p a w n H o r s e ( ) { }  
 	 e v e n t   O n D i s m o u n t A c t i o n S c r i p t C a l l b a c k ( ) { }  
 	  
 	 e v e n t   O n H o r s e S u m m o n S t a r t ( )  
 	 {  
 	 	 t h e P l a y e r . B l o c k A c t i o n ( E I A B _ C a l l H o r s e , 	 	 	 ' H o r s e S u m m o n ' ) ;  
 	 	 t h e P l a y e r . B l o c k A c t i o n ( E I A B _ S i g n s , 	 	 	 	 ' H o r s e S u m m o n ' ) ;  
 	 	 t h e P l a y e r . B l o c k A c t i o n ( E I A B _ C r o s s b o w , 	 	 	 ' H o r s e S u m m o n ' ) ;  
 	 	 t h e P l a y e r . B l o c k A c t i o n ( E I A B _ U s a b l e I t e m , 	 	 	 ' H o r s e S u m m o n ' ) ;  
 	 	 t h e P l a y e r . B l o c k A c t i o n ( E I A B _ T h r o w B o m b , 	 	 	 ' H o r s e S u m m o n ' ) ;  
 	 	 t h e P l a y e r . B l o c k A c t i o n ( E I A B _ S w o r d A t t a c k , 	 	 	 ' H o r s e S u m m o n ' ) ;  
 	 	 t h e P l a y e r . B l o c k A c t i o n ( E I A B _ J u m p , 	 	 	 	 ' H o r s e S u m m o n ' ) ;  
 	 	 t h e P l a y e r . B l o c k A c t i o n ( E I A B _ D o d g e , 	 	 	 	 ' H o r s e S u m m o n ' ) ;  
 	 	 t h e P l a y e r . B l o c k A c t i o n ( E I A B _ L i g h t A t t a c k s , 	 	 ' H o r s e S u m m o n ' ) ;  
 	 	 t h e P l a y e r . B l o c k A c t i o n ( E I A B _ H e a v y A t t a c k s , 	 	 ' H o r s e S u m m o n ' ) ;  
 	 	 t h e P l a y e r . B l o c k A c t i o n ( E I A B _ S p e c i a l A t t a c k L i g h t , 	 ' H o r s e S u m m o n ' ) ;  
 	 	 t h e P l a y e r . B l o c k A c t i o n ( E I A B _ S p e c i a l A t t a c k H e a v y , 	 ' H o r s e S u m m o n ' ) ;  
 	 	  
 	 	 h o r s e S u m m o n T i m e S t a m p   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 }  
 	  
 	 e v e n t   O n H o r s e S u m m o n S t o p ( )  
 	 {  
 	 	 t h e P l a y e r . B l o c k A l l A c t i o n s ( ' H o r s e S u m m o n ' , f a l s e ) ;  
 	 }  
 	  
 	  
 	 e v e n t   O n C o m b a t A c t i o n S t a r t V e h i c l e (   a c t i o n   :   E V e h i c l e C o m b a t A c t i o n   )  
 	 {  
 	 	 t h i s . S e t B I s C o m b a t A c t i o n A l l o w e d (   f a l s e   ) ;  
 	 	  
 	 	 i f   (   a c t i o n   ! =   E H C A _ S h o o t C r o s s b o w   )  
 	 	 {  
 	 	 	 S e t I s A i m i n g C r o s s b o w (   f a l s e   ) ;  
 	 	 	 O n R a n g e d F o r c e H o l s t e r ( ) ;  
 	 	 } 	 	  
 	 }  
 	  
 	 e v e n t   O n C o m b a t A c t i o n E n d V e h i c l e ( )  
 	 {  
 	 	 t h i s . S e t B I s C o m b a t A c t i o n A l l o w e d (   t r u e   ) ;  
 	 }  
  
 	  
 	  
 	  
 	  
 	 p r o t e c t e d   f u n c t i o n   C r i t i c a l B u f f I n f o r m B e h a v i o r ( b u f f   :   C B a s e G a m e p l a y E f f e c t )  
 	 {  
 	 	  
 	 	 	 i f (   ! C a n A n i m a t i o n R e a c t T o C r i t i c a l S t a t e (   b u f f   )   )  
 	 	 	 {  
 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	 	  
  
  
 	 	 	  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' C r i t i c a l S t a t e T y p e ' ,   ( i n t ) G e t B u f f C r i t i c a l T y p e ( b u f f )   ) ;  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' b C r i t i c a l S t a t e ' ,   1 ) ; 	  
 	 	  
 	 	 	 i f ( C r i t i c a l B u f f U s e s F u l l B o d y A n i m ( b u f f ) )  
 	 	 	 	 R a i s e E v e n t ( ' C r i t i c a l S t a t e ' ) ;  
 	 	 	  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' I s I n A i r ' ,   ( i n t ) I s I n A i r ( ) ) ;  
 	 	 	  
 	 	 	 L o g C r i t i c a l ( " S e n d i n g   p l a y e r   c r i t i c a l   s t a t e   e v e n t   f o r   < < "   +   b u f f . G e t E f f e c t T y p e ( )   +   " > > " ) ;  
 	 	 	  
 	 	  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   C a n A n i m a t i o n R e a c t T o C r i t i c a l S t a t e (   b u f f   :   C B a s e G a m e p l a y E f f e c t   )   :   b o o l  
 	 {  
 	 	 v a r   b u f f C r i t i c a l 	 :   W 3 C r i t i c a l E f f e c t ;  
 	 	 v a r   b u f f C r i t i c a l D O T 	 :   W 3 C r i t i c a l D O T E f f e c t ;  
 	 	 v a r   i s H e a v y C r i t i c a l 	 :   b o o l ;  
 	 	  
 	 	 i s H e a v y C r i t i c a l 	 =   f a l s e ;  
 	 	  
 	 	  
 	 	 b u f f C r i t i c a l 	 =   (   W 3 C r i t i c a l E f f e c t   )   b u f f ;  
 	 	 i f (   b u f f C r i t i c a l   )  
 	 	 {  
 	 	 	 i s H e a v y C r i t i c a l 	 =   b u f f C r i t i c a l . e x p l o r a t i o n S t a t e H a n d l i n g   = =   E C H _ H a n d l e N o w ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 b u f f C r i t i c a l D O T 	 =   (   W 3 C r i t i c a l D O T E f f e c t   )   b u f f ;  
 	 	 	 i f (   b u f f C r i t i c a l D O T   )  
 	 	 	 {  
 	 	 	 	 i s H e a v y C r i t i c a l 	 =   b u f f C r i t i c a l D O T . e x p l o r a t i o n S t a t e H a n d l i n g   = =   E C H _ H a n d l e N o w ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   ! i s H e a v y C r i t i c a l   )  
 	 	 {  
 	 	 	 i f (   ! C a n R e a c t T o C r i t i c a l S t a t e ( )   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C a n R e a c t T o C r i t i c a l S t a t e ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   s u b s t a t e M a n a g e r . C a n R e a c t T o H a r d C r i t i c a l S t a t e ( ) ;  
 	 }  
 	 	  
 	 e v e n t   O n C r i t i c a l S t a t e A n i m S t a r t ( )  
 	 {  
 	 	 v a r   h e a d i n g   :   f l o a t ;  
 	 	 v a r   n e w C r i t i c a l   :   E C r i t i c a l S t a t e T y p e ;  
 	 	 v a r   n e w R e q C S   :   C B a s e G a m e p l a y E f f e c t ;  
 	 	  
 	 	 O n C o m b a t A c t i o n E n d C o m p l e t e ( ) ;  
 	 	  
 	 	  
 	 	 n e w R e q C S   =   n e w R e q u e s t e d C S ;  
 	 	 i f ( s u p e r . O n C r i t i c a l S t a t e A n i m S t a r t ( ) )  
 	 	 {  
 	 	 	  
 	 	 	 R e m o v e T i m e r (   ' I s I t e m U s e I n p u t H e l d '   ) ;  
 	 	 	 k e e p R e q u e s t i n g C r i t i c a l A n i m S t a r t   =   f a l s e ;  
 	 	 	 C a n c e l H o l d A t t a c k s ( ) ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 i f ( ! I s U s i n g V e h i c l e ( ) )  
 	 	 	 {  
 	 	 	 	 n e w C r i t i c a l   =   G e t B u f f C r i t i c a l T y p e ( n e w R e q C S ) ;  
 	 	 	 	 i f ( n e w C r i t i c a l   = =   E C S T _ H e a v y K n o c k d o w n    
 	 	 	 	 	 | |   n e w C r i t i c a l   = =   E C S T _ K n o c k d o w n    
 	 	 	 	 	 | |   n e w C r i t i c a l   = =   E C S T _ S t a g g e r    
 	 	 	 	 	 | |   n e w C r i t i c a l   = =   E C S T _ R a g d o l l    
 	 	 	 	 	 | |   n e w C r i t i c a l   = =   E C S T _ L o n g S t a g g e r   )  
 	 	 	 	 {  
 	 	 	 	 	 i f ( n e w R e q C S . G e t C r e a t o r ( ) )  
 	 	 	 	 	 	 h e a d i n g   =   V e c H e a d i n g ( n e w R e q C S . G e t C r e a t o r ( ) . G e t W o r l d P o s i t i o n ( )   -   G e t W o r l d P o s i t i o n ( ) ) ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 h e a d i n g   =   G e t H e a d i n g ( ) ;  
 	 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 S e t C u s t o m R o t a t i o n (   ' K n o c k d o w n ' ,   h e a d i n g ,   2 1 6 0 . f ,   0 . 1 f ,   t r u e   ) ;  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   n e w C r i t i c a l   ! =   E C S T _ S t a g g e r     & &   n e w C r i t i c a l   ! =   E C S T _ L o n g S t a g g e r   )  
 	 	 	 	 	 	 s u b s t a t e M a n a g e r . R e a c t O n C r i t i c a l S t a t e (   t r u e   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . C r e a t e R e a c t i o n E v e n t I f P o s s i b l e (   t h i s ,   ' C r i t i c a l E f f e c t S t a r t ' ,   - 1 ,   3 0 . 0 f ,   - 1 . f ,   - 1 ,   t r u e   ) ;    
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   S t a r t C S A n i m ( b u f f   :   C B a s e G a m e p l a y E f f e c t )   :   b o o l  
 	 {  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' b C r i t i c a l S t o p p e d ' ,   0   ) ;  
  
 	 	 i f ( s u p e r . S t a r t C S A n i m ( b u f f ) )  
 	 	 {  
 	 	 	 i f ( ! C r i t i c a l B u f f U s e s F u l l B o d y A n i m ( b u f f ) )  
 	 	 	 {  
 	 	 	 	 O n C r i t i c a l S t a t e A n i m S t a r t ( ) ;  
 	 	 	 }  
 	 	  
 	 	 	 R e s u m e S t a m i n a R e g e n (   ' I n s i d e C o m b a t A c t i o n '   ) ;  
 	 	  
 	 	 	 k e e p R e q u e s t i n g C r i t i c a l A n i m S t a r t   =   t r u e ;  
 	 	 	 A d d T i m e r ( ' R e q u e s t C r i t i c a l A n i m S t a r t ' ,   0 ,   t r u e ) ;  
 	 	 	  
 	 	 	  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C r i t i c a l E f f e c t A n i m a t i o n I n t e r r u p t e d ( r e a s o n   :   s t r i n g )   :   b o o l  
 	 {  
 	 	 v a r   r e t   :   b o o l ; 	  
 	 	  
 	 	 L o g C r i t i c a l P l a y e r ( " R 4 P l a y e r . C r i t i c a l E f f e c t A n i m a t i o n I n t e r r u p t e d ( )   -   b e c a u s e :   "   +   r e a s o n ) ;  
 	 	  
 	 	 r e t   =   s u p e r . C r i t i c a l E f f e c t A n i m a t i o n I n t e r r u p t e d ( r e a s o n ) ;  
 	 	  
 	 	 i f ( r e t )  
 	 	 {  
 	 	 	 k e e p R e q u e s t i n g C r i t i c a l A n i m S t a r t   =   f a l s e ;  
 	 	 }  
 	 	 	  
 	 	 s u b s t a t e M a n a g e r . R e a c t O n C r i t i c a l S t a t e (   f a l s e   ) ;  
 	 	  
 	 	 r e t u r n   r e t ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C r i t i c a l S t a t e A n i m S t o p p e d ( f o r c e R e m o v e B u f f   :   b o o l )  
 	 {  
 	 	 L o g C r i t i c a l P l a y e r ( " R 4 P l a y e r . C r i t i c a l S t a t e A n i m S t o p p e d ( )   -   f o r c e d :   "   +   f o r c e R e m o v e B u f f ) ;  
 	 	  
 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . C r e a t e R e a c t i o n E v e n t I f P o s s i b l e (   t h i s ,   ' R e c o v e r e d F r o m C r i t i c a l E f f e c t ' ,   - 1 ,   3 0 . 0 f ,   - 1 . f ,   - 1 ,   t r u e   ) ;    
 	 	 s u p e r . C r i t i c a l S t a t e A n i m S t o p p e d ( f o r c e R e m o v e B u f f ) ;  
 	 	  
 	 	 s u b s t a t e M a n a g e r . R e a c t O n C r i t i c a l S t a t e (   f a l s e   ) ;  
 	 }  
 	  
 	  
 	 t i m e r   f u n c t i o n   R e q u e s t C r i t i c a l A n i m S t a r t ( d t   :   f l o a t ,   i d   :   i n t )  
 	 { 	  
 	 	 i f ( k e e p R e q u e s t i n g C r i t i c a l A n i m S t a r t )  
 	 	 {  
 	 	 	 i f ( n e w R e q u e s t e d C S   & &   n e w R e q u e s t e d C S . G e t D u r a t i o n L e f t ( )   >   0 )  
 	 	 	 {  
 	 	 	 	 C r i t i c a l B u f f I n f o r m B e h a v i o r ( n e w R e q u e s t e d C S ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 k e e p R e q u e s t i n g C r i t i c a l A n i m S t a r t   =   f a l s e ;  
 	 	 	 	 R e m o v e T i m e r ( ' R e q u e s t C r i t i c a l A n i m S t a r t ' ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 R e m o v e T i m e r ( ' R e q u e s t C r i t i c a l A n i m S t a r t ' ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n R a g d o l l U p d a t e ( p r o g r e s s   :   f l o a t )  
 	 {  
 	 	  
 	 	  
 	 	 S e t I s I n A i r ( p r o g r e s s   = =   0 ) ;  
 	 }  
  
 	  
 	 e v e n t   O n R a g d o l l O n G r o u n d ( )  
 	 {  
 	 	  
 	 	 T r y T o E n d R a g d o l l O n G r o u n d (   0 . 0 f   ) ;  
 	 }  
 	  
 	 e v e n t   O n R a g d o l l I n A i r ( )  
 	 {  
 	 	 R e m o v e T i m e r ( ' T r y T o E n d R a g d o l l O n G r o u n d ' ) ;  
 	 }  
  
 	 e v e n t   O n N o L o n g e r I n R a g d o l l ( )  
 	 {  
 	 	 R e m o v e T i m e r ( ' T r y T o E n d R a g d o l l O n G r o u n d ' ) ;  
 	 }  
  
 	 t i m e r   f u n c t i o n   T r y T o E n d R a g d o l l O n G r o u n d (   t d   :   f l o a t ,   o p t i o n a l   i d   :   i n t )  
 	 {  
 	 	 v a r   c r i t i c a l   :   C B a s e G a m e p l a y E f f e c t ;  
 	 	 v a r   t y p e   :   E E f f e c t T y p e ;  
  
 	 	 c r i t i c a l   =   G e t C u r r e n t l y A n i m a t e d C S ( ) ;  
 	 	 i f ( c r i t i c a l )  
 	 	 {  
 	 	 	 t y p e   =   c r i t i c a l . G e t E f f e c t T y p e ( ) ;  
 	 	 	 i f ( t y p e   = =   E E T _ K n o c k d o w n   | |   t y p e   = =   E E T _ H e a v y K n o c k d o w n   | |   t y p e   = =   E E T _ R a g d o l l )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 i f   ( c r i t i c a l . G e t T i m e A c t i v e ( )   > =   2 . 5 f )  
 	 	 	 	 {  
 	 	 	 	 	 S e t I s I n A i r ( f a l s e ) ;  
 	 	 	 	 	 R e q u e s t C r i t i c a l A n i m S t o p ( ) ;  
 	 	 	 	 	 R e m o v e T i m e r ( ' T r y T o E n d R a g d o l l O n G r o u n d ' ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 A d d T i m e r ( ' T r y T o E n d R a g d o l l O n G r o u n d ' ,   0 . 2 f ,   t r u e ) ;  
 	 	 	 	 }  
 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 R e m o v e T i m e r ( ' T r y T o E n d R a g d o l l O n G r o u n d ' ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R e q u e s t C r i t i c a l A n i m S t o p ( o p t i o n a l   d o n t S e t C r i t i c a l T o S t o p p e d   :   b o o l )  
 	 {  
 	 	 v a r   b u f f   :   C B a s e G a m e p l a y E f f e c t ;  
 	 	  
 	 	 b u f f   =   G e t C u r r e n t l y A n i m a t e d C S ( ) ;  
 	 	 i f ( b u f f   & &   ! C r i t i c a l B u f f U s e s F u l l B o d y A n i m ( b u f f ) )  
 	 	 { 	 	 	  
 	 	 	 C r i t i c a l S t a t e A n i m S t o p p e d ( f a l s e ) ; 	 	 	  
 	 	 }  
 	 	  
 	 	 i f ( ! b u f f   | |   ! C r i t i c a l B u f f U s e s F u l l B o d y A n i m ( b u f f ) )  
 	 	 {  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' b C r i t i c a l S t a t e ' ,   0 ) ;  
 	 	 }  
 	  
 	 	 s u p e r . R e q u e s t C r i t i c a l A n i m S t o p ( d o n t S e t C r i t i c a l T o S t o p p e d ) ;  
 	 }  
 	  
 	  
 	  
  
 	 p u b l i c   f u n c t i o n   S i m u l a t e B u f f T i m e P a s s i n g ( s i m u l a t e d T i m e   :   f l o a t )  
 	 {  
 	 	 e f f e c t M a n a g e r . S i m u l a t e B u f f T i m e P a s s i n g ( s i m u l a t e d T i m e ) ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   A d d E f f e c t D e f a u l t ( e f f e c t T y p e   :   E E f f e c t T y p e ,   c r e a t   :   C G a m e p l a y E n t i t y ,   s r c N a m e   :   s t r i n g ,   o p t i o n a l   i s S i g n E f f e c t   :   b o o l )   :   E E f f e c t I n t e r a c t  
 	 {  
 	 	 v a r   p a r a m s   :   S C u s t o m E f f e c t P a r a m s ;  
 	 	  
 	 	  
 	 	 i f ( e f f e c t T y p e   = =   E E T _ S t a g g e r   | |   e f f e c t T y p e   = =   E E T _ L o n g S t a g g e r   | |   e f f e c t T y p e   = =   E E T _ K n o c k d o w n   | |   e f f e c t T y p e   = =   E E T _ H e a v y K n o c k d o w n )  
 	 	 {  
 	 	 	 p a r a m s . e f f e c t T y p e   =   e f f e c t T y p e ;  
 	 	 	 p a r a m s . c r e a t o r   =   c r e a t ;  
 	 	 	 p a r a m s . s o u r c e N a m e   =   s r c N a m e ;  
 	 	 	 p a r a m s . i s S i g n E f f e c t   =   i s S i g n E f f e c t ;  
 	 	 	  
 	 	 	 i f   (   e f f e c t T y p e   = =   E E T _ S t a g g e r   )  
 	 	 	 	 p a r a m s . d u r a t i o n   =   1 . 8 3 ;  
 	 	 	 e l s e   i f   (   e f f e c t T y p e   = =   E E T _ L o n g S t a g g e r   )  
 	 	 	 	 p a r a m s . d u r a t i o n   =   4 ;  
 	 	 	 e l s e   i f   (   e f f e c t T y p e   = =   E E T _ K n o c k d o w n   )    
 	 	 	 	 p a r a m s . d u r a t i o n   =   2 . 5 ;  
 	 	 	 e l s e   i f   (   e f f e c t T y p e   = =   E E T _ H e a v y K n o c k d o w n   )    
 	 	 	 	 p a r a m s . d u r a t i o n   =   4 ;  
 	 	 	 	  
 	 	 	 r e t u r n   s u p e r . A d d E f f e c t C u s t o m ( p a r a m s ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n   s u p e r . A d d E f f e c t D e f a u l t ( e f f e c t T y p e ,   c r e a t ,   s r c N a m e ,   i s S i g n E f f e c t ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   C h e a t R e s u r r e c t ( )  
 	 {  
 	 	 v a r   i t e m s   	 	 :   a r r a y <   S I t e m U n i q u e I d   > ;  
 	 	 v a r   i ,   s i z e ,   i t e m L e v e l ,   m a x P r i c e ,   i t e m P r i c e   	 :   i n t ;  
 	 	 v a r   i t e m T o E q u i p   :   S I t e m U n i q u e I d ;  
  
 	 	 i f ( I s A l i v e ( ) )  
 	 	 	 r e t u r n ;  
 	 	 	  
 	 	  
 	 	 i f   (   ! t h e G a m e . G e t G u i M a n a g e r ( ) . G e t R o o t M e n u ( )   )  
 	 	 {  
 	 	 	 L o g ( "   * * *   C a l l   t h i s   f u n c t i o n   a f t e r   D e a t h S c r e e n   a p p e a r s   * * *   " ) ;  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 t h e G a m e . R e m o v e T i m e S c a l e (   t h e G a m e . G e t T i m e s c a l e S o u r c e ( E T S _ D e b u g I n p u t )   ) ;  
 	 	  
 	 	 S e t A l i v e ( t r u e ) ;  
 	 	  
 	 	 S e t K i n e m a t i c ( t r u e ) ;  
 	  
 	 	 E n a b l e F i n d T a r g e t (   t r u e   ) ;  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' R a g d o l l _ W e i g h t ' ,   0 . f   ) ;  
 	 	 R a i s e F o r c e E v e n t (   ' R e c o v e r F r o m R a g d o l l '   ) ;  
 	 	 S e t C a n P l a y H i t A n i m (   t r u e   ) ;  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' C r i t i c a l S t a t e T y p e ' ,   ( i n t ) E C S T _ N o n e   ) ; 	 	  
 	 	 G o T o S t a t e I f N e w ( ' E x p l o r a t i o n ' ) ; 	  
  
 	 	 (   ( C D i s m e m b e r m e n t C o m p o n e n t ) t h i s . G e t C o m p o n e n t (   ' D i s m e m b e r m e n t '   )   ) . C l e a r V i s i b l e W o u n d ( ) ;  
 	 	  
 	 	 S e t I s I n A i r ( f a l s e ) ; 	  
 	 	  
 	 	 t h e I n p u t . S e t C o n t e x t ( ' E x p l o r a t i o n ' ) ;  
 	 	  
 	 	 R e s e t D e a t h T y p e ( ) ;  
 	 	  
 	 	 F o r c e U n l o c k A l l I n p u t A c t i o n s ( f a l s e ) ;  
 	 	  
 	 	 t h e G a m e . C l o s e M e n u ( ' D e a t h S c r e e n M e n u ' ) ;  
 	 	  
 	 	  
 	 	 t h e S o u n d . L e a v e G a m e S t a t e ( E S G S _ D e a t h ) ;  
  
 	 	  
 	   	 a b i l i t y M a n a g e r . F o r c e S e t S t a t ( B C S _ V i t a l i t y ,   G e t S t a t M a x ( B C S _ V i t a l i t y ) ) ;  
 	 	 e f f e c t M a n a g e r . S t o p V i t a l i t y R e g e n ( ) ;  
 	 	 a b i l i t y M a n a g e r . F o r c e S e t S t a t (   B C S _ A i r   ,   1 0 0 . f   ) ;  
 	 	 e f f e c t M a n a g e r . S t o p A i r R e g e n ( ) ;  
 	 	 a b i l i t y M a n a g e r . F o r c e S e t S t a t (   B C S _ S t a m i n a   ,   1 0 0 . f   ) ;  
 	 	 e f f e c t M a n a g e r . S t o p S t a m i n a R e g e n ( ) ;  
 	 	 a b i l i t y M a n a g e r . F o r c e S e t S t a t (   B C S _ T o x i c i t y   ,   0 . f   ) ;  
 	 	 a b i l i t y M a n a g e r . F o r c e S e t S t a t (   B C S _ F o c u s   ,   0 . f   ) ;  
 	 	 G e t W i t c h e r P l a y e r ( ) . U p d a t e E n c u m b r a n c e ( ) ;  
  
 	 	  
 	 	 i f   (   ! i n v . I s T h e r e I t e m O n S l o t (   E E S _ S t e e l S w o r d   )   )  
 	 	 {  
 	 	 	 i t e m s   =   i n v . G e t I t e m s B y C a t e g o r y (   ' s t e e l s w o r d '   ) ;  
 	 	 }  
 	 	 e l s e   i f   (   ! i n v . I s T h e r e I t e m O n S l o t (   E E S _ S i l v e r S w o r d   )   )  
 	 	 {  
 	 	 	 i t e m s   =   i n v . G e t I t e m s B y C a t e g o r y (   ' s i l v e r s w o r d '   ) ;  
 	 	 }  
 	 	  
 	 	 s i z e   =   i t e m s . S i z e ( ) ;  
 	 	 m a x P r i c e   =   - 1 ;  
 	 	 f o r   (   i   =   0 ;   i   <   s i z e ;   i   + =   1   )  
 	 	 {  
 	 	 	 i t e m P r i c e   =   i n v . G e t I t e m P r i c e ( i t e m s [ i ] ) ;  
 	 	 	 i t e m L e v e l   =   i n v . G e t I t e m L e v e l ( i t e m s [ i ] ) ;  
 	 	 	 i f   (   i t e m L e v e l   < =   G e t L e v e l ( )   & &   i t e m P r i c e   >   m a x P r i c e   )  
 	 	 	 {  
 	 	 	 	 m a x P r i c e   =   i t e m P r i c e ;  
 	 	 	 	 i t e m T o E q u i p   =   i t e m s [ i ] ;  
 	 	 	 }  
 	 	 }  
 	 	 i f (   i n v . I s I d V a l i d (   i t e m T o E q u i p   )   )  
 	 	 {  
 	 	 	 E q u i p I t e m (   i t e m T o E q u i p   ,   ,   t r u e   ) ;  
 	 	 }  
  
 	 	 t h e G a m e . R e l e a s e N o S a v e L o c k ( d e a t h N o S a v e L o c k ) ;  
 	 }  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   S e t I s I n s i d e I n t e r a c t i o n ( b   :   b o o l ) 	 	 	 	 { i s I n s i d e I n t e r a c t i o n   =   b ; }  
 	 p u b l i c   f u n c t i o n   I s I n s i d e I n t e r a c t i o n ( )   :   b o o l 	 	 	 	 	 { r e t u r n   i s I n s i d e I n t e r a c t i o n ; }  
 	  
 	 p u b l i c   f u n c t i o n   S e t I s I n s i d e H o r s e I n t e r a c t i o n (   b   :   b o o l ,   h o r s e   :   C E n t i t y   )  
 	 {  
 	 	  
 	 	 i f ( b )  
 	 	 	 h o r s e . S e t B e h a v i o r V a r i a b l e (   ' h o r s e P e t t i n g ' ,   1 . 0 f   ) ;  
 	 	 e l s e   i f ( ! i s P e t t i n g H o r s e )  
 	 	 	 h o r s e I n t e r a c t i o n S o u r c e . S e t B e h a v i o r V a r i a b l e (   ' h o r s e P e t t i n g ' ,   0 . 0 f   ) ;  
 	 	  
 	  
 	 	 i s I n s i d e H o r s e I n t e r a c t i o n   =   b ;  
 	 	 h o r s e I n t e r a c t i o n S o u r c e   =   h o r s e ;  
 	 }  
 	 p u b l i c   f u n c t i o n   I s I n s i d e H o r s e I n t e r a c t i o n ( )   :   b o o l 	 	 	 	 { r e t u r n   i s I n s i d e H o r s e I n t e r a c t i o n ; }  
 	 	  
 	  
 	 e v e n t   O n I n t e r a c t i o n A c t i v a t i o n T e s t (   i n t e r a c t i o n C o m p o n e n t N a m e   :   s t r i n g ,   a c t i v a t o r   :   C E n t i t y   )  
 	 {  
 	 	 i f   (   i n t e r a c t i o n C o m p o n e n t N a m e   = =   " C l i m b L a d d e r "   )  
 	 	 {  
 	 	 	 i f (   P l a y e r H a s L a d d e r E x p l o r a t i o n R e a d y ( )   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   P l a y e r H a s L a d d e r E x p l o r a t i o n R e a d y ( )   :   b o o l  
 	 {  
 	 	 i f (   ! s u b s t a t e M a n a g e r . C a n I n t e r a c t ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f (   ! s u b s t a t e M a n a g e r . m _ S h a r e d D a t a O . H a s V a l i d L a d d e r E x p l o r a t i o n ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   S e t G u a r d e d ( f l a g   :   b o o l )  
 	 {  
 	 	 s u p e r . S e t G u a r d e d ( f l a g ) ;  
 	 	  
 	 	 i f ( f l a g   & &   F a c t s Q u e r y S u m ( " t u t _ f i g h t _ u s e _ s l o m o " )   >   0 )  
 	 	 {  
 	 	 	 t h e G a m e . R e m o v e T i m e S c a l e (   t h e G a m e . G e t T i m e s c a l e S o u r c e ( E T S _ T u t o r i a l F i g h t )   ) ;  
 	 	 	 F a c t s R e m o v e ( " t u t _ f i g h t _ s l o m o _ O N " ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   I s G u a r d e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   s u p e r . I s G u a r d e d ( )   & &   (   ! r a n g e d W e a p o n   | |   r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S t a t e _ W e a p o n W a i t '   ) ;  
 	 }  
 	  
 	  
 	  
 	 	  
 	 p u b l i c   f u n c t i o n   G e t S e l e c t e d I t e m I d ( )   :   S I t e m U n i q u e I d 	 	 	 { r e t u r n   s e l e c t e d I t e m I d ; }  
 	 p u b l i c   f u n c t i o n   C l e a r S e l e c t e d I t e m I d ( ) 	 	 	 	 	 	 { s e l e c t e d I t e m I d   =   G e t I n v a l i d U n i q u e I d ( ) ; }  
 	  
 	 p u b l i c   f u n c t i o n   I s H o l d i n g I t e m I n L H a n d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   c u r r e n t l y E q u i p e d I t e m L   ! =   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t C u r r e n t l y U s e d I t e m L   ( )   :   W 3 U s a b l e I t e m  
 	 {  
 	 	 r e t u r n   c u r r e n t l y U s e d I t e m L ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t P l a y e r A c t i o n T o R e s t o r e   (   a c t i o n T o R e s t o r e T y p e   :   E P l a y e r A c t i o n T o R e s t o r e   )  
 	 {  
 	 	 p l a y e r A c t i o n T o R e s t o r e   =   a c t i o n T o R e s t o r e T y p e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s C u r r e n t l y U s i n g I t e m L   ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   c u r r e n t l y U s i n g I t e m ;  
 	 }  
 	  
 	 f u n c t i o n   B l o c k S l o t s O n L I t e m U s e   ( )  
 	 {  
 	 	 v a r   s l o t s T o B l o c k   :   a r r a y < n a m e > ;  
 	 	  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' S l o t 1 '   ) ;  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' S l o t 2 '   ) ;  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' S l o t 3 '   ) ;  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' S l o t 4 '   ) ;  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' S l o t 5 '   ) ;  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' Y r d e n '   ) ;  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' Q u e n '   ) ;  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' I g n i '   ) ;  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' A x i i '   ) ;  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' A a r d '   ) ;  
 	 	  
 	 	  
 	 	 E n a b l e R a d i a l S l o t s W i t h S o u r c e   (   f a l s e ,   s l o t s T o B l o c k ,   ' u s a b l e I t e m L '   ) ;  
 	 }  
 	  
 	 f u n c t i o n   U n b l o c k S l o t s O n L I t e m U s e   ( )  
 	 {  
 	 	 v a r   s l o t s T o B l o c k   :   a r r a y < n a m e > ;  
 	 	  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' S l o t 1 '   ) ;  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' S l o t 2 '   ) ;  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' S l o t 3 '   ) ;  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' S l o t 4 '   ) ;  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' S l o t 5 '   ) ;  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' Y r d e n '   ) ;  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' Q u e n '   ) ;  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' I g n i '   ) ;  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' A x i i '   ) ;  
 	 	 s l o t s T o B l o c k . P u s h B a c k (   ' A a r d '   ) ;  
 	 	  
 	 	  
 	 	 E n a b l e R a d i a l S l o t s W i t h S o u r c e   (   t r u e ,   s l o t s T o B l o c k ,   ' u s a b l e I t e m L '   ) ;  
 	 }  
 	  
 	 f u n c t i o n   I s U s a b l e I t e m L B l o c k e d   ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s U s a b l e I t e m B l o c k e d ;  
 	 }  
 	 f u n c t i o n   H i d e U s a b l e I t e m (   o p t i o n a l   f o r c e   :     b o o l   )  
 	 {  
 	 	 i f (   c u r r e n t l y E q u i p e d I t e m L   ! =   G e t I n v a l i d U n i q u e I d ( )   )  
 	 	 {  
 	 	 	 i f (   f o r c e   )  
 	 	 	 {  
 	 	 	 	 i f (   ! R a i s e F o r c e E v e n t (   ' I t e m E n d L '   )   ) 	  
 	 	 	 	 {  
 	 	 	 	 	  
 	 	 	 	 	 O n U s i n g I t e m s R e s e t ( ) ;  
 	 	 	 	 }  
 	 	 	 	 r e t u r n ;  
 	 	 	 	  
 	 	 	 }  
 	 	 	 R a i s e E v e n t (   ' I t e m U s e L '   ) ;  
 	 	 }  
 	 }  
 	 f u n c t i o n   P r o c e s s U s a b l e I t e m s T r a n s i t i o n   (   a c t i o n T o R e s t o r e   :   E P l a y e r A c t i o n T o R e s t o r e   )  
 	 {  
 	 	 v a r   c a t e g o r y   	 	 :   n a m e ;  
 	 	 v a r   s i g n S k i l l   	 	 :   E S k i l l ;  
 	 	  
 	 	 c a t e g o r y   =   i n v . G e t I t e m C a t e g o r y   (   s e l e c t e d I t e m I d   ) ;  
 	 	 s i g n S k i l l   =   S i g n E n u m T o S k i l l E n u m (   G e t E q u i p p e d S i g n ( ) ) ;  
 	 	  
 	 	 s w i t c h   (   a c t i o n T o R e s t o r e   )  
 	 	 {  
 	 	 	 c a s e   P A T R _ N o n e :  
 	 	 	 	 i f   (   c u r r e n t l y U s e d I t e m L   )  
 	 	 	 	 {  
 	 	 	 	 	 i n v . U n m o u n t I t e m (   c u r r e n t l y E q u i p e d I t e m L ,   t r u e   ) ;  
 	 	 	 	 }  
 	 	 	 	 c u r r e n t l y E q u i p e d I t e m L   =   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 	 	 	 r e t u r n ;  
 	  
 	 	 	 c a s e   P A T R _ D e f a u l t :  
 	 	 	 	 i f   (   I s S l o t Q u i c k s l o t (   i n v . G e t S l o t F o r I t e m I d   (   s e l e c t e d I t e m I d   ) )   & &   c a t e g o r y   = =   ' u s a b l e '   & &     c u r r e n t l y E q u i p e d I t e m L   ! =   s e l e c t e d I t e m I d   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   c u r r e n t l y U s e d I t e m L   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i n v . U n m o u n t I t e m (   c u r r e n t l y E q u i p e d I t e m L ,   t r u e   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 c u r r e n t l y E q u i p e d I t e m L   =   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 	 	 	 	 O n U s e S e l e c t e d I t e m ( ) ;  
 	 	 	 	 	 r e t u r n ;  
 	 	 	 	 }  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   P A T R _ C r o s s b o w :  
 	 	 	 	 i f   (   i n v . I s I t e m C r o s s b o w   (   s e l e c t e d I t e m I d   )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   c u r r e n t l y U s e d I t e m L   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i n v . U n m o u n t I t e m (   c u r r e n t l y E q u i p e d I t e m L ,   t r u e   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 c u r r e n t l y E q u i p e d I t e m L   =   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 	 	 	 	 S e t I s A i m i n g C r o s s b o w (   t r u e   ) ;  
  
 	 	 	 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 	 	 	 i f   (   t h e I n p u t . I s A c t i o n P r e s s e d (   ' R G C _ C r o s s B o w '   )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	 	 	 	 	 S e t u p C o m b a t A c t i o n (   E B A T _ I t e m U s e ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 S e t u p C o m b a t A c t i o n (   E B A T _ I t e m U s e ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 	 	 S e t u p C o m b a t A c t i o n (   E B A T _ I t e m U s e ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 r e t u r n ;  
 	 	 	 	 }  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   P A T R _ C a s t S i g n :  
 	 	 	 	 i f (   s i g n S k i l l   ! =   S _ S U n d e f i n e d   & &   p l a y e r A c t i o n T o R e s t o r e   = =   P A T R _ C a s t S i g n     )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   c u r r e n t l y U s e d I t e m L   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i n v . U n m o u n t I t e m (   c u r r e n t l y E q u i p e d I t e m L ,   t r u e   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 c u r r e n t l y E q u i p e d I t e m L   =   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 	 	 	 	  
 	 	 	 	 	 i f (   H a s S t a m i n a T o U s e S k i l l (   s i g n S k i l l ,   f a l s e   )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f (   G e t I n v a l i d U n i q u e I d ( )   ! =   i n v . G e t I t e m F r o m S l o t (   ' l _ w e a p o n '   )   )  
 	 	 	 	 	 	 	 P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ C a s t S i g n ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 S e t u p C o m b a t A c t i o n (   E B A T _ C a s t S i g n ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e P l a y e r . S o u n d E v e n t ( " g u i _ n o _ s t a m i n a " ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 r e t u r n ;  
 	 	 	 	 }  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   P A T R _ T h r o w B o m b :  
 	 	 	 	 i f   (   i n v . I s I t e m B o m b   (   s e l e c t e d I t e m I d   )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   c u r r e n t l y U s e d I t e m L   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i n v . U n m o u n t I t e m (   c u r r e n t l y E q u i p e d I t e m L ,   t r u e   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 c u r r e n t l y E q u i p e d I t e m L   =   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 	 	 	 	 P r e p a r e T o A t t a c k ( ) ;  
 	 	 	 	 	 S e t u p C o m b a t A c t i o n (   E B A T _ I t e m U s e ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 	 r e t u r n ;  
 	 	 	 	 }  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   P A T R _ C a l l H o r s e :  
 	 	 	 	 t h e G a m e . O n S p a w n P l a y e r H o r s e ( ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 d e f a u l t :  
 	 	 	 	 i f   (   c u r r e n t l y U s e d I t e m L   )  
 	 	 	 	 {  
 	 	 	 	 	 i n v . U n m o u n t I t e m (   c u r r e n t l y E q u i p e d I t e m L ,   t r u e   ) ;  
 	 	 	 	 }  
 	 	 	 	 c u r r e n t l y E q u i p e d I t e m L   =   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 	 	 	 r e t u r n ;  
 	 	 }  
 	 	 i f   (   c u r r e n t l y U s e d I t e m L   )  
 	 	 {  
 	 	 	 i n v . U n m o u n t I t e m (   c u r r e n t l y E q u i p e d I t e m L ,   t r u e   ) ;  
 	 	 }  
 	 	 c u r r e n t l y E q u i p e d I t e m L   =   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 }  
 	  
 	 f u n c t i o n   G e t U s a b l e I t e m L t r a n s i t i o n A l l o w e d   ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s U s a b l e I t e m L t r a n s i t i o n A l l o w e d ;  
 	 }  
 	  
 	 f u n c t i o n   S e t U s a b l e I t e m L t r a n s i t i o n A l l o w e d   (   i s A l l o w e d   :   b o o l )    
 	 {  
 	 	 i s U s a b l e I t e m L t r a n s i t i o n A l l o w e d   =   i s A l l o w e d ;  
 	 }  
 	  
 	 e v e n t   O n I t e m U s e L U n B l o c k e d   ( )  
 	 {  
 	 	 i f   (   i s U s a b l e I t e m B l o c k e d   )  
 	 	 {  
 	 	 	 i s U s a b l e I t e m B l o c k e d   =   f a l s e ;  
 	 	 	 U n b l o c k S l o t s O n L I t e m U s e   ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n I t e m U s e L B l o c k e d   ( )  
 	 {  
 	 	 i f   (   ! i s U s a b l e I t e m B l o c k e d   )  
 	 	 {  
 	 	 	 i s U s a b l e I t e m B l o c k e d   =   t r u e ;  
 	 	 	 B l o c k S l o t s O n L I t e m U s e   ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n U s i n g I t e m s R e s e t ( )  
 	 {  
 	 	 i f   (   c u r r e n t l y U s i n g I t e m   )  
 	 	 {  
 	 	 	 O n I t e m U s e L U n B l o c k e d   ( ) ;  
 	 	 	 O n U s i n g I t e m s C o m p l e t e ( ) ;  
 	 	 }  
 	 }  
 	 e v e n t   O n U s i n g I t e m s C o m p l e t e   ( )  
 	 {  
 	 	 i f   (   i s U s a b l e I t e m B l o c k e d   )  
 	 	 {  
 	 	 	 O n I t e m U s e L U n B l o c k e d   ( ) ;  
 	 	 }  
 	 	 c u r r e n t l y U s i n g I t e m   =   f a l s e ;  
 	 	 i f   (   G e t U s a b l e I t e m L t r a n s i t i o n A l l o w e d   ( )   )  
 	 	 {  
 	 	 	 P r o c e s s U s a b l e I t e m s T r a n s i t i o n (   p l a y e r A c t i o n T o R e s t o r e   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   (   c u r r e n t l y U s e d I t e m L   )  
 	 	 	 {  
 	 	 	 	 i n v . U n m o u n t I t e m (   c u r r e n t l y E q u i p e d I t e m L ,   t r u e   ) ;  
 	 	 	 }  
 	 	 	 c u r r e n t l y E q u i p e d I t e m L   =   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 	 }  
 	 	  
 	 	 S e t P l a y e r A c t i o n T o R e s t o r e   (   P A T R _ D e f a u l t   ) ;  
 	 }  
 	  
 	 e v e n t   O n U s e S e l e c t e d I t e m (   o p t i o n a l   f o r c e   :     b o o l   )  
 	 {  
 	 	 v a r   c a t e g o r y   :   n a m e ;  
 	 	 v a r   i t e m E n t i t y   :   W 3 U s a b l e I t e m ;  
 	 	  
 	 	 i f   (   i s U s a b l e I t e m B l o c k e d   & &   ! f o r c e   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 i f   (   I s C a s t i n g S i g n ( )   )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i f   (   c u r r e n t l y E q u i p e d I t e m L   ! =   G e t I n v a l i d U n i q u e I d ( )   )  
 	 	 {  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' S e l e c t e d I t e m L ' ,   ( i n t ) G e t U s a b l e I t e m T y p e B y I d (   c u r r e n t l y E q u i p e d I t e m L   ) ,   t r u e   ) ; 	 	  
 	 	 	 i f   (   f o r c e   )  
 	 	 	 {  
 	 	 	 	 i f   (   R a i s e E v e n t (   ' I t e m E n d L '   )   )  
 	 	 	 	 {  
 	 	 	 	 	 S e t U s a b l e I t e m L t r a n s i t i o n A l l o w e d   (   t r u e   ) ;  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   R a i s e E v e n t (   ' I t e m U s e L '   )   )  
 	 	 	 	 {  
 	 	 	 	 	 S e t U s a b l e I t e m L t r a n s i t i o n A l l o w e d   (   t r u e   ) ;  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 c a t e g o r y   =   i n v . G e t I t e m C a t e g o r y (   s e l e c t e d I t e m I d   ) ;  
 	 	 	 i f (   c a t e g o r y   ! =   ' u s a b l e '   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' S e l e c t e d I t e m L ' ,   ( i n t ) G e t U s a b l e I t e m T y p e B y I d (   s e l e c t e d I t e m I d   ) ,   t r u e   ) ;  
 	 	 	 i f (   R a i s e E v e n t (   ' I t e m U s e L '   )   )  
 	 	 	 { 	  
 	 	 	 	 c u r r e n t l y E q u i p e d I t e m L   =   s e l e c t e d I t e m I d ;  
 	 	 	 	 S e t U s a b l e I t e m L t r a n s i t i o n A l l o w e d   (   f a l s e   ) ;  
 	 	 	 	 c u r r e n t l y U s i n g I t e m   =   t r u e ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 S e t B e h a v i o r V a r i a b l e ( ' p l a y e r D o u b l e H a n d S w o r d ' , 0 . 0 f ) ;  
 	 	  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 	 i n v . U n m o u n t I t e m (   s e l e c t e d I t e m I d ,   t r u e   ) ;  
 	 	 }  
 	 }  
 	  
 	 p r o t e c t e d   s a v e d   v a r   c u r r e n t l y U s i n g I t e m   :   b o o l ;  
 	  
 	 p u b l i c   f u n c t i o n   P r o c e s s U s e S e l e c t e d I t e m (   i t e m E n t i t y   :   W 3 U s a b l e I t e m ,   o p t i o n a l   s h o u l d C a l l O n U s e d   :   b o o l   )  
 	 {  
 	 	 c u r r e n t l y U s e d I t e m L   =   i t e m E n t i t y ;  
 	 	 D r a i n S t a m i n a ( E S A T _ U s a b l e I t e m ) ;  
 	 	 	  
 	 	 i f   (   s h o u l d C a l l O n U s e d   )  
 	 	 {  
 	 	 	 c u r r e n t l y U s e d I t e m L . O n U s e d (   t h e P l a y e r   ) ;  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   G e t U s a b l e I t e m T y p e B y I d   (   i t e m I d   :   S I t e m U n i q u e I d   )   :   E U s a b l e I t e m T y p e  
 	 {  
 	 	 v a r   i t e m N a m e   :   n a m e ;  
 	 	  
 	 	 i t e m N a m e   =   i n v . G e t I t e m N a m e   (   i t e m I d   ) ;  
 	 	  
 	 	 r e t u r n   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t U s a b l e I t e m T y p e   (   i t e m N a m e   ) ;  
 	 	 	 	  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   S t a r t W a i t F o r I t e m S p a w n A n d P r o c c e s T a s k ( )  
 	 {  
 	 	 A d d T i m e r (   ' W a i t F o r I t e m S p a w n A n d P r o c c e s T a s k ' ,   0 . 0 0 1 f ,   t r u e , , , , t r u e   ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   K i l l W a i t F o r I t e m S p a w n A n d P r o c c e s T a s k ( )  
 	 {  
 	 	 R e m o v e T i m e r   (   ' W a i t F o r I t e m S p a w n A n d P r o c c e s T a s k '   ) ;  
 	 }  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   A l l o w U s e S e l e c t e d I t e m ( )  
 	 {  
 	 	 m _ u s e S e l e c t e d I t e m I f S p a w n e d   =   t r u e ;  
 	 }  
 	  
 	  
 	  
 	 t i m e r   f u n c t i o n   W a i t F o r I t e m S p a w n A n d P r o c c e s T a s k (   t i m e D e l t a   :   f l o a t   ,   i d   :   i n t   )  
 	 {  
 	 	 v a r   i t e m E n t i t y   :   W 3 U s a b l e I t e m ;  
 	 	 v a r   c a n T a s k B e K i l l e d   :   b o o l ;  
 	 	 c a n T a s k B e K i l l e d   =   f a l s e ;  
 	  
 	 	 i f   (   I s C a s t i n g S i g n ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	  
 	 	  
 	 	 i f   (   s e l e c t e d I t e m I d   = =   G e t I n v a l i d U n i q u e I d ( )   )  
 	 	 {  
 	 	 	 c a n T a s k B e K i l l e d   =   t r u e ;  
 	 	 }  
 	 	 	  
 	 	 i t e m E n t i t y   =   ( W 3 U s a b l e I t e m ) i n v . G e t I t e m E n t i t y U n s a f e (   s e l e c t e d I t e m I d   ) ;  
 	 	 i f   (   i t e m E n t i t y   & &   m _ u s e S e l e c t e d I t e m I f S p a w n e d   )  
 	 	 {  
 	 	 	  
 	 	 	 c a n T a s k B e K i l l e d   =   t r u e ;  
 	 	 	 m _ u s e S e l e c t e d I t e m I f S p a w n e d   =   f a l s e ;   	 	 	  
 	 	 	 P r o c e s s U s e S e l e c t e d I t e m (   i t e m E n t i t y ,   t r u e   ) ; 	    
 	 	 }  
 	 	  
 	 	 i f   (   c a n T a s k B e K i l l e d   )  
 	 	 {  
 	 	 	 K i l l W a i t F o r I t e m S p a w n A n d P r o c c e s T a s k ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n B o m b P r o j e c t i l e R e l e a s e d ( )  
 	 {  
 	 	 R e s e t R a w P l a y e r H e a d i n g ( ) ; 	  
 	 	 U n b l o c k A c t i o n ( E I A B _ T h r o w B o m b ,   ' B o m b T h r o w ' ) ;  
 	 	 U n b l o c k A c t i o n ( E I A B _ C r o s s b o w ,   ' B o m b T h r o w ' ) ;  
 	 	  
 	 	 i f ( G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m T h r o w ' )  
 	 	 	 P o p S t a t e ( ) ;  
 	 	 	  
 	 	 F a c t s A d d ( " a c h _ b o m b " ,   1 ,   4   ) ;  
 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . C h e c k L e a r n i n g T h e R o p e s ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t I s T h r o w i n g I t e m W i t h A i m ( b   :   b o o l )  
 	 {  
 	 	 i s T h r o w i n g I t e m W i t h A i m   =   b ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t I s T h r o w i n g I t e m (   f l a g   :   b o o l   ) 	 	 	 { i s T h r o w i n g I t e m   =   f l a g ; }  
 	 p u b l i c   f u n c t i o n   I s T h r o w i n g I t e m ( )   :   b o o l 	 	 	 	 	 	 { r e t u r n   i s T h r o w i n g I t e m ; } 	  
 	 p u b l i c   f u n c t i o n   I s T h r o w i n g I t e m W i t h A i m ( )   :   b o o l 	 	 	 	 { r e t u r n   i s T h r o w i n g I t e m W i t h A i m ; }  
 	 p u b l i c   f u n c t i o n   S e t T h r o w H o l d ( b   :   b o o l ) 	 	 	 	 	 	 { i s T h r o w H o l d P r e s s e d   =   b ; }  
 	 p u b l i c   f u n c t i o n   I s T h r o w H o l d ( )   :   b o o l 	 	 	 	 	 	 { r e t u r n   i s T h r o w H o l d P r e s s e d ; }  
 	 p u b l i c   f u n c t i o n   S e t I s A i m i n g C r o s s b o w (   f l a g   :   b o o l   ) 	 	 	 { i s A i m i n g C r o s s b o w   =   f l a g ; }  
 	 p u b l i c   f u n c t i o n   G e t I s A i m i n g C r o s s b o w ( )   :   b o o l 	 	 	 	 { r e t u r n   i s A i m i n g C r o s s b o w ; } 	  
 	  
 	 e v e n t   O n T h r o w A n i m L e a v e ( )  
 	 {  
 	 	 v a r   t h r o w S t a g e   :   E T h r o w S t a g e ;  
 	 	 v a r   t h r o w n E n t i t y 	 	 :   C T h r o w a b l e ;  
 	 	  
 	 	 t h r o w n E n t i t y   =   ( C T h r o w a b l e ) E n t i t y H a n d l e G e t (   t h r o w n E n t i t y H a n d l e   ) ;  
 	 	  
 	 	 i f ( t h r o w n E n t i t y   & &   ! t h r o w n E n t i t y . W a s T h r o w n ( ) )  
 	 	 {  
 	 	 	 t h r o w S t a g e   =   ( i n t ) G e t B e h a v i o r V a r i a b l e (   ' t h r o w S t a g e ' ,   ( i n t ) T S _ S t o p ) ; 	 	  
 	 	 	 i f ( i n v . I s I t e m B o m b ( s e l e c t e d I t e m I d ) )  
 	 	 	 {  
 	 	 	 	 B o m b T h r o w C l e a n U p ( ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 T h r o w i n g A b o r t ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 t h r o w n E n t i t y   =   N U L L ;  
 	 	 S e t I s T h r o w i n g I t e m (   f a l s e   ) ;  
 	 	 S e t I s T h r o w i n g I t e m W i t h A i m (   f a l s e   ) ;  
 	 	  
 	 	 t h i s . E n a b l e R a d i a l S l o t s W i t h S o u r c e (   t r u e ,   t h i s . r a d i a l S l o t s ,   ' t h r o w B o m b '   ) ; 	  
 	 	 U n b l o c k A c t i o n ( E I A B _ T h r o w B o m b ,   ' B o m b T h r o w ' ) ;  
 	 	 U n b l o c k A c t i o n ( E I A B _ C r o s s b o w ,   ' B o m b T h r o w ' ) ;  
 	 }  
 	  
 	  
 	 p r o t e c t e d   f u n c t i o n   B o m b T h r o w S t a r t ( )  
 	 {  
 	 	 v a r   s l i d e T a r g e t A c t o r   :   C A c t o r ;  
 	  
 	 	 B l o c k A c t i o n (   E I A B _ T h r o w B o m b ,   ' B o m b T h r o w '   ) ;  
 	 	 B l o c k A c t i o n ( E I A B _ C r o s s b o w ,   ' B o m b T h r o w ' ) ;  
 	 	  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' t h r o w S t a g e ' ,   ( i n t ) T S _ S t a r t   ) ; 	 	  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e ' ,   ( i n t ) C A T _ I t e m T h r o w   ) ;  
 	 	  
 	 	 i f   (   s l i d e T a r g e t   )  
 	 	 {  
 	 	 	 A d d C u s t o m O r i e n t a t i o n T a r g e t (   O T _ A c t o r ,   ' B o m b T h r o w '   ) ;  
 	 	 	  
 	 	 	 s l i d e T a r g e t A c t o r   =   ( C A c t o r ) (   s l i d e T a r g e t   ) ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   (   l a s t A x i s I n p u t I s M o v e m e n t   )  
 	 	 	 	 A d d C u s t o m O r i e n t a t i o n T a r g e t (   O T _ A c t o r ,   ' B o m b T h r o w '   ) ;  
 	 	 	 e l s e  
 	 	 	 	 A d d C u s t o m O r i e n t a t i o n T a r g e t (   O T _ C a m e r a ,   ' B o m b T h r o w '   ) ;  
 	 	 }  
 	 	  
 	 	 U p d a t e L o o k A t T a r g e t ( ) ;  
 	 	 S e t C u s t o m R o t a t i o n (   ' T h r o w ' ,   V e c H e a d i n g (   t h i s . G e t L o o k A t P o s i t i o n ( )   -   G e t W o r l d P o s i t i o n ( )   ) ,   0 . 0 f ,   0 . 3 f ,   f a l s e   ) ;  
 	 	  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' i t e m T y p e ' ,   ( i n t ) I T _ P e t a r d   ) ;  
 	 	  
 	 	 P r o c e s s C a n A t t a c k W h e n N o t I n C o m b a t B o m b ( ) ;  
 	 	  
 	 	 i f   (   R a i s e F o r c e E v e n t ( ' C o m b a t A c t i o n ' )   )  
 	 	 	 O n C o m b a t A c t i o n S t a r t ( ) ;  
 	 	  
 	 	  
 	 	 t h e T e l e m e t r y . L o g W i t h L a b e l ( T E _ F I G H T _ H E R O _ T H R O W S _ B O M B ,   i n v . G e t I t e m N a m e (   s e l e c t e d I t e m I d   ) ) ; 	  
 	 }  
 	  
 	  
 	 e v e n t   O n T h r o w A n i m S t a r t ( )  
 	 {  
 	 	 v a r   i t e m I d   :   S I t e m U n i q u e I d ;  
 	 	 v a r   t h r o w n E n t i t y 	 	 :   C T h r o w a b l e ;  
 	 	  
 	 	 t h i s . r a d i a l S l o t s . C l e a r ( ) ;  
 	 	 G e t W i t c h e r P l a y e r ( ) . G e t I t e m E q u i p p e d O n S l o t ( E E S _ P e t a r d 1 ,   i t e m I d   ) ;  
 	 	  
 	 	 i f (   G e t S e l e c t e d I t e m I d ( )   = =   i t e m I d   )  
 	 	 {  
 	 	 	 t h i s . r a d i a l S l o t s . P u s h B a c k (   ' S l o t 2 '   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h i s . r a d i a l S l o t s . P u s h B a c k (   ' S l o t 1 '   ) ;  
 	 	 }  
 	 	 t h i s . r a d i a l S l o t s . P u s h B a c k (   ' S l o t 3 '   ) ;  
 	 	 t h i s . r a d i a l S l o t s . P u s h B a c k (   ' S l o t 4 '   ) ;  
 	 	 t h i s . r a d i a l S l o t s . P u s h B a c k (   ' S l o t 5 '   ) ;  
 	 	 t h i s . E n a b l e R a d i a l S l o t s W i t h S o u r c e (   f a l s e ,   t h i s . r a d i a l S l o t s ,   ' t h r o w B o m b '   ) ; 	 	  
 	  
 	 	 t h r o w n E n t i t y   =   ( C T h r o w a b l e ) i n v . G e t D e p l o y m e n t I t e m E n t i t y (   s e l e c t e d I t e m I d , , , t r u e   ) ;  
 	 	 t h r o w n E n t i t y . I n i t i a l i z e (   t h i s ,   s e l e c t e d I t e m I d   ) ;  
 	 	 E n t i t y H a n d l e S e t (   t h r o w n E n t i t y H a n d l e ,   t h r o w n E n t i t y   ) ;  
 	 	 S e t I s T h r o w i n g I t e m (   t r u e   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   B o m b T h r o w A b o r t ( )  
 	 {  
 	 	 B o m b T h r o w C l e a n U p ( ) ;  
 	 	 U n b l o c k A c t i o n (   E I A B _ T h r o w B o m b ,   ' B o m b T h r o w '   ) ;  
 	 	 U n b l o c k A c t i o n ( E I A B _ C r o s s b o w ,   ' B o m b T h r o w ' ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   B o m b T h r o w C l e a n U p ( )  
 	 {  
 	 	 v a r   t h r o w S t a g e   :   E T h r o w S t a g e ;  
 	 	 v a r   t h r o w n E n t i t y 	 	 :   C T h r o w a b l e ;  
 	 	 v a r   v e h i c l e   :   C V e h i c l e C o m p o n e n t ;    
 	 	  
 	 	 t h r o w n E n t i t y   =   ( C T h r o w a b l e ) E n t i t y H a n d l e G e t (   t h r o w n E n t i t y H a n d l e   ) ;  
 	 	  
 	 	 t h i s . E n a b l e R a d i a l S l o t s W i t h S o u r c e (   t r u e ,   t h i s . r a d i a l S l o t s ,   ' t h r o w B o m b '     ) ; 	  
 	 	 t h r o w S t a g e   =   ( i n t ) G e t B e h a v i o r V a r i a b l e (   ' t h r o w S t a g e ' ,   ( i n t ) T S _ S t o p ) ;  
 	 	 	 	  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' t h r o w S t a g e ' ,   ( i n t ) T S _ S t o p   ) ;  
  
 	 	 i f (   G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m T h r o w ' )  
 	 	 {  
 	 	 	 P o p S t a t e ( ) ;  
 	 	 	 t h r o w n E n t i t y . S t o p A i m i n g (   t r u e   ) ; 	  
 	 	 }  
 	 	 e l s e   i f   (   t h i s . I s U s i n g H o r s e ( )   )  
 	 	 {  
 	 	 	 v e h i c l e   =   ( C V e h i c l e C o m p o n e n t ) ( G e t U s e d V e h i c l e ( ) . G e t C o m p o n e n t B y C l a s s N a m e ( ' C V e h i c l e C o m p o n e n t ' ) ) ;  
 	 	 	 v e h i c l e . G e t U s e r C o m b a t M a n a g e r ( ) . O n F o r c e I t e m A c t i o n A b o r t ( ) ;  
 	 	 }  
 	 	 	  
 	 	  
 	 	 i f ( t h r o w n E n t i t y   & &   ! t h r o w n E n t i t y . W a s T h r o w n ( ) )  
 	 	 {    
 	 	 	 t h r o w n E n t i t y . B r e a k A t t a c h m e n t ( ) ;  
 	 	 	 t h r o w n E n t i t y . D e s t r o y ( ) ;  
 	 	 }  
 	  
 	 	 t h r o w n E n t i t y   =   N U L L ;  
 	 	 S e t I s T h r o w i n g I t e m (   f a l s e   ) ;  
 	 	 S e t I s T h r o w i n g I t e m W i t h A i m (   f a l s e   ) ;  
 	 	 R e m o v e C u s t o m O r i e n t a t i o n T a r g e t (   ' B o m b T h r o w '   ) ; 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   P r o c e s s C a n A t t a c k W h e n N o t I n C o m b a t B o m b ( )  
 	 {  
 	 	 v a r   t a r g e t s   :   a r r a y <   C G a m e p l a y E n t i t y   > ;  
 	 	 v a r   t e m p ,   t h r o w V e c t o r ,   t h r o w F r o m ,   t h r o w T o ,   t h r o w V e c t o r U   :   V e c t o r ;  
 	 	 v a r   t e m p _ n   :   n a m e ;  
 	 	 v a r   t h r o w V e c L e n   :   f l o a t ;  
 	 	 v a r   c o m p o n e n t   :   C C o m p o n e n t ;  
 	 	  
 	 	  
 	 	  
 	 	 i f (   F a c t s Q u e r y S u m (   " B o m b T h r o w S p e c i f i c T a r g e t s "   )   >   0   )  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 t h r o w F r o m   =   p l a y e r A i m i n g . G e t T h r o w S t a r t P o s i t i o n ( ) ;  
 	 	 	 t h r o w T o   =   p l a y e r A i m i n g . G e t T h r o w P o s i t i o n ( ) ;  
 	 	 	 t h r o w V e c t o r   =   t h r o w T o   -   t h r o w F r o m ;  
 	 	 	 t h r o w V e c L e n   =   V e c D i s t a n c e (   t h r o w F r o m ,   t h r o w T o   ) ;  
 	 	 	 t h r o w V e c t o r U   =     t h r o w V e c t o r   /   t h r o w V e c L e n ;  
 	 	 	 i f (   t h e G a m e . G e t W o r l d ( ) . S t a t i c T r a c e W i t h A d d i t i o n a l I n f o (   t h r o w F r o m ,   t h r o w T o   +   t h r o w V e c t o r U ,   t e m p ,   t e m p ,   t e m p _ n ,   c o m p o n e n t   )   & &   c o m p o n e n t   & &   c o m p o n e n t . G e t E n t i t y ( ) . H a s T a g (   ' B o m b T h r o w S p e c i f i c T a r g e t '   )   )  
 	 	 	 {  
 	 	 	 	 S e t I s S h o o t i n g F r i e n d l y (   f a l s e   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 S e t I s S h o o t i n g F r i e n d l y (   t r u e   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f (   F a c t s Q u e r y S u m (   " B o m b T h r o w D i s a l l o w S p e c i f i c T a r g e t s "   )   >   0   )  
 	 	 {  
 	 	 	  
 	 	 	 t h r o w F r o m   =   p l a y e r A i m i n g . G e t T h r o w S t a r t P o s i t i o n ( ) ;  
 	 	 	 t h r o w T o   =   p l a y e r A i m i n g . G e t T h r o w P o s i t i o n ( ) ;  
 	 	 	 t h r o w V e c t o r   =   t h r o w T o   -   t h r o w F r o m ;  
 	 	 	 t h r o w V e c L e n   =   V e c D i s t a n c e (   t h r o w F r o m ,   t h r o w T o   ) ;  
 	 	 	 t h r o w V e c t o r U   =     t h r o w V e c t o r   /   t h r o w V e c L e n ;  
 	 	 	 i f (   t h e G a m e . G e t W o r l d ( ) . S t a t i c T r a c e W i t h A d d i t i o n a l I n f o (   t h r o w F r o m ,   t h r o w T o   +   t h r o w V e c t o r U ,   t e m p ,   t e m p ,   t e m p _ n ,   c o m p o n e n t   )   & &   c o m p o n e n t   & &   c o m p o n e n t . G e t E n t i t y ( ) . H a s T a g (   ' B o m b T h r o w D i s a l l o w e d T a r g e t '   )   )  
 	 	 	 {  
 	 	 	 	 S e t I s S h o o t i n g F r i e n d l y (   t r u e   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 S e t I s S h o o t i n g F r i e n d l y (   f a l s e   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 S e t I s S h o o t i n g F r i e n d l y (   f a l s e   ) ;  
 	 	 }  
 	 	  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' i s S h o o t i n g F r i e n d l y ' ,   ( f l o a t ) (   G e t I s S h o o t i n g F r i e n d l y ( )   )   ) ; 	 	  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t I s S h o o t i n g F r i e n d l y (   f l a g   :   b o o l   )  
 	 {  
 	 	 i s S h o o t i n g F r i e n d l y   =   f l a g ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   G e t I s S h o o t i n g F r i e n d l y ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s S h o o t i n g F r i e n d l y ;  
 	 }  
 	  
 	  
 	 p r o t e c t e d   f u n c t i o n   U s a b l e I t e m S t a r t ( )  
 	 {  
 	 	 v a r   t h r o w n E n t i t y   :   C T h r o w a b l e ;  
 	 	  
 	 	  
 	 	 t h r o w n E n t i t y   =   ( C T h r o w a b l e ) i n v . G e t D e p l o y m e n t I t e m E n t i t y (   s e l e c t e d I t e m I d , , , t r u e   ) ;  
 	 	 t h r o w n E n t i t y . I n i t i a l i z e (   t h i s ,   s e l e c t e d I t e m I d   ) ;  
 	 	 E n t i t y H a n d l e S e t (   t h r o w n E n t i t y H a n d l e ,   t h r o w n E n t i t y   ) ;  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' t h r o w S t a g e ' ,   ( i n t ) T S _ S t a r t   ) ;  
 	 	 S e t I s T h r o w i n g I t e m (   t r u e   ) ;  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e ' ,   ( i n t ) C A T _ I t e m T h r o w   ) ;  
 	 	  
 	 	 i f   (   s l i d e T a r g e t   )  
 	 	 {  
 	 	 	 A d d C u s t o m O r i e n t a t i o n T a r g e t (   O T _ A c t o r ,   ' U s a b l e I t e m s '   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   (   l a s t A x i s I n p u t I s M o v e m e n t   )  
 	 	 	 	 A d d C u s t o m O r i e n t a t i o n T a r g e t (   O T _ A c t o r ,   ' U s a b l e I t e m s '   ) ;  
 	 	 	 e l s e  
 	 	 	 	 A d d C u s t o m O r i e n t a t i o n T a r g e t (   O T _ C a m e r a ,   ' U s a b l e I t e m s '   ) ; 	 	  
 	 	 }  
 	 	  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' i t e m T y p e ' ,   ( i n t ) ( - 1 )   ) ;  
 	 	  
 	 	 i f   (   R a i s e F o r c e E v e n t ( ' C o m b a t A c t i o n ' )   )  
 	 	 	 O n C o m b a t A c t i o n S t a r t ( ) ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   B o m b T h r o w R e l e a s e ( )  
 	 {  
 	 	 v a r   s t a t e N a m e   :   n a m e ;  
 	 	  
 	 	 s t a t e N a m e   =   p l a y e r A i m i n g . G e t C u r r e n t S t a t e N a m e ( ) ;  
 	 	 O n D e l a y O r i e n t a t i o n C h a n g e O f f ( ) ;  
 	 	  
 	 	 i f (   G e t I s S h o o t i n g F r i e n d l y ( )   | |   (   F a c t s Q u e r y S u m (   " B o m b T h r o w S p e c i f i c T a r g e t s "   )   >   0   & &   s t a t e N a m e   ! =   ' A i m i n g '   )   )  
 	 	 {  
 	 	 	 B o m b T h r o w A b o r t ( ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' t h r o w S t a g e ' ,   ( i n t ) T S _ E n d   ) ;  
 	 	 	  
 	 	 	 i f   (   s t a t e N a m e   = =   ' A i m i n g '   )  
 	 	 	 {  
 	 	 	 	 S e t C u s t o m R o t a t i o n (   ' T h r o w ' ,   V e c H e a d i n g (   t h i s . G e t L o o k A t P o s i t i o n ( )   -   G e t W o r l d P o s i t i o n ( )   ) ,   0 . 0 f ,   0 . 2 f ,   f a l s e   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   U s a b l e I t e m R e l e a s e ( )  
 	 {  
 	 	 O n D e l a y O r i e n t a t i o n C h a n g e O f f ( ) ;  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' t h r o w S t a g e ' ,   ( i n t ) T S _ E n d   ) ;  
 	 	 R e m o v e C u s t o m O r i e n t a t i o n T a r g e t (   ' U s a b l e I t e m s '   ) ; 	 	  
 	 }  
 	 	 	  
 	  
 	 p u b l i c   f u n c t i o n   T h r o w i n g A b o r t ( )  
 	 {  
 	 	 v a r   t h r o w n E n t i t y 	 	 :   C T h r o w a b l e ;  
 	 	  
 	 	 t h r o w n E n t i t y   =   ( C T h r o w a b l e ) E n t i t y H a n d l e G e t (   t h r o w n E n t i t y H a n d l e   ) ;  
 	 	  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' t h r o w S t a g e ' ,   ( i n t ) T S _ S t o p   ) ;  
 	 	 R a i s e E v e n t (   ' a c t i o n S t o p '   ) ;  
  
 	 	 i f (   G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m T h r o w ' )  
 	 	 {  
 	 	 	 P o p S t a t e ( ) ;  
 	 	 	 t h r o w n E n t i t y . S t o p A i m i n g (   t r u e   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( t h r o w n E n t i t y   & &   ! t h r o w n E n t i t y . W a s T h r o w n ( ) )  
 	 	 {    
 	 	 	 t h r o w n E n t i t y . B r e a k A t t a c h m e n t ( ) ;  
 	 	 	 t h r o w n E n t i t y . D e s t r o y ( ) ;  
 	 	 }  
 	 	 t h i s . E n a b l e R a d i a l S l o t s W i t h S o u r c e (   t r u e ,   t h i s . r a d i a l S l o t s ,   ' t h r o w B o m b '   ) ; 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C a n S e t u p C o m b a t A c t i o n _ T h r o w ( )   :   b o o l  
 	 {  
 	 	  
 	 	 i f ( ! i n v . I s I d V a l i d (   s e l e c t e d I t e m I d   ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	  
 	 	 i f ( ! i n v . I s I t e m S i n g l e t o n I t e m ( s e l e c t e d I t e m I d ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	  
 	 	 i f ( ! G e t B I s I n p u t A l l o w e d ( ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	  
 	 	 i f ( i n v . G e t I t e m Q u a n t i t y ( G e t S e l e c t e d I t e m I d ( ) )   < =   0   & &   ! i n v . I t e m H a s T a g ( s e l e c t e d I t e m I d ,   t h e G a m e . p a r a m s . T A G _ I N F I N I T E _ A M M O ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	  
 	 	 i f ( ! i n p u t H a n d l e r . I s A c t i o n A l l o w e d ( E I A B _ T h r o w B o m b )   & &   G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S w i m m i n g ' )  
 	 	 	 r e t u r n   f a l s e ;  
 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t T h r o w n E n t i t y ( )   :   C T h r o w a b l e  
 	 {  
 	 	 r e t u r n   ( C T h r o w a b l e ) E n t i t y H a n d l e G e t (   t h r o w n E n t i t y H a n d l e   ) ;  
 	 }  
 	  
 	  
 	 e v e n t   O n W e a p o n W a i t ( ) 	 	 	 {   r a n g e d W e a p o n . O n W e a p o n W a i t ( ) ;   }  
 	 e v e n t   O n W e a p o n D r a w S t a r t ( ) 	 	 {   r a n g e d W e a p o n . O n W e a p o n D r a w S t a r t ( ) ;   }  
 	 e v e n t   O n W e a p o n R e l o a d S t a r t ( )   	 {   r a n g e d W e a p o n . O n W e a p o n R e l o a d S t a r t ( ) ;   }  
 	 e v e n t   O n W e a p o n R e l o a d E n d ( ) 	 	 {   r a n g e d W e a p o n . O n W e a p o n R e l o a d E n d ( ) ;   }  
 	 e v e n t   O n W e a p o n A i m S t a r t ( ) 	 	 {   r a n g e d W e a p o n . O n W e a p o n A i m S t a r t ( ) ;   }  
 	 e v e n t   O n W e a p o n S h o o t S t a r t ( ) 	 	 {   r a n g e d W e a p o n . O n W e a p o n S h o o t S t a r t ( ) ;   }  
 	 e v e n t   O n W e a p o n S h o o t E n d ( ) 	 	 {   r a n g e d W e a p o n . O n W e a p o n S h o o t E n d ( ) ;   }  
 	 e v e n t   O n W e a p o n A i m E n d ( ) 	 	 	 {   r a n g e d W e a p o n . O n W e a p o n A i m E n d ( ) ;   }  
 	 e v e n t   O n W e a p o n H o l s t e r S t a r t ( ) 	 {   r a n g e d W e a p o n . O n W e a p o n H o l s t e r S t a r t ( ) ;   }  
 	 e v e n t   O n W e a p o n H o l s t e r E n d ( ) 	 	 {   r a n g e d W e a p o n . O n W e a p o n H o l s t e r E n d ( ) ;   }  
 	 e v e n t   O n W e a p o n T o N o r m a l T r a n s S t a r t ( )   {   r a n g e d W e a p o n . O n W e a p o n T o N o r m a l T r a n s S t a r t ( ) ;   }  
 	 e v e n t   O n W e a p o n T o N o r m a l T r a n s E n d ( )   {   r a n g e d W e a p o n . O n W e a p o n T o N o r m a l T r a n s E n d ( ) ;   }  
 	  
 	 e v e n t   O n E n a b l e A i m i n g M o d e (   e n a b l e   :   b o o l   )  
 	 {  
 	 	 i f (   ! c r o s s b o w D o n t P o p S t a t e H a c k   )  
 	 	 {  
 	 	 	 i f   (   e n a b l e   )  
 	 	 	 	 P u s h S t a t e (   ' A i m T h r o w '   ) ;  
 	 	 	 e l s e   i f   (   G e t C u r r e n t S t a t e N a m e ( )   = =   ' A i m T h r o w '   )  
 	 	 	 	 P o p S t a t e ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n R a n g e d F o r c e H o l s t e r (   o p t i o n a l   f o r c e U p p e r B o d y A n i m ,   i n s t a n t ,   d r o p I t e m   :   b o o l   )  
 	 {  
 	 	 i f ( r a n g e d W e a p o n )  
 	 	 	 r a n g e d W e a p o n . O n F o r c e H o l s t e r (   f o r c e U p p e r B o d y A n i m ,   i n s t a n t ,   d r o p I t e m   ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   I s C r o s s b o w H e l d ( )   :   b o o l  
 	 { 	  
 	 	 i f   ( r a n g e d W e a p o n )  
 	 	 	 r e t u r n   r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t ' ;  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 e v e n t   O n B l o c k A l l C o m b a t T i c k e t s (   r e l e a s e   :   b o o l   )  
 	 {  
 	 	 i f   ( ! r e l e a s e   )  
 	 	 	 ( ( C R 4 P l a y e r S t a t e C o m b a t ) G e t S t a t e ( ' C o m b a t ' ) ) . O n B l o c k A l l C o m b a t T i c k e t s ( f a l s e ) ;    
 	 }  
 	 e v e n t   O n F o r c e T i c k e t U p d a t e ( ) 	 	 	 	 	 	 { }  
  
 	  
 	  
 	  
 	  
 	   e v e n t   O n P r o c e s s A c t i o n P o s t ( a c t i o n   :   W 3 D a m a g e A c t i o n )  
 	 {  
 	 	 v a r   n p c   :   C N e w N P C ;  
 	 	 v a r   a t t a c k A c t i o n   :   W 3 A c t i o n _ A t t a c k ;  
 	 	 v a r   l i f e L e e c h   :   f l o a t ;  
 	 	  
 	 	 s u p e r . O n P r o c e s s A c t i o n P o s t ( a c t i o n ) ;  
 	 	  
 	 	 a t t a c k A c t i o n   =   ( W 3 A c t i o n _ A t t a c k ) a c t i o n ;  
 	 	  
 	 	 i f ( a t t a c k A c t i o n )  
 	 	 {  
 	 	 	 n p c   =   ( C N e w N P C ) a c t i o n . v i c t i m ;  
 	 	 	  
 	 	 	  
 	 	 	 i f   (   n p c   & &   n p c . U s e s E s s e n c e ( )   )  
 	 	 	 {  
 	 	 	 	 P l a y B a t t l e C r y (   ' B a t t l e C r y M o n s t e r s S i l v e r H i t ' ,   0 . 0 9 f   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f ( n p c   & &   ( n p c . I s H u m a n ( )   | |   n p c . G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t N a m e ( )   = =   " w i l d _ h u n t _ b a s e " )   )  
 	 	 	 {  
 	 	 	 	 P l a y B a t t l e C r y ( ' B a t t l e C r y H u m a n s H i t ' ,   0 . 0 9 f   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 P l a y B a t t l e C r y ( ' B a t t l e C r y M o n s t e r s H i t ' ,   0 . 0 9 f   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f ( a t t a c k A c t i o n . I s A c t i o n M e l e e ( ) )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 I n c r e a s e U n i n t e r r u p t e d H i t s C o u n t ( ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f (   I s L i g h t A t t a c k (   a t t a c k A c t i o n . G e t A t t a c k N a m e ( )   )   )  
 	 	 	 	 {  
 	 	 	 	 	 G C a m e r a S h a k e ( 0 . 1 ,   f a l s e ,   G e t W o r l d P o s i t i o n ( ) ,   1 0 ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f ( n p c   & &   i n v . G e t I t e m N a m e ( a t t a c k A c t i o n . G e t W e a p o n I d ( ) )   = =   ' P C   C a r e t a k e r   S h o v e l ' )  
 	 	 	 	 {  
 	 	 	 	 	  
 	 	 	 	 	 l i f e L e e c h   =   C a l c u l a t e A t t r i b u t e V a l u e ( i n v . G e t I t e m A t t r i b u t e V a l u e ( a t t a c k A c t i o n . G e t W e a p o n I d ( )   , ' l i f e s t e a l ' ) ) ;  
 	 	 	 	 	 i f   ( n p c . U s e s V i t a l i t y ( ) )  
 	 	 	 	 	 	 l i f e L e e c h   * =   a c t i o n . p r o c e s s e d D m g . v i t a l i t y D a m a g e ;  
 	 	 	 	 	 e l s e   i f   ( U s e s E s s e n c e ( ) )  
 	 	 	 	 	 	 l i f e L e e c h   * =   a c t i o n . p r o c e s s e d D m g . e s s e n c e D a m a g e ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 l i f e L e e c h   =   0 ;  
 	 	 	 	 	 	  
 	 	 	 	 	 i f   (   l i f e L e e c h   >   0   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i n v . P l a y I t e m E f f e c t (   a t t a c k A c t i o n . G e t W e a p o n I d ( ) ,   ' s t a b _ a t t a c k '   ) ;  
 	 	 	 	 	 	 P l a y E f f e c t ( ' d r a i n _ e n e r g y _ c a r e t a k e r _ s h o v e l ' ) ; 	 	  
 	 	 	 	 	 	 G a i n S t a t ( B C S _ V i t a l i t y ,   l i f e L e e c h ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t H i t R e a c t T r a n s S c a l e ( f   :   f l o a t ) 	 	 	 { h i t R e a c t T r a n s S c a l e   =   f ; }  
 	 p u b l i c   f u n c t i o n   G e t H i t R e a c t T r a n s S c a l e ( )   :   f l o a t 	 	 	 	  
 	 {  
 	 	 i f   (   (   ( C N e w N P C ) s l i d e T a r g e t   ) . G e t I s T r a n s l a t i o n S c a l e d ( )   )  
 	 	 	 r e t u r n   h i t R e a c t T r a n s S c a l e ;  
 	 	 e l s e  
 	 	 	 r e t u r n   1 . f ;  
 	 }  
 	 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t H o r s e W i t h I n v e n t o r y ( )   :   C N e w N P C  
 	 {  
 	 	 r e t u r n   ( C N e w N P C ) E n t i t y H a n d l e G e t (   h o r s e W i t h I n v e n t o r y   ) ;  
 	 }  
 	 p u b l i c   f u n c t i o n   G e t H o r s e C u r r e n t l y M o u n t e d ( )   :   C N e w N P C  
 	 {  
 	 	 r e t u r n   c u r r e n t l y M o u n t e d H o r s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   _ S e t H o r s e C u r r e n t l y M o u n t e d (   h o r s e   :   C N e w N P C   )  
 	 {  
 	 	 c u r r e n t l y M o u n t e d H o r s e   =   h o r s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   W a s H o r s e R e c e n t l y S u m m o n e d ( )   :   b o o l  
 	 {  
 	 	 i f   (   h o r s e S u m m o n T i m e S t a m p   +   5 . f   >   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( )   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p r i v a t e   c o n s t   v a r   M O U N T _ D I S T A N C E _ C B T   :   f l o a t ;  
 	 d e f a u l t   M O U N T _ D I S T A N C E _ C B T   =   3 . 0 ;  
 	  
 	 p r i v a t e   c o n s t   v a r   M O U N T _ A N G L E _ C B T   :   f l o a t ;  
 	 d e f a u l t   M O U N T _ A N G L E _ C B T   =   3 5 . 0 ;  
 	  
 	 p r i v a t e   c o n s t   v a r   M O U N T _ A N G L E _ E X P   :   f l o a t ;  
 	 d e f a u l t   M O U N T _ A N G L E _ E X P   =   4 5 . 0 ;  
 	  
 	 p u b l i c   f u n c t i o n   I s M o u n t i n g H o r s e A l l o w e d (   o p t i o n a l   a l w a y s A l l o w e d I n E x p l o r a t i o n   :   b o o l   )   :   b o o l  
 	 {  
 	 	 v a r   a n g l e   :   f l o a t ;  
 	 	 v a r   d i s t a n c e   :   f l o a t ;  
 	 	  
 	 	 i f (   I s I n s i d e H o r s e I n t e r a c t i o n ( )   )  
 	 	 {  
 	 	 	 a n g l e   =   A n g l e D i s t a n c e (   t h e P l a y e r . r a w P l a y e r H e a d i n g ,   V e c H e a d i n g (   t h e P l a y e r . h o r s e I n t e r a c t i o n S o u r c e . G e t W o r l d P o s i t i o n ( )   -   t h e P l a y e r . G e t W o r l d P o s i t i o n ( )   )   ) ;  
 	 	 	  
 	 	 	 i f (   t h e P l a y e r . I s I n C o m b a t ( )   )  
 	 	 	 {  
 	 	 	 	 i f (   A b s F (   a n g l e   )   <   M O U N T _ A N G L E _ C B T   )  
 	 	 	 	 {  
 	 	 	 	 	 d i s t a n c e   =   V e c D i s t a n c e (   t h e P l a y e r . G e t W o r l d P o s i t i o n ( ) ,   t h e P l a y e r . h o r s e I n t e r a c t i o n S o u r c e . G e t W o r l d P o s i t i o n ( )   ) ;  
 	 	 	 	 	  
 	 	 	 	 	 i f (   d i s t a n c e   <   M O U N T _ D I S T A N C E _ C B T   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 { 	  
 	 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 	  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f (   a l w a y s A l l o w e d I n E x p l o r a t i o n   )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f (   A b s F (   a n g l e   )   <   M O U N T _ A N G L E _ E X P   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   F o l l o w A c t o r (   a c t o r   :   C A c t o r   )    
 	 {  
 	 	 v a r   l _ a i T r e e D e c o r a t o r 	 	 :   C A I P l a y e r A c t i o n D e c o r a t o r ;  
 	 	 v a r   l _ a i T r e e _ o n F o o t 	 	 	 :   C A I F o l l o w S i d e B y S i d e A c t i o n ;  
 	 	 v a r   l _ a i T r e e _ o n H o r s e 	 	 :   C A I R i d e r F o l l o w S i d e B y S i d e A c t i o n ;  
 	 	 v a r   l _ s u c c e s s 	 	 	 	 :   b o o l   =   f a l s e ;  
 	 	  
 	 	 a c t o r . A d d T a g (   ' p l a y e r F o l l o w i n g '   ) ;  
 	  
 	 	 i f (   t h e P l a y e r . I s U s i n g H o r s e ( )   )  
 	 	 {  
 	 	 	 l _ a i T r e e _ o n H o r s e   =   n e w   C A I R i d e r F o l l o w S i d e B y S i d e A c t i o n   i n   t h i s ;  
 	 	 	 l _ a i T r e e _ o n H o r s e . O n C r e a t e d ( ) ;  
 	  
 	 	 	 l _ a i T r e e _ o n H o r s e . p a r a m s . t a r g e t T a g   =   ' p l a y e r F o l l o w i n g ' ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 l _ a i T r e e _ o n F o o t   =   n e w   C A I F o l l o w S i d e B y S i d e A c t i o n   i n   t h i s ;  
 	 	 	 l _ a i T r e e _ o n F o o t . O n C r e a t e d ( ) ;  
 	  
 	 	 	 l _ a i T r e e _ o n F o o t . p a r a m s . t a r g e t T a g   =   ' p l a y e r F o l l o w i n g ' ;  
 	 	 }  
 	 	  
 	 	 l _ a i T r e e D e c o r a t o r   =   n e w   C A I P l a y e r A c t i o n D e c o r a t o r   i n   t h i s ;  
 	 	 l _ a i T r e e D e c o r a t o r . O n C r e a t e d ( ) ;  
 	 	 l _ a i T r e e D e c o r a t o r . i n t e r r u p t O n I n p u t   	 =   f a l s e ;  
 	 	  
 	 	 i f (   t h e P l a y e r . I s U s i n g H o r s e ( )   )  
 	 	 	 l _ a i T r e e D e c o r a t o r . s c r i p t e d A c t i o n   	 =   l _ a i T r e e _ o n H o r s e ; 	  
 	 	 e l s e  
 	 	 	 l _ a i T r e e D e c o r a t o r . s c r i p t e d A c t i o n   	 =   l _ a i T r e e _ o n F o o t ; 	  
  
 	 	 i f (   l _ a i T r e e D e c o r a t o r   )  
 	 	 	 l _ s u c c e s s   =   F o r c e A I B e h a v i o r (   l _ a i T r e e D e c o r a t o r ,   B T A P _ E m e r g e n c y   ) ;  
 	 	 e l s e   i f (   t h e P l a y e r . I s U s i n g H o r s e ( )   )  
 	 	 	 l _ s u c c e s s   =   F o r c e A I B e h a v i o r (   l _ a i T r e e _ o n H o r s e ,   B T A P _ E m e r g e n c y   ) ;  
 	 	 e l s e  
 	 	 	 l _ s u c c e s s   =   F o r c e A I B e h a v i o r (   l _ a i T r e e _ o n F o o t ,   B T A P _ E m e r g e n c y   ) ;  
 	 	 	  
 	 	 i f   (   l _ s u c c e s s   )  
 	 	 {  
 	 	 	 G e t M o v i n g A g e n t C o m p o n e n t ( ) . S e t G a m e p l a y R e l a t i v e M o v e S p e e d (   0 . 0 f   ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t C a n F o l l o w N p c (   v a l   :   b o o l ,   a c t o r   :   C A c t o r   )   {   c a n F o l l o w N p c   =   v a l ;   a c t o r T o F o l l o w   =   a c t o r ;   }  
 	 p u b l i c   f u n c t i o n   C a n F o l l o w N p c ( )   :   b o o l   {   r e t u r n   c a n F o l l o w N p c ;   }  
 	 p u b l i c   f u n c t i o n   G e t A c t o r T o F o l l o w ( )   :   C A c t o r   {   r e t u r n   a c t o r T o F o l l o w ;   }  
  
 	  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   S e t I s S w i m m i n g   (   t o g g l e   :   b o o l   ) 	 	  
 	 {    
 	 	 i f (   i s S w i m m i n g   ! =   t o g g l e   )  
 	 	 { 	 	 	  
 	 	 	 t h e P l a y e r . s u b s t a t e M a n a g e r . S e t B e h a v i o r P a r a m B o o l (   ' i s S w i m m i n g F o r O v e r l a y ' ,   t o g g l e   ) ;  
 	 	 	 i s S w i m m i n g   =   t o g g l e ;  
 	 	 } 	  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   R e p a i r I t e m U s i n g C o n s u m a b l e ( i t e m ,   c o n s u m a b l e   :   S I t e m U n i q u e I d )   :   b o o l  
 	 {  
 	 	 v a r   c u r r ,   m a x ,   r e p a i r V a l u e ,   i t e m V a l u e ,   r e p a i r B o n u s ,   n e w D u r a b i l i t y   :   f l o a t ;  
 	  
 	 	  
 	 	 i f ( ! i n v . I s I d V a l i d ( i t e m )   | |   ! i n v . I s I d V a l i d ( c o n s u m a b l e )   | |   ! i n v . H a s I t e m D u r a b i l i t y ( i t e m ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 c u r r   =   i n v . G e t I t e m D u r a b i l i t y ( i t e m ) ;  
 	 	 m a x   =   i n v . G e t I t e m M a x D u r a b i l i t y ( i t e m ) ;  
 	 	  
 	 	  
 	 	 i f ( c u r r   >   m a x )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	  
 	 	 i f (   ( i n v . I s I t e m A n y A r m o r ( i t e m )   & &   i n v . I t e m H a s T a g ( c o n s u m a b l e ,   t h e G a m e . p a r a m s . T A G _ R E P A I R _ C O N S U M A B L E _ A R M O R ) )   | |  
 	 	 	 ( i n v . I s I t e m S i l v e r S w o r d U s a b l e B y P l a y e r ( i t e m )   & &   i n v . I t e m H a s T a g ( c o n s u m a b l e ,   t h e G a m e . p a r a m s . T A G _ R E P A I R _ C O N S U M A B L E _ S I L V E R ) )   | |  
 	 	 	 ( i n v . I s I t e m S t e e l S w o r d U s a b l e B y P l a y e r ( i t e m )   & &   i n v . I t e m H a s T a g ( c o n s u m a b l e ,   t h e G a m e . p a r a m s . T A G _ R E P A I R _ C O N S U M A B L E _ S T E E L ) )     )  
 	 	 {  
 	 	 	  
 	 	 	 i t e m V a l u e   =   C a l c u l a t e A t t r i b u t e V a l u e ( i n v . G e t I t e m A t t r i b u t e V a l u e ( c o n s u m a b l e ,   ' d u r a b i l i t y R e p a i r V a l u e ' ) ) ;  
 	 	 	 i f ( i t e m V a l u e   < =   0 )  
 	 	 	 {  
 	 	 	 	 L o g A s s e r t ( f a l s e ,   " C R 4 P l a y e r . R e p a i r I t e m U s i n g C o n s u m a b l e :   c o n s u m a b l e   < < "   +   i n v . G e t I t e m N a m e ( c o n s u m a b l e )   +   " > >   h a s   < = 0   d u r a b i l i t y R e p a i r V a l u e ! ! ! " ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	 r e p a i r B o n u s   =   C a l c u l a t e A t t r i b u t e V a l u e ( i n v . G e t I t e m A t t r i b u t e V a l u e ( c o n s u m a b l e ,   ' d u r a b i l i t y B o n u s V a l u e ' ) ) ;  
 	 	 	 	 	 	  
 	 	 	  
 	 	 	 r e p a i r V a l u e   =   m a x   *   i t e m V a l u e   / 1 0 0 ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 n e w D u r a b i l i t y   =   M i n F ( m a x ,   c u r r   +   r e p a i r V a l u e ) ;  
 	 	 	  
 	 	 	 i n v . S e t I t e m D u r a b i l i t y S c r i p t ( i t e m ,   n e w D u r a b i l i t y ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i n v . R e m o v e I t e m ( c o n s u m a b l e ) ;  
 	 	 	  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 r e t u r n   f a l s e ;  
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
 	 p r i v a t e   f u n c t i o n   C h e c k D a y N i g h t C y c l e ( )  
 	 {  
 	 	 v a r   t i m e   :   G a m e T i m e ;  
 	 	 v a r   i s N i g h t   :   b o o l ;  
 	 	  
 	 	  
 	 	 i s N i g h t   =   t h e G a m e . e n v M g r . I s N i g h t ( ) ;  
 	 	 i f ( p r e v D a y N i g h t I s N i g h t   ! =   i s N i g h t )  
 	 	 {  
 	 	 	 i f ( i s N i g h t ) 	 	 	 	  
 	 	 	 	 O n N i g h t S t a r t e d ( ) ;  
 	 	 	 e l s e  
 	 	 	 	 O n D a y S t a r t e d ( ) ;  
 	 	 	 	  
 	 	 	 p r e v D a y N i g h t I s N i g h t   =   i s N i g h t ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( i s N i g h t )  
 	 	 	 t i m e   =   t h e G a m e . e n v M g r . G e t G a m e T i m e T i l l N e x t D a y ( ) ;  
 	 	 e l s e  
 	 	 	 t i m e   =   t h e G a m e . e n v M g r . G e t G a m e T i m e T i l l N e x t N i g h t ( ) ;  
 	 	 	  
 	 	 A d d G a m e T i m e T i m e r ( ' D a y N i g h t C y c l e ' ,   t i m e ) ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   D a y N i g h t C y c l e ( d t   :   G a m e T i m e ,   i d   :   i n t )  
 	 {  
 	 	 C h e c k D a y N i g h t C y c l e ( ) ;  
 	 }  
 	  
 	   e v e n t   O n N i g h t S t a r t e d ( )  
 	 {  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	  
 	 	 i f ( C a n U s e S k i l l ( S _ P e r k _ 0 1 ) )  
 	 	 {  
 	 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 	 p a m . S e t P e r k 0 1 A b i l i t i e s ( f a l s e ,   t r u e ) ;  
 	 	 } 	 	  
 	 }  
 	  
 	   e v e n t   O n D a y S t a r t e d ( )  
 	 {  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	  
 	 	 i f ( C a n U s e S k i l l ( S _ P e r k _ 0 1 ) )  
 	 	 {  
 	 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 	 p a m . S e t P e r k 0 1 A b i l i t i e s ( t r u e ,   f a l s e ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   F o r c e U n l o c k A l l I n p u t A c t i o n s ( a l s o Q u e s t L o c k s   :   b o o l )  
 	 {  
 	 	 i f   (   i n p u t H a n d l e r   )  
 	 	 	 i n p u t H a n d l e r . F o r c e U n l o c k A l l I n p u t A c t i o n s ( a l s o Q u e s t L o c k s ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t P r e v R a w L e f t J o y R o t ( )  
 	 {  
 	 	 p r e v R a w L e f t J o y R o t   =   r a w L e f t J o y R o t ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t P r e v R a w L e f t J o y R o t ( )   :   f l o a t  
 	 {  
 	 	 r e t u r n   p r e v R a w L e f t J o y R o t ;  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t E x p l o r a t i o n I n p u t C o n t e x t ( )   :   n a m e  
 	 {  
 	 	 r e t u r n   e x p l o r a t i o n I n p u t C o n t e x t ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t C o m b a t I n p u t C o n t e x t ( )   :   n a m e  
 	 {  
 	 	 r e t u r n   c o m b a t I n p u t C o n t e x t ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   S e t I s O n B o a t ( b   :   b o o l )  
 	 {  
 	 	 i s O n B o a t   =   b ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s O n B o a t ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s O n B o a t ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s I n S h a l l o w W a t e r ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s I n S h a l l o w W a t e r ;  
 	 }  
 	  
 	 e v e n t   O n E n t e r S h a l l o w W a t e r ( )  
 	 {  
 	 	 i f   (   i s I n S h a l l o w W a t e r   )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i s I n S h a l l o w W a t e r   =   t r u e ;  
 	 	 B l o c k A c t i o n (   E I A B _ D o d g e , ' S h a l l o w W a t e r ' ,   f a l s e ,   f a l s e ,   t r u e   ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ S p r i n t , ' S h a l l o w W a t e r ' ,   f a l s e ,   f a l s e ,   t r u e   ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ C r o s s b o w , ' S h a l l o w W a t e r ' ,   f a l s e ,   f a l s e ,   t r u e   ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ J u m p , ' S h a l l o w W a t e r ' ,   f a l s e ,   f a l s e ,   t r u e   ) ;  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' s h a l l o w W a t e r ' , 1 . 0 ) ;  
 	 }  
 	 e v e n t   O n E x i t S h a l l o w W a t e r ( )  
 	 {  
 	 	 i f   (   ! i s I n S h a l l o w W a t e r   )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i s I n S h a l l o w W a t e r   =   f a l s e ;  
 	 	 B l o c k A l l A c t i o n s ( ' S h a l l o w W a t e r ' , f a l s e ) ;  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' s h a l l o w W a t e r ' , 0 . 0 ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   T e s t I s I n S e t t l e m e n t ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   I s I n S e t t l e m e n t ( ) ;  
 	 }  
  
 	  
 	  
 	  
  
 	  
 	 p u b l i c   f u n c t i o n   P r o c e s s G l o s s a r y I m a g e O v e r r i d e (   d e f a u l t I m a g e   :   s t r i n g ,   u n i q u e T a g   :   n a m e   )   :   s t r i n g  
 	 {  
 	 	 v a r   s i z e   :   i n t ;  
 	 	 v a r   i   :   i n t ;    
 	 	  
 	 	 s i z e   =   g l o s s a r y I m a g e O v e r r i d e . S i z e ( ) ;  
 	 	  
 	 	 i f (   s i z e   = =   0   )  
 	 	 	 r e t u r n   d e f a u l t I m a g e ;  
 	 	  
 	 	 f o r (   i   =   0 ;   i   <   s i z e ;   i   + =   1   )  
 	 	 {  
 	 	 	 i f (   g l o s s a r y I m a g e O v e r r i d e [ i ] . u n i q u e T a g   = =   u n i q u e T a g   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 i f ( g l o s s a r y I m a g e O v e r r i d e [ i ] . i m a g e F i l e N a m e   = =   " G l o s s a r y P i c t u r e O v e r r i d e   t o   j o u r n a l _ r o a c h _ q 1 1 0 . p n g " )  
 	 	 	 	 {  
 	 	 	 	 	 E n a b l e G l o s s a r y I m a g e O v e r r i d e ( u n i q u e T a g ,   " j o u r n a l _ r o a c h _ q 1 1 0 . p n g " ,   t r u e   ) ;  
 	 	 	 	 	 r e t u r n   " j o u r n a l _ r o a c h _ q 1 1 0 . p n g " ;  
 	 	 	 	 }  
 	 	 	 	 r e t u r n   g l o s s a r y I m a g e O v e r r i d e [ i ] . i m a g e F i l e N a m e ;  
 	 	 	 }  
 	 	 	  
 	 	 }  
 	 	  
 	 	 r e t u r n   d e f a u l t I m a g e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   E n a b l e G l o s s a r y I m a g e O v e r r i d e (   u n i q u e T a g   :   n a m e ,   i m a g e F i l e N a m e   :   s t r i n g ,   e n a b l e   :   b o o l   )  
 	 {  
 	 	 v a r   i m a g e D a t a   :   S G l o s s a r y I m a g e O v e r r i d e ;  
 	 	 v a r   s i z e   :   i n t ;  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 f o r (   i   =   0 ;   i   <   g l o s s a r y I m a g e O v e r r i d e . S i z e ( ) ;   i   + =   1   )  
 	 	 {  
 	 	 	 i f (   g l o s s a r y I m a g e O v e r r i d e [ i ] . u n i q u e T a g   = =   u n i q u e T a g   )  
 	 	 	 {  
 	 	 	 	 g l o s s a r y I m a g e O v e r r i d e . R e m o v e ( g l o s s a r y I m a g e O v e r r i d e [ i ] ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f (   e n a b l e   )  
 	 	 {  
 	 	 	 i f (   I s N a m e V a l i d ( u n i q u e T a g )   & &   i m a g e F i l e N a m e   ! =   " "   )  
 	 	 	 {  
 	 	 	 	 g l o s s a r y I m a g e O v e r r i d e . P u s h B a c k (   S G l o s s a r y I m a g e O v e r r i d e (   u n i q u e T a g ,   i m a g e F i l e N a m e   )   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   S e t W e a t h e r D i s p l a y D i s a b l e d (   d i s a b l e   :   b o o l   )  
 	 {  
 	 	 d i s a b l e W e a t h e r D i s p l a y   =   d i s a b l e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t W e a t h e r D i s p l a y D i s a b l e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   d i s a b l e W e a t h e r D i s p l a y ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   S e t C u r r e n t M o n s t e r H u n t I n v e s t i g a t i o n A r e a   (   a r e a   :   W 3 M o n s t e r H u n t I n v e s t i g a t i o n A r e a   )  
 	 {  
 	 	 c u r r e n t M o n s t e r H u n t I n v e s t i g a t i o n A r e a   =   a r e a ;  
 	 }  
  
  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   R e m e m b e r C u s t o m H e a d (   h e a d N a m e   :   n a m e   )  
 	 {  
 	 	 r e m e m b e r e d C u s t o m H e a d   =   h e a d N a m e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t R e m e m b e r e d C u s t o m H e a d ( )   :   n a m e  
 	 {  
 	 	 r e t u r n   r e m e m b e r e d C u s t o m H e a d ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   C l e a r R e m e m b e r e d C u s t o m H e a d ( )  
 	 {  
 	 	 r e m e m b e r e d C u s t o m H e a d   =   ' ' ;  
 	 } 	  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   C r e a t e T u t o r i a l I n p u t ( )  
 	 {  
 	 	 v a r   p r e v I n p u t H a n d l e r   :   C P l a y e r I n p u t ;  
 	 	  
 	 	 p r e v I n p u t H a n d l e r   =   i n p u t H a n d l e r ;  
 	 	 i n p u t H a n d l e r   =   n e w   W 3 P l a y e r T u t o r i a l I n p u t   i n   t h i s ;  
 	 	 i n p u t H a n d l e r . I n i t i a l i z e ( f a l s e ,   p r e v I n p u t H a n d l e r ) ;  
 	 	  
 	 	 i f ( p r e v I n p u t H a n d l e r )  
 	 	 	 d e l e t e   p r e v I n p u t H a n d l e r ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C r e a t e I n p u t ( )  
 	 {  
 	 	 v a r   o l d I n p u t H a n d l e r   :   C P l a y e r I n p u t ;  
 	 	  
 	 	 o l d I n p u t H a n d l e r   =   i n p u t H a n d l e r ;  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 / / i n p u t H a n d l e r   =   n e w   C P l a y e r I n p u t   i n   t h i s ;  
 	 	 i n p u t H a n d l e r   =   n e w   W 3 R e d u x R G C I n p u t   i n   t h i s ;  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	 i n p u t H a n d l e r . I n i t i a l i z e ( f a l s e ,   o l d I n p u t H a n d l e r ) ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   T u t o r i a l S i l v e r C o m b a t ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   a c t o r s   :   a r r a y < C A c t o r > ; 	 	  
 	  
 	 	 i f ( I s I n C o m b a t ( ) )  
 	 	 {  
 	 	 	 a c t o r s   =   G e t N P C s A n d P l a y e r s I n R a n g e ( 2 0 ,   1 0 0 0 0 0 0 ,   , F L A G _ E x c l u d e P l a y e r   +   F L A G _ O n l y A l i v e A c t o r s ) ;  
 	 	 	 f o r ( i = 0 ;   i < a c t o r s . S i z e ( ) ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 i f ( a c t o r s [ i ]   & &   I s R e q u i r e d A t t i t u d e B e t w e e n ( t h i s ,   a c t o r s [ i ] ,   t r u e )   & &   a c t o r s [ i ] . U s e s E s s e n c e ( ) )  
 	 	 	 	 {  
 	 	 	 	 	 F a c t s A d d ( " T u t o r i a l S h o w S i l v e r " ) ;  
 	 	 	 	 	  
 	 	 	 	 	 R e m o v e T i m e r ( ' T u t o r i a l S i l v e r C o m b a t ' ) ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 } 	  
  
 	 p r i v a t e   s a v e d   v a r   m _ b o s s T a g   :   n a m e ;  
 	  
 	 p u b l i c   f u n c t i o n   G e t B o s s T a g ( )   :   n a m e  
 	 {  
 	 	 r e t u r n   m _ b o s s T a g ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t B o s s T a g (   b o s s T a g   :   n a m e   )  
 	 {  
 	 	 m _ b o s s T a g   =   b o s s T a g ;  
 	 }  
 	  
 	 p r i v a t e   s a v e d   v a r   m _ u s i n g C o a t O f A r m s   :   b o o l ; 	 	 d e f a u l t   m _ u s i n g C o a t O f A r m s   =   f a l s e ;  
 	  
 	 p u b l i c   f u n c t i o n   I s U s i n g C o a t O f A r m s ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   m _ u s i n g C o a t O f A r m s ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t U s i n g C o a t O f A r m s (   u s i n g   :   b o o l )  
 	 {  
 	 	 m _ u s i n g C o a t O f A r m s   =   u s i n g ;  
 	 }  
  
 	 p r i v a t e   s a v e d   v a r   m _ i n i t i a l T i m e O u t   :   f l o a t ;  
 	 p r i v a t e   s a v e d   v a r   m _ c u r r e n t T i m e O u t   :   f l o a t ;  
 	  
 	 p u b l i c   f u n c t i o n   G e t I n i t i a l T i m e O u t ( )   :   f l o a t  
 	 {  
 	 	 r e t u r n   m _ i n i t i a l T i m e O u t ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t I n i t i a l T i m e O u t (   t i m e O u t   :   f l o a t   )  
 	 {  
 	 	 m _ i n i t i a l T i m e O u t   =   t i m e O u t ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   G e t C u r r e n t T i m e O u t ( )   :   f l o a t  
 	 {  
 	 	 r e t u r n   m _ c u r r e n t T i m e O u t ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t C u r r e n t T i m e O u t (   t i m e O u t   :   f l o a t   )  
 	 {  
 	 	 m _ c u r r e n t T i m e O u t   =   t i m e O u t ;  
 	 }  
 	  
  
 	  
 	  
 	  
 	  
 	 t i m e r   f u n c t i o n   D e l a y e d F i n i s h e r I n p u t T i m e r ( d t   :   f l o a t ,   i d   :   i n t )  
 	 { 	  
 	 	  
 	 	  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   R e m o v e F i n i s h e r C a m e r a A n i m a t i o n C h e c k ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 i f   (   ! i s I n F i n i s h e r   & &   ! b L A x i s R e l e a s e d   )  
 	 	 {  
 	 	 	 t h e G a m e . G e t S y n c A n i m M a n a g e r ( ) . O n R e m o v e F i n i s h e r C a m e r a A n i m a t i o n ( ) ;  
 	 	 	 R e m o v e T i m e r (   ' R e m o v e F i n i s h e r C a m e r a A n i m a t i o n C h e c k '   ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	 	  
 	 t i m e r   f u n c t i o n   G a m e p l a y F a c t R e m o v e ( d t   :   f l o a t ,   t i m e r I d   :   i n t )  
 	 {  
 	 	 t h e G a m e . G a m e p l a y F a c t R e m o v e F r o m T i m e r ( t i m e r I d ) ;  
 	 } 	  
 	  
 	  
 	 t i m e r   f u n c t i o n   G i v e S t a r t i n g I t e m s ( d t   :   f l o a t ,   t i m e r I d   :   i n t )  
 	 {  
 	 	 v a r   t e m p l a t e   :   C E n t i t y T e m p l a t e ;  
 	 	 v a r   i n v E n t i t y   :   C I n v e n t o r y C o m p o n e n t ;  
 	 	 v a r   e n t i t y   :   C E n t i t y ;  
 	 	 v a r   i t e m s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   i d   :   S I t e m U n i q u e I d ;  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	  
 	 	 i f ( i n v )  
 	 	 { 	 	 	  
 	 	 	 i n v . G e t A l l I t e m s ( i t e m s ) ;  
 	 	 	 i f ( i t e m s . S i z e ( )   < =   0 )  
 	 	 	 {  
 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 t e m p l a t e   =   ( C E n t i t y T e m p l a t e ) L o a d R e s o u r c e ( " g e r a l t _ i n v e n t o r y _ r e l e a s e " ) ;  
 	 	 e n t i t y   =   t h e G a m e . C r e a t e E n t i t y ( t e m p l a t e ,   V e c t o r ( 0 , 0 , 0 ) ) ;  
 	 	 i n v E n t i t y   =   ( C I n v e n t o r y C o m p o n e n t ) e n t i t y . G e t C o m p o n e n t B y C l a s s N a m e ( ' C I n v e n t o r y C o m p o n e n t ' ) ;  
 	 	  
 	 	 i n v E n t i t y . G e t A l l I t e m s ( i t e m s ) ; 	 	 	 	  
 	 	 f o r ( i = 0 ;   i < i t e m s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 i d   =   i n v E n t i t y . G i v e I t e m T o ( i n v ,   i t e m s [ i ] ,   0 ,   f a l s e ,   t r u e ) ;  
 	 	 	 i f   (   i n v . I t e m H a s T a g ( i d , ' S c a b b a r d ' )   )  
 	 	 	 {  
 	 	 	 	 i n v . M o u n t I t e m ( i d ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( ! i n v . I s I t e m F i s t s ( i d )   & &   i n v . G e t I t e m N a m e ( i d )   ! =   ' C a t   1 ' ) 	  
 	 	 	 {  
 	 	 	 	 E q u i p I t e m ( i d ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( i n v . I s I t e m S i n g l e t o n I t e m ( i d ) )  
 	 	 	 {  
 	 	 	 	 i n v . S i n g l e t o n I t e m S e t A m m o ( i d ,   i n v . S i n g l e t o n I t e m G e t M a x A m m o ( i d ) ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 e n t i t y . D e s t r o y ( ) ;  
 	 	  
 	 	  
 	 	 R e m o v e T i m e r ( ' G i v e S t a r t i n g I t e m s ' ) ;  
 	 }  
 	  
 	  
 	  
 	 t i m e r   f u n c t i o n   D e b u g _ G i v e T e s t i n g I t e m s ( d t   :   f l o a t ,   o p t i o n a l   i d   :   i n t )  
 	 {  
 	 	 v a r   t e m p l a t e   :   C E n t i t y T e m p l a t e ;  
 	 	 v a r   i n v T e s t i n g   :   C I n v e n t o r y C o m p o n e n t ;  
 	 	 v a r   e n t i t y   :   C E n t i t y ;  
 	 	 v a r   i t e m s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   s l o t   :   E E q u i p m e n t S l o t s ;  
 	 	 	  
 	 	  
 	 	 i f ( i n v )  
 	 	 {  
 	 	 	 i n v . G e t A l l I t e m s ( i t e m s ) ;  
 	 	 	 i f ( i t e m s . S i z e ( )   < =   0 )  
 	 	 	 {  
 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 t e m p l a t e   =   ( C E n t i t y T e m p l a t e ) L o a d R e s o u r c e ( " g e r a l t _ i n v e n t o r y _ i n t e r n a l " ) ;  
 	 	 e n t i t y   =   t h e G a m e . C r e a t e E n t i t y ( t e m p l a t e ,   V e c t o r ( 0 , 0 , 0 ) ) ;  
 	 	 i n v T e s t i n g   =   ( C I n v e n t o r y C o m p o n e n t ) e n t i t y . G e t C o m p o n e n t B y C l a s s N a m e ( ' C I n v e n t o r y C o m p o n e n t ' ) ;  
 	 	 i n v T e s t i n g . G i v e A l l I t e m s T o ( i n v ,   t r u e ) ;  
 	 	 e n t i t y . D e s t r o y ( ) ;  
 	 	  
 	 	  
 	 	 R e m o v e T i m e r ( ' D e b u g _ G i v e T e s t i n g I t e m s ' ) ;  
 	 	  
 	 	  
 	 	 i n v . G e t A l l I t e m s ( i t e m s ) ;  
 	 	 	 	  
 	 	 f o r ( i = 0 ;   i < i t e m s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 i f (   i n v . I s I t e m C r o s s b o w ( i t e m s [ i ] )   | |   i n v . I s I t e m B o m b ( i t e m s [ i ] )   )  
 	 	 	 {  
 	 	 	 	 s l o t   =   i n v . G e t S l o t F o r I t e m I d ( i t e m s [ i ] ) ;  
 	 	 	 	 E q u i p I t e m ( i t e m s [ i ] ,   s l o t ) ;  
 	 	 	 	  
 	 	 	 	 i f (   ( W 3 P l a y e r W i t c h e r ) t h i s   & &   i n v . I s I t e m C r o s s b o w ( i t e m s [ i ] )   )  
 	 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e l e c t Q u i c k s l o t I t e m ( s l o t ) ;  
 	 	 	 } 	 	 	  
 	 	 	 e l s e   i f ( i n v . I s I t e m B o l t ( i t e m s [ i ] ) )  
 	 	 	 {  
 	 	 	 	 s l o t   =   i n v . G e t S l o t F o r I t e m I d ( i t e m s [ i ] ) ;  
 	 	 	 	 E q u i p I t e m ( i t e m s [ i ] ,   s l o t ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f ( i n v . I s I t e m S i n g l e t o n I t e m ( i t e m s [ i ] ) )  
 	 	 	 {  
 	 	 	 	 i n v . S i n g l e t o n I t e m S e t A m m o ( i t e m s [ i ] ,   i n v . S i n g l e t o n I t e m G e t M a x A m m o ( i t e m s [ i ] ) ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	 t i m e r   f u n c t i o n   D e b u g _ R e m o v e T e s t i n g I t e m s ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 v a r   t e m p l a t e   :   C E n t i t y T e m p l a t e ;  
 	 	 v a r   e n t i t y   :   C E n t i t y ;  
 	 	 v a r   i n v T e s t i n g   :   C I n v e n t o r y C o m p o n e n t ;  
 	 	 v a r   i d s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 t e m p l a t e   =   ( C E n t i t y T e m p l a t e ) L o a d R e s o u r c e ( " g e r a l t _ i n v e n t o r y _ i n t e r n a l " ) ;  
 	 	 e n t i t y   =   t h e G a m e . C r e a t e E n t i t y ( t e m p l a t e ,   V e c t o r ( 0 , 0 , 0 ) ) ;  
 	 	 i n v T e s t i n g   =   ( C I n v e n t o r y C o m p o n e n t ) e n t i t y . G e t C o m p o n e n t B y C l a s s N a m e ( ' C I n v e n t o r y C o m p o n e n t ' ) ;  
 	 	 i n v T e s t i n g . G e t A l l I t e m s ( i d s ) ;  
 	 	  
 	 	 f o r ( i = 0 ;   i < i d s . S i z e ( ) ;   i + = 1 )  
 	 	 	 i n v . R e m o v e I t e m B y N a m e ( i n v T e s t i n g . G e t I t e m N a m e ( i d s [ i ] ) ,   i n v T e s t i n g . G e t I t e m Q u a n t i t y ( i d s [ i ] ) ) ;  
 	 	  
 	 	 e n t i t y . D e s t r o y ( ) ;  
 	 	 R e m o v e T i m e r ( ' D e b u g _ R e m o v e T e s t i n g I t e m s ' ) ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   D e b u g _ D e l a y e d C o n s o l e C o m m a n d ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	  
 	 	 i n v . A d d A n I t e m ( ' B o o t s   2   s c h e m a t i c ' ) ;  
 	 }  
 	  
 	 f u n c t i o n   D B G _ S k i l l S l o t s ( )  
 	 {  
 	 	 ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . D B G _ S k i l l S l o t s ( ) ;  
 	 }  
  
 	  
 	  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   S e t P a d B a c k l i g h t C o l o r ( r ,   g ,   b   :   i n t )  
 	 {  
 	 	 v a r   p a d B a c k l i g h t C o l o r   :   V e c t o r ;  
 	 	  
 	 	 p a d B a c k l i g h t C o l o r . X   =   r   /   2 5 5 ;  
 	 	 p a d B a c k l i g h t C o l o r . Y   =   g   /   2 5 5 ;  
 	 	 p a d B a c k l i g h t C o l o r . Z   =   b   /   2 5 5 ;  
 	 	  
 	 	 S e t B a c k l i g h t C o l o r ( p a d B a c k l i g h t C o l o r ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   S e t P a d B a c k l i g h t C o l o r F r o m S i g n ( s i g n T y p e   :   E S i g n T y p e )  
 	 {  
 	 	 L o g P S 4 L i g h t ( " S e t P a d B a c k l i g h t C o l o r F r o m S i g n . . .   "   +   s i g n T y p e ) ;  
 	 	  
 	 	 s w i t c h ( s i g n T y p e )  
 	 	 {  
 	 	 	 c a s e   S T _ Y r d e n :   	 S e t P a d B a c k l i g h t C o l o r (   2 0 0   ,   8 1     ,   2 5 5   ) ;   b r e a k ; 	  
 	 	 	 c a s e   S T _ Q u e n :   	 S e t P a d B a c k l i g h t C o l o r (   2 5 5   ,   2 0 5   ,   6 8     ) ;   b r e a k ; 	  
 	 	 	 c a s e   S T _ I g n i :   	 S e t P a d B a c k l i g h t C o l o r (   2 5 5   ,   7 9     ,   1 0     ) ;   b r e a k ; 	  
 	 	 	 c a s e   S T _ A x i i :   	 S e t P a d B a c k l i g h t C o l o r (   2 5 5   ,   2 5 5   ,   2 5 5   ) ;   b r e a k ; 	  
 	 	 	 c a s e   S T _ A a r d :   	 S e t P a d B a c k l i g h t C o l o r (   1 5 8   ,   2 1 4   ,   2 5 5   ) ;   b r e a k ; 	  
 	 	 }  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   R e s e t P a d B a c k l i g h t C o l o r T i m e r ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 R e s e t P a d B a c k l i g h t C o l o r ( ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   R e s e t P a d B a c k l i g h t C o l o r ( o p t i o n a l   s k i p H e l d W e a p o n   :   b o o l )  
 	 {  
 	 	 v a r   w e a p o n s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   s w o r d   :   C W i t c h e r S w o r d ;  
 	 	 v a r   h e a l t h P e r c e n t a g e   :   f l o a t ;  
 	 	 v a r   t m p B a c k l i g h t   :   V e c t o r ;  
 	 	  
 	 	 i f ( ! s k i p H e l d W e a p o n )  
 	 	 {  
 	 	 	 w e a p o n s   =   i n v . G e t H e l d W e a p o n s ( ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f ( w e a p o n s . S i z e ( )   >   0 )  
 	 	 	 {  
 	 	 	 	 s w o r d   =   ( C W i t c h e r S w o r d ) i n v . G e t I t e m E n t i t y U n s a f e ( w e a p o n s [ 0 ] ) ;  
 	 	 	 	 i f ( s w o r d )  
 	 	 	 	 {  
 	 	 	 	 	 t m p B a c k l i g h t . X   =   s w o r d . p a d B a c k l i g h t C o l o r . X   /   2 5 5 . 0 f ;  
 	 	 	 	 	 t m p B a c k l i g h t . Y   =   s w o r d . p a d B a c k l i g h t C o l o r . Y   /   2 5 5 . 0 f ;  
 	 	 	 	 	 t m p B a c k l i g h t . Z   =   s w o r d . p a d B a c k l i g h t C o l o r . Z   /   2 5 5 . 0 f ;  
 	 	 	 	 	 t m p B a c k l i g h t . W   =   1 . 0 f ;  
 	 	 	 	 	 S e t B a c k l i g h t C o l o r (   t m p B a c k l i g h t   ) ;  
 	 	 	 	 	 L o g P S 4 L i g h t ( " S e t t i n g   l i g h t   f r o m   s w o r d   t e m p l a t e :   "   +   N o T r a i l Z e r o s ( s w o r d . p a d B a c k l i g h t C o l o r . X )   +   " ,   "   +   N o T r a i l Z e r o s ( s w o r d . p a d B a c k l i g h t C o l o r . Y )   +   " ,   "   +   N o T r a i l Z e r o s ( s w o r d . p a d B a c k l i g h t C o l o r . Z )   ) ;  
 	 	 	 	 	 r e t u r n ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 h e a l t h P e r c e n t a g e   =   G e t S t a t P e r c e n t s (   B C S _ V i t a l i t y   ) ;  
 	 	 S e t B a c k l i g h t F r o m H e a l t h (   h e a l t h P e r c e n t a g e   ) ;  
 	 	 L o g P S 4 L i g h t ( " S e t t i n g   l i g h t   f r o m   h e a l t h ,   "   +   N o T r a i l Z e r o s ( R o u n d M a t h ( h e a l t h P e r c e n t a g e * 1 0 0 ) )   +   " % " ) ;  
 	 }  
 	  
 	  
  
 	 e v e n t   O n O p e n n i n g D o o r ( )  
 	 {  
 	 	 i f (   ! t h e P l a y e r . I s U s i n g H o r s e ( )   )  
 	 	 {  
 	 	 	 R a i s e E v e n t ( ' O p e n D o o r ' ) ;  
 	 	 	 t h e S o u n d . S o u n d E v e n t ( " g l o b a l _ d o o r _ h a p t i c _ o p e n " ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   S e t L o o p i n g C a m e r a S h a k e A n i m N a m e (   n   :   n a m e   )  
 	 {  
 	 	 l o o p i n g C a m e r a S h a k e A n i m N a m e   =   n ;  
 	 }  
 	  
 	 p u b l i c   v a r   l o o p i n g C a m e r a S h a k e A n i m N a m e   :   n a m e ;  
 	 t i m e r   f u n c t i o n   R e m o v e Q u e s t C a m e r a S h a k e T i m e r (   d t   :   f l o a t   ,   i d   :   i n t )  
 	 {  
 	 	 R e m o v e Q u e s t C a m e r a S h a k e (   l o o p i n g C a m e r a S h a k e A n i m N a m e   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R e m o v e Q u e s t C a m e r a S h a k e (   a n i m N a m e   :   n a m e   )  
 	 {  
 	 	 v a r   c a m e r a   	 :   C C u s t o m C a m e r a   =   t h e G a m e . G e t G a m e C a m e r a ( ) ;  
 	 	 v a r   a n i m a t i o n   :   S C a m e r a A n i m a t i o n D e f i n i t i o n ;  
 	 	  
 	 	 c a m e r a . S t o p A n i m a t i o n (   a n i m N a m e   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t C a m e r a P a d d i n g ( )   :   f l o a t  
 	 {  
 	 	 i f (   t h e G a m e . I s F o c u s M o d e A c t i v e ( )   )  
 	 	 {  
 	 	 	 r e t u r n   0 . 2 5 ;    
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n   0 . 0 2 f ;    
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s P e r f o r m i n g P h a s e C h a n g e A n i m a t i o n ( )   :   b o o l 	 	 	 {   r e t u r n   i s P e r f o r m i n g P h a s e C h a n g e A n i m a t i o n ;   }  
 	 p u b l i c   f u n c t i o n   S e t I s P e r f o r m i n g P h a s e C h a n g e A n i m a t i o n (   v a l   :   b o o l   ) 	 {   i s P e r f o r m i n g P h a s e C h a n g e A n i m a t i o n   =   v a l ;   }  
 	  
 	 p r i v a t e   f u n c t i o n   D e a l C o u n t e r D a m a g e T o O l g i e r d ( )  
 	 {  
 	 	 v a r   d a m a g e   :   W 3 D a m a g e A c t i o n ;  
 	 	  
 	 	 d a m a g e   =   n e w   W 3 D a m a g e A c t i o n   i n   t h i s ;  
 	 	 	 	  
 	 	 d a m a g e . I n i t i a l i z e (   t h e P l a y e r . G e t T a r g e t ( ) ,   t h e P l a y e r . G e t T a r g e t ( ) ,   N U L L ,   t h i s ,   E H R T _ N o n e ,   C P S _ U n d e f i n e d ,   f a l s e ,   f a l s e ,   f a l s e ,   t r u e   ) ;  
 	 	 d a m a g e . A d d D a m a g e (   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ D I R E C T ,   t h e P l a y e r . G e t T a r g e t ( ) . G e t S t a t M a x (   B C S _ V i t a l i t y   )   *   3   /   1 0 0   ) ;  
 	 	 t h e G a m e . d a m a g e M g r . P r o c e s s A c t i o n (   d a m a g e   ) ;  
 	 	  
 	 	 d e l e t e   d a m a g e ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   P l a y D e l a y e d C o u n t e r D a m a g e E f f e c t (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 t h e P l a y e r . G e t T a r g e t ( ) . P l a y E f f e c t (   ' o l g i e r d _ e n e r g y _ b l a s t '   ) ;  
 	 }  
  
 	  
 	 p u b l i c   f u n c t i o n   S e t T e s t A d j u s t R e q u e s t e d M o v e m e n t D i r e c t i o n (   v a l   :   b o o l   )  
 	 {  
 	 	 t e s t A d j u s t R e q u e s t e d M o v e m e n t D i r e c t i o n   =   v a l ;  
 	 }  
 	  
 	 e v e n t   O n V i s u a l D e b u g (   f r a m e   :   C S c r i p t e d R e n d e r F r a m e ,   f l a g   :   E S h o w F l a g s   )  
 	 {  
 	 	 v a r 	 b o n e F o l l o w 	 	 :   i n t ;  
 	 	 v a r 	 b o n e P o s i t i o n   	 :   V e c t o r ;  
 	 	 v a r   y r d e n E n t i t y 	 	 :   W 3 Y r d e n E n t i t y ;  
 	 	  
 	 	 s u b s t a t e M a n a g e r . O n V i s u a l D e b u g (   f r a m e ,   f l a g   ) ;  
 	 	  
 	 	 b o n e F o l l o w 	 	 =   t h e P l a y e r . G e t B o n e I n d e x (   ' R e f e r e n c e '   ) ;  
 	 	 b o n e P o s i t i o n 	 =   M a t r i x G e t T r a n s l a t i o n (   t h e P l a y e r . G e t B o n e W o r l d M a t r i x B y I n d e x (   b o n e F o l l o w   )   ) ;  
 	 	 f r a m e . D r a w T e x t (   " R " ,   b o n e P o s i t i o n ,   C o l o r (   5 0 ,   2 0 0 ,   7 0   )   ) ;  
 	 	  
 	 	  
 	 	 b o n e F o l l o w 	 	 =   t h e P l a y e r . G e t B o n e I n d e x (   ' T r a j e c t o r y '   ) ;  
 	 	 b o n e P o s i t i o n 	 =   M a t r i x G e t T r a n s l a t i o n (   t h e P l a y e r . G e t B o n e W o r l d M a t r i x B y I n d e x (   b o n e F o l l o w   )   ) ;  
 	 	 f r a m e . D r a w S p h e r e (   b o n e P o s i t i o n ,   0 . 1 f ,   C o l o r (   2 0 0 ,   5 0 ,   7 0   )   ) ;  
 	 	 f r a m e . D r a w T e x t (   " T " ,   b o n e P o s i t i o n ,   C o l o r (   2 0 0 ,   5 0 ,   7 0   )   ) ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 y r d e n E n t i t y   =   ( W 3 Y r d e n E n t i t y ) G e t W i t c h e r P l a y e r ( ) . G e t S i g n E n t i t y ( S T _ Y r d e n ) ;  
 	 	 y r d e n E n t i t y . O n V i s u a l D e b u g ( f r a m e ,   f l a g ,   f a l s e ) ;  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   P o t D r i n k T i m e r ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 i n p u t H a n d l e r . P o t D r i n k T i m e r ( f a l s e ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t I s H o r s e R a c i n g (   v a l   :   b o o l   )  
 	 {  
 	 	 i s H o r s e R a c i n g   =   v a l ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t I s H o r s e R a c i n g ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s H o r s e R a c i n g ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t H o r s e C o m b a t S l o w M o (   v a l   :   b o o l   )  
 	 {  
 	 	 h o r s e C o m b a t S l o w M o   =   v a l ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t H o r s e C o m b a t S l o w M o ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   h o r s e C o m b a t S l o w M o ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t I t e m s P e r L e v e l G i v e n (   i d   :   i n t   )  
 	 {  
 	 	 i t e m s P e r L e v e l G i v e n [ i d ]   =   t r u e ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   A d d I t e m P e r L e v e l L i s t ( )  
 	 {  
 	 	 v a r   i   :   i n t ;    
  
 	 	 i t e m s P e r L e v e l . C l e a r ( ) ;  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' O ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' N o   M a n s   L a n d   s w o r d   2 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' N o   M a n s   L a n d   s w o r d   3 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' S i l v e r   s w o r d   2 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' B o o t s   0 1 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' N o v i g r a a d a n   s w o r d   2 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' L i g h t   a r m o r   0 1 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' H e a v y   b o o t s   0 1 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' N i l f g a a r d i a n   s w o r d   3 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' S i l v e r   s w o r d   3 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' H e a v y   g l o v e s   0 1 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' S k e l l i g e   s w o r d   2 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' H e a v y   p a n t s   0 1 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' S i l v e r   s w o r d   4 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' N o   M a n s   L a n d   s w o r d   4 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' H e a v y   a r m o r   0 1 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' H e a v y   b o o t s   0 2 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' S k e l l i g e   s w o r d   3 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' S i l v e r   s w o r d   5 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' H e a v y   p a n t s   0 2 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' H e a v y   g l o v e s   0 2 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' H e a v y   g l o v e s   0 2 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' H e a v y   a r m o r   0 2 ' ) ; 	 	  
 	 	 i t e m s P e r L e v e l . P u s h B a c k ( ' S c o i a t a e l   s w o r d   1 ' ) ; 	 	  
 	 	  
 	 	 i f   (   i t e m s P e r L e v e l G i v e n . S i z e ( )   <   4 9   )  
 	 	 {  
 	 	 	 i t e m s P e r L e v e l G i v e n . C l e a r ( ) ;  
 	 	 	 f o r   ( i   =   0 ;   i   <   i t e m s P e r L e v e l . S i z e ( ) ;   i   + =   1 )   {   i t e m s P e r L e v e l G i v e n . P u s h B a c k (   f a l s e   ) ;   }  
 	 	 } 	 	  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   D e a l D a m a g e T o B o a t (   d m g   :   f l o a t ,   i n d e x   :   i n t ,   o p t i o n a l   g l o b a l H i t P o s   :   V e c t o r   )  
 	 {  
 	 	 v a r   b o a t   :   C B o a t D e s t r u c t i o n C o m p o n e n t ;  
 	 	  
 	 	 i f ( u s e d V e h i c l e )  
 	 	 {  
 	 	 	 b o a t   =   ( C B o a t D e s t r u c t i o n C o m p o n e n t )   u s e d V e h i c l e . G e t C o m p o n e n t B y C l a s s N a m e (   ' C B o a t D e s t r u c t i o n C o m p o n e n t '   ) ;  
 	 	 	 i f (   b o a t   )  
 	 	 	 {  
 	 	 	 	 b o a t . D e a l D a m a g e (   d m g ,   i n d e x ,   g l o b a l H i t P o s   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   O n S t a r t T e l e p o r t i n g P l a y e r T o P l a y a b l e A r e a ( )  
 	 {  
 	 	 v a r   F A D E O U T _ I N T E R V A L   :   f l o a t   =   0 . 5 ;  
 	 	  
 	 	  
 	 	 i f   (   t h e P l a y e r . I s U s i n g H o r s e ( )   )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . G e t U s e d H o r s e C o m p o n e n t ( ) . O n C h e c k H o r s e J u m p ( )   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . G e t U s e d H o r s e C o m p o n e n t ( ) . S e t C a n T a k e D a m a g e F r o m F a l l i n g (   f a l s e   ) ;  
 	 	 	 }  
 	 	 }  
  
 	 	 i f   (   t h e P l a y e r . I s A c t i o n A l l o w e d (   E I A B _ F a s t T r a v e l   )   )  
 	 	 {  
 	 	 	 O n O p e n M a p T o L e t P l a y e r G o B a c k T o P l a y a b l e A r e a ( ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e G a m e . F a d e O u t A s y n c (   F A D E O U T _ I N T E R V A L   ) ;  
 	 	 	 t h e P l a y e r . A d d T i m e r (   ' B o r d e r T e l e p o r t F a d e O u t T i m e r ' ,   F A D E O U T _ I N T E R V A L ,   f a l s e   ) ;  
 	 	 } 	  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   B o r d e r T e l e p o r t F a d e O u t T i m e r (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 O n T e l e p o r t P l a y e r T o P l a y a b l e A r e a (   f a l s e   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   O n O p e n M a p T o L e t P l a y e r G o B a c k T o P l a y a b l e A r e a ( )  
 	 {  
 	 	 v a r   i n i t D a t a   :   W 3 M a p I n i t D a t a ;  
 	 	  
 	 	 i n i t D a t a   =   n e w   W 3 M a p I n i t D a t a   i n   t h i s ;  
 	 	 i n i t D a t a . S e t T r i g g e r e d E x i t E n t i t y (   t r u e   ) ;  
 	 	 i n i t D a t a . i g n o r e S a v e S y s t e m   =   t r u e ;  
 	 	 i n i t D a t a . s e t D e f a u l t S t a t e ( ' F a s t T r a v e l ' ) ;  
 	 	 t h e G a m e . R e q u e s t M e n u W i t h B a c k g r o u n d (   ' M a p M e n u ' ,   ' C o m m o n M e n u ' ,   i n i t D a t a   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   O n T e l e p o r t P l a y e r T o P l a y a b l e A r e a (   a f t e r C l o s i n g M a p   :   b o o l   )  
 	 {  
 	 	 v a r   B L A C K S C R E E N _ I N T E R V A L   :   f l o a t   =   0 . 1 ;  
 	 	 v a r   m a n a g e r   :   C C o m m o n M a p M a n a g e r   =   t h e G a m e . G e t C o m m o n M a p M a n a g e r ( ) ;  
 	 	  
 	 	 t h e P l a y e r . T e l e p o r t W i t h R o t a t i o n (   m a n a g e r . G e t B o r d e r T e l e p o r t P o s i t i o n ( ) ,   m a n a g e r . G e t B o r d e r T e l e p o r t R o t a t i o n ( )   ) ;  
 	 	 t h e P l a y e r . A d d T i m e r (   ' B o r d e r T e l e p o r t F a d e I n T i m e r ' ,   B L A C K S C R E E N _ I N T E R V A L ,   f a l s e   ) ;  
 	 	  
 	 	 t h e G a m e . F a d e O u t A s y n c (   0   ) ;  
 	 	 t h e G a m e . S e t F a d e L o c k ( ' P l a y e r T e l e p o r t a t i o n ' ) ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   B o r d e r T e l e p o r t F a d e I n T i m e r (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 t h e G a m e . R e s e t F a d e L o c k ( ' P l a y e r T e l e p o r t a t i o n ' ) ;  
 	 	 t h e G a m e . F a d e O u t A s y n c (   0   ) ;  
 	 	 t h e G a m e . F a d e I n A s y n c (   2 . 0 f   ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   S e t L a s t I n s t a n t K i l l T i m e ( g   :   G a m e T i m e )  
 	 {  
 	 	 l a s t I n s t a n t K i l l T i m e   =   g ;  
 	 }  
 	  
 	  
 	  
 	  
  
 	 t i m e r   f u n c t i o n   T e s t T i m e r ( d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 L o g C h a n n e l ( ' a s d f ' ,   " a s d f " ) ;  
 	 	 t h e G a m e . F a d e O u t A s y n c (   5   ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   D e b u g _ R e l e a s e C r i t i c a l S t a t e S a v e L o c k s ( )  
 	 {  
 	 	 e f f e c t M a n a g e r . D e b u g _ R e l e a s e C r i t i c a l S t a t e S a v e L o c k s ( ) ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   D e b u g _ S p a m S p e e d ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 i f ( c u r r e n t l y M o u n t e d H o r s e )  
 	 	 {  
 	 	 	 L o g S p e e d ( " c u r r   p l a y e r ' s   h o r s e   s p e e d :   "   +   N o T r a i l Z e r o s ( c u r r e n t l y M o u n t e d H o r s e . G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t S p e e d ( ) ) )   ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 L o g S p e e d ( " c u r r   p l a y e r   s p e e d :   "   +   N o T r a i l Z e r o s ( G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t S p e e d ( ) ) )   ;  
 	 	 }  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   R e m o v e I n s t a n t K i l l S l o M o ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 t h e G a m e . R e m o v e T i m e S c a l e (   t h e G a m e . G e t T i m e s c a l e S o u r c e ( E T S _ I n s t a n t K i l l )   ) ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   R e m o v e F o r c e F i n i s h e r ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 f o r c e F i n i s h e r   =   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   D e b u g _ C l e a r A l l A c t i o n L o c k s ( o p t i o n a l   a c t i o n   :   E I n p u t A c t i o n B l o c k ,   o p t i o n a l   a l l   :   b o o l )  
 	 {  
 	 	 i n p u t H a n d l e r . D e b u g _ C l e a r A l l A c t i o n L o c k s ( a c t i o n ,   a l l ) ;  
 	 }  
  
 	 f u n c t i o n   O n F o c u s e d C a m e r a B l e n d B e g i n ( )   { }  
 	 f u n c t i o n   O n F o c u s e d C a m e r a B l e n d U p d a t e (   p r o g r e s s   :   f l o a t   )   { }  
 	 f u n c t i o n   O n F o c u s e d C a m e r a B l e n d E n d ( )   { }  
 	  
 	 p u b l i c   f u n c t i o n   G e t E t h e r e a l C o u n t ( )   :   i n t   {   r e t u r n   e t h e r e a l C o u n t ;   }  
 	 p u b l i c   f u n c t i o n   I n c r e m e n t E t h e r e a l C o u n t ( )    
 	 {    
 	 	 e t h e r e a l C o u n t   + =   1 ;    
 	 	 i f (   e t h e r e a l C o u n t   = =   6   )  
 	 	 	 R e s e t E t h e r e a l C o u n t ( ) ;  
 	 }  
 	 p u b l i c   f u n c t i o n   R e s e t E t h e r e a l C o u n t ( )   {   e t h e r e a l C o u n t   =   0 ;   }  
 	  
 	 p u b l i c   f u n c t i o n   S e t I n s i d e D i v e A t t a c k A r e a (   v a l   :   b o o l   )   {   i n s i d e D i v e A t t a c k A r e a   =   v a l ;   }  
 	 p u b l i c   f u n c t i o n   I s I n s i d e D i v e A t t a c k A r e a ( )   :   b o o l   {   r e t u r n   i n s i d e D i v e A t t a c k A r e a ;   }  
 	 p u b l i c   f u n c t i o n   S e t D i v e A r e a N u m b e r (   v a l   :   i n t   )   {   d i v e A r e a N u m b e r   =   v a l ;   }  
 	 p u b l i c   f u n c t i o n   G e t D i v e A r e a N u m b e r ( )   :   i n t   {   r e t u r n   d i v e A r e a N u m b e r ;   }  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   I n i t P h a n t o m W e a p o n M g r ( )  
 	 {  
 	 	 i f (   ! p h a n t o m W e a p o n M g r   )  
 	 	 {  
 	 	 	 p h a n t o m W e a p o n M g r   =   n e w   C P h a n t o m W e a p o n M a n a g e r   i n   t h i s ;  
 	 	 	 p h a n t o m W e a p o n M g r . I n i t (   t h i s . G e t I n v e n t o r y ( )   ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   D e s t r o y P h a n t o m W e a p o n M g r ( )  
 	 {  
 	 	 i f (   p h a n t o m W e a p o n M g r   )  
 	 	 {  
 	 	 	 d e l e t e   p h a n t o m W e a p o n M g r ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t P h a n t o m W e a p o n M g r ( )   :   C P h a n t o m W e a p o n M a n a g e r  
 	 {  
 	 	 i f (   p h a n t o m W e a p o n M g r   )  
 	 	 {  
 	 	 	 r e t u r n   p h a n t o m W e a p o n M g r ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n   N U L L ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   t i m e r   f u n c t i o n   D i s c h a r g e W e a p o n A f t e r (   t d   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 G e t P h a n t o m W e a p o n M g r ( ) . D i s c h a r g e W e a p o n ( ) ;  
 	 }  
 	  
 	  
 	  
 	  
 	 p r i v a t e   v a r   f o r c e d F i n i s h e r V i c t i m   :   C A c t o r ;  
 	  
 	 t i m e r   f u n c t i o n   P e r f o r m F i n i s h e r (   t i m e   :   f l o a t   ,   i d   :   i n t   )  
 	 {  
 	 	 v a r   c o m b a t T a r g e t   :   C A c t o r ;  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 c o m b a t T a r g e t   =   t h e P l a y e r . G e t T a r g e t ( ) ;  
 	 	  
 	 	 i f (   c o m b a t T a r g e t   )  
 	 	 {  
 	 	 	 c o m b a t T a r g e t . K i l l (   ' A u t o F i n i s h e r ' ,   f a l s e ,   t h e P l a y e r   ) ;  
 	 	 	 t h e P l a y e r . S e t F i n i s h e r V i c t i m (   c o m b a t T a r g e t   ) ;  
 	 	 	 f o r c e d F i n i s h e r V i c t i m   =   c o m b a t T a r g e t ;  
 	 	 	 t h e P l a y e r . C l e a n C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	 	 t h e P l a y e r . O n B l o c k A l l C o m b a t T i c k e t s (   t r u e   ) ;  
 	 	 	 m o v e T a r g e t s   =   t h e P l a y e r . G e t M o v e T a r g e t s ( ) ;  
 	 	 	 	 	  
 	 	 	 f o r (   i   =   0 ;   i   <   m o v e T a r g e t s . S i z e ( ) ;   i   + =   1   )  
 	 	 	 {  
 	 	 	 	 i f (   c o m b a t T a r g e t   ! =   m o v e T a r g e t s [ i ]   )  
 	 	 	 	 	 m o v e T a r g e t s [ i ] . S i g n a l G a m e p l a y E v e n t (   ' I n t e r r u p t C h a r g e A t t a c k '   ) ;  
 	 	 	 } 	  
 	 	 	  
 	 	 	 i f (   t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) . G e t V a r V a l u e (   ' G a m e p l a y ' ,   ' A u t o m a t i c F i n i s h e r s E n a b l e d '   )   = =   " t r u e "   )  
 	 	 	 	 c o m b a t T a r g e t . A d d A b i l i t y (   ' F o r c e F i n i s h e r ' ,   f a l s e   ) ;  
 	 	 	  
 	 	 	 i f (   c o m b a t T a r g e t . H a s T a g (   ' F o r c e F i n i s h e r '   )   )  
 	 	 	 	 c o m b a t T a r g e t . A d d A b i l i t y (   ' F o r c e F i n i s h e r ' ,   f a l s e   ) ;  
 	 	 	 	  
 	 	 	 c o m b a t T a r g e t . S i g n a l G a m e p l a y E v e n t (   ' F o r c e F i n i s h e r '   ) ;  
 	 	 	  
 	 	 	 t h e P l a y e r . F i n d M o v e T a r g e t ( ) ;  
  
 	 	 	 t h e P l a y e r . A d d T i m e r (   ' S i g n a l F i n i s h e r ' ,   0 . 2 ,   f a l s e   ) ;  
 	 	 }  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   S i g n a l F i n i s h e r (   t i m e   :   f l o a t   ,   i d   :   i n t   )  
 	 {  
 	 	 f o r c e d F i n i s h e r V i c t i m . S i g n a l G a m e p l a y E v e n t (   ' F i n i s h e r '   ) ;  
 	 	 f o r c e d F i n i s h e r V i c t i m   =   N U L L ;  
 	 }  
 	  
 	  
 	  
 	 p r o t e c t e d   v a r   c l i m b i n g C a m   :   b o o l ; 	 d e f a u l t   c l i m b i n g C a m   =   f a l s e ; 	  
 	 e v e n t   O n A n i m E v e n t _ C l i m b C a m e r a O n (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 c l i m b i n g C a m   =   t r u e ;  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ C l i m b C a m e r a O f f (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 c l i m b i n g C a m   =   f a l s e ;  
 	 }  
 	  
 	  
 	  
 	 p r i v a t e   v a r   l a d d e r C a m R e s e t   :   b o o l ; 	 d e f a u l t   l a d d e r C a m R e s e t   =   f a l s e ; 	  
 	 p u b l i c   f u n c t i o n   S e t L a d d e r C a m R e s e t ( b   :   b o o l )   {   l a d d e r C a m R e s e t   =   b ;   }  
 	 p u b l i c   f u n c t i o n   G e t L a d d e r C a m R e s e t ( )   :   b o o l   {   r e t u r n   l a d d e r C a m R e s e t ;   }  
 	 e v e n t   O n A n i m E v e n t _ L a d d e r C a m R e s e t (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 l a d d e r C a m R e s e t   =   t r u e ;  
 	 }  
 	  
 	  
 	  
 	 p r i v a t e   v a r   t e m p H o r s e   :   C E n t i t y ;  
 	 p r i v a t e   v a r   i s P e t t i n g H o r s e   :   b o o l ;  
 	  
 	 p u b l i c   f u n c t i o n   T r y P e t H o r s e ( )  
 	 {  
 	 	 v a r   h o r s e C o m p   :   W 3 H o r s e C o m p o n e n t ;  
 	 	 v a r   r i g h t P o i n t ,   l e f t P o i n t ,   t e m p P o i n t 1 ,   t e m p P o i n t 2   :   V e c t o r ;  
 	 	 v a r   o u t P o s i t i o n ,   o u t N o r m a l   :   V e c t o r ;  
 	 	  
 	 	 i s P e t t i n g H o r s e   =   f a l s e ;  
 	 	 t e m p H o r s e   =   h o r s e I n t e r a c t i o n S o u r c e ;  
 	  
 	 	 i f (   ! t e m p H o r s e   | |   I s I n C o m b a t ( )   | |   I s A n y W e a p o n H e l d ( )   | |   I s C i r i ( )   )  
 	 	 	 r e t u r n ;  
 	 	 	  
 	 	 h o r s e C o m p   =   ( ( C N e w N P C ) t e m p H o r s e ) . G e t H o r s e C o m p o n e n t ( ) ; 	 	 	  
 	 	 i f (   ! h o r s e C o m p   )  
 	 	 	 r e t u r n ;  
 	 	 	  
 	 	 i f (   h o r s e C o m p . I s M o u n t e d ( )   )  
 	 	 	 r e t u r n ;  
 	 	 	  
 	 	 i f (   ( ( C A c t o r ) t e m p H o r s e ) . I s M o v i n g ( )   | |   V e c L e n g t h (   ( ( C A c t o r ) t e m p H o r s e ) . G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t V e l o c i t y ( )   )   >   0   )  
 	 	 	 r e t u r n ;  
  
 	 	 r i g h t P o i n t   =   t e m p H o r s e . G e t W o r l d P o s i t i o n ( )   +   V e c C o n e R a n d ( t e m p H o r s e . G e t H e a d i n g ( )   -   9 0 ,   0 ,   1 , 1 ) ;  
 	 	 l e f t P o i n t   =   t e m p H o r s e . G e t W o r l d P o s i t i o n ( )   +   V e c C o n e R a n d ( t e m p H o r s e . G e t H e a d i n g ( )   +   9 0 ,   0 ,   1 , 1 ) ;  
 	 	  
 	 	 i f (   V e c D i s t a n c e ( G e t W o r l d P o s i t i o n ( ) , r i g h t P o i n t )   > =   1 . f   & &   V e c D i s t a n c e ( G e t W o r l d P o s i t i o n ( ) , l e f t P o i n t )   > =   1 . f   )  
 	 	 	 r e t u r n ;  
 	 	  
 	 	 i f (   V e c D i s t a n c e ( G e t W o r l d P o s i t i o n ( ) ,   r i g h t P o i n t )   <   V e c D i s t a n c e ( G e t W o r l d P o s i t i o n ( ) ,   l e f t P o i n t )   )  
 	 	 {  
 	 	 	 t e m p P o i n t 1   =   r i g h t P o i n t ;  
 	 	 	 t e m p P o i n t 1 . Z   + =   1 . 5 ;  
 	 	 	  
 	 	 	 t e m p P o i n t 2   =   r i g h t P o i n t ;  
 	 	 	 t e m p P o i n t 2 . Z   - =   1 . 5 ;  
 	 	 	  
 	 	 	  
 	 	 	 i f (   t h e G a m e . G e t W o r l d ( ) . S t a t i c T r a c e (   t e m p P o i n t 1 ,   t e m p P o i n t 2 ,   o u t P o s i t i o n ,   o u t N o r m a l   )   )  
 	 	 	 {  
 	 	 	 	 i f (   A b s F ( o u t P o s i t i o n . Z   -   r i g h t P o i n t . Z )   >   0 . 1 2   )  
 	 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 	 r e t u r n ;  
 	 	 	  
 	 	 	  
 	 	 	 i s P e t t i n g H o r s e   =   t r u e ;  
 	 	 	 t h e G a m e . G e t S y n c A n i m M a n a g e r ( ) . S e t u p S i m p l e S y n c A n i m 2 (   ' P e t H o r s e ' ,   t h e P l a y e r ,   t e m p H o r s e   ) ;  
 	 	 	 A d d T i m e r ( ' E n a b l e P l a y e r C o l l i s i o n s ' , 6 . 5 6 , f a l s e ) ; 	 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t e m p P o i n t 1   =   l e f t P o i n t ;  
 	 	 	 t e m p P o i n t 1 . Z   + =   1 . 5 ;  
 	 	 	  
 	 	 	 t e m p P o i n t 2   =   l e f t P o i n t ;  
 	 	 	 t e m p P o i n t 2 . Z   - =   1 . 5 ;  
 	 	 	  
 	 	 	  
 	 	 	 i f (   t h e G a m e . G e t W o r l d ( ) . S t a t i c T r a c e (   t e m p P o i n t 1 ,   t e m p P o i n t 2 ,   o u t P o s i t i o n ,   o u t N o r m a l   )   )  
 	 	 	 {  
 	 	 	 	 i f (   A b s F ( o u t P o s i t i o n . Z   -   l e f t P o i n t . Z )   >   0 . 1 2   )  
 	 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 	 r e t u r n ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 i s P e t t i n g H o r s e   =   t r u e ;  
 	 	 	 t h e G a m e . G e t S y n c A n i m M a n a g e r ( ) . S e t u p S i m p l e S y n c A n i m 2 (   ' P e t H o r s e ' ,   t h e P l a y e r ,   t e m p H o r s e   ) ;  
 	 	 	 A d d T i m e r ( ' E n a b l e P l a y e r C o l l i s i o n s ' , 5 . 0 3 , f a l s e ) ;  
 	 	 }  
 	 	  
 	 	 h o r s e C o m p . A l l o w L o o k a t ( f a l s e ) ;  
 	 	 E n a b l e C o l l i s i o n s (   f a l s e   ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ S p r i n t ,   ' P e t t i n g H o r s e '   ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ J u m p ,   ' P e t t i n g H o r s e '   ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ M o v e m e n t ,   ' P e t t i n g H o r s e '   ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ C a l l H o r s e ,   ' P e t t i n g H o r s e '   ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ M o u n t V e h i c l e ,   ' P e t t i n g H o r s e '   ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ D r a w W e a p o n ,   ' P e t t i n g H o r s e '   ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ S i g n s ,   ' P e t t i n g H o r s e '   ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ L i g h t A t t a c k s ,   ' P e t t i n g H o r s e '   ) ;  
 	 	 B l o c k A c t i o n (   E I A B _ H e a v y A t t a c k s ,   ' P e t t i n g H o r s e '   ) ;    
 	 	 B l o c k A c t i o n (   E I A B _ T h r o w B o m b ,   ' P e t t i n g H o r s e '   ) ;   	 	  
 	 	 B l o c k A c t i o n (   E I A B _ C r o s s b o w ,   ' P e t t i n g H o r s e '   ) ;   	 	  
 	 	 B l o c k A c t i o n (   E I A B _ U s a b l e I t e m ,   ' P e t t i n g H o r s e '   ) ;   	 	  
 	 	  
 	 	 t e m p H o r s e . S e t B e h a v i o r V a r i a b l e (   ' h o r s e P e t t i n g ' ,   1 . 0 f   ) ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   E n a b l e P l a y e r C o l l i s i o n s ( d t : f l o a t ,   i d : i n t )  
 	 {  
 	 	 i s P e t t i n g H o r s e   =   f a l s e ;  
 	 	 E n a b l e C o l l i s i o n s (   t r u e   ) ;  
 	 	 U n b l o c k A c t i o n (   E I A B _ S p r i n t ,   ' P e t t i n g H o r s e '   ) ;  
 	 	 U n b l o c k A c t i o n (   E I A B _ J u m p ,   ' P e t t i n g H o r s e '   ) ;  
 	 	 U n b l o c k A c t i o n (   E I A B _ M o v e m e n t ,   ' P e t t i n g H o r s e '   ) ;  
 	 	 U n b l o c k A c t i o n (   E I A B _ C a l l H o r s e ,   ' P e t t i n g H o r s e '   ) ;  
 	 	 U n b l o c k A c t i o n (   E I A B _ M o u n t V e h i c l e ,   ' P e t t i n g H o r s e '   ) ;  
 	 	 U n b l o c k A c t i o n (   E I A B _ D r a w W e a p o n ,   ' P e t t i n g H o r s e '   ) ;  
 	 	 U n b l o c k A c t i o n (   E I A B _ S i g n s ,   ' P e t t i n g H o r s e '   ) ;  
 	 	 U n b l o c k A c t i o n (   E I A B _ L i g h t A t t a c k s ,   ' P e t t i n g H o r s e '   ) ;  
 	 	 U n b l o c k A c t i o n (   E I A B _ H e a v y A t t a c k s ,   ' P e t t i n g H o r s e '   ) ;    
 	 	 U n b l o c k A c t i o n (   E I A B _ T h r o w B o m b ,   ' P e t t i n g H o r s e '   ) ;   	  
 	 	 U n b l o c k A c t i o n (   E I A B _ C r o s s b o w ,   ' P e t t i n g H o r s e '   ) ;   	 	  
 	 	 U n b l o c k A c t i o n (   E I A B _ U s a b l e I t e m ,   ' P e t t i n g H o r s e '   ) ;   	 	  
 	 	  
 	 	 t e m p H o r s e . S e t B e h a v i o r V a r i a b l e (   ' h o r s e P e t t i n g ' ,   0 . 0 f   ) ;  
 	 	 ( ( W 3 H o r s e C o m p o n e n t ) ( ( C N e w N P C ) t e m p H o r s e ) . G e t H o r s e C o m p o n e n t ( ) ) . A l l o w L o o k a t ( t r u e ) ; 	  
 	 }  
 	  
 	  
 	  
 	 p r i v a t e   v a r   e x p l o r a t i o n C a m e r a T o g g l e   :   b o o l ;  
 	 p r i v a t e   v a r   c o m b a t C a m e r a T o g g l e   :   b o o l ;  
 	 p r i v a t e   v a r   h o r s e C a m e r a T o g g l e   :   b o o l ;  
 	 p r i v a t e   v a r   s o f t L o c k C a m e r a A s s i s t   :   b o o l ;  
 	  
 	 p u b l i c   f u n c t i o n   S e t E x p l C a m e r a ( b   :   b o o l )   {   e x p l o r a t i o n C a m e r a T o g g l e   =   b ;   }  
 	 p u b l i c   f u n c t i o n   S e t C m b t C a m e r a ( b   :   b o o l )   {   c o m b a t C a m e r a T o g g l e   =   b ;   }  
 	 p u b l i c   f u n c t i o n   S e t H o r s e C a m e r a ( b   :   b o o l )   {   h o r s e C a m e r a T o g g l e   =   b ;   }  
 	 p u b l i c   f u n c t i o n   S e t S o f t L o c k C a m e r a A s s i s t ( b   :   b o o l )   {   s o f t L o c k C a m e r a A s s i s t   =   b ;   }  
 	  
 	 p u b l i c   f u n c t i o n   G e t E x p l C a m e r a ( )   :   b o o l   {   r e t u r n   e x p l o r a t i o n C a m e r a T o g g l e ;   }  
 	 p u b l i c   f u n c t i o n   G e t C m b t C a m e r a ( )   :   b o o l   {   r e t u r n   c o m b a t C a m e r a T o g g l e ;   }  
 	 p u b l i c   f u n c t i o n   G e t H o r s e C a m e r a ( )   :   b o o l   {   r e t u r n   h o r s e C a m e r a T o g g l e ;   }  
 	 p u b l i c   f u n c t i o n   G e t S o f t L o c k C a m e r a A s s i s t ( )   :   b o o l   {   r e t u r n   s o f t L o c k C a m e r a A s s i s t ;   }  
  
 	 p u b l i c   f u n c t i o n   S e t P l a y e r C a m e r a P r e s e t ( )  
 	 {  
 	 	 v a r   i n G a m e C o n f i g W r a p p e r   :   C I n G a m e C o n f i g W r a p p e r ;  
 	 	  
 	 	 i n G a m e C o n f i g W r a p p e r   =   t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) ; 	  
 	 	 i f ( i n G a m e C o n f i g W r a p p e r . G e t V a r V a l u e ( ' G a m e p l a y ' ,   ' E n a b l e A l t e r n a t e E x p l o r a t i o n C a m e r a ' )   = =   " 1 " )  
 	 	 	 S e t E x p l C a m e r a ( t r u e ) ;  
 	 	 e l s e  
 	 	 	 S e t E x p l C a m e r a ( f a l s e ) ;  
 	 	 	  
 	 	 i f ( i n G a m e C o n f i g W r a p p e r . G e t V a r V a l u e ( ' G a m e p l a y ' ,   ' E n a b l e A l t e r n a t e C o m b a t C a m e r a ' )   = =   " 1 " )  
 	 	 	 S e t C m b t C a m e r a ( t r u e ) ;  
 	 	 e l s e  
 	 	 	 S e t C m b t C a m e r a ( f a l s e ) ;  
 	 	 	 	  
 	 	 i f ( i n G a m e C o n f i g W r a p p e r . G e t V a r V a l u e ( ' G a m e p l a y ' ,   ' E n a b l e A l t e r n a t e H o r s e C a m e r a ' )   = =   " 1 " )  
 	 	 	 S e t H o r s e C a m e r a ( t r u e ) ;  
 	 	 e l s e  
 	 	 	 S e t H o r s e C a m e r a ( f a l s e ) ;  
 	 	 	  
 	 	 i f ( i n G a m e C o n f i g W r a p p e r . G e t V a r V a l u e ( ' G a m e p l a y ' ,   ' S o f t L o c k C a m e r a A s s i s t ' )   = =   " t r u e " )  
 	 	 	 S e t S o f t L o c k C a m e r a A s s i s t ( t r u e ) ;  
 	 	 e l s e  
 	 	 	 S e t S o f t L o c k C a m e r a A s s i s t ( f a l s e ) ;  
 	 	 	  
 	 	  
 	 	 i f ( i n G a m e C o n f i g W r a p p e r . G e t V a r V a l u e ( ' C o n t r o l s ' ,   ' L e f t S t i c k S p r i n t ' )   = =   " t r u e " )  
 	 	 	 S e t L e f t S t i c k S p r i n t ( t r u e ) ;  
 	 	 e l s e  
 	 	 	 S e t L e f t S t i c k S p r i n t ( f a l s e ) ;  
 	 	  
 	 }  
 	  
 	  
 	  
 	 p r i v a t e   v a r   l e f t S t i c k S p r i n t   :   b o o l ;  
 	 p u b l i c   f u n c t i o n   S e t L e f t S t i c k S p r i n t ( b   :   b o o l )   {   l e f t S t i c k S p r i n t   =   b ;   } 	  
 	 p u b l i c   f u n c t i o n   G e t L e f t S t i c k S p r i n t ( )   :   b o o l 	 {   r e t u r n   l e f t S t i c k S p r i n t ;   }  
 	  
 	  
 	  
 	 p r i v a t e   v a r   p h o t o m o d e H o r s e K i c k   :   b o o l ;  
 	 p u b l i c   f u n c t i o n   S e t P h o t o M o d e H o r s e K i c k (   b   :   b o o l   )  
 	 {  
 	 	 p h o t o m o d e H o r s e K i c k   =   b ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t P h o t o M o d e H o r s e K i c k ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   p h o t o m o d e H o r s e K i c k ;  
 	 }  
 	  
 	  
 	  
 	 p u b l i c   t i m e r   f u n c t i o n   N G E _ D r a i n I g n i S t a m i n a ( d t : f l o a t ,   i d : i n t )  
 	 {  
 	 	 v a r   l _ c o s t ,   l _ s t a m i n a   :   f l o a t ;  
 	  
 	 	 i f (   C a n U s e S k i l l (   S _ P e r k _ 0 9   )   )  
 	 	 {  
 	 	 	 l _ c o s t   =   G e t S t a m i n a A c t i o n C o s t ( E S A T _ A b i l i t y ,   S k i l l E n u m T o N a m e (   S _ M a g i c _ 2   ) ,   0 ) ;  
 	 	 	 l _ s t a m i n a   =   G e t S t a t ( B C S _ S t a m i n a ,   t r u e ) ;  
 	 	 	  
 	 	 	 i f (   l _ c o s t   >   l _ s t a m i n a   )  
 	 	 	 {  
 	 	 	 	 D r a i n F o c u s ( 1 ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 D r a i n S t a m i n a (   E S A T _ A b i l i t y ,   0 ,   0 ,   S k i l l E n u m T o N a m e (   S _ M a g i c _ 2   )   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 D r a i n S t a m i n a (   E S A T _ A b i l i t y ,   0 ,   0 ,   S k i l l E n u m T o N a m e (   S _ M a g i c _ 2   )   ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	 p r i v a t e   v a r   l a s t S e l e c t e d I t e m   :   S I t e m U n i q u e I d ;  
 	 p u b l i c   f u n c t i o n   S e t L a s t S e l e c t e d R a d i a l I t e m ( i t e m   :   S I t e m U n i q u e I d )  
 	 {  
 	 	 l a s t S e l e c t e d I t e m   =   i t e m ;  
 	 	 A d d T i m e r ( ' E q u i p R a d i a l M e n u I t e m ' ,   1 . 2 f ,   f a l s e ) ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   E q u i p R a d i a l M e n u I t e m ( d t : f l o a t , i d : i n t )  
 	 {  
 	 	 G e t W i t c h e r P l a y e r ( ) . E q u i p I t e m (   l a s t S e l e c t e d I t e m ,   E E S _ Q u i c k s l o t 1 ,   f a l s e ) ;  
 	 	 G e t W i t c h e r P l a y e r ( ) . S e l e c t Q u i c k s l o t I t e m (   E E S _ Q u i c k s l o t 1   ) ;  
 	 }  
  
 	 / /   I m m e r s i v e   M o t i o n   ( R G C ) + +  
 	 p u b l i c 	 	 	 v a r   r g c R u n n i n g L a n d i n g 	 :   f l o a t ;  
 	 p u b l i c 	 	 	 v a r   r g c S p r i n t S p e e d 	 	 :   f l o a t ;  
  
 	 p r i v a t e   t i m e r   f u n c t i o n   R g c D e a c t i v a t e R u n n i n g L a n d i n g ( d t :   f l o a t ,   i d :   i n t )  
 	 {  
 	 	 r g c R u n n i n g L a n d i n g   =   0 ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   R g c E n a b l e R u n n i n g L a n d i n g ( r l S p e e d   :   f l o a t ,   t i m e   :   f l o a t )  
 	 {  
 	 	 i f (   r g c R u n n i n g L a n d i n g   = =   0 )  
 	 	 {  
 	 	 	 r g c R u n n i n g L a n d i n g   =   r l S p e e d ;  
 	 	 	 A d d T i m e r ( ' R g c D e a c t i v a t e R u n n i n g L a n d i n g ' ,   t i m e ,   f a l s e ) ;  
 	 	 }  
 	 }  
  
 	 v a r   r g c S l o w S t a r t I D 	 	 :   i n t ; 	 d e f a u l t   r g c S l o w S t a r t I D   =   - 1 ;  
 	 v a r   r g c S l o w S t a r t A c t i v e 	 :   b o o l ;  
  
 	 p r i v a t e   t i m e r   f u n c t i o n   R g c R e m o v e S t a r t S l o w (   d t :   f l o a t ,   i d :   i n t   )  
 	 {  
 	 	 R e s e t A n i m a t i o n S p e e d M u l t i p l i e r ( r g c S l o w S t a r t I D ) ;  
 	 	 r g c S l o w S t a r t I D   =   S e t A n i m a t i o n S p e e d M u l t i p l i e r ( 0 . 9 ) ;  
 	 	 A d d T i m e r (   ' R g c R e m o v e S t a r t S l o w 2 ' ,   1 . 0 ,   f a l s e   ) ;  
 	 }  
  
 	 p r i v a t e   t i m e r   f u n c t i o n   R g c R e m o v e S t a r t S l o w 2 (   d t :   f l o a t ,   i d :   i n t   )  
 	 {  
 	 	 R e s e t A n i m a t i o n S p e e d M u l t i p l i e r ( r g c S l o w S t a r t I D ) ;  
 	 	 r g c S l o w S t a r t A c t i v e   =   f a l s e ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   R g c S t a r t S l o w ( )  
 	 {  
 	 	 i f (   ! r g c S l o w S t a r t A c t i v e   )  
 	 	 {  
 	 	 	 r g c S l o w S t a r t A c t i v e   =   t r u e ;  
 	 	 	 r g c S l o w S t a r t I D   =   S e t A n i m a t i o n S p e e d M u l t i p l i e r ( 0 . 8 ) ;  
 	 	 	 A d d T i m e r (   ' R g c R e m o v e S t a r t S l o w ' ,   1 . 0 ,   f a l s e   ) ;  
 	 	 }  
 	 }  
  
 	 p u b l i c   f u n c t i o n   R g c S e t S p r i n t S p e e d (   s p e e d   :   f l o a t   )  
 	 {  
 	 	 r g c S p r i n t S p e e d   =   s p e e d ;  
 	 }  
 	 / /   I m m e r s i v e   M o t i o n - -  
 }  
  
 e x e c   f u n c t i o n   s e t c a m ( a : i n t ,   b : b o o l )  
 {  
 	 i f ( a   = =   0 )  
 	 	 t h e P l a y e r . S e t E x p l C a m e r a ( b ) ;  
 	 i f ( a   = =   1 )  
 	 	 t h e P l a y e r . S e t C m b t C a m e r a ( b ) ;  
 	 i f ( a   = =   2 )  
 	 	 t h e P l a y e r . S e t H o r s e C a m e r a ( b ) ;  
 }  
  
 e x e c   f u n c t i o n   t t t ( )  
 {  
 	 t h e P l a y e r . A d d T i m e r (   ' T e s t T i m e r ' ,   5 ,   f a l s e   ) ;  
 }  
 