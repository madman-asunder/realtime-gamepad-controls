/ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / * *   	 �   2 0 1 5   C D   P R O J E K T   S . A .   A l l   r i g h t s   r e s e r v e d .  
 / * *   	 T H E   W I T C H E R �   i s   a   t r a d e m a r k   o f   C D   P R O J E K T   S .   A .  
 / * *   	 T h e   W i t c h e r   g a m e   i s   b a s e d   o n   t h e   p r o s e   o f   A n d r z e j   S a p k o w s k i .  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
  
  
  
 s t a t e m a c h i n e   c l a s s   W 3 P l a y e r W i t c h e r   e x t e n d s   C R 4 P l a y e r  
 { 	  
 	  
 	 p r i v a t e   s a v e d   v a r   c r a f t i n g S c h e m a t i c s 	 	 	 	 :   a r r a y < n a m e > ;   	 	 	 	 	  
 	 p r i v a t e   s a v e d   v a r   e x p a n d e d C r a f t i n g C a t e g o r i e s 	 	 :   a r r a y < n a m e > ;  
 	 p r i v a t e   s a v e d   v a r   c r a f t i n g F i l t e r s   :   S C r a f t i n g F i l t e r s ;  
 	  
 	  
 	 p r i v a t e   s a v e d   v a r   a l c h e m y R e c i p e s   	 	 	 	 	 :   a r r a y < n a m e > ;   	 	 	 	 	  
 	 p r i v a t e   s a v e d   v a r   e x p a n d e d A l c h e m y C a t e g o r i e s 	 	 	 :   a r r a y < n a m e > ;  
 	 p r i v a t e   s a v e d   v a r   a l c h e m y F i l t e r s   :   S C r a f t i n g F i l t e r s ;  
 	  
 	  
 	 p r i v a t e   s a v e d   v a r   e x p a n d e d B e s t i a r y C a t e g o r i e s 	 	 :   a r r a y < n a m e > ;  
 	  
 	  
 	 p r i v a t e   s a v e d   v a r   b o o k s R e a d   	 	 	 	 	 	 :   a r r a y < n a m e > ;   	 	 	 	 	  
 	  
 	  
 	 p r i v a t e   	 	 	 v a r   f a s t A t t a c k C o u n t e r ,   h e a v y A t t a c k C o u n t e r 	 :   i n t ; 	 	  
 	 p r i v a t e 	 	 	 	 v a r   i s I n F r e n z y   :   b o o l ;  
 	 p r i v a t e 	 	 	 	 v a r   h a s R e c e n t l y C o u n t e r e d   :   b o o l ;  
 	 p r i v a t e   s a v e d   	 	 v a r   c a n n o t U s e U n d y i n g S k i l l   :   b o o l ; 	 	 	 	 	 	  
 	  
 	  
 	 p r o t e c t e d   s a v e d 	 	 	 v a r   a m o u n t O f S e t P i e c e s E q u i p p e d 	 	 	 :   a r r a y < i n t > ;  
 	  
 	  
 	 p u b l i c 	 	 	 	 v a r   c a n S w i t c h F o c u s M o d e T a r g e t 	 :   b o o l ;  
 	 p r o t e c t e d 	 	 	 v a r   s w i t c h F o c u s M o d e T a r g e t A l l o w e d   :   b o o l ;  
 	 	 d e f a u l t   c a n S w i t c h F o c u s M o d e T a r g e t   =   t r u e ;  
 	 	 d e f a u l t   s w i t c h F o c u s M o d e T a r g e t A l l o w e d   =   t r u e ;  
 	  
 	  
 	 p r i v a t e   e d i t a b l e 	 v a r   s i g n s 	 	 	 	 	 	 :   a r r a y <   S W i t c h e r S i g n   > ;  
 	 p r i v a t e 	 s a v e d 	 	 v a r   e q u i p p e d S i g n 	 	 	 	 :   E S i g n T y p e ;  
 	 p r i v a t e 	 	 	 	 v a r   c u r r e n t l y C a s t S i g n 	 	 	 :   E S i g n T y p e ;   d e f a u l t   c u r r e n t l y C a s t S i g n   =   S T _ N o n e ;  
 	 p r i v a t e 	 	 	 	 v a r   s i g n O w n e r 	 	 	 	 	 :   W 3 S i g n O w n e r P l a y e r ;  
 	 p r i v a t e 	 	 	 	 v a r   u s e d Q u e n I n C o m b a t 	 	 	 :   b o o l ;  
 	 p u b l i c 	 	 	 	 v a r   y r d e n E n t i t i e s 	 	 	 	 :   a r r a y < W 3 Y r d e n E n t i t y > ;  
 	 p u b l i c   s a v e d 	 	 v a r   m _ q u e n R e a p p l i e d C o u n t 	 	 :   i n t ;  
 	 p r i v a t e 	 	 	 	 v a r   m _ q u e n H i t F x T T L 	 	 	 	 :   f l o a t ;  
 	 p r i v a t e 	 	 	 	 v a r   m _ T r i g g e r E f f e c t D i s a b l e P e n d i n g   :   b o o l ;  
 	 p r i v a t e 	 	 	 	 v a r   m _ T r i g g e r E f f e c t D i s a b l e d 	 	 :   b o o l ;  
 	 p r i v a t e 	 	 	 	 v a r   m _ T r i g g e r E f f e c t D i s a b l e T T W 	 :   f l o a t ;  
 	  
 	 d e f a u l t 	 	 	 	 e q u i p p e d S i g n 	 =   S T _ A a r d ;  
 	 d e f a u l t 	 	 	 	 m _ q u e n R e a p p l i e d C o u n t   =   1 ;  
 	  
 	  
 	  
 	 p r i v a t e   	 	 	 v a r   b D i s p a l y H e a v y A t t a c k I n d i c a t o r   	 	 :   b o o l ;    
 	 p r i v a t e   	 	 	 v a r   b D i s p l a y H e a v y A t t a c k F i r s t L e v e l T i m e r   	 :   b o o l ;    
 	 p u b l i c 	   	 	 	 v a r   s p e c i a l A t t a c k H e a v y A l l o w e d   	 	 	 :   b o o l ; 	  
  
 	 d e f a u l t   b I s C o m b a t A c t i o n A l l o w e d   =   t r u e ; 	  
 	 d e f a u l t   b D i s p a l y H e a v y A t t a c k I n d i c a t o r   =   f a l s e ;    
 	 d e f a u l t   b D i s p l a y H e a v y A t t a c k F i r s t L e v e l T i m e r   =   t r u e ;    
 	  
 	  
 	  
 	 	 d e f a u l t   e x p l o r a t i o n I n p u t C o n t e x t   =   ' E x p l o r a t i o n ' ;  
 	 	 d e f a u l t   c o m b a t I n p u t C o n t e x t   =   ' C o m b a t ' ;  
 	 	 d e f a u l t   c o m b a t F i s t s I n p u t C o n t e x t   =   ' C o m b a t ' ;  
 	 	  
 	  
 	 p r i v a t e   s a v e d   v a r   c o m p a n i o n N P C T a g 	 	 :   n a m e ;  
 	 p r i v a t e   s a v e d   v a r   c o m p a n i o n N P C T a g 2 	 	 :   n a m e ;  
 	  
 	 p r i v a t e   s a v e d   v a r   c o m p a n i o n N P C I c o n P a t h 	 :   s t r i n g ;  
 	 p r i v a t e   s a v e d   v a r   c o m p a n i o n N P C I c o n P a t h 2 	 :   s t r i n g ; 	  
 	 	  
 	  
 	 p r i v a t e   	     s a v e d 	 v a r   i t e m S l o t s 	 	 	 	 	 :   a r r a y < S I t e m U n i q u e I d > ;  
 	 p r i v a t e   	 	 	 v a r   r e m a i n i n g B o m b T h r o w D e l a y S l o t 1 	 :   f l o a t ;  
 	 p r i v a t e   	 	 	 v a r   r e m a i n i n g B o m b T h r o w D e l a y S l o t 2 	 :   f l o a t ;  
 	 p r i v a t e   	 	 	 v a r   p r e v i o u s l y U s e d B o l t   :   S I t e m U n i q u e I d ; 	 	 	 	  
 	 p r i v a t e 	 	     s a v e d   v a r   q u e s t M a r k e d S e l e c t e d Q u i c k s l o t I t e m s   :   a r r a y <   S S e l e c t e d Q u i c k s l o t I t e m   > ;  
 	  
 	 d e f a u l t   i s T h r o w i n g I t e m   =   f a l s e ;  
 	 d e f a u l t   r e m a i n i n g B o m b T h r o w D e l a y S l o t 1   =   0 . f ;  
 	 d e f a u l t   r e m a i n i n g B o m b T h r o w D e l a y S l o t 2   =   0 . f ;  
 	  
 	  
 	  
 	  
 	  
 	 p r i v a t e   s a v e d   v a r   t e m p L e a r n e d S i g n S k i l l s   :   a r r a y < S S i m p l e S k i l l > ; 	 	  
 	 p u b l i c 	 s a v e d   v a r   a u t o L e v e l 	 	 	 	 :   b o o l ; 	 	 	 	 	 	  
 	  
 	  
 	  
 	  
 	 p r o t e c t e d   s a v e d   v a r   s k i l l B o n u s P o t i o n E f f e c t 	 	 	 :   C B a s e G a m e p l a y E f f e c t ; 	 	 	  
 	  
 	  
 	 p u b l i c   s a v e d   	 	 v a r   l e v e l M a n a g e r   	 	 	 	 :   W 3 L e v e l M a n a g e r ;  
  
 	  
 	 s a v e d   v a r   r e p u t a t i o n M a n a g e r 	 :   W 3 R e p u t a t i o n ;  
 	  
 	  
 	 p r i v a t e   e d i t a b l e 	 v a r   m e d a l l i o n E n t i t y 	 	 	 :   C E n t i t y T e m p l a t e ;  
 	 p r i v a t e 	 	 	 	 v a r   m e d a l l i o n C o n t r o l l e r 	 	 :   W 3 M e d a l l i o n C o n t r o l l e r ;  
 	  
 	  
 	  
 	  
 	 p u b l i c   	 	 	 	 v a r   b S h o w R a d i a l M e n u 	 :   b o o l ; 	  
  
 	 p r i v a t e   	 	 	 v a r   _ H o l d B e f o r e O p e n R a d i a l M e n u T i m e   :   f l o a t ;  
 	  
 	 d e f a u l t   _ H o l d B e f o r e O p e n R a d i a l M e n u T i m e   =   0 . 5 f ;  
 	  
 	 p u b l i c   v a r   M a p p i n T o H i g h l i g h t   :   a r r a y < S H i g h l i g h t M a p p i n > ;  
 	  
 	  
 	 p r o t e c t e d   s a v e d 	 v a r   h o r s e M a n a g e r H a n d l e 	 	 	 :   E n t i t y H a n d l e ; 	 	  
 	  
  
 	 p r i v a t e   v a r   i s I n i t i a l i z e d   :   b o o l ;  
 	 p r i v a t e   v a r   t i m e F o r P e r k 2 1   :   f l o a t ;  
 	  
 	 	 d e f a u l t   i s I n i t i a l i z e d   =   f a l s e ;  
 	 	  
 	  
 	 p r i v a t e   v a r   i n v U p d a t e T r a n s a c t i o n   :   b o o l ;  
 	 	 d e f a u l t   i n v U p d a t e T r a n s a c t i o n   =   f a l s e ;  
 	 	  
 	 / / m o d W 3 R e d u x R G C + +  
 	 p r i v a t e   v a r   r g c S i g n Q u i c k U s e M o d i f i e r A c t i v e   :   b o o l ;  
 	 	 d e f a u l t   r g c S i g n Q u i c k U s e M o d i f i e r A c t i v e   =   f a l s e ;  
 	 	  
 	 p r i v a t e   s a v e d   v a r   r g c L a s t U s e d I t e m S l o t   :   E E q u i p m e n t S l o t s ;  
 	 	 d e f a u l t   r g c L a s t U s e d I t e m S l o t   =   E E S _ Q u i c k s l o t 1 ;  
  
 	 p r i v a t e   s a v e d   v a r   r g c L a s t U s e d B o l t   :   S I t e m U n i q u e I d ;  
 	 	 d e f a u l t   r g c L a s t U s e d B o l t   =   G e t I n v a l i d U n i q u e I d ( ) ;  
  
 	 p r i v a t e   v a r   r g c I n f i n i t e B o l t N a m e   :   n a m e ;  
 	 	 d e f a u l t   r g c I n f i n i t e B o l t N a m e   =   ' B o d k i n   B o l t ' ;  
 	 / / m o d W 3 R e d u x R G C - -  
 	  
 	 p u b l i c   v a r   l a s t P r e s s e d W i t h N o s t a m i n a   :   b o o l ;  
 	 	 d e f a u l t   l a s t P r e s s e d W i t h N o s t a m i n a   =   f a l s e ;  
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
 	 e v e n t   O n S p a w n e d (   s p a w n D a t a   :   S E n t i t y S p a w n D a t a   )  
 	 {  
 	 	 v a r   i   	 	 	 	 :   i n t ;  
 	 	 v a r   i t e m s   	 	 	 :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   i t e m s 2   	 	 	 :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   h o r s e T e m p l a t e   	 :   C E n t i t y T e m p l a t e ;  
 	 	 v a r   h o r s e M a n a g e r   	 :   W 3 H o r s e M a n a g e r ;  
 	 	  
 	 	  
 	 	 v a r   e x c e p t i o n s   :   a r r a y < C B a s e G a m e p l a y E f f e c t > ;  
 	 	 v a r   w o l f   :   C B a s e G a m e p l a y E f f e c t ;  
 	 	  
 	 	  
 	 	 A d d A n i m E v e n t C a l l b a c k (   ' A c t i o n B l e n d ' ,   	 	 	 ' O n A n i m E v e n t _ A c t i o n B l e n d '   ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' c a s t _ b e g i n ' , 	 	 	 	 ' O n A n i m E v e n t _ S i g n ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' c a s t _ t h r o w ' , 	 	 	 	 ' O n A n i m E v e n t _ S i g n ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' c a s t _ e n d ' , 	 	 	 	 ' O n A n i m E v e n t _ S i g n ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' c a s t _ f r i e n d l y _ b e g i n ' , 	 	 ' O n A n i m E v e n t _ S i g n ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' c a s t _ f r i e n d l y _ t h r o w ' , 	 	 ' O n A n i m E v e n t _ S i g n ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' a x i i _ r e a d y ' , 	 	 	 	 ' O n A n i m E v e n t _ S i g n ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' a x i i _ a l t e r n a t e _ r e a d y ' , 	 ' O n A n i m E v e n t _ S i g n ' ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k ( ' y r d e n _ d r a w _ r e a d y ' , 	 	 ' O n A n i m E v e n t _ S i g n ' ) ;  
 	 	  
 	 	 A d d A n i m E v e n t C a l l b a c k (   ' P r o j e c t i l e T h r o w ' , 	 ' O n A n i m E v e n t _ T h r o w a b l e ' 	 ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k (   ' O n W e a p o n R e l o a d ' , 	 	 ' O n A n i m E v e n t _ T h r o w a b l e ' 	 ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k (   ' P r o j e c t i l e A t t a c h ' , 	 ' O n A n i m E v e n t _ T h r o w a b l e '   ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k (   ' M u t a t i o n 1 1 A n i m E n d ' , 	 ' O n A n i m E v e n t _ M u t a t i o n 1 1 A n i m E n d '   ) ;  
 	 	 A d d A n i m E v e n t C a l l b a c k (   ' M u t a t i o n 1 1 S h o c k W a v e ' ,   ' O n A n i m E v e n t _ M u t a t i o n 1 1 S h o c k W a v e '   ) ;  
 	 	  
  
 	 	  
 	 	 a m o u n t O f S e t P i e c e s E q u i p p e d . R e s i z e (   E n u m G e t M a x (   ' E I t e m S e t T y p e '   )   +   1   ) ;  
 	 	  
 	 	 r u n e w o r d I n f u s i o n T y p e   =   S T _ N o n e ;  
 	 	 	 	  
 	 	  
 	 	 i n v   =   G e t I n v e n t o r y ( ) ; 	 	 	  
  
 	 	  
 	 	 s i g n O w n e r   =   n e w   W 3 S i g n O w n e r P l a y e r   i n   t h i s ;  
 	 	 s i g n O w n e r . I n i t (   t h i s   ) ;  
 	 	  
 	 	 i t e m S l o t s . R e s i z e (   E n u m G e t M a x ( ' E E q u i p m e n t S l o t s ' ) + 1   ) ;  
  
 	 	 i f ( ! s p a w n D a t a . r e s t o r e d )  
 	 	 {  
 	 	 	 l e v e l M a n a g e r   =   n e w   W 3 L e v e l M a n a g e r   i n   t h i s ; 	 	 	  
 	 	 	 l e v e l M a n a g e r . I n i t i a l i z e ( ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i n v . G e t A l l I t e m s ( i t e m s ) ;  
 	 	 	 f o r ( i = 0 ;   i < i t e m s . S i z e ( ) ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 i f ( i n v . I s I t e m M o u n t e d ( i t e m s [ i ] )   & &   (   ! i n v . I s I t e m B o d y ( i t e m s [ i ] )   | |   i n v . G e t I t e m C a t e g o r y ( i t e m s [ i ] )   = =   ' h a i r '   )   )  
 	 	 	 	 	 E q u i p I t e m ( i t e m s [ i ] ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   S w a l l o w   1 ' , t r u e , t r u e ) ;  
 	 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   C a t   1 ' , t r u e , t r u e ) ;  
 	 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   W h i t e   H o n e y   1 ' , t r u e , t r u e ) ;  
 	 	 	  
 	 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   S a m u m   1 ' , t r u e , t r u e ) ;  
 	 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   G r a p e s h o t   1 ' , t r u e , t r u e ) ;  
 	 	 	  
 	 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   S p e c t e r   O i l   1 ' , t r u e , t r u e ) ;  
 	 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   N e c r o p h a g e   O i l   1 ' , t r u e , t r u e ) ;  
 	 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   A l c o h e s t   1 ' , t r u e , t r u e ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 A d d T i m e r ( ' D e l a y e d O n I t e m M o u n t ' ,   0 . 1 ,   t r u e ) ;  
 	 	 	  
 	 	 	  
 	 	 	 C h e c k H a i r I t e m ( ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 A d d S t a r t i n g S c h e m a t i c s ( ) ;  
  
 	 	 s u p e r . O n S p a w n e d (   s p a w n D a t a   ) ;  
 	 	  
 	 	  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   M u t a g e n   r e d ' , t r u e , t r u e ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   M u t a g e n   g r e e n ' , t r u e , t r u e ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   M u t a g e n   b l u e ' , t r u e , t r u e ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   G r e a t e r   m u t a g e n   r e d ' , t r u e , t r u e ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   G r e a t e r   m u t a g e n   g r e e n ' , t r u e , t r u e ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   G r e a t e r   m u t a g e n   b l u e ' , t r u e , t r u e ) ;  
 	 	  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' S t a r t i n g   A r m o r   U p g r a d e   s c h e m a t i c   1 ' , t r u e , t r u e ) ;  
 	 	  
 	 	  
 	 	 i f (   i n p u t H a n d l e r   )  
 	 	 {  
 	 	 	 i n p u t H a n d l e r . B l o c k A l l A c t i o n s (   ' b e i n g _ c i r i ' ,   f a l s e   ) ;  
 	 	 }  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' t e s t _ c i r i _ r e p l a c e r ' ,   0 . 0 f ) ;  
 	 	  
 	 	 i f ( ! s p a w n D a t a . r e s t o r e d )  
 	 	 {  
 	 	 	  
 	 	 	 a b i l i t y M a n a g e r . G a i n S t a t ( B C S _ T o x i c i t y ,   0 ) ; 	 	  
 	 	 } 	 	  
 	 	  
 	 	 l e v e l M a n a g e r . P o s t I n i t ( t h i s ,   s p a w n D a t a . r e s t o r e d ,   t r u e ) ;  
 	 	  
 	 	 S e t B I s C o m b a t A c t i o n A l l o w e d (   t r u e   ) ; 	 	  
 	 	 S e t B I s I n p u t A l l o w e d (   t r u e ,   ' O n S p a w n e d '   ) ; 	 	 	 	  
 	 	  
 	 	  
 	 	 i f   (   ! r e p u t a t i o n M a n a g e r   )  
 	 	 {  
 	 	 	 r e p u t a t i o n M a n a g e r   =   n e w   W 3 R e p u t a t i o n   i n   t h i s ;  
 	 	 	 r e p u t a t i o n M a n a g e r . I n i t i a l i z e ( ) ;  
 	 	 }  
 	 	  
 	 	 t h e S o u n d . S o u n d P a r a m e t e r (   " f o c u s _ a i m " ,   1 . 0 f ,   1 . 0 f   ) ;  
 	 	 t h e S o u n d . S o u n d P a r a m e t e r (   " f o c u s _ d i s t a n c e " ,   0 . 0 f ,   1 . 0 f   ) ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 	  
 	 	  
 	 	 c u r r e n t l y C a s t S i g n   =   S T _ N o n e ;  
 	 	  
 	 	  
 	 	 i f ( ! s p a w n D a t a . r e s t o r e d )  
 	 	 {  
 	 	 	 h o r s e T e m p l a t e   =   ( C E n t i t y T e m p l a t e ) L o a d R e s o u r c e ( " h o r s e _ m a n a g e r " ) ;  
 	 	 	 h o r s e M a n a g e r   =   ( W 3 H o r s e M a n a g e r ) t h e G a m e . C r e a t e E n t i t y ( h o r s e T e m p l a t e ,   G e t W o r l d P o s i t i o n ( ) , , , , , P M _ P e r s i s t ) ;  
 	 	 	 h o r s e M a n a g e r . C r e a t e A t t a c h m e n t ( t h i s ) ;  
 	 	 	 h o r s e M a n a g e r . O n C r e a t e d ( ) ;  
 	 	 	 E n t i t y H a n d l e S e t (   h o r s e M a n a g e r H a n d l e ,   h o r s e M a n a g e r   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 A d d T i m e r ( ' D e l a y e d H o r s e U p d a t e ' ,   0 . 0 1 ,   t r u e ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 R e m o v e A b i l i t y ( ' C i r i _ C o m b a t R e g e n ' ) ;  
 	 	 R e m o v e A b i l i t y ( ' C i r i _ R a g e ' ) ;  
 	 	 R e m o v e A b i l i t y ( ' C i r i B l i n k ' ) ;  
 	 	 R e m o v e A b i l i t y ( ' C i r i C h a r g e ' ) ;  
 	 	 R e m o v e A b i l i t y ( ' C i r i _ Q 2 0 5 ' ) ;  
 	 	 R e m o v e A b i l i t y ( ' C i r i _ Q 3 0 5 ' ) ;  
 	 	 R e m o v e A b i l i t y ( ' C i r i _ Q 4 0 3 ' ) ;  
 	 	 R e m o v e A b i l i t y ( ' C i r i _ Q 1 1 1 ' ) ;  
 	 	 R e m o v e A b i l i t y ( ' C i r i _ Q 5 0 1 ' ) ;  
 	 	 R e m o v e A b i l i t y ( ' S k i l l C i r i ' ) ;  
 	 	  
 	 	 i f ( s p a w n D a t a . r e s t o r e d )  
 	 	 {  
 	 	 	 R e s t o r e Q u e n ( s a v e d Q u e n H e a l t h ,   s a v e d Q u e n D u r a t i o n ) ; 	 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 s a v e d Q u e n H e a l t h   =   0 . f ;  
 	 	 	 s a v e d Q u e n D u r a t i o n   =   0 . f ;  
 	 	 }  
 	 	  
 	 	 i f ( s p a w n D a t a . r e s t o r e d )  
 	 	 {  
 	 	 	 A p p l y P a t c h F i x e s ( ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	  
 	 	 	 F a c t s A d d (   " n e w _ g a m e _ s t a r t e d _ i n _ 1 _ 2 0 "   ) ;  
 	 	 }  
 	 	  
 	 	 i f   (   s p a w n D a t a . r e s t o r e d   )  
 	 	 {  
 	 	 	 F i x E q u i p p e d M u t a g e n s ( ) ;  
 	 	 }  
 	 	  
 	 	 i f   (   F a c t s Q u e r y S u m ( " N e w G a m e P l u s " )   >   0   )  
 	 	 {  
 	 	 	 N e w G a m e P l u s A d j u s t D L C 1 T e m e r i a n S e t ( i n v ) ;  
 	 	 	 N e w G a m e P l u s A d j u s t D L C 5 N i l f g a r d i a n S e t ( i n v ) ;  
 	 	 	 N e w G a m e P l u s A d j u s t D L C 1 0 W o l f S e t ( i n v ) ;  
 	 	 	 N e w G a m e P l u s A d j u s t D L C 1 4 S k e l l i g e S e t ( i n v ) ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 i f ( h o r s e M a n a g e r )  
 	 	 	 {  
 	 	 	 	 N e w G a m e P l u s A d j u s t D L C 1 T e m e r i a n S e t ( h o r s e M a n a g e r . G e t I n v e n t o r y C o m p o n e n t ( ) ) ;  
 	 	 	 	 N e w G a m e P l u s A d j u s t D L C 5 N i l f g a r d i a n S e t ( h o r s e M a n a g e r . G e t I n v e n t o r y C o m p o n e n t ( ) ) ;  
 	 	 	 	 N e w G a m e P l u s A d j u s t D L C 1 0 W o l f S e t ( h o r s e M a n a g e r . G e t I n v e n t o r y C o m p o n e n t ( ) ) ;  
 	 	 	 	 N e w G a m e P l u s A d j u s t D L C 1 4 S k e l l i g e S e t ( h o r s e M a n a g e r . G e t I n v e n t o r y C o m p o n e n t ( ) ) ; 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 R e s u m e S t a m i n a R e g e n ( ' W h i r l S k i l l ' ) ;  
 	 	  
 	 	 i f ( H a s A b i l i t y ( ' R u n e w o r d   4   _ S t a t s ' ,   t r u e ) )  
 	 	 	 S t a r t V i t a l i t y R e g e n ( ) ;  
 	 	  
 	 	  
 	 	 i f ( H a s A b i l i t y ( ' s w o r d _ s 1 9 ' ) )  
 	 	 {  
 	 	 	 R e m o v e T e m p o r a r y S k i l l s ( ) ;  
 	 	 }  
 	 	  
 	 	 H A C K _ U n e q u i p W o l f L i v e r ( ) ;  
 	 	  
 	 	  
 	 	 i f (   H a s B u f f (   E E T _ G r y p h o n S e t B o n u s Y r d e n   )   )  
 	 	 {  
 	 	 	 R e m o v e B u f f (   E E T _ G r y p h o n S e t B o n u s Y r d e n ,   f a l s e ,   " G r y p h o n S e t B o n u s Y r d e n "   ) ;  
 	 	 }  
 	 	  
 	 	 i f (   s p a w n D a t a . r e s t o r e d   )  
 	 	 {  
 	 	 	  
 	 	 	 U p d a t e E n c u m b r a n c e ( ) ;  
 	 	 	  
 	 	 	  
 	 	 	 R e m o v e B u f f (   E E T _ M u t a t i o n 1 1 I m m o r t a l   ) ;  
 	 	 	 R e m o v e B u f f (   E E T _ M u t a t i o n 1 1 B u f f   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 t h e G a m e . G a m e p l a y F a c t s A d d (   " P l a y e r I s G e r a l t "   ) ;  
 	 	  
 	 	 i s I n i t i a l i z e d   =   t r u e ;  
 	 	  
 	 	  
 	 	 i f ( I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 6   ) )  
 	 	 	 i f ( (   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t M u t a t i o n S o u n d B a n k ( (   E P M T _ M u t a t i o n 6   ) )   ! =   " "   )    
 	 	 	 	 t h e S o u n d . S o u n d L o a d B a n k ( ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t M u t a t i o n S o u n d B a n k ( (   E P M T _ M u t a t i o n 6   ) ) ,   t r u e   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 i f (   F a c t s Q u e r y S u m ( " N G E _ S k i l l P o i n t s C h e c k " )   <   1   )  
 	 	 {  
 	 	 	  
 	 	 	 F o r c e S e t S t a t ( B C S _ T o x i c i t y ,   0 ) ;  
 	 	 	 w o l f   =   G e t B u f f ( E E T _ W o l f H o u r ) ;  
 	 	 	 i f ( w o l f )  
 	 	 	 	 e x c e p t i o n s . P u s h B a c k ( w o l f ) ;  
 	 	 	 	  
 	 	 	 R e m o v e A l l P o t i o n E f f e c t s ( e x c e p t i o n s ) ;  
 	 	 	  
  
 	 	 	 A d d T i m e r ( ' N G E _ F i x S k i l l P o i n t s ' , 1 . 0 f , f a l s e ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t T o x i c i t y O f f s e t ( )   >   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S t a t M a x ( B C S _ T o x i c i t y ) )    
 	 	 {  
 	 	 	 ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . S e t T o x i c i t y O f f s e t ( 0 . f ) ;  
 	 	 }  
 	 	  
  
 	 	 m _ q u e n H i t F x T T L   =   0 ;  
 	 	 m _ T r i g g e r E f f e c t D i s a b l e P e n d i n g   =   f a l s e ;  
 	 	 m _ T r i g g e r E f f e c t D i s a b l e d   =   f a l s e ;  
 	 	 A p p l y G a m e p a d T r i g g e r E f f e c t (   e q u i p p e d S i g n   ) ;  
             	 A d d T i m e r (   ' U p d a t e G a m e p a d T r i g g e r E f f e c t ' ,   0 . 1 ,   t r u e   ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   t i m e r   f u n c t i o n   N G E _ F i x S k i l l P o i n t s (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . N G E F i x S k i l l P o i n t s ( ) ;  
 	 	 F i x N G E S w o r d s ( ) ; 	  
 	 	 F a c t s A d d ( " N G E _ S k i l l P o i n t s C h e c k " ) ;  
 	 }  
 	  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   F i x N G E S w o r d s ( )  
 	 {  
 	 	  
 	 	 v a r   s w o r d s ,   s w o r d s T e m p   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   e q u i p p e d   :   b o o l ;  
 	 	 v a r   r u n e s L i s t   :   a r r a y   < n a m e > ;  
  
 	 	 s w o r d s   =   i n v . G e t I t e m s B y N a m e ( ' s q 3 0 4   N o v i g r a a d a n   s w o r d   4 ' ) ;  
 	 	 i f ( s w o r d s . S i z e ( )   >   0 )  
 	 	 {  
 	 	 	 f o r ( i = 0 ; i < s w o r d s . S i z e ( ) ; i + = 1 )  
 	 	 	 {  
 	 	 	 	 i f (   I s I t e m E q u i p p e d ( s w o r d s [ i ] )   )  
 	 	 	 	 	 e q u i p p e d   =   t r u e ;  
 	 	 	 	 	  
 	 	 	 	 i f   (   i n v . G e t I t e m E n h a n c e m e n t C o u n t ( s w o r d s [ i ] )   >   0   )  
 	 	 	 	 {  
 	 	 	 	 	 i n v . G e t I t e m E n h a n c e m e n t I t e m s ( s w o r d s [ i ] ,   r u n e s L i s t ) ;  
 	 	 	 	 	 f o r   ( i   =   0 ;   i   <   r u n e s L i s t . S i z e ( ) ;   i + = 1 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i n v . A d d A n I t e m (   r u n e s L i s t [ i ]   ) ;  
 	 	 	 	 	 } 	 	  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i n v . R e m o v e I t e m ( s w o r d s [ i ] , 1 ) ;  
 	 	 	 	 s w o r d s T e m p   =   i n v . A d d A n I t e m ( ' s q 3 0 4   N o v i g r a a d a n   s w o r d   4 ' , 1 , t r u e , t r u e ) ;  
 	 	 	 	 i f ( e q u i p p e d )  
 	 	 	 	 	 E q u i p I t e m ( s w o r d s T e m p [ 0 ] ) ;  
 	 	 	 }  
 	 	 }  
  
 	 	 s w o r d s   =   i n v . G e t I t e m s B y N a m e ( ' q 4 0 2   S k e l l i g e   s w o r d   3 ' ) ;  
 	 	 i f ( s w o r d s . S i z e ( )   >   0 )  
 	 	 {  
 	 	 	 f o r ( i = 0 ; i < s w o r d s . S i z e ( ) ; i + = 1 )  
 	 	 	 {  
 	 	 	 	 i f (   I s I t e m E q u i p p e d ( s w o r d s [ i ] )   )  
 	 	 	 	 	 e q u i p p e d   =   t r u e ;  
 	 	 	 	 	  
 	 	 	 	 i f   (   i n v . G e t I t e m E n h a n c e m e n t C o u n t ( s w o r d s [ i ] )   >   0   )  
 	 	 	 	 {  
 	 	 	 	 	 i n v . G e t I t e m E n h a n c e m e n t I t e m s ( s w o r d s [ i ] ,   r u n e s L i s t ) ;  
 	 	 	 	 	 f o r   ( i   =   0 ;   i   <   r u n e s L i s t . S i z e ( ) ;   i + = 1 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i n v . A d d A n I t e m (   r u n e s L i s t [ i ]   ) ;  
 	 	 	 	 	 } 	 	  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i n v . R e m o v e I t e m ( s w o r d s [ i ] , 1 ) ;  
 	 	 	 	 s w o r d s T e m p   =   i n v . A d d A n I t e m ( ' q 4 0 2   S k e l l i g e   s w o r d   3 ' , 1 , t r u e , t r u e ) ;  
 	 	 	 	 i f ( e q u i p p e d )  
 	 	 	 	 	 E q u i p I t e m (   s w o r d s T e m p [ 0 ] ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
  
 	 e v e n t   O n D e s t r o y e d ( )  
 	 {  
 	 	 R e m o v e T i m e r (   ' U p d a t e G a m e p a d T r i g g e r E f f e c t '   ) ;  
  
 	 	 t h e G a m e . C l e a r T r i g g e r E f f e c t ( 0 ) ;  
 	 	 t h e G a m e . C l e a r T r i g g e r E f f e c t ( 1 ) ;  
  
 	 	 s u p e r . O n D e s t r o y e d ( ) ;  
 	 }  
  
 	  
 	  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   H A C K _ U n e q u i p W o l f L i v e r ( )  
 	 {  
 	 	 v a r   i t e m N a m e 1 ,   i t e m N a m e 2 ,   i t e m N a m e 3 ,   i t e m N a m e 4   :   n a m e ;  
 	 	 v a r   i t e m 1 ,   i t e m 2 ,   i t e m 3 ,   i t e m 4   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 G e t I t e m E q u i p p e d O n S l o t (   E E S _ P o t i o n 1 ,   i t e m 1   ) ;  
 	 	 G e t I t e m E q u i p p e d O n S l o t (   E E S _ P o t i o n 2 ,   i t e m 2   ) ;  
 	 	 G e t I t e m E q u i p p e d O n S l o t (   E E S _ P o t i o n 3 ,   i t e m 3   ) ;  
 	 	 G e t I t e m E q u i p p e d O n S l o t (   E E S _ P o t i o n 4 ,   i t e m 4   ) ;  
  
 	 	 i f   (   i n v . I s I d V a l i d (   i t e m 1   )   )  
 	 	 	 i t e m N a m e 1   =   i n v . G e t I t e m N a m e (   i t e m 1   ) ;  
 	 	 i f   (   i n v . I s I d V a l i d (   i t e m 2   )   )  
 	 	 	 i t e m N a m e 2   =   i n v . G e t I t e m N a m e (   i t e m 2   ) ;  
 	 	 i f   (   i n v . I s I d V a l i d (   i t e m 3   )   )  
 	 	 	 i t e m N a m e 3   =   i n v . G e t I t e m N a m e (   i t e m 3   ) ;  
 	 	 i f   (   i n v . I s I d V a l i d (   i t e m 4   )   )  
 	 	 	 i t e m N a m e 4   =   i n v . G e t I t e m N a m e (   i t e m 4   ) ;  
  
 	 	 i f   (   i t e m N a m e 1   = =   ' W o l f   l i v e r '   | |   i t e m N a m e 3   = =   ' W o l f   l i v e r '   )  
 	 	 {  
 	 	 	 i f   (   i n v . I s I d V a l i d (   i t e m 1   )   )  
 	 	 	 	 U n e q u i p I t e m (   i t e m 1   ) ;  
 	 	 	 i f   (   i n v . I s I d V a l i d (   i t e m 3   )   )  
 	 	 	 	 U n e q u i p I t e m (   i t e m 3   ) ;  
 	 	 }  
 	 	 e l s e   i f   (   i t e m N a m e 2   = =   ' W o l f   l i v e r '   | |   i t e m N a m e 4   = =   ' W o l f   l i v e r '   )  
 	 	 {  
 	 	 	 i f   (   i n v . I s I d V a l i d (   i t e m 2   )   )  
 	 	 	 	 U n e q u i p I t e m (   i t e m 2   ) ;  
 	 	 	 i f   (   i n v . I s I d V a l i d (   i t e m 4   )   )  
 	 	 	 	 U n e q u i p I t e m (   i t e m 4   ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
  
 	 t i m e r   f u n c t i o n   D e l a y e d H o r s e U p d a t e (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 v a r   m a n   :   W 3 H o r s e M a n a g e r ;  
 	 	  
 	 	 m a n   =   G e t H o r s e M a n a g e r ( ) ;  
 	 	 i f ( m a n )  
 	 	 {  
 	 	 	 i f   (   m a n . A p p l y H o r s e U p d a t e O n S p a w n ( )   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 U p d a t e E n c u m b r a n c e ( ) ;  
 	 	 	 	  
 	 	 	 	 R e m o v e T i m e r (   ' D e l a y e d H o r s e U p d a t e '   ) ;  
 	 	 	 }  
 	 	 }  
 	 } 	  
 	  
 	 e v e n t   O n A b i l i t y A d d e d (   a b i l i t y N a m e   :   n a m e )  
 	 {  
 	 	 s u p e r . O n A b i l i t y A d d e d ( a b i l i t y N a m e ) ;  
 	 	  
 	 	 i f (   H a s A b i l i t y ( ' R u n e w o r d   4   _ S t a t s ' ,   t r u e )   )  
 	 	 {  
 	 	 	 S t a r t V i t a l i t y R e g e n ( ) ;  
 	 	 }  
 	 	 	  
 	 	 i f   (   a b i l i t y N a m e   = =   ' R u n e w o r d   8   _ S t a t s '   & &   G e t S t a t ( B C S _ F o c u s ,   t r u e )   > =   G e t S t a t M a x ( B C S _ F o c u s )   & &   ! H a s B u f f ( E E T _ R u n e w o r d 8 )   )  
 	 	 {  
 	 	 	 A d d E f f e c t D e f a u l t ( E E T _ R u n e w o r d 8 ,   t h i s ,   " e q u i p p e d   i t e m " ) ;  
 	 	 }  
  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   A d d S t a r t i n g S c h e m a t i c s ( )  
 	 {  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' S t a r t i n g   A r m o r   U p g r a d e   s c h e m a t i c   1 ' , 	 t r u e , t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' T h r e a d   s c h e m a t i c ' , 	 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' S t r i n g   s c h e m a t i c ' , 	 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' L i n e n   s c h e m a t i c ' , 	 	 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' S i l k   s c h e m a t i c ' , 	 	 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' R e s i n   s c h e m a t i c ' , 	 	 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' B l a s t i n g   p o w d e r   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' H a f t   s c h e m a t i c ' , 	 	 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' H a r d e n e d   t i m b e r   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' L e a t h e r   s q u a r e s   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' L e a t h e r   s c h e m a t i c ' , 	 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' H a r d e n e d   l e a t h e r   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' D r a c o n i d e   l e a t h e r   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' I r o n   i n g o t   s c h e m a t i c ' , 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' S t e e l   i n g o t   s c h e m a t i c ' , 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' S t e e l   i n g o t   s c h e m a t i c   1 ' , 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' S t e e l   p l a t e   s c h e m a t i c ' , 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' D a r k   i r o n   i n g o t   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' D a r k   i r o n   p l a t e   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' D a r k   s t e e l   i n g o t   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' D a r k   s t e e l   i n g o t   s c h e m a t i c   1 ' , 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' D a r k   s t e e l   p l a t e   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' S i l v e r   o r e   s c h e m a t i c ' , 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' S i l v e r   i n g o t   s c h e m a t i c ' , 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' S i l v e r   i n g o t   s c h e m a t i c   1 ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' S i l v e r   p l a t e   s c h e m a t i c ' , 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' M e t e o r i t e   i n g o t   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' M e t e o r i t e   s i l v e r   i n g o t   s c h e m a t i c ' , 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' M e t e o r i t e   s i l v e r   p l a t e   s c h e m a t i c ' , 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' G l o w i n g   i n g o t   s c h e m a t i c ' , 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' D w i m e r y t e   o r e   s c h e m a t i c ' , 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' D w i m e r y t e   i n g o t   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' D w i m e r y t e   i n g o t   s c h e m a t i c   1 ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' D w i m e r y t e   p l a t e   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' I n f u s e d   d u s t   s c h e m a t i c ' , 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' I n f u s e d   s h a r d   s c h e m a t i c ' , 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 A d d C r a f t i n g S c h e m a t i c ( ' I n f u s e d   c r y s t a l   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
  
 	 	 i f   (   t h e G a m e . G e t D L C M a n a g e r ( ) . I s E P 2 A v a i l a b l e ( )   )  
 	 	 {  
 	 	 	 A d d C r a f t i n g S c h e m a t i c ( ' D r a c o n i d e   i n f u s e d   l e a t h e r   s c h e m a t i c ' , 	 t r u e ,   t r u e ) ;  
 	 	 	 A d d C r a f t i n g S c h e m a t i c ( ' N i c k e l   o r e   s c h e m a t i c ' , 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 	 A d d C r a f t i n g S c h e m a t i c ( ' C u p r o n i c k e l   o r e   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 	 A d d C r a f t i n g S c h e m a t i c ( ' C o p p e r   o r e   s c h e m a t i c ' , 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 	 A d d C r a f t i n g S c h e m a t i c ( ' C o p p e r   i n g o t   s c h e m a t i c ' , 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 	 A d d C r a f t i n g S c h e m a t i c ( ' C o p p e r   p l a t e   s c h e m a t i c ' , 	 	 	 	 t r u e ,   t r u e ) ;  
 	 	 	 A d d C r a f t i n g S c h e m a t i c ( ' G r e e n   g o l d   o r e   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 	 A d d C r a f t i n g S c h e m a t i c ( ' G r e e n   g o l d   o r e   s c h e m a t i c   1 ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 	 A d d C r a f t i n g S c h e m a t i c ( ' G r e e n   g o l d   i n g o t   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 	 A d d C r a f t i n g S c h e m a t i c ( ' G r e e n   g o l d   p l a t e   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 	 A d d C r a f t i n g S c h e m a t i c ( ' O r i c h a l c u m   o r e   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 	 A d d C r a f t i n g S c h e m a t i c ( ' O r i c h a l c u m   o r e   s c h e m a t i c   1 ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 	 A d d C r a f t i n g S c h e m a t i c ( ' O r i c h a l c u m   i n g o t   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 	 A d d C r a f t i n g S c h e m a t i c ( ' O r i c h a l c u m   p l a t e   s c h e m a t i c ' , 	 	 	 t r u e ,   t r u e ) ;  
 	 	 	 A d d C r a f t i n g S c h e m a t i c ( ' D w i m e r y t e   e n r i c h e d   o r e   s c h e m a t i c ' , 	 t r u e ,   t r u e ) ;  
 	 	 	 A d d C r a f t i n g S c h e m a t i c ( ' D w i m e r y t e   e n r i c h e d   i n g o t   s c h e m a t i c ' , 	 t r u e ,   t r u e ) ;  
 	 	 	 A d d C r a f t i n g S c h e m a t i c ( ' D w i m e r y t e   e n r i c h e d   p l a t e   s c h e m a t i c ' , 	 t r u e ,   t r u e ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   A p p l y P a t c h F i x e s ( )  
 	 {  
 	 	 v a r   c n t ,   t r a n s m u t a t i o n C o u n t ,   m u t a g e n C o u n t ,   i ,   s l o t   :   i n t ;  
 	 	 v a r   t r a n s m u t a t i o n A b i l i t y ,   i t e m N a m e   :   n a m e ;  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	 v a r   s l o t I d   :   i n t ;  
 	 	 v a r   o f f s e t   :   f l o a t ;  
 	 	 v a r   b u f f s   :   a r r a y < C B a s e G a m e p l a y E f f e c t > ;  
 	 	 v a r   m u t a g e n   :   W 3 M u t a g e n _ E f f e c t ;  
 	 	 v a r   s k i l l   :   S S i m p l e S k i l l ;  
 	 	 v a r   s p e n t S k i l l P o i n t s ,   s w o r d S k i l l P o i n t s S p e n t ,   a l c h e m y S k i l l P o i n t s S p e n t ,   p e r k S k i l l P o i n t s S p e n t ,   p o i n t s T o A d d   :   i n t ;  
 	 	 v a r   m u t a g e n s   :   a r r a y <   W 3 M u t a g e n _ E f f e c t   > ;  
 	 	  
 	 	 i f ( F a c t s Q u e r y S u m ( " C l e a r i n g P o t i o n P a s s i v e B o n u s F i x " )   <   1 )  
 	 	 {  
 	 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
  
 	 	 	 c n t   =   G e t A b i l i t y C o u n t ( ' s w o r d _ a d r e n a l i n e g a i n ' )   -   p a m . G e t P a t h P o i n t s S p e n t ( E S P _ S w o r d ) ;  
 	 	 	 i f ( c n t   >   0 )  
 	 	 	 	 R e m o v e A b i l i t y M u l t i p l e ( ' s w o r d _ a d r e n a l i n e g a i n ' ,   c n t ) ;  
 	 	 	 	  
 	 	 	 c n t   =   G e t A b i l i t y C o u n t ( ' m a g i c _ s t a m i n a r e g e n ' )   -   p a m . G e t P a t h P o i n t s S p e n t ( E S P _ S i g n s ) ;  
 	 	 	 i f ( c n t   >   0 )  
 	 	 	 	 R e m o v e A b i l i t y M u l t i p l e ( ' m a g i c _ s t a m i n a r e g e n ' ,   c n t ) ;  
 	 	 	 	  
 	 	 	 c n t   =   G e t A b i l i t y C o u n t ( ' a l c h e m y _ p o t i o n d u r a t i o n ' )   -   p a m . G e t P a t h P o i n t s S p e n t ( E S P _ A l c h e m y ) ;  
 	 	 	 i f ( c n t   >   0 )  
 	 	 	 	 R e m o v e A b i l i t y M u l t i p l e ( ' a l c h e m y _ p o t i o n d u r a t i o n ' ,   c n t ) ;  
 	 	  
 	 	 	 F a c t s A d d ( " C l e a r i n g P o t i o n P a s s i v e B o n u s F i x " ) ;  
 	 	 }  
 	 	 	 	  
 	 	  
 	 	 i f ( F a c t s Q u e r y S u m ( " D i m e r i t i u m S y n e r g y F i x " )   <   1 )  
 	 	 {  
 	 	 	 s l o t I d   =   G e t S k i l l S l o t I D ( S _ A l c h e m y _ s 1 9 ) ;  
 	 	 	 i f ( s l o t I d   ! =   - 1 )  
 	 	 	 	 U n e q u i p S k i l l ( S _ A l c h e m y _ s 1 9 ) ;  
 	 	 	 	  
 	 	 	 R e m o v e A b i l i t y A l l ( ' g r e a t e r _ m u t a g e n _ c o l o r _ g r e e n _ s y n e r g y _ b o n u s ' ) ;  
 	 	 	 R e m o v e A b i l i t y A l l ( ' m u t a g e n _ c o l o r _ g r e e n _ s y n e r g y _ b o n u s ' ) ;  
 	 	 	 R e m o v e A b i l i t y A l l ( ' m u t a g e n _ c o l o r _ l e s s e r _ g r e e n _ s y n e r g y _ b o n u s ' ) ;  
 	 	 	  
 	 	 	 R e m o v e A b i l i t y A l l ( ' g r e a t e r _ m u t a g e n _ c o l o r _ b l u e _ s y n e r g y _ b o n u s ' ) ;  
 	 	 	 R e m o v e A b i l i t y A l l ( ' m u t a g e n _ c o l o r _ b l u e _ s y n e r g y _ b o n u s ' ) ;  
 	 	 	 R e m o v e A b i l i t y A l l ( ' m u t a g e n _ c o l o r _ l e s s e r _ b l u e _ s y n e r g y _ b o n u s ' ) ;  
 	 	 	  
 	 	 	 R e m o v e A b i l i t y A l l ( ' g r e a t e r _ m u t a g e n _ c o l o r _ r e d _ s y n e r g y _ b o n u s ' ) ;  
 	 	 	 R e m o v e A b i l i t y A l l ( ' m u t a g e n _ c o l o r _ r e d _ s y n e r g y _ b o n u s ' ) ;  
 	 	 	 R e m o v e A b i l i t y A l l ( ' m u t a g e n _ c o l o r _ l e s s e r _ r e d _ s y n e r g y _ b o n u s ' ) ;  
 	 	 	  
 	 	 	 i f ( s l o t I d   ! =   - 1 )  
 	 	 	 	 E q u i p S k i l l ( S _ A l c h e m y _ s 1 9 ,   s l o t I d ) ;  
 	 	  
 	 	 	 F a c t s A d d ( " D i m e r i t i u m S y n e r g y F i x " ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( F a c t s Q u e r y S u m ( " D o n t S h o w R e c i p e P i n T u t " )   <   1 )  
 	 	 {  
 	 	 	 F a c t s A d d (   " D o n t S h o w R e c i p e P i n T u t "   ) ;  
 	 	 	 T u t o r i a l S c r i p t ( ' a l c h e m y R e c i p e P i n ' ,   ' ' ) ;  
 	 	 	 T u t o r i a l S c r i p t ( ' c r a f t i n g R e c i p e P i n ' ,   ' ' ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( F a c t s Q u e r y S u m ( " L e v e l R e q P o t G i v e n " )   <   1 )  
 	 	 {  
 	 	 	 F a c t s A d d ( " L e v e l R e q P o t G i v e n " ) ;  
 	 	 	 i n v . A d d A n I t e m ( ' W o l f   H o u r ' ,   1 ,   f a l s e ,   f a l s e ,   t r u e ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( ! H a s B u f f ( E E T _ A u t o S t a m i n a R e g e n ) )  
 	 	 {  
 	 	 	 A d d E f f e c t D e f a u l t ( E E T _ A u t o S t a m i n a R e g e n ,   t h i s ,   ' a u t o b u f f ' ,   f a l s e ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	 b u f f s   =   G e t B u f f s ( ) ;  
 	 	 o f f s e t   =   0 ;  
 	 	 m u t a g e n C o u n t   =   0 ;  
 	 	 f o r ( i = 0 ;   i < b u f f s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 m u t a g e n   =   ( W 3 M u t a g e n _ E f f e c t ) b u f f s [ i ] ;  
 	 	 	 i f ( m u t a g e n )  
 	 	 	 {  
 	 	 	 	 o f f s e t   + =   m u t a g e n . G e t T o x i c i t y O f f s e t ( ) ;  
 	 	 	 	 m u t a g e n C o u n t   + =   1 ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( o f f s e t   ! =   ( G e t S t a t ( B C S _ T o x i c i t y )   -   G e t S t a t ( B C S _ T o x i c i t y ,   t r u e ) ) )  
 	 	 	 S e t T o x i c i t y O f f s e t ( o f f s e t ) ;  
 	 	 	  
 	 	  
 	 	 m u t a g e n C o u n t   * =   G e t S k i l l L e v e l ( S _ A l c h e m y _ s 1 3 ) ;  
 	 	 t r a n s m u t a t i o n A b i l i t y   =   G e t S k i l l A b i l i t y N a m e ( S _ A l c h e m y _ s 1 3 ) ;  
 	 	 t r a n s m u t a t i o n C o u n t   =   G e t A b i l i t y C o u n t ( t r a n s m u t a t i o n A b i l i t y ) ;  
 	 	 i f ( m u t a g e n C o u n t   <   t r a n s m u t a t i o n C o u n t )  
 	 	 {  
 	 	 	 R e m o v e A b i l i t y M u l t i p l e ( t r a n s m u t a t i o n A b i l i t y ,   t r a n s m u t a t i o n C o u n t   -   m u t a g e n C o u n t ) ;  
 	 	 }  
 	 	 e l s e   i f ( m u t a g e n C o u n t   >   t r a n s m u t a t i o n C o u n t )  
 	 	 {  
 	 	 	 A d d A b i l i t y M u l t i p l e ( t r a n s m u t a t i o n A b i l i t y ,   m u t a g e n C o u n t   -   t r a n s m u t a t i o n C o u n t ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( t h e G a m e . G e t D L C M a n a g e r ( ) . I s E P 1 A v a i l a b l e ( ) )  
 	 	 {  
 	 	 	 t h e G a m e . G e t J o u r n a l M a n a g e r ( ) . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l E n c h a n t i n g ' ,   J S _ A c t i v e ) ;  
 	 	 }  
  
 	 	  
 	 	 i f ( H a s A b i l i t y ( ' s w o r d _ s 1 9 ' )   & &   F a c t s Q u e r y S u m ( " P a t c h _ S w o r d _ s 1 9 " )   <   1 )  
 	 	 {  
 	 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
  
 	 	 	  
 	 	 	 s k i l l . l e v e l   =   0 ;  
 	 	 	 f o r ( i   =   S _ M a g i c _ s 0 1 ;   i   < =   S _ M a g i c _ s 2 0 ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 s k i l l . s k i l l T y p e   =   i ; 	 	 	 	  
 	 	 	 	 p a m . R e m o v e T e m p o r a r y S k i l l ( s k i l l ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 s p e n t S k i l l P o i n t s   =   l e v e l M a n a g e r . G e t P o i n t s U s e d ( E S k i l l P o i n t ) ;  
 	 	 	 s w o r d S k i l l P o i n t s S p e n t   =   p a m . G e t P a t h P o i n t s S p e n t ( E S P _ S w o r d ) ;  
 	 	 	 a l c h e m y S k i l l P o i n t s S p e n t   =   p a m . G e t P a t h P o i n t s S p e n t ( E S P _ A l c h e m y ) ;  
 	 	 	 p e r k S k i l l P o i n t s S p e n t   =   p a m . G e t P a t h P o i n t s S p e n t ( E S P _ P e r k s ) ;  
 	 	 	  
 	 	 	 p o i n t s T o A d d   =   s p e n t S k i l l P o i n t s   -   s w o r d S k i l l P o i n t s S p e n t   -   a l c h e m y S k i l l P o i n t s S p e n t   -   p e r k S k i l l P o i n t s S p e n t ;  
 	 	 	 i f ( p o i n t s T o A d d   >   0 )  
 	 	 	 	 l e v e l M a n a g e r . U n s p e n d P o i n t s ( E S k i l l P o i n t ,   p o i n t s T o A d d ) ;  
 	 	 	  
 	 	 	  
 	 	 	 R e m o v e A b i l i t y A l l ( ' s w o r d _ s 1 9 ' ) ;  
 	 	 	  
 	 	 	  
 	 	 	 F a c t s A d d ( " P a t c h _ S w o r d _ s 1 9 " ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   H a s A b i l i t y (   ' s w o r d _ s 1 9 '   )   )  
 	 	 {  
 	 	 	 R e m o v e A b i l i t y A l l (   ' s w o r d _ s 1 9 '   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( F a c t s Q u e r y S u m ( " P a t c h _ A r m o r _ T y p e _ G l y p h w o r d s " )   <   1 )  
 	 	 {  
 	 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 	  
 	 	 	 p a m . S e t P e r k A r m o r B o n u s (   S _ P e r k _ 0 5 ,   t h i s   ) ;  
 	 	 	 p a m . S e t P e r k A r m o r B o n u s (   S _ P e r k _ 0 6 ,   t h i s   ) ;  
 	 	 	 p a m . S e t P e r k A r m o r B o n u s (   S _ P e r k _ 0 7 ,   t h i s   ) ;  
 	 	 	  
 	 	 	 F a c t s A d d ( " P a t c h _ A r m o r _ T y p e _ G l y p h w o r d s " ) ;  
 	 	 }  
 	 	 e l s e   i f (   F a c t s Q u e r y S u m ( " 1 5 4 9 9 9 " )   <   1   )  
 	 	 {  
 	 	 	  
 	 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 	  
 	 	 	 p a m . S e t P e r k A r m o r B o n u s (   S _ P e r k _ 0 5 ,   t h i s   ) ;  
 	 	 	 p a m . S e t P e r k A r m o r B o n u s (   S _ P e r k _ 0 6 ,   t h i s   ) ;  
 	 	 	 p a m . S e t P e r k A r m o r B o n u s (   S _ P e r k _ 0 7 ,   t h i s   ) ;  
 	 	 	  
 	 	 	 F a c t s A d d ( " 1 5 4 9 9 9 " ) ;  
 	 	 }  
 	 	  
 	 	 i f (   F a c t s Q u e r y S u m (   " P a t c h _ D e c o c t i o n _ B u f f _ I c o n s "   )   <   1   )  
 	 	 {  
 	 	 	 m u t a g e n s   =   G e t M u t a g e n B u f f s ( ) ;  
 	 	 	 f o r (   i = 0 ;   i < m u t a g e n s . S i z e ( ) ;   i + = 1   )  
 	 	 	 {  
 	 	 	 	 i t e m N a m e   =   D e c o c t i o n E f f e c t T y p e T o I t e m N a m e (   m u t a g e n s [ i ] . G e t E f f e c t T y p e ( )   ) ; 	 	 	 	  
 	 	 	 	 m u t a g e n s [ i ] . O v e r r i d e I c o n (   i t e m N a m e   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 F a c t s A d d (   " P a t c h _ D e c o c t i o n _ B u f f _ I c o n s "   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   F a c t s Q u e r y S u m (   " 1 5 4 9 9 7 "   )   <   1   )  
 	 	 {  
 	 	 	 i f (   I s S k i l l E q u i p p e d (   S _ A l c h e m y _ s 1 8   )   )  
 	 	 	 {  
 	 	 	 	 s l o t   =   G e t S k i l l S l o t I D (   S _ A l c h e m y _ s 1 8   ) ;  
 	 	 	 	 U n e q u i p S k i l l (   s l o t   ) ;  
 	 	 	 	 E q u i p S k i l l (   S _ A l c h e m y _ s 1 8 ,   s l o t   ) ;  
 	 	 	 }  
 	 	 	 F a c t s A d d (   " 1 5 4 9 9 7 "   ) ;  
 	 	 }  
 	 	 i f (   F a c t s Q u e r y S u m (   " P a t c h _ M u t a g e n _ I n g _ S t a c k i n g "   )   <   1   )  
 	 	 {  
 	 	 	 P a t c h _ M u t a g e n S t a c k i n g ( ) ; 	 	  
 	 	 	 F a c t s A d d (   " P a t c h _ M u t a g e n _ I n g _ S t a c k i n g "   ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   P a t c h _ M u t a g e n S t a c k i n g ( )  
 	 {  
 	 	 v a r   i ,   j ,   q u a n t i t y   :   i n t ;  
 	 	 v a r   m u t s   :   a r r a y <   S I t e m U n i q u e I d   > ;  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ;  
 	 	 v a r   m u t N a m e   :   n a m e ;  
 	 	 v a r   w a s I n A r r a y   :   b o o l ;  
 	 	 v a r   m u t s T o A d d   :   a r r a y <   S I t e m P a r t s   > ;  
 	 	 v a r   m u t T o A d d   :   S I t e m P a r t s ;  
 	 	  
 	 	 m u t s   =   i n v . G e t I t e m s B y T a g (   ' M u t a g e n I n g r e d i e n t '   ) ;  
 	 	 i f (   G e t I t e m E q u i p p e d O n S l o t (   E E S _ S k i l l M u t a g e n 1 ,   i t e m   )   )  
 	 	 {  
 	 	 	 m u t s . R e m o v e (   i t e m   ) ;  
 	 	 	 i n v . S e t I t e m S t a c k a b l e (   i t e m ,   f a l s e   ) ;  
 	 	 }  
 	 	 i f (   G e t I t e m E q u i p p e d O n S l o t (   E E S _ S k i l l M u t a g e n 2 ,   i t e m   )   )  
 	 	 {  
 	 	 	 m u t s . R e m o v e (   i t e m   ) ;  
 	 	 	 i n v . S e t I t e m S t a c k a b l e (   i t e m ,   f a l s e   ) ;  
 	 	 }  
 	 	 i f (   G e t I t e m E q u i p p e d O n S l o t (   E E S _ S k i l l M u t a g e n 3 ,   i t e m   )   )  
 	 	 {  
 	 	 	 m u t s . R e m o v e (   i t e m   ) ;  
 	 	 	 i n v . S e t I t e m S t a c k a b l e (   i t e m ,   f a l s e   ) ;  
 	 	 }  
 	 	 i f (   G e t I t e m E q u i p p e d O n S l o t (   E E S _ S k i l l M u t a g e n 4 ,   i t e m   )   )  
 	 	 {  
 	 	 	 m u t s . R e m o v e (   i t e m   ) ;  
 	 	 	 i n v . S e t I t e m S t a c k a b l e (   i t e m ,   f a l s e   ) ;  
 	 	 }  
 	 	  
 	 	 f o r (   i = 0 ;   i < m u t s . S i z e ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 m u t N a m e   =   i n v . G e t I t e m N a m e (   m u t s [ i ]   ) ;  
 	 	 	 q u a n t i t y   =   i n v . G e t I t e m Q u a n t i t y (   m u t s [ i ]   ) ;  
 	 	 	  
 	 	 	 w a s I n A r r a y   =   f a l s e ;  
 	 	 	 f o r (   j = 0 ;   j < m u t s T o A d d . S i z e ( ) ;   j + = 1   )  
 	 	 	 {  
 	 	 	 	 i f (   m u t s T o A d d [ j ] . i t e m N a m e   = =   m u t N a m e   )  
 	 	 	 	 {  
 	 	 	 	 	 m u t s T o A d d [ j ] . q u a n t i t y   + =   q u a n t i t y ;  
 	 	 	 	 	 w a s I n A r r a y   =   t r u e ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 i f (   ! w a s I n A r r a y   )  
 	 	 	 {  
 	 	 	 	 m u t T o A d d . i t e m N a m e   =   m u t N a m e ;  
 	 	 	 	 m u t T o A d d . q u a n t i t y   =   q u a n t i t y ;  
 	 	 	 	 m u t s T o A d d . P u s h B a c k (   m u t T o A d d   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i n v . R e m o v e I t e m (   m u t s [ i ] ,   q u a n t i t y   ) ;  
 	 	 }  
 	 	  
 	 	 f o r (   i = 0 ;   i < m u t s T o A d d . S i z e ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 i n v . A d d A n I t e m (   m u t s T o A d d [ i ] . i t e m N a m e ,   m u t s T o A d d [ i ] . q u a n t i t y ,   t r u e ,   t r u e   ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   F i x E q u i p p e d M u t a g e n s ( )  
 	 {  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ;  
 	 	 i f (   G e t I t e m E q u i p p e d O n S l o t (   E E S _ S k i l l M u t a g e n 1 ,   i t e m   )   )  
 	 	 {  
 	 	 	 i n v . S e t I t e m S t a c k a b l e (   i t e m ,   f a l s e   ) ;  
 	 	 }  
 	 	 i f (   G e t I t e m E q u i p p e d O n S l o t (   E E S _ S k i l l M u t a g e n 2 ,   i t e m   )   )  
 	 	 {  
 	 	 	 i n v . S e t I t e m S t a c k a b l e (   i t e m ,   f a l s e   ) ;  
 	 	 }  
 	 	 i f (   G e t I t e m E q u i p p e d O n S l o t (   E E S _ S k i l l M u t a g e n 3 ,   i t e m   )   )  
 	 	 {  
 	 	 	 i n v . S e t I t e m S t a c k a b l e (   i t e m ,   f a l s e   ) ;  
 	 	 }  
 	 	 i f (   G e t I t e m E q u i p p e d O n S l o t (   E E S _ S k i l l M u t a g e n 4 ,   i t e m   )   )  
 	 	 {  
 	 	 	 i n v . S e t I t e m S t a c k a b l e (   i t e m ,   f a l s e   ) ;  
 	 	 }  
 	 }  
  
 	 p u b l i c   f i n a l   f u n c t i o n   R e s t o r e Q u e n (   q u e n H e a l t h   :   f l o a t ,   q u e n D u r a t i o n   :   f l o a t ,   o p t i o n a l   a l t e r n a t e   :   b o o l   )   :   b o o l  
 	 {  
 	 	 v a r   r e s t o r e d Q u e n   	 :   W 3 Q u e n E n t i t y ;  
 	 	  
 	 	 i f ( q u e n H e a l t h   >   0 . f   & &   q u e n D u r a t i o n   > =   3 . f )  
 	 	 {  
 	 	 	 r e s t o r e d Q u e n   =   ( W 3 Q u e n E n t i t y ) t h e G a m e . C r e a t e E n t i t y (   s i g n s [ S T _ Q u e n ] . t e m p l a t e ,   G e t W o r l d P o s i t i o n ( ) ,   G e t W o r l d R o t a t i o n ( )   ) ;  
 	 	 	 r e s t o r e d Q u e n . I n i t (   s i g n O w n e r ,   s i g n s [ S T _ Q u e n ] . e n t i t y ,   t r u e   ) ;  
 	 	 	  
 	 	 	 i f (   a l t e r n a t e   )  
 	 	 	 {  
 	 	 	 	 r e s t o r e d Q u e n . S e t A l t e r n a t e C a s t (   S _ M a g i c _ s 0 4   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 r e s t o r e d Q u e n . O n S t a r t e d ( ) ;  
 	 	 	 r e s t o r e d Q u e n . O n T h r o w i n g ( ) ;  
 	 	 	  
 	 	 	 i f (   ! a l t e r n a t e   )  
 	 	 	 {  
 	 	 	 	 r e s t o r e d Q u e n . O n E n d e d ( ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 r e s t o r e d Q u e n . S e t D a t a F r o m R e s t o r e ( q u e n H e a l t h ,   q u e n D u r a t i o n ) ;  
 	 	 	  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s I n i t i a l i z e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s I n i t i a l i z e d ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   N e w G a m e P l u s I n i t i a l i z e ( )  
 	 {  
 	 	 v a r   q u e s t I t e m s   :   a r r a y < n a m e > ;  
 	 	 v a r   h o r s e M a n a g e r   :   W 3 H o r s e M a n a g e r ;  
 	 	 v a r   h o r s e I n v e n t o r y   :   C I n v e n t o r y C o m p o n e n t ;  
 	 	 v a r   i ,   m i s s i n g L e v e l s ,   e x p D i f f   :   i n t ;  
 	 	  
 	 	 s u p e r . N e w G a m e P l u s I n i t i a l i z e ( ) ;  
 	 	  
 	 	  
 	 	 h o r s e M a n a g e r   =   ( W 3 H o r s e M a n a g e r ) E n t i t y H a n d l e G e t ( h o r s e M a n a g e r H a n d l e ) ;  
 	 	 i f ( h o r s e M a n a g e r )  
 	 	 	 h o r s e I n v e n t o r y   =   h o r s e M a n a g e r . G e t I n v e n t o r y C o m p o n e n t ( ) ;  
 	 	  
 	 	  
 	 	 t h e G a m e . p a r a m s . S e t N e w G a m e P l u s L e v e l ( G e t L e v e l ( ) ) ;  
 	 	  
 	 	  
 	 	 i f   ( t h e G a m e . G e t D L C M a n a g e r ( ) . I s D L C A v a i l a b l e ( ' e p 1 ' ) )  
 	 	 	 m i s s i n g L e v e l s   =   t h e G a m e . p a r a m s . N E W _ G A M E _ P L U S _ E P 1 _ M I N _ L E V E L   -   G e t L e v e l ( ) ;  
 	 	 e l s e  
 	 	 	 m i s s i n g L e v e l s   =   t h e G a m e . p a r a m s . N E W _ G A M E _ P L U S _ M I N _ L E V E L   -   G e t L e v e l ( ) ;  
 	 	 	  
 	 	 f o r ( i = 0 ;   i < m i s s i n g L e v e l s ;   i + = 1 )  
 	 	 {  
 	 	 	  
 	 	 	 e x p D i f f   =   l e v e l M a n a g e r . G e t T o t a l E x p F o r N e x t L e v e l ( )   -   l e v e l M a n a g e r . G e t P o i n t s T o t a l ( E E x p e r i e n c e P o i n t ) ;  
 	 	 	 e x p D i f f   =   C e i l F (   ( ( f l o a t ) e x p D i f f )   /   2   ) ;  
 	 	 	 A d d P o i n t s ( E E x p e r i e n c e P o i n t ,   e x p D i f f ,   f a l s e ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 i n v . R e m o v e I t e m B y T a g ( ' Q u e s t ' ,   - 1 ) ;  
 	 	 h o r s e I n v e n t o r y . R e m o v e I t e m B y T a g ( ' Q u e s t ' ,   - 1 ) ;  
  
 	 	  
 	 	  
 	 	 q u e s t I t e m s   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t I t e m s W i t h T a g ( ' Q u e s t ' ) ;  
 	 	 f o r ( i = 0 ;   i < q u e s t I t e m s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 i n v . R e m o v e I t e m B y N a m e ( q u e s t I t e m s [ i ] ,   - 1 ) ;  
 	 	 	 h o r s e I n v e n t o r y . R e m o v e I t e m B y N a m e ( q u e s t I t e m s [ i ] ,   - 1 ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i n v . R e m o v e I t e m B y N a m e ( ' m q 1 0 0 2 _ a r t i f a c t _ 3 ' ,   - 1 ) ;  
 	 	 h o r s e I n v e n t o r y . R e m o v e I t e m B y N a m e ( ' m q 1 0 0 2 _ a r t i f a c t _ 3 ' ,   - 1 ) ;  
 	 	  
 	 	  
 	 	 i n v . R e m o v e I t e m B y T a g ( ' N o t T r a n s f e r a b l e T o N G P ' ,   - 1 ) ;  
 	 	 h o r s e I n v e n t o r y . R e m o v e I t e m B y T a g ( ' N o t T r a n s f e r a b l e T o N G P ' ,   - 1 ) ;  
 	 	  
 	 	  
 	 	 i n v . R e m o v e I t e m B y T a g ( ' N o t i c e B o a r d N o t e ' ,   - 1 ) ;  
 	 	 h o r s e I n v e n t o r y . R e m o v e I t e m B y T a g ( ' N o t i c e B o a r d N o t e ' ,   - 1 ) ;  
 	 	  
 	 	  
 	 	 R e m o v e A l l N o n A u t o B u f f s ( ) ;  
 	 	  
 	 	  
 	 	 R e m o v e A l c h e m y R e c i p e ( ' R e c i p e   f o r   T r i a l   P o t i o n   K i t ' ) ;  
 	 	 R e m o v e A l c h e m y R e c i p e ( ' R e c i p e   f o r   P o p s   A n t i d o t e ' ) ;  
 	 	 R e m o v e A l c h e m y R e c i p e ( ' R e c i p e   f o r   C z a r t   L u r e ' ) ;  
 	 	 R e m o v e A l c h e m y R e c i p e ( ' q 6 0 3 _ d i a r r h e a _ p o t i o n _ r e c i p e ' ) ;  
 	 	  
 	 	  
 	 	 i n v . R e m o v e I t e m B y T a g ( ' T r o p h y ' ,   - 1 ) ;  
 	 	 h o r s e I n v e n t o r y . R e m o v e I t e m B y T a g ( ' T r o p h y ' ,   - 1 ) ;  
 	 	  
 	 	  
 	 	 i n v . R e m o v e I t e m B y C a t e g o r y ( ' u s a b l e ' ,   - 1 ) ;  
 	 	 h o r s e I n v e n t o r y . R e m o v e I t e m B y C a t e g o r y ( ' u s a b l e ' ,   - 1 ) ;  
 	 	  
 	 	  
 	 	 R e m o v e A b i l i t y ( ' S t a m i n a T u t o r i a l P r o l o g ' ) ;  
         	 R e m o v e A b i l i t y ( ' T u t o r i a l S t a m i n a R e g e n H a c k ' ) ;  
         	 R e m o v e A b i l i t y ( ' a r e a _ n o v i g r a d ' ) ;  
         	 R e m o v e A b i l i t y ( ' N o R e g e n E f f e c t ' ) ;  
         	 R e m o v e A b i l i t y ( ' H e a v y S w i m m i n g S t a m i n a D r a i n ' ) ;  
         	 R e m o v e A b i l i t y ( ' A i r B o o s t ' ) ;  
         	 R e m o v e A b i l i t y ( ' a r e a _ n m l ' ) ;  
         	 R e m o v e A b i l i t y ( ' a r e a _ s k e l l i g e ' ) ;  
         	  
         	  
         	 i n v . R e m o v e I t e m B y T a g ( ' G w i n t C a r d ' ,   - 1 ) ;  
         	 h o r s e I n v e n t o r y . R e m o v e I t e m B y T a g ( ' G w i n t C a r d ' ,   - 1 ) ;  
         	         	  
         	  
         	  
         	 i n v . R e m o v e I t e m B y T a g ( ' R e a d a b l e I t e m ' ,   - 1 ) ;  
         	 h o r s e I n v e n t o r y . R e m o v e I t e m B y T a g ( ' R e a d a b l e I t e m ' ,   - 1 ) ;  
         	  
         	  
         	 a b i l i t y M a n a g e r . R e s t o r e S t a t s ( ) ;  
         	  
         	  
         	 ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . R e m o v e T o x i c i t y O f f s e t ( 1 0 0 0 0 ) ;  
         	  
         	  
         	 G e t I n v e n t o r y ( ) . S i n g l e t o n I t e m s R e f i l l A m m o ( ) ;  
         	  
         	  
         	 c r a f t i n g S c h e m a t i c s . C l e a r ( ) ;  
         	 A d d S t a r t i n g S c h e m a t i c s ( ) ;  
         	  
         	  
         	 f o r (   i = 0 ;   i < a m o u n t O f S e t P i e c e s E q u i p p e d . S i z e ( ) ;   i + = 1   )  
         	 {  
 	 	 	 a m o u n t O f S e t P i e c e s E q u i p p e d [ i ]   =   0 ;  
 	 	 }  
  
         	  
         	 i n v . A d d A n I t e m ( ' C l e a r i n g   P o t i o n ' ,   1 ,   t r u e ,   f a l s e ,   f a l s e ) ;  
         	  
         	  
         	 i n v . R e m o v e I t e m B y N a m e ( ' q 2 0 3 _ b r o k e n _ e y e o f l o k i ' ,   - 1 ) ;  
         	 h o r s e I n v e n t o r y . R e m o v e I t e m B y N a m e ( ' q 2 0 3 _ b r o k e n _ e y e o f l o k i ' ,   - 1 ) ;  
         	  
         	  
         	 N e w G a m e P l u s R e p l a c e V i p e r S e t ( i n v ) ;  
         	 N e w G a m e P l u s R e p l a c e V i p e r S e t ( h o r s e I n v e n t o r y ) ;  
         	 N e w G a m e P l u s R e p l a c e L y n x S e t ( i n v ) ;  
         	 N e w G a m e P l u s R e p l a c e L y n x S e t ( h o r s e I n v e n t o r y ) ;  
         	 N e w G a m e P l u s R e p l a c e G r y p h o n S e t ( i n v ) ;  
         	 N e w G a m e P l u s R e p l a c e G r y p h o n S e t ( h o r s e I n v e n t o r y ) ;  
         	 N e w G a m e P l u s R e p l a c e B e a r S e t ( i n v ) ;  
         	 N e w G a m e P l u s R e p l a c e B e a r S e t ( h o r s e I n v e n t o r y ) ;  
         	 N e w G a m e P l u s R e p l a c e E P 1 ( i n v ) ;  
         	 N e w G a m e P l u s R e p l a c e E P 1 ( h o r s e I n v e n t o r y ) ;  
         	 N e w G a m e P l u s R e p l a c e E P 2 W i t c h e r S e t s ( i n v ) ;  
         	 N e w G a m e P l u s R e p l a c e E P 2 W i t c h e r S e t s ( h o r s e I n v e n t o r y ) ;  
         	 N e w G a m e P l u s R e p l a c e E P 2 I t e m s ( i n v ) ;  
         	 N e w G a m e P l u s R e p l a c e E P 2 I t e m s ( h o r s e I n v e n t o r y ) ;  
         	 N e w G a m e P l u s M a r k I t e m s T o N o t A d j u s t ( i n v ) ;  
         	 N e w G a m e P l u s M a r k I t e m s T o N o t A d j u s t ( h o r s e I n v e n t o r y ) ;  
         	  
         	 N e w G a m e P l u s R e p l a c e N e t f l i x S e t ( i n v ) ;  
         	 N e w G a m e P l u s R e p l a c e N e t f l i x S e t ( h o r s e I n v e n t o r y ) ;  
         	  
         	 N e w G a m e P l u s R e p l a c e D o l B l a t h a n n a S e t ( i n v ) ;  
         	 N e w G a m e P l u s R e p l a c e D o l B l a t h a n n a S e t ( h o r s e I n v e n t o r y ) ;  
         	  
         	 N e w G a m e P l u s R e p l a c e W h i t e T i g e r S e t ( i n v ) ;  
         	 N e w G a m e P l u s R e p l a c e W h i t e T i g e r S e t ( h o r s e I n v e n t o r y ) ;  
         	  
         	  
         	 i n p u t H a n d l e r . C l e a r L o c k s F o r N G P ( ) ;  
         	  
         	  
         	 b u f f I m m u n i t i e s . C l e a r ( ) ;  
         	 b u f f R e m o v e d I m m u n i t i e s . C l e a r ( ) ;  
         	  
         	 n e w G a m e P l u s I n i t i a l i z e d   =   t r u e ;  
         	  
         	  
         	 m _ q u e n R e a p p l i e d C o u n t   =   1 ;  
         	  
         	  
         	  
         	  
         	 t i e d W a l k   =   f a l s e ;  
         	 p r o u d W a l k   =   f a l s e ;  
         	 i n j u r e d W a l k   =   f a l s e ;  
         	 S e t B e h a v i o r V a r i a b l e (   ' a l t e r n a t e W a l k ' ,   0 . 0 f   ) ;  
         	 S e t B e h a v i o r V a r i a b l e (   ' p r o u d W a l k ' ,   0 . 0 f   ) ;  
         	 i f (   G e t H o r s e M a n a g e r ( ) . G e t H o r s e M o d e ( )   = =   E H M _ U n i c o r n   )  
 	 	 	 G e t H o r s e M a n a g e r ( ) . S e t H o r s e M o d e (   E H M _ N o r m a l   ) ;  
         	  
 	 }  
 	 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s M a r k I t e m s T o N o t A d j u s t ( o u t   i n v   :   C I n v e n t o r y C o m p o n e n t )  
 	 {  
 	 	 v a r   i d s 	 	 :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   i   	 	 :   i n t ;  
 	 	 v a r   n 	 	 :   n a m e ;  
 	 	  
 	 	 i n v . G e t A l l I t e m s ( i d s ) ;  
 	 	 f o r (   i = 0 ;   i < i d s . S i z e ( ) ;   i + = 1   )    
 	 	 {  
 	 	 	 i n v . S e t I t e m M o d i f i e r I n t ( i d s [ i ] ,   ' N G P I t e m A d j u s t e d ' ,   1 ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s R e p l a c e I t e m (   i t e m   :   n a m e ,   n e w _ i t e m   :   n a m e ,   o u t   i n v   :   C I n v e n t o r y C o m p o n e n t )  
 	 {  
 	 	 v a r   i ,   j   	 	 	 	 	 :   i n t ;  
 	 	 v a r   i d s ,   n e w _ i d s ,   e n h _ i d s   	 :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   d y e _ i d s 	 	 	 	 	 :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   e n h 	 	 	 	 	   	 :   a r r a y < n a m e > ;  
 	 	 v a r   w a s E q u i p p e d   	 	 	 :   b o o l ;  
 	 	 v a r   w a s E n c h a n t e d   	 	 	 :   b o o l ;  
 	 	 v a r   w a s D y e d 	 	 	 	 	 :   b o o l ;  
 	 	 v a r   e n c h a n t N a m e ,   c o l o r N a m e 	 :   n a m e ;  
 	 	  
 	 	 i f   (   i n v . H a s I t e m (   i t e m   )   )  
 	 	 {  
 	 	 	 i d s   =   i n v . G e t I t e m s I d s ( i t e m ) ;  
 	 	 	 f o r   ( i   =   0 ;   i   <   i d s . S i z e ( ) ;   i   + =   1 )  
 	 	 	 {  
 	 	 	 	 i n v . G e t I t e m E n h a n c e m e n t I t e m s (   i d s [ i ] ,   e n h   ) ;  
 	 	 	 	 w a s E n c h a n t e d   =   i n v . I s I t e m E n c h a n t e d (   i d s [ i ]   ) ;  
 	 	 	 	 i f   (   w a s E n c h a n t e d   )    
 	 	 	 	 	 e n c h a n t N a m e   =   i n v . G e t E n c h a n t m e n t (   i d s [ i ]   ) ;  
 	 	 	 	 w a s E q u i p p e d   =   I s I t e m E q u i p p e d (   i d s [ i ]   ) ;  
 	 	 	 	 w a s D y e d   =   i n v . I s I t e m C o l o r e d (   i d s [ i ]   ) ;  
 	 	 	 	 i f   (   w a s D y e d   )  
 	 	 	 	 {  
 	 	 	 	 	 c o l o r N a m e   =   i n v . G e t I t e m C o l o r (   i d s [ i ]   ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i n v . R e m o v e I t e m (   i d s [ i ] ,   1   ) ;  
 	 	 	 	 n e w _ i d s   =   i n v . A d d A n I t e m (   n e w _ i t e m ,   1 ,   t r u e ,   t r u e ,   f a l s e   ) ;  
 	 	 	 	 i f   (   w a s E q u i p p e d   )  
 	 	 	 	 {  
 	 	 	 	 	 E q u i p I t e m (   n e w _ i d s [ 0 ]   ) ;  
 	 	 	 	 }  
 	 	 	 	 i f   (   w a s E n c h a n t e d   )  
 	 	 	 	 {  
 	 	 	 	 	 i n v . E n c h a n t I t e m (   n e w _ i d s [ 0 ] ,   e n c h a n t N a m e ,   g e t E n c h a m t m e n t S t a t N a m e ( e n c h a n t N a m e )   ) ;  
 	 	 	 	 }  
 	 	 	 	 f o r   ( j   =   0 ;   j   <   e n h . S i z e ( ) ;   j   + =   1 )  
 	 	 	 	 {  
 	 	 	 	 	 e n h _ i d s   =   i n v . A d d A n I t e m (   e n h [ j ] ,   1 ,   t r u e ,   t r u e ,   f a l s e   ) ;  
 	 	 	 	 	 i n v . E n h a n c e I t e m S c r i p t (   n e w _ i d s [ 0 ] ,   e n h _ i d s [ 0 ]   ) ;  
 	 	 	 	 }  
 	 	 	 	 i f   (   w a s D y e d   )  
 	 	 	 	 {  
 	 	 	 	 	 d y e _ i d s   =   i n v . A d d A n I t e m (   c o l o r N a m e ,   1 ,   t r u e ,   t r u e ,   f a l s e   ) ;  
 	 	 	 	 	 i n v . C o l o r I t e m (   n e w _ i d s [ 0 ] ,   d y e _ i d s [ 0 ]   ) ;  
 	 	 	 	 	 i n v . R e m o v e I t e m (   d y e _ i d s [ 0 ] ,   1   ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i n v . S e t I t e m M o d i f i e r I n t (   n e w _ i d s [ 0 ] ,   ' N G P I t e m A d j u s t e d ' ,   1   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s A d j u s t D L C I t e m ( i t e m   :   n a m e ,   m o d   :   n a m e ,   i n v   :   C I n v e n t o r y C o m p o n e n t )  
 	 {  
 	 	 v a r   i d s 	 	 :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   i   	 	 :   i n t ;  
 	 	  
 	 	 i f (   i n v . H a s I t e m ( i t e m )   )  
 	 	 {  
 	 	 	 i d s   =   i n v . G e t I t e m s I d s ( i t e m ) ;  
 	 	 	 f o r   ( i   =   0 ;   i   <   i d s . S i z e ( ) ;   i   + =   1 )  
 	 	 	 {  
 	 	 	 	 i f   (   i n v . G e t I t e m M o d i f i e r I n t ( i d s [ i ] ,   ' D o N o t A d j u s t N G P D L C ' )   < =   0   )  
 	 	 	 	 {  
 	 	 	 	 	 i n v . A d d I t e m B a s e A b i l i t y ( i d s [ i ] ,   m o d ) ;  
 	 	 	 	 	 i n v . S e t I t e m M o d i f i e r I n t ( i d s [ i ] ,   ' D o N o t A d j u s t N G P D L C ' ,   1 ) ; 	  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s A d j u s t D L C 1 T e m e r i a n S e t ( i n v   :   C I n v e n t o r y C o m p o n e n t )    
 	 {  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   D L C 1   T e m e r i a n   A r m o r ' ,   ' N G P   D L C   C o m p a t i b i l i t y   C h e s t   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   D L C 1   T e m e r i a n   G l o v e s ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   D L C 1   T e m e r i a n   P a n t s ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   D L C 1   T e m e r i a n   B o o t s ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s A d j u s t D L C 5 N i l f g a r d i a n S e t ( i n v   :   C I n v e n t o r y C o m p o n e n t )    
 	 {  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   D L C 5   N i l f g a a r d i a n   A r m o r ' ,   ' N G P   D L C   C o m p a t i b i l i t y   C h e s t   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   D L C 5   N i l f g a a r d i a n   G l o v e s ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   D L C 5   N i l f g a a r d i a n   P a n t s ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   D L C 5   N i l f g a a r d i a n   B o o t s ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s A d j u s t D L C 1 0 W o l f S e t ( i n v   :   C I n v e n t o r y C o m p o n e n t )    
 	 {  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   A r m o r ' ,       ' N G P   D L C   C o m p a t i b i l i t y   C h e s t   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   A r m o r   1 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   C h e s t   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   A r m o r   2 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   C h e s t   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   A r m o r   3 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   C h e s t   A r m o r   M o d ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   B o o t s   1 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   B o o t s   2 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   B o o t s   3 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   B o o t s   4 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   G l o v e s   1 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   G l o v e s   2 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   G l o v e s   3 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   G l o v e s   4 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   P a n t s   1 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   P a n t s   2 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   P a n t s   3 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   P a n t s   4 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   S c h o o l   s t e e l   s w o r d ' ,       ' N G P   W o l f   S t e e l   S w o r d   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   S c h o o l   s t e e l   s w o r d   1 ' ,   ' N G P   W o l f   S t e e l   S w o r d   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   S c h o o l   s t e e l   s w o r d   2 ' ,   ' N G P   W o l f   S t e e l   S w o r d   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   S c h o o l   s t e e l   s w o r d   3 ' ,   ' N G P   W o l f   S t e e l   S w o r d   M o d ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   S c h o o l   s i l v e r   s w o r d ' ,       ' N G P   W o l f   S i l v e r   S w o r d   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   S c h o o l   s i l v e r   s w o r d   1 ' ,   ' N G P   W o l f   S i l v e r   S w o r d   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   S c h o o l   s i l v e r   s w o r d   2 ' ,   ' N G P   W o l f   S i l v e r   S w o r d   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W o l f   S c h o o l   s i l v e r   s w o r d   3 ' ,   ' N G P   W o l f   S i l v e r   S w o r d   M o d ' ,   i n v ) ;  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s A d j u s t D L C 1 4 S k e l l i g e S e t ( i n v   :   C I n v e n t o r y C o m p o n e n t )    
 	 {  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   D L C 1 4   S k e l l i g e   A r m o r ' ,   ' N G P   D L C   C o m p a t i b i l i t y   C h e s t   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   D L C 1 4   S k e l l i g e   G l o v e s ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   D L C 1 4   S k e l l i g e   P a n t s ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   D L C 1 4   S k e l l i g e   B o o t s ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s A d j u s t D L C 1 8 N e t f l i x S e t ( i n v   :   C I n v e n t o r y C o m p o n e n t )    
 	 {  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   N e t f l i x   A r m o r ' ,       ' N G P   D L C   C o m p a t i b i l i t y   C h e s t   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   N e t f l i x   A r m o r   1 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   C h e s t   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   N e t f l i x   A r m o r   2 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   C h e s t   A r m o r   M o d ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   N e t f l i x   B o o t s   1 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   N e t f l i x   B o o t s   2 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   N e t f l i x   B o o t s ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   N e t f l i x   G l o v e s   1 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   N e t f l i x   G l o v e s   2 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   N e t f l i x   G l o v e s ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   N e t f l i x   P a n t s   1 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   N e t f l i x   P a n t s   2 ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   N e t f l i x   P a n t s ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   N e t f l i x   s t e e l   s w o r d ' ,       ' N G P   W o l f   S t e e l   S w o r d   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   N e t f l i x   s t e e l   s w o r d   1 ' ,   ' N G P   W o l f   S t e e l   S w o r d   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   N e t f l i x   s t e e l   s w o r d   2 ' ,   ' N G P   W o l f   S t e e l   S w o r d   M o d ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   N e t f l i x   s i l v e r   s w o r d ' ,       ' N G P   W o l f   S i l v e r   S w o r d   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   N e t f l i x   s i l v e r   s w o r d   1 ' ,   ' N G P   W o l f   S i l v e r   S w o r d   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   N e t f l i x   s i l v e r   s w o r d   2 ' ,   ' N G P   W o l f   S i l v e r   S w o r d   M o d ' ,   i n v ) ;  
 	 }  
 	  
 	  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s A d j u s t D o l B l a t h a n n a S e t ( i n v   :   C I n v e n t o r y C o m p o n e n t )    
 	 {  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   D o l   B l a t h a n n a   A r m o r ' ,       ' N G P   D L C   C o m p a t i b i l i t y   C h e s t   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   D o l   B l a t h a n n a   B o o t s ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   D o l   B l a t h a n n a   G l o v e s ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ; 	 	  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   D o l   B l a t h a n n a   P a n t s ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ; 	 	  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   D o l   B l a t h a n n a   l o n g s w o r d ' ,       ' N G P   W o l f   S t e e l   S w o r d   M o d ' ,   i n v ) ; 	 	  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W h i t e   W i d o w   o f   D o l   B l a t h a n n a ' ,       ' N G P   W o l f   S i l v e r   S w o r d   M o d ' ,   i n v ) ;  
 	 }  
 	  
 	  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s A d j u s t W h i t e T i g e r S e t ( i n v   :   C I n v e n t o r y C o m p o n e n t )    
 	 {  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W h i t e   T i g e r   A r m o r ' ,       ' N G P   D L C   C o m p a t i b i l i t y   C h e s t   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W h i t e   T i g e r   B o o t s ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W h i t e   T i g e r   G l o v e s ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ; 	 	  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   W h i t e   T i g e r   P a n t s ' ,   ' N G P   D L C   C o m p a t i b i l i t y   A r m o r   M o d ' ,   i n v ) ; 	 	  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   S t e e l   V i x e n ' ,       ' N G P   W o l f   S t e e l   S w o r d   M o d ' ,   i n v ) ; 	 	  
 	 	 N e w G a m e P l u s A d j u s t D L C I t e m ( ' N G P   S i l v e r   V i x e n ' ,       ' N G P   W o l f   S i l v e r   S w o r d   M o d ' ,   i n v ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s R e p l a c e V i p e r S e t ( o u t   i n v   :   C I n v e n t o r y C o m p o n e n t )  
 	 {  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' V i p e r   S c h o o l   s t e e l   s w o r d ' ,   ' N G P   V i p e r   S c h o o l   s t e e l   s w o r d ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' V i p e r   S c h o o l   s i l v e r   s w o r d ' ,   ' N G P   V i p e r   S c h o o l   s i l v e r   s w o r d ' ,   i n v ) ;  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s R e p l a c e L y n x S e t ( o u t   i n v   :   C I n v e n t o r y C o m p o n e n t )  
 	 {  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   A r m o r ' ,   ' N G P   L y n x   A r m o r ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   A r m o r   1 ' ,   ' N G P   L y n x   A r m o r   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   A r m o r   2 ' ,   ' N G P   L y n x   A r m o r   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   A r m o r   3 ' ,   ' N G P   L y n x   A r m o r   3 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   G l o v e s   1 ' ,   ' N G P   L y n x   G l o v e s   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   G l o v e s   2 ' ,   ' N G P   L y n x   G l o v e s   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   G l o v e s   3 ' ,   ' N G P   L y n x   G l o v e s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   G l o v e s   4 ' ,   ' N G P   L y n x   G l o v e s   4 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   P a n t s   1 ' ,   ' N G P   L y n x   P a n t s   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   P a n t s   2 ' ,   ' N G P   L y n x   P a n t s   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   P a n t s   3 ' ,   ' N G P   L y n x   P a n t s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   P a n t s   4 ' ,   ' N G P   L y n x   P a n t s   4 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   B o o t s   1 ' ,   ' N G P   L y n x   B o o t s   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   B o o t s   2 ' ,   ' N G P   L y n x   B o o t s   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   B o o t s   3 ' ,   ' N G P   L y n x   B o o t s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   B o o t s   4 ' ,   ' N G P   L y n x   B o o t s   4 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   S c h o o l   s t e e l   s w o r d ' ,   ' N G P   L y n x   S c h o o l   s t e e l   s w o r d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   S c h o o l   s t e e l   s w o r d   1 ' ,   ' N G P   L y n x   S c h o o l   s t e e l   s w o r d   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   S c h o o l   s t e e l   s w o r d   2 ' ,   ' N G P   L y n x   S c h o o l   s t e e l   s w o r d   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   S c h o o l   s t e e l   s w o r d   3 ' ,   ' N G P   L y n x   S c h o o l   s t e e l   s w o r d   3 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   S c h o o l   s i l v e r   s w o r d ' ,   ' N G P   L y n x   S c h o o l   s i l v e r   s w o r d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   S c h o o l   s i l v e r   s w o r d   1 ' ,   ' N G P   L y n x   S c h o o l   s i l v e r   s w o r d   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   S c h o o l   s i l v e r   s w o r d   2 ' ,   ' N G P   L y n x   S c h o o l   s i l v e r   s w o r d   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   S c h o o l   s i l v e r   s w o r d   3 ' ,   ' N G P   L y n x   S c h o o l   s i l v e r   s w o r d   3 ' ,   i n v ) ;  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s R e p l a c e G r y p h o n S e t ( o u t   i n v   :   C I n v e n t o r y C o m p o n e n t )  
 	 {  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   A r m o r ' ,   ' N G P   G r y p h o n   A r m o r ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   A r m o r   1 ' ,   ' N G P   G r y p h o n   A r m o r   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   A r m o r   2 ' ,   ' N G P   G r y p h o n   A r m o r   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   A r m o r   3 ' ,   ' N G P   G r y p h o n   A r m o r   3 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   G l o v e s   1 ' ,   ' N G P   G r y p h o n   G l o v e s   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   G l o v e s   2 ' ,   ' N G P   G r y p h o n   G l o v e s   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   G l o v e s   3 ' ,   ' N G P   G r y p h o n   G l o v e s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   G l o v e s   4 ' ,   ' N G P   G r y p h o n   G l o v e s   4 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   P a n t s   1 ' ,   ' N G P   G r y p h o n   P a n t s   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   P a n t s   2 ' ,   ' N G P   G r y p h o n   P a n t s   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   P a n t s   3 ' ,   ' N G P   G r y p h o n   P a n t s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   P a n t s   4 ' ,   ' N G P   G r y p h o n   P a n t s   4 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   B o o t s   1 ' ,   ' N G P   G r y p h o n   B o o t s   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   B o o t s   2 ' ,   ' N G P   G r y p h o n   B o o t s   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   B o o t s   3 ' ,   ' N G P   G r y p h o n   B o o t s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   B o o t s   4 ' ,   ' N G P   G r y p h o n   B o o t s   4 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   S c h o o l   s t e e l   s w o r d ' ,   ' N G P   G r y p h o n   S c h o o l   s t e e l   s w o r d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   S c h o o l   s t e e l   s w o r d   1 ' ,   ' N G P   G r y p h o n   S c h o o l   s t e e l   s w o r d   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   S c h o o l   s t e e l   s w o r d   2 ' ,   ' N G P   G r y p h o n   S c h o o l   s t e e l   s w o r d   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   S c h o o l   s t e e l   s w o r d   3 ' ,   ' N G P   G r y p h o n   S c h o o l   s t e e l   s w o r d   3 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   S c h o o l   s i l v e r   s w o r d ' ,   ' N G P   G r y p h o n   S c h o o l   s i l v e r   s w o r d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   S c h o o l   s i l v e r   s w o r d   1 ' ,   ' N G P   G r y p h o n   S c h o o l   s i l v e r   s w o r d   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   S c h o o l   s i l v e r   s w o r d   2 ' ,   ' N G P   G r y p h o n   S c h o o l   s i l v e r   s w o r d   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   S c h o o l   s i l v e r   s w o r d   3 ' ,   ' N G P   G r y p h o n   S c h o o l   s i l v e r   s w o r d   3 ' ,   i n v ) ;  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s R e p l a c e B e a r S e t ( o u t   i n v   :   C I n v e n t o r y C o m p o n e n t )  
 	 {  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   A r m o r ' ,   ' N G P   B e a r   A r m o r ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   A r m o r   1 ' ,   ' N G P   B e a r   A r m o r   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   A r m o r   2 ' ,   ' N G P   B e a r   A r m o r   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   A r m o r   3 ' ,   ' N G P   B e a r   A r m o r   3 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   G l o v e s   1 ' ,   ' N G P   B e a r   G l o v e s   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   G l o v e s   2 ' ,   ' N G P   B e a r   G l o v e s   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   G l o v e s   3 ' ,   ' N G P   B e a r   G l o v e s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   G l o v e s   4 ' ,   ' N G P   B e a r   G l o v e s   4 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   P a n t s   1 ' ,   ' N G P   B e a r   P a n t s   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   P a n t s   2 ' ,   ' N G P   B e a r   P a n t s   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   P a n t s   3 ' ,   ' N G P   B e a r   P a n t s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   P a n t s   4 ' ,   ' N G P   B e a r   P a n t s   4 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   B o o t s   1 ' ,   ' N G P   B e a r   B o o t s   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   B o o t s   2 ' ,   ' N G P   B e a r   B o o t s   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   B o o t s   3 ' ,   ' N G P   B e a r   B o o t s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   B o o t s   4 ' ,   ' N G P   B e a r   B o o t s   4 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   S c h o o l   s t e e l   s w o r d ' ,   ' N G P   B e a r   S c h o o l   s t e e l   s w o r d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   S c h o o l   s t e e l   s w o r d   1 ' ,   ' N G P   B e a r   S c h o o l   s t e e l   s w o r d   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   S c h o o l   s t e e l   s w o r d   2 ' ,   ' N G P   B e a r   S c h o o l   s t e e l   s w o r d   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   S c h o o l   s t e e l   s w o r d   3 ' ,   ' N G P   B e a r   S c h o o l   s t e e l   s w o r d   3 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   S c h o o l   s i l v e r   s w o r d ' ,   ' N G P   B e a r   S c h o o l   s i l v e r   s w o r d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   S c h o o l   s i l v e r   s w o r d   1 ' ,   ' N G P   B e a r   S c h o o l   s i l v e r   s w o r d   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   S c h o o l   s i l v e r   s w o r d   2 ' ,   ' N G P   B e a r   S c h o o l   s i l v e r   s w o r d   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   S c h o o l   s i l v e r   s w o r d   3 ' ,   ' N G P   B e a r   S c h o o l   s i l v e r   s w o r d   3 ' ,   i n v ) ;  
 	 }  
 	 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s R e p l a c e E P 1 ( o u t   i n v   :   C I n v e n t o r y C o m p o n e n t )  
 	 { 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' O f i r   A r m o r ' ,   ' N G P   O f i r   A r m o r ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' O f i r   S a b r e   2 ' ,   ' N G P   O f i r   S a b r e   2 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' C r a f t e d   B u r n i n g   R o s e   A r m o r ' ,   ' N G P   C r a f t e d   B u r n i n g   R o s e   A r m o r ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' C r a f t e d   B u r n i n g   R o s e   G l o v e s ' ,   ' N G P   C r a f t e d   B u r n i n g   R o s e   G l o v e s ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' C r a f t e d   B u r n i n g   R o s e   S w o r d ' ,   ' N G P   C r a f t e d   B u r n i n g   R o s e   S w o r d ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' C r a f t e d   O f i r   A r m o r ' ,   ' N G P   C r a f t e d   O f i r   A r m o r ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' C r a f t e d   O f i r   B o o t s ' ,   ' N G P   C r a f t e d   O f i r   B o o t s ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' C r a f t e d   O f i r   G l o v e s ' ,   ' N G P   C r a f t e d   O f i r   G l o v e s ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' C r a f t e d   O f i r   P a n t s ' ,   ' N G P   C r a f t e d   O f i r   P a n t s ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' C r a f t e d   O f i r   S t e e l   S w o r d ' ,   ' N G P   C r a f t e d   O f i r   S t e e l   S w o r d ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' E P 1   C r a f t e d   W i t c h e r   S i l v e r   S w o r d ' ,   ' N G P   E P 1   C r a f t e d   W i t c h e r   S i l v e r   S w o r d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' O l g i e r d   S a b r e ' ,   ' N G P   O l g i e r d   S a b r e ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' E P 1   W i t c h e r   A r m o r ' ,   ' N G P   E P 1   W i t c h e r   A r m o r ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' E P 1   W i t c h e r   B o o t s ' ,   ' N G P   E P 1   W i t c h e r   B o o t s ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' E P 1   W i t c h e r   G l o v e s ' ,   ' N G P   E P 1   W i t c h e r   G l o v e s ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' E P 1   W i t c h e r   P a n t s ' ,   ' N G P   E P 1   W i t c h e r   P a n t s ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' E P 1   V i p e r   S c h o o l   s t e e l   s w o r d ' ,   ' N G P   E P 1   V i p e r   S c h o o l   s t e e l   s w o r d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' E P 1   V i p e r   S c h o o l   s i l v e r   s w o r d ' ,   ' N G P   E P 1   V i p e r   S c h o o l   s i l v e r   s w o r d ' ,   i n v ) ;  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s R e p l a c e E P 2 W i t c h e r S e t s ( o u t   i n v   :   C I n v e n t o r y C o m p o n e n t )  
 	 {  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   A r m o r   4 ' ,   ' N G P   L y n x   A r m o r   4 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   A r m o r   4 ' ,   ' N G P   G r y p h o n   A r m o r   4 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   A r m o r   4 ' ,   ' N G P   B e a r   A r m o r   4 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' W o l f   A r m o r   4 ' ,   ' N G P   W o l f   A r m o r   4 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' R e d   W o l f   A r m o r   1 ' ,   ' N G P   R e d   W o l f   A r m o r   1 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   G l o v e s   5 ' ,   ' N G P   L y n x   G l o v e s   5 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   G l o v e s   5 ' ,   ' N G P   G r y p h o n   G l o v e s   5 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   G l o v e s   5 ' ,   ' N G P   B e a r   G l o v e s   5 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' W o l f   G l o v e s   5 ' ,   ' N G P   W o l f   G l o v e s   5 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' R e d   W o l f   G l o v e s   1 ' ,   ' N G P   R e d   W o l f   G l o v e s   1 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   P a n t s   5 ' ,   ' N G P   L y n x   P a n t s   5 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   P a n t s   5 ' ,   ' N G P   G r y p h o n   P a n t s   5 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   P a n t s   5 ' ,   ' N G P   B e a r   P a n t s   5 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' W o l f   P a n t s   5 ' ,   ' N G P   W o l f   P a n t s   5 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' R e d   W o l f   P a n t s   1 ' ,   ' N G P   R e d   W o l f   P a n t s   1 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   B o o t s   5 ' ,   ' N G P   L y n x   B o o t s   5 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   B o o t s   5 ' ,   ' N G P   G r y p h o n   B o o t s   5 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   B o o t s   5 ' ,   ' N G P   B e a r   B o o t s   5 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' W o l f   B o o t s   5 ' ,   ' N G P   W o l f   B o o t s   5 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' R e d   W o l f   B o o t s   1 ' ,   ' N G P   R e d   W o l f   B o o t s   1 ' ,   i n v ) ;  
 	 	  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   S c h o o l   s t e e l   s w o r d   4 ' ,   ' N G P   L y n x   S c h o o l   s t e e l   s w o r d   4 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   S c h o o l   s t e e l   s w o r d   4 ' ,   ' N G P   G r y p h o n   S c h o o l   s t e e l   s w o r d   4 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   S c h o o l   s t e e l   s w o r d   4 ' ,   ' N G P   B e a r   S c h o o l   s t e e l   s w o r d   4 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' W o l f   S c h o o l   s t e e l   s w o r d   4 ' ,   ' N G P   W o l f   S c h o o l   s t e e l   s w o r d   4 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' R e d   W o l f   S c h o o l   s t e e l   s w o r d   1 ' ,   ' N G P   R e d   W o l f   S c h o o l   s t e e l   s w o r d   1 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' L y n x   S c h o o l   s i l v e r   s w o r d   4 ' ,   ' N G P   L y n x   S c h o o l   s i l v e r   s w o r d   4 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G r y p h o n   S c h o o l   s i l v e r   s w o r d   4 ' ,   ' N G P   G r y p h o n   S c h o o l   s i l v e r   s w o r d   4 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' B e a r   S c h o o l   s i l v e r   s w o r d   4 ' ,   ' N G P   B e a r   S c h o o l   s i l v e r   s w o r d   4 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' W o l f   S c h o o l   s i l v e r   s w o r d   4 ' ,   ' N G P   W o l f   S c h o o l   s i l v e r   s w o r d   4 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' R e d   W o l f   S c h o o l   s i l v e r   s w o r d   1 ' ,   ' N G P   R e d   W o l f   S c h o o l   s i l v e r   s w o r d   1 ' ,   i n v ) ;  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s R e p l a c e E P 2 I t e m s ( o u t   i n v   :   C I n v e n t o r y C o m p o n e n t )  
 	 {  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G u a r d   L v l 1   A r m o r   3 ' ,   ' N G P   G u a r d   L v l 1   A r m o r   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G u a r d   L v l 1   A   A r m o r   3 ' ,   ' N G P   G u a r d   L v l 1   A   A r m o r   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G u a r d   L v l 2   A r m o r   3 ' ,   ' N G P   G u a r d   L v l 2   A r m o r   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G u a r d   L v l 2   A   A r m o r   3 ' ,   ' N G P   G u a r d   L v l 2   A   A r m o r   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' K n i g h t   G e r a l t   A r m o r   3 ' ,   ' N G P   K n i g h t   G e r a l t   A r m o r   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' K n i g h t   G e r a l t   A   A r m o r   3 ' ,   ' N G P   K n i g h t   G e r a l t   A   A r m o r   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' q 7 0 2 _ v a m p i r e _ a r m o r ' ,   ' N G P   q 7 0 2 _ v a m p i r e _ a r m o r ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G u a r d   L v l 1   G l o v e s   3 ' ,   ' N G P   G u a r d   L v l 1   G l o v e s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G u a r d   L v l 1   A   G l o v e s   3 ' ,   ' N G P   G u a r d   L v l 1   A   G l o v e s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G u a r d   L v l 2   G l o v e s   3 ' ,   ' N G P   G u a r d   L v l 2   G l o v e s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G u a r d   L v l 2   A   G l o v e s   3 ' ,   ' N G P   G u a r d   L v l 2   A   G l o v e s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' K n i g h t   G e r a l t   G l o v e s   3 ' ,   ' N G P   K n i g h t   G e r a l t   G l o v e s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' K n i g h t   G e r a l t   A   G l o v e s   3 ' ,   ' N G P   K n i g h t   G e r a l t   A   G l o v e s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' q 7 0 2 _ v a m p i r e _ g l o v e s ' ,   ' N G P   q 7 0 2 _ v a m p i r e _ g l o v e s ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G u a r d   L v l 1   P a n t s   3 ' ,   ' N G P   G u a r d   L v l 1   P a n t s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G u a r d   L v l 1   A   P a n t s   3 ' ,   ' N G P   G u a r d   L v l 1   A   P a n t s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G u a r d   L v l 2   P a n t s   3 ' ,   ' N G P   G u a r d   L v l 2   P a n t s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G u a r d   L v l 2   A   P a n t s   3 ' ,   ' N G P   G u a r d   L v l 2   A   P a n t s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' K n i g h t   G e r a l t   P a n t s   3 ' ,   ' N G P   K n i g h t   G e r a l t   P a n t s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' K n i g h t   G e r a l t   A   P a n t s   3 ' ,   ' N G P   K n i g h t   G e r a l t   A   P a n t s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' q 7 0 2 _ v a m p i r e _ p a n t s ' ,   ' N G P   q 7 0 2 _ v a m p i r e _ p a n t s ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G u a r d   L v l 1   B o o t s   3 ' ,   ' N G P   G u a r d   L v l 1   B o o t s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G u a r d   L v l 1   A   B o o t s   3 ' ,   ' N G P   G u a r d   L v l 1   A   B o o t s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G u a r d   L v l 2   B o o t s   3 ' ,   ' N G P   G u a r d   L v l 2   B o o t s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G u a r d   L v l 2   A   B o o t s   3 ' ,   ' N G P   G u a r d   L v l 2   A   B o o t s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' K n i g h t   G e r a l t   B o o t s   3 ' ,   ' N G P   K n i g h t   G e r a l t   B o o t s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' K n i g h t   G e r a l t   A   B o o t s   3 ' ,   ' N G P   K n i g h t   G e r a l t   A   B o o t s   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' q 7 0 2 _ v a m p i r e _ b o o t s ' ,   ' N G P   q 7 0 2 _ v a m p i r e _ b o o t s ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' S e r p e n t   S t e e l   S w o r d   1 ' ,   ' N G P   S e r p e n t   S t e e l   S w o r d   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' S e r p e n t   S t e e l   S w o r d   2 ' ,   ' N G P   S e r p e n t   S t e e l   S w o r d   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' S e r p e n t   S t e e l   S w o r d   3 ' ,   ' N G P   S e r p e n t   S t e e l   S w o r d   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G u a r d   l v l 1   s t e e l   s w o r d   3 ' ,   ' N G P   G u a r d   l v l 1   s t e e l   s w o r d   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' G u a r d   l v l 2   s t e e l   s w o r d   3 ' ,   ' N G P   G u a r d   l v l 2   s t e e l   s w o r d   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' K n i g h t s   s t e e l   s w o r d   3 ' ,   ' N G P   K n i g h t s   s t e e l   s w o r d   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' H a n z a   s t e e l   s w o r d   3 ' ,   ' N G P   H a n z a   s t e e l   s w o r d   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' T o u s s a i n t   s t e e l   s w o r d   3 ' ,   ' N G P   T o u s s a i n t   s t e e l   s w o r d   3 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' q 7 0 2   v a m p i r e   s t e e l   s w o r d ' ,   ' N G P   q 7 0 2   v a m p i r e   s t e e l   s w o r d ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' S e r p e n t   S i l v e r   S w o r d   1 ' ,   ' N G P   S e r p e n t   S i l v e r   S w o r d   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' S e r p e n t   S i l v e r   S w o r d   2 ' ,   ' N G P   S e r p e n t   S i l v e r   S w o r d   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' S e r p e n t   S i l v e r   S w o r d   3 ' ,   ' N G P   S e r p e n t   S i l v e r   S w o r d   3 ' ,   i n v ) ;  
 	 }  
 	  
 	  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s R e p l a c e N e t f l i x S e t ( o u t   i n v   :   C I n v e n t o r y C o m p o n e n t )  
 	 {  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' N e t f l i x   A r m o r ' ,   ' N G P   N e t f l i x   A r m o r ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' N e t f l i x   A r m o r   1 ' ,   ' N G P   N e t f l i x   A r m o r   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' N e t f l i x   A r m o r   2 ' ,   ' N G P   N e t f l i x   A r m o r   2 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' N e t f l i x   G l o v e s   1 ' ,   ' N G P   N e t f l i x   G l o v e s   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' N e t f l i x   G l o v e s   2 ' ,   ' N G P   N e t f l i x   G l o v e s   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' N e t f l i x   G l o v e s ' ,   ' N G P   N e t f l i x   G l o v e s ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' N e t f l i x   P a n t s   1 ' ,   ' N G P   N e t f l i x   P a n t s   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' N e t f l i x   P a n t s   2 ' ,   ' N G P   N e t f l i x   P a n t s   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' N e t f l i x   P a n t s ' ,   ' N G P   N e t f l i x   P a n t s ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' N e t f l i x   B o o t s   1 ' ,   ' N G P   N e t f l i x   B o o t s   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' N e t f l i x   B o o t s   2 ' ,   ' N G P   N e t f l i x   B o o t s   2 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' N e t f l i x   B o o t s ' ,   ' N G P   N e t f l i x   B o o t s ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' N e t f l i x   s t e e l   s w o r d ' ,   ' N G P   N e t f l i x   s t e e l   s w o r d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' N e t f l i x   s t e e l   s w o r d   1 ' ,   ' N G P   N e t f l i x   s t e e l   s w o r d   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' N e t f l i x   s t e e l   s w o r d   2 ' ,   ' N G P   N e t f l i x   s t e e l   s w o r d   2 ' ,   i n v ) ;  
 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' N e t f l i x   s i l v e r   s w o r d ' ,   ' N G P   N e t f l i x   s i l v e r   s w o r d ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' N e t f l i x   s i l v e r   s w o r d   1 ' ,   ' N G P   N e t f l i x   s i l v e r   s w o r d   1 ' ,   i n v ) ;  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' N e t f l i x   s i l v e r   s w o r d   2 ' ,   ' N G P   N e t f l i x   s i l v e r   s w o r d   2 ' ,   i n v ) ;  
 	 }  
 	  
 	  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s R e p l a c e D o l B l a t h a n n a S e t ( o u t   i n v   :   C I n v e n t o r y C o m p o n e n t )  
 	 {  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' D o l   B l a t h a n n a   A r m o r ' ,   ' N G P   D o l   B l a t h a n n a   A r m o r ' ,   i n v ) ; 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' D o l   B l a t h a n n a   G l o v e s ' ,   ' N G P   D o l   B l a t h a n n a   G l o v e s ' ,   i n v ) ; 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' D o l   B l a t h a n n a   P a n t s ' ,   ' N G P   D o l   B l a t h a n n a   P a n t s ' ,   i n v ) ; 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' D o l   B l a t h a n n a   B o o t s ' ,   ' N G P   D o l   B l a t h a n n a   B o o t s ' ,   i n v ) ; 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' D o l   B l a t h a n n a   l o n g s w o r d ' ,   ' N G P   D o l   B l a t h a n n a   l o n g s w o r d ' ,   i n v ) ; 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' W h i t e   W i d o w   o f   D o l   B l a t h a n n a ' ,   ' N G P   W h i t e   W i d o w   o f   D o l   B l a t h a n n a ' ,   i n v ) ;  
 	 }  
 	  
 	  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   N e w G a m e P l u s R e p l a c e W h i t e T i g e r S e t ( o u t   i n v   :   C I n v e n t o r y C o m p o n e n t )  
 	 {  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' W h i t e   T i g e r   A r m o r ' ,   ' N G P   W h i t e   T i g e r   A r m o r ' ,   i n v ) ; 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' W h i t e   T i g e r   G l o v e s ' ,   ' N G P   W h i t e   T i g e r   G l o v e s ' ,   i n v ) ; 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' W h i t e   T i g e r   P a n t s ' ,   ' N G P   W h i t e   T i g e r   P a n t s ' ,   i n v ) ; 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' W h i t e   T i g e r   B o o t s ' ,   ' N G P   W h i t e   T i g e r   B o o t s ' ,   i n v ) ; 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' S t e e l   V i x e n ' ,   ' N G P   S t e e l   V i x e n ' ,   i n v ) ; 	 	  
 	 	 N e w G a m e P l u s R e p l a c e I t e m ( ' S i l v e r   V i x e n ' ,   ' N G P   S i l v e r   V i x e n ' ,   i n v ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t E q u i p p e d S w o r d ( s t e e l   :   b o o l )   :   S I t e m U n i q u e I d  
 	 {  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 i f ( s t e e l )  
 	 	 	 G e t I t e m E q u i p p e d O n S l o t ( E E S _ S t e e l S w o r d ,   i t e m ) ;  
 	 	 e l s e  
 	 	 	 G e t I t e m E q u i p p e d O n S l o t ( E E S _ S i l v e r S w o r d ,   i t e m ) ;  
 	 	 	  
 	 	 r e t u r n   i t e m ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   B r o a d c a s t R a i n (   d e l t a T i m e   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 v a r   r a i n S t r e n g t h   :   f l o a t   =   0 ;  
 	 	 r a i n S t r e n g t h   =   G e t R a i n S t r e n g t h ( ) ;  
 	 	 i f (   r a i n S t r e n g t h   >   0 . 5   )  
 	 	 {  
 	 	 	 t h e G a m e . G e t B e h T r e e R e a c t i o n M a n a g e r ( ) . C r e a t e R e a c t i o n E v e n t I f P o s s i b l e (   t h e P l a y e r ,   ' R a i n A c t i o n ' ,   2 . 0 f   ,   5 0 . 0 f ,   - 1 . f ,   - 1 ,   t r u e ) ;    
 	 	 	 L o g R e a c t i o n S y s t e m (   " ' R a i n A c t i o n '   w a s   s e n t   b y   P l a y e r   -   s i n g l e   b r o a d c a s t   -   d i s t a n c e :   5 0 . 0 "   ) ;    
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   I n i t i a l i z e P a r r y T y p e ( )  
 	 {  
 	 	 v a r   i ,   j   :   i n t ;  
 	 	  
 	 	 p a r r y T y p e T a b l e . R e s i z e (   E n u m G e t M a x ( ' E A t t a c k S w i n g T y p e ' ) + 1   ) ;  
 	 	 f o r (   i   =   0 ;   i   <   E n u m G e t M a x ( ' E A t t a c k S w i n g T y p e ' ) + 1 ;   i   + =   1   )  
 	 	 {  
 	 	 	 p a r r y T y p e T a b l e [ i ] . R e s i z e (   E n u m G e t M a x ( ' E A t t a c k S w i n g D i r e c t i o n ' ) + 1   ) ;  
 	 	 }  
 	 	 p a r r y T y p e T a b l e [ A S T _ H o r i z o n t a l ] [ A S D _ U p D o w n ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ H o r i z o n t a l ] [ A S D _ D o w n U p ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ H o r i z o n t a l ] [ A S D _ L e f t R i g h t ]   =   P T _ L e f t ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ H o r i z o n t a l ] [ A S D _ R i g h t L e f t ]   =   P T _ R i g h t ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ V e r t i c a l ] [ A S D _ U p D o w n ]   =   P T _ U p ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ V e r t i c a l ] [ A S D _ D o w n U p ]   =   P T _ D o w n ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ V e r t i c a l ] [ A S D _ L e f t R i g h t ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ V e r t i c a l ] [ A S D _ R i g h t L e f t ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ D i a g o n a l U p ] [ A S D _ U p D o w n ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ D i a g o n a l U p ] [ A S D _ D o w n U p ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ D i a g o n a l U p ] [ A S D _ L e f t R i g h t ]   =   P T _ U p L e f t ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ D i a g o n a l U p ] [ A S D _ R i g h t L e f t ]   =   P T _ R i g h t U p ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ D i a g o n a l D o w n ] [ A S D _ U p D o w n ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ D i a g o n a l D o w n ] [ A S D _ D o w n U p ]   =   P T _ N o n e ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ D i a g o n a l D o w n ] [ A S D _ L e f t R i g h t ]   =   P T _ L e f t D o w n ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ D i a g o n a l D o w n ] [ A S D _ R i g h t L e f t ]   =   P T _ D o w n R i g h t ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ J a b ] [ A S D _ U p D o w n ]   =   P T _ J a b ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ J a b ] [ A S D _ D o w n U p ]   =   P T _ J a b ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ J a b ] [ A S D _ L e f t R i g h t ]   =   P T _ J a b ;  
 	 	 p a r r y T y p e T a b l e [ A S T _ J a b ] [ A S D _ R i g h t L e f t ]   =   P T _ J a b ; 	  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	 e v e n t   O n D e a t h (   d a m a g e A c t i o n   :   W 3 D a m a g e A c t i o n   )  
 	 {  
 	 	 v a r   i t e m s   	 	 :   a r r a y <   S I t e m U n i q u e I d   > ;  
 	 	 v a r   i ,   s i z e   	 :   i n t ; 	  
 	 	 v a r   s l o t 	 	 :   E E q u i p m e n t S l o t s ;  
 	 	 v a r   h o l d S l o t 	 :   n a m e ;  
 	  
 	 	 s u p e r . O n D e a t h (   d a m a g e A c t i o n   ) ;  
 	  
 	 	 i t e m s   =   G e t H e l d I t e m s ( ) ;  
 	 	 	 	  
 	 	 i f (   r a n g e d W e a p o n   & &   r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t ' )  
 	 	 {  
 	 	 	 O n R a n g e d F o r c e H o l s t e r (   t r u e ,   t r u e ,   t r u e   ) ; 	 	  
 	 	 	 r a n g e d W e a p o n . C l e a r D e p l o y e d E n t i t y ( t r u e ) ;  
 	 	 }  
 	 	  
 	 	 s i z e   =   i t e m s . S i z e ( ) ;  
 	 	  
 	 	 i f   (   s i z e   >   0   )  
 	 	 {  
 	 	 	 f o r   (   i   =   0 ;   i   <   s i z e ;   i   + =   1   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h i s . i n v . I s I d V a l i d (   i t e m s [ i ]   )   & &   ! (   t h i s . i n v . I s I t e m C r o s s b o w (   i t e m s [ i ]   )   )   )  
 	 	 	 	 {  
 	 	 	 	 	 h o l d S l o t   =   t h i s . i n v . G e t I t e m H o l d S l o t (   i t e m s [ i ]   ) ; 	 	 	 	  
 	 	 	 	  
 	 	 	 	 	 i f   (     h o l d S l o t   = =   ' l _ w e a p o n '   & &   t h i s . I s H o l d i n g I t e m I n L H a n d ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h i s . O n U s e S e l e c t e d I t e m (   t r u e   ) ;  
 	 	 	 	 	 } 	 	 	  
 	 	 	  
 	 	 	 	 	 D r o p I t e m F r o m S l o t (   h o l d S l o t ,   f a l s e   ) ;  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   h o l d S l o t   = =   ' r _ w e a p o n '   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 s l o t   =   t h i s . G e t I t e m S l o t (   i t e m s [ i ]   ) ;  
 	 	 	 	 	 	 i f   (   U n e q u i p I t e m F r o m S l o t (   s l o t   )   )  
 	 	 	 	 	 	 	 L o g (   " U n e q u i p "   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
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
 	 f u n c t i o n   H a n d l e M o v e m e n t (   d e l t a T i m e   :   f l o a t   )  
 	 {  
 	 	 s u p e r . H a n d l e M o v e m e n t (   d e l t a T i m e   ) ;  
 	 	  
 	 	 r a w C a m e r a H e a d i n g   =   t h e C a m e r a . G e t C a m e r a H e a d i n g ( ) ;  
 	 }  
 	 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	 f u n c t i o n   T o g g l e S p e c i a l A t t a c k H e a v y A l l o w e d (   t o g g l e   :   b o o l )  
 	 {  
 	 	 s p e c i a l A t t a c k H e a v y A l l o w e d   =   t o g g l e ;  
 	 }  
 	  
 	 f u n c t i o n   G e t R e p u t a t i o n M a n a g e r ( )   :   W 3 R e p u t a t i o n  
 	 {  
 	 	 r e t u r n   r e p u t a t i o n M a n a g e r ;  
 	 }  
 	 	 	  
 	 f u n c t i o n   O n R a d i a l M e n u I t e m C h o o s e (   s e l e c t e d I t e m   :   s t r i n g   )    
 	 {  
 	 	 v a r   i S l o t I d   :   i n t ;  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 i f   (   s e l e c t e d I t e m   ! =   " C r o s s b o w "   )  
 	 	 {  
 	 	 	 i f   (   r a n g e d W e a p o n   & &   r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '   )  
 	 	 	 	 O n R a n g e d F o r c e H o l s t e r (   t r u e ,   f a l s e   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 s w i t c h ( s e l e c t e d I t e m )  
 	 	 {  
 	 	 	  
 	 	 	 c a s e   " M e d i t a t i o n " :  
 	 	 	 	 t h e G a m e . R e q u e s t M e n u W i t h B a c k g r o u n d (   ' M e d i t a t i o n C l o c k M e n u ' ,   ' C o m m o n M e n u '   ) ;  
 	 	 	 	 b r e a k ; 	 	 	  
 	 	 	 c a s e   " S l o t 1 " :  
 	 	 	 	 G e t I t e m E q u i p p e d O n S l o t (   E E S _ P e t a r d 1 ,   i t e m   ) ;  
 	 	 	 	 i f (   t h e P l a y e r . i n v . I s I d V a l i d (   i t e m   )   )  
 	 	 	 	 {  
 	 	 	 	 	 S e l e c t Q u i c k s l o t I t e m (   E E S _ P e t a r d 1   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 S e l e c t Q u i c k s l o t I t e m (   E E S _ P e t a r d 2   ) ;  
 	 	 	 	 }  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   " S l o t 2 " :  
 	 	 	 	 G e t I t e m E q u i p p e d O n S l o t (   E E S _ P e t a r d 2 ,   i t e m   ) ;  
 	 	 	 	 i f (   t h e P l a y e r . i n v . I s I d V a l i d (   i t e m   )   )  
 	 	 	 	 {  
 	 	 	 	 	 S e l e c t Q u i c k s l o t I t e m (   E E S _ P e t a r d 2   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 S e l e c t Q u i c k s l o t I t e m (   E E S _ P e t a r d 1   ) ;  
 	 	 	 	 }  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   " C r o s s b o w " :  
 	 	 	 	 S e l e c t Q u i c k s l o t I t e m ( E E S _ R a n g e d W e a p o n ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   " S l o t 3 " :  
 	 	 	 	 G e t I t e m E q u i p p e d O n S l o t (   E E S _ Q u i c k s l o t 1 ,   i t e m   ) ;  
 	 	 	 	 i f (   t h e P l a y e r . i n v . I s I d V a l i d (   i t e m   )   )  
 	 	 	 	 {  
 	 	 	 	 	 S e l e c t Q u i c k s l o t I t e m (   E E S _ Q u i c k s l o t 1   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 S e l e c t Q u i c k s l o t I t e m (   E E S _ Q u i c k s l o t 2   ) ;  
 	 	 	 	 }  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   " S l o t 4 " :    
 	 	 	 	 G e t I t e m E q u i p p e d O n S l o t (   E E S _ Q u i c k s l o t 2 ,   i t e m   ) ;  
 	 	 	 	 i f (   t h e P l a y e r . i n v . I s I d V a l i d (   i t e m   )   )  
 	 	 	 	 {  
 	 	 	 	 	 S e l e c t Q u i c k s l o t I t e m (   E E S _ Q u i c k s l o t 2   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 S e l e c t Q u i c k s l o t I t e m (   E E S _ Q u i c k s l o t 1   ) ;  
 	 	 	 	 }  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 d e f a u l t :  
 	 	 	 	 S e t E q u i p p e d S i g n ( S i g n S t r i n g T o E n u m (   s e l e c t e d I t e m   ) ) ;  
 	 	 	 	 F a c t s R e m o v e ( " S i g n T o g g l e d " ) ;  
 	 	 	 	 b r e a k ;  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   T o g g l e N e x t I t e m ( )  
 	 {  
 	 	 v a r   q u i c k S l o t I t e m s   :   a r r a y <   E E q u i p m e n t S l o t s   > ;  
 	 	 v a r   c u r r e n t S e l e c t e d I t e m   :   S I t e m U n i q u e I d ;  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ;  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 f o r (   i   =   E E S _ Q u i c k s l o t 2 ;   i   >   E E S _ P e t a r d 1   -   1 ;   i   - =   1   )  
 	 	 {  
 	 	 	 G e t I t e m E q u i p p e d O n S l o t (   i ,   i t e m   ) ;  
 	 	 	 i f (   i n v . I s I d V a l i d (   i t e m   )   )  
 	 	 	 {  
 	 	 	 	 q u i c k S l o t I t e m s . P u s h B a c k (   i   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 i f (   ! q u i c k S l o t I t e m s . S i z e ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 c u r r e n t S e l e c t e d I t e m   =   G e t S e l e c t e d I t e m I d ( ) ;  
 	 	  
 	 	 i f (   i n v . I s I d V a l i d (   c u r r e n t S e l e c t e d I t e m   )   )  
 	 	 {  
 	 	 	 f o r (   i   =   0 ;   i   <   q u i c k S l o t I t e m s . S i z e ( ) ;   i   + =   1   )  
 	 	 	 {  
 	 	 	 	 G e t I t e m E q u i p p e d O n S l o t (   q u i c k S l o t I t e m s [ i ] ,   i t e m   ) ;  
 	 	 	 	 i f (   c u r r e n t S e l e c t e d I t e m   = =   i t e m   )  
 	 	 	 	 {  
 	 	 	 	 	 i f (   i   = =   q u i c k S l o t I t e m s . S i z e ( )   -   1   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 S e l e c t Q u i c k s l o t I t e m (   q u i c k S l o t I t e m s [   0   ]   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 S e l e c t Q u i c k s l o t I t e m (   q u i c k S l o t I t e m s [   i   +   1   ]   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 r e t u r n ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 e l s e    
 	 	 {  
 	 	 	 S e l e c t Q u i c k s l o t I t e m (   q u i c k S l o t I t e m s [   0   ]   ) ;  
 	 	 }  
 	 }  
  
 	 p u b l i c   f u n c t i o n   O n S h i e l d H i t ( )  
 	 {  
 	 	 m _ q u e n H i t F x T T L   =   0 . 2 ;  
 	 	 A p p l y G a m e p a d T r i g g e r E f f e c t (   e q u i p p e d S i g n   ) ;  
 	 }  
  
 	 t i m e r   f u n c t i o n   U p d a t e G a m e p a d T r i g g e r E f f e c t (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 i f (   m _ T r i g g e r E f f e c t D i s a b l e P e n d i n g   )  
 	 	 {  
 	 	 	 m _ T r i g g e r E f f e c t D i s a b l e T T W   - =   d t ;  
  
 	 	 	 i f (   m _ T r i g g e r E f f e c t D i s a b l e T T W   <   0   )  
 	 	 	 {  
 	 	 	 	 m _ T r i g g e r E f f e c t D i s a b l e d   =   t r u e ;  
 	 	 	 	 m _ T r i g g e r E f f e c t D i s a b l e P e n d i n g   =   f a l s e ;  
 	 	 	 }  
 	 	 }  
  
 	 	 i f (   m _ T r i g g e r E f f e c t D i s a b l e d     & &     ! t h e I n p u t . I s A c t i o n P r e s s e d ( ' C a s t S i g n ' )   )  
 	 	 	 m _ T r i g g e r E f f e c t D i s a b l e d   =   f a l s e ;  
  
 	 	 m _ q u e n H i t F x T T L   - =   d t ;  
 	 	 A p p l y G a m e p a d T r i g g e r E f f e c t (   e q u i p p e d S i g n   ) ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   A p p l y C a s t S e t t i n g s ( )  
 	 {  
 	 	 A p p l y G a m e p a d T r i g g e r E f f e c t (   e q u i p p e d S i g n   ) ;  
 	 }  
  
 	 p r i v a t e   f u n c t i o n   A p p l y G a m e p a d T r i g g e r E f f e c t (   t y p e   :   E S i g n T y p e   )  
 	 {  
 	 	 v a r   m o d e   :   i n t ;  
 	 	 v a r   p a r a m   :   a r r a y < V e c t o r > ;  
 	 	 v a r   c u r _ s i g n   :   W 3 S i g n E n t i t y ;  
 	 	 v a r   s i g n _ s k i l l   :   E S k i l l ;  
  
 	 	 s i g n _ s k i l l   =   S i g n E n u m T o S k i l l E n u m (   t y p e   ) ;  
  
 	 	 i f (   ! t h e P l a y e r . C a n U s e S k i l l ( s i g n _ s k i l l )     | |     ! H a s S t a m i n a T o U s e S k i l l ( s i g n _ s k i l l , f a l s e )   )  
 	 	 {  
 	 	 	 t h e G a m e . S e t T r i g g e r E f f e c t (   1 ,   G T F X _ O f f ,   p a r a m   ) ;  
 	 	 	 t h e G a m e . S e t T r i g g e r E f f e c t (   0 ,   G T F X _ O f f ,   p a r a m   ) ;  
 	 	 	 i f ( t h e I n p u t . I s A c t i o n P r e s s e d ( ' C a s t S i g n ' ) )  
 	 	 	 {  
 	 	 	 	 l a s t P r e s s e d W i t h N o s t a m i n a   =   t r u e ;  
 	 	 	 }  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	 i f ( l a s t P r e s s e d W i t h N o s t a m i n a   & &   ! t h e I n p u t . I s A c t i o n P r e s s e d ( ' C a s t S i g n ' ) )  
 	 	 {  
 	 	 	 l a s t P r e s s e d W i t h N o s t a m i n a   =   f a l s e ;  
 	 	 }  
  
 	 	 i f ( l a s t P r e s s e d W i t h N o s t a m i n a )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
  
 	 	 i f (   t y p e   = =   S T _ I g n i     & &     I s C u r r e n t S i g n C h a n n e l e d ( )   )  
 	 	 {  
 	 	 	 m o d e   =   G T F X _ M u l t i V i b r a t i o n ;  
 	 	 	  
 	 	 	 p a r a m . R e s i z e (   1 0   ) ;  
 	 	 	 p a r a m [ 0 ] . Y   =   0 . 3 ;    
 	 	 	 p a r a m [ 0 ] . X   =   0 . 0 ;  
 	 	 	 p a r a m [ 1 ] . X   =   0 . 0 ;  
 	 	 	 p a r a m [ 2 ] . X   =   0 . 0 ;  
 	 	 	 p a r a m [ 3 ] . X   =   0 . 0 ;  
 	 	 	 p a r a m [ 4 ] . X   =   0 . 0 ;  
 	 	 	 p a r a m [ 5 ] . X   =   0 . 0 ;  
 	 	 	 p a r a m [ 6 ] . X   =   0 . 8 ;  
 	 	 	 p a r a m [ 7 ] . X   =   0 . 8 ;  
 	 	 	 p a r a m [ 8 ] . X   =   0 . 8 ;  
 	 	 	 p a r a m [ 9 ] . X   =   0 . 9 ;  
  
 	 	 	 t h e G a m e . S e t T r i g g e r E f f e c t (   1 ,   m o d e ,   p a r a m   ) ;  
 	 	 	 r e t u r n ;  
 	 	 }  
  
 	 	 i f (   t y p e   = =   S T _ Q u e n     & &     m _ q u e n H i t F x T T L   >   0     & &     H a s B u f f (   E E T _ B a s i c Q u e n   )   )  
 	 	 {  
 	 	 	 m o d e   =   G T F X _ M u l t i V i b r a t i o n ;  
 	 	 	  
 	 	 	 p a r a m . R e s i z e (   1 0   ) ;  
 	 	 	 p a r a m [ 0 ] . Y   =   0 . 5 ;    
 	 	 	 p a r a m [ 0 ] . X   =   0 . 0 ;  
 	 	 	 p a r a m [ 1 ] . X   =   0 . 0 ;  
 	 	 	 p a r a m [ 2 ] . X   =   0 . 0 ;  
 	 	 	 p a r a m [ 3 ] . X   =   0 . 0 ;  
 	 	 	 p a r a m [ 4 ] . X   =   0 . 0 ;  
 	 	 	 p a r a m [ 5 ] . X   =   0 . 0 ;  
 	 	 	 p a r a m [ 6 ] . X   =   0 . 8 ;  
 	 	 	 p a r a m [ 7 ] . X   =   0 . 8 ;  
 	 	 	 p a r a m [ 8 ] . X   =   0 . 9 9 ;  
 	 	 	 p a r a m [ 9 ] . X   =   0 . 9 9 ;  
  
 	 	 	 t h e G a m e . S e t T r i g g e r E f f e c t (   1 ,   m o d e ,   p a r a m   ) ;  
 	 	 	 r e t u r n ;  
 	 	 }  
  
 	 	  
 	 	 i f (   m _ T r i g g e r E f f e c t D i s a b l e d   )  
 	 	 {  
 	 	 	 t h e G a m e . S e t T r i g g e r E f f e c t (   1 ,   G T F X _ O f f ,   p a r a m   ) ;  
 	 	 	 t h e G a m e . S e t T r i g g e r E f f e c t (   0 ,   G T F X _ O f f ,   p a r a m   ) ;  
 	 	 	 r e t u r n ;  
 	 	 }  
  
 	 	 i f (   	  
 	 	 	 t h e G a m e . I s P a u s e d ( )    
 	 	 	 | |   t h e G a m e . G e t P h o t o m o d e E n a b l e d ( )    
 	 	 	 | |   t h e G a m e . I s D i a l o g O r C u t s c e n e P l a y i n g ( )    
 	 	 	 | |   t h e P l a y e r . I s I n C u t s c e n e I n t r o ( )    
 	 	 	 | |   t h e G a m e . I s C u r r e n t l y P l a y i n g N o n G a m e p l a y S c e n e ( )  
 	 	 	 )  
 	 	 {  
 	 	 	 t h e G a m e . S e t T r i g g e r E f f e c t (   1 ,   G T F X _ O f f ,   p a r a m   ) ;  
 	 	 	 t h e G a m e . S e t T r i g g e r E f f e c t (   0 ,   G T F X _ O f f ,   p a r a m   ) ;  
  
 	 	 	 r e t u r n ;  
 	 	 }  
  
 	 	 m o d e   =   G T F X _ O f f ;  
 	 	  
 	 	 i f (   G e t I n p u t H a n d l e r ( ) . G e t I s A l t S i g n C a s t i n g ( )   )  
 	 	 {  
 	 	 	 m o d e   =   G T F X _ V i b r a t i o n ;  
 	 	 	  
 	 	 	 p a r a m . R e s i z e (   1   ) ;  
 	 	 	 p a r a m [ 0 ] . X   =   0 . 9 ;    
 	 	 	 p a r a m [ 0 ] . Y   =   0 . 1 ;    
 	 	 	 p a r a m [ 0 ] . Z   =   0 . 1 5 ;    
  
 	 	 	 t h e G a m e . S e t T r i g g e r E f f e c t (   1 ,   m o d e ,   p a r a m   ) ;  
 	 	 	  
 	 	 	 i f (   G e t I n p u t H a n d l e r ( ) . G e t I s A l t S i g n C a s t i n g P r e s s e d ( )   )  
 	 	 	 {  
 	 	 	 	 m o d e   =   G T F X _ W e a p o n ;  
  
 	 	 	 	 p a r a m . R e s i z e (   1   ) ;  
 	 	 	 	 p a r a m [ 0 ] . X   =   0 . 1 ;    
 	 	 	 	 p a r a m [ 0 ] . Y   =   0 . 5 ;    
 	 	 	 	 p a r a m [ 0 ] . Z   =   1 . 0 ;    
 	 	 	 	  
 	 	 	 	 t h e G a m e . S e t T r i g g e r E f f e c t (   0 ,   m o d e ,   p a r a m   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t h e G a m e . S e t T r i g g e r E f f e c t (   0 ,   G T F X _ O f f ,   p a r a m   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f (   t y p e   = =   S T _ A a r d   )  
 	 	 	 {  
 	 	 	 	 m o d e   =   G T F X _ M u l t i F e e d b a c k ;  
 	 	 	 	  
 	 	 	 	 p a r a m . R e s i z e (   1 0   ) ;  
 	 	 	 	 p a r a m [ 0 ] . X   =   0 . 0 ;  
 	 	 	 	 p a r a m [ 1 ] . X   =   0 . 0 ;  
 	 	 	 	 p a r a m [ 2 ] . X   =   0 . 0 ;  
 	 	 	 	 p a r a m [ 3 ] . X   =   0 . 1 ;  
 	 	 	 	 p a r a m [ 4 ] . X   =   0 . 2 ;  
 	 	 	 	 p a r a m [ 5 ] . X   =   0 . 2 ;  
 	 	 	 	 p a r a m [ 6 ] . X   =   0 . 0 ;  
 	 	 	 	 p a r a m [ 7 ] . X   =   0 . 0 ;  
 	 	 	 	 p a r a m [ 8 ] . X   =   0 . 4 ;  
 	 	 	 	 p a r a m [ 9 ] . X   =   0 . 4 ;  
 	 	 	 }  
 	 	 	 e l s e   i f (   t y p e   = =   S T _ A x i i   )  
 	 	 	 {  
 	 	 	 	 m o d e   =   G T F X _ V i b r a t i o n ;  
 	 	 	 	  
 	 	 	 	 p a r a m . R e s i z e (   1   ) ;  
 	 	 	 	 p a r a m [ 0 ] . X   =   0 . 8 ;    
 	 	 	 	 p a r a m [ 0 ] . Y   =   0 . 1 5 ;    
 	 	 	 	 p a r a m [ 0 ] . Z   =   0 . 2 ;    
 	 	 	 }  
 	 	 	 e l s e   i f (   t y p e   = =   S T _ I g n i   )  
 	 	 	 {  
 	 	 	 	 m o d e   =   G T F X _ W e a p o n ;  
  
 	 	 	 	 p a r a m . R e s i z e (   1   ) ;  
 	 	 	 	 p a r a m [ 0 ] . X   =   0 . 5 ;    
 	 	 	 	 p a r a m [ 0 ] . Y   =   0 . 7 ;    
 	 	 	 	 p a r a m [ 0 ] . Z   =   1 . 0 ;    
 	 	 	 }  
 	 	 	 e l s e   i f (   t y p e   = =   S T _ Q u e n   )  
 	 	 	 {  
 	 	 	 	 m o d e   =   G T F X _ V i b r a t i o n ;  
 	 	 	 	  
 	 	 	 	 p a r a m . R e s i z e (   1   ) ;  
 	 	 	 	 p a r a m [ 0 ] . X   =   0 . 8 ;    
 	 	 	 	 p a r a m [ 0 ] . Y   =   0 . 2 5 ;    
 	 	 	 	 p a r a m [ 0 ] . Z   =   0 . 7 ;    
 	 	 	 }  
 	 	 	 e l s e   i f (   t y p e   = =   S T _ Y r d e n   )  
 	 	 	 {  
 	 	 	 	 m o d e   =   G T F X _ V i b r a t i o n ;  
 	 	 	 	  
 	 	 	 	 p a r a m . R e s i z e (   1   ) ;  
 	 	 	 	 p a r a m [ 0 ] . X   =   0 . 9 ;    
 	 	 	 	 p a r a m [ 0 ] . Y   =   0 . 5 ;    
 	 	 	 	 p a r a m [ 0 ] . Z   =   0 . 9 9 ;    
 	 	 	 }  
 	 	 	  
 	 	 	 t h e G a m e . S e t T r i g g e r E f f e c t (   1 ,   m o d e ,   p a r a m   ) ;  
 	 	 	 t h e G a m e . S e t T r i g g e r E f f e c t (   0 ,   G T F X _ O f f ,   p a r a m   ) ;  
 	 	 } 	 	  
  
 	 }  
 	 	  
 	  
 	 f u n c t i o n   S e t E q u i p p e d S i g n (   s i g n T y p e   :   E S i g n T y p e   )  
 	 {  
 	 	 i f ( ! I s S i g n B l o c k e d ( s i g n T y p e ) )  
 	 	 {  
 	 	 	 e q u i p p e d S i g n   =   s i g n T y p e ;  
 	 	 	 F a c t s S e t ( " C u r r e n t l y S e l e c t e d S i g n " ,   e q u i p p e d S i g n ) ;  
 	 	 	 A p p l y G a m e p a d T r i g g e r E f f e c t (   s i g n T y p e   ) ;  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   G e t E q u i p p e d S i g n ( )   :   E S i g n T y p e  
 	 {  
 	 	 r e t u r n   e q u i p p e d S i g n ;  
 	 }  
 	  
 	 f u n c t i o n   G e t C u r r e n t l y C a s t S i g n ( )   :   E S i g n T y p e  
 	 {  
 	 	 r e t u r n   c u r r e n t l y C a s t S i g n ;  
 	 }  
 	  
 	 f u n c t i o n   S e t C u r r e n t l y C a s t S i g n (   t y p e   :   E S i g n T y p e ,   e n t i t y   :   W 3 S i g n E n t i t y   )  
 	 {  
 	 	 c u r r e n t l y C a s t S i g n   =   t y p e ;  
 	 	  
 	 	 i f (   t y p e   ! =   S T _ N o n e   )  
 	 	 {  
 	 	 	 s i g n s [ c u r r e n t l y C a s t S i g n ] . e n t i t y   =   e n t i t y ;  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   G e t C u r r e n t S i g n E n t i t y ( )   :   W 3 S i g n E n t i t y  
 	 {  
 	 	 i f ( c u r r e n t l y C a s t S i g n   = =   S T _ N o n e )  
 	 	 	 r e t u r n   N U L L ;  
 	 	 	  
 	 	 r e t u r n   s i g n s [ c u r r e n t l y C a s t S i g n ] . e n t i t y ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S i g n E n t i t y ( t y p e   :   E S i g n T y p e )   :   W 3 S i g n E n t i t y  
 	 {  
 	 	 i f ( t y p e   = =   S T _ N o n e )  
 	 	 	 r e t u r n   N U L L ;  
 	 	 	  
 	 	 r e t u r n   s i g n s [ t y p e ] . e n t i t y ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S i g n T e m p l a t e ( t y p e   :   E S i g n T y p e )   :   C E n t i t y T e m p l a t e  
 	 {  
 	 	 i f ( t y p e   = =   S T _ N o n e )  
 	 	 	 r e t u r n   N U L L ;  
 	 	 	  
 	 	 r e t u r n   s i g n s [ t y p e ] . t e m p l a t e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s C u r r e n t S i g n C h a n n e l e d ( )   :   b o o l  
 	 {  
 	 	 i f (   c u r r e n t l y C a s t S i g n   ! =   S T _ N o n e   & &   s i g n s [ c u r r e n t l y C a s t S i g n ] . e n t i t y )  
 	 	 	 r e t u r n   s i g n s [ c u r r e n t l y C a s t S i g n ] . e n t i t y . O n C h e c k C h a n n e l i n g ( ) ;  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 f u n c t i o n   I s C a s t i n g S i g n ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   c u r r e n t l y C a s t S i g n   ! =   S T _ N o n e ;  
 	 }  
 	  
 	  
 	 p r o t e c t e d   f u n c t i o n   I s I n C o m b a t A c t i o n C a m e r a R o t a t i o n E n a b l e d ( )   :   b o o l  
 	 {  
 	 	 i f (   I s I n C o m b a t A c t i o n ( )   & &   (   G e t C o m b a t A c t i o n ( )   = =   E B A T _ E M P T Y   | |   G e t C o m b a t A c t i o n ( )   = =   E B A T _ P a r r y   )   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   ! b I s I n C o m b a t A c t i o n ;  
 	 }  
 	  
 	 f u n c t i o n   S e t H o l d B e f o r e O p e n R a d i a l M e n u T i m e   (   t i m e   :   f l o a t   )  
 	 {  
 	 	 _ H o l d B e f o r e O p e n R a d i a l M e n u T i m e   =   t i m e ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   R e p a i r I t e m   (     r a p a i r K i t I d   :   S I t e m U n i q u e I d ,   u s e d O n I t e m   :   S I t e m U n i q u e I d   )  
 	 {  
 	 	 v a r   i t e m M a x D u r a b l i t y   	 	 :   f l o a t ;  
 	 	 v a r   i t e m C u r r D u r a b l i t y   	 	 :   f l o a t ;  
 	 	 v a r   b a s e R e p a i r V a l u e 	 	     	 :   f l o a t ;  
 	 	 v a r   r e a p i r V a l u e 	 	 	 	 :   f l o a t ;  
 	 	 v a r   i t e m A t t r i b u t e 	 	 	 :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	  
 	 	 i t e m M a x D u r a b l i t y   =   i n v . G e t I t e m M a x D u r a b i l i t y ( u s e d O n I t e m ) ;  
 	 	 i t e m C u r r D u r a b l i t y   =   i n v . G e t I t e m D u r a b i l i t y ( u s e d O n I t e m ) ;  
 	 	 i t e m A t t r i b u t e   =   i n v . G e t I t e m A t t r i b u t e V a l u e   (   r a p a i r K i t I d ,   ' r e p a i r V a l u e '   ) ;  
 	 	  
 	 	 i f (   i t e m C u r r D u r a b l i t y   > =   i t e m M a x D u r a b l i t y   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 i f   (   i n v . I s I t e m A n y A r m o r   (   u s e d O n I t e m   ) | |   i n v . I s I t e m W e a p o n (   u s e d O n I t e m   )   )  
 	 	 { 	 	 	  
 	 	 	  
 	 	 	 b a s e R e p a i r V a l u e   =   i t e m M a x D u r a b l i t y   *   i t e m A t t r i b u t e . v a l u e M u l t i p l i c a t i v e ; 	 	 	 	 	  
 	 	 	 r e a p i r V a l u e   =   M i n F (   i t e m C u r r D u r a b l i t y   +   b a s e R e p a i r V a l u e ,   i t e m M a x D u r a b l i t y   ) ;  
 	 	 	  
 	 	 	 i n v . S e t I t e m D u r a b i l i t y S c r i p t   (   u s e d O n I t e m ,   M i n F   (   r e a p i r V a l u e ,   i t e m M a x D u r a b l i t y   ) ) ;  
 	 	 }  
 	 	  
 	 	 i n v . R e m o v e I t e m   (   r a p a i r K i t I d ,   1   ) ;  
 	 	  
 	 }  
 	 p u b l i c   f u n c t i o n   H a s R e p a i r A b l e G e a r E q u i p e d   (   )   :   b o o l  
 	 {  
 	 	 v a r   c u r E q u i p e d I t e m   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 r e t u r n   (   G e t I t e m E q u i p p e d O n S l o t ( E E S _ A r m o r ,   c u r E q u i p e d I t e m )   | |   G e t I t e m E q u i p p e d O n S l o t ( E E S _ B o o t s ,   c u r E q u i p e d I t e m )   | |   G e t I t e m E q u i p p e d O n S l o t ( E E S _ P a n t s ,   c u r E q u i p e d I t e m )   | |   G e t I t e m E q u i p p e d O n S l o t ( E E S _ G l o v e s ,   c u r E q u i p e d I t e m ) )   = =   t r u e ;  
 	 }  
 	 p u b l i c   f u n c t i o n   H a s R e p a i r A b l e W a p o n E q u i p e d   ( )   :   b o o l  
 	 {  
 	 	 v a r   c u r E q u i p e d I t e m   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 r e t u r n   (   G e t I t e m E q u i p p e d O n S l o t ( E E S _ S i l v e r S w o r d ,   c u r E q u i p e d I t e m )   | |   G e t I t e m E q u i p p e d O n S l o t ( E E S _ S t e e l S w o r d ,   c u r E q u i p e d I t e m )   )   = =   t r u e ;  
 	 }  
 	 p u b l i c   f u n c t i o n   I s I t e m R e p a i r A b l e   (   i t e m   :   S I t e m U n i q u e I d   )   :   b o o l  
 	 {  
 	 	 r e t u r n   i n v . G e t I t e m D u r a b i l i t y R a t i o ( i t e m )   < =   0 . 9 9 9 9 9 f ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	 	  
 	  
 	 p u b l i c   f u n c t i o n   A p p l y O i l (   o i l I d   :   S I t e m U n i q u e I d ,   u s e d O n I t e m   :   S I t e m U n i q u e I d   )   :   b o o l  
 	 {  
 	 	 v a r   t u t S t a t e O i l   :   W 3 T u t o r i a l M a n a g e r U I H a n d l e r S t a t e O i l s ; 	 	  
 	 	  
 	 	 i f (   ! s u p e r . A p p l y O i l (   o i l I d ,   u s e d O n I t e m   ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	  
 	 	  
 	 	 i f ( S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l O i l C a n E q u i p 3 ' ) )  
 	 	 {  
 	 	 	 t u t S t a t e O i l   =   ( W 3 T u t o r i a l M a n a g e r U I H a n d l e r S t a t e O i l s ) t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . u i H a n d l e r . G e t C u r r e n t S t a t e ( ) ;  
 	 	 	 i f ( t u t S t a t e O i l )  
 	 	 	 {  
 	 	 	 	 t u t S t a t e O i l . O n O i l A p p l i e d ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   R e m o v e E x t r a O i l s F r o m I t e m (   i t e m   :   S I t e m U n i q u e I d   )  
 	 {  
 	 	 v a r   o i l s   :   a r r a y <   C B a s e G a m e p l a y E f f e c t   > ;  
 	 	 v a r   i ,   c n t   :   i n t ;  
 	 	 v a r   b u f f   :   W 3 E f f e c t _ O i l ;  
  
 	 	  
 	 	 i n v . R e m o v e A l l O i l s F r o m I t e m ( i t e m ) ;  
 	 	 r e t u r n ; 	 	  
 	 	  
 	 	  
 	 	  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	 f u n c t i o n   R e d u c e D a m a g e ( o u t   d a m a g e D a t a   :   W 3 D a m a g e A c t i o n )  
 	 {  
 	 	 v a r   a c t o r A t t a c k e r   :   C A c t o r ;  
 	 	 v a r   q u e n   :   W 3 Q u e n E n t i t y ;  
 	 	 v a r   a t t a c k R a n g e   :   C A I A t t a c k R a n g e ;  
 	 	 v a r   a t t a c k e r M o v e m e n t A d j u s t o r   :   C M o v e m e n t A d j u s t o r ;  
 	 	 v a r   d i s t ,   d i s t T o A t t a c k e r ,   a c t i o n H e a d i n g ,   a t t a c k e r H e a d i n g ,   c u r r A d r e n a l i n e ,   a d r e n R e d u c e d D m g ,   f o c u s   :   f l o a t ;  
 	 	 v a r   a t t a c k N a m e   :   n a m e ;  
 	 	 v a r   u s e Q u e n F o r B l e e d i n g   :   b o o l ;  
 	 	 v a r   m i n ,   m a x   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   s k i l l L e v e l   :   i n t ;  
 	 	  
 	 	 s u p e r . R e d u c e D a m a g e ( d a m a g e D a t a ) ;  
 	 	  
 	 	  
 	 	  
 	 	 q u e n   =   ( W 3 Q u e n E n t i t y ) s i g n s [ S T _ Q u e n ] . e n t i t y ;  
 	 	 u s e Q u e n F o r B l e e d i n g   =   f a l s e ;  
 	 	 i f ( q u e n   & &   ! d a m a g e D a t a . D e a l s A n y D a m a g e ( )   & &   ( ( W 3 E f f e c t _ B l e e d i n g ) d a m a g e D a t a . c a u s e r )   & &   d a m a g e D a t a . G e t D a m a g e V a l u e ( t h e G a m e . p a r a m s . D A M A G E _ N A M E _ D I R E C T )   >   0 . f )  
 	 	 	 u s e Q u e n F o r B l e e d i n g   =   t r u e ;  
 	 	  
 	 	  
 	 	 i f ( ! u s e Q u e n F o r B l e e d i n g   & &   ! d a m a g e D a t a . D e a l s A n y D a m a g e ( ) )  
 	 	 	 r e t u r n ; 	  
 	 	  
 	 	 a c t o r A t t a c k e r   =   ( C A c t o r ) d a m a g e D a t a . a t t a c k e r ;  
 	 	  
 	 	  
 	 	 i f ( a c t o r A t t a c k e r   & &   I s C u r r e n t l y D o d g i n g ( )   & &   d a m a g e D a t a . C a n B e D o d g e d ( ) )  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	 a c t i o n H e a d i n g   =   e v a d e H e a d i n g ;  
 	 	 	 a t t a c k e r H e a d i n g   =   a c t o r A t t a c k e r . G e t H e a d i n g ( ) ;  
 	 	 	 d i s t   =   A n g l e D i s t a n c e ( a c t i o n H e a d i n g ,   a t t a c k e r H e a d i n g ) ;  
 	 	 	 d i s t T o A t t a c k e r   =   V e c D i s t a n c e ( t h i s . G e t W o r l d P o s i t i o n ( ) , d a m a g e D a t a . a t t a c k e r . G e t W o r l d P o s i t i o n ( ) ) ;  
 	 	 	 a t t a c k N a m e   =   a c t o r A t t a c k e r . G e t L a s t A t t a c k R a n g e N a m e ( ) ;  
 	 	 	 a t t a c k R a n g e   =   t h e G a m e . G e t A t t a c k R a n g e F o r E n t i t y (   a c t o r A t t a c k e r ,   a t t a c k N a m e   ) ;  
 	 	 	 a t t a c k e r M o v e m e n t A d j u s t o r   =   a c t o r A t t a c k e r . G e t M o v i n g A g e n t C o m p o n e n t ( ) . G e t M o v e m e n t A d j u s t o r ( ) ;  
 	 	 	 i f (   (   A b s F ( d i s t )   <   1 5 0   & &   a t t a c k N a m e   ! =   ' s t o m p '   & &   a t t a c k N a m e   ! =   ' a n c h o r _ s p e c i a l _ f a r '   & &   a t t a c k N a m e   ! =   ' a n c h o r _ f a r '   )    
 	 	 	 	 | |   (   (   a t t a c k N a m e   = =   ' s t o m p '   | |   a t t a c k N a m e   = =   ' a n c h o r _ s p e c i a l _ f a r '   | |   a t t a c k N a m e   = =   ' a n c h o r _ f a r '   )   & &   d i s t T o A t t a c k e r   >   a t t a c k R a n g e . r a n g e M a x   *   0 . 7 5   )   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h e G a m e . C a n L o g ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 L o g D M H i t s ( " W 3 P l a y e r W i t c h e r . R e d u c e D a m a g e :   A t t a c k   d o d g e d   b y   p l a y e r   -   n o   d a m a g e   d o n e " ,   d a m a g e D a t a ) ;  
 	 	 	 	 }  
 	 	 	 	 d a m a g e D a t a . S e t A l l P r o c e s s e d D a m a g e A s ( 0 ) ;  
 	 	 	 	 d a m a g e D a t a . S e t W a s D o d g e d ( ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f (   ! d a m a g e D a t a . I s A c t i o n E n v i r o n m e n t ( )   & &   ! d a m a g e D a t a . I s D o T D a m a g e ( )   & &   C a n U s e S k i l l (   S _ S w o r d _ s 0 9   )   )  
 	 	 	 {  
 	 	 	 	 s k i l l L e v e l   =   G e t S k i l l L e v e l (   S _ S w o r d _ s 0 9   ) ;  
 	 	 	 	 i f (   s k i l l L e v e l   = =   G e t S k i l l M a x L e v e l (   S _ S w o r d _ s 0 9   )   )  
 	 	 	 	 {  
 	 	 	 	 	 d a m a g e D a t a . S e t A l l P r o c e s s e d D a m a g e A s ( 0 ) ;  
 	 	 	 	 	 d a m a g e D a t a . S e t W a s D o d g e d ( ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 d a m a g e D a t a . p r o c e s s e d D m g . v i t a l i t y D a m a g e   * =   1   -   C a l c u l a t e A t t r i b u t e V a l u e ( G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 0 9 ,   ' d a m a g e _ r e d u c t i o n ' ,   f a l s e ,   t r u e ) )   *   s k i l l L e v e l ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f   (   t h e G a m e . C a n L o g ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 L o g D M H i t s ( " W 3 P l a y e r W i t c h e r . R e d u c e D a m a g e :   s k i l l   S _ S w o r d _ s 0 9   r e d u c e d   d a m a g e   w h i l e   d o d g i n g " ,   d a m a g e D a t a   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( q u e n   & &   d a m a g e D a t a . G e t B u f f S o u r c e N a m e ( )   ! =   " F a l l i n g D a m a g e " )  
 	 	 {  
 	 	 	 i f   (   t h e G a m e . C a n L o g ( )   )  
 	 	 	 { 	 	  
 	 	 	 	 L o g D M H i t s ( " W 3 P l a y e r W i t c h e r . R e d u c e D a m a g e :   P r o c e s s i n g   Q u e n   s i g n   d a m a g e   r e d u c t i o n . . . " ,   d a m a g e D a t a ) ;  
 	 	 	 }  
 	 	 	 q u e n . O n T a r g e t H i t (   d a m a g e D a t a   ) ;  
 	 	 } 	  
 	 	  
 	 	  
 	 	 i f (   H a s B u f f (   E E T _ G r y p h o n S e t B o n u s Y r d e n   )   )  
 	 	 {  
 	 	 	 m i n   =   G e t A t t r i b u t e V a l u e (   ' g r y p h o n _ s e t _ b n s _ d m g _ r e d u c t i o n '   ) ;  
 	 	 	 d a m a g e D a t a . p r o c e s s e d D m g . v i t a l i t y D a m a g e   * =   1   -   m i n . v a l u e A d d i t i v e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 5   )   & &   ! I s A n y Q u e n A c t i v e ( )   & &   ! d a m a g e D a t a . I s D o T D a m a g e ( )   )  
 	 	 {  
 	 	 	 f o c u s   =   G e t S t a t (   B C S _ F o c u s   ) ;  
 	 	 	 c u r r A d r e n a l i n e   =   F l o o r F (   f o c u s   ) ;  
 	 	 	 i f (   c u r r A d r e n a l i n e   > =   1   )  
 	 	 	 {  
 	 	 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 5 ' ,   ' m u t 5 _ d m g _ r e d _ p e r c ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 a d r e n R e d u c e d D m g   =   (   c u r r A d r e n a l i n e   *   m i n . v a l u e A d d i t i v e   ) ;  
 	 	 	 	 d a m a g e D a t a . p r o c e s s e d D m g . v i t a l i t y D a m a g e   * =   1   -   a d r e n R e d u c e d D m g ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 t h e G a m e . M u t a t i o n H U D F e e d b a c k (   M F T _ P l a y O n c e   ) ;  
 	 	 	 	  
 	 	 	 	 i f (   f o c u s   > =   3 . f   )  
 	 	 	 	 {  
 	 	 	 	 	 P l a y E f f e c t (   ' m u t a t i o n _ 5 _ s t a g e _ 0 3 '   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f (   f o c u s   > =   2 . f   )  
 	 	 	 	 {  
 	 	 	 	 	 P l a y E f f e c t (   ' m u t a t i o n _ 5 _ s t a g e _ 0 2 '   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 P l a y E f f e c t (   ' m u t a t i o n _ 5 _ s t a g e _ 0 1 '   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( ! d a m a g e D a t a . G e t I g n o r e I m m o r t a l i t y M o d e ( ) )  
 	 	 {  
 	 	 	 i f ( ! ( ( W 3 P l a y e r W i t c h e r ) t h i s ) )  
 	 	 	 	 L o g ( " " ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f (   I s I n v u l n e r a b l e ( )   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h e G a m e . C a n L o g ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 L o g D M H i t s ( " C A c t o r . R e d u c e D a m a g e :   v i c t i m   I n v u l n e r a b l e   -   n o   d a m a g e   w i l l   b e   d e a l t " ,   d a m a g e D a t a   ) ;  
 	 	 	 	 }  
 	 	 	 	 d a m a g e D a t a . S e t A l l P r o c e s s e d D a m a g e A s ( 0 ) ;  
 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f ( a c t o r A t t a c k e r   & &   d a m a g e D a t a . D e a l s A n y D a m a g e ( )   )  
 	 	 	 	 a c t o r A t t a c k e r . S i g n a l G a m e p l a y E v e n t P a r a m O b j e c t (   ' D a m a g e I n s t i g a t e d ' ,   d a m a g e D a t a   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f (   I s I m m o r t a l ( )   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h e G a m e . C a n L o g ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 L o g D M H i t s ( " C A c t o r . R e d u c e D a m a g e :   v i c t i m   i s   I m m o r t a l ,   c l a m p i n g   d a m a g e " ,   d a m a g e D a t a   ) ;  
 	 	 	 	 }  
 	 	 	 	 d a m a g e D a t a . p r o c e s s e d D m g . v i t a l i t y D a m a g e   =   C l a m p F ( d a m a g e D a t a . p r o c e s s e d D m g . v i t a l i t y D a m a g e ,   0 ,   G e t S t a t ( B C S _ V i t a l i t y ) - 1   ) ;  
 	 	 	 	 d a m a g e D a t a . p r o c e s s e d D m g . e s s e n c e D a m a g e     =   C l a m p F ( d a m a g e D a t a . p r o c e s s e d D m g . e s s e n c e D a m a g e ,   0 ,   G e t S t a t ( B C S _ E s s e n c e ) - 1   ) ;  
 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	  
 	 	 	 i f ( a c t o r A t t a c k e r   & &   d a m a g e D a t a . D e a l s A n y D a m a g e ( )   )  
 	 	 	 	 a c t o r A t t a c k e r . S i g n a l G a m e p l a y E v e n t P a r a m O b j e c t (   ' D a m a g e I n s t i g a t e d ' ,   d a m a g e D a t a   ) ;  
 	 	 }  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   U n d y i n g S k i l l C o o l d o w n ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 c a n n o t U s e U n d y i n g S k i l l   =   f a l s e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t C a n n o t U s e U n d y i n g ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   c a n n o t U s e U n d y i n g S k i l l ;  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   S e t C a n n o t U s e U n d y i n g S k i l l ( s e t   :   b o o l )  
 	 {  
 	 	 c a n n o t U s e U n d y i n g S k i l l   =   s e t ;  
 	 }  
 	  
 	  
 	 e v e n t   O n T a k e D a m a g e (   a c t i o n   :   W 3 D a m a g e A c t i o n )  
 	 {  
 	 	 v a r   c u r r V i t a l i t y ,   r g n V i t a l i t y ,   h p T r i g g e r T r e s h o l d   :   f l o a t ;  
 	 	 v a r   h e a l i n g F a c t o r   :   f l o a t ;  
 	 	 v a r   a b i l i t y N a m e   :   n a m e ;  
 	 	 v a r   a b i l i t y C o u n t ,   m a x S t a c k ,   i t e m D u r a b i l i t y   :   f l o a t ;  
 	 	 v a r   a d d A b i l i t y   :   b o o l ;  
 	 	 v a r   m i n ,   m a x   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   m u t a g e n Q u e n   :   W 3 S i g n E n t i t y ;  
 	 	 v a r   e q u i p p e d   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   k i l l S o u r c e N a m e   :   s t r i n g ;  
 	 	 v a r   a e r o n d i g h t 	 :   W 3 E f f e c t _ A e r o n d i g h t ;  
 	  
 	 	 c u r r V i t a l i t y   =   G e t S t a t ( B C S _ V i t a l i t y ) ;  
 	 	  
 	 	  
 	 	 i f ( a c t i o n . p r o c e s s e d D m g . v i t a l i t y D a m a g e   > =   c u r r V i t a l i t y )  
 	 	 {  
 	 	 	 k i l l S o u r c e N a m e   =   a c t i o n . G e t B u f f S o u r c e N a m e ( ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f (   k i l l S o u r c e N a m e   ! =   " Q u e s t "   & &   k i l l S o u r c e N a m e   ! =   " K i l l   T r i g g e r "   & &   k i l l S o u r c e N a m e   ! =   " T r a p "   & &   k i l l S o u r c e N a m e   ! =   " F a l l i n g D a m a g e "   )  
 	 	 	 { 	 	 	  
 	 	 	 	  
 	 	 	 	 i f ( ! c a n n o t U s e U n d y i n g S k i l l   & &   F l o o r F ( G e t S t a t ( B C S _ F o c u s ) )   > =   1   & &   C a n U s e S k i l l ( S _ S w o r d _ s 1 8 )   & &   H a s B u f f ( E E T _ B a t t l e T r a n c e )   )  
 	 	 	 	 {  
 	 	 	 	 	 h e a l i n g F a c t o r   =   C a l c u l a t e A t t r i b u t e V a l u e (   G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 1 8 ,   ' h e a l i n g _ f a c t o r ' ,   f a l s e ,   t r u e )   ) ;  
 	 	 	 	 	 h e a l i n g F a c t o r   * =   G e t S t a t M a x ( B C S _ V i t a l i t y ) ;  
 	 	 	 	 	 h e a l i n g F a c t o r   * =   G e t S t a t ( B C S _ F o c u s ) ;  
 	 	 	 	 	 h e a l i n g F a c t o r   * =   1   +   C a l c u l a t e A t t r i b u t e V a l u e (   G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 1 8 ,   ' h e a l i n g _ b o n u s ' ,   f a l s e ,   t r u e )   )   *   ( G e t S k i l l L e v e l ( S _ S w o r d _ s 1 8 )   -   1 ) ;  
 	 	 	 	 	 F o r c e S e t S t a t ( B C S _ V i t a l i t y ,   G e t S t a t M a x ( B C S _ V i t a l i t y ) ) ;  
 	 	 	 	 	 D r a i n F o c u s ( G e t S t a t ( B C S _ F o c u s ) ) ;  
 	 	 	 	 	 R e m o v e B u f f ( E E T _ B a t t l e T r a n c e ) ;  
 	 	 	 	 	 c a n n o t U s e U n d y i n g S k i l l   =   t r u e ;  
 	 	 	 	 	 A d d T i m e r ( ' U n d y i n g S k i l l C o o l d o w n ' ,   C a l c u l a t e A t t r i b u t e V a l u e (   G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 1 8 ,   ' t r i g g e r _ d e l a y ' ,   f a l s e ,   t r u e )   ) ,   f a l s e ,   ,   ,   t r u e ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 e l s e   i f (   I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 1 1   )   & &   ! H a s B u f f (   E E T _ M u t a t i o n 1 1 D e b u f f   )   & &   ! I s I n A i r ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 1 1 ' ,   ' h e a l t h _ p r c ' ,   m i n ,   m a x   ) ;  
  
 	 	 	 	 	 a c t i o n . S e t A l l P r o c e s s e d D a m a g e A s (   0   ) ;  
 	 	 	 	 	  
 	 	 	 	 	 O n M u t a t i o n 1 1 T r i g g e r e d ( ) ; 	 	 	 	 	  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	  
 	 	 	 	 	 e q u i p p e d   =   G e t E q u i p p e d I t e m s ( ) ;  
 	 	 	 	 	  
 	 	 	 	 	 f o r ( i = 0 ;   i < e q u i p p e d . S i z e ( ) ;   i + = 1 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f   (   ! i n v . I s I d V a l i d (   e q u i p p e d [ i ]   )   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 i t e m D u r a b i l i t y   =   i n v . G e t I t e m D u r a b i l i t y ( e q u i p p e d [ i ] ) ;  
 	 	 	 	 	 	 i f ( i n v . I t e m H a s A b i l i t y ( e q u i p p e d [ i ] ,   ' M A _ R e i n f o r c e d ' )   & &   i t e m D u r a b i l i t y   >   0 )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 i n v . S e t I t e m D u r a b i l i t y S c r i p t ( e q u i p p e d [ i ] ,   M a x F ( 0 ,   i t e m D u r a b i l i t y   -   a c t i o n . p r o c e s s e d D m g . v i t a l i t y D a m a g e )   ) ;  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 a c t i o n . p r o c e s s e d D m g . v i t a l i t y D a m a g e   =   0 ;  
 	 	 	 	 	 	 	 F o r c e S e t S t a t ( B C S _ V i t a l i t y ,   1 ) ;  
 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( a c t i o n . D e a l s A n y D a m a g e ( )   & &   ! ( ( W 3 E f f e c t _ T o x i c i t y ) a c t i o n . c a u s e r )   )  
 	 	 {  
 	 	 	 i f ( H a s B u f f ( E E T _ M u t a g e n 1 0 ) )  
 	 	 	 	 R e m o v e A b i l i t y A l l (   G e t B u f f ( E E T _ M u t a g e n 1 0 ) . G e t A b i l i t y N a m e ( )   ) ;  
 	 	 	  
 	 	 	 i f ( H a s B u f f ( E E T _ M u t a g e n 1 5 ) )  
 	 	 	 	 R e m o v e A b i l i t y A l l (   G e t B u f f ( E E T _ M u t a g e n 1 5 ) . G e t A b i l i t y N a m e ( )   ) ;  
 	 	 }  
 	 	 	 	  
 	 	  
 	 	 i f ( H a s B u f f ( E E T _ M u t a g e n 1 9 ) )  
 	 	 {  
 	 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e ( G e t B u f f ( E E T _ M u t a g e n 1 9 ) . G e t A b i l i t y N a m e ( ) ,   ' m a x _ h p _ p e r c _ t r i g g e r ' ,   m i n ,   m a x ) ;  
 	 	 	 h p T r i g g e r T r e s h o l d   =   G e t S t a t M a x ( B C S _ V i t a l i t y )   *   C a l c u l a t e A t t r i b u t e V a l u e ( G e t A t t r i b u t e R a n d o m i z e d V a l u e ( m i n ,   m a x ) ) ;  
 	 	 	  
 	 	 	 i f ( a c t i o n . G e t D a m a g e D e a l t ( )   > =   h p T r i g g e r T r e s h o l d )  
 	 	 	 {  
 	 	 	 	 m u t a g e n Q u e n   =   ( W 3 S i g n E n t i t y ) t h e G a m e . C r e a t e E n t i t y (   s i g n s [ S T _ Q u e n ] . t e m p l a t e ,   G e t W o r l d P o s i t i o n ( ) ,   G e t W o r l d R o t a t i o n ( )   ) ;  
 	 	 	 	 m u t a g e n Q u e n . I n i t (   s i g n O w n e r ,   s i g n s [ S T _ Q u e n ] . e n t i t y ,   t r u e   ) ;  
 	 	 	 	 m u t a g e n Q u e n . O n S t a r t e d ( ) ;  
 	 	 	 	 m u t a g e n Q u e n . O n T h r o w i n g ( ) ;  
 	 	 	 	 m u t a g e n Q u e n . O n E n d e d ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( a c t i o n . D e a l s A n y D a m a g e ( )   & &   ! a c t i o n . I s D o T D a m a g e ( )   & &   H a s B u f f ( E E T _ M u t a g e n 2 7 ) )  
 	 	 {  
 	 	 	 a b i l i t y N a m e   =   G e t B u f f ( E E T _ M u t a g e n 2 7 ) . G e t A b i l i t y N a m e ( ) ;  
 	 	 	 a b i l i t y C o u n t   =   G e t A b i l i t y C o u n t ( a b i l i t y N a m e ) ;  
 	 	 	  
 	 	 	 i f ( a b i l i t y C o u n t   = =   0 )  
 	 	 	 {  
 	 	 	 	 a d d A b i l i t y   =   t r u e ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e ( a b i l i t y N a m e ,   ' m u t a g e n 2 7 _ m a x _ s t a c k ' ,   m i n ,   m a x ) ;  
 	 	 	 	 m a x S t a c k   =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t A t t r i b u t e R a n d o m i z e d V a l u e ( m i n ,   m a x ) ) ;  
 	 	 	 	  
 	 	 	 	 i f ( m a x S t a c k   > =   0 )  
 	 	 	 	 {  
 	 	 	 	 	 a d d A b i l i t y   =   ( a b i l i t y C o u n t   <   m a x S t a c k ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 a d d A b i l i t y   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 i f ( a d d A b i l i t y )  
 	 	 	 {  
 	 	 	 	 A d d A b i l i t y ( a b i l i t y N a m e ,   t r u e ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f ( H a s B u f f ( E E T _ T r a p )   & &   ! a c t i o n . I s D o T D a m a g e ( )   & &   a c t i o n . a t t a c k e r . H a s A b i l i t y (   ' m o n _ d e t t l a f f _ m o n s t e r _ b a s e '   ) )  
 	 	 {  
 	 	 	 a c t i o n . A d d E f f e c t I n f o ( E E T _ K n o c k d o w n ) ;  
 	 	 	 R e m o v e B u f f ( E E T _ T r a p ,   t r u e ) ;  
 	 	 } 	 	  
 	 	  
 	 	 s u p e r . O n T a k e D a m a g e ( a c t i o n ) ;  
 	 	  
 	 	  
 	 	 i f (   ! a c t i o n . W a s D o d g e d ( )   & &   a c t i o n . D e a l t D a m a g e ( )   & &   i n v . I t e m H a s T a g (   i n v . G e t C u r r e n t l y H e l d S w o r d ( ) ,   ' A e r o n d i g h t '   )   & &   ! a c t i o n . I s D o T D a m a g e ( )   & &   ! (   ( W 3 E f f e c t _ T o x i c i t y )   a c t i o n . c a u s e r   )   )  
 	 	 {  
 	 	 	 a e r o n d i g h t   =   ( W 3 E f f e c t _ A e r o n d i g h t ) G e t B u f f (   E E T _ A e r o n d i g h t   ) ;  
 	 	 	 i f (   a e r o n d i g h t   & &   a e r o n d i g h t . G e t C u r r e n t C o u n t ( )   ! =   0   )  
 	 	 	 {  
 	 	 	 	 a e r o n d i g h t . R e d u c e A e r o n d i g h t S t a c k s ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   ! a c t i o n . W a s D o d g e d ( )   & &   a c t i o n . D e a l t D a m a g e ( )   & &   ! (   ( W 3 E f f e c t _ T o x i c i t y )   a c t i o n . c a u s e r   )   )  
 	 	 {  
 	 	 	 R e m o v e B u f f (   E E T _ M u t a t i o n 3   ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	 e v e n t   O n S t a r t F i s t f i g h t M i n i g a m e ( )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   b u f f s   :   a r r a y <   C B a s e G a m e p l a y E f f e c t   > ;  
 	 	  
 	 	  
 	 	 e f f e c t M a n a g e r . R e m o v e A l l P o t i o n E f f e c t s ( ) ;  
 	 	  
 	 	 a b i l i t y M a n a g e r . D r a i n T o x i c i t y ( G e t S t a t M a x (   B C S _ T o x i c i t y   ) ) ;  
 	 	  
 	 	 b u f f s   =   G e t B u f f s (   E E T _ W e l l F e d   ) ;  
 	 	 f o r (   i = b u f f s . S i z e ( ) - 1 ;   i > = 0 ;   i - = 1   )  
 	 	 {  
 	 	 	 R e m o v e E f f e c t (   b u f f s [ i ]   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 b u f f s . C l e a r ( ) ;  
 	 	 b u f f s   =   G e t B u f f s (   E E T _ W e l l H y d r a t e d   ) ;  
 	 	 f o r (   i = b u f f s . S i z e ( ) - 1 ;   i > = 0 ;   i - = 1   )  
 	 	 {  
 	 	 	 R e m o v e E f f e c t (   b u f f s [ i ]   ) ;  
 	 	 }  
 	 	  
 	 	 s u p e r . O n S t a r t F i s t f i g h t M i n i g a m e ( ) ;  
 	 }  
 	  
 	 e v e n t   O n E n d F i s t f i g h t M i n i g a m e ( )  
 	 {  
 	 	 s u p e r . O n E n d F i s t f i g h t M i n i g a m e ( ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t C r i t i c a l H i t C h a n c e (   i s L i g h t A t t a c k   :   b o o l ,   i s H e a v y A t t a c k   :   b o o l ,   t a r g e t   :   C A c t o r ,   v i c t i m M o n s t e r C a t e g o r y   :   E M o n s t e r C a t e g o r y ,   i s B o l t   :   b o o l   )   :   f l o a t  
 	 {  
 	 	 v a r   r e t   :   f l o a t ;  
 	 	 v a r   t h u n d e r   :   W 3 P o t i o n _ T h u n d e r b o l t ;  
 	 	 v a r   m i n ,   m a x   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	  
 	 	 r e t   =   s u p e r . G e t C r i t i c a l H i t C h a n c e (   i s L i g h t A t t a c k ,   i s H e a v y A t t a c k ,   t a r g e t ,   v i c t i m M o n s t e r C a t e g o r y ,   i s B o l t   ) ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 t h u n d e r   =   (   W 3 P o t i o n _ T h u n d e r b o l t   ) G e t B u f f (   E E T _ T h u n d e r b o l t   ) ;  
 	 	 i f (   t h u n d e r   & &   t h u n d e r . G e t B u f f L e v e l ( )   = =   3   & &   G e t C u r W e a t h e r ( )   = =   E W E _ S t o r m   )  
 	 	 {  
 	 	 	 r e t   + =   1 . 0 f ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   i s B o l t   & &   I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 9   )   )  
 	 	 {  
 	 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e ( ' M u t a t i o n 9 ' ,   ' c r i t i c a l _ h i t _ c h a n c e ' ,   m i n ,   m a x ) ;  
 	 	 	 r e t   + =   m i n . v a l u e M u l t i p l i c a t i v e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   i s B o l t   & &   C a n U s e S k i l l (   S _ S w o r d _ s 0 7   )   )  
 	 	 {  
 	 	 	 r e t   + =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 0 7 ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ C H A N C E ,   f a l s e ,   t r u e ) )   *   G e t S k i l l L e v e l ( S _ S w o r d _ s 0 7 ) ;  
 	 	 }  
 	 	 	  
 	 	 r e t u r n   r e t ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t C r i t i c a l H i t D a m a g e B o n u s ( w e a p o n I d   :   S I t e m U n i q u e I d ,   v i c t i m M o n s t e r C a t e g o r y   :   E M o n s t e r C a t e g o r y ,   i s S t r i k e A t B a c k   :   b o o l )   :   S A b i l i t y A t t r i b u t e V a l u e  
 	 {  
 	 	 v a r   m i n ,   m a x ,   b o n u s ,   n u l l ,   o i l B o n u s   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   m u t a g e n   :   C B a s e G a m e p l a y E f f e c t ;  
 	 	 v a r   m o n s t e r B o n u s T y p e   :   n a m e ;  
 	 	  
 	 	 b o n u s   =   s u p e r . G e t C r i t i c a l H i t D a m a g e B o n u s ( w e a p o n I d ,   v i c t i m M o n s t e r C a t e g o r y ,   i s S t r i k e A t B a c k ) ;  
 	 	  
 	 	  
 	 	 i f (   i n v . I t e m H a s A c t i v e O i l A p p l i e d (   w e a p o n I d ,   v i c t i m M o n s t e r C a t e g o r y   )   & &   G e t S t a t (   B C S _ F o c u s   )   > =   3   & &   C a n U s e S k i l l (   S _ A l c h e m y _ s 0 7   )   )  
 	 	 {  
 	 	 	 m o n s t e r B o n u s T y p e   =   M o n s t e r C a t e g o r y T o A t t a c k P o w e r B o n u s (   v i c t i m M o n s t e r C a t e g o r y   ) ;  
 	 	 	 o i l B o n u s   =   i n v . G e t I t e m A t t r i b u t e V a l u e (   w e a p o n I d ,   m o n s t e r B o n u s T y p e   ) ;  
 	 	 	 i f ( o i l B o n u s   ! =   n u l l ) 	  
 	 	 	 {  
 	 	 	 	 b o n u s   + =   G e t S k i l l A t t r i b u t e V a l u e ( S _ A l c h e m y _ s 0 7 ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ D A M A G E _ B O N U S ,   f a l s e ,   t r u e )   *   G e t S k i l l L e v e l ( S _ A l c h e m y _ s 0 7 ) ;    
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f   ( i s S t r i k e A t B a c k   & &   H a s B u f f ( E E T _ M u t a g e n 1 1 ) )  
 	 	 {  
 	 	 	 m u t a g e n   =   G e t B u f f ( E E T _ M u t a g e n 1 1 ) ;  
 	 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e ( m u t a g e n . G e t A b i l i t y N a m e ( ) ,   ' d a m a g e I n c r e a s e ' ,   m i n ,   m a x ) ;  
 	 	 	 b o n u s   + =   G e t A t t r i b u t e R a n d o m i z e d V a l u e ( m i n ,   m a x ) ;  
 	 	 }  
 	 	 	  
 	 	 r e t u r n   b o n u s ; 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   P r o c e s s L o c k T a r g e t (   o p t i o n a l   n e w L o c k T a r g e t   :   C A c t o r ,   o p t i o n a l   c h e c k L e f t S t i c k H e a d i n g   :   b o o l   )   :   b o o l  
 	 {  
 	 	 v a r   n e w L o c k T a r g e t F o u n d 	 :   b o o l ;  
 	  
 	 	 n e w L o c k T a r g e t F o u n d   =   s u p e r . P r o c e s s L o c k T a r g e t ( n e w L o c k T a r g e t ,   c h e c k L e f t S t i c k H e a d i n g ) ;  
 	 	  
 	 	 i f ( G e t C u r r e n t l y C a s t S i g n ( )   = =   S T _ A x i i )  
 	 	 {  
 	 	 	 ( ( W 3 A x i i E n t i t y ) G e t C u r r e n t S i g n E n t i t y ( ) ) . O n D i s p l a y T a r g e t C h a n g e ( n e w L o c k T a r g e t ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   n e w L o c k T a r g e t F o u n d ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	   e v e n t   O n P r o c e s s A c t i o n P o s t ( a c t i o n   :   W 3 D a m a g e A c t i o n )  
 	 {  
 	 	 v a r   a t t a c k A c t i o n   :   W 3 A c t i o n _ A t t a c k ;  
 	 	 v a r   r e n d L o a d   :   f l o a t ;  
 	 	 v a r   v a l u e   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   a c t o r V i c t i m   :   C A c t o r ;  
 	 	 v a r   w e a p o n I d   :   S I t e m U n i q u e I d ;  
 	 	 v a r   u s e s S t e e l ,   u s e s S i l v e r ,   u s e s V i t a l i t y ,   u s e s E s s e n c e   :   b o o l ;  
 	 	 v a r   a b s   :   a r r a y < n a m e > ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   d m   :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ;  
 	 	 v a r   i t e m s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   w e a p o n E n t   :   C E n t i t y ;  
 	 	  
 	 	 s u p e r . O n P r o c e s s A c t i o n P o s t ( a c t i o n ) ;  
 	 	  
 	 	 a t t a c k A c t i o n   =   ( W 3 A c t i o n _ A t t a c k ) a c t i o n ;  
 	 	 a c t o r V i c t i m   =   ( C A c t o r ) a c t i o n . v i c t i m ;  
 	 	  
 	 	 i f ( a t t a c k A c t i o n )  
 	 	 {  
 	 	 	 i f ( a t t a c k A c t i o n . I s A c t i o n M e l e e ( ) )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 i f ( S k i l l N a m e T o E n u m ( a t t a c k A c t i o n . G e t A t t a c k T y p e N a m e ( ) )   = =   S _ S w o r d _ s 0 2 )  
 	 	 	 	 {  
 	 	 	 	 	 r e n d L o a d   =   G e t S p e c i a l A t t a c k T i m e R a t i o ( ) ;  
 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 r e n d L o a d   =   M i n F ( r e n d L o a d   *   G e t S t a t M a x ( B C S _ F o c u s ) ,   G e t S t a t ( B C S _ F o c u s ) ) ;  
 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 r e n d L o a d   =   F l o o r F ( r e n d L o a d ) ; 	 	 	 	 	  
 	 	 	 	 	 D r a i n F o c u s ( r e n d L o a d ) ;  
 	 	 	 	 	  
 	 	 	 	 	 O n S p e c i a l A t t a c k H e a v y A c t i o n P r o c e s s ( ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f ( a c t o r V i c t i m   & &   I s R e q u i r e d A t t i t u d e B e t w e e n ( t h i s ,   a c t o r V i c t i m ,   t r u e ) )  
 	 	 	 	 {  
 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 v a l u e   =   G e t A t t r i b u t e V a l u e ( ' f o c u s _ g a i n ' ) ;  
 	 	 	 	 	  
 	 	 	 	 	 i f (   F a c t s Q u e r y S u m ( " d e b u g _ f a c t _ f o c u s _ b o y " )   >   0   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 D e b u g _ F o c u s B o y F o c u s G a i n ( ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   C a n U s e S k i l l ( S _ S w o r d _ s 2 0 )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 v a l u e   + =   G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 2 0 ,   ' f o c u s _ g a i n ' ,   f a l s e ,   t r u e )   *   G e t S k i l l L e v e l ( S _ S w o r d _ s 2 0 ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 i f (   I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 3   )   & &   I s R e q u i r e d A t t i t u d e B e t w e e n (   t h i s ,   a c t i o n . v i c t i m ,   t r u e   )   & &   ! a c t i o n . v i c t i m . H a s T a g (   ' M u t a t i o n 3 I n v a l i d T a r g e t '   )   & &   ! a t t a c k A c t i o n . I s P a r r i e d ( )   & &   ! a t t a c k A c t i o n . W a s D o d g e d ( )   & &   ! a t t a c k A c t i o n . I s C o u n t e r e d ( )   & &   ! i n v . I s I t e m F i s t s (   a t t a c k A c t i o n . G e t W e a p o n I d ( )   )   & &   ! a t t a c k A c t i o n . W a s D a m a g e R e t u r n e d T o A t t a c k e r ( )   & &   a t t a c k A c t i o n . D e a l t D a m a g e ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 A d d E f f e c t D e f a u l t (   E E T _ M u t a t i o n 3 ,   t h i s ,   " " ,   f a l s e   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 	 G a i n S t a t ( B C S _ F o c u s ,   0 . 1 f   *   ( 1   +   C a l c u l a t e A t t r i b u t e V a l u e ( v a l u e ) )   ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 w e a p o n I d   =   a t t a c k A c t i o n . G e t W e a p o n I d ( ) ;  
 	 	 	 	 i f ( a c t o r V i c t i m   & &   ( S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l W r o n g S w o r d S t e e l ' )   | |   S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l W r o n g S w o r d S i l v e r ' ) )   & &   G e t A t t i t u d e B e t w e e n ( a c t o r V i c t i m ,   t h i s )   = =   A I A _ H o s t i l e )  
 	 	 	 	 {  
 	 	 	 	 	 u s e s S t e e l   =   i n v . I s I t e m S t e e l S w o r d U s a b l e B y P l a y e r ( w e a p o n I d ) ;  
 	 	 	 	 	 u s e s S i l v e r   =   i n v . I s I t e m S i l v e r S w o r d U s a b l e B y P l a y e r ( w e a p o n I d ) ;  
 	 	 	 	 	 u s e s V i t a l i t y   =   a c t o r V i c t i m . U s e s V i t a l i t y ( ) ;  
 	 	 	 	 	 u s e s E s s e n c e   =   a c t o r V i c t i m . U s e s E s s e n c e ( ) ;  
 	 	 	 	 	  
 	 	 	 	 	 i f ( u s e s S i l v e r   & &   u s e s V i t a l i t y )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 F a c t s A d d ( ' t u t _ w r o n g _ s w o r d _ s i l v e r ' , 1 ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f ( u s e s S t e e l   & &   u s e s E s s e n c e )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 F a c t s A d d ( ' t u t _ w r o n g _ s w o r d _ s t e e l ' , 1 ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f ( F a c t s Q u e r y S u m ( ' t u t _ w r o n g _ s w o r d _ s t e e l ' )   & &   u s e s S i l v e r   & &   u s e s E s s e n c e )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 F a c t s A d d ( ' t u t _ p r o p e r _ s w o r d _ s i l v e r ' , 1 ) ;  
 	 	 	 	 	 	 F a c t s R e m o v e ( ' t u t _ w r o n g _ s w o r d _ s t e e l ' ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f ( F a c t s Q u e r y S u m ( ' t u t _ w r o n g _ s w o r d _ s i l v e r ' )   & &   u s e s S t e e l   & &   u s e s V i t a l i t y )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 F a c t s A d d ( ' t u t _ p r o p e r _ s w o r d _ s t e e l ' , 1 ) ;  
 	 	 	 	 	 	 F a c t s R e m o v e ( ' t u t _ w r o n g _ s w o r d _ s i l v e r ' ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f ( ! a c t i o n . W a s D o d g e d ( )   & &   H a s A b i l i t y ( ' R u n e w o r d   1   _ S t a t s ' ,   t r u e ) )  
 	 	 	 	 {  
 	 	 	 	 	 i f ( r u n e w o r d I n f u s i o n T y p e   = =   S T _ A x i i )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t o r V i c t i m . S o u n d E v e n t ( ' s i g n _ a x i i _ r e l e a s e ' ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f ( r u n e w o r d I n f u s i o n T y p e   = =   S T _ I g n i )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t o r V i c t i m . S o u n d E v e n t ( ' s i g n _ i g n i _ c h a r g e _ b e g i n ' ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f ( r u n e w o r d I n f u s i o n T y p e   = =   S T _ Q u e n )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 v a l u e   =   G e t A t t r i b u t e V a l u e ( ' r u n e w o r d 1 _ q u e n _ h e a l ' ) ;  
 	 	 	 	 	 	 H e a l (   a c t i o n . G e t D a m a g e D e a l t ( )   *   v a l u e . v a l u e M u l t i p l i c a t i v e   ) ;  
 	 	 	 	 	 	 P l a y E f f e c t S i n g l e ( ' d r a i n _ e n e r g y _ c a r e t a k e r _ s h o v e l ' ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f ( r u n e w o r d I n f u s i o n T y p e   = =   S T _ Y r d e n )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t o r V i c t i m . S o u n d E v e n t ( ' s i g n _ y r d e n _ s h o c k _ a c t i v a t e ' ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 r u n e w o r d I n f u s i o n T y p e   =   S T _ N o n e ;  
 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 i t e m s   =   i n v . G e t H e l d W e a p o n s ( ) ;  
 	 	 	 	 	 w e a p o n E n t   =   i n v . G e t I t e m E n t i t y U n s a f e ( i t e m s [ 0 ] ) ;  
 	 	 	 	 	 w e a p o n E n t . S t o p E f f e c t ( ' r u n e w o r d _ a a r d ' ) ;  
 	 	 	 	 	 w e a p o n E n t . S t o p E f f e c t ( ' r u n e w o r d _ a x i i ' ) ;  
 	 	 	 	 	 w e a p o n E n t . S t o p E f f e c t ( ' r u n e w o r d _ i g n i ' ) ;  
 	 	 	 	 	 w e a p o n E n t . S t o p E f f e c t ( ' r u n e w o r d _ q u e n ' ) ;  
 	 	 	 	 	 w e a p o n E n t . S t o p E f f e c t ( ' r u n e w o r d _ y r d e n ' ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f ( S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l L i g h t A t t a c k s ' )   | |   S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l H e a v y A t t a c k s ' ) )  
 	 	 	 	 {  
 	 	 	 	 	 i f ( I s L i g h t A t t a c k ( a t t a c k A c t i o n . G e t A t t a c k N a m e ( ) ) )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . I n c r e a s e G e r a l t s L i g h t A t t a c k s C o u n t ( a c t i o n . v i c t i m . G e t T a g s ( ) ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f ( I s H e a v y A t t a c k ( a t t a c k A c t i o n . G e t A t t a c k N a m e ( ) ) )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . I n c r e a s e G e r a l t s H e a v y A t t a c k s C o u n t ( a c t i o n . v i c t i m . G e t T a g s ( ) ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   i f ( a t t a c k A c t i o n . I s A c t i o n R a n g e d ( ) )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 i f ( C a n U s e S k i l l ( S _ S w o r d _ s 1 5 ) )  
 	 	 	 	 { 	 	 	 	  
 	 	 	 	 	 v a l u e   =   G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 1 5 ,   ' f o c u s _ g a i n ' ,   f a l s e ,   t r u e )   *   G e t S k i l l L e v e l ( S _ S w o r d _ s 1 5 )   ;  
 	 	 	 	 	 G a i n S t a t ( B C S _ F o c u s ,   C a l c u l a t e A t t r i b u t e V a l u e ( v a l u e )   ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f ( C a n U s e S k i l l ( S _ S w o r d _ s 1 2 )   & &   a t t a c k A c t i o n . I s C r i t i c a l H i t ( )   & &   a c t o r V i c t i m )  
 	 	 	 	 {  
 	 	 	 	 	  
 	 	 	 	 	 a c t o r V i c t i m . G e t C h a r a c t e r S t a t s ( ) . G e t A b i l i t i e s ( a b s ,   f a l s e ) ;  
 	 	 	 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	 	 	 	 f o r ( i = a b s . S i z e ( ) - 1 ;   i > = 0 ;   i - = 1 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f ( ! d m . A b i l i t y H a s T a g ( a b s [ i ] ,   t h e G a m e . p a r a m s . T A G _ M O N S T E R _ S K I L L )   | |   a c t o r V i c t i m . I s A b i l i t y B l o c k e d ( a b s [ i ] ) )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 a b s . E r a s e F a s t ( i ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 i f ( a b s . S i z e ( )   >   0 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 v a l u e   =   G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 1 2 ,   ' d u r a t i o n ' ,   t r u e ,   t r u e )   *   G e t S k i l l L e v e l ( S _ S w o r d _ s 1 2 ) ;  
 	 	 	 	 	 	 a c t o r V i c t i m . B l o c k A b i l i t y ( a b s [   R a n d R a n g e ( a b s . S i z e ( ) )   ] ,   t r u e ,   C a l c u l a t e A t t r i b u t e V a l u e ( v a l u e ) ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 1 0   )   & &   a c t o r V i c t i m   & &   (   a c t i o n . I s A c t i o n M e l e e ( )   | |   a c t i o n . I s A c t i o n W i t c h e r S i g n ( )   )   & &   ! I s C u r r e n t S i g n C h a n n e l e d ( )   )  
 	 	 {  
 	 	 	 P l a y E f f e c t S i n g l e (   ' m u t a t i o n _ 1 0 _ e n e r g y '   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( C a n U s e S k i l l ( S _ P e r k _ 1 8 )   & &   ( ( W 3 P e t a r d ) a c t i o n . c a u s e r )   & &   a c t i o n . D e a l s A n y D a m a g e ( )   & &   ! a c t i o n . I s D o T D a m a g e ( ) )  
 	 	 {  
 	 	 	 v a l u e   =   G e t S k i l l A t t r i b u t e V a l u e ( S _ P e r k _ 1 8 ,   ' f o c u s _ g a i n ' ,   f a l s e ,   t r u e ) ;  
 	 	 	 G a i n S t a t ( B C S _ F o c u s ,   C a l c u l a t e A t t r i b u t e V a l u e ( v a l u e ) ) ;  
 	 	 } 	 	  
 	 	  
 	 	  
 	 	 i f (   a t t a c k A c t i o n   & &   I s H e a v y A t t a c k (   a t t a c k A c t i o n . G e t A t t a c k N a m e ( )   )   & &   ! I s U s i n g H o r s e ( )   & &   a t t a c k A c t i o n . D e a l t D a m a g e ( )   & &   I s S e t B o n u s A c t i v e (   E I S B _ L y n x _ 1   )   & &   ! a t t a c k A c t i o n . W a s D o d g e d ( )   & &   ! a t t a c k A c t i o n . I s P a r r i e d ( )   & &   ! a t t a c k A c t i o n . I s C o u n t e r e d ( )   & &   (   i n v . I s I t e m S t e e l S w o r d U s a b l e B y P l a y e r (   a t t a c k A c t i o n . G e t W e a p o n I d ( )   )   | |   i n v . I s I t e m S i l v e r S w o r d U s a b l e B y P l a y e r (   a t t a c k A c t i o n . G e t W e a p o n I d ( )   )   )   )  
 	 	 {  
 	 	 	 A d d E f f e c t D e f a u l t (   E E T _ L y n x S e t B o n u s ,   N U L L ,   " H e a v y A t t a c k "   ) ;  
 	 	 	 S o u n d E v e n t (   " e p 2 _ s e t s k i l l _ l y n x _ a c t i v a t e "   ) ;  
 	 	 } 	 	  
 	 }  
 	  
 	  
 	 t i m e r   f u n c t i o n   M u t a g e n 1 4 T i m e r ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 v a r   a b i l i t y N a m e   :   n a m e ;  
 	 	 v a r   a b i l i t y C o u n t ,   m a x S t a c k   :   f l o a t ;  
 	 	 v a r   m i n ,   m a x   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   a d d A b i l i t y   :   b o o l ;  
 	 	  
 	 	 a b i l i t y N a m e   =   G e t B u f f ( E E T _ M u t a g e n 1 4 ) . G e t A b i l i t y N a m e ( ) ;  
 	 	 a b i l i t y C o u n t   =   G e t A b i l i t y C o u n t ( a b i l i t y N a m e ) ;  
 	 	  
 	 	 i f ( a b i l i t y C o u n t   = =   0 )  
 	 	 {  
 	 	 	 a d d A b i l i t y   =   t r u e ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e ( a b i l i t y N a m e ,   ' m u t a g e n 1 4 _ m a x _ s t a c k ' ,   m i n ,   m a x ) ;  
 	 	 	 m a x S t a c k   =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t A t t r i b u t e R a n d o m i z e d V a l u e ( m i n ,   m a x ) ) ;  
 	 	 	  
 	 	 	 i f ( m a x S t a c k   > =   0 )  
 	 	 	 {  
 	 	 	 	 a d d A b i l i t y   =   ( a b i l i t y C o u n t   <   m a x S t a c k ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 a d d A b i l i t y   =   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f ( a d d A b i l i t y )  
 	 	 {  
 	 	 	 A d d A b i l i t y ( a b i l i t y N a m e ,   t r u e ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	  
 	 	 	 R e m o v e T i m e r ( ' M u t a g e n 1 4 T i m e r ' ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   F a i l F u n d a m e n t a l s F i r s t A c h i e v e m e n t C o n d i t i o n ( )  
 	 {  
 	 	 S e t F a i l e d F u n d a m e n t a l s F i r s t A c h i e v e m e n t C o n d i t i o n ( t r u e ) ;  
 	 }  
 	 	  
 	 p u b l i c   f i n a l   f u n c t i o n   S e t U s e d Q u e n I n C o m b a t ( )  
 	 {  
 	 	 u s e d Q u e n I n C o m b a t   =   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   U s e d Q u e n I n C o m b a t ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   u s e d Q u e n I n C o m b a t ;  
 	 }  
 	  
 	 e v e n t   O n C o m b a t S t a r t ( )  
 	 {  
 	 	 v a r   q u e n E n t i t y ,   g l y p h Q u e n   :   W 3 Q u e n E n t i t y ;  
 	 	 v a r   f o c u s ,   s t a m i n a   :   f l o a t ;  
 	 	 v a r   g l o w T a r g e t s ,   m o T a r g e t s ,   a c t o r s   :   a r r a y <   C A c t o r   > ;  
 	 	 v a r   d e l a y s   :   a r r a y <   f l o a t   > ;  
 	 	 v a r   r a n d ,   i   :   i n t ;  
 	 	 v a r   i s H o s t i l e ,   i s A l i v e ,   i s U n c o n s c i o u s   :   b o o l ;  
 	 	  
 	 	 s u p e r . O n C o m b a t S t a r t ( ) ;  
 	 	  
 	 	 i f   (   I s I n C o m b a t A c t i o n F r i e n d l y ( )   )  
 	 	 {  
 	 	 	 S e t B I s C o m b a t A c t i o n A l l o w e d ( t r u e ) ;  
 	 	 	 S e t B I s I n p u t A l l o w e d ( t r u e ,   ' O n C o m b a t A c t i o n S t a r t '   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( H a s B u f f ( E E T _ M u t a g e n 1 4 ) )  
 	 	 {  
 	 	 	 A d d T i m e r ( ' M u t a g e n 1 4 T i m e r ' ,   2 ,   t r u e ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( H a s B u f f ( E E T _ M u t a g e n 1 5 ) )  
 	 	 {  
 	 	 	 A d d A b i l i t y ( G e t B u f f ( E E T _ M u t a g e n 1 5 ) . G e t A b i l i t y N a m e ( ) ,   f a l s e ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 m u t a t i o n 1 2 I s O n C o o l d o w n   =   f a l s e ;  
 	 	  
 	 	  
 	 	 q u e n E n t i t y   =   ( W 3 Q u e n E n t i t y ) s i g n s [ S T _ Q u e n ] . e n t i t y ; 	 	  
 	 	  
 	 	  
 	 	 i f ( q u e n E n t i t y )  
 	 	 {  
 	 	 	 u s e d Q u e n I n C o m b a t   =   q u e n E n t i t y . I s A n y Q u e n A c t i v e ( ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 u s e d Q u e n I n C o m b a t   =   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f ( u s e d Q u e n I n C o m b a t   | |   H a s P o t i o n B u f f ( )   | |   I s E q u i p p e d S w o r d U p g r a d e d W i t h O i l ( t r u e )   | |   I s E q u i p p e d S w o r d U p g r a d e d W i t h O i l ( f a l s e ) )  
 	 	 {  
 	 	 	 S e t F a i l e d F u n d a m e n t a l s F i r s t A c h i e v e m e n t C o n d i t i o n ( t r u e ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f ( I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ P o t i o n M u t a g e n 1 )   | |   I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ P o t i o n M u t a g e n 2 )   | |   I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ P o t i o n M u t a g e n 3 )   | |   I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ P o t i o n M u t a g e n 4 ) )  
 	 	 	 	 S e t F a i l e d F u n d a m e n t a l s F i r s t A c h i e v e m e n t C o n d i t i o n ( t r u e ) ;  
 	 	 	 e l s e  
 	 	 	 	 S e t F a i l e d F u n d a m e n t a l s F i r s t A c h i e v e m e n t C o n d i t i o n ( f a l s e ) ;  
 	 	 }  
 	 	  
 	 	 i f ( C a n U s e S k i l l ( S _ S w o r d _ s 2 0 )   & &   I s T h r e a t e n e d ( ) )  
 	 	 {  
 	 	 	 f o c u s   =   G e t S t a t ( B C S _ F o c u s ) ;  
 	 	 	 i f ( f o c u s   <   1 )  
 	 	 	 {  
 	 	 	 	 G a i n S t a t ( B C S _ F o c u s ,   1   -   f o c u s ) ;  
 	 	 	 }  
 	 	 }  
  
 	 	 i f   (   H a s A b i l i t y ( ' G l y p h w o r d   1 7   _ S t a t s ' ,   t r u e )   & &   R a n d F ( )   <   C a l c u l a t e A t t r i b u t e V a l u e ( G e t A t t r i b u t e V a l u e ( ' q u e n _ a p p l y _ c h a n c e ' ) )   )  
 	 	 {  
 	 	 	 s t a m i n a   =   G e t S t a t ( B C S _ S t a m i n a ) ;  
 	 	 	 g l y p h Q u e n   =   ( W 3 Q u e n E n t i t y ) t h e G a m e . C r e a t e E n t i t y (   s i g n s [ S T _ Q u e n ] . t e m p l a t e ,   G e t W o r l d P o s i t i o n ( ) ,   G e t W o r l d R o t a t i o n ( )   ) ;  
 	 	 	 g l y p h Q u e n . I n i t (   s i g n O w n e r ,   s i g n s [ S T _ Q u e n ] . e n t i t y ,   t r u e   ) ;  
 	 	 	 g l y p h Q u e n . O n S t a r t e d ( ) ;  
 	 	 	 g l y p h Q u e n . O n T h r o w i n g ( ) ;  
 	 	 	 g l y p h Q u e n . O n E n d e d ( ) ;  
 	 	 	 F o r c e S e t S t a t ( B C S _ S t a m i n a ,   s t a m i n a ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 M e d i t a t i o n F o r c e A b o r t ( t r u e ) ;  
 	 	  
 	 	  
 	 	  
  
 	 	  
 	 	 i f (   I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 4   )   )  
 	 	 {  
 	 	 	 A d d E f f e c t D e f a u l t (   E E T _ M u t a t i o n 4 ,   t h i s ,   " c o m b a t   s t a r t " ,   f a l s e   ) ;  
 	 	 }  
 	 	 e l s e   i f (   I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 5   )   & &   G e t S t a t (   B C S _ F o c u s   )   > =   1 . f   )  
 	 	 {  
 	 	 	 A d d E f f e c t D e f a u l t (   E E T _ M u t a t i o n 5 ,   t h i s ,   " " ,   f a l s e   ) ;  
 	 	 }  
 	 	  
 	 	 e l s e   i f (   I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 7   )   )  
 	 	 {  
 	 	 	  
 	 	 	 	  
 	 	 	 	 R e m o v e T i m e r (   ' M u t a t i o n 7 C o m b a t S t a r t H a c k F i x G o '   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 A d d T i m e r (   ' M u t a t i o n 7 C o m b a t S t a r t H a c k F i x ' ,   1 . f ,   t r u e ,   ,   ,   ,   t r u e   ) ;  
 	 	 	  
 	 	 }  
 	 	 e l s e   i f (   I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 8   )   )  
 	 	 {  
 	 	 	 t h e G a m e . M u t a t i o n H U D F e e d b a c k (   M F T _ P l a y R e p e a t   ) ;  
 	 	 }  
 	 	  
 	 	 e l s e   i f (   I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 1 0   )   )  
 	 	 {  
 	 	 	 i f (   ! H a s B u f f (   E E T _ M u t a t i o n 1 0   )   & &   G e t S t a t (   B C S _ T o x i c i t y   )   >   0 . f   )  
 	 	 	 {  
 	 	 	 	 A d d E f f e c t D e f a u l t (   E E T _ M u t a t i o n 1 0 ,   t h i s ,   " M u t a t i o n   1 0 "   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 P l a y E f f e c t (   ' m u t a t i o n _ 1 0 '   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 P l a y E f f e c t (   ' c r i t i c a l _ t o x i c i t y '   ) ;  
 	 	 	 A d d T i m e r (   ' M u t a t i o n 1 0 S t o p E f f e c t ' ,   5 . f   ) ;  
 	 	 }  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   M u t a t i o n 7 C o m b a t S t a r t H a c k F i x (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 v a r   a c t o r s   :   a r r a y <   C A c t o r   > ;  
 	 	  
 	 	 a c t o r s   =   G e t E n e m i e s ( ) ;  
 	 	  
 	 	 i f (   a c t o r s . S i z e ( )   >   0   )  
 	 	 {  
 	 	 	  
 	 	 	 A d d T i m e r (   ' M u t a t i o n 7 C o m b a t S t a r t H a c k F i x G o ' ,   0 . 5 f   ) ;  
 	 	 	 R e m o v e T i m e r (   ' M u t a t i o n 7 C o m b a t S t a r t H a c k F i x '   ) ;  
 	 	 }  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   M u t a t i o n 7 C o m b a t S t a r t H a c k F i x G o (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 v a r   a c t o r s   :   a r r a y <   C A c t o r   > ;  
 	 	  
 	 	  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   I s I n F i s t F i g h t ( )   :   b o o l  
 	 {  
 	 	 v a r   e n e m i e s   :   a r r a y <   C A c t o r   > ;  
 	 	 v a r   i ,   j   :   i n t ;  
 	 	 v a r   i n v e n t   :   C I n v e n t o r y C o m p o n e n t ;  
 	 	 v a r   w e a p o n s   :   a r r a y <   S I t e m U n i q u e I d   > ;  
 	 	  
 	 	 i f (   I s I n F i s t F i g h t M i n i G a m e ( )   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 e n e m i e s   =   G e t E n e m i e s ( ) ;  
 	 	 f o r (   i = 0 ;   i < e n e m i e s . S i z e ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 w e a p o n s . C l e a r ( ) ;  
 	 	 	 i n v e n t   =   e n e m i e s [ i ] . G e t I n v e n t o r y ( ) ;  
 	 	 	 w e a p o n s   =   i n v e n t . G e t H e l d W e a p o n s ( ) ;  
 	 	 	  
 	 	 	 f o r (   j = 0 ;   j < w e a p o n s . S i z e ( ) ;   j + = 1   )  
 	 	 	 {  
 	 	 	 	 i f (   i n v e n t . I s I t e m F i s t s (   w e a p o n s [ j ]   )   )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   M u t a t i o n 1 0 S t o p E f f e c t (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 S t o p E f f e c t (   ' c r i t i c a l _ t o x i c i t y '   ) ;  
 	 }  
 	  
 	  
 	 e v e n t   O n C o m b a t F i n i s h e d ( )  
 	 {  
 	 	 v a r   m u t 1 7   :   W 3 M u t a g e n 1 7 _ E f f e c t ;  
 	 	 v a r   i n G a m e C o n f i g W r a p p e r   :   C I n G a m e C o n f i g W r a p p e r ;  
 	 	 v a r   d i s a b l e A u t o S h e a t h e   :   b o o l ;  
 	 	  
 	 	 s u p e r . O n C o m b a t F i n i s h e d ( ) ;  
 	 	  
 	 	  
 	 	 i f ( H a s B u f f ( E E T _ M u t a g e n 1 0 ) )  
 	 	 {  
 	 	 	 R e m o v e A b i l i t y A l l (   G e t B u f f ( E E T _ M u t a g e n 1 0 ) . G e t A b i l i t y N a m e ( )   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( H a s B u f f ( E E T _ M u t a g e n 1 4 ) )  
 	 	 {  
 	 	 	 R e m o v e A b i l i t y A l l (   G e t B u f f ( E E T _ M u t a g e n 1 4 ) . G e t A b i l i t y N a m e ( )   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( H a s B u f f ( E E T _ M u t a g e n 1 5 ) )  
 	 	 {  
 	 	 	 R e m o v e A b i l i t y A l l (   G e t B u f f ( E E T _ M u t a g e n 1 5 ) . G e t A b i l i t y N a m e ( )   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( H a s B u f f ( E E T _ M u t a g e n 1 7 ) )  
 	 	 {  
 	 	 	 m u t 1 7   =   ( W 3 M u t a g e n 1 7 _ E f f e c t ) G e t B u f f ( E E T _ M u t a g e n 1 7 ) ;  
 	 	 	 m u t 1 7 . C l e a r B o o s t ( ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( H a s B u f f ( E E T _ M u t a g e n 1 8 ) )  
 	 	 {  
 	 	 	 R e m o v e A b i l i t y A l l (   G e t B u f f ( E E T _ M u t a g e n 1 8 ) . G e t A b i l i t y N a m e ( )   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( H a s B u f f ( E E T _ M u t a g e n 2 2 ) )  
 	 	 {  
 	 	 	 R e m o v e A b i l i t y A l l (   G e t B u f f ( E E T _ M u t a g e n 2 2 ) . G e t A b i l i t y N a m e ( )   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( H a s B u f f ( E E T _ M u t a g e n 2 7 ) )  
 	 	 {  
 	 	 	 R e m o v e A b i l i t y A l l (   G e t B u f f ( E E T _ M u t a g e n 2 7 ) . G e t A b i l i t y N a m e ( )   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 R e m o v e B u f f (   E E T _ M u t a t i o n 3   ) ;  
 	 	  
 	 	  
 	 	 R e m o v e B u f f (   E E T _ M u t a t i o n 4   ) ;  
 	 	  
 	 	  
 	 	 R e m o v e B u f f (   E E T _ M u t a t i o n 5   ) ;  
 	 	  
 	 	  
 	 	 R e m o v e B u f f (   E E T _ M u t a t i o n 7 B u f f   ) ;  
 	 	 R e m o v e B u f f (   E E T _ M u t a t i o n 7 D e b u f f   ) ;  
 	 	 	  
 	 	 i f (   I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 7   )   )  
 	 	 {  
 	 	 	 t h e G a m e . M u t a t i o n H U D F e e d b a c k (   M F T _ P l a y H i d e   ) ;  
 	 	 }  
 	 	 e l s e   i f (   I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 8   )   )  
 	 	 {  
 	 	 	 t h e G a m e . M u t a t i o n H U D F e e d b a c k (   M F T _ P l a y H i d e   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 R e m o v e B u f f (   E E T _ M u t a t i o n 1 0   ) ;  
 	 	  
 	 	  
 	 	 R e m o v e B u f f (   E E T _ L y n x S e t B o n u s   ) ;  
 	 	  
 	 	  
 	 	 i f ( G e t S t a t ( B C S _ F o c u s )   >   0 )  
 	 	 {  
 	 	 	 A d d T i m e r ( ' D e l a y e d A d r e n a l i n e D r a i n ' ,   t h e G a m e . p a r a m s . A D R E N A L I N E _ D R A I N _ A F T E R _ C O M B A T _ D E L A Y ,   ,   ,   ,   t r u e ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 t h e P l a y e r . a b i l i t y M a n a g e r . R e s e t O v e r h e a l B o n u s ( ) ;  
 	 	  
 	 	 u s e d Q u e n I n C o m b a t   =   f a l s e ; 	 	  
 	 	  
 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . R e s e t S t a t ( E S _ F i n e s s e K i l l s ) ;  
 	 	  
 	 	 L o g C h a n n e l (   ' O n C o m b a t F i n i s h e d ' ,   " O n C o m b a t F i n i s h e d :   D e l a y e d S h e a t h S w o r d   t i m e r   a d d e d "   ) ;    
 	 	  
 	 	  
 	 	 i n G a m e C o n f i g W r a p p e r   =   ( C I n G a m e C o n f i g W r a p p e r ) t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) ;  
 	 	 d i s a b l e A u t o S h e a t h e   =   i n G a m e C o n f i g W r a p p e r . G e t V a r V a l u e (   ' G a m e p l a y ' ,   ' D i s a b l e A u t o m a t i c S w o r d S h e a t h e '   ) ; 	 	 	  
 	 	 i f (   ! d i s a b l e A u t o S h e a t h e   )  
 	 	 {  
 	 	 	 i f   (   S h o u l d A u t o S h e a t h S w o r d I n s t a n t l y ( )   )  
 	 	 	 	 A d d T i m e r (   ' D e l a y e d S h e a t h S w o r d ' ,   0 . 5 f   ) ;  
 	 	 	 e l s e  
 	 	 	 	 A d d T i m e r (   ' D e l a y e d S h e a t h S w o r d ' ,   2 . f   ) ;  
 	 	 }  
 	 	  
 	 	 O n B l o c k A l l C o m b a t T i c k e t s (   f a l s e   ) ;    
 	 	  
 	 	  
 	 	 r u n e w o r d I n f u s i o n T y p e   =   S T _ N o n e ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   P l a y H i t E f f e c t (   d a m a g e A c t i o n   :   W 3 D a m a g e A c t i o n   )  
 	 {  
 	 	 v a r   h i t R e a c t i o n T y p e 	 	 :   E H i t R e a c t i o n T y p e ;  
 	 	 v a r   i s A t B a c k 	 	 	 :   b o o l ;  
 	 	  
 	 	  
 	 	 i f (   d a m a g e A c t i o n . G e t M u t a t i o n 4 T r i g g e r e d ( )   )  
 	 	 {  
 	 	 	 h i t R e a c t i o n T y p e   =   d a m a g e A c t i o n . G e t H i t R e a c t i o n T y p e ( ) ;  
 	 	 	 i s A t B a c k   =   I s A t t a c k e r A t B a c k (   d a m a g e A c t i o n . a t t a c k e r   ) ;  
 	 	 	  
 	 	 	 i f (   h i t R e a c t i o n T y p e   ! =   E H R T _ H e a v y   )  
 	 	 	 {  
 	 	 	 	 i f (   i s A t B a c k   )  
 	 	 	 	 {  
 	 	 	 	 	 d a m a g e A c t i o n . S e t H i t E f f e c t (   ' l i g h t _ h i t _ b a c k _ t o x i c ' ,   t r u e   ) ; 	 	 	 	 	  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 d a m a g e A c t i o n . S e t H i t E f f e c t (   ' l i g h t _ h i t _ t o x i c '   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f (   i s A t B a c k   )  
 	 	 	 	 {  
 	 	 	 	 	 d a m a g e A c t i o n . S e t H i t E f f e c t (   ' h e a v y _ h i t _ b a c k _ t o x i c '   , t r u e   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 d a m a g e A c t i o n . S e t H i t E f f e c t (   ' h e a v y _ h i t _ t o x i c '   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 s u p e r . P l a y H i t E f f e c t (   d a m a g e A c t i o n   ) ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   D e l a y e d A d r e n a l i n e D r a i n ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 i f   (   ! H a s B u f f ( E E T _ R u n e w o r d 8 )   )  
 	 	 	 A d d E f f e c t D e f a u l t ( E E T _ A d r e n a l i n e D r a i n ,   t h i s ,   " a f t e r _ c o m b a t _ a d r e n a l i n e _ d r a i n " ) ;  
 	 }  
 	  
 	  
 	 p r o t e c t e d   f u n c t i o n   A t t a c k (   h i t T a r g e t   :   C G a m e p l a y E n t i t y ,   a n i m D a t a   :   C P r e A t t a c k E v e n t D a t a ,   w e a p o n I d   :   S I t e m U n i q u e I d ,   p a r r i e d   :   b o o l ,   c o u n t e r e d   :   b o o l ,   p a r r i e d B y   :   a r r a y < C A c t o r > ,   a t t a c k A n i m a t i o n N a m e   :   n a m e ,   h i t T i m e   :   f l o a t ,   w e a p o n E n t i t y   :   C I t e m E n t i t y )  
 	 {  
 	 	 v a r   m u t a g e n 1 7   :   W 3 M u t a g e n 1 7 _ E f f e c t ;  
 	 	  
 	 	 s u p e r . A t t a c k ( h i t T a r g e t ,   a n i m D a t a ,   w e a p o n I d ,   p a r r i e d ,   c o u n t e r e d ,   p a r r i e d B y ,   a t t a c k A n i m a t i o n N a m e ,   h i t T i m e ,   w e a p o n E n t i t y ) ;  
 	 	  
 	 	 i f (   ( C A c t o r ) h i t T a r g e t   & &   H a s B u f f ( E E T _ M u t a g e n 1 7 )   )  
 	 	 {  
 	 	 	 m u t a g e n 1 7   =   ( W 3 M u t a g e n 1 7 _ E f f e c t ) G e t B u f f ( E E T _ M u t a g e n 1 7 ) ;  
 	 	 	 i f ( m u t a g e n 1 7 . H a s B o o s t ( ) )  
 	 	 	 {  
 	 	 	 	 m u t a g e n 1 7 . C l e a r B o o s t ( ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f i n a l   t i m e r   f u n c t i o n   S p e c i a l A t t a c k L i g h t S u s t a i n C o s t ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 v a r   f o c u s P e r S e c ,   c o s t ,   d e l a y   :   f l o a t ;  
 	 	 v a r   r e d u c t i o n   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   s k i l l L e v e l   :   i n t ;  
 	 	  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( )   & &   I s A l i v e ( ) )  
 	 	 {  
 	 	 	 P a u s e S t a m i n a R e g e n ( ' W h i r l S k i l l ' ) ;  
 	 	 	  
 	 	 	 i f ( G e t S t a t ( B C S _ S t a m i n a )   >   0 )  
 	 	 	 {  
 	 	 	 	 c o s t   =   G e t S t a m i n a A c t i o n C o s t ( E S A T _ A b i l i t y ,   G e t S k i l l A b i l i t y N a m e ( S _ S w o r d _ s 0 1 ) ,   d t ) ;  
 	 	 	 	 d e l a y   =   G e t S t a m i n a A c t i o n D e l a y ( E S A T _ A b i l i t y ,   G e t S k i l l A b i l i t y N a m e ( S _ S w o r d _ s 0 1 ) ,   d t ) ;  
 	 	 	 	 s k i l l L e v e l   =   G e t S k i l l L e v e l ( S _ S w o r d _ s 0 1 ) ;  
 	 	 	 	  
 	 	 	 	 i f ( s k i l l L e v e l   >   1 )  
 	 	 	 	 {  
 	 	 	 	 	 r e d u c t i o n   =   G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 0 1 ,   ' c o s t _ r e d u c t i o n ' ,   f a l s e ,   t r u e )   *   ( s k i l l L e v e l   -   1 ) ;  
 	 	 	 	 	 c o s t   =   M a x F ( 0 ,   c o s t   *   ( 1   -   r e d u c t i o n . v a l u e M u l t i p l i c a t i v e )   -   r e d u c t i o n . v a l u e A d d i t i v e ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 D r a i n S t a m i n a ( E S A T _ F i x e d V a l u e ,   c o s t ,   d e l a y ,   G e t S k i l l A b i l i t y N a m e ( S _ S w o r d _ s 0 1 ) ) ;  
 	 	 	 }  
 	 	 	 e l s e 	 	 	 	  
 	 	 	 { 	 	 	 	  
 	 	 	 	 G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 0 1 ,   ' f o c u s _ c o s t _ p e r _ s e c ' ,   f a l s e ,   t r u e ) ;  
 	 	 	 	 f o c u s P e r S e c   =   G e t W h i r l F o c u s C o s t P e r S e c ( ) ;  
 	 	 	 	 D r a i n F o c u s ( f o c u s P e r S e c   *   d t ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f ( G e t S t a t ( B C S _ S t a m i n a )   < =   0   & &   G e t S t a t ( B C S _ F o c u s )   < =   0 )  
 	 	 {  
 	 	 	 O n P e r f o r m S p e c i a l A t t a c k ( t r u e ,   f a l s e ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t W h i r l F o c u s C o s t P e r S e c ( )   :   f l o a t  
 	 {  
 	 	 v a r   a b i l i t y   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   v a l   :   f l o a t ;  
 	 	 v a r   s k i l l L e v e l   :   i n t ;  
 	 	  
 	 	 a b i l i t y   =   G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 0 1 ,   ' f o c u s _ c o s t _ p e r _ s e c _ i n i t i a l ' ,   f a l s e ,   f a l s e ) ;  
 	 	 s k i l l L e v e l   =   G e t S k i l l L e v e l ( S _ S w o r d _ s 0 1 ) ;  
 	 	  
 	 	 i f ( s k i l l L e v e l   >   1 )  
 	 	 	 a b i l i t y   - =   G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 0 1 ,   ' c o s t _ r e d u c t i o n ' ,   f a l s e ,   f a l s e )   *   ( s k i l l L e v e l - 1 ) ;  
 	 	 	  
 	 	 v a l   =   C a l c u l a t e A t t r i b u t e V a l u e ( a b i l i t y ) ;  
 	 	  
 	 	 r e t u r n   v a l ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   t i m e r   f u n c t i o n   S p e c i a l A t t a c k H e a v y S u s t a i n C o s t ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 v a r   f o c u s H i g h l i g h t ,   r a t i o   :   f l o a t ;  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	 v a r   h u d W o l f H e a d M o d u l e   :   C R 4 H u d M o d u l e W o l f H e a d ; 	 	  
  
 	 	  
 	 	 D r a i n S t a m i n a ( E S A T _ A b i l i t y ,   0 ,   0 ,   G e t S k i l l A b i l i t y N a m e ( S _ S w o r d _ s 0 2 ) ,   d t ) ;  
  
 	 	  
 	 	 i f ( G e t S t a t ( B C S _ S t a m i n a )   < =   0 )  
 	 	 	 O n P e r f o r m S p e c i a l A t t a c k ( f a l s e ,   f a l s e ) ;  
 	 	 	  
 	 	  
 	 	 r a t i o   =   E n g i n e T i m e T o F l o a t ( t h e G a m e . G e t E n g i n e T i m e ( )   -   s p e c i a l H e a v y S t a r t E n g i n e T i m e )   /   s p e c i a l H e a v y C h a r g e D u r a t i o n ;  
 	 	  
 	 	  
 	 	 i f ( r a t i o   >   0 . 9 5 )  
 	 	 	 r a t i o   =   1 ;  
 	 	 	  
 	 	 S e t S p e c i a l A t t a c k T i m e R a t i o ( r a t i o ) ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   O n S p e c i a l A t t a c k H e a v y A c t i o n P r o c e s s ( )  
 	 {  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	 v a r   h u d W o l f H e a d M o d u l e   :   C R 4 H u d M o d u l e W o l f H e a d ;  
 	 	  
 	 	 s u p e r . O n S p e c i a l A t t a c k H e a v y A c t i o n P r o c e s s ( ) ;  
  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 i f   (   h u d   )  
 	 	 {  
 	 	 	 h u d W o l f H e a d M o d u l e   =   ( C R 4 H u d M o d u l e W o l f H e a d ) h u d . G e t H u d M o d u l e (   " W o l f H e a d M o d u l e "   ) ;  
 	 	 	 i f   (   h u d W o l f H e a d M o d u l e   )  
 	 	 	 {  
 	 	 	 	 h u d W o l f H e a d M o d u l e . R e s e t F o c u s P o i n t s ( ) ;  
 	 	 	 } 	 	  
 	 	 }  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   I s S p e c i a l L i g h t A t t a c k I n p u t H e l d   (   t i m e   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 v a r   h a s R e s o u r c e   :   b o o l ;  
 	 	  
 	 	 i f   (   G e t C u r r e n t S t a t e N a m e ( )   = =   ' C o m b a t S t e e l '   | |   G e t C u r r e n t S t a t e N a m e ( )   = =   ' C o m b a t S i l v e r '   )  
 	 	 {  
 	 	 	 i f   (   G e t B I s C o m b a t A c t i o n A l l o w e d ( )   & &   i n p u t H a n d l e r . I s A c t i o n A l l o w e d ( E I A B _ S w o r d A t t a c k ) )  
 	 	 	 {  
 	 	 	 	 i f ( G e t S t a t ( B C S _ S t a m i n a )   >   0 )  
 	 	 	 	 {  
 	 	 	 	 	 h a s R e s o u r c e   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 h a s R e s o u r c e   =   ( G e t S t a t ( B C S _ F o c u s )   > =   G e t W h i r l F o c u s C o s t P e r S e c ( )   *   t i m e ) ; 	 	 	 	 	  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f ( h a s R e s o u r c e )  
 	 	 	 	 {  
 	 	 	 	 	 S e t u p C o m b a t A c t i o n (   E B A T _ S p e c i a l A t t a c k _ L i g h t ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 	 R e m o v e T i m e r ( ' I s S p e c i a l L i g h t A t t a c k I n p u t H e l d ' ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f ( ! p l a y e d S p e c i a l A t t a c k M i s s i n g R e s o u r c e S o u n d )  
 	 	 	 	 {  
 	 	 	 	 	 I n d i c a t e T o o L o w A d r e n a l i n e ( ) ;  
 	 	 	 	 	 p l a y e d S p e c i a l A t t a c k M i s s i n g R e s o u r c e S o u n d   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 } 	 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 R e m o v e T i m e r ( ' I s S p e c i a l L i g h t A t t a c k I n p u t H e l d ' ) ;  
 	 	 }  
 	 } 	  
 	  
 	 t i m e r   f u n c t i o n   I s S p e c i a l H e a v y A t t a c k I n p u t H e l d   (   t i m e   :   f l o a t ,   i d   :   i n t   )  
 	 { 	 	  
 	 	 v a r   c o s t   :   f l o a t ;  
 	 	  
 	 	 i f   (   G e t C u r r e n t S t a t e N a m e ( )   = =   ' C o m b a t S t e e l '   | |   G e t C u r r e n t S t a t e N a m e ( )   = =   ' C o m b a t S i l v e r '   )  
 	 	 {  
 	 	 	 c o s t   =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 0 2 ,   ' s t a m i n a _ c o s t _ p e r _ s e c ' ,   f a l s e ,   f a l s e ) ) ;  
 	 	 	  
 	 	 	 i f (   G e t B I s C o m b a t A c t i o n A l l o w e d ( )   & &   i n p u t H a n d l e r . I s A c t i o n A l l o w e d ( E I A B _ S w o r d A t t a c k ) )  
 	 	 	 {  
 	 	 	 	 i f ( G e t S t a t ( B C S _ S t a m i n a )   > =   c o s t )  
 	 	 	 	 {  
 	 	 	 	 	 S e t u p C o m b a t A c t i o n (   E B A T _ S p e c i a l A t t a c k _ H e a v y ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 	 R e m o v e T i m e r ( ' I s S p e c i a l H e a v y A t t a c k I n p u t H e l d ' ) ;  
 	 	 	 	 	 t h e G a m e . H a p t i c S t a r t (   " h a p t i c _ r e n d _ s t o p "   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f ( ! p l a y e d S p e c i a l A t t a c k M i s s i n g R e s o u r c e S o u n d )  
 	 	 	 	 {  
 	 	 	 	 	 I n d i c a t e T o o L o w A d r e n a l i n e ( ) ;  
 	 	 	 	 	 p l a y e d S p e c i a l A t t a c k M i s s i n g R e s o u r c e S o u n d   =   t r u e ;  
 	 	 	 	 	 t h e G a m e . H a p t i c S t a r t (   " h a p t i c _ r e n d _ s t o p "   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 R e m o v e T i m e r ( ' I s S p e c i a l H e a v y A t t a c k I n p u t H e l d ' ) ;  
 	 	 	 t h e G a m e . H a p t i c S t a r t (   " h a p t i c _ r e n d _ s t o p "   ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   E v a d e P r e s s e d (   b u f f e r A c t i o n   :   E B u f f e r A c t i o n T y p e   )  
 	 {  
 	 	 v a r   c a t   :   f l o a t ;  
 	 	  
 	 	 i f (   ( b u f f e r A c t i o n   = =   E B A T _ D o d g e   & &   I s A c t i o n A l l o w e d ( E I A B _ D o d g e ) )   | |   ( b u f f e r A c t i o n   = =   E B A T _ R o l l   & &   I s A c t i o n A l l o w e d ( E I A B _ R o l l ) )   )  
 	 	 {  
 	 	 	  
 	 	 	 i f ( b u f f e r A c t i o n   ! =   E B A T _ R o l l   & &   S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l D o d g e ' ) )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d ( " t u t _ i n _ d o d g e " ,   1 ,   2 ) ;  
 	 	 	 	  
 	 	 	 	 i f ( F a c t s Q u e r y S u m ( " t u t _ f i g h t _ u s e _ s l o m o " )   >   0 )  
 	 	 	 	 {  
 	 	 	 	 	 t h e G a m e . R e m o v e T i m e S c a l e (   t h e G a m e . G e t T i m e s c a l e S o u r c e ( E T S _ T u t o r i a l F i g h t )   ) ;  
 	 	 	 	 	 F a c t s R e m o v e ( " t u t _ f i g h t _ s l o m o _ O N " ) ;  
 	 	 	 	 }  
 	 	 	 } 	 	 	 	  
 	 	 	 e l s e   i f ( b u f f e r A c t i o n   = =   E B A T _ R o l l   & &   S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l R o l l ' ) )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d ( " t u t _ i n _ r o l l " ,   1 ,   2 ) ;  
 	 	 	 	  
 	 	 	 	 i f ( F a c t s Q u e r y S u m ( " t u t _ f i g h t _ u s e _ s l o m o " )   >   0 )  
 	 	 	 	 {  
 	 	 	 	 	 t h e G a m e . R e m o v e T i m e S c a l e (   t h e G a m e . G e t T i m e s c a l e S o u r c e ( E T S _ T u t o r i a l F i g h t )   ) ;  
 	 	 	 	 	 F a c t s R e m o v e ( " t u t _ f i g h t _ s l o m o _ O N " ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 	  
 	 	 	 i f   (   G e t B I s I n p u t A l l o w e d ( )   )  
 	 	 	 { 	 	 	  
 	 	 	 	 i f   (   G e t B I s C o m b a t A c t i o n A l l o w e d ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 C r i t i c a l E f f e c t A n i m a t i o n I n t e r r u p t e d ( " D o d g e   2 " ) ;  
 	 	 	 	 	 P u s h C o m b a t A c t i o n O n B u f f e r (   b u f f e r A c t i o n ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 	 P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	 	 	 } 	 	 	 	 	  
 	 	 	 	 e l s e   i f   (   I s I n C o m b a t A c t i o n ( )   & &   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ A t t a c k   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   C a n P l a y H i t A n i m ( )   & &   I s T h r e a t e n e d ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 C r i t i c a l E f f e c t A n i m a t i o n I n t e r r u p t e d ( " D o d g e   1 " ) ;  
 	 	 	 	 	 	 P u s h C o m b a t A c t i o n O n B u f f e r (   b u f f e r A c t i o n ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 	 	 P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ; 	 	 	 	 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 P u s h C o m b a t A c t i o n O n B u f f e r (   b u f f e r A c t i o n ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 e l s e   i f   (   ! (   I s C u r r e n t S i g n C h a n n e l e d ( )   )   )  
 	 	 	 	 {  
 	 	 	 	 	  
 	 	 	 	 	 P u s h C o m b a t A c t i o n O n B u f f e r (   b u f f e r A c t i o n ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   I s I n C o m b a t A c t i o n ( )   & &   G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ A t t a c k   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   C a n P l a y H i t A n i m ( )   & &   I s T h r e a t e n e d ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 C r i t i c a l E f f e c t A n i m a t i o n I n t e r r u p t e d ( " D o d g e   3 " ) ;  
 	 	 	 	 	 	 P u s h C o m b a t A c t i o n O n B u f f e r (   b u f f e r A c t i o n ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 	 	 P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ; 	 	 	 	 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 P u s h C o m b a t A c t i o n O n B u f f e r (   b u f f e r A c t i o n ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 }  
 	 	 	 	 L o g C h a n n e l (   ' I n p u t N o t A l l o w e d ' ,   " I n p u t N o t A l l o w e d "   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ D o d g e ) ;  
 	 	 }  
 	 }  
 	 	  
 	  
 	 p u b l i c   f u n c t i o n   P r o c e s s C o m b a t A c t i o n B u f f e r ( )   :   b o o l  
 	 {  
 	 	 v a r   a c t i o n 	   	 	 	 :   E B u f f e r A c t i o n T y p e 	 	 	 =   t h i s . B u f f e r C o m b a t A c t i o n ;  
 	 	 v a r   s t a g e 	   	 	 	 :   E B u t t o n S t a g e   	 	 	 	 =   t h i s . B u f f e r B u t t o n S t a g e ; 	 	  
 	 	 v a r   t h r o w S t a g e 	 	 	 :   E T h r o w S t a g e ; 	 	  
 	 	 v a r   a c t i o n R e s u l t   	 	 :   b o o l   =   t r u e ;  
 	 	  
 	 	  
 	 	 i f (   i s I n F i n i s h e r   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f   (   a c t i o n   ! =   E B A T _ S p e c i a l A t t a c k _ H e a v y   )  
 	 	 	 s p e c i a l A t t a c k C a m e r a   =   f a l s e ; 	 	 	  
 	 	  
 	 	  
 	 	 i f ( s u p e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) )  
 	 	 	 r e t u r n   t r u e ; 	 	  
 	 	 	  
 	 	 s w i t c h   (   a c t i o n   )  
 	 	 { 	 	 	  
 	 	 	 c a s e   E B A T _ C a s t S i g n   :  
 	 	 	 {  
 	 	 	 	 s w i t c h   (   s t a g e   )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   B S _ P r e s s e d   :    
 	 	 	 	 	 {  
  
  
  
  
 	  
 	  
 	 	 	 	 	 	 	 	 a c t i o n R e s u l t   =   t h i s . C a s t S i g n ( ) ;  
 	 	 	 	 	 	 	 	 L o g C h a n n e l ( ' S i g n D e b u g ' ,   " C a s t S i g n ( ) " ) ;  
 	  
  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 	  
 	 	 	 	 	 d e f a u l t   :    
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   f a l s e ;  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 }  
 	 	 	 }   b r e a k ;  
 	 	 	  
 	 	 	 c a s e   E B A T _ S p e c i a l A t t a c k _ L i g h t   :  
 	 	 	 {  
 	 	 	 	 s w i t c h   (   s t a g e   )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   B S _ P r e s s e d   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   t h i s . O n P e r f o r m S p e c i a l A t t a c k (   t r u e ,   t r u e   ) ;  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 	  
 	 	 	 	 	 c a s e   B S _ R e l e a s e d   :  
 	 	 	 	 	 { 	 	 	 	 	 	  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   t h i s . O n P e r f o r m S p e c i a l A t t a c k (   t r u e ,   f a l s e   ) ;  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 	  
 	 	 	 	 	 d e f a u l t   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   f a l s e ;  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 }  
 	 	 	 }   b r e a k ;  
  
 	 	 	 c a s e   E B A T _ S p e c i a l A t t a c k _ H e a v y   :  
 	 	 	 {  
 	 	 	 	 s w i t c h   (   s t a g e   )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   B S _ P r e s s e d   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   t h i s . O n P e r f o r m S p e c i a l A t t a c k (   f a l s e ,   t r u e   ) ;  
 	 	 	 	 	 }   b r e a k ;  
 	 	 	 	 	  
 	 	 	 	 	 c a s e   B S _ R e l e a s e d   :  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t i o n R e s u l t   =   t h i s . O n P e r f o r m S p e c i a l A t t a c k (   f a l s e ,   f a l s e   ) ;  
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
 	 	  
 	 	  
 	 	 t h i s . C l e a n C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	  
 	 	 i f   ( a c t i o n R e s u l t )  
 	 	 {  
 	 	 	 S e t C o m b a t A c t i o n (   a c t i o n   )   ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	 	  
 	 	  
 	 e v e n t   O n P e r f o r m S p e c i a l A t t a c k (   i s L i g h t A t t a c k   :   b o o l ,   e n a b l e A t t a c k   :   b o o l   ) { } 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t E n e m i e s ( )   :   a r r a y <   C A c t o r   >  
 	 {  
 	 	 v a r   a c t o r s ,   a c t o r s 2   :   a r r a y < C A c t o r > ;  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	  
 	 	 a c t o r s   =   G e t W i t c h e r P l a y e r ( ) . G e t H o s t i l e E n e m i e s ( ) ;  
 	 	 A r r a y O f A c t o r s A p p e n d U n i q u e (   a c t o r s ,   G e t W i t c h e r P l a y e r ( ) . G e t M o v e T a r g e t s ( )   ) ;  
 	 	  
 	 	  
 	 	 t h e P l a y e r . G e t V i s i b l e E n e m i e s (   a c t o r s 2   ) ;  
 	 	 A r r a y O f A c t o r s A p p e n d U n i q u e (   a c t o r s ,   a c t o r s 2   ) ;  
 	 	  
 	 	 f o r (   i = a c t o r s . S i z e ( ) - 1 ;   i > = 0 ;   i - = 1   )  
 	 	 {  
 	 	 	 i f (   ! I s R e q u i r e d A t t i t u d e B e t w e e n (   a c t o r s [ i ] ,   t h i s ,   t r u e   )   )  
 	 	 	 {  
 	 	 	 	 a c t o r s . E r a s e F a s t (   i   ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   a c t o r s ;  
 	 }  
 	  
 	 e v e n t   O n P l a y e r T i c k T i m e r (   d e l t a T i m e   :   f l o a t   )  
 	 {  
 	 	 s u p e r . O n P l a y e r T i c k T i m e r (   d e l t a T i m e   ) ;  
 	 	  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 R G C _ U p d a t e ( ) ;  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 	  
 	 	 i f   (   ! I s I n C o m b a t ( )   )  
 	 	 {  
 	 	 	 f a s t A t t a c k C o u n t e r   =   0 ;  
 	 	 	 h e a v y A t t a c k C o u n t e r   =   0 ; 	 	 	  
 	 	 } 	 	  
 	 }  
 	  
 	 / / m o d W 3 R e d u x R G C + +  
 	 p u b l i c   f u n c t i o n   R G C _ U p d a t e ( )   :   v o i d  
 	 {  
 	 	 v a r   b o l t s A r r a y   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   e q u i p p e d B o l t ,   n e w I n f i n i t e B o l t ,   o l d I n f i n i t e B o l t   :   S I t e m U n i q u e I d ;  
 	 	 v a r   c u r r e n t I n f i n i t e B o l t N a m e   :   n a m e ;  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 G e t I t e m E q u i p p e d O n S l o t ( E E S _ B o l t ,   e q u i p p e d B o l t ) ;  
 	 	 c u r r e n t I n f i n i t e B o l t N a m e   =   G e t C u r r e n t I n f i n i t e B o l t N a m e ( ) ;  
  
 	 	 i f ( c u r r e n t I n f i n i t e B o l t N a m e   ! =   r g c I n f i n i t e B o l t N a m e )    
 	 	 {  
 	 	 	 b o l t s A r r a y   =   i n v . A d d A n I t e m ( c u r r e n t I n f i n i t e B o l t N a m e ,   1 ,   t r u e ,   t r u e ) ;  
 	 	 	 n e w I n f i n i t e B o l t   =   b o l t s A r r a y [ 0 ] ;  
 	 	 	 b o l t s A r r a y   =   i n v . G e t I t e m s B y N a m e ( r g c I n f i n i t e B o l t N a m e ) ;  
 	 	 	 i f ( b o l t s A r r a y . S i z e ( )   >   0 )  
 	 	 	 {  
 	 	 	 	 o l d I n f i n i t e B o l t   =   b o l t s A r r a y [ 0 ] ;  
 	 	 	 	 i f ( e q u i p p e d B o l t   = =   o l d I n f i n i t e B o l t )   {  
 	 	 	 	 	 R G C _ I n f i n i t e B o l t ( n e w I n f i n i t e B o l t ) ;  
 	 	 	 	 }  
  
 	 	 	 	 f o r ( i = b o l t s A r r a y . S i z e ( ) - 1 ;   i > = 0 ;   i - = 1 )  
 	 	 	 	 	 i n v . R e m o v e I t e m ( b o l t s A r r a y [ i ] ,   i n v . G e t I t e m Q u a n t i t y ( b o l t s A r r a y [ i ] )   ) ;  
 	 	 	 }  
  
 	 	 	 r g c I n f i n i t e B o l t N a m e   =   c u r r e n t I n f i n i t e B o l t N a m e ;  
 	 	 }  
  
 	 	 i f ( ! G e t I n v e n t o r y ( ) . H a s I n f i n i t e B o l t s ( ) )   {  
 	 	 	 i n v . A d d A n I t e m ( r g c I n f i n i t e B o l t N a m e ,   1 ,   t r u e ,   t r u e ) ;  
 	 	 }  
  
 	 	 i f ( r g c L a s t U s e d B o l t   = =   G e t I n v a l i d U n i q u e I d ( )   | |   ! G e t I n v e n t o r y ( ) . H a s I t e m B y I d ( r g c L a s t U s e d B o l t ) )  
 	 	 {  
 	 	 	 r g c L a s t U s e d B o l t   =   R G C _ N e x t I t e m F o r S l o t ( E E S _ B o l t ) ;  
 	 	 }  
  
 	 	 i f ( e q u i p p e d B o l t   = =   G e t I n v a l i d U n i q u e I d ( ) )    
 	 	 {  
 	 	 	 R G C _ I n f i n i t e B o l t ( ) ;  
 	 	 }  
 	 }  
 	 / / m o d W 3 R e d u x R G C - -  
 	  
 	 p r o t e c t e d   f u n c t i o n   P r e p a r e A t t a c k A c t i o n (   h i t T a r g e t   :   C G a m e p l a y E n t i t y ,   a n i m D a t a   :   C P r e A t t a c k E v e n t D a t a ,   w e a p o n I d   :   S I t e m U n i q u e I d ,   p a r r i e d   :   b o o l ,   c o u n t e r e d   :   b o o l ,   p a r r i e d B y   :   a r r a y < C A c t o r > ,   a t t a c k A n i m a t i o n N a m e   :   n a m e ,   h i t T i m e   :   f l o a t ,   w e a p o n E n t i t y   :   C I t e m E n t i t y ,   o u t   a t t a c k A c t i o n   :   W 3 A c t i o n _ A t t a c k )   :   b o o l  
 	 {  
 	 	 v a r   r e t   :   b o o l ;  
 	 	 v a r   s k i l l   :   E S k i l l ;  
 	  
 	 	 r e t   =   s u p e r . P r e p a r e A t t a c k A c t i o n ( h i t T a r g e t ,   a n i m D a t a ,   w e a p o n I d ,   p a r r i e d ,   c o u n t e r e d ,   p a r r i e d B y ,   a t t a c k A n i m a t i o n N a m e ,   h i t T i m e ,   w e a p o n E n t i t y ,   a t t a c k A c t i o n ) ;  
 	 	  
 	 	 i f ( ! r e t )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	  
 	 	 i f ( a t t a c k A c t i o n . I s A c t i o n M e l e e ( ) )  
 	 	 { 	 	 	  
 	 	 	 s k i l l   =   S k i l l N a m e T o E n u m (   a t t a c k A c t i o n . G e t A t t a c k T y p e N a m e ( )   ) ;  
 	 	 	 i f (   s k i l l   ! =   S _ S U n d e f i n e d   & &   C a n U s e S k i l l ( s k i l l ) )  
 	 	 	 {  
 	 	 	 	 i f ( I s L i g h t A t t a c k ( a n i m D a t a . a t t a c k N a m e ) )  
 	 	 	 	 	 f a s t A t t a c k C o u n t e r   + =   1 ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 f a s t A t t a c k C o u n t e r   =   0 ;  
 	 	 	 	  
 	 	 	 	 i f ( I s H e a v y A t t a c k ( a n i m D a t a . a t t a c k N a m e ) )  
 	 	 	 	 	 h e a v y A t t a c k C o u n t e r   + =   1 ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 h e a v y A t t a c k C o u n t e r   =   0 ; 	 	 	 	  
 	 	 	 } 	 	  
 	 	 }  
 	 	  
 	 	 A d d T i m e r ( ' F a s t A t t a c k C o u n t e r D e c a y ' , 5 . 0 ) ;  
 	 	 A d d T i m e r ( ' H e a v y A t t a c k C o u n t e r D e c a y ' , 5 . 0 ) ;  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   T e s t P a r r y A n d C o u n t e r ( d a t a   :   C P r e A t t a c k E v e n t D a t a ,   w e a p o n I d   :   S I t e m U n i q u e I d ,   o u t   p a r r i e d   :   b o o l ,   o u t   c o u n t e r e d   :   b o o l )   :   a r r a y < C A c t o r >  
 	 {  
 	 	  
 	 	 i f ( S k i l l N a m e T o E n u m ( a t t a c k A c t i o n N a m e )   = =   S _ S w o r d _ s 0 2 )  
 	 	 	 d a t a . C a n _ P a r r y _ A t t a c k   =   f a l s e ;  
 	 	 	  
 	 	 r e t u r n   s u p e r . T e s t P a r r y A n d C o u n t e r ( d a t a ,   w e a p o n I d ,   p a r r i e d ,   c o u n t e r e d ) ;  
 	 }  
 	 	  
 	 p r i v a t e   t i m e r   f u n c t i o n   F a s t A t t a c k C o u n t e r D e c a y ( d e l t a   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 f a s t A t t a c k C o u n t e r   =   0 ;  
 	 }  
 	  
 	 p r i v a t e   t i m e r   f u n c t i o n   H e a v y A t t a c k C o u n t e r D e c a y ( d e l t a   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 h e a v y A t t a c k C o u n t e r   =   0 ;  
 	 }  
 	 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t C r a f t i n g S c h e m a t i c s N a m e s ( )   :   a r r a y < n a m e > 	 	 { r e t u r n   c r a f t i n g S c h e m a t i c s ; }  
 	  
 	 p u b l i c   f u n c t i o n   R e m o v e A l l C r a f t i n g S c h e m a t i c s ( )  
 	 {  
 	 	 c r a f t i n g S c h e m a t i c s . C l e a r ( ) ;  
 	 }  
 	  
 	  
 	 f u n c t i o n   A d d C r a f t i n g S c h e m a t i c (   n a m   :   n a m e ,   o p t i o n a l   i s S i l e n t   :   b o o l ,   o p t i o n a l   s k i p T u t o r i a l U p d a t e   :   b o o l   )   :   b o o l  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 i f ( ! s k i p T u t o r i a l U p d a t e   & &   S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l C r a f t i n g G o t R e c i p e ' ) )  
 	 	 {  
 	 	 	 F a c t s A d d ( " t u t _ r e c e i v e d _ s c h e m a t i c " ) ;  
 	 	 }  
 	 	  
 	 	 f o r ( i = 0 ;   i < c r a f t i n g S c h e m a t i c s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 i f ( c r a f t i n g S c h e m a t i c s [ i ]   = =   n a m )  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 	  
 	 	 	 i f ( S t r C m p ( c r a f t i n g S c h e m a t i c s [ i ] , n a m )   >   0 )  
 	 	 	 {  
 	 	 	 	 c r a f t i n g S c h e m a t i c s . I n s e r t ( i , n a m ) ;  
 	 	 	 	 A d d C r a f t i n g H u d N o t i f i c a t i o n (   n a m ,   i s S i l e n t   ) ;  
 	 	 	 	 t h e G a m e . G e t G l o b a l E v e n t s M a n a g e r ( ) . O n S c r i p t e d E v e n t (   S E C _ C r a f t i n g S c h e m a t i c s   ) ;  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 } 	 	 	  
 	 	 } 	  
  
 	 	  
 	 	 c r a f t i n g S c h e m a t i c s . P u s h B a c k ( n a m ) ;  
 	 	 A d d C r a f t i n g H u d N o t i f i c a t i o n (   n a m ,   i s S i l e n t   ) ;  
 	 	 t h e G a m e . G e t G l o b a l E v e n t s M a n a g e r ( ) . O n S c r i p t e d E v e n t (   S E C _ C r a f t i n g S c h e m a t i c s   ) ;  
 	 	 r e t u r n   t r u e ; 	  
 	 }  
 	  
 	 f u n c t i o n   A d d C r a f t i n g H u d N o t i f i c a t i o n (   n a m   :   n a m e ,   i s S i l e n t   :   b o o l   )  
 	 {  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	 i f (   ! i s S i l e n t   )  
 	 	 {  
 	 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 	 i f (   h u d   )  
 	 	 	 {  
 	 	 	 	 h u d . O n C r a f t i n g S c h e m a t i c U p d a t e (   n a m   ) ;  
 	 	 	 }  
 	 	 }  
 	 } 	  
 	  
 	 f u n c t i o n   A d d A l c h e m y H u d N o t i f i c a t i o n (   n a m   :   n a m e ,   i s S i l e n t   :   b o o l   )  
 	 {  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	 i f (   ! i s S i l e n t   )  
 	 	 {  
 	 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 	 i f (   h u d   )  
 	 	 	 {  
 	 	 	 	 h u d . O n A l c h e m y S c h e m a t i c U p d a t e (   n a m   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t E x p a n d e d C r a f t i n g C a t e g o r i e s ( )   :   a r r a y <   n a m e   >  
 	 {  
 	 	 r e t u r n   e x p a n d e d C r a f t i n g C a t e g o r i e s ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   A d d E x p a n d e d C r a f t i n g C a t e g o r y (   c a t e g o r y   :   n a m e   )  
 	 {  
 	 	 i f   (   I s N a m e V a l i d (   c a t e g o r y   )   )  
 	 	 {  
 	 	 	 A r r a y O f N a m e s P u s h B a c k U n i q u e (   e x p a n d e d C r a f t i n g C a t e g o r i e s ,   c a t e g o r y   ) ;  
 	 	 }  
 	 }  
  
 	 p u b l i c   f u n c t i o n   R e m o v e E x p a n d e d C r a f t i n g C a t e g o r y (   c a t e g o r y   :   n a m e   )  
 	 {  
 	 	 i f   (   I s N a m e V a l i d (   c a t e g o r y   )   )  
 	 	 {  
 	 	 	 e x p a n d e d C r a f t i n g C a t e g o r i e s . R e m o v e (   c a t e g o r y   ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t C r a f t i n g F i l t e r s ( s h o w H a s I n g r e   :   b o o l ,   s h o w M i s s i n g I n g r e   :   b o o l ,   s h o w A l r e a d y C r a f t e d   :   b o o l   )  
 	 {  
 	 	 c r a f t i n g F i l t e r s . s h o w C r a f t a b l e   =   s h o w H a s I n g r e ;  
 	 	 c r a f t i n g F i l t e r s . s h o w M i s s i n g I n g r e   =   s h o w M i s s i n g I n g r e ;  
 	 	 c r a f t i n g F i l t e r s . s h o w A l r e a d y C r a f t e d   =   s h o w A l r e a d y C r a f t e d ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t C r a f t i n g F i l t e r s ( )   :   S C r a f t i n g F i l t e r s  
 	 {  
 	 	  
 	 	 i f   (   c r a f t i n g F i l t e r s . s h o w C r a f t a b l e   = =   f a l s e   & &   c r a f t i n g F i l t e r s . s h o w M i s s i n g I n g r e   = =   f a l s e   & &   c r a f t i n g F i l t e r s . s h o w A l r e a d y C r a f t e d   = =   f a l s e   )  
 	 	 {  
 	 	 	 c r a f t i n g F i l t e r s . s h o w C r a f t a b l e   =   t r u e ;  
 	 	 	 c r a f t i n g F i l t e r s . s h o w M i s s i n g I n g r e   =   t r u e ;  
 	 	 	 c r a f t i n g F i l t e r s . s h o w A l r e a d y C r a f t e d   =   f a l s e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   c r a f t i n g F i l t e r s ;  
 	 }  
  
 	  
 	  
 	  
 	  
 	 e v e n t   O n M u t a t i o n 1 1 T r i g g e r e d ( )  
 	 {  
 	 	 v a r   m i n ,   m a x   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   h e a l V a l u e   :   f l o a t ;  
 	 	 v a r   q u e n E n t i t y   :   W 3 Q u e n E n t i t y ;  
 	 	  
 	 	  
 	 	 i f (   I s S w i m m i n g ( )   | |   I s D i v i n g ( )   | |   I s S a i l i n g ( )   | |   I s U s i n g H o r s e ( )   | |   I s U s i n g B o a t ( )   | |   I s U s i n g V e h i c l e ( )   | |   I s U s i n g E x p l o r a t i o n ( )   )  
 	 	 {  
 	 	 	  
 	 	 	 F o r c e S e t S t a t (   B C S _ V i t a l i t y ,   G e t S t a t M a x (   B C S _ V i t a l i t y   )   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 t h e G a m e . M u t a t i o n H U D F e e d b a c k (   M F T _ P l a y O n c e   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 G C a m e r a S h a k e (   1 . 0 f ,   ,   ,   ,   t r u e ,   ' c a m e r a _ s h a k e _ l o o p _ l v l 1 _ 1 '   ) ;  
 	 	 	 A d d T i m e r (   ' S t o p M u t a t i o n 1 1 C a m S h a k e ' ,   2 . f   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 t h e G a m e . V i b r a t e C o n t r o l l e r V e r y H a r d (   2 . f   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 M u t a t i o n 1 1 S h o c k W a v e (   t r u e   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 A d d E f f e c t D e f a u l t (   E E T _ M u t a t i o n 1 1 D e b u f f ,   N U L L ,   " M u t a t i o n   1 1   D e b u f f " ,   f a l s e   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 A d d E f f e c t D e f a u l t (   E E T _ M u t a t i o n 1 1 B u f f ,   t h i s ,   " M u t a t i o n   1 1 " ,   f a l s e   ) ;  
 	 	 }  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   S t o p M u t a t i o n 1 1 C a m S h a k e (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . S t o p A n i m a t i o n (   ' c a m e r a _ s h a k e _ l o o p _ l v l 1 _ 1 '   ) ;  
 	 }  
 	  
 	 p r i v a t e   v a r   m u t a t i o n 1 2 I s O n C o o l d o w n   :   b o o l ;  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   A d d M u t a t i o n 1 2 D e c o c t i o n ( )  
 	 {  
 	 	 v a r   p a r a m s   :   S C u s t o m E f f e c t P a r a m s ;  
 	 	 v a r   b u f f s   :   a r r a y <   E E f f e c t T y p e   > ;  
 	 	 v a r   e x i s t i n g D e c o c t i o n B u f f s   :   a r r a y < C B a s e G a m e p l a y E f f e c t > ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   e f f e c t T y p e   :   E E f f e c t T y p e ;  
 	 	 v a r   d e c o c t i o n s   :   a r r a y <   S I t e m U n i q u e I d   > ;  
 	 	 v a r   t m p N a m e   :   n a m e ;  
 	 	 v a r   m i n ,   m a x   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	  
 	 	 i f (   m u t a t i o n 1 2 I s O n C o o l d o w n   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 e x i s t i n g D e c o c t i o n B u f f s   =   G e t D r u n k M u t a g e n s (   " M u t a t i o n 1 2 "   ) ;  
 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 1 2 ' ,   ' m a x c a p ' ,   m i n ,   m a x   ) ;  
 	 	 i f (   e x i s t i n g D e c o c t i o n B u f f s . S i z e ( )   > =   m i n . v a l u e A d d i t i v e   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 m u t a t i o n 1 2 I s O n C o o l d o w n   =   t r u e ; 	 	  
 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 1 2 ' ,   ' c o o l d o w n ' ,   m i n ,   m a x   ) ;  
 	 	 A d d T i m e r (   ' M u t a t i o n 1 2 C o o l d o w n ' ,   C a l c u l a t e A t t r i b u t e V a l u e (   m i n   )   ) ;  
 	 	  
 	 	  
 	 	 d e c o c t i o n s   =   i n v . G e t I t e m s B y T a g (   ' M u t a g e n '   ) ;  
 	 	  
 	 	  
 	 	 f o r (   i = d e c o c t i o n s . S i z e ( ) - 1 ;   i > = 0 ;   i - = 1   )  
 	 	 {  
 	 	 	 i n v . G e t P o t i o n I t e m B u f f D a t a (   d e c o c t i o n s [ i ] ,   e f f e c t T y p e ,   t m p N a m e   ) ;  
 	 	 	 i f (   H a s B u f f (   e f f e c t T y p e   )   )  
 	 	 	 {  
 	 	 	 	 d e c o c t i o n s . E r a s e F a s t (   i   ) ;  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 }  
 	 	 	 b u f f s . P u s h B a c k (   e f f e c t T y p e   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   b u f f s . S i z e ( )   = =   0   )  
 	 	 {  
 	 	 	 f o r (   i = E E T _ M u t a g e n 0 1 ;   i < = E E T _ M u t a g e n 2 8 ;   i + = 1   )  
 	 	 	 {  
 	 	 	 	 i f (   ! H a s B u f f (   i   )   )  
 	 	 	 	 {  
 	 	 	 	 	 b u f f s . P u s h B a c k (   i   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 b u f f s . R e m o v e (   E E T _ M u t a g e n 1 6   ) ;  
 	 	 b u f f s . R e m o v e (   E E T _ M u t a g e n 2 4   ) ;  
 	 	  
 	 	  
 	 	 i f (   b u f f s . S i z e ( )   = =   0   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 1 2 ' ,   ' d u r a t i o n ' ,   m i n ,   m a x   ) ;  
 	 	 p a r a m s . e f f e c t T y p e   =   b u f f s [   R a n d R a n g e (   b u f f s . S i z e ( )   )   ] ;  
 	 	 p a r a m s . c r e a t o r   =   t h i s ;  
 	 	 p a r a m s . s o u r c e N a m e   =   " M u t a t i o n 1 2 " ;  
 	 	 p a r a m s . d u r a t i o n   =   m i n . v a l u e A d d i t i v e ;  
 	 	 A d d E f f e c t C u s t o m (   p a r a m s   ) ;  
 	 	 (   (   W 3 M u t a g e n _ E f f e c t   )   G e t B u f f (   p a r a m s . e f f e c t T y p e ,   p a r a m s . s o u r c e N a m e   )   ) . O v e r r i d e I c o n (   D e c o c t i o n E f f e c t T y p e T o I t e m N a m e (   p a r a m s . e f f e c t T y p e   )   ) ;  
 	 	  
 	 	  
 	 	 i f   (   ! I s E f f e c t A c t i v e (   ' i n v i s i b l e '   )   )  
 	 	 {  
 	 	 	 P l a y E f f e c t (   ' u s e _ p o t i o n '   ) ;  
 	 	 }  
 	 	  
 	 	 t h e G a m e . M u t a t i o n H U D F e e d b a c k (   M F T _ P l a y O n c e   ) ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   M u t a t i o n 1 2 C o o l d o w n (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 m u t a t i o n 1 2 I s O n C o o l d o w n   =   f a l s e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   H a s R e s o u r c e s T o S t a r t A n y M u t a t i o n R e s e a r c h ( )   :   b o o l  
 	 {  
 	 	 v a r   g r e e n P o i n t s ,   r e d P o i n t s ,   b l u e P o i n t s ,   c o u n t   :   i n t ;  
 	 	 v a r   i t e m I D s   :   a r r a y <   S I t e m U n i q u e I d   > ;  
 	 	  
 	 	 i f (   l e v e l M a n a g e r . G e t P o i n t s F r e e (   E S k i l l P o i n t   )   >   0   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 c o u n t   =   i n v . G e t I t e m Q u a n t i t y B y N a m e (   ' G r e a t e r   m u t a g e n   g r e e n '   ) ;  
 	 	 i f (   c o u n t   >   0   )  
 	 	 {  
 	 	 	 i t e m I D s   =   i n v . G e t I t e m s B y N a m e (   ' G r e a t e r   m u t a g e n   g r e e n '   ) ;  
 	 	 	 g r e e n P o i n t s   =   i n v . G e t M u t a t i o n R e s e a r c h P o i n t s (   S C _ G r e e n ,   i t e m I D s [ 0 ]   ) ;  
 	 	 	 i f (   g r e e n P o i n t s   >   0   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 } 	  
 	 	 c o u n t   =   i n v . G e t I t e m Q u a n t i t y B y N a m e (   ' G r e a t e r   m u t a g e n   r e d '   ) ;  
 	 	 i f (   c o u n t   >   0   )  
 	 	 {  
 	 	 	 i t e m I D s . C l e a r ( ) ;  
 	 	 	 i t e m I D s   =   i n v . G e t I t e m s B y N a m e (   ' G r e a t e r   m u t a g e n   r e d '   ) ;  
 	 	 	 r e d P o i n t s   =   i n v . G e t M u t a t i o n R e s e a r c h P o i n t s (   S C _ R e d ,   i t e m I D s [ 0 ]   ) ;  
 	 	 	 i f (   r e d P o i n t s   >   0   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 } 	 	  
 	 	 c o u n t   =   i n v . G e t I t e m Q u a n t i t y B y N a m e (   ' G r e a t e r   m u t a g e n   b l u e '   ) ;  
 	 	 i f (   c o u n t   >   0   )  
 	 	 {  
 	 	 	 i t e m I D s . C l e a r ( ) ;  
 	 	 	 i t e m I D s   =   i n v . G e t I t e m s B y N a m e (   ' G r e a t e r   m u t a g e n   b l u e '   ) ;  
 	 	 	 b l u e P o i n t s   =   i n v . G e t M u t a t i o n R e s e a r c h P o i n t s (   S C _ B l u e ,   i t e m I D s [ 0 ]   ) ;  
 	 	 	 i f (   b l u e P o i n t s   >   0   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 } 	 	  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   M u t a t i o n 1 1 S t a r t A n i m a t i o n ( )  
 	 {  
 	 	  
 	 	 t h e P l a y e r . A c t i o n P l a y S l o t A n i m a t i o n A s y n c (   ' P L A Y E R _ S L O T ' ,   ' g e r a l t _ m u t a t i o n _ 1 1 ' ,   0 . 2 ,   0 . 2   ) ;  
 	 	  
 	 	  
 	 	 B l o c k A l l A c t i o n s (   ' M u t a t i o n 1 1 ' ,   t r u e   ) ;  
 	 	  
 	 	  
 	 	 l o o p i n g C a m e r a S h a k e A n i m N a m e   =   ' c a m e r a _ s h a k e _ l o o p _ l v l 1 _ 1 ' ;  
 	 	 G C a m e r a S h a k e (   1 . 0 f ,   ,   ,   ,   t r u e ,   l o o p i n g C a m e r a S h a k e A n i m N a m e   ) ;  
 	 	  
 	 	  
 	 	 t h e G a m e . V i b r a t e C o n t r o l l e r V e r y H a r d (   1 5 . f   ) ;  
 	 	  
 	 	  
 	 	 s t o r e d I n t e r a c t i o n P r i o r i t y   =   G e t I n t e r a c t i o n P r i o r i t y ( ) ;  
 	 	 S e t I n t e r a c t i o n P r i o r i t y (   I P _ M a x _ U n p u s h a b l e   ) ;  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ M u t a t i o n 1 1 S h o c k W a v e (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 M u t a t i o n 1 1 S h o c k W a v e (   f a l s e   ) ;  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   M u t a t i o n 1 1 S h o c k W a v e (   s k i p Q u e n S i g n   :   b o o l   )  
 	 {  
 	 	 v a r   a c t i o n   :   W 3 D a m a g e A c t i o n ;  
 	 	 v a r   e n t s   :   a r r a y <   C G a m e p l a y E n t i t y   > ;  
 	 	 v a r   i ,   j   :   i n t ;  
 	 	 v a r   d a m a g e s   :   a r r a y <   S R a w D a m a g e   > ;  
 	  
 	 	  
 	 	 F i n d G a m e p l a y E n t i t i e s I n S p h e r e ( e n t s ,   G e t W o r l d P o s i t i o n ( ) ,   5 . f ,   1 0 0 0 ,   ' ' ,   F L A G _ O n l y A l i v e A c t o r s   +   F L A G _ E x c l u d e T a r g e t   +   F L A G _ A t t i t u d e _ H o s t i l e   +   F L A G _ A t t i t u d e _ N e u t r a l ,   t h i s ) ;  
 	 	  
 	 	 i f (   e n t s . S i z e ( )   >   0   )  
 	 	 {  
 	 	 	 d a m a g e s   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t D a m a g e s F r o m A b i l i t y (   ' M u t a t i o n 1 1 '   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 f o r ( i = 0 ;   i < e n t s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 a c t i o n   =   n e w   W 3 D a m a g e A c t i o n   i n   t h e G a m e ;  
 	 	 	 a c t i o n . I n i t i a l i z e (   t h i s ,   e n t s [ i ] ,   N U L L ,   " M u t a t i o n 1 1 " ,   E H R T _ H e a v y ,   C P S _ S p e l l P o w e r ,   f a l s e ,   f a l s e ,   t r u e ,   f a l s e   ) ;  
 	 	 	  
 	 	 	 f o r (   j = 0 ;   j < d a m a g e s . S i z e ( ) ;   j + = 1   )  
 	 	 	 {  
 	 	 	 	 a c t i o n . A d d D a m a g e (   d a m a g e s [ j ] . d m g T y p e ,   d a m a g e s [ j ] . d m g V a l   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 a c t i o n . S e t C a n n o t R e t u r n D a m a g e (   t r u e   ) ;  
 	 	 	 a c t i o n . S e t P r o c e s s B u f f s I f N o D a m a g e (   t r u e   ) ;  
 	 	 	 a c t i o n . A d d E f f e c t I n f o (   E E T _ K n o c k d o w n T y p e A p p l i c a t o r   ) ;  
 	 	 	 a c t i o n . S e t H i t A n i m a t i o n P l a y T y p e (   E A H A _ F o r c e Y e s   ) ;  
 	 	 	 a c t i o n . S e t C a n P l a y H i t P a r t i c l e (   f a l s e   ) ;  
 	 	 	  
 	 	 	 t h e G a m e . d a m a g e M g r . P r o c e s s A c t i o n (   a c t i o n   ) ;  
 	 	 	 d e l e t e   a c t i o n ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 m u t a t i o n 1 1 Q u e n E n t i t y   =   (   W 3 Q u e n E n t i t y   ) G e t S i g n E n t i t y (   S T _ Q u e n   ) ;  
 	 	 i f (   ! m u t a t i o n 1 1 Q u e n E n t i t y   )  
 	 	 {  
 	 	 	 m u t a t i o n 1 1 Q u e n E n t i t y   =   ( W 3 Q u e n E n t i t y ) t h e G a m e . C r e a t e E n t i t y (   G e t S i g n T e m p l a t e (   S T _ Q u e n   ) ,   G e t W o r l d P o s i t i o n ( ) ,   G e t W o r l d R o t a t i o n ( )   ) ;  
 	 	 	 m u t a t i o n 1 1 Q u e n E n t i t y . C r e a t e A t t a c h m e n t (   t h i s ,   ' q u e n _ s p h e r e '   ) ;  
 	 	 	 A d d T i m e r (   ' D e s t r o y M u t a t i o n 1 1 Q u e n E n t i t y ' ,   2 . f   ) ;  
 	 	 }  
 	 	 m u t a t i o n 1 1 Q u e n E n t i t y . P l a y H i t E f f e c t (   ' q u e n _ i m p u l s e _ e x p l o d e ' ,   m u t a t i o n 1 1 Q u e n E n t i t y . G e t W o r l d R o t a t i o n ( )   ) ;  
 	 	  
 	 	 i f (   ! s k i p Q u e n S i g n   )  
 	 	 {  
 	 	 	  
 	 	 	 P l a y E f f e c t (   ' m u t a t i o n _ 1 1 _ s e c o n d _ l i f e '   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 R e s t o r e Q u e n (   1 0 0 0 0 0 0 . f ,   1 0 . f ,   t r u e   ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   v a r   m u t a t i o n 1 1 Q u e n E n t i t y   :   W 3 Q u e n E n t i t y ;  
 	 p r i v a t e   v a r   s t o r e d I n t e r a c t i o n P r i o r i t y   :   E I n t e r a c t i o n P r i o r i t y ;  
 	  
 	 t i m e r   f u n c t i o n   D e s t r o y M u t a t i o n 1 1 Q u e n E n t i t y (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 i f (   m u t a t i o n 1 1 Q u e n E n t i t y   )  
 	 	 {  
 	 	 	 m u t a t i o n 1 1 Q u e n E n t i t y . D e s t r o y ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ M u t a t i o n 1 1 A n i m E n d (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i f (   a n i m E v e n t T y p e   = =   A E T _ D u r a t i o n E n d   )  
 	 	 {  
 	 	 	  
 	 	 	 B l o c k A l l A c t i o n s (   ' M u t a t i o n 1 1 ' ,   f a l s e   ) ; 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 t h e G a m e . G e t G a m e C a m e r a ( ) . S t o p A n i m a t i o n (   ' c a m e r a _ s h a k e _ l o o p _ l v l 1 _ 1 '   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 t h e G a m e . S t o p V i b r a t e C o n t r o l l e r ( ) ;  
 	 	 	  
 	 	 	  
 	 	 	 S e t I n t e r a c t i o n P r i o r i t y (   s t o r e d I n t e r a c t i o n P r i o r i t y   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 R e m o v e B u f f (   E E T _ M u t a t i o n 1 1 B u f f ,   t r u e   ) ;  
 	 	 }  
 	 	 e l s e   i f   (   a n i m E v e n t T y p e   = =   A E T _ D u r a t i o n S t a r t   | |   a n i m E v e n t T y p e   = =   A E T _ D u r a t i o n S t a r t I n T h e M i d d l e   )  
 	 	 {  
 	 	 	  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' A I C o n t r o l l e d ' ,   0 . f   ) ;  
 	 	 }  
 	 }  
 	 	  
 	 p u b l i c   f i n a l   f u n c t i o n   M u t a t i o n S y s t e m E n a b l e (   e n a b l e   :   b o o l   )  
 	 {  
 	 	 (   (   W 3 P l a y e r A b i l i t y M a n a g e r   )   a b i l i t y M a n a g e r   ) . M u t a t i o n S y s t e m E n a b l e (   e n a b l e   ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   I s M u t a t i o n S y s t e m E n a b l e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   (   (   W 3 P l a y e r A b i l i t y M a n a g e r   )   a b i l i t y M a n a g e r   ) . I s M u t a t i o n S y s t e m E n a b l e d ( ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t M u t a t i o n (   m u t a t i o n T y p e   :   E P l a y e r M u t a t i o n T y p e   )   :   S M u t a t i o n  
 	 {  
 	 	 r e t u r n   (   (   W 3 P l a y e r A b i l i t y M a n a g e r   )   a b i l i t y M a n a g e r   ) . G e t M u t a t i o n (   m u t a t i o n T y p e   ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   I s M u t a t i o n A c t i v e (   m u t a t i o n T y p e   :   E P l a y e r M u t a t i o n T y p e )   :   b o o l  
 	 {  
 	 	 v a r   s w o r d Q u a l i t y   :   i n t ;  
 	 	 v a r   s w o r d   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 i f (   G e t E q u i p p e d M u t a t i o n T y p e ( )   ! =   m u t a t i o n T y p e   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 s w i t c h (   m u t a t i o n T y p e   )  
 	 	 {  
 	 	 	 c a s e   E P M T _ M u t a t i o n 4   :  
 	 	 	 c a s e   E P M T _ M u t a t i o n 5   :  
 	 	 	 c a s e   E P M T _ M u t a t i o n 7   :  
 	 	 	 c a s e   E P M T _ M u t a t i o n 8   :  
 	 	 	 c a s e   E P M T _ M u t a t i o n 1 0   :  
 	 	 	 c a s e   E P M T _ M u t a t i o n 1 1   :  
 	 	 	 c a s e   E P M T _ M u t a t i o n 1 2   :  
 	 	 	 	 i f (   I s I n F i s t F i g h t ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f (   m u t a t i o n T y p e   = =   E P M T _ M u t a t i o n 1   )  
 	 	 {  
 	 	 	 s w o r d   =   i n v . G e t C u r r e n t l y H e l d S w o r d ( ) ; 	 	 	  
 	 	 	 s w o r d Q u a l i t y   =   i n v . G e t I t e m Q u a l i t y (   s w o r d   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f (   s w o r d Q u a l i t y   <   3   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	 	  
 	 p u b l i c   f i n a l   f u n c t i o n   S e t E q u i p p e d M u t a t i o n (   m u t a t i o n T y p e   :   E P l a y e r M u t a t i o n T y p e   )   :   b o o l  
 	 {  
 	 	 r e t u r n   (   (   W 3 P l a y e r A b i l i t y M a n a g e r   )   a b i l i t y M a n a g e r   ) . S e t E q u i p p e d M u t a t i o n (   m u t a t i o n T y p e   ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t E q u i p p e d M u t a t i o n T y p e ( )   :   E P l a y e r M u t a t i o n T y p e  
 	 {  
 	 	 r e t u r n   (   (   W 3 P l a y e r A b i l i t y M a n a g e r   )   a b i l i t y M a n a g e r   ) . G e t E q u i p p e d M u t a t i o n T y p e ( ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   C a n E q u i p M u t a t i o n ( m u t a t i o n T y p e   :   E P l a y e r M u t a t i o n T y p e )   :   b o o l  
 	 {  
 	 	 r e t u r n   (   (   W 3 P l a y e r A b i l i t y M a n a g e r   )   a b i l i t y M a n a g e r   ) . C a n E q u i p M u t a t i o n (   m u t a t i o n T y p e   ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   C a n R e s e a r c h M u t a t i o n (   m u t a t i o n T y p e   :   E P l a y e r M u t a t i o n T y p e   )   :   b o o l  
 	 {  
 	 	 r e t u r n   (   (   W 3 P l a y e r A b i l i t y M a n a g e r   )   a b i l i t y M a n a g e r   ) . C a n R e s e a r c h M u t a t i o n (   m u t a t i o n T y p e   ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   I s M u t a t i o n R e s e a r c h e d ( m u t a t i o n T y p e   :   E P l a y e r M u t a t i o n T y p e )   :   b o o l  
 	 {  
 	 	 r e t u r n   (   (   W 3 P l a y e r A b i l i t y M a n a g e r   )   a b i l i t y M a n a g e r   ) . I s M u t a t i o n R e s e a r c h e d (   m u t a t i o n T y p e   ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t M u t a t i o n R e s e a r c h P r o g r e s s ( m u t a t i o n T y p e   :   E P l a y e r M u t a t i o n T y p e )   :   i n t  
 	 {  
 	 	 r e t u r n   (   (   W 3 P l a y e r A b i l i t y M a n a g e r   )   a b i l i t y M a n a g e r   ) . G e t M u t a t i o n R e s e a r c h P r o g r e s s (   m u t a t i o n T y p e   ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t M a s t e r M u t a t i o n S t a g e ( )   :   i n t  
 	 {  
 	 	 r e t u r n   (   (   W 3 P l a y e r A b i l i t y M a n a g e r   )   a b i l i t y M a n a g e r   ) . G e t M a s t e r M u t a t i o n S t a g e ( ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   M u t a t i o n R e s e a r c h W i t h S k i l l P o i n t s ( m u t a t i o n   :   E P l a y e r M u t a t i o n T y p e ,   s k i l l P o i n t s   :   i n t )   :   b o o l  
 	 {  
 	 	 r e t u r n   (   (   W 3 P l a y e r A b i l i t y M a n a g e r   )   a b i l i t y M a n a g e r   ) . M u t a t i o n R e s e a r c h W i t h S k i l l P o i n t s (   m u t a t i o n ,   s k i l l P o i n t s   ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   M u t a t i o n R e s e a r c h W i t h I t e m ( m u t a t i o n   :   E P l a y e r M u t a t i o n T y p e ,   i t e m   :   S I t e m U n i q u e I d ,   o p t i o n a l   c o u n t :   i n t )   :   b o o l  
 	 {  
 	 	 r e t u r n   (   (   W 3 P l a y e r A b i l i t y M a n a g e r   )   a b i l i t y M a n a g e r   ) . M u t a t i o n R e s e a r c h W i t h I t e m (   m u t a t i o n ,   i t e m ,   c o u n t   ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t M u t a t i o n L o c a l i z e d N a m e (   m u t a t i o n T y p e   :   E P l a y e r M u t a t i o n T y p e   )   :   s t r i n g  
 	 {  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	 v a r   l o c K e y   :   n a m e ;  
 	  
 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) G e t W i t c h e r P l a y e r ( ) . a b i l i t y M a n a g e r ;  
 	 	 l o c K e y   =   p a m . G e t M u t a t i o n N a m e L o c a l i z a t i o n K e y (   m u t a t i o n T y p e   ) ;  
 	 	  
 	 	 r e t u r n   G e t L o c S t r i n g B y K e y E x t (   l o c K e y   ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t M u t a t i o n L o c a l i z e d D e s c r i p t i o n (   m u t a t i o n T y p e   :   E P l a y e r M u t a t i o n T y p e   )   :   s t r i n g  
 	 {  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	 v a r   l o c K e y   :   n a m e ;  
 	 	 v a r   a r r S t r   :   a r r a y <   s t r i n g   > ;  
 	 	 v a r   d m   :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ;  
 	 	 v a r   m i n ,   m a x ,   s p   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   t m p ,   t m p 2 ,   t o x ,   c r i t B o n u s D a m a g e ,   v a l   :   f l o a t ;  
 	 	 v a r   s t a t s ,   s t a t s 2   :   S P l a y e r O f f e n s e S t a t s ;  
 	 	 v a r   b u f f P e r c ,   e x a m p l e E n e m y C o u n t ,   d e b u f f P e r c   :   i n t ;  
 	  
 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) G e t W i t c h e r P l a y e r ( ) . a b i l i t y M a n a g e r ;  
 	 	 l o c K e y   =   p a m . G e t M u t a t i o n D e s c r i p t i o n L o c a l i z a t i o n K e y (   m u t a t i o n T y p e   ) ;  
 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	  
 	 	 s w i t c h (   m u t a t i o n T y p e   )  
 	 	 {  
 	 	 	 c a s e   E P M T _ M u t a t i o n 1   :  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e ( ' M u t a t i o n 1 ' ,   ' d m g _ b o n u s _ f a c t o r ' ,   m i n ,   m a x ) ; 	 	 	 	 	 	 	  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   R o u n d M a t h (   1 0 0   *   m i n . v a l u e A d d i t i v e   )   )   ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   E P M T _ M u t a t i o n 2   :  
 	 	 	 	 s p   =   G e t P o w e r S t a t V a l u e (   C P S _ S p e l l P o w e r   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 2 ' ,   ' c r i t _ c h a n c e _ f a c t o r ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   R o u n d M a t h (   1 0 0   *   (   m i n . v a l u e A d d i t i v e   +   s p . v a l u e M u l t i p l i c a t i v e   *   m i n . v a l u e M u l t i p l i c a t i v e   )   )   )   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 2 ' ,   ' c r i t _ d a m a g e _ f a c t o r ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 c r i t B o n u s D a m a g e   =   s p . v a l u e M u l t i p l i c a t i v e   *   m i n . v a l u e M u l t i p l i c a t i v e ;  
 	 	 	 	  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   R o u n d M a t h (   1 0 0   *   c r i t B o n u s D a m a g e   )   )   ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   E P M T _ M u t a t i o n 3   :  
 	 	 	 	  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 3 ' ,   ' a t t a c k _ p o w e r ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 t m p   =   m i n . v a l u e M u l t i p l i c a t i v e ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   R o u n d M a t h (   1 0 0   *   t m p   )   )   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 3 ' ,   ' m a x c a p ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   R o u n d M a t h (   1 0 0   *   t m p   *   m i n . v a l u e A d d i t i v e   )   )   ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   E P M T _ M u t a t i o n 4   :  
 	 	 	 	  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' A c i d E f f e c t ' ,   ' D i r e c t D a m a g e ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 t m p 2   =   1 0 0   *   m i n . v a l u e A d d i t i v e ;  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' A c i d E f f e c t ' ,   ' d u r a t i o n ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 t m p 2   * =   m i n . v a l u e A d d i t i v e ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   t m p 2   )   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 t o x   =   G e t S t a t (   B C S _ T o x i c i t y   ) ;  
 	 	 	 	 i f (   t o x   >   0   )  
 	 	 	 	 {  
 	 	 	 	 	 t m p   =   R o u n d M a t h (   t m p 2   *   t o x   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 t m p   =   t m p 2 ;  
 	 	 	 	 }  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   t m p   )   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 t o x   =   G e t S t a t M a x (   B C S _ T o x i c i t y   ) ;  
 	 	 	 	 t m p   =   R o u n d M a t h (   t m p 2   *   t o x   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   t m p   )   ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   E P M T _ M u t a t i o n 5   :  
 	 	 	 	  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 5 ' ,   ' m u t 5 _ d m g _ r e d _ p e r c ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 t m p   =   m i n . v a l u e A d d i t i v e ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   1 0 0   *   t m p   )   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   1 0 0   *   t m p   *   3   )   ) ;  
 	 	 	 	  
 	 	 	 	 b r e a k ;  
 	 	 	  
 	 	 	 c a s e   E P M T _ M u t a t i o n 6   : 	  
 	 	 	 	  
 	 	 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 6 ' ,   ' f u l l _ f r e e z e _ c h a n c e ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   1 0 0   *   m i n . v a l u e M u l t i p l i c a t i v e   )   ) ; 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 6 ' ,   ' F o r c e D a m a g e ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 s p   =   G e t T o t a l S i g n S p e l l P o w e r (   S _ M a g i c _ 1   ) ;  
 	 	 	 	 v a l   =   s p . v a l u e A d d i t i v e   +   s p . v a l u e M u l t i p l i c a t i v e   *   (   s p . v a l u e B a s e   +   m i n . v a l u e A d d i t i v e   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   R o u n d M a t h (   v a l   )   )   ) ; 	  
 	 	 	  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   E P M T _ M u t a t i o n 7   :  
 	 	 	 	  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 7 B u f f ' ,   ' a t t a c k _ p o w e r ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 b u f f P e r c   =   ( i n t )   (   1 0 0   *   m i n . v a l u e M u l t i p l i c a t i v e   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   b u f f P e r c   )   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 7 B u f f E f f e c t ' ,   ' d u r a t i o n ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   m i n . v a l u e A d d i t i v e   )   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 e x a m p l e E n e m y C o u n t   =   1 1 ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   e x a m p l e E n e m y C o u n t   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 a r r S t r . P u s h B a c k (   b u f f P e r c   *   (   e x a m p l e E n e m y C o u n t   - 1   )   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 7 D e b u f f ' ,   ' a t t a c k _ p o w e r ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 d e b u f f P e r c   =   ( i n t )   (   -   1 0 0   *   m i n . v a l u e M u l t i p l i c a t i v e   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   d e b u f f P e r c   )   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 7 D e b u f f ' ,   ' m i n C a p S t a c k s ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   d e b u f f P e r c   *   m i n . v a l u e A d d i t i v e   )   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 7 D e b u f f E f f e c t ' ,   ' d u r a t i o n ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   m i n . v a l u e A d d i t i v e   )   ) ;  
 	 	 	 	 	  
 	 	 	 	 b r e a k ;  
 	 	 	  
 	 	 	 c a s e   E P M T _ M u t a t i o n 8   :  
 	 	 	 	  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 8 ' ,   ' d m g _ b o n u s ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   1 0 0   *   m i n . v a l u e M u l t i p l i c a t i v e   )   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 8 ' ,   ' h p _ p e r c _ t r i g g e r ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   1 0 0   *   m i n . v a l u e M u l t i p l i c a t i v e   )   ) ;  
 	 	 	 	  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   E P M T _ M u t a t i o n 9   :  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 s t a t s   =   G e t O f f e n s e S t a t s L i s t (   1   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   R o u n d M a t h (   s t a t s . c r o s s b o w S t e e l D m g   )   )   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 s t a t s 2   =   G e t O f f e n s e S t a t s L i s t (   2   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   R o u n d M a t h (   s t a t s 2 . c r o s s b o w S t e e l D m g   )   )   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 9 ' ,   ' c r i t i c a l _ h i t _ c h a n c e ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   1 0 0   *   m i n . v a l u e M u l t i p l i c a t i v e   )   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 9 ' ,   ' h e a l t h _ r e d u c t i o n ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   1 0 0   *   m i n . v a l u e M u l t i p l i c a t i v e   )   ) ;  
 	 	 	 	  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   E P M T _ M u t a t i o n 1 0   :  
 	 	 	 	  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 1 0 E f f e c t ' ,   ' m u t a t i o n 1 0 _ s t a t _ b o o s t ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   1 0 0   *   m i n . v a l u e M u l t i p l i c a t i v e   )   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   1 0 0   *   m i n . v a l u e M u l t i p l i c a t i v e   *   G e t S t a t M a x (   B C S _ T o x i c i t y   )   )   ) ;  
 	 	 	 	  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   E P M T _ M u t a t i o n 1 1   :  
 	 	 	 	  
 	 	 	 	 a r r S t r . P u s h B a c k (   1 0 0   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 1 1 D e b u f f E f f e c t ' ,   ' d u r a t i o n ' ,   m i n ,   m a x ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   m i n . v a l u e A d d i t i v e   )   ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   E P M T _ M u t a t i o n 1 2   :  
 	 	 	 	  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 1 2 ' ,   ' d u r a t i o n ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   m i n . v a l u e A d d i t i v e   )   ) ; 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 1 2 ' ,   ' m a x c a p ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 a r r S t r . P u s h B a c k (   N o T r a i l Z e r o s (   m i n . v a l u e A d d i t i v e   )   ) ; 	  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 c a s e   E P M T _ M u t a t i o n M a s t e r   :  
 	 	 	 	  
 	 	 	 	 a r r S t r . P u s h B a c k (   " 4 "   ) ;  
 	 	 	 	  
 	 	 	 	 b r e a k ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   G e t L o c S t r i n g B y K e y E x t W i t h P a r a m s (   l o c K e y ,   ,   ,   a r r S t r   ) ;  
 	 }  
 	 	  
 	 p u b l i c   f i n a l   f u n c t i o n   A p p l y M u t a t i o n 1 0 S t a t B o o s t (   o u t   s t a t V a l u e   :   S A b i l i t y A t t r i b u t e V a l u e   )  
 	 {  
 	 	 v a r   a t t V a l u e   	 	 	 :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   c u r r T o x i c i t y 	 	 :   f l o a t ;  
 	 	  
 	 	 i f (   I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 1 0   )   )  
 	 	 {  
 	 	 	 c u r r T o x i c i t y   =   G e t S t a t (   B C S _ T o x i c i t y   ) ;  
 	 	 	 i f (   c u r r T o x i c i t y   >   0 . f   )  
 	 	 	 {  
 	 	 	 	 a t t V a l u e   =   G e t A t t r i b u t e V a l u e (   ' m u t a t i o n 1 0 _ s t a t _ b o o s t '   ) ;  
 	 	 	 	 c u r r T o x i c i t y   * =   a t t V a l u e . v a l u e M u l t i p l i c a t i v e ;  
 	 	 	 	 s t a t V a l u e . v a l u e M u l t i p l i c a t i v e   + =   c u r r T o x i c i t y ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	  
 	  
 	  
 	  
 	  
  
 	 p u b l i c   f i n a l   f u n c t i o n   I s B o o k R e a d (   b o o k N a m e   :   n a m e   ) : b o o l  
 	 {  
 	 	 r e t u r n   b o o k s R e a d . C o n t a i n s (   b o o k N a m e   ) ;  
 	 } 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   A d d R e a d B o o k (   b o o k N a m e   :   n a m e   ) : v o i d  
 	 {  
 	 	 i f (   ! b o o k s R e a d . C o n t a i n s (   b o o k N a m e   )   )  
 	 	 {  
 	 	 	 b o o k s R e a d . P u s h B a c k (   b o o k N a m e   ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   R e m o v e R e a d B o o k (   b o o k N a m e   :   n a m e   ) : v o i d  
 	 {  
 	 	 v a r   i d x   :   i n t   =   b o o k s R e a d . F i n d F i r s t (   b o o k N a m e   ) ;  
 	 	  
 	 	 i f (   i d x   >   - 1   )  
 	 	 {  
 	 	 	 b o o k s R e a d . E r a s e (   i d x   ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t M u t a g e n B u f f s ( )   :   a r r a y <   W 3 M u t a g e n _ E f f e c t   >  
 	 {  
 	 	 v a r   n u l l   :   a r r a y <   W 3 M u t a g e n _ E f f e c t   > ;  
 	 	  
 	 	 i f ( e f f e c t M a n a g e r )  
 	 	 {  
 	 	 	 r e t u r n   e f f e c t M a n a g e r . G e t M u t a g e n B u f f s ( ) ;  
 	 	 }  
 	  
 	 	 r e t u r n   n u l l ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t A l c h e m y R e c i p e s ( )   :   a r r a y < n a m e >  
 	 {  
 	 	 r e t u r n   a l c h e m y R e c i p e s ;  
 	 }  
 	 	  
 	 p u b l i c   f u n c t i o n   C a n L e a r n A l c h e m y R e c i p e ( r e c i p e N a m e   :   n a m e )   :   b o o l  
 	 {  
 	 	 v a r   d m   :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ;  
 	 	 v a r   r e c i p e N o d e   :   S C u s t o m N o d e ;  
 	 	 v a r   i ,   t m p I n t   :   i n t ;  
 	 	 v a r   t m p N a m e   :   n a m e ;  
 	  
 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	 i f   (   d m . G e t S u b N o d e B y A t t r i b u t e V a l u e A s C N a m e (   r e c i p e N o d e ,   ' a l c h e m y _ r e c i p e s ' ,   ' n a m e _ n a m e ' ,   r e c i p e N a m e   )   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 	  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   R e m o v e A l c h e m y R e c i p e ( r e c i p e N a m e   :   n a m e )  
 	 {  
 	 	 a l c h e m y R e c i p e s . R e m o v e ( r e c i p e N a m e ) ;  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   R e m o v e A l l A l c h e m y R e c i p e s ( )  
 	 {  
 	 	 a l c h e m y R e c i p e s . C l e a r ( ) ;  
 	 }  
  
 	  
 	 f u n c t i o n   A d d A l c h e m y R e c i p e ( n a m   :   n a m e ,   o p t i o n a l   i s S i l e n t   :   b o o l ,   o p t i o n a l   s k i p T u t o r i a l U p d a t e   :   b o o l )   :   b o o l  
 	 {  
 	 	 v a r   i ,   p o t i o n s ,   b o m b s   :   i n t ;  
 	 	 v a r   f o u n d   :   b o o l ;  
 	 	 v a r   m _ a l c h e m y M a n a g e r   :   W 3 A l c h e m y M a n a g e r ;  
 	 	 v a r   r e c i p e   :   S A l c h e m y R e c i p e ;  
 	 	 v a r   k n o w n B o m b T y p e s   :   a r r a y < s t r i n g > ;  
 	 	 v a r   s t r R e c i p e N a m e ,   r e c i p e N a m e W i t h o u t L e v e l   :   s t r i n g ;  
 	 	  
 	 	 i f ( ! I s A l c h e m y R e c i p e ( n a m ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 f o u n d   =   f a l s e ;  
 	 	 f o r ( i = 0 ;   i < a l c h e m y R e c i p e s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 i f ( a l c h e m y R e c i p e s [ i ]   = =   n a m )  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 	  
 	 	 	 i f ( S t r C m p ( a l c h e m y R e c i p e s [ i ] , n a m )   >   0 )  
 	 	 	 {  
 	 	 	 	 a l c h e m y R e c i p e s . I n s e r t ( i , n a m ) ;  
 	 	 	 	 f o u n d   =   t r u e ;  
 	 	 	 	 A d d A l c h e m y H u d N o t i f i c a t i o n ( n a m , i s S i l e n t ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 } 	 	 	  
 	 	 } 	  
  
 	 	 i f ( ! f o u n d )  
 	 	 {  
 	 	 	 a l c h e m y R e c i p e s . P u s h B a c k ( n a m ) ;  
 	 	 	 A d d A l c h e m y H u d N o t i f i c a t i o n ( n a m , i s S i l e n t ) ;  
 	 	 }  
 	 	  
 	 	 m _ a l c h e m y M a n a g e r   =   n e w   W 3 A l c h e m y M a n a g e r   i n   t h i s ;  
 	 	 m _ a l c h e m y M a n a g e r . I n i t ( a l c h e m y R e c i p e s ) ;  
 	 	 m _ a l c h e m y M a n a g e r . G e t R e c i p e ( n a m ,   r e c i p e ) ;  
 	 	 	  
 	 	  
 	 	 i f ( C a n U s e S k i l l ( S _ A l c h e m y _ s 1 8 ) )  
 	 	 {  
 	 	 	 i f   ( ( r e c i p e . c o o k e d I t e m T y p e   ! =   E A C I T _ B o l t )   & &   ( r e c i p e . c o o k e d I t e m T y p e   ! =   E A C I T _ U n d e f i n e d )   & &   ( r e c i p e . c o o k e d I t e m T y p e   ! =   E A C I T _ D y e )   & &   ( r e c i p e . l e v e l   < =   G e t S k i l l L e v e l ( S _ A l c h e m y _ s 1 8 ) ) )  
 	 	 	 	 A d d A b i l i t y ( S k i l l E n u m T o N a m e ( S _ A l c h e m y _ s 1 8 ) ,   t r u e ) ;  
 	 	 	  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( r e c i p e . c o o k e d I t e m T y p e   = =   E A C I T _ B o m b )  
 	 	 {  
 	 	 	 b o m b s   =   0 ;  
 	 	 	 f o r ( i = 0 ;   i < a l c h e m y R e c i p e s . S i z e ( ) ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 m _ a l c h e m y M a n a g e r . G e t R e c i p e ( a l c h e m y R e c i p e s [ i ] ,   r e c i p e ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f ( r e c i p e . c o o k e d I t e m T y p e   = =   E A C I T _ B o m b )  
 	 	 	 	 {  
 	 	 	 	 	 s t r R e c i p e N a m e   =   N a m e T o S t r i n g ( a l c h e m y R e c i p e s [ i ] ) ;  
 	 	 	 	 	 r e c i p e N a m e W i t h o u t L e v e l   =   S t r L e f t ( s t r R e c i p e N a m e ,   S t r L e n ( s t r R e c i p e N a m e ) - 2 ) ;  
 	 	 	 	 	 i f ( ! k n o w n B o m b T y p e s . C o n t a i n s ( r e c i p e N a m e W i t h o u t L e v e l ) )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 b o m b s   + =   1 ;  
 	 	 	 	 	 	 k n o w n B o m b T y p e s . P u s h B a c k ( r e c i p e N a m e W i t h o u t L e v e l ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . S e t S t a t ( E S _ K n o w n B o m b R e c i p e s ,   b o m b s ) ;  
 	 	 } 	 	  
 	 	  
 	 	 e l s e   i f ( r e c i p e . c o o k e d I t e m T y p e   = =   E A C I T _ P o t i o n   | |   r e c i p e . c o o k e d I t e m T y p e   = =   E A C I T _ M u t a g e n P o t i o n   | |   r e c i p e . c o o k e d I t e m T y p e   = =   E A C I T _ A l c o h o l   | |   r e c i p e . c o o k e d I t e m T y p e   = =   E A C I T _ Q u e s t )  
 	 	 {  
 	 	 	 p o t i o n s   =   0 ;  
 	 	 	 f o r ( i = 0 ;   i < a l c h e m y R e c i p e s . S i z e ( ) ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 m _ a l c h e m y M a n a g e r . G e t R e c i p e ( a l c h e m y R e c i p e s [ i ] ,   r e c i p e ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f ( r e c i p e . c o o k e d I t e m T y p e   = =   E A C I T _ P o t i o n   | |   r e c i p e . c o o k e d I t e m T y p e   = =   E A C I T _ M u t a g e n P o t i o n   | |   r e c i p e . c o o k e d I t e m T y p e   = =   E A C I T _ A l c o h o l   | |   r e c i p e . c o o k e d I t e m T y p e   = =   E A C I T _ Q u e s t )  
 	 	 	 	 {  
 	 	 	 	 	 p o t i o n s   + =   1 ;  
 	 	 	 	 } 	 	 	 	  
 	 	 	 } 	 	  
 	 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . S e t S t a t ( E S _ K n o w n P o t i o n R e c i p e s ,   p o t i o n s ) ;  
 	 	 }  
 	 	  
 	 	 t h e G a m e . G e t G l o b a l E v e n t s M a n a g e r ( ) . O n S c r i p t e d E v e n t (   S E C _ A l c h e m y R e c i p e   ) ;  
 	 	 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t E x p a n d e d A l c h e m y C a t e g o r i e s ( )   :   a r r a y <   n a m e   >  
 	 {  
 	 	 r e t u r n   e x p a n d e d A l c h e m y C a t e g o r i e s ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   A d d E x p a n d e d A l c h e m y C a t e g o r y (   c a t e g o r y   :   n a m e   )  
 	 {  
 	 	 i f   (   I s N a m e V a l i d (   c a t e g o r y   )   )  
 	 	 {  
 	 	 	 A r r a y O f N a m e s P u s h B a c k U n i q u e (   e x p a n d e d A l c h e m y C a t e g o r i e s ,   c a t e g o r y   ) ;  
 	 	 }  
 	 }  
  
 	 p u b l i c   f u n c t i o n   R e m o v e E x p a n d e d A l c h e m y C a t e g o r y (   c a t e g o r y   :   n a m e   )  
 	 {  
 	 	 i f   (   I s N a m e V a l i d (   c a t e g o r y   )   )  
 	 	 {  
 	 	 	 e x p a n d e d A l c h e m y C a t e g o r i e s . R e m o v e (   c a t e g o r y   ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t A l c h e m y F i l t e r s ( s h o w H a s I n g r e   :   b o o l ,   s h o w M i s s i n g I n g r e   :   b o o l ,   s h o w A l r e a d y C r a f t e d   :   b o o l   )  
 	 {  
 	 	 a l c h e m y F i l t e r s . s h o w C r a f t a b l e   =   s h o w H a s I n g r e ;  
 	 	 a l c h e m y F i l t e r s . s h o w M i s s i n g I n g r e   =   s h o w M i s s i n g I n g r e ;  
 	 	 a l c h e m y F i l t e r s . s h o w A l r e a d y C r a f t e d   =   s h o w A l r e a d y C r a f t e d ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t A l c h e m y F i l t e r s ( )   :   S C r a f t i n g F i l t e r s  
 	 {  
 	 	  
 	 	 i f   (   a l c h e m y F i l t e r s . s h o w C r a f t a b l e   = =   f a l s e   & &   a l c h e m y F i l t e r s . s h o w M i s s i n g I n g r e   = =   f a l s e   & &   a l c h e m y F i l t e r s . s h o w A l r e a d y C r a f t e d   = =   f a l s e   )  
 	 	 {  
 	 	 	 a l c h e m y F i l t e r s . s h o w C r a f t a b l e   =   t r u e ;  
 	 	 	 a l c h e m y F i l t e r s . s h o w M i s s i n g I n g r e   =   t r u e ;  
 	 	 	 a l c h e m y F i l t e r s . s h o w A l r e a d y C r a f t e d   =   f a l s e ;  
 	 	 }  
  
 	 	 r e t u r n   a l c h e m y F i l t e r s ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
  
 	 p u b l i c   f u n c t i o n   G e t E x p a n d e d B e s t i a r y C a t e g o r i e s ( )   :   a r r a y <   n a m e   >  
 	 {  
 	 	 r e t u r n   e x p a n d e d B e s t i a r y C a t e g o r i e s ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   A d d E x p a n d e d B e s t i a r y C a t e g o r y (   c a t e g o r y   :   n a m e   )  
 	 {  
 	 	 i f   (   I s N a m e V a l i d (   c a t e g o r y   )   )  
 	 	 {  
 	 	 	 A r r a y O f N a m e s P u s h B a c k U n i q u e (   e x p a n d e d B e s t i a r y C a t e g o r i e s ,   c a t e g o r y   ) ;  
 	 	 }  
 	 }  
  
 	 p u b l i c   f u n c t i o n   R e m o v e E x p a n d e d B e s t i a r y C a t e g o r y (   c a t e g o r y   :   n a m e   )  
 	 {  
 	 	 i f   (   I s N a m e V a l i d (   c a t e g o r y   )   )  
 	 	 {  
 	 	 	 e x p a n d e d B e s t i a r y C a t e g o r i e s . R e m o v e (   c a t e g o r y   ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t D i s p l a y H e a v y A t t a c k I n d i c a t o r ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   b D i s p a l y H e a v y A t t a c k I n d i c a t o r ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t D i s p l a y H e a v y A t t a c k I n d i c a t o r (   v a l   :   b o o l   )    
 	 {  
 	 	 b D i s p a l y H e a v y A t t a c k I n d i c a t o r   =   v a l ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   G e t D i s p l a y H e a v y A t t a c k F i r s t L e v e l T i m e r ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   b D i s p l a y H e a v y A t t a c k F i r s t L e v e l T i m e r ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t D i s p l a y H e a v y A t t a c k F i r s t L e v e l T i m e r (   v a l   :   b o o l   )    
 	 {  
 	 	 b D i s p l a y H e a v y A t t a c k F i r s t L e v e l T i m e r   =   v a l ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
  
 	 p u b l i c   f u n c t i o n   S e l e c t Q u i c k s l o t I t e m (   s l o t   :   E E q u i p m e n t S l o t s   )  
 	 {  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ;  
 	  
 	 	 G e t I t e m E q u i p p e d O n S l o t ( s l o t ,   i t e m ) ;  
 	 	 s e l e c t e d I t e m I d   =   i t e m ; 	 	 	  
 	 } 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t M e d a l l i o n ( )   :   W 3 M e d a l l i o n C o n t r o l l e r  
 	 {  
 	 	 i f   (   ! m e d a l l i o n C o n t r o l l e r   )  
 	 	 {  
 	 	 	 m e d a l l i o n C o n t r o l l e r   =   n e w   W 3 M e d a l l i o n C o n t r o l l e r   i n   t h i s ;  
 	 	 }  
 	 	 r e t u r n   m e d a l l i o n C o n t r o l l e r ;  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   H i g h l i g h t O b j e c t s ( r a n g e   :   f l o a t ,   o p t i o n a l   h i g h l i g h t T i m e   :   f l o a t   )  
 	 {  
 	 	 v a r   e n t s   :   a r r a y < C G a m e p l a y E n t i t y > ;  
 	 	 v a r   i   :   i n t ;  
  
 	 	 F i n d G a m e p l a y E n t i t i e s I n S p h e r e ( e n t s ,   G e t W o r l d P o s i t i o n ( ) ,   r a n g e ,   1 0 0 ,   ' H i g h l i g h t e d B y M e d a l i o n F X ' ,   F L A G _ E x c l u d e P l a y e r ) ;  
  
 	 	 i f ( h i g h l i g h t T i m e   = =   0 )  
 	 	 	 h i g h l i g h t T i m e   =   3 0 ;  
 	 	  
 	 	 f o r ( i = 0 ;   i < e n t s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 i f ( ! e n t s [ i ] . I s H i g h l i g h t e d ( ) )  
 	 	 	 {  
 	 	 	 	 e n t s [ i ] . S e t H i g h l i g h t e d (   t r u e   ) ;  
 	 	 	 	 e n t s [ i ] . P l a y E f f e c t S i n g l e (   ' m e d a l i o n _ d e t e c t i o n _ f x '   ) ;  
 	 	 	 	 e n t s [ i ] . A d d T i m e r (   ' M e d a l l i o n E f f e c t O f f ' ,   h i g h l i g h t T i m e   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   H i g h l i g h t E n e m i e s ( r a n g e   :   f l o a t ,   o p t i o n a l   h i g h l i g h t T i m e   :   f l o a t   )  
 	 {  
 	 	 v a r   e n t s   :   a r r a y < C G a m e p l a y E n t i t y > ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   c a t C o m p o n e n t   :   C G a m e p l a y E f f e c t s C o m p o n e n t ;  
  
 	 	 F i n d G a m e p l a y E n t i t i e s I n S p h e r e ( e n t s ,   G e t W o r l d P o s i t i o n ( ) ,   r a n g e ,   1 0 0 ,   ,   F L A G _ E x c l u d e P l a y e r   +   F L A G _ O n l y A l i v e A c t o r s ) ;  
  
 	 	 i f ( h i g h l i g h t T i m e   = =   0 )  
 	 	 	 h i g h l i g h t T i m e   =   5 ;  
 	 	  
 	 	 f o r ( i = 0 ;   i < e n t s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 i f ( I s R e q u i r e d A t t i t u d e B e t w e e n ( t h i s ,   e n t s [ i ] ,   t r u e ) )  
 	 	 	 {  
 	 	 	 	 c a t C o m p o n e n t   =   G e t G a m e p l a y E f f e c t s C o m p o n e n t ( e n t s [ i ] ) ;  
 	 	 	 	 i f ( c a t C o m p o n e n t )  
 	 	 	 	 {  
 	 	 	 	 	 c a t C o m p o n e n t . S e t G a m e p l a y E f f e c t F l a g ( E G E F _ C a t V i e w H i g l i g h t ,   t r u e ) ;  
 	 	 	 	 	 e n t s [ i ] . A d d T i m e r (   ' E n e m y H i g h l i g h t O f f ' ,   h i g h l i g h t T i m e ,   ,   ,   ,   ,   t r u e   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 } 	  
 	  
 	 f u n c t i o n   S p a w n M e d a l l i o n E n t i t y ( )  
 	 {  
 	 	 v a r   r o t 	 	 	 	 	 :   E u l e r A n g l e s ;  
 	 	 v a r   s p a w n e d M e d a l l i o n 	 :   C E n t i t y ;  
 	 	 	 	  
 	 	 s p a w n e d M e d a l l i o n   =   t h e G a m e . G e t E n t i t y B y T a g (   ' n e w _ W i t c h e r _ m e d a l l i o n _ F X '   ) ;    
 	 	  
 	 	 i f   (   ! s p a w n e d M e d a l l i o n   )  
 	 	 	 t h e G a m e . C r e a t e E n t i t y (   m e d a l l i o n E n t i t y ,   G e t W o r l d P o s i t i o n ( ) ,   r o t ,   t r u e ,   f a l s e   ) ;  
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
 	 p u b l i c   f i n a l   f u n c t i o n   I n t e r r u p t C o m b a t F o c u s M o d e ( )  
 	 {  
 	 	 i f (   t h i s . G e t C u r r e n t S t a t e N a m e ( )   = =   ' C o m b a t F o c u s M o d e _ S e l e c t S p o t '   )  
 	 	 { 	  
 	 	 	 S e t C a n P l a y H i t A n i m (   t r u e   ) ;  
 	 	 	 P o p S t a t e ( ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   I s I n D a r k P l a c e ( )   :   b o o l  
 	 {  
 	 	 v a r   e n v s   :   a r r a y <   s t r i n g   > ;  
 	 	  
 	 	 i f (   F a c t s Q u e r y S u m (   " t u t _ i n _ d a r k _ p l a c e "   )   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 G e t A c t i v e A r e a E n v i r o n m e n t D e f i n i t i o n s (   e n v s   ) ;  
 	 	  
 	 	 i f (   e n v s . C o n t a i n s (   ' e n v _ n o v i g r a d _ c a v e '   )   | |   e n v s . C o n t a i n s (   ' c a v e _ c a t a c o m b s '   )   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p r i v a t e   s a v e d   v a r   s e l e c t e d P o t i o n S l o t U p p e r ,   s e l e c t e d P o t i o n S l o t L o w e r   :   E E q u i p m e n t S l o t s ;  
 	 p r i v a t e   v a r   p o t i o n D o u b l e T a p T i m e r R u n n i n g ,   p o t i o n D o u b l e T a p S l o t I s U p p e r   :   b o o l ;  
 	 	 d e f a u l t   s e l e c t e d P o t i o n S l o t U p p e r   =   E E S _ P o t i o n 1 ;  
 	 	 d e f a u l t   s e l e c t e d P o t i o n S l o t L o w e r   =   E E S _ P o t i o n 2 ;  
 	 	 d e f a u l t   p o t i o n D o u b l e T a p T i m e r R u n n i n g   =   f a l s e ;  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   S e t P o t i o n D o u b l e T a p R u n n i n g ( b   :   b o o l ,   o p t i o n a l   i s U p p e r S l o t   :   b o o l )  
 	 {  
 	 	 i f ( b )  
 	 	 {  
 	 	 	 A d d T i m e r ( ' P o t i o n D o u b l e T a p ' ,   0 . 3 ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 R e m o v e T i m e r ( ' P o t i o n D o u b l e T a p ' ) ;  
 	 	 }  
 	 	  
 	 	 p o t i o n D o u b l e T a p T i m e r R u n n i n g   =   b ;  
 	 	 p o t i o n D o u b l e T a p S l o t I s U p p e r   =   i s U p p e r S l o t ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   I s P o t i o n D o u b l e T a p R u n n i n g ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   p o t i o n D o u b l e T a p T i m e r R u n n i n g ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   P o t i o n D o u b l e T a p ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 p o t i o n D o u b l e T a p T i m e r R u n n i n g   =   f a l s e ;  
 	 	 O n P o t i o n D r i n k I n p u t ( p o t i o n D o u b l e T a p S l o t I s U p p e r ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   O n P o t i o n D r i n k I n p u t ( f r o m U p p e r S l o t   :   b o o l )  
 	 {  
 	 	 v a r   s l o t   :   E E q u i p m e n t S l o t s ;  
 	 	  
 	 	 i f ( f r o m U p p e r S l o t )  
 	 	 	 s l o t   =   G e t S e l e c t e d P o t i o n S l o t U p p e r ( ) ;  
 	 	 e l s e  
 	 	 	 s l o t   =   G e t S e l e c t e d P o t i o n S l o t L o w e r ( ) ;  
 	 	 	  
 	 	 D r i n k P o t i o n F r o m S l o t ( s l o t ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   O n P o t i o n D r i n k K e y b o a r d s I n p u t ( s l o t   :   E E q u i p m e n t S l o t s )  
 	 {  
 	 	 D r i n k P o t i o n F r o m S l o t ( s l o t ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   D r i n k P o t i o n F r o m S l o t ( s l o t   :   E E q u i p m e n t S l o t s ) : v o i d  
 	 {  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ; 	 	  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	 v a r   m o d u l e   :   C R 4 H u d M o d u l e I t e m I n f o ;  
 	 	  
 	 	 G e t I t e m E q u i p p e d O n S l o t ( s l o t ,   i t e m ) ;  
 	 	 i f ( i n v . I t e m H a s T a g ( i t e m ,   ' E d i b l e s ' ) )  
 	 	 {  
 	 	 	 C o n s u m e I t e m (   i t e m   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 { 	 	 	  
 	 	 	 i f   ( T o x i c i t y L o w E n o u g h T o D r i n k P o t i o n ( s l o t ) )  
 	 	 	 {  
 	 	 	 	 D r i n k P r e p a r e d P o t i o n ( s l o t ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 S e n d T o x i c i t y T o o H i g h M e s s a g e ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;    
 	 	 i f   (   h u d   )    
 	 	 {    
 	 	 	 m o d u l e   =   ( C R 4 H u d M o d u l e I t e m I n f o ) h u d . G e t H u d M o d u l e ( " I t e m I n f o M o d u l e " ) ;  
 	 	 	 i f (   m o d u l e   )  
 	 	 	 {  
 	 	 	 	 m o d u l e . F o r c e S h o w E l e m e n t ( ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   S e n d T o x i c i t y T o o H i g h M e s s a g e ( )  
 	 {  
 	 	 v a r   m e s s a g e T e x t   :   s t r i n g ;  
 	 	 v a r   l a n g u a g e   :   s t r i n g ;  
 	 	 v a r   a u d i o L a n g u a g e   :   s t r i n g ;  
 	 	  
 	 	 i f   ( G e t H u d M e s s a g e s S i z e ( )   <   2 )  
 	 	 {  
 	 	 	 m e s s a g e T e x t   =   G e t L o c S t r i n g B y K e y E x t ( " m e n u _ c a n n o t _ p e r f o r m _ a c t i o n _ n o w " )   +   "   "   +   G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ c o m m o n _ s t a t i s t i c s _ t o o l t i p _ c u r r e n t _ t o x i c i t y " ) ;  
 	 	 	  
 	 	 	 t h e G a m e . G e t G a m e L a n g u a g e N a m e ( a u d i o L a n g u a g e , l a n g u a g e ) ;  
 	 	 	 i f   ( l a n g u a g e   = =   " A R " )  
 	 	 	 {  
 	 	 	 	 m e s s a g e T e x t   + =   ( i n t ) ( a b i l i t y M a n a g e r . G e t S t a t ( B C S _ T o x i c i t y ,   f a l s e ) )   +   "   /   "   +     ( i n t ) ( a b i l i t y M a n a g e r . G e t S t a t M a x ( B C S _ T o x i c i t y ) )   +   "   : " ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 m e s s a g e T e x t   + =   " :   "   +   ( i n t ) ( a b i l i t y M a n a g e r . G e t S t a t ( B C S _ T o x i c i t y ,   f a l s e ) )   +   "   /   "   +     ( i n t ) ( a b i l i t y M a n a g e r . G e t S t a t M a x ( B C S _ T o x i c i t y ) ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 D i s p l a y H u d M e s s a g e ( m e s s a g e T e x t ) ;  
 	 	 }  
 	 	 t h e S o u n d . S o u n d E v e n t ( " g u i _ g l o b a l _ d e n i e d " ) ;  
 	 }  
 	  
 	  
 	 / / m o d W 3 R e d u x R G C + +  
 	 p u b l i c   f u n c t i o n   R G C _ S e l e c t I t e m (   n o n C r o s s b o w S l o t   :   E E q u i p m e n t S l o t s )  
 	 {  
 	 	 / / T h i s   f u n c t i o n   i s   m e a n t   t o   s e l e c t   n o n   c r o s s b o w   i t e m s  
 	 	 / / R G C   h a s   s e p e r a t e d   t h e   c r o s s b o w   f r o m   a l l   o t h e r   u s a b l e   i t e m s  
 	 	 v a r   n e w E q u i p I t e m 	 	 :   S I t e m U n i q u e I d ;  
 	 	 v a r   c u r r e n t I t e m 	 	 	 :   S I t e m U n i q u e I d ;  
 	 	 v a r   p l a y S o u n d 	 	 	 :   b o o l ;  
 	 	 v a r   s o u n d N a m e 	 	 	 :   s t r i n g ;  
 	 	  
 	 	 p l a y S o u n d   =   f a l s e ;  
 	 	 i f ( n o n C r o s s b o w S l o t   = =   E E S _ R a n g e d W e a p o n )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	 i f ( r g c L a s t U s e d I t e m S l o t   = =   n o n C r o s s b o w S l o t )  
 	 	 {  
 	 	 	 n e w E q u i p I t e m   =   R G C _ N e x t I t e m F o r S l o t ( n o n C r o s s b o w S l o t ) ;  
 	 	 	 i f ( G e t I n v e n t o r y ( ) . I s I d V a l i d ( n e w E q u i p I t e m ) )    
 	 	 	 {  
 	 	 	 	 E q u i p I t e m ( R G C _ N e x t I t e m F o r S l o t ( n o n C r o s s b o w S l o t ) ,   n o n C r o s s b o w S l o t ) ;  
 	 	 	 	 p l a y S o u n d   =   t r u e ;  
 	 	 	 }  
 	 	 }    
 	 	 e l s e  
 	 	 {  
 	 	 	 p l a y S o u n d   =   t r u e ;  
 	 	 }  
 	  
 	 	 i f ( G e t I t e m E q u i p p e d O n S l o t ( n o n C r o s s b o w S l o t ,   c u r r e n t I t e m ) )  
 	 	 {  
 	 	 	 i f ( G e t I n v e n t o r y ( ) . I s I t e m B o m b ( c u r r e n t I t e m ) )  
 	 	 	 {  
 	 	 	 	 i f ( G e t I n v e n t o r y ( ) . S i n g l e t o n I t e m G e t A m m o ( c u r r e n t I t e m ) )  
 	 	 	 	 {  
 	 	 	 	 	 S e l e c t Q u i c k s l o t I t e m ( n o n C r o s s b o w S l o t ) ;  
 	 	 	 	 	 s o u n d N a m e   =   " g u i _ i n v e n t o r y _ b o m b s _ a t t a c h " ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 S e l e c t Q u i c k s l o t I t e m ( n o n C r o s s b o w S l o t ) ;  
 	 	 	 	 s o u n d N a m e   =   " g u i _ i n v e n t o r y _ o t h e r _ a t t a c h " ;  
 	 	 	 }  
 	 	 }  
  
 	 	 i f ( p l a y S o u n d )  
 	 	 {  
 	 	 	 S o u n d E v e n t ( s o u n d N a m e ) ;  
 	 	 }  
 	 	 r g c L a s t U s e d I t e m S l o t   =   n o n C r o s s b o w S l o t ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R G C _ G e t L a s t U s e d I t e m S l o t ( )   :   E E q u i p m e n t S l o t s  
 	 {  
 	 	 r e t u r n   r g c L a s t U s e d I t e m S l o t ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   R G C _ G e t L a s t U s e d B o l t ( )   :   S I t e m U n i q u e I d  
 	 {  
 	 	 r e t u r n   r g c L a s t U s e d B o l t ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   R G C _ G e t I n f i n i t e B o l t ( )   :   S I t e m U n i q u e I d  
 	 {  
 	 	 v a r   i t e m s   :   a r r a y < S I t e m U n i q u e I d > ;  
  
 	 	 i t e m s   =   G e t I n v e n t o r y ( ) . G e t I t e m s B y N a m e ( r g c I n f i n i t e B o l t N a m e ) ;  
 	 	 r e t u r n   i t e m s [ 0 ] ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   R G C _ N e x t I t e m F o r S l o t ( s l o t :   E E q u i p m e n t S l o t s )   :   S I t e m U n i q u e I d  
 	 {  
 	 	 v a r   i   	 	 	 	 	 :   i n t ;  
 	 	 v a r   i t e r a b l e I t e m 	 	 :   S I t e m U n i q u e I d ;  
 	 	 v a r   e q u i p p e d I t e m 	 	 :   S I t e m U n i q u e I d ;  
 	 	 v a r   d o g R e p o r t I t e m 	 	 :   S I t e m U n i q u e I d ;  
 	 	 v a r   i t e m s L i s t U n f i l t e r e d 	 :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   i t e m s L i s t 	 	 	 :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   n u m I t e m s 	 	 	 :   i n t ;  
 	 	 v a r   i t e m C a t e g o r y 	 	 :   C N a m e ;  
 	 	  
 	 	 d o g R e p o r t I t e m   =   G e t I n v a l i d U n i q u e I d ( ) ;  
  
 	 	 i f ( s l o t   = =   E E S _ P e t a r d 1 )    
 	 	 {  
 	 	 	 G e t I t e m E q u i p p e d O n S l o t ( s l o t ,   e q u i p p e d I t e m ) ;  
 	 	 	 i t e m C a t e g o r y   =   ' p e t a r d ' ;  
 	 	 }  
 	 	 e l s e   i f ( s l o t   = =   E E S _ Q u i c k s l o t 1 )  
 	 	 {  
 	 	 	 G e t I t e m E q u i p p e d O n S l o t ( s l o t ,   e q u i p p e d I t e m ) ;  
 	 	 	 i t e m C a t e g o r y   =   ' u s a b l e ' ;  
 	 	 }  
 	 	 e l s e   i f ( s l o t   = =   E E S _ B o l t )  
 	 	 {  
 	 	 	 e q u i p p e d I t e m   =   r g c L a s t U s e d B o l t ;  
 	 	 	 i t e m C a t e g o r y   =   ' b o l t ' ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n   d o g R e p o r t I t e m ;  
 	 	 }  
 	 	  
 	 	 i t e m s L i s t U n f i l t e r e d   =   i n v . G e t I t e m s B y C a t e g o r y ( i t e m C a t e g o r y ) ;  
  
 	 	 f o r   (   i   =   0 ;   i   <   i t e m s L i s t U n f i l t e r e d . S i z e ( ) ;   i   + =   1   )  
 	 	 {  
 	 	 	 i t e r a b l e I t e m   =   i t e m s L i s t U n f i l t e r e d [ i ] ;  
 	 	 	 i f   (    
 	 	 	 	 i n v . G e t I t e m L e v e l (   i t e r a b l e I t e m   )   < =   G e t L e v e l ( )   & &    
 	 	 	 	 ( ! i n v . I s I t e m S i n g l e t o n I t e m ( i t e r a b l e I t e m )   | |   i n v . S i n g l e t o n I t e m G e t A m m o ( i t e r a b l e I t e m )   | |   i t e r a b l e I t e m   = =   e q u i p p e d I t e m )    
 	 	 	 	 & &   ! i n v . I t e m H a s T a g ( i t e r a b l e I t e m ,   t h e G a m e . p a r a m s . T A G _ I N F I N I T E _ A M M O )   )  
 	 	 	 {  
 	 	 	 	 i t e m s L i s t . P u s h B a c k ( i t e r a b l e I t e m ) ;  
 	 	 	 }  
 	 	 }  
  
 	 	 n u m I t e m s   =   i t e m s L i s t . S i z e ( ) ;  
 	 	 i f   ( n u m I t e m s   > =   1 )   {  
 	 	 	 f o r   (   i   =   0 ;   i   <   n u m I t e m s ;   i   + =   1   )  
 	 	 	 {  
 	 	 	 	 i t e r a b l e I t e m   =   i t e m s L i s t [ i ] ;  
 	 	 	 	  
 	 	 	 	 i f ( i t e r a b l e I t e m   = =   e q u i p p e d I t e m   | |   e q u i p p e d I t e m   = =   G e t I n v a l i d U n i q u e I d ( )   | |   ! G e t I n v e n t o r y ( ) . H a s I t e m B y I d ( e q u i p p e d I t e m ) )  
 	 	 	 	 {  
 	 	 	 	 	 i f ( i   ! =   n u m I t e m s   -   1 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 d o g R e p o r t I t e m   =   i t e m s L i s t [ i + 1 ] ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 d o g R e p o r t I t e m   =   i t e m s L i s t [ 0 ] ;  
 	 	 	 	 	 }  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
  
 	 	 r e t u r n   d o g R e p o r t I t e m ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   R G C _ I n f i n i t e B o l t E q u i p p e d ( )   :   b o o l  
 	 {  
 	 	 v a r   c u r r e n t B o l t   :   S I t e m U n i q u e I d ;  
  
 	 	 G e t I t e m E q u i p p e d O n S l o t ( E E S _ B o l t ,   c u r r e n t B o l t ) ;  
 	 	 r e t u r n   G e t I n v e n t o r y ( ) . I t e m H a s T a g ( c u r r e n t B o l t ,   t h e G a m e . p a r a m s . T A G _ I N F I N I T E _ A M M O ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R G C _ N e x t B o l t ( )  
 	 {  
 	 	 v a r   c u r r e n t B o l t ,   n e w B o l t   :   S I t e m U n i q u e I d ;  
  
 	 	 i f ( t h e P l a y e r . I s S w i m m i n g ( ) )    
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
  
 	 	 G e t I t e m E q u i p p e d O n S l o t ( E E S _ B o l t ,   c u r r e n t B o l t ) ;  
 	 	 n e w B o l t   =   r g c L a s t U s e d B o l t ;  
 	 	 i f ( ! R G C _ I n f i n i t e B o l t E q u i p p e d ( ) )    
 	 	 {  
 	 	 	 n e w B o l t   =   R G C _ N e x t I t e m F o r S l o t ( E E S _ B o l t ) ;  
 	 	 }  
  
 	 	 i f ( n e w B o l t   ! =   c u r r e n t B o l t   & &   n e w B o l t   ! =   G e t I n v a l i d U n i q u e I d ( ) )  
 	 	 {  
 	 	 	 E q u i p I t e m ( n e w B o l t ,   E E S _ B o l t ) ;  
 	 	 	 S o u n d E v e n t ( " g u i _ i n v e n t o r y _ o t h e r _ a t t a c h " ) ;  
 	 	 	 r g c L a s t U s e d B o l t   =   n e w B o l t ;  
 	 	 }  
 	 }  
  
 	 p u b l i c   f u n c t i o n   R G C _ I n f i n i t e B o l t ( o p t i o n a l   n e w B o l t s :   S I t e m U n i q u e I d )  
 	 {  
 	 	 v a r   i n f i n i t e B o l t s   :   a r r a y < S I t e m U n i q u e I d > ;  
  
 	 	 i f ( G e t I n v e n t o r y ( ) . I s I t e m B o l t ( n e w B o l t s )   & &   G e t I n v e n t o r y ( ) . I t e m H a s T a g ( n e w B o l t s ,   t h e G a m e . p a r a m s . T A G _ I N F I N I T E _ A M M O ) )  
 	 	 {  
 	 	 	 E q u i p I t e m ( n e w B o l t s ,   E E S _ B o l t ) ;  
 	 	 	 S o u n d E v e n t ( " g u i _ i n v e n t o r y _ o t h e r _ a t t a c h " ) ;  
 	 	 }  
 	 	 e l s e   i f ( ! R G C _ I n f i n i t e B o l t E q u i p p e d ( ) )    
 	 	 {  
 	 	 	 i n f i n i t e B o l t s   =   G e t I n v e n t o r y ( ) . G e t I t e m s B y N a m e ( r g c I n f i n i t e B o l t N a m e ) ;  
 	 	 	 E q u i p I t e m ( i n f i n i t e B o l t s [ 0 ] ,   E E S _ B o l t ) ;  
 	 	 	 S o u n d E v e n t ( " g u i _ i n v e n t o r y _ o t h e r _ a t t a c h " ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R G C _ S e t I n R e a l t i m e E q u i p C a s t M o d e (   m o d i f i e r A c t i v e   :   b o o l   )  
 	 {  
 	 	 r g c S i g n Q u i c k U s e M o d i f i e r A c t i v e   =   m o d i f i e r A c t i v e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   r g c S i g n Q u i c k U s e M o d i f i e r A c t i v e ;  
 	 }  
 	 / / m o d W 3 R e d u x R G C - -  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t S e l e c t e d P o t i o n S l o t U p p e r ( )   :   E E q u i p m e n t S l o t s  
 	 {  
 	 	 r e t u r n   s e l e c t e d P o t i o n S l o t U p p e r ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t S e l e c t e d P o t i o n S l o t L o w e r ( )   :   E E q u i p m e n t S l o t s  
 	 {  
 	 	 r e t u r n   s e l e c t e d P o t i o n S l o t L o w e r ;  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   F l i p S e l e c t e d P o t i o n ( i s U p p e r S l o t   :   b o o l )   :   b o o l  
 	 {  
 	 	 / / m o d W 3 R e d u x R G C + +  
 	 	 i f ( i s U p p e r S l o t )  
 	 	 {  
 	 	 	 i f ( s e l e c t e d P o t i o n S l o t U p p e r   = =   E E S _ P o t i o n 1   & &   I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ P o t i o n 3 ) )  
 	 	 	 {  
 	 	 	 	 S o u n d E v e n t ( " g u i _ i n v e n t o r y _ p o t i o n _ a t t a c h " ) ;  
 	 	 	 	 s e l e c t e d P o t i o n S l o t U p p e r   =   E E S _ P o t i o n 3 ;  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( s e l e c t e d P o t i o n S l o t U p p e r   = =   E E S _ P o t i o n 3   & &   I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ P o t i o n 1 ) )  
 	 	 	 {  
 	 	 	 	 S o u n d E v e n t ( " g u i _ i n v e n t o r y _ p o t i o n _ a t t a c h " ) ;  
 	 	 	 	 s e l e c t e d P o t i o n S l o t U p p e r   =   E E S _ P o t i o n 1 ;  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f ( s e l e c t e d P o t i o n S l o t L o w e r   = =   E E S _ P o t i o n 2   & &   I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ P o t i o n 4 ) )  
 	 	 	 {  
 	 	 	 	 S o u n d E v e n t ( " g u i _ i n v e n t o r y _ p o t i o n _ a t t a c h " ) ;  
 	 	 	 	 s e l e c t e d P o t i o n S l o t L o w e r   =   E E S _ P o t i o n 4 ;  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( s e l e c t e d P o t i o n S l o t L o w e r   = =   E E S _ P o t i o n 4   & &   I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ P o t i o n 2 ) )  
 	 	 	 {  
 	 	 	 	 S o u n d E v e n t ( " g u i _ i n v e n t o r y _ p o t i o n _ a t t a c h " ) ;  
 	 	 	 	 s e l e c t e d P o t i o n S l o t L o w e r   =   E E S _ P o t i o n 2 ;  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 	 / / m o d W 3 R e d u x R G C - -  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   A d d B o m b T h r o w D e l a y (   b o m b I d   :   S I t e m U n i q u e I d   )  
 	 {  
 	 	 v a r   s l o t   :   E E q u i p m e n t S l o t s ;  
 	 	  
 	 	 s l o t   =   G e t I t e m S l o t (   b o m b I d   ) ;  
 	 	  
 	 	 i f (   s l o t   = =   E E S _ U n u s e d   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	 	  
 	 	 i f (   s l o t   = =   E E S _ P e t a r d 1   | |   s l o t   = =   E E S _ Q u i c k s l o t 1   )  
 	 	 {  
 	 	 	 r e m a i n i n g B o m b T h r o w D e l a y S l o t 1   =   t h e G a m e . p a r a m s . B O M B _ T H R O W _ D E L A Y ;  
 	 	 	 A d d T i m e r (   ' B o m b D e l a y ' ,   0 . 0 f ,   t r u e   ) ;  
 	 	 }  
 	 	 e l s e   i f (   s l o t   = =   E E S _ P e t a r d 2   | |   s l o t   = =   E E S _ Q u i c k s l o t 2   )  
 	 	 {  
 	 	 	 r e m a i n i n g B o m b T h r o w D e l a y S l o t 2   =   t h e G a m e . p a r a m s . B O M B _ T H R O W _ D E L A Y ;  
 	 	 	 A d d T i m e r (   ' B o m b D e l a y ' ,   0 . 0 f ,   t r u e   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t B o m b D e l a y (   s l o t   :   E E q u i p m e n t S l o t s   )   :   f l o a t  
 	 {  
 	 	 i f (   s l o t   = =   E E S _ P e t a r d 1   | |   s l o t   = =   E E S _ Q u i c k s l o t 1   )  
 	 	 {  
 	 	 	 r e t u r n   r e m a i n i n g B o m b T h r o w D e l a y S l o t 1 ;  
 	 	 }  
 	 	 e l s e   i f (   s l o t   = =   E E S _ P e t a r d 2   | |   s l o t   = =   E E S _ Q u i c k s l o t 2   )  
 	 	 {  
 	 	 	 r e t u r n   r e m a i n i n g B o m b T h r o w D e l a y S l o t 2 ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   0 ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   B o m b D e l a y (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 r e m a i n i n g B o m b T h r o w D e l a y S l o t 1   =   M a x F (   0 . f   ,   r e m a i n i n g B o m b T h r o w D e l a y S l o t 1   -   d t   ) ;  
 	 	 r e m a i n i n g B o m b T h r o w D e l a y S l o t 2   =   M a x F (   0 . f   ,   r e m a i n i n g B o m b T h r o w D e l a y S l o t 2   -   d t   ) ;  
 	 	  
 	 	 i f (   r e m a i n i n g B o m b T h r o w D e l a y S l o t 1   < =   0 . 0 f   & &   r e m a i n i n g B o m b T h r o w D e l a y S l o t 2     < =   0 . 0 f   )  
 	 	 {  
 	 	 	 R e m o v e T i m e r ( ' B o m b D e l a y ' ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R e s e t C h a r a c t e r D e v ( )  
 	 {  
 	 	  
 	 	 U n e q u i p I t e m F r o m S l o t ( E E S _ S k i l l M u t a g e n 1 ) ;  
 	 	 U n e q u i p I t e m F r o m S l o t ( E E S _ S k i l l M u t a g e n 2 ) ;  
 	 	 U n e q u i p I t e m F r o m S l o t ( E E S _ S k i l l M u t a g e n 3 ) ;  
 	 	 U n e q u i p I t e m F r o m S l o t ( E E S _ S k i l l M u t a g e n 4 ) ;  
 	 	  
 	 	 l e v e l M a n a g e r . R e s e t C h a r a c t e r D e v ( ) ;  
 	 	 ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . R e s e t C h a r a c t e r D e v ( ) ; 	 	  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   R e s e t M u t a t i o n s D e v ( )  
 	 {  
 	 	 l e v e l M a n a g e r . R e s e t M u t a t i o n s D e v ( ) ;  
 	 	 ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . R e s e t M u t a t i o n s D e v ( ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t H e l d S w o r d ( )   :   S I t e m U n i q u e I d  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   w e a p o n s   :   a r r a y <   S I t e m U n i q u e I d   > ;  
 	 	  
 	 	 w e a p o n s   =   i n v . G e t H e l d W e a p o n s ( ) ;  
 	 	 f o r (   i = 0 ;   i < w e a p o n s . S i z e ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 i f (   i n v . I s I t e m S i l v e r S w o r d U s a b l e B y P l a y e r (   w e a p o n s [ i ]   )   | |   i n v . I s I t e m S t e e l S w o r d U s a b l e B y P l a y e r (   w e a p o n s [ i ]   )   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   w e a p o n s [ i ] ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C o n s u m e I t e m (   i t e m I d   :   S I t e m U n i q u e I d   )   :   b o o l  
 	 {  
 	 	 v a r   i t e m N a m e   :   n a m e ;  
 	 	 v a r   r e m o v e d I t e m ,   w i l l R e m o v e I t e m   :   b o o l ;  
 	 	 v a r   e d i b l e s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   t o S l o t   :   E E q u i p m e n t S l o t s ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   e q u i p p e d N e w E d i b l e   :   b o o l ;  
 	 	  
 	 	 i t e m N a m e   =   i n v . G e t I t e m N a m e (   i t e m I d   ) ;  
 	 	  
 	 	 i f   ( i t e m N a m e   = =   ' q 1 1 1 _ i m l e r i t h _ a c o r n '   )    
 	 	 {  
 	 	 	 A d d P o i n t s ( E S k i l l P o i n t ,   2 ,   t r u e ) ;  
 	 	 	 r e m o v e d I t e m   =   i n v . R e m o v e I t e m (   i t e m I d ,   1   ) ;  
 	 	 	 t h e G a m e . G e t G u i M a n a g e r ( ) . S h o w N o t i f i c a t i o n (   G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ c h a r a c t e r _ p o p u p _ t i t l e _ b u y _ s k i l l " )   +   " < b r > "   +   G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ c h a r a c t e r _ a v a i l a b l e p o i n t s " )   +   "   + 2 " ) ;  
 	 	 	 t h e S o u n d . S o u n d E v e n t ( " g u i _ c h a r a c t e r _ b u y _ s k i l l " ) ;    
 	 	 }    
 	 	 e l s e   i f   (   i t e m N a m e   = =   ' C l e a r i n g   P o t i o n '   )    
 	 	 {  
 	 	 	 R e s e t C h a r a c t e r D e v ( ) ;  
 	 	 	 r e m o v e d I t e m   =   i n v . R e m o v e I t e m (   i t e m I d ,   1   ) ;  
 	 	 	 t h e G a m e . G e t G u i M a n a g e r ( ) . S h o w N o t i f i c a t i o n (   G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ c h a r a c t e r _ p o p u p _ c h a r a c t e r _ c l e a r e d " )   ) ;  
 	 	 	 t h e S o u n d . S o u n d E v e n t ( " g u i _ c h a r a c t e r _ s y n e r g y _ e f f e c t " ) ;    
 	 	 }  
 	 	 e l s e   i f   (   i t e m N a m e   = =   ' R e s t o r i n g   P o t i o n '   )    
 	 	 {  
 	 	 	 R e s e t M u t a t i o n s D e v ( ) ;  
 	 	 	 r e m o v e d I t e m   =   i n v . R e m o v e I t e m (   i t e m I d ,   1   ) ;  
 	 	 	 t h e G a m e . G e t G u i M a n a g e r ( ) . S h o w N o t i f i c a t i o n (   G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ c h a r a c t e r _ p o p u p _ c h a r a c t e r _ c l e a r e d " )   ) ;  
 	 	 	 t h e S o u n d . S o u n d E v e n t ( " g u i _ c h a r a c t e r _ s y n e r g y _ e f f e c t " ) ;    
 	 	 }  
 	 	 e l s e   i f ( i t e m N a m e   = =   ' W o l f   H o u r ' )  
 	 	 {  
 	 	 	 r e m o v e d I t e m   =   i n v . R e m o v e I t e m (   i t e m I d ,   1   ) ;  
 	 	 	 t h e S o u n d . S o u n d E v e n t ( " g u i _ c h a r a c t e r _ s y n e r g y _ e f f e c t " ) ;    
 	 	 	 A d d E f f e c t D e f a u l t ( E E T _ W o l f H o u r ,   t h e P l a y e r ,   ' w o l f   h o u r ' ) ;  
 	 	 }  
 	 	 e l s e   i f   (   i t e m N a m e   = =   ' q 7 0 4 _ f t _ g o l d e n _ e g g '   )  
 	 	 {  
 	 	 	 A d d P o i n t s ( E S k i l l P o i n t ,   1 ,   t r u e ) ;  
 	 	 	 r e m o v e d I t e m   =   i n v . R e m o v e I t e m (   i t e m I d ,   1   ) ;  
 	 	 	 t h e G a m e . G e t G u i M a n a g e r ( ) . S h o w N o t i f i c a t i o n (   G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ c h a r a c t e r _ p o p u p _ t i t l e _ b u y _ s k i l l " )   +   " < b r > "   +   G e t L o c S t r i n g B y K e y E x t ( " p a n e l _ c h a r a c t e r _ a v a i l a b l e p o i n t s " )   +   "   + 1 " ) ;  
 	 	 	 t h e S o u n d . S o u n d E v e n t ( " g u i _ c h a r a c t e r _ b u y _ s k i l l " ) ;    
 	 	 }    
 	 	 e l s e   i f   (   i t e m N a m e   = =   ' m q 7 0 2 3 _ c a k e '   )  
 	 	 {  
 	 	 	 t h i s . A d d A b i l i t y ( ' m q 7 0 2 3 _ c a k e _ v i t a l i t y _ b o n u s ' ) ;  
 	 	 	 r e m o v e d I t e m   =   i n v . R e m o v e I t e m (   i t e m I d ,   1   ) ;  
 	 	 	 t h e S o u n d . S o u n d E v e n t ( " g u i _ c h a r a c t e r _ s y n e r g y _ e f f e c t " ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 w i l l R e m o v e I t e m   =   i n v . G e t I t e m Q u a n t i t y ( i t e m I d )   = =   1   & &   ! i n v . I t e m H a s T a g ( i t e m I d ,   ' I n f i n i t e U s e ' ) ;  
 	 	 	  
 	 	 	 i f ( w i l l R e m o v e I t e m )  
 	 	 	 	 t o S l o t   =   G e t I t e m S l o t ( i t e m I d ) ;  
 	 	 	 	  
 	 	 	 r e m o v e d I t e m   =   s u p e r . C o n s u m e I t e m ( i t e m I d ) ;  
 	 	 	  
 	 	 	 i f ( w i l l R e m o v e I t e m   & &   r e m o v e d I t e m )  
 	 	 	 {  
 	 	 	 	 e d i b l e s   =   i n v . G e t I t e m s B y T a g ( ' E d i b l e s ' ) ;  
 	 	 	 	 e q u i p p e d N e w E d i b l e   =   f a l s e ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 f o r ( i = 0 ;   i < e d i b l e s . S i z e ( ) ;   i + = 1 )  
 	 	 	 	 {  
 	 	 	 	 	 i f ( ! I s I t e m E q u i p p e d ( e d i b l e s [ i ] )   & &   ! i n v . I t e m H a s T a g ( e d i b l e s [ i ] ,   ' A l c o h o l ' )   & &   i n v . G e t I t e m N a m e ( e d i b l e s [ i ] )   ! =   ' C l e a r i n g   P o t i o n '   & &   i n v . G e t I t e m N a m e ( e d i b l e s [ i ] )   ! =   ' W o l f   H o u r ' )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 E q u i p I t e m I n G i v e n S l o t ( e d i b l e s [ i ] ,   t o S l o t ,   t r u e ,   f a l s e ) ;  
 	 	 	 	 	 	 e q u i p p e d N e w E d i b l e   =   t r u e ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f ( ! e q u i p p e d N e w E d i b l e )  
 	 	 	 	 {  
 	 	 	 	 	 f o r ( i = 0 ;   i < e d i b l e s . S i z e ( ) ;   i + = 1 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f ( ! I s I t e m E q u i p p e d ( e d i b l e s [ i ] )   & &   i n v . G e t I t e m N a m e ( e d i b l e s [ i ] )   ! =   ' C l e a r i n g   P o t i o n '   & &   i n v . G e t I t e m N a m e ( e d i b l e s [ i ] )   ! =   ' W o l f   H o u r ' )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 E q u i p I t e m I n G i v e n S l o t ( e d i b l e s [ i ] ,   t o S l o t ,   t r u e ,   f a l s e ) ;  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   r e m o v e d I t e m ;  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t A l c o h o l F o r A l c h e m i c a l I t e m s R e f i l l ( )   :   S I t e m U n i q u e I d  
 	 {  
 	 	 v a r   a l c o s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   i d   :   S I t e m U n i q u e I d ;  
 	 	 v a r   i ,   p r i c e ,   m i n P r i c e   :   i n t ;  
 	 	  
 	 	 a l c o s   =   i n v . G e t I t e m s B y T a g ( t h e G a m e . p a r a m s . T A G _ A L C H E M Y _ R E F I L L _ A L C O ) ;  
 	 	  
 	 	 i f ( a l c o s . S i z e ( )   >   0 )  
 	 	 {  
 	 	 	 i f ( i n v . I t e m H a s T a g ( a l c o s [ 0 ] ,   t h e G a m e . p a r a m s . T A G _ I N F I N I T E _ U S E ) )  
 	 	 	 	 r e t u r n   a l c o s [ 0 ] ;  
 	 	 	 	  
 	 	 	 m i n P r i c e   =   i n v . G e t I t e m P r i c e ( a l c o s [ 0 ] ) ;  
 	 	 	 p r i c e   =   m i n P r i c e ;  
 	 	 	 i d   =   a l c o s [ 0 ] ;  
 	 	 	  
 	 	 	 f o r ( i = 1 ;   i < a l c o s . S i z e ( ) ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 i f ( i n v . I t e m H a s T a g ( a l c o s [ i ] ,   t h e G a m e . p a r a m s . T A G _ I N F I N I T E _ U S E ) )  
 	 	 	 	 	 r e t u r n   a l c o s [ i ] ;  
 	 	 	 	  
 	 	 	 	 p r i c e   =   i n v . G e t I t e m P r i c e ( a l c o s [ i ] ) ;  
 	 	 	 	  
 	 	 	 	 i f ( p r i c e   <   m i n P r i c e )  
 	 	 	 	 {  
 	 	 	 	 	 m i n P r i c e   =   p r i c e ;  
 	 	 	 	 	 i d   =   a l c o s [ i ] ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 r e t u r n   i d ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   C l e a r P r e v i o u s l y U s e d B o l t ( )  
 	 {  
 	 	 p r e v i o u s l y U s e d B o l t   =   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S h o u l d U s e I n f i n i t e W a t e r B o l t s ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   G e t C u r r e n t S t a t e N a m e ( )   = =   ' S w i m m i n g '   | |   I s S w i m m i n g ( )   | |   I s D i v i n g ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t C u r r e n t I n f i n i t e B o l t N a m e (   o p t i o n a l   f o r c e B o d k i n   :   b o o l ,   o p t i o n a l   f o r c e H a r p o o n   :   b o o l   )   :   n a m e  
 	 {  
 	 	 i f ( ! f o r c e B o d k i n   & &   ( f o r c e H a r p o o n   | |   S h o u l d U s e I n f i n i t e W a t e r B o l t s ( ) )   )  
 	 	 {  
 	 	 	 r e t u r n   ' H a r p o o n   B o l t ' ;  
 	 	 }  
 	 	 r e t u r n   ' B o d k i n   B o l t ' ;  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   A d d A n d E q u i p I n f i n i t e B o l t ( o p t i o n a l   f o r c e B o d k i n   :   b o o l ,   o p t i o n a l   f o r c e H a r p o o n   :   b o o l )  
 	 {  
 	 	 v a r   b o l t ,   b o d k i n s ,   h a r p o o n s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   b o l t I t e m N a m e   :   n a m e ;  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	  
 	 	 b o d k i n s   =   i n v . G e t I t e m s B y N a m e ( ' B o d k i n   B o l t ' ) ;  
 	 	 h a r p o o n s   =   i n v . G e t I t e m s B y N a m e ( ' H a r p o o n   B o l t ' ) ;  
 	 	  
 	 	 f o r ( i = b o d k i n s . S i z e ( ) - 1 ;   i > = 0 ;   i - = 1 )  
 	 	 	 i n v . R e m o v e I t e m ( b o d k i n s [ i ] ,   i n v . G e t I t e m Q u a n t i t y ( b o d k i n s [ i ] )   ) ;  
 	 	 	  
 	 	 f o r ( i = h a r p o o n s . S i z e ( ) - 1 ;   i > = 0 ;   i - = 1 )  
 	 	 	 i n v . R e m o v e I t e m ( h a r p o o n s [ i ] ,   i n v . G e t I t e m Q u a n t i t y ( h a r p o o n s [ i ] )   ) ;  
 	 	 	  
 	 	  
 	 	  
 	 	 b o l t I t e m N a m e   =   G e t C u r r e n t I n f i n i t e B o l t N a m e (   f o r c e B o d k i n ,   f o r c e H a r p o o n   ) ;  
 	 	  
 	 	  
 	 	 i f ( b o l t I t e m N a m e   = =   ' B o d k i n   B o l t '   & &   i n v . I s I d V a l i d ( p r e v i o u s l y U s e d B o l t ) )  
 	 	 {  
 	 	 	 b o l t . P u s h B a c k ( p r e v i o u s l y U s e d B o l t ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	  
 	 	 	 b o l t   =   i n v . A d d A n I t e m ( b o l t I t e m N a m e ,   1 ,   t r u e ,   t r u e ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f ( b o l t I t e m N a m e   = =   ' H a r p o o n   B o l t ' )  
 	 	 	 {  
 	 	 	 	 G e t I t e m E q u i p p e d O n S l o t ( E E S _ B o l t ,   p r e v i o u s l y U s e d B o l t ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 E q u i p I t e m ( b o l t [ 0 ] ,   E E S _ B o l t ) ;  
 	 }  
 	  
 	  
 	 e v e n t   O n I t e m G i v e n ( d a t a   :   S I t e m C h a n g e d D a t a )  
 	 {  
 	 	 v a r   m _ g u i M a n a g e r   	 :   C R 4 G u i M a n a g e r ;  
 	 	  
 	 	 s u p e r . O n I t e m G i v e n ( d a t a ) ;  
 	 	  
 	 	  
 	 	 i f ( ! i n v )  
 	 	 	 i n v   =   G e t I n v e n t o r y ( ) ;  
 	 	  
 	 	  
 	 	 i f ( i n v . I s I t e m E n c u m b r a n c e I t e m ( d a t a . i d s [ 0 ] ) )  
 	 	 	 U p d a t e E n c u m b r a n c e ( ) ;  
 	 	  
 	 	 m _ g u i M a n a g e r   =   t h e G a m e . G e t G u i M a n a g e r ( ) ;  
 	 	 i f ( m _ g u i M a n a g e r )  
 	 	 	 m _ g u i M a n a g e r . R e g i s t e r N e w I t e m ( d a t a . i d s [ 0 ] ) ;  
 	 }  
 	 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   C h e c k F o r F u l l y A r m e d A c h i e v e m e n t ( )  
 	 {  
 	 	 i f (   H a s A l l I t e m s F r o m S e t ( t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ B E A R )   | |   H a s A l l I t e m s F r o m S e t ( t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ G R Y P H O N )   | |    
 	 	 	 H a s A l l I t e m s F r o m S e t ( t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ L Y N X )   | |   H a s A l l I t e m s F r o m S e t ( t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ W O L F )   | |  
 	 	 	 H a s A l l I t e m s F r o m S e t ( t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ V I P E R )   | |   H a s A l l I t e m s F r o m S e t ( t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ N E T F L I X ) 	 	 	  
 	 	 )  
 	 	 {  
 	 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . A d d A c h i e v e m e n t ( E A _ F u l l y A r m e d ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   H a s A l l I t e m s F r o m S e t ( s e t I t e m T a g   :   n a m e )   :   b o o l  
 	 {  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 i f ( ! G e t I t e m E q u i p p e d O n S l o t ( E E S _ S t e e l S w o r d ,   i t e m )   | |   ! i n v . I t e m H a s T a g ( i t e m ,   s e t I t e m T a g ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i f ( ! G e t I t e m E q u i p p e d O n S l o t ( E E S _ S i l v e r S w o r d ,   i t e m )   | |   ! i n v . I t e m H a s T a g ( i t e m ,   s e t I t e m T a g ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 i f ( ! G e t I t e m E q u i p p e d O n S l o t ( E E S _ B o o t s ,   i t e m )   | |   ! i n v . I t e m H a s T a g ( i t e m ,   s e t I t e m T a g ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 i f ( ! G e t I t e m E q u i p p e d O n S l o t ( E E S _ P a n t s ,   i t e m )   | |   ! i n v . I t e m H a s T a g ( i t e m ,   s e t I t e m T a g ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 i f ( ! G e t I t e m E q u i p p e d O n S l o t ( E E S _ G l o v e s ,   i t e m )   | |   ! i n v . I t e m H a s T a g ( i t e m ,   s e t I t e m T a g ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 i f ( ! G e t I t e m E q u i p p e d O n S l o t ( E E S _ A r m o r ,   i t e m )   | |   ! i n v . I t e m H a s T a g ( i t e m ,   s e t I t e m T a g ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	  
 	 	 i f ( s e t I t e m T a g   = =   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ B E A R   | |   s e t I t e m T a g   = =   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ L Y N X )  
 	 	 {  
 	 	 	 i f ( ! G e t I t e m E q u i p p e d O n S l o t ( E E S _ R a n g e d W e a p o n ,   i t e m )   | |   ! i n v . I t e m H a s T a g ( i t e m ,   s e t I t e m T a g ) )  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   C h e c k F o r F u l l y A r m e d B y T a g ( s e t I t e m T a g   :   n a m e )  
 	 {  
 	 	 v a r   d o n e P a r t s ,   t o t a l P a r t s   :   i n t ;  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 i f ( s e t I t e m T a g   = =   ' ' )  
 	 	 	 r e t u r n ;  
 	 	 	  
 	 	  
 	 	 d o n e P a r t s   =   0 ;  
 	 	 t o t a l P a r t s   =   6 ;  
 	 	 i f ( G e t I t e m E q u i p p e d O n S l o t ( E E S _ S t e e l S w o r d ,   i t e m )   & &   i n v . I t e m H a s T a g ( i t e m ,   s e t I t e m T a g ) )  
 	 	 	 d o n e P a r t s   + =   1 ;  
 	 	  
 	 	 i f ( G e t I t e m E q u i p p e d O n S l o t ( E E S _ S i l v e r S w o r d ,   i t e m )   & &   i n v . I t e m H a s T a g ( i t e m ,   s e t I t e m T a g ) )  
 	 	 	 d o n e P a r t s   + =   1 ;  
 	 	 	  
 	 	 i f ( G e t I t e m E q u i p p e d O n S l o t ( E E S _ B o o t s ,   i t e m )   & &   i n v . I t e m H a s T a g ( i t e m ,   s e t I t e m T a g ) )  
 	 	 	 d o n e P a r t s   + =   1 ;  
 	 	 	  
 	 	 i f ( G e t I t e m E q u i p p e d O n S l o t ( E E S _ P a n t s ,   i t e m )   & &   i n v . I t e m H a s T a g ( i t e m ,   s e t I t e m T a g ) )  
 	 	 	 d o n e P a r t s   + =   1 ;  
 	 	 	  
 	 	 i f ( G e t I t e m E q u i p p e d O n S l o t ( E E S _ G l o v e s ,   i t e m )   & &   i n v . I t e m H a s T a g ( i t e m ,   s e t I t e m T a g ) )  
 	 	 	 d o n e P a r t s   + =   1 ;  
 	 	 	  
 	 	 i f ( G e t I t e m E q u i p p e d O n S l o t ( E E S _ A r m o r ,   i t e m )   & &   i n v . I t e m H a s T a g ( i t e m ,   s e t I t e m T a g ) )  
 	 	 	 d o n e P a r t s   + =   1 ;  
 	 	 	  
 	 	  
 	 	 i f ( s e t I t e m T a g   = =   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ B E A R   | |   s e t I t e m T a g   = =   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ L Y N X )  
 	 	 {  
 	 	 	 t o t a l P a r t s   + =   1 ;  
 	 	 	 i f ( G e t I t e m E q u i p p e d O n S l o t ( E E S _ R a n g e d W e a p o n ,   i t e m )   & &   i n v . I t e m H a s T a g ( i t e m ,   s e t I t e m T a g ) )  
 	 	 	 	 d o n e P a r t s   + =   1 ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( d o n e P a r t s   > =   t o t a l P a r t s )    
 	 	 {  
 	 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . A d d A c h i e v e m e n t ( E A _ F u l l y A r m e d ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . N o t i c e A c h i e v e m e n t P r o g r e s s ( E A _ F u l l y A r m e d ,   d o n e P a r t s ,   t o t a l P a r t s ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t T o t a l A r m o r ( )   :   S A b i l i t y A t t r i b u t e V a l u e  
 	 {  
 	 	 v a r   a r m o r   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   a r m o r I t e m   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 a r m o r   =   s u p e r . G e t T o t a l A r m o r ( ) ;  
 	 	  
 	 	 i f ( G e t I t e m E q u i p p e d O n S l o t ( E E S _ A r m o r ,   a r m o r I t e m ) )  
 	 	 {  
 	 	 	  
 	 	 	 a r m o r   - =   i n v . G e t I t e m A t t r i b u t e V a l u e ( a r m o r I t e m ,   t h e G a m e . p a r a m s . A R M O R _ V A L U E _ N A M E ) ;  
 	 	 	  
 	 	 	  
 	 	 	 a r m o r   + =   i n v . G e t I t e m A r m o r T o t a l ( a r m o r I t e m ) ; 	 	 	  
 	 	 }  
 	 	  
 	 	 i f ( G e t I t e m E q u i p p e d O n S l o t ( E E S _ P a n t s ,   a r m o r I t e m ) )  
 	 	 {  
 	 	 	  
 	 	 	 a r m o r   - =   i n v . G e t I t e m A t t r i b u t e V a l u e ( a r m o r I t e m ,   t h e G a m e . p a r a m s . A R M O R _ V A L U E _ N A M E ) ;  
 	 	 	  
 	 	 	  
 	 	 	 a r m o r   + =   i n v . G e t I t e m A r m o r T o t a l ( a r m o r I t e m ) ; 	 	 	  
 	 	 }  
 	 	 	  
 	 	 i f ( G e t I t e m E q u i p p e d O n S l o t ( E E S _ B o o t s ,   a r m o r I t e m ) )  
 	 	 {  
 	 	 	  
 	 	 	 a r m o r   - =   i n v . G e t I t e m A t t r i b u t e V a l u e ( a r m o r I t e m ,   t h e G a m e . p a r a m s . A R M O R _ V A L U E _ N A M E ) ;  
 	 	 	  
 	 	 	  
 	 	 	 a r m o r   + =   i n v . G e t I t e m A r m o r T o t a l ( a r m o r I t e m ) ; 	 	 	  
 	 	 }  
 	 	 	  
 	 	 i f ( G e t I t e m E q u i p p e d O n S l o t ( E E S _ G l o v e s ,   a r m o r I t e m ) )  
 	 	 {  
 	 	 	  
 	 	 	 a r m o r   - =   i n v . G e t I t e m A t t r i b u t e V a l u e ( a r m o r I t e m ,   t h e G a m e . p a r a m s . A R M O R _ V A L U E _ N A M E ) ;  
 	 	 	  
 	 	 	  
 	 	 	 a r m o r   + =   i n v . G e t I t e m A r m o r T o t a l ( a r m o r I t e m ) ; 	 	 	  
 	 	 }  
 	 	 	  
 	 	 r e t u r n   a r m o r ;  
 	 }  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   R e d u c e A r m o r D u r a b i l i t y ( )   :   E E q u i p m e n t S l o t s  
 	 {  
 	 	 v a r   r ,   s u m   :   i n t ;  
 	 	 v a r   s l o t   :   E E q u i p m e n t S l o t s ;  
 	 	 v a r   i d   :   S I t e m U n i q u e I d ;  
 	 	 v a r   p r e v D u r M u l t ,   c u r r D u r M u l t ,   r a t i o   :   f l o a t ;  
 	  
 	 	  
 	 	 s u m   =   t h e G a m e . p a r a m s . D U R A B I L I T Y _ A R M O R _ C H E S T _ W E I G H T ;  
 	 	 s u m   + =   t h e G a m e . p a r a m s . D U R A B I L I T Y _ A R M O R _ P A N T S _ W E I G H T ;  
 	 	 s u m   + =   t h e G a m e . p a r a m s . D U R A B I L I T Y _ A R M O R _ G L O V E S _ W E I G H T ;  
 	 	 s u m   + =   t h e G a m e . p a r a m s . D U R A B I L I T Y _ A R M O R _ B O O T S _ W E I G H T ;  
 	 	 s u m   + =   t h e G a m e . p a r a m s . D U R A B I L I T Y _ A R M O R _ M I S S _ W E I G H T ;  
 	 	  
 	 	 r   =   R a n d R a n g e ( s u m ) ;  
 	 	  
 	 	 i f ( r   <   t h e G a m e . p a r a m s . D U R A B I L I T Y _ A R M O R _ C H E S T _ W E I G H T )  
 	 	 	 s l o t   =   E E S _ A r m o r ;  
 	 	 e l s e   i f   ( r   <   t h e G a m e . p a r a m s . D U R A B I L I T Y _ A R M O R _ C H E S T _ W E I G H T   +   t h e G a m e . p a r a m s . D U R A B I L I T Y _ A R M O R _ P A N T S _ W E I G H T )  
 	 	 	 s l o t   =   E E S _ P a n t s ;  
 	 	 e l s e   i f   ( r   <   t h e G a m e . p a r a m s . D U R A B I L I T Y _ A R M O R _ C H E S T _ W E I G H T   +   t h e G a m e . p a r a m s . D U R A B I L I T Y _ A R M O R _ P A N T S _ W E I G H T   +   t h e G a m e . p a r a m s . D U R A B I L I T Y _ A R M O R _ G L O V E S _ W E I G H T )  
 	 	 	 s l o t   =   E E S _ G l o v e s ;  
 	 	 e l s e   i f   ( r   <   t h e G a m e . p a r a m s . D U R A B I L I T Y _ A R M O R _ C H E S T _ W E I G H T   +   t h e G a m e . p a r a m s . D U R A B I L I T Y _ A R M O R _ P A N T S _ W E I G H T   +   t h e G a m e . p a r a m s . D U R A B I L I T Y _ A R M O R _ G L O V E S _ W E I G H T   +   t h e G a m e . p a r a m s . D U R A B I L I T Y _ A R M O R _ B O O T S _ W E I G H T )  
 	 	 	 s l o t   =   E E S _ B o o t s ;  
 	 	 e l s e  
 	 	 	 r e t u r n   E E S _ I n v a l i d S l o t ; 	 	 	 	 	  
 	 	  
 	 	 G e t I t e m E q u i p p e d O n S l o t ( s l o t ,   i d ) ; 	 	 	 	  
 	 	 r a t i o   =   i n v . G e t I t e m D u r a b i l i t y R a t i o ( i d ) ; 	 	  
 	 	 i f ( i n v . R e d u c e I t e m D u r a b i l i t y ( i d ) ) 	 	 	  
 	 	 {  
 	 	 	 p r e v D u r M u l t   =   t h e G a m e . p a r a m s . G e t D u r a b i l i t y M u l t i p l i e r ( r a t i o ,   f a l s e ) ;  
 	 	 	  
 	 	 	 r a t i o   =   i n v . G e t I t e m D u r a b i l i t y R a t i o ( i d ) ;  
 	 	 	 c u r r D u r M u l t   =   t h e G a m e . p a r a m s . G e t D u r a b i l i t y M u l t i p l i e r ( r a t i o ,   f a l s e ) ;  
 	 	 	  
 	 	 	 i f ( c u r r D u r M u l t   ! =   p r e v D u r M u l t )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 }  
 	 	 	 	  
 	 	 	 r e t u r n   s l o t ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   E E S _ I n v a l i d S l o t ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   D i s m a n t l e I t e m ( d i s m a n t l e d I t e m   :   S I t e m U n i q u e I d ,   t o o l I t e m   :   S I t e m U n i q u e I d )   :   b o o l  
 	 {  
 	 	 v a r   p a r t s   :   a r r a y < S I t e m P a r t s > ;  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 i f ( ! i n v . I s I t e m D i s m a n t l e K i t ( t o o l I t e m ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 p a r t s   =   i n v . G e t I t e m R e c y c l i n g P a r t s ( d i s m a n t l e d I t e m ) ;  
 	 	  
 	 	 i f ( p a r t s . S i z e ( )   < =   0 )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 f o r ( i = 0 ;   i < p a r t s . S i z e ( ) ;   i + = 1 )  
 	 	 	 i n v . A d d A n I t e m ( p a r t s [ i ] . i t e m N a m e ,   p a r t s [ i ] . q u a n t i t y ,   t r u e ,   f a l s e ) ;  
 	 	 	  
 	 	 i n v . R e m o v e I t e m ( t o o l I t e m ) ;  
 	 	 i n v . R e m o v e I t e m ( d i s m a n t l e d I t e m ) ;  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t I t e m E q u i p p e d O n S l o t ( s l o t   :   E E q u i p m e n t S l o t s ,   o u t   i t e m   :   S I t e m U n i q u e I d )   :   b o o l  
 	 {  
 	 	 i f ( s l o t   = =   E E S _ I n v a l i d S l o t   | |   s l o t   <   0   | |   s l o t   >   E n u m G e t M a x ( ' E E q u i p m e n t S l o t s ' ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i t e m   =   i t e m S l o t s [ s l o t ] ;  
 	 	  
 	 	 r e t u r n   i n v . I s I d V a l i d ( i t e m ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t I t e m S l o t B y I t e m N a m e ( i t e m N a m e   :   n a m e )   :   E E q u i p m e n t S l o t s  
 	 {  
 	 	 v a r   i d s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   s l o t   :   E E q u i p m e n t S l o t s ;  
 	 	  
 	 	 i d s   =   i n v . G e t I t e m s B y N a m e ( i t e m N a m e ) ;  
 	 	 f o r ( i = 0 ;   i < i d s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 s l o t   =   G e t I t e m S l o t ( i d s [ i ] ) ;  
 	 	 	 i f ( s l o t   ! =   E E S _ I n v a l i d S l o t )  
 	 	 	 	 r e t u r n   s l o t ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   E E S _ I n v a l i d S l o t ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t I t e m S l o t ( i t e m   :   S I t e m U n i q u e I d )   :   E E q u i p m e n t S l o t s  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 i f ( ! i n v . I s I d V a l i d ( i t e m ) )  
 	 	 	 r e t u r n   E E S _ I n v a l i d S l o t ;  
 	 	 	  
 	 	 f o r ( i = 0 ;   i < i t e m S l o t s . S i z e ( ) ;   i + = 1 )  
 	 	 	 i f ( i t e m S l o t s [ i ]   = =   i t e m )  
 	 	 	 	 r e t u r n   i ;  
 	 	  
 	 	 r e t u r n   E E S _ I n v a l i d S l o t ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t E q u i p p e d I t e m s ( )   :   a r r a y < S I t e m U n i q u e I d >  
 	 {  
 	 	 r e t u r n   i t e m S l o t s ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s I t e m E q u i p p e d ( i t e m   :   S I t e m U n i q u e I d )   :   b o o l  
 	 {  
 	 	 i f ( ! i n v . I s I d V a l i d ( i t e m ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 r e t u r n   i t e m S l o t s . C o n t a i n s ( i t e m ) ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   I s I t e m H e l d ( i t e m   :   S I t e m U n i q u e I d )   :   b o o l  
 	 {  
 	 	 i f ( ! i n v . I s I d V a l i d ( i t e m ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 r e t u r n   i n v . I s I t e m H e l d ( i t e m ) ;  
 	 }  
  
 	  
 	 p u b l i c   f u n c t i o n   I s A n y I t e m E q u i p p e d O n S l o t ( s l o t   :   E E q u i p m e n t S l o t s )   :   b o o l  
 	 {  
 	 	 i f ( s l o t   = =   E E S _ I n v a l i d S l o t   | |   s l o t   <   0   | |   s l o t   >   E n u m G e t M a x ( ' E E q u i p m e n t S l o t s ' ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 r e t u r n   i n v . I s I d V a l i d ( i t e m S l o t s [ s l o t ] ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t F r e e Q u i c k s l o t ( )   :   E E q u i p m e n t S l o t s  
 	 {  
 	 	 i f ( ! i n v . I s I d V a l i d ( i t e m S l o t s [ E E S _ Q u i c k s l o t 1 ] ) ) 	 	 r e t u r n   E E S _ Q u i c k s l o t 1 ;  
 	 	 i f ( ! i n v . I s I d V a l i d ( i t e m S l o t s [ E E S _ Q u i c k s l o t 2 ] ) ) 	 	 r e t u r n   E E S _ Q u i c k s l o t 2 ;  
 	 	  
 	 	  
 	 	 r e t u r n   E E S _ I n v a l i d S l o t ;  
 	 }  
 	  
 	  
 	 e v e n t   O n E q u i p I t e m R e q u e s t e d ( i t e m   :   S I t e m U n i q u e I d ,   i g n o r e M o u n t   :   b o o l )  
 	 {  
 	 	 v a r   s l o t   :   E E q u i p m e n t S l o t s ;  
 	 	  
 	 	 i f ( i n v . I s I d V a l i d ( i t e m ) )  
 	 	 {  
 	 	 	 s l o t   =   i n v . G e t S l o t F o r I t e m I d ( i t e m ) ;  
 	 	 	 	  
 	 	 	 i f   ( s l o t   ! =   E E S _ I n v a l i d S l o t )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 E q u i p I t e m I n G i v e n S l o t ( i t e m ,   s l o t ,   i g n o r e M o u n t ) ;  
 	 	 	 }  
 	 	 }  
 	 }    
 	  
 	 e v e n t   O n U n e q u i p I t e m R e q u e s t e d ( i t e m   :   S I t e m U n i q u e I d )  
 	 {  
 	 	 U n e q u i p I t e m ( i t e m ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   E q u i p I t e m ( i t e m   :   S I t e m U n i q u e I d ,   o p t i o n a l   s l o t   :   E E q u i p m e n t S l o t s ,   o p t i o n a l   t o H a n d   :   b o o l )   :   b o o l  
 	 {  
 	 	 i f ( ! i n v . I s I d V a l i d ( i t e m ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 i f ( s l o t   = =   E E S _ I n v a l i d S l o t )  
 	 	 {  
 	 	 	 s l o t   =   i n v . G e t S l o t F o r I t e m I d ( i t e m ) ;  
 	 	 	  
 	 	 	 i f ( s l o t   = =   E E S _ I n v a l i d S l o t )  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 F o r c e S o u n d A p p e a r a n c e U p d a t e ( ) ;  
 	 	  
 	 	 r e t u r n   E q u i p I t e m I n G i v e n S l o t ( i t e m ,   s l o t ,   f a l s e ,   t o H a n d ) ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   S h o u l d M o u n t ( s l o t   :   E E q u i p m e n t S l o t s ,   i t e m   :   S I t e m U n i q u e I d ,   c a t e g o r y   :   n a m e ) : b o o l  
 	 {  
 	 	  
 	 	  
 	 	 r e t u r n   ! I s S l o t P o t i o n M u t a g e n ( s l o t )   & &   c a t e g o r y   ! =   ' u s a b l e '   & &   c a t e g o r y   ! =   ' p o t i o n '   & &   c a t e g o r y   ! =   ' p e t a r d '   & &   ! i n v . I t e m H a s T a g ( i t e m ,   ' P l a y e r U n w e a r a b l e ' ) ;  
 	 }  
 	 	  
 	 p r o t e c t e d   f u n c t i o n   S h o u l d M o u n t I t e m W i t h N a m e (   i t e m N a m e :   n a m e   ) :   b o o l  
 	 {  
 	 	 v a r   s l o t   :   E E q u i p m e n t S l o t s ;  
 	 	 v a r   i t e m s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   c a t e g o r y   :   n a m e ;  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 i t e m s   =   i n v . G e t I t e m s B y N a m e (   i t e m N a m e   ) ;  
 	 	  
 	 	 c a t e g o r y   =   i n v . G e t I t e m C a t e g o r y (   i t e m s [ 0 ]   ) ;  
 	 	  
 	 	 s l o t   =   G e t I t e m S l o t (   i t e m s [ 0 ]   ) ;  
 	 	  
 	 	 r e t u r n   S h o u l d M o u n t (   s l o t ,   i t e m s [ 0 ] ,   c a t e g o r y   ) ;  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t M o u n t a b l e I t e m s (   o u t   i t e m s   :   a r r a y <   S I t e m U n i q u e I d   >   )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   m o u n t a b l e   :   b o o l ;  
 	 	 v a r   m o u n t a b l e I t e m s   :   a r r a y <   S I t e m U n i q u e I d   > ;  
 	 	 v a r   s l o t   :   E E q u i p m e n t S l o t s ;  
 	 	 v a r   c a t e g o r y   :   n a m e ;  
 	 	 v a r   i t e m :   S I t e m U n i q u e I d ;  
 	 	  
 	 	 f o r   (   i   =   0 ;   i   <   i t e m s . S i z e ( ) ;   i   + =   1   )  
 	 	 {  
 	 	 	 i t e m   =   i t e m s [ i ] ;  
 	 	  
 	 	 	 c a t e g o r y   =   i n v . G e t I t e m C a t e g o r y (   i t e m   ) ;  
 	 	  
 	 	 	 s l o t   =   G e t I t e m S l o t (   i t e m   ) ;  
 	 	  
 	 	 	 m o u n t a b l e   =   S h o u l d M o u n t (   s l o t ,   i t e m ,   c a t e g o r y   ) ;  
 	 	  
 	 	 	 i f   (   m o u n t a b l e   )  
 	 	 	 {  
 	 	 	 	 m o u n t a b l e I t e m s . P u s h B a c k (   i t e m s [   i   ]   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 i t e m s   =   m o u n t a b l e I t e m s ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   A d d A n d E q u i p I t e m (   i t e m   :   n a m e   )   :   b o o l  
 	 {  
 	 	 v a r   i d s   :   a r r a y <   S I t e m U n i q u e I d   > ;  
 	 	  
 	 	 i d s   =   i n v . A d d A n I t e m (   i t e m   ) ;  
 	 	 i f (   i n v . I s I d V a l i d (   i d s [   0   ]   )   )  
 	 	 {  
 	 	 	 r e t u r n   E q u i p I t e m (   i d s [   0   ]   ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   A d d Q u e s t M a r k e d S e l e c t e d Q u i c k s l o t I t e m (   s e l   :   S S e l e c t e d Q u i c k s l o t I t e m   )  
 	 {  
 	 	 q u e s t M a r k e d S e l e c t e d Q u i c k s l o t I t e m s . P u s h B a c k (   s e l   ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t Q u e s t M a r k e d S e l e c t e d Q u i c k s l o t I t e m (   s o u r c e N a m e   :   n a m e   )   :   S I t e m U n i q u e I d  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 f o r (   i = 0 ;   i < q u e s t M a r k e d S e l e c t e d Q u i c k s l o t I t e m s . S i z e ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 i f (   q u e s t M a r k e d S e l e c t e d Q u i c k s l o t I t e m s [ i ] . s o u r c e N a m e   = =   s o u r c e N a m e   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   q u e s t M a r k e d S e l e c t e d Q u i c k s l o t I t e m s [ i ] . i t e m I D ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   S w a p E q u i p p e d I t e m s ( s l o t 1   :   E E q u i p m e n t S l o t s ,   s l o t 2   :   E E q u i p m e n t S l o t s )  
 	 {  
 	 	 v a r   t e m p   :   S I t e m U n i q u e I d ;  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	  
 	 	 t e m p   =   i t e m S l o t s [ s l o t 1 ] ;  
 	 	 i t e m S l o t s [ s l o t 1 ]   =   i t e m S l o t s [ s l o t 2 ] ;  
 	 	 i t e m S l o t s [ s l o t 2 ]   =   t e m p ;  
 	 	  
 	 	 i f ( I s S l o t S k i l l M u t a g e n ( s l o t 1 ) )  
 	 	 {  
 	 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 	 i f ( p a m )  
 	 	 	 	 p a m . O n S w a p p e d M u t a g e n s P o s t ( i t e m S l o t s [ s l o t 1 ] ,   i t e m S l o t s [ s l o t 2 ] ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t S l o t F o r E q u i p p e d I t e m (   i t e m I D   :   S I t e m U n i q u e I d   )   :   E E q u i p m e n t S l o t s  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 f o r (   i = 0 ;   i < i t e m S l o t s . S i z e ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 i f (   i t e m S l o t s [ i ]   = =   i t e m I D   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   i ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   E E S _ I n v a l i d S l o t ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   E q u i p I t e m I n G i v e n S l o t ( i t e m   :   S I t e m U n i q u e I d ,   s l o t   :   E E q u i p m e n t S l o t s ,   i g n o r e M o u n t i n g   :   b o o l ,   o p t i o n a l   t o H a n d   :   b o o l )   :   b o o l  
 	 { 	 	 	  
 	 	 v a r   i ,   g r o u p I D ,   q u a n t i t y   :   i n t ;  
 	 	 v a r   f i s t s I D   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	 v a r   i s S k i l l M u t a g e n   :   b o o l ; 	 	  
 	 	 v a r   a r m o r E n t i t y   :   C I t e m E n t i t y ;  
 	 	 v a r   a r m o r M e s h C o m p o n e n t   :   C C o m p o n e n t ;  
 	 	 v a r   a r m o r S o u n d I d e n t i f i c a t i o n   :   n a m e ;  
 	 	 v a r   c a t e g o r y   :   n a m e ;  
 	 	 v a r   t a g O f A S e t   :   n a m e ;  
 	 	 v a r   p r e v S k i l l C o l o r   :   E S k i l l C o l o r ;  
 	 	 v a r   c o n t a i n e d A b i l i t i e s   :   a r r a y < n a m e > ;  
 	 	 v a r   d m   :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ;  
 	 	 v a r   a r m o r T y p e   :   E A r m o r T y p e ;  
 	 	 v a r   o t h e r M a s k ,   p r e v i o u s I t e m I n S l o t   :   S I t e m U n i q u e I d ;  
 	 	 v a r   t u t S t a t e P o t   :   W 3 T u t o r i a l M a n a g e r U I H a n d l e r S t a t e P o t i o n s ;  
 	 	 v a r   t u t S t a t e F o o d   :   W 3 T u t o r i a l M a n a g e r U I H a n d l e r S t a t e F o o d ;  
 	 	 v a r   t u t S t a t e S e c o n d P o t i o n E q u i p   :   W 3 T u t o r i a l M a n a g e r U I H a n d l e r S t a t e S e c o n d P o t i o n E q u i p ;  
 	 	 v a r   b o l t I t e m   :   S I t e m U n i q u e I d ;  
 	 	 v a r   a e r o n d i g h t   :   W 3 E f f e c t _ A e r o n d i g h t ;  
 	 	  
 	 	 i f ( ! i n v . I s I d V a l i d ( i t e m ) )  
 	 	 {  
 	 	 	 L o g A s s e r t ( f a l s e ,   " W 3 P l a y e r W i t c h e r . E q u i p I t e m I n G i v e n S l o t :   i n v a l i d   i t e m " ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 i f ( s l o t   = =   E E S _ I n v a l i d S l o t   | |   s l o t   = =   E E S _ H o r s e B l i n d e r s   | |   s l o t   = =   E E S _ H o r s e S a d d l e   | |   s l o t   = =   E E S _ H o r s e B a g   | |   s l o t   = =   E E S _ H o r s e T r o p h y )  
 	 	 {  
 	 	 	 L o g A s s e r t ( f a l s e ,   " W 3 P l a y e r W i t c h e r . E q u i p I t e m :   C a n n o t   e q u i p   i t e m   < < "   +   i n v . G e t I t e m N a m e ( i t e m )   +   " > >   -   p r o v i d e d   s l o t   < < "   +   s l o t   +   " > >   i s   i n v a l i d " ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 i f ( i t e m S l o t s [ s l o t ]   = =   i t e m )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 } 	  
 	 	  
 	 	 i f ( ! H a s R e q u i r e d L e v e l T o E q u i p I t e m ( i t e m ) )  
 	 	 {  
 	 	 	  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f ( i n v . I t e m H a s T a g ( i t e m ,   ' P h a n t o m W e a p o n ' )   & &   ! G e t P h a n t o m W e a p o n M g r ( ) )  
 	 	 {  
 	 	 	 I n i t P h a n t o m W e a p o n M g r ( ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   s l o t   = =   E E S _ S i l v e r S w o r d   & &   i n v . I t e m H a s T a g (   i t e m ,   ' A e r o n d i g h t '   )   )  
 	 	 {  
 	 	 	 A d d E f f e c t D e f a u l t (   E E T _ A e r o n d i g h t ,   t h i s ,   " A e r o n d i g h t "   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 a e r o n d i g h t   =   ( W 3 E f f e c t _ A e r o n d i g h t ) G e t B u f f (   E E T _ A e r o n d i g h t   ) ;  
 	 	 	 a e r o n d i g h t . P a u s e (   ' M a n a g e A e r o n d i g h t B u f f '   ) ;  
 	 	 } 	 	  
 	 	  
 	 	  
 	 	 p r e v i o u s I t e m I n S l o t   =   i t e m S l o t s [ s l o t ] ;  
 	 	 i f (   I s I t e m E q u i p p e d ( i t e m ) )    
 	 	 {  
 	 	 	 S w a p E q u i p p e d I t e m s ( s l o t ,   G e t I t e m S l o t ( i t e m ) ) ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i s S k i l l M u t a g e n   =   I s S l o t S k i l l M u t a g e n ( s l o t ) ;  
 	 	 i f ( i s S k i l l M u t a g e n )  
 	 	 {  
 	 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 	 i f ( ! p a m . I s S k i l l M u t a g e n S l o t U n l o c k e d ( s l o t ) )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( i n v . I s I d V a l i d ( p r e v i o u s I t e m I n S l o t ) )  
 	 	 { 	 	 	  
 	 	 	 i f ( ! U n e q u i p I t e m F r o m S l o t ( s l o t ,   t r u e ) )  
 	 	 	 {  
 	 	 	 	 L o g A s s e r t ( f a l s e ,   " W 3 P l a y e r W i t c h e r . E q u i p I t e m :   C a n n o t   e q u i p   i t e m   < < "   +   i n v . G e t I t e m N a m e ( i t e m )   +   " > >   ! ! " ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 } 	 	  
 	 	  
 	 	  
 	 	 i f ( i n v . I s I t e m M a s k ( i t e m ) )  
 	 	 {  
 	 	 	 i f ( s l o t   = =   E E S _ Q u i c k s l o t 1 )  
 	 	 	 	 G e t I t e m E q u i p p e d O n S l o t ( E E S _ Q u i c k s l o t 2 ,   o t h e r M a s k ) ;  
 	 	 	 e l s e  
 	 	 	 	 G e t I t e m E q u i p p e d O n S l o t ( E E S _ Q u i c k s l o t 1 ,   o t h e r M a s k ) ;  
 	 	 	 	  
 	 	 	 i f ( i n v . I s I t e m M a s k ( o t h e r M a s k ) )  
 	 	 	 	 U n e q u i p I t e m ( o t h e r M a s k ) ;  
 	 	 }  
 	 	  
 	 	 i f ( i s S k i l l M u t a g e n )  
 	 	 {  
 	 	 	 g r o u p I D   =   p a m . G e t S k i l l G r o u p I d O f M u t a g e n S l o t ( s l o t ) ;  
 	 	 	 p r e v S k i l l C o l o r   =   p a m . G e t S k i l l G r o u p C o l o r ( g r o u p I D ) ;  
 	 	 }  
 	 	  
 	 	 i t e m S l o t s [ s l o t ]   =   i t e m ;  
 	 	  
 	 	 c a t e g o r y   =   i n v . G e t I t e m C a t e g o r y (   i t e m   ) ;  
 	  
 	 	  
 	 	 i f (   ! i g n o r e M o u n t i n g   & &   S h o u l d M o u n t ( s l o t ,   i t e m ,   c a t e g o r y )   )  
 	 	 {  
 	 	 	  
 	 	 	 i n v . M o u n t I t e m (   i t e m ,   t o H a n d ,   I s S l o t S k i l l M u t a g e n (   s l o t   )   ) ;  
 	 	 } 	 	  
 	 	  
 	 	 t h e T e l e m e t r y . L o g W i t h L a b e l A n d V a l u e (   T E _ I N V _ I T E M _ E Q U I P P E D ,   i n v . G e t I t e m N a m e ( i t e m ) ,   s l o t   ) ;  
 	 	 	 	  
 	 	 i f ( s l o t   = =   E E S _ R a n g e d W e a p o n )  
 	 	 { 	 	 	  
 	 	 	 r a n g e d W e a p o n   =   (   C r o s s b o w   ) (   i n v . G e t I t e m E n t i t y U n s a f e ( i t e m )   ) ;  
 	 	 	 i f ( ! r a n g e d W e a p o n )  
 	 	 	 	 A d d T i m e r ( ' D e l a y e d O n I t e m M o u n t ' ,   0 . 1 ,   t r u e ) ;  
 	 	 	  
 	 	 	 i f   (   I s S w i m m i n g ( )   | |   I s D i v i n g ( )   )  
 	 	 	 {  
 	 	 	 	 G e t I t e m E q u i p p e d O n S l o t ( E E S _ B o l t ,   b o l t I t e m ) ;  
 	 	 	 	  
 	 	 	 	 i f ( i n v . I s I d V a l i d ( b o l t I t e m ) )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   ! i n v . I t e m H a s T a g ( b o l t I t e m ,   ' U n d e r w a t e r A m m o '   ) )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 A d d A n d E q u i p I n f i n i t e B o l t ( f a l s e ,   t r u e ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f ( ! I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ B o l t ) )  
 	 	 	 	 {  
 	 	 	 	 	 A d d A n d E q u i p I n f i n i t e B o l t ( f a l s e ,   t r u e ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f ( ! I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ B o l t ) )  
 	 	 	 	 A d d A n d E q u i p I n f i n i t e B o l t ( ) ;  
 	 	 }  
 	 	 e l s e   i f ( s l o t   = =   E E S _ B o l t )  
 	 	 {  
 	 	 	 i f ( r a n g e d W e a p o n )  
 	 	 	 { 	 i f   (   ! I s S w i m m i n g ( )   | |   ! I s D i v i n g ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 r a n g e d W e a p o n . O n R e p l a c e A m m o ( ) ;  
 	 	 	 	 	 / / r a n g e d W e a p o n . O n W e a p o n R e l o a d ( ) ;   / / m o d W 3 R e d u x R G C  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 D i s p l a y H u d M e s s a g e ( G e t L o c S t r i n g B y K e y E x t (   " m e n u _ c a n n o t _ p e r f o r m _ a c t i o n _ n o w "   ) ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 } 	 	  
 	 	  
 	 	 e l s e   i f ( i s S k i l l M u t a g e n )  
 	 	 {  
 	 	 	 t h e G a m e . G e t G u i M a n a g e r ( ) . I g n o r e N e w I t e m N o t i f i c a t i o n s (   t r u e   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 q u a n t i t y   =   i n v . G e t I t e m Q u a n t i t y (   i t e m   ) ;  
 	 	 	 i f (   q u a n t i t y   >   1   )  
 	 	 	 {  
 	 	 	 	 i n v . S p l i t I t e m (   i t e m ,   q u a n t i t y   -   1   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 p a m . O n S k i l l M u t a g e n E q u i p p e d ( i t e m ,   s l o t ,   p r e v S k i l l C o l o r ) ;  
 	 	 	 L o g S k i l l C o l o r s ( " M u t a g e n   < < "   +   i n v . G e t I t e m N a m e ( i t e m )   +   " > >   e q u i p p e d   t o   s l o t   < < "   +   s l o t   +   " > > " ) ;  
 	 	 	 L o g S k i l l C o l o r s ( " G r o u p   b o n u s   c o l o r   i s   n o w   < < "   +   p a m . G e t S k i l l G r o u p C o l o r ( g r o u p I D )   +   " > > " ) ;  
 	 	 	 L o g S k i l l C o l o r s ( " " ) ;  
 	 	 	  
 	 	 	 t h e G a m e . G e t G u i M a n a g e r ( ) . I g n o r e N e w I t e m N o t i f i c a t i o n s (   f a l s e   ) ;  
 	 	 }  
 	 	 e l s e   i f ( s l o t   = =   E E S _ G l o v e s   & &   H a s W e a p o n D r a w n ( f a l s e ) )  
 	 	 {  
 	 	 	 P l a y R u n e w o r d 4 F X ( P W _ S t e e l ) ;  
 	 	 	 P l a y R u n e w o r d 4 F X ( P W _ S i l v e r ) ;  
 	 	 }  
 	 	  
 	 	 e l s e   i f (   (   s l o t   = =   E E S _ P e t a r d 1   | |   s l o t   = =   E E S _ P e t a r d 2   )   & &   i n v . I s I t e m B o m b (   G e t S e l e c t e d I t e m I d ( )   )   )  
 	 	 {  
 	 	 	 S e l e c t Q u i c k s l o t I t e m (   s l o t   ) ;  
 	 	 }  
  
 	 	  
 	 	 i f ( i n v . I t e m H a s A b i l i t y ( i t e m ,   ' M A _ H t H ' ) )  
 	 	 {  
 	 	 	 i n v . G e t I t e m C o n t a i n e d A b i l i t i e s ( i t e m ,   c o n t a i n e d A b i l i t i e s ) ;  
 	 	 	 f i s t s I D   =   i n v . G e t I t e m s B y N a m e ( ' f i s t s ' ) ;  
 	 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	 	 f o r ( i = 0 ;   i < c o n t a i n e d A b i l i t i e s . S i z e ( ) ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 i f ( d m . A b i l i t y H a s T a g ( c o n t a i n e d A b i l i t i e s [ i ] ,   ' M A _ H t H ' ) )  
 	 	 	 	 { 	 	 	 	 	  
 	 	 	 	 	 i n v . A d d I t e m C r a f t e d A b i l i t y ( f i s t s I D [ 0 ] ,   c o n t a i n e d A b i l i t i e s [ i ] ,   t r u e ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 } 	 	  
 	 	  
 	 	  
 	 	 i f ( i n v . I s I t e m A n y A r m o r ( i t e m ) )  
 	 	 {  
 	 	 	 a r m o r T y p e   =   i n v . G e t A r m o r T y p e ( i t e m ) ;  
 	 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 	  
 	 	 	 i f ( a r m o r T y p e   = =   E A T _ L i g h t )  
 	 	 	 {  
 	 	 	 	 i f ( C a n U s e S k i l l ( S _ P e r k _ 0 5 ) )  
 	 	 	 	 	 p a m . S e t P e r k A r m o r B o n u s ( S _ P e r k _ 0 5 ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( a r m o r T y p e   = =   E A T _ M e d i u m )  
 	 	 	 {  
 	 	 	 	 i f ( C a n U s e S k i l l ( S _ P e r k _ 0 6 ) )  
 	 	 	 	 	 p a m . S e t P e r k A r m o r B o n u s ( S _ P e r k _ 0 6 ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( a r m o r T y p e   = =   E A T _ H e a v y )  
 	 	 	 {  
 	 	 	 	 i f ( C a n U s e S k i l l ( S _ P e r k _ 0 7 ) )  
 	 	 	 	 	 p a m . S e t P e r k A r m o r B o n u s ( S _ P e r k _ 0 7 ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 U p d a t e I t e m S e t B o n u s e s (   i t e m ,   t r u e   ) ;  
 	 	 	 	  
 	 	  
 	 	 t h e G a m e . G e t G l o b a l E v e n t s M a n a g e r ( ) . O n S c r i p t e d E v e n t (   S E C _ O n I t e m E q u i p p e d   ) ;  
 	  
 	 	  
 	 	 i f ( S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l P o t i o n C a n E q u i p 3 ' ) )  
 	 	 {  
 	 	 	 i f ( I s S l o t P o t i o n S l o t ( s l o t ) )  
 	 	 	 {  
 	 	 	 	 t u t S t a t e P o t   =   ( W 3 T u t o r i a l M a n a g e r U I H a n d l e r S t a t e P o t i o n s ) t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . u i H a n d l e r . G e t C u r r e n t S t a t e ( ) ;  
 	 	 	 	 i f ( t u t S t a t e P o t )  
 	 	 	 	 {  
 	 	 	 	 	 t u t S t a t e P o t . O n P o t i o n E q u i p p e d ( i n v . G e t I t e m N a m e ( i t e m ) ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 t u t S t a t e S e c o n d P o t i o n E q u i p   =   ( W 3 T u t o r i a l M a n a g e r U I H a n d l e r S t a t e S e c o n d P o t i o n E q u i p ) t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . u i H a n d l e r . G e t C u r r e n t S t a t e ( ) ;  
 	 	 	 	 i f ( t u t S t a t e S e c o n d P o t i o n E q u i p )  
 	 	 	 	 {  
 	 	 	 	 	 t u t S t a t e S e c o n d P o t i o n E q u i p . O n P o t i o n E q u i p p e d ( i n v . G e t I t e m N a m e ( i t e m ) ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f ( S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l F o o d S e l e c t T a b ' ) )  
 	 	 {  
 	 	 	 i f (   I s S l o t P o t i o n S l o t ( s l o t )   & &   i n v . I s I t e m F o o d ( i t e m ) )  
 	 	 	 {  
 	 	 	 	 t u t S t a t e F o o d   =   ( W 3 T u t o r i a l M a n a g e r U I H a n d l e r S t a t e F o o d ) t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . u i H a n d l e r . G e t C u r r e n t S t a t e ( ) ;  
 	 	 	 	 i f ( t u t S t a t e F o o d )  
 	 	 	 	 {  
 	 	 	 	 	 t u t S t a t e F o o d . O n F o o d E q u i p p e d ( ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 t a g O f A S e t   =   i n v . D e t e c t T a g O f A S e t ( i t e m ) ;  
 	 	 C h e c k F o r F u l l y A r m e d B y T a g ( t a g O f A S e t ) ;  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
  
 	 p r i v a t e   f u n c t i o n   C h e c k H a i r I t e m ( )  
 	 {  
 	 	 v a r   i d s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   i       :   i n t ;  
 	 	 v a r   i t e m N a m e   :   n a m e ;  
 	 	 v a r   h a i r A p p l i e d   :   b o o l ;  
 	 	  
 	 	 i d s   =   i n v . G e t I t e m s B y C a t e g o r y ( ' h a i r ' ) ;  
 	 	  
 	 	 f o r ( i = 0 ;   i < i d s . S i z e ( ) ;   i + =   1 )  
 	 	 {  
 	 	 	 i t e m N a m e   =   i n v . G e t I t e m N a m e (   i d s [ i ]   ) ;  
 	 	 	  
 	 	 	 i f (   i t e m N a m e   ! =   ' P r e v i e w   H a i r '   )  
 	 	 	 {  
 	 	 	 	 i f (   h a i r A p p l i e d   = =   f a l s e   )  
 	 	 	 	 {  
 	 	 	 	 	 i n v . M o u n t I t e m (   i d s [ i ] ,   f a l s e   ) ;  
 	 	 	 	 	 h a i r A p p l i e d   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i n v . R e m o v e I t e m (   i d s [ i ] ,   1   ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f (   h a i r A p p l i e d   = =   f a l s e   )  
 	 	 {  
 	 	 	 i d s   =   i n v . A d d A n I t e m ( ' H a l f   W i t h   T a i l   H a i r s t y l e ' ,   1 ,   t r u e ,   f a l s e ) ;  
 	 	 	 i n v . M o u n t I t e m (   i d s [ 0 ] ,   f a l s e   ) ;  
 	 	 }  
 	 	  
 	 }  
  
 	  
 	 t i m e r   f u n c t i o n   D e l a y e d O n I t e m M o u n t (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 v a r   c r o s s b o w I D   :   S I t e m U n i q u e I d ;  
 	 	 v a r   i n v e n t   :   C I n v e n t o r y C o m p o n e n t ;  
 	 	  
 	 	 i n v e n t   =   G e t I n v e n t o r y ( ) ;  
 	 	 i f ( ! i n v e n t )  
 	 	 	 r e t u r n ; 	  
 	 	  
 	 	  
 	 	 G e t I t e m E q u i p p e d O n S l o t ( E E S _ R a n g e d W e a p o n ,   c r o s s b o w I D ) ;  
 	 	 	 	  
 	 	 i f ( i n v e n t . I s I d V a l i d ( c r o s s b o w I D ) )  
 	 	 {  
 	 	 	  
 	 	 	 r a n g e d W e a p o n   =   (   C r o s s b o w   ) ( i n v e n t . G e t I t e m E n t i t y U n s a f e ( c r o s s b o w I D )   ) ;  
 	 	 	  
 	 	 	 i f ( r a n g e d W e a p o n )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 R e m o v e T i m e r ( ' D e l a y e d O n I t e m M o u n t ' ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	  
 	 	 	 R e m o v e T i m e r ( ' D e l a y e d O n I t e m M o u n t ' ) ;  
 	 	 }  
 	 }  
  
 	 p u b l i c   f u n c t i o n   G e t H e l d I t e m s ( )   :   a r r a y < S I t e m U n i q u e I d >  
 	 {  
 	 	 v a r   i t e m s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ;  
 	  
 	 	 i f (   i n v . G e t I t e m E q u i p p e d O n S l o t ( E E S _ S i l v e r S w o r d ,   i t e m )   & &   i n v . I s I t e m H e l d ( i t e m ) )  
 	 	 	 i t e m s . P u s h B a c k ( i t e m ) ;  
 	 	 	  
 	 	 i f (   i n v . G e t I t e m E q u i p p e d O n S l o t ( E E S _ S t e e l S w o r d ,   i t e m )   & &   i n v . I s I t e m H e l d ( i t e m ) )  
 	 	 	 i t e m s . P u s h B a c k ( i t e m ) ;  
  
 	 	 i f (   i n v . G e t I t e m E q u i p p e d O n S l o t ( E E S _ R a n g e d W e a p o n ,   i t e m )   & &   i n v . I s I t e m H e l d ( i t e m ) )  
 	 	 	 i t e m s . P u s h B a c k ( i t e m ) ;  
  
 	 	 i f (   i n v . G e t I t e m E q u i p p e d O n S l o t ( E E S _ Q u i c k s l o t 1 ,   i t e m )   & &   i n v . I s I t e m H e l d ( i t e m ) )  
 	 	 	 i t e m s . P u s h B a c k ( i t e m ) ;  
  
 	 	 i f (   i n v . G e t I t e m E q u i p p e d O n S l o t ( E E S _ Q u i c k s l o t 2 ,   i t e m )   & &   i n v . I s I t e m H e l d ( i t e m ) )  
 	 	 	 i t e m s . P u s h B a c k ( i t e m ) ;  
  
 	 	 i f (   i n v . G e t I t e m E q u i p p e d O n S l o t ( E E S _ P e t a r d 1 ,   i t e m )   & &   i n v . I s I t e m H e l d ( i t e m ) )  
 	 	 	 i t e m s . P u s h B a c k ( i t e m ) ;  
  
 	 	 i f (   i n v . G e t I t e m E q u i p p e d O n S l o t ( E E S _ P e t a r d 2 ,   i t e m )   & &   i n v . I s I t e m H e l d ( i t e m ) )  
 	 	 	 i t e m s . P u s h B a c k ( i t e m ) ;  
  
 	 	 r e t u r n   i t e m s ; 	 	 	  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   M o v e M u t a g e n T o S l o t (   i t e m   :   S I t e m U n i q u e I d ,   s l o t F r o m   :   E E q u i p m e n t S l o t s ,   s l o t T o   :   E E q u i p m e n t S l o t s   )  
 	 {  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	 v a r   p r e v S k i l l C o l o r   :   E S k i l l C o l o r ;  
 	 	 v a r   g r o u p I D   :   i n t ;  
 	 	  
 	 	 i f (   I s S l o t S k i l l M u t a g e n (   s l o t T o   )   )  
 	 	 { 	  
 	 	 	 i t e m S l o t s [ s l o t F r o m ]   =   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 	 	  
 	 	 	  
 	 	 	 g r o u p I D   =   p a m . G e t S k i l l G r o u p I d O f M u t a g e n S l o t ( s l o t F r o m ) ;  
 	 	 	 p r e v S k i l l C o l o r   =   p a m . G e t S k i l l G r o u p C o l o r ( g r o u p I D ) ;  
 	 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 	 p a m . O n S k i l l M u t a g e n U n e q u i p p e d ( i t e m ,   s l o t F r o m ,   p r e v S k i l l C o l o r ,   t r u e ) ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 E q u i p I t e m I n G i v e n S l o t (   i t e m ,   s l o t T o ,   f a l s e   ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   U n e q u i p I t e m F r o m S l o t ( s l o t   :   E E q u i p m e n t S l o t s ,   o p t i o n a l   r e e q u i p p e d   :   b o o l )   :   b o o l  
 	 {  
 	 	 v a r   i t e m ,   b o l t s ,   i d   :   S I t e m U n i q u e I d ;  
 	 	 v a r   i t e m s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   r e t B o o l   :   b o o l ;  
 	 	 v a r   f i s t s I D ,   b o l t   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   i ,   g r o u p I D   :   i n t ;  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	 v a r   p r e v S k i l l C o l o r   :   E S k i l l C o l o r ;  
 	 	 v a r   c o n t a i n e d A b i l i t i e s   :   a r r a y < n a m e > ;  
 	 	 v a r   d m   :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ;  
 	 	 v a r   a r m o r T y p e   :   E A r m o r T y p e ;  
 	 	 v a r   i s S w i m m i n g   :   b o o l ;  
 	 	 v a r   h u d   	 	 	 	 :   C R 4 S c r i p t e d H u d ;  
 	 	 v a r   d a m a g e d I t e m M o d u l e   	 :   C R 4 H u d M o d u l e D a m a g e d I t e m s ;  
 	 	  
 	 	 i f ( s l o t   = =   E E S _ I n v a l i d S l o t   | |   s l o t   <   0   | |   s l o t   >   E n u m G e t M a x ( ' E E q u i p m e n t S l o t s ' )   | |   ! i n v . I s I d V a l i d ( i t e m S l o t s [ s l o t ] ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	  
 	 	 i f ( I s S l o t S k i l l M u t a g e n ( s l o t ) )  
 	 	 {  
 	 	 	  
 	 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 	 g r o u p I D   =   p a m . G e t S k i l l G r o u p I d O f M u t a g e n S l o t ( s l o t ) ;  
 	 	 	 p r e v S k i l l C o l o r   =   p a m . G e t S k i l l G r o u p C o l o r ( g r o u p I D ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( s l o t   = =   E E S _ S i l v e r S w o r d     | |   s l o t   = =   E E S _ S t e e l S w o r d )  
 	 	 {  
 	 	 	 P a u s e O i l B u f f s (   s l o t   = =   E E S _ S t e e l S w o r d   ) ;  
 	 	 }  
 	 	 	  
 	 	 i t e m   =   i t e m S l o t s [ s l o t ] ;  
 	 	 i t e m S l o t s [ s l o t ]   =   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 	  
 	 	  
 	 	 i f ( i n v . I t e m H a s T a g (   i t e m ,   ' P h a n t o m W e a p o n '   )   & &   G e t P h a n t o m W e a p o n M g r ( ) )  
 	 	 {  
 	 	 	 D e s t r o y P h a n t o m W e a p o n M g r ( ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 i f (   s l o t   = =   E E S _ S i l v e r S w o r d   & &   i n v . I t e m H a s T a g (   i t e m ,   ' A e r o n d i g h t '   )   )  
 	 	 {  
 	 	 	 R e m o v e B u f f (   E E T _ A e r o n d i g h t   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( s l o t   = =   E E S _ R a n g e d W e a p o n )  
 	 	 {  
 	 	 	  
 	 	 	 t h i s . O n R a n g e d F o r c e H o l s t e r (   t r u e ,   t r u e   ) ;  
 	 	 	 r a n g e d W e a p o n . C l e a r D e p l o y e d E n t i t y ( t r u e ) ;  
 	 	 	 r a n g e d W e a p o n   =   N U L L ;  
 	 	  
 	 	 	  
 	 	 	 i f ( G e t I t e m E q u i p p e d O n S l o t ( E E S _ B o l t ,   b o l t s ) )  
 	 	 	 {  
 	 	 	 	 i f ( i n v . I t e m H a s T a g ( b o l t s ,   t h e G a m e . p a r a m s . T A G _ I N F I N I T E _ A M M O ) )  
 	 	 	 	 {  
 	 	 	 	 	 i n v . R e m o v e I t e m ( b o l t s ,   i n v . G e t I t e m Q u a n t i t y ( b o l t s )   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f ( I s S l o t S k i l l M u t a g e n ( s l o t ) )  
 	 	 { 	 	 	  
 	 	 	 p a m . O n S k i l l M u t a g e n U n e q u i p p e d ( i t e m ,   s l o t ,   p r e v S k i l l C o l o r ) ;  
 	 	 	 L o g S k i l l C o l o r s ( " M u t a g e n   < < "   +   i n v . G e t I t e m N a m e ( i t e m )   +   " > >   u n e q u i p p e d   f r o m   s l o t   < < "   +   s l o t   +   " > > " ) ;  
 	 	 	 L o g S k i l l C o l o r s ( " G r o u p   b o n u s   c o l o r   i s   n o w   < < "   +   p a m . G e t S k i l l G r o u p C o l o r ( g r o u p I D )   +   " > > " ) ;  
 	 	 	 L o g S k i l l C o l o r s ( " " ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( c u r r e n t l y E q u i p e d I t e m   = =   i t e m )  
 	 	 {  
 	 	 	 c u r r e n t l y E q u i p e d I t e m   =   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 	 	 R a i s e E v e n t ( ' F o r c e d U s a b l e I t e m U n e q u i p ' ) ;  
 	 	 }  
 	 	 i f ( c u r r e n t l y E q u i p e d I t e m L   = =   i t e m )  
 	 	 {  
 	 	 	 i f   (   c u r r e n t l y U s e d I t e m L   )  
 	 	 	 {  
 	 	 	 	 c u r r e n t l y U s e d I t e m L . O n H i d d e n (   t h i s   ) ;  
 	 	 	 }  
 	 	 	 H i d e U s a b l e I t e m   (   t r u e   ) ;  
 	 	 }  
 	 	 	 	  
 	 	  
 	 	 i f (   ! I s S l o t P o t i o n M u t a g e n ( s l o t )   )  
 	 	 {  
 	 	 	 G e t I n v e n t o r y ( ) . U n m o u n t I t e m ( i t e m ,   t r u e ) ;  
 	 	 }  
 	 	  
 	 	 r e t B o o l   =   t r u e ;  
 	 	 	 	  
 	 	  
 	 	 i f ( I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ R a n g e d W e a p o n )   & &   s l o t   = =   E E S _ B o l t )  
 	 	 { 	 	 	  
 	 	 	 i f ( i n v . I t e m H a s T a g ( i t e m ,   t h e G a m e . p a r a m s . T A G _ I N F I N I T E _ A M M O ) )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 i n v . R e m o v e I t e m ( i t e m ,   i n v . G e t I t e m Q u a n t i t y B y N a m e (   i n v . G e t I t e m N a m e ( i t e m )   )   ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f   ( ! r e e q u i p p e d )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 A d d A n d E q u i p I n f i n i t e B o l t ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( s l o t   = =   E E S _ S i l v e r S w o r d     | |   s l o t   = =   E E S _ S t e e l S w o r d )  
 	 	 {  
 	 	 	 O n E q u i p M e l e e W e a p o n ( P W _ N o n e ,   t r u e ) ; 	 	 	  
 	 	 }  
 	 	  
 	 	 i f (     G e t S e l e c t e d I t e m I d ( )   = =   i t e m   )  
 	 	 {  
 	 	 	 C l e a r S e l e c t e d I t e m I d ( ) ;  
 	 	 }  
 	 	  
 	 	 i f ( i n v . I s I t e m B o d y ( i t e m ) )  
 	 	 {  
 	 	 	 r e t B o o l   =   t r u e ;  
 	 	 } 	 	  
 	 	  
 	 	 i f ( r e t B o o l   & &   ! r e e q u i p p e d )  
 	 	 {  
 	 	 	 t h e T e l e m e t r y . L o g W i t h L a b e l A n d V a l u e (   T E _ I N V _ I T E M _ U N E Q U I P P E D ,   i n v . G e t I t e m N a m e ( i t e m ) ,   s l o t   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f ( s l o t   = =   E E S _ S t e e l S w o r d   & &   ! I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ S i l v e r S w o r d ) )  
 	 	 	 {  
 	 	 	 	 R e m o v e B u f f ( E E T _ E n h a n c e d W e a p o n ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( s l o t   = =   E E S _ S i l v e r S w o r d   & &   ! I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ S t e e l S w o r d ) )  
 	 	 	 {  
 	 	 	 	 R e m o v e B u f f ( E E T _ E n h a n c e d W e a p o n ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( i n v . I s I t e m A n y A r m o r ( i t e m ) )  
 	 	 	 {  
 	 	 	 	 i f (   ! I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ A r m o r )   & &   ! I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ G l o v e s )   & &   ! I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ B o o t s )   & &   ! I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ P a n t s ) )  
 	 	 	 	 	 R e m o v e B u f f ( E E T _ E n h a n c e d A r m o r ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( i n v . I t e m H a s A b i l i t y ( i t e m ,   ' M A _ H t H ' ) )  
 	 	 {  
 	 	 	 i n v . G e t I t e m C o n t a i n e d A b i l i t i e s ( i t e m ,   c o n t a i n e d A b i l i t i e s ) ;  
 	 	 	 f i s t s I D   =   i n v . G e t I t e m s B y N a m e ( ' f i s t s ' ) ;  
 	 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	 	 f o r ( i = 0 ;   i < c o n t a i n e d A b i l i t i e s . S i z e ( ) ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 i f ( d m . A b i l i t y H a s T a g ( c o n t a i n e d A b i l i t i e s [ i ] ,   ' M A _ H t H ' ) )  
 	 	 	 	 {  
 	 	 	 	 	 i n v . R e m o v e I t e m C r a f t e d A b i l i t y ( f i s t s I D [ 0 ] ,   c o n t a i n e d A b i l i t i e s [ i ] ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( i n v . I s I t e m A n y A r m o r ( i t e m ) )  
 	 	 {  
 	 	 	 a r m o r T y p e   =   i n v . G e t A r m o r T y p e ( i t e m ) ;  
 	 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 	  
 	 	 	 i f ( C a n U s e S k i l l ( S _ P e r k _ 0 5 )   & &   ( a r m o r T y p e   = =   E A T _ L i g h t   | |   G e t C h a r a c t e r S t a t s ( ) . H a s A b i l i t y ( ' G l y p h w o r d   2   _ S t a t s ' ,   t r u e )   | |   i n v . I t e m H a s A b i l i t y ( i t e m ,   ' G l y p h w o r d   2   _ S t a t s ' ) ) )  
 	 	 	 {  
 	 	 	 	 p a m . S e t P e r k A r m o r B o n u s ( S _ P e r k _ 0 5 ) ;  
 	 	 	 }  
 	 	 	 i f ( C a n U s e S k i l l ( S _ P e r k _ 0 6 )   & &   ( a r m o r T y p e   = =   E A T _ M e d i u m   | |   G e t C h a r a c t e r S t a t s ( ) . H a s A b i l i t y ( ' G l y p h w o r d   3   _ S t a t s ' ,   t r u e )   | |   i n v . I t e m H a s A b i l i t y ( i t e m ,   ' G l y p h w o r d   3   _ S t a t s ' ) )   )  
 	 	 	 {  
 	 	 	 	 p a m . S e t P e r k A r m o r B o n u s ( S _ P e r k _ 0 6 ) ;  
 	 	 	 }  
 	 	 	 i f ( C a n U s e S k i l l ( S _ P e r k _ 0 7 )   & &   ( a r m o r T y p e   = =   E A T _ H e a v y   | |   G e t C h a r a c t e r S t a t s ( ) . H a s A b i l i t y ( ' G l y p h w o r d   4   _ S t a t s ' ,   t r u e )   | |   i n v . I t e m H a s A b i l i t y ( i t e m ,   ' G l y p h w o r d   4   _ S t a t s ' ) )   )  
 	 	 	 {  
 	 	 	 	 p a m . S e t P e r k A r m o r B o n u s ( S _ P e r k _ 0 7 ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 U p d a t e I t e m S e t B o n u s e s (   i t e m ,   f a l s e   ) ;  
 	 	  
 	 	  
 	 	 i f (   i n v . I t e m H a s T a g (   i t e m ,   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ B O N U S   )   & &   ! I s S e t B o n u s A c t i v e (   E I S B _ R e d W o l f _ 2   )   )  
 	 	 {  
 	 	 	 S k i l l R e d u c e B o m b A m m o B o n u s ( ) ;  
 	 	 }  
  
 	 	 i f (   s l o t   = =   E E S _ G l o v e s   )  
 	 	 {  
 	 	 	 t h e P l a y e r . D e s t r o y E f f e c t ( ' r u n e w o r d _ 4 ' ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 i f   (   h u d   )  
 	 	 {  
 	 	 	 d a m a g e d I t e m M o d u l e   =   h u d . G e t D a m a g e d I t e m M o d u l e ( ) ;  
 	 	 	 i f   (   d a m a g e d I t e m M o d u l e   )  
 	 	 	 {  
 	 	 	 	 d a m a g e d I t e m M o d u l e . O n I t e m U n e q u i p p e d F r o m S l o t (   s l o t   ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 t h e G a m e . G e t G l o b a l E v e n t s M a n a g e r ( ) . O n S c r i p t e d E v e n t (   S E C _ O n I t e m E q u i p p e d   ) ;  
 	 	  
 	 	 r e t u r n   r e t B o o l ;  
 	 }  
 	 	  
 	 p u b l i c   f u n c t i o n   U n e q u i p I t e m ( i t e m   :   S I t e m U n i q u e I d )   :   b o o l  
 	 {  
 	 	 i f ( ! i n v . I s I d V a l i d ( i t e m ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 r e t u r n   U n e q u i p I t e m F r o m S l o t (   i t e m S l o t s . F i n d F i r s t ( i t e m )   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   D r o p I t e m (   i t e m   :   S I t e m U n i q u e I d ,   q u a n t i t y   :   i n t   )   :   b o o l  
 	 {  
 	 	 i f ( ! i n v . I s I d V a l i d ( i t e m ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 i f ( I s I t e m E q u i p p e d ( i t e m ) )  
 	 	 	 r e t u r n   U n e q u i p I t e m ( i t e m ) ;  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 } 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   I s I t e m E q u i p p e d B y N a m e ( i t e m N a m e   :   n a m e )   :   b o o l  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	  
 	 	 f o r ( i = 0 ;   i < i t e m S l o t s . S i z e ( ) ;   i + = 1 )  
 	 	 	 i f ( i n v . G e t I t e m N a m e ( i t e m S l o t s [ i ] )   = =   i t e m N a m e )  
 	 	 	 	 r e t u r n   t r u e ;  
  
 	 	 r e t u r n   f a l s e ;  
 	 }  
  
 	  
 	 p u b l i c   f u n c t i o n   I s I t e m E q u i p p e d B y C a t e g o r y N a m e ( c a t e g o r y N a m e   :   n a m e )   :   b o o l  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	  
 	 	 f o r ( i = 0 ;   i < i t e m S l o t s . S i z e ( ) ;   i + = 1 )  
 	 	 	 i f ( i n v . G e t I t e m C a t e g o r y ( i t e m S l o t s [ i ] )   = =   c a t e g o r y N a m e )  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t M a x R u n E n c u m b r a n c e ( o u t   u s e s H o r s e B o n u s   :   b o o l )   :   f l o a t  
 	 {  
 	 	 v a r   v a l u e   :   f l o a t ;  
 	 	  
 	 	 v a l u e   =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t H o r s e M a n a g e r ( ) . G e t H o r s e A t t r i b u t e V a l u e ( ' e n c u m b r a n c e ' ,   f a l s e ) ) ;  
 	 	 u s e s H o r s e B o n u s   =   ( v a l u e   >   0 ) ;  
 	 	 v a l u e   + =   C a l c u l a t e A t t r i b u t e V a l u e (   G e t A t t r i b u t e V a l u e ( ' e n c u m b r a n c e ' )   ) ;  
 	 	  
 	 	 r e t u r n   v a l u e ;  
 	 }  
 	 	  
 	 p u b l i c   f u n c t i o n   G e t E n c u m b r a n c e ( )   :   f l o a t  
 	 {  
 	 	 v a r   i :   i n t ;  
 	 	 v a r   e n c u m b r a n c e   :   f l o a t ;  
 	 	 v a r   i t e m s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   i n v e   :   C I n v e n t o r y C o m p o n e n t ;  
 	  
 	 	 i n v e   =   G e t I n v e n t o r y ( ) ; 	 	 	  
 	 	 i n v e . G e t A l l I t e m s ( i t e m s ) ;  
  
 	 	 f o r ( i = 0 ;   i < i t e m s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 e n c u m b r a n c e   + =   i n v e . G e t I t e m E n c u m b r a n c e (   i t e m s [ i ]   ) ;  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 } 	 	  
 	 	 r e t u r n   e n c u m b r a n c e ;  
 	 }  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   S t a r t I n v U p d a t e T r a n s a c t i o n ( ) : v o i d  
 	 {  
 	 	 i n v U p d a t e T r a n s a c t i o n   =   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   F i n i s h I n v U p d a t e T r a n s a c t i o n ( ) : v o i d  
 	 {  
 	 	 i n v U p d a t e T r a n s a c t i o n   =   f a l s e ;  
 	 	  
 	 	  
 	 	  
 	 	 U p d a t e E n c u m b r a n c e ( ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   U p d a t e E n c u m b r a n c e ( )  
 	 {  
 	 	 v a r   t e m p   :   b o o l ;  
 	 	  
 	 	 i f   ( i n v U p d a t e T r a n s a c t i o n )  
 	 	 {  
 	 	 	  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	 i f   (   G e t E n c u m b r a n c e ( )   > =   ( G e t M a x R u n E n c u m b r a n c e ( t e m p )   +   1 )   )  
 	 	 {  
 	 	 	 i f (   ! H a s B u f f ( E E T _ O v e r E n c u m b e r e d )   & &   F a c t s Q u e r y S u m (   " D E B U G _ E n c u m b r a n c e B o y "   )   = =   0   )  
 	 	 	 {  
 	 	 	 	 A d d E f f e c t D e f a u l t ( E E T _ O v e r E n c u m b e r e d ,   N U L L ,   " O v e r E n c u m b e r e d " ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f ( H a s B u f f ( E E T _ O v e r E n c u m b e r e d ) )  
 	 	 {  
 	 	 	 R e m o v e A l l B u f f s O f T y p e ( E E T _ O v e r E n c u m b e r e d ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t S k i l l G r o u p I D F r o m I n d e x ( i d x   :   i n t )   :   i n t  
 	 {  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	  
 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 i f ( p a m   & &   p a m . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   p a m . G e t S k i l l G r o u p I D F r o m I n d e x ( i d x ) ;  
 	 	 	  
 	 	 r e t u r n   - 1 ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t S k i l l G r o u p C o l o r ( g r o u p I D   :   i n t )   :   E S k i l l C o l o r  
 	 {  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	  
 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 i f ( p a m   & &   p a m . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   p a m . G e t S k i l l G r o u p C o l o r ( g r o u p I D ) ;  
 	 	 	  
 	 	 r e t u r n   S C _ N o n e ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t S k i l l G r o u p s C o u n t ( )   :   i n t  
 	 {  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	  
 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 i f ( p a m   & &   p a m . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   p a m . G e t S k i l l G r o u p s C o u n t ( ) ;  
 	 	 	  
 	 	 r e t u r n   0 ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	 f u n c t i o n   C y c l e S e l e c t S i g n (   b I s C y c l i n g L e f t   :   b o o l   )   :   E S i g n T y p e  
 	 {  
 	 	 v a r   s i g n O r d e r   :   a r r a y < E S i g n T y p e > ;  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 s i g n O r d e r . P u s h B a c k (   S T _ Y r d e n   ) ;  
 	 	 s i g n O r d e r . P u s h B a c k (   S T _ Q u e n   ) ;  
 	 	 s i g n O r d e r . P u s h B a c k (   S T _ I g n i   ) ;  
 	 	 s i g n O r d e r . P u s h B a c k (   S T _ A x i i   ) ;  
 	 	 s i g n O r d e r . P u s h B a c k (   S T _ A a r d   ) ;  
 	 	 	  
 	 	 f o r (   i   =   0 ;   i   <   s i g n O r d e r . S i z e ( ) ;   i   + =   1   )  
 	 	 	 i f (   s i g n O r d e r [ i ]   = =   e q u i p p e d S i g n   )  
 	 	 	 	 b r e a k ;  
 	 	  
 	 	 i f ( b I s C y c l i n g L e f t )  
 	 	 	 r e t u r n   s i g n O r d e r [   ( 4   +   i )   %   5   ] ; 	  
 	 	 e l s e  
 	 	 	 r e t u r n   s i g n O r d e r [   ( 6   +   i )   %   5   ] ;  
 	 }  
 	  
 	 f u n c t i o n   T o g g l e N e x t S i g n ( )  
 	 {  
 	 	 S e t E q u i p p e d S i g n ( C y c l e S e l e c t S i g n (   f a l s e   ) ) ;  
 	 	 F a c t s A d d ( " S i g n T o g g l e d " ,   1 ,   1 ) ;  
 	 }  
 	  
 	 f u n c t i o n   T o g g l e P r e v i o u s S i g n ( )  
 	 {  
 	 	 S e t E q u i p p e d S i g n ( C y c l e S e l e c t S i g n (   t r u e   ) ) ;  
 	 	 F a c t s A d d ( " S i g n T o g g l e d " ,   1 ,   1 ) ;  
 	 }  
 	  
 	 f u n c t i o n   P r o c e s s S i g n E v e n t (   e v e n t N a m e   :   n a m e   )   :   b o o l  
 	 {  
 	 	 i f (   c u r r e n t l y C a s t S i g n   ! =   S T _ N o n e   & &   s i g n s [ c u r r e n t l y C a s t S i g n ] . e n t i t y )  
 	 	 {  
 	 	 	 r e t u r n   s i g n s [ c u r r e n t l y C a s t S i g n ] . e n t i t y . O n P r o c e s s S i g n E v e n t (   e v e n t N a m e   ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 v a r   f i n d A c t o r T a r g e t T i m e S t a m p   :   f l o a t ;  
 	 v a r   p c M o d e C h a n n e l e d S i g n T i m e S t a m p 	 :   f l o a t ;  
 	 e v e n t   O n P r o c e s s C a s t i n g O r i e n t a t i o n (   i s C o n t i n u e C a s t i n g   :   b o o l   )  
 	 {  
 	 	 v a r   c u s t o m O r i e n t a t i o n T a r g e t   :   E O r i e n t a t i o n T a r g e t ;  
 	 	 v a r   c h e c k H e a d i n g   	 	 	 :   f l o a t ;  
 	 	 v a r   r o t H e a d i n g   	 	 	 	 :   f l o a t ;  
 	 	 v a r   p l a y e r T o H e a d i n g D i s t   	 :   f l o a t ;  
 	 	 v a r   s l i d e T a r g e t A c t o r 	 	 :   C A c t o r ;  
 	 	 v a r   n e w L o c k T a r g e t 	 	 	 :   C A c t o r ;  
 	 	  
 	 	 v a r   e n a b l e N o T a r g e t O r i e n t a t i o n 	 :   b o o l ;  
 	 	  
 	 	 v a r   c u r r T i m e   :   f l o a t ;  
 	 	  
 	 	 e n a b l e N o T a r g e t O r i e n t a t i o n   =   t r u e ;  
 	 	 i f   (   G e t D i s p l a y T a r g e t ( )   & &   t h i s . I s D i s p l a y T a r g e t T a r g e t a b l e ( )   )  
 	 	 {  
 	 	 	 e n a b l e N o T a r g e t O r i e n t a t i o n   =   f a l s e ;  
 	 	 	 i f   (   t h e I n p u t . G e t A c t i o n V a l u e (   ' C a s t S i g n H o l d '   )   >   0   | |   t h i s . I s C u r r e n t S i g n C h a n n e l e d ( )   )  
 	 	 	 {  
 	 	 	 	 i f   (   I s P C M o d e E n a b l e d ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   E n g i n e T i m e T o F l o a t (   t h e G a m e . G e t E n g i n e T i m e ( )   )   >     p c M o d e C h a n n e l e d S i g n T i m e S t a m p   +   1 . f   )  
 	 	 	 	 	 	 e n a b l e N o T a r g e t O r i e n t a t i o n   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   G e t C u r r e n t l y C a s t S i g n ( )   = =   S T _ I g n i   | |   G e t C u r r e n t l y C a s t S i g n ( )   = =   S T _ A x i i   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 s l i d e T a r g e t A c t o r   =   ( C A c t o r ) G e t D i s p l a y T a r g e t ( ) ;  
 	 	 	 	 	 	 i f   (   s l i d e T a r g e t A c t o r    
 	 	 	 	 	 	 	 & &   (   ! s l i d e T a r g e t A c t o r . G e t G a m e p l a y V i s i b i l i t y ( )   | |   ! C a n B e T a r g e t e d I f S w i m m i n g (   s l i d e T a r g e t A c t o r   )   | |   ! s l i d e T a r g e t A c t o r . I s A l i v e ( )   )   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 S e t S l i d e T a r g e t (   N U L L   ) ;  
 	 	 	 	 	 	 	 i f   (   P r o c e s s L o c k T a r g e t ( )   )  
 	 	 	 	 	 	 	 	 s l i d e T a r g e t A c t o r   =   ( C A c t o r ) s l i d e T a r g e t ;  
 	 	 	 	 	 	 } 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 	 i f   (   ! s l i d e T a r g e t A c t o r   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 L o c k T o T a r g e t (   f a l s e   ) ;  
 	 	 	 	 	 	 	 e n a b l e N o T a r g e t O r i e n t a t i o n   =   t r u e ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 	 e l s e   i f   (   I s T h r e a t (   s l i d e T a r g e t A c t o r   )   | |   G e t C u r r e n t l y C a s t S i g n ( )   = =   S T _ A x i i   )  
 	 	 	 	 	 	 	 L o c k T o T a r g e t (   t r u e   ) ;  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 L o c k T o T a r g e t (   f a l s e   ) ;  
 	 	 	 	 	 	 	 e n a b l e N o T a r g e t O r i e n t a t i o n   =   t r u e ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	 i f   (   ! e n a b l e N o T a r g e t O r i e n t a t i o n   )  
 	 	 	 { 	 	 	  
 	 	 	 	 c u s t o m O r i e n t a t i o n T a r g e t   =   O T _ A c t o r ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f   (   e n a b l e N o T a r g e t O r i e n t a t i o n   )  
 	 	 {  
 	 	 	 i f   (   G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ A l e r t N e a r   & &   t h e I n p u t . G e t A c t i o n V a l u e (   ' C a s t S i g n H o l d '   )   >   0   )  
 	 	 	 {  
 	 	 	 	 i f   (   G e t D i s p l a y T a r g e t ( )   & &   ! s l i d e T a r g e t A c t o r   )  
 	 	 	 	 {  
 	 	 	 	 	 c u r r T i m e   =   E n g i n e T i m e T o F l o a t (   t h e G a m e . G e t E n g i n e T i m e ( )   ) ;  
 	 	 	 	 	 i f   (   c u r r T i m e   >   f i n d A c t o r T a r g e t T i m e S t a m p   +   1 . 5 f   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 f i n d A c t o r T a r g e t T i m e S t a m p   =   c u r r T i m e ;  
 	 	 	 	 	 	  
 	 	 	 	 	 	 n e w L o c k T a r g e t   =   G e t S c r e e n S p a c e L o c k T a r g e t (   G e t D i s p l a y T a r g e t ( ) ,   1 8 0 . f ,   1 . f ,   0 . f ,   t r u e   ) ;  
 	 	 	 	 	 	  
 	 	 	 	 	 	 i f   (   n e w L o c k T a r g e t   & &   I s T h r e a t (   n e w L o c k T a r g e t   )   & &   I s C o m b a t M u s i c E n a b l e d ( )   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 S e t T a r g e t (   n e w L o c k T a r g e t ,   t r u e   ) ;  
 	 	 	 	 	 	 	 S e t M o v e T a r g e t C h a n g e A l l o w e d (   t r u e   ) ;  
 	 	 	 	 	 	 	 S e t M o v e T a r g e t (   n e w L o c k T a r g e t   ) ;  
 	 	 	 	 	 	 	 S e t M o v e T a r g e t C h a n g e A l l o w e d (   f a l s e   ) ;  
 	 	 	 	 	 	 	 S e t S l i d e T a r g e t (   n e w L o c k T a r g e t   ) ; 	 	 	 	 	 	 	  
 	 	 	 	 	 	 } 	  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 	 P r o c e s s L o c k T a r g e t ( ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   w a s B R A x i s P u s h e d   )  
 	 	 	 	 c u s t o m O r i e n t a t i o n T a r g e t   =   O T _ C a m e r a O f f s e t ;  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   ! l a s t A x i s I n p u t I s M o v e m e n t   | |   t h e I n p u t . L a s t U s e d P C I n p u t ( )   )  
 	 	 	 	 	 c u s t o m O r i e n t a t i o n T a r g e t   =   O T _ C a m e r a O f f s e t ;  
 	 	 	 	 e l s e   i f   (   t h e I n p u t . G e t A c t i o n V a l u e (   ' C a s t S i g n H o l d '   )   >   0   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   G e t O r i e n t a t i o n T a r g e t ( )   = =   O T _ C a m e r a O f f s e t   )  
 	 	 	 	 	 	 c u s t o m O r i e n t a t i o n T a r g e t   =   O T _ C a m e r a O f f s e t ;  
 	 	 	 	 	 e l s e   i f   (   G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ A l e r t N e a r   | |   G e t P l a y e r C o m b a t S t a n c e ( )   = =   P C S _ G u a r d e d   )    
 	 	 	 	 	 	 c u s t o m O r i e n t a t i o n T a r g e t   =   O T _ C a m e r a O f f s e t ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 c u s t o m O r i e n t a t i o n T a r g e t   =   O T _ P l a y e r ; 	  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 	 c u s t o m O r i e n t a t i o n T a r g e t   =   O T _ C u s t o m H e a d i n g ;  
 	 	 	 } 	 	 	  
 	 	 } 	 	  
 	 	  
 	 	 i f   (   G e t C u r r e n t l y C a s t S i g n ( )   = =   S T _ Q u e n   )  
 	 	 {  
 	 	 	 i f   (   t h e I n p u t . L a s t U s e d P C I n p u t ( )   )  
 	 	 	 {  
 	 	 	 	 c u s t o m O r i e n t a t i o n T a r g e t   =   O T _ C a m e r a ;  
 	 	 	 }  
 	 	 	 e l s e   i f   (   I s C u r r e n t S i g n C h a n n e l e d ( )   )  
 	 	 	 {  
 	 	 	 	 i f   (   b L A x i s R e l e a s e d   )  
 	 	 	 	 	 c u s t o m O r i e n t a t i o n T a r g e t   =   O T _ P l a y e r ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 c u s t o m O r i e n t a t i o n T a r g e t   =   O T _ C a m e r a ;  
 	 	 	 }  
 	 	 	 e l s e    
 	 	 	 	 c u s t o m O r i e n t a t i o n T a r g e t   =   O T _ P l a y e r ;  
 	 	 } 	  
 	 	  
 	 	 i f   (   G e t C u r r e n t l y C a s t S i g n ( )   = =   S T _ A x i i   & &   I s C u r r e n t S i g n C h a n n e l e d ( )   )  
 	 	 { 	  
 	 	 	 i f   (   s l i d e T a r g e t   & &   ( C A c t o r ) s l i d e T a r g e t   )  
 	 	 	 {  
 	 	 	 	 c h e c k H e a d i n g   =   V e c H e a d i n g (   s l i d e T a r g e t . G e t W o r l d P o s i t i o n ( )   -   t h i s . G e t W o r l d P o s i t i o n ( )   ) ;  
 	 	 	 	 r o t H e a d i n g   =   c h e c k H e a d i n g ;  
 	 	 	 	 p l a y e r T o H e a d i n g D i s t   =   A n g l e D i s t a n c e (   G e t H e a d i n g ( ) ,   c h e c k H e a d i n g   ) ;  
 	 	 	 	  
 	 	 	 	 i f   (   p l a y e r T o H e a d i n g D i s t   >   4 5   )  
 	 	 	 	 	 S e t C u s t o m R o t a t i o n (   ' C h a n n e l e d S i g n A x i i ' ,   r o t H e a d i n g ,   0 . 0 ,   0 . 5 ,   f a l s e   ) ;  
 	 	 	 	 e l s e   i f   (   p l a y e r T o H e a d i n g D i s t   <   - 4 5   )  
 	 	 	 	 	 S e t C u s t o m R o t a t i o n (   ' C h a n n e l e d S i g n A x i i ' ,   r o t H e a d i n g ,   0 . 0 ,   0 . 5 ,   f a l s e   ) ; 	 	 	 	 	  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 c h e c k H e a d i n g   =   V e c H e a d i n g (   t h e C a m e r a . G e t C a m e r a D i r e c t i o n ( )   ) ;  
 	 	 	 	 r o t H e a d i n g   =   G e t H e a d i n g ( ) ;  
 	 	 	 	 p l a y e r T o H e a d i n g D i s t   =   A n g l e D i s t a n c e (   G e t H e a d i n g ( ) ,   c h e c k H e a d i n g   ) ;  
 	 	 	 	  
 	 	 	 	 i f   (   p l a y e r T o H e a d i n g D i s t   >   4 5   )  
 	 	 	 	 	 S e t C u s t o m R o t a t i o n (   ' C h a n n e l e d S i g n A x i i ' ,   r o t H e a d i n g   -   2 2 . 5 ,   0 . 0 ,   0 . 5 ,   f a l s e   ) ;  
 	 	 	 	 e l s e   i f   (   p l a y e r T o H e a d i n g D i s t   <   - 4 5   )  
 	 	 	 	 	 S e t C u s t o m R o t a t i o n (   ' C h a n n e l e d S i g n A x i i ' ,   r o t H e a d i n g   +   2 2 . 5 ,   0 . 0 ,   0 . 5 ,   f a l s e   ) ; 	 	 	 	  
 	 	 	 }  
 	 	 } 	 	  
 	 	 	  
 	 	 i f   (   I s A c t o r L o c k e d T o T a r g e t ( )   )  
 	 	 	 c u s t o m O r i e n t a t i o n T a r g e t   =   O T _ A c t o r ;  
 	 	  
 	 	 A d d C u s t o m O r i e n t a t i o n T a r g e t (   c u s t o m O r i e n t a t i o n T a r g e t ,   ' S i g n s '   ) ;  
 	 	  
 	 	 i f   (   c u s t o m O r i e n t a t i o n T a r g e t   = =   O T _ C u s t o m H e a d i n g   )  
 	 	 	 S e t O r i e n t a t i o n T a r g e t C u s t o m H e a d i n g (   G e t C o m b a t A c t i o n H e a d i n g ( ) ,   ' S i g n s '   ) ; 	 	 	  
 	 }  
 	  
 	 e v e n t   O n R a i s e S i g n E v e n t ( )  
 	 {  
 	 	 v a r   n e w T a r g e t   :   C A c t o r ;  
 	  
 	 	 i f   (   (   ! I s C o m b a t M u s i c E n a b l e d ( )   & &   ! C a n A t t a c k W h e n N o t I n C o m b a t (   E B A T _ C a s t S i g n ,   f a l s e ,   n e w T a r g e t   )   )   | |   (   I s O n B o a t ( )   & &   ! I s C o m b a t M u s i c E n a b l e d ( )   )   )  
 	 	 { 	 	  
 	 	 	 i f   (   C a s t S i g n F r i e n d l y ( )   )  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 R a i s e E v e n t ( ' C o m b a t A c t i o n F r i e n d l y E n d ' ) ;  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' S i g n N u m ' ,   ( i n t ) e q u i p p e d S i g n   ) ;  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e ' ,   ( i n t ) C A T _ C a s t S i g n   ) ;  
  
 	 	 	 i f   (   I s P C M o d e E n a b l e d ( )   )  
 	 	 	 	 p c M o d e C h a n n e l e d S i g n T i m e S t a m p   =   E n g i n e T i m e T o F l o a t (   t h e G a m e . G e t E n g i n e T i m e ( )   ) ;  
 	 	  
 	 	 	 i f (   R a i s e F o r c e E v e n t ( ' C o m b a t A c t i o n ' )   )  
 	 	 	 {  
 	 	 	 	 O n C o m b a t A c t i o n S t a r t ( ) ;  
 	 	 	 	 f i n d A c t o r T a r g e t T i m e S t a m p   =   E n g i n e T i m e T o F l o a t (   t h e G a m e . G e t E n g i n e T i m e ( )   ) ;  
 	 	 	 	 t h e T e l e m e t r y . L o g W i t h V a l u e S t r ( T E _ F I G H T _ P L A Y E R _ U S E _ S I G N ,   S i g n E n u m T o S t r i n g (   e q u i p p e d S i g n   ) ) ;  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 f u n c t i o n   C a s t S i g n F r i e n d l y ( )   :   b o o l  
 	 {  
 	 	 v a r   a c t o r   :   C A c t o r ;  
 	  
 	 	 S e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e F o r O v e r l a y ' ,   ( i n t ) C A T _ C a s t S i g n   ) ; 	 	 	  
 	 	 i f   (   R a i s e C o m b a t A c t i o n F r i e n d l y E v e n t ( )   )  
 	 	 {  
 	 	 	 	 	 	  
 	 	 	 r e t u r n   t r u e ;  
 	 	 } 	  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 f u n c t i o n   C a s t S i g n ( )   :   b o o l  
 	 {  
 	 	 v a r   e q u i p p e d S i g n S t r   :   s t r i n g ;  
 	 	 v a r   n e w S i g n E n t   :   W 3 S i g n E n t i t y ;  
 	 	 v a r   s p a w n P o s   :   V e c t o r ;  
 	 	 v a r   s l o t M a t r i x   :   M a t r i x ;  
 	 	 v a r   t a r g e t   :   C A c t o r ;  
 	 	  
 	 	 i f   (   I s I n A i r ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 A d d T e m p o r a r y S k i l l s ( ) ;  
 	 	  
 	 	  
 	 	  
 	 	 i f ( e q u i p p e d S i g n   = =   S T _ A a r d )  
 	 	 {  
 	 	 	 C a l c E n t i t y S l o t M a t r i x ( ' l _ w e a p o n ' ,   s l o t M a t r i x ) ;  
 	 	 	 s p a w n P o s   =   M a t r i x G e t T r a n s l a t i o n ( s l o t M a t r i x ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 s p a w n P o s   =   G e t W o r l d P o s i t i o n ( ) ;  
 	 	 }  
 	 	  
 	 	 i f (   e q u i p p e d S i g n   = =   S T _ A a r d   | |   e q u i p p e d S i g n   = =   S T _ I g n i   )  
 	 	 {  
 	 	 	 t a r g e t   =   G e t T a r g e t ( ) ;  
 	 	 	 i f ( t a r g e t )  
 	 	 	 	 t a r g e t . S i g n a l G a m e p l a y E v e n t (   ' D o d g e S i g n '   ) ;  
 	 	 }  
  
 	 	 m _ T r i g g e r E f f e c t D i s a b l e P e n d i n g   =   t r u e ;  
 	 	 m _ T r i g g e r E f f e c t D i s a b l e T T W   =   0 . 3 ;    
 	 	  
 	 	 n e w S i g n E n t   =   ( W 3 S i g n E n t i t y ) t h e G a m e . C r e a t e E n t i t y (   s i g n s [ e q u i p p e d S i g n ] . t e m p l a t e ,   s p a w n P o s ,   G e t W o r l d R o t a t i o n ( )   ) ;  
 	 	 r e t u r n   n e w S i g n E n t . I n i t (   s i g n O w n e r ,   s i g n s [ e q u i p p e d S i g n ] . e n t i t y   ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   H A X _ S i g n T o T h r o w I t e m R e s t o r e ( )  
 	 {  
 	 	 v a r   a c t i o n   :   S I n p u t A c t i o n ;  
 	 	  
 	 	 a c t i o n . v a l u e   =   t h e I n p u t . G e t A c t i o n V a l u e ( ' T h r o w I t e m H o l d ' ) ;  
 	 	 a c t i o n . l a s t F r a m e V a l u e   =   0 ;  
 	 	  
 	 	 i f ( I s P r e s s e d ( a c t i o n )   & &   C a n S e t u p C o m b a t A c t i o n _ T h r o w ( ) )  
 	 	 {  
 	 	 	 i f ( i n v . I s I t e m B o m b ( s e l e c t e d I t e m I d ) )  
 	 	 	 {  
 	 	 	 	 B o m b T h r o w S t a r t ( ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 U s a b l e I t e m S t a r t ( ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 S e t T h r o w H o l d (   t r u e   ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C F M C a m e r a Z o o m F a i l ( ) { }  
 	 	  
 	  
  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t D r u n k M u t a g e n s (   o p t i o n a l   s o u r c e N a m e   :   s t r i n g   )   :   a r r a y < C B a s e G a m e p l a y E f f e c t >  
 	 {  
 	 	 r e t u r n   e f f e c t M a n a g e r . G e t D r u n k M u t a g e n s (   s o u r c e N a m e   ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t P o t i o n B u f f s ( )   :   a r r a y < C B a s e G a m e p l a y E f f e c t >  
 	 {  
 	 	 r e t u r n   e f f e c t M a n a g e r . G e t P o t i o n B u f f s ( ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   R e c a l c P o t i o n s D u r a t i o n s ( )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   b u f f s   :   a r r a y < C B a s e G a m e p l a y E f f e c t > ;  
 	 	  
 	 	 b u f f s   =   G e t P o t i o n B u f f s ( ) ;  
 	 	 f o r ( i = 0 ;   i < b u f f s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 b u f f s [ i ] . R e c a l c P o t i o n D u r a t i o n ( ) ;  
 	 	 }  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S t a r t F r e n z y ( )  
 	 {  
 	 	 v a r   r a t i o ,   d u r a t i o n   :   f l o a t ;  
 	 	 v a r   s k i l l L e v e l   :   i n t ;  
 	  
 	 	 i s I n F r e n z y   =   t r u e ;  
 	 	 s k i l l L e v e l   =   G e t S k i l l L e v e l ( S _ A l c h e m y _ s 1 6 ) ;  
 	 	 r a t i o   =   0 . 4 8 f   -   s k i l l L e v e l   *   C a l c u l a t e A t t r i b u t e V a l u e ( G e t S k i l l A t t r i b u t e V a l u e ( S _ A l c h e m y _ s 1 6 ,   ' s l o w d o w n _ r a t i o ' ,   f a l s e ,   t r u e ) ) ;  
 	 	 d u r a t i o n   =   s k i l l L e v e l   *   C a l c u l a t e A t t r i b u t e V a l u e ( G e t S k i l l A t t r i b u t e V a l u e ( S _ A l c h e m y _ s 1 6 ,   ' s l o w d o w n _ d u r a t i o n ' ,   f a l s e ,   t r u e ) ) ;  
 	  
 	 	 t h e G a m e . S e t T i m e S c a l e ( r a t i o ,   t h e G a m e . G e t T i m e s c a l e S o u r c e ( E T S _ S k i l l F r e n z y ) ,   t h e G a m e . G e t T i m e s c a l e P r i o r i t y ( E T S _ S k i l l F r e n z y )   ) ;  
 	 	 A d d T i m e r ( ' S k i l l F r e n z y F i n i s h ' ,   d u r a t i o n   *   r a t i o ,   ,   ,   ,   t r u e ) ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   S k i l l F r e n z y F i n i s h ( d t   :   f l o a t ,   o p t i o n a l   i d   :   i n t )  
 	 { 	 	  
 	 	 t h e G a m e . R e m o v e T i m e S c a l e (   t h e G a m e . G e t T i m e s c a l e S o u r c e ( E T S _ S k i l l F r e n z y )   ) ;  
 	 	 i s I n F r e n z y   =   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t T o x i c i t y D a m a g e T h r e s h o l d ( )   :   f l o a t  
 	 {  
 	 	 v a r   r e t   :   f l o a t ;  
 	 	  
 	 	 r e t   =   t h e G a m e . p a r a m s . T O X I C I T Y _ D A M A G E _ T H R E S H O L D ;  
 	 	  
 	 	 i f ( C a n U s e S k i l l ( S _ A l c h e m y _ s 0 1 ) )  
 	 	 	 r e t   + =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t S k i l l A t t r i b u t e V a l u e ( S _ A l c h e m y _ s 0 1 ,   ' t h r e s h o l d ' ,   f a l s e ,   t r u e ) )   *   G e t S k i l l L e v e l ( S _ A l c h e m y _ s 0 1 ) ;  
 	 	  
 	 	 r e t u r n   r e t ;  
 	 }  
 	  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   A d d T o x i c i t y O f f s e t (   v a l   :   f l o a t )  
 	 {  
 	 	 ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . A d d T o x i c i t y O f f s e t ( v a l ) ; 	 	  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   S e t T o x i c i t y O f f s e t (   v a l   :   f l o a t )  
 	 {  
 	 	 ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . S e t T o x i c i t y O f f s e t ( v a l ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   R e m o v e T o x i c i t y O f f s e t (   v a l   :   f l o a t )  
 	 {  
 	 	 ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . R e m o v e T o x i c i t y O f f s e t ( v a l ) ; 	 	  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   C a l c u l a t e P o t i o n D u r a t i o n ( i t e m   :   S I t e m U n i q u e I d ,   i s M u t a g e n P o t i o n   :   b o o l ,   o p t i o n a l   i t e m N a m e   :   n a m e )   :   f l o a t  
 	 {  
 	 	 v a r   d u r a t i o n ,   s k i l l P a s s i v e M o d ,   m u t a g e n S k i l l M o d   :   f l o a t ;  
 	 	 v a r   v a l ,   m i n ,   m a x   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	  
 	 	  
 	 	 i f ( i n v . I s I d V a l i d ( i t e m ) )  
 	 	 {  
 	 	 	 d u r a t i o n   =   C a l c u l a t e A t t r i b u t e V a l u e ( i n v . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   ' d u r a t i o n ' ) ) ; 	 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t I t e m A t t r i b u t e V a l u e N o R a n d o m ( i t e m N a m e ,   t r u e ,   ' d u r a t i o n ' ,   m i n ,   m a x ) ;  
 	 	 	 d u r a t i o n   =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t A t t r i b u t e R a n d o m i z e d V a l u e ( m i n ,   m a x ) ) ;  
 	 	 }  
 	 	 	  
 	 	 s k i l l P a s s i v e M o d   =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t A t t r i b u t e V a l u e ( ' p o t i o n _ d u r a t i o n ' ) ) ;  
 	 	  
 	 	 i f ( i s M u t a g e n P o t i o n   & &   C a n U s e S k i l l ( S _ A l c h e m y _ s 1 4 ) )  
 	 	 {  
 	 	 	 v a l   =   G e t S k i l l A t t r i b u t e V a l u e ( S _ A l c h e m y _ s 1 4 ,   ' d u r a t i o n ' ,   f a l s e ,   t r u e ) ;  
 	 	 	 m u t a g e n S k i l l M o d   =   v a l . v a l u e M u l t i p l i c a t i v e   *   G e t S k i l l L e v e l ( S _ A l c h e m y _ s 1 4 ) ;  
 	 	 }  
 	 	  
 	 	 d u r a t i o n   =   d u r a t i o n   *   ( 1   +   s k i l l P a s s i v e M o d   +   m u t a g e n S k i l l M o d ) ;  
 	 	  
 	 	  
 	 	 i f (   I s S e t B o n u s A c t i v e (   E I S B _ N e t f l i x _ 1   )   )  
 	 	 {  
 	 	 	 d u r a t i o n   + =   ( d u r a t i o n   *   ( a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ N e t f l i x   ]   *   7   ) )   /   1 0 0   ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   d u r a t i o n ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   T o x i c i t y L o w E n o u g h T o D r i n k P o t i o n (   s l o t i d   :   E E q u i p m e n t S l o t s ,   o p t i o n a l   i t e m I d   :   S I t e m U n i q u e I d   )   :   b o o l  
 	 {  
 	 	 v a r   i t e m   	 	 	 	 :   S I t e m U n i q u e I d ;  
 	 	 v a r   m a x T o x   	 	 	 	 :   f l o a t ;  
 	 	 v a r   p o t i o n T o x i c i t y   	 	 :   f l o a t ;  
 	 	 v a r   t o x i c i t y O f f s e t   	 	 :   f l o a t ;  
 	 	 v a r   e f f e c t T y p e   	 	 	 :   E E f f e c t T y p e ;  
 	 	 v a r   c u s t o m A b i l i t y N a m e   	 :   n a m e ;  
 	 	  
 	 	 i f ( i t e m I d   ! =   G e t I n v a l i d U n i q u e I d ( ) )  
 	 	 	 i t e m   =   i t e m I d ;    
 	 	 e l s e    
 	 	 	 i t e m   =   i t e m S l o t s [ s l o t i d ] ;  
 	 	  
 	 	 i n v . G e t P o t i o n I t e m B u f f D a t a ( i t e m ,   e f f e c t T y p e ,   c u s t o m A b i l i t y N a m e ) ;  
 	 	 m a x T o x   =   a b i l i t y M a n a g e r . G e t S t a t M a x ( B C S _ T o x i c i t y ) ;  
 	 	 p o t i o n T o x i c i t y   =   C a l c u l a t e A t t r i b u t e V a l u e ( i n v . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   ' t o x i c i t y ' ) ) ;  
 	 	 t o x i c i t y O f f s e t   =   C a l c u l a t e A t t r i b u t e V a l u e ( i n v . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   ' t o x i c i t y _ o f f s e t ' ) ) ;  
 	 	  
 	 	 i f ( e f f e c t T y p e   ! =   E E T _ W h i t e H o n e y )  
 	 	 {  
 	 	 	 i f ( a b i l i t y M a n a g e r . G e t S t a t ( B C S _ T o x i c i t y ,   f a l s e )   +   p o t i o n T o x i c i t y   +   t o x i c i t y O f f s e t   >   m a x T o x   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   H a s F r e e T o x i c i t y T o D r i n k P o t i o n (   i t e m   :   S I t e m U n i q u e I d ,   e f f e c t T y p e   :   E E f f e c t T y p e ,   o u t   f i n a l P o t i o n T o x i c i t y   :   f l o a t   )   :   b o o l  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   m a x T o x ,   t o x i c i t y O f f s e t ,   a d r e n a l i n e   :   f l o a t ;  
 	 	 v a r   c o s t R e d u c t i o n   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	  
 	 	  
 	 	 i f (   e f f e c t T y p e   = =   E E T _ W h i t e H o n e y   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 m a x T o x   =   a b i l i t y M a n a g e r . G e t S t a t M a x ( B C S _ T o x i c i t y ) ;  
 	 	 f i n a l P o t i o n T o x i c i t y   =   C a l c u l a t e A t t r i b u t e V a l u e ( i n v . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   ' t o x i c i t y ' ) ) ;  
 	 	 t o x i c i t y O f f s e t   =   C a l c u l a t e A t t r i b u t e V a l u e ( i n v . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   ' t o x i c i t y _ o f f s e t ' ) ) ;  
 	 	  
 	 	  
 	 	 i f ( C a n U s e S k i l l ( S _ P e r k _ 1 3 ) )  
 	 	 {  
 	 	 	 c o s t R e d u c t i o n   =   G e t S k i l l A t t r i b u t e V a l u e ( S _ P e r k _ 1 3 ,   ' c o s t _ r e d u c t i o n ' ,   f a l s e ,   t r u e ) ;  
 	 	 	 a d r e n a l i n e   =   F l o o r F ( G e t S t a t ( B C S _ F o c u s ) ) ;  
 	 	 	 c o s t R e d u c t i o n   =   c o s t R e d u c t i o n   *   a d r e n a l i n e ;  
 	 	 	 f i n a l P o t i o n T o x i c i t y   =   ( f i n a l P o t i o n T o x i c i t y   -   c o s t R e d u c t i o n . v a l u e B a s e )   *   ( 1   -   c o s t R e d u c t i o n . v a l u e M u l t i p l i c a t i v e )   -   c o s t R e d u c t i o n . v a l u e A d d i t i v e ;  
 	 	 	 f i n a l P o t i o n T o x i c i t y   =   M a x F ( 0 . f ,   f i n a l P o t i o n T o x i c i t y ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( a b i l i t y M a n a g e r . G e t S t a t ( B C S _ T o x i c i t y ,   f a l s e )   +   f i n a l P o t i o n T o x i c i t y   +   t o x i c i t y O f f s e t   >   m a x T o x   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   D r i n k P r e p a r e d P o t i o n (   s l o t i d   :   E E q u i p m e n t S l o t s ,   o p t i o n a l   i t e m I d   :   S I t e m U n i q u e I d   )  
 	 { 	  
 	 	 v a r   p o t P a r a m s   :   W 3 P o t i o n P a r a m s ;  
 	 	 v a r   p o t i o n P a r a m s   :   S C u s t o m E f f e c t P a r a m s ;  
 	 	 v a r   f a c t P o t i o n P a r a m s   :   W 3 P o t i o n _ F a c t _ P a r a m s ;  
 	 	 v a r   a d r e n a l i n e ,   h p G a i n V a l u e ,   d u r a t i o n ,   f i n a l P o t i o n T o x i c i t y   :   f l o a t ;  
 	 	 v a r   r e t   :   E E f f e c t I n t e r a c t ;  
 	 	 v a r   e f f e c t T y p e   :   E E f f e c t T y p e ;  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ;  
 	 	 v a r   c u s t o m A b i l i t y N a m e ,   f a c t I d   :   n a m e ;  
 	 	 v a r   a t t s   :   a r r a y < n a m e > ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   m u t a g e n P a r a m s   :   W 3 M u t a g e n B u f f C u s t o m P a r a m s ;  
 	 	  
 	 	  
 	 	 i f ( i t e m I d   ! =   G e t I n v a l i d U n i q u e I d ( ) )  
 	 	 	 i t e m   =   i t e m I d ;    
 	 	 e l s e    
 	 	 	 i t e m   =   i t e m S l o t s [ s l o t i d ] ;  
 	 	  
 	 	  
 	 	 i f ( ! i n v . I s I d V a l i d ( i t e m ) )  
 	 	 	 r e t u r n ;  
 	 	 	  
 	 	  
 	 	 i f (   i n v . S i n g l e t o n I t e m G e t A m m o ( i t e m )   = =   0   )  
 	 	 	 r e t u r n ;  
 	 	 	  
 	 	  
 	 	 i n v . G e t P o t i o n I t e m B u f f D a t a ( i t e m ,   e f f e c t T y p e ,   c u s t o m A b i l i t y N a m e ) ;  
 	 	 	  
 	 	  
 	 	 i f (   ! H a s F r e e T o x i c i t y T o D r i n k P o t i o n (   i t e m ,   e f f e c t T y p e ,   f i n a l P o t i o n T o x i c i t y   )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	 	 	  
 	 	  
 	 	 i f ( e f f e c t T y p e   = =   E E T _ F a c t )  
 	 	 {  
 	 	 	 i n v . G e t I t e m A t t r i b u t e s ( i t e m ,   a t t s ) ;  
 	 	 	  
 	 	 	 f o r ( i = 0 ;   i < a t t s . S i z e ( ) ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 i f ( S t r B e g i n s W i t h ( N a m e T o S t r i n g ( a t t s [ i ] ) ,   " f a c t _ " ) )  
 	 	 	 	 {  
 	 	 	 	 	 f a c t I d   =   a t t s [ i ] ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 f a c t P o t i o n P a r a m s   =   n e w   W 3 P o t i o n _ F a c t _ P a r a m s   i n   t h e G a m e ;  
 	 	 	 f a c t P o t i o n P a r a m s . f a c t N a m e   =   f a c t I d ;  
 	 	 	 f a c t P o t i o n P a r a m s . p o t i o n I t e m N a m e   =   i n v . G e t I t e m N a m e ( i t e m ) ;  
 	 	 	  
 	 	 	 p o t i o n P a r a m s . b u f f S p e c i f i c P a r a m s   =   f a c t P o t i o n P a r a m s ;  
 	 	 }  
 	 	  
 	 	 e l s e   i f ( i n v . I t e m H a s T a g (   i t e m ,   ' M u t a g e n '   ) )  
 	 	 {  
 	 	 	 m u t a g e n P a r a m s   =   n e w   W 3 M u t a g e n B u f f C u s t o m P a r a m s   i n   t h e G a m e ;  
 	 	 	 m u t a g e n P a r a m s . t o x i c i t y O f f s e t   =   C a l c u l a t e A t t r i b u t e V a l u e ( i n v . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   ' t o x i c i t y _ o f f s e t ' ) ) ;  
 	 	 	 m u t a g e n P a r a m s . p o t i o n I t e m N a m e   =   i n v . G e t I t e m N a m e ( i t e m ) ;  
 	 	 	  
 	 	 	 f i n a l P o t i o n T o x i c i t y   + =   0 . 0 0 1 f ;  
 	 	 	  
 	 	 	 p o t i o n P a r a m s . b u f f S p e c i f i c P a r a m s   =   m u t a g e n P a r a m s ;  
 	 	 	  
 	 	 	 i f (   I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 1 0   )   & &   ! H a s B u f f (   E E T _ M u t a t i o n 1 0   )   )  
 	 	 	 {  
 	 	 	 	 A d d E f f e c t D e f a u l t (   E E T _ M u t a t i o n 1 0 ,   t h i s ,   " M u t a t i o n   1 0 "   ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 e l s e  
 	 	 {  
 	 	 	 p o t P a r a m s   =   n e w   W 3 P o t i o n P a r a m s   i n   t h e G a m e ;  
 	 	 	 p o t P a r a m s . p o t i o n I t e m N a m e   =   i n v . G e t I t e m N a m e ( i t e m ) ;  
 	 	 	  
 	 	 	 p o t i o n P a r a m s . b u f f S p e c i f i c P a r a m s   =   p o t P a r a m s ;  
 	 	 }  
 	  
 	 	  
 	 	 d u r a t i o n   =   C a l c u l a t e P o t i o n D u r a t i o n ( i t e m ,   i n v . I t e m H a s T a g (   i t e m ,   ' M u t a g e n '   ) ) ; 	 	  
  
 	 	  
 	 	 p o t i o n P a r a m s . e f f e c t T y p e   =   e f f e c t T y p e ;  
 	 	 p o t i o n P a r a m s . c r e a t o r   =   t h i s ;  
 	 	 p o t i o n P a r a m s . s o u r c e N a m e   =   " d r a n k _ p o t i o n " ;  
 	 	 p o t i o n P a r a m s . d u r a t i o n   =   d u r a t i o n ;  
 	 	 p o t i o n P a r a m s . c u s t o m A b i l i t y N a m e   =   c u s t o m A b i l i t y N a m e ;  
 	 	 r e t   =   A d d E f f e c t C u s t o m ( p o t i o n P a r a m s ) ;  
  
 	 	  
 	 	 i f ( f a c t P o t i o n P a r a m s )  
 	 	 	 d e l e t e   f a c t P o t i o n P a r a m s ;  
 	 	 	  
 	 	 i f ( m u t a g e n P a r a m s )  
 	 	 	 d e l e t e   m u t a g e n P a r a m s ;  
 	 	 	  
 	 	  
 	 	 i n v . S i n g l e t o n I t e m R e m o v e A m m o ( i t e m ) ;  
 	 	  
 	 	  
 	 	 i f ( r e t   = =   E I _ P a s s   | |   r e t   = =   E I _ O v e r r i d e   | |   r e t   = =   E I _ C u m u l a t e )  
 	 	 {  
 	 	 	 i f (   f i n a l P o t i o n T o x i c i t y   >   0 . f   )  
 	 	 	 { 	 	 	 	  
 	 	 	 	 a b i l i t y M a n a g e r . G a i n S t a t ( B C S _ T o x i c i t y ,   f i n a l P o t i o n T o x i c i t y   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 i f ( C a n U s e S k i l l ( S _ P e r k _ 1 3 ) )  
 	 	 	 {  
 	 	 	 	 a b i l i t y M a n a g e r . D r a i n F o c u s ( a d r e n a l i n e ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   ( ! I s E f f e c t A c t i v e ( ' i n v i s i b l e ' ) )  
 	 	 	 {  
 	 	 	 	 P l a y E f f e c t ( ' u s e _ p o t i o n ' ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   i n v . I t e m H a s T a g (   i t e m ,   ' M u t a g e n '   )   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . C h e c k T r i a l O f G r a s s e s ( ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 S e t F a i l e d F u n d a m e n t a l s F i r s t A c h i e v e m e n t C o n d i t i o n ( t r u e ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 i f ( C a n U s e S k i l l ( S _ A l c h e m y _ s 0 2 ) )  
 	 	 	 {  
 	 	 	 	 h p G a i n V a l u e   =   C l a m p F ( G e t S t a t M a x ( B C S _ V i t a l i t y )   *   C a l c u l a t e A t t r i b u t e V a l u e ( G e t S k i l l A t t r i b u t e V a l u e ( S _ A l c h e m y _ s 0 2 ,   ' v i t a l i t y _ g a i n _ p e r c ' ,   f a l s e ,   t r u e ) )   *   G e t S k i l l L e v e l ( S _ A l c h e m y _ s 0 2 ) ,   0 ,   G e t S t a t M a x ( B C S _ V i t a l i t y ) ) ;  
 	 	 	 	 G a i n S t a t ( B C S _ V i t a l i t y ,   h p G a i n V a l u e ) ;  
 	 	 	 } 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 i f ( C a n U s e S k i l l ( S _ A l c h e m y _ s 0 4 )   & &   ! s k i l l B o n u s P o t i o n E f f e c t   & &   ( R a n d F ( )   <   C a l c u l a t e A t t r i b u t e V a l u e ( G e t S k i l l A t t r i b u t e V a l u e ( S _ A l c h e m y _ s 0 4 ,   ' a p p l y _ c h a n c e ' ,   f a l s e ,   t r u e ) )   *   G e t S k i l l L e v e l ( S _ A l c h e m y _ s 0 4 ) ) )  
 	 	 	 {  
 	 	 	 	 A d d R a n d o m P o t i o n E f f e c t F r o m A l c h 4 S k i l l (   e f f e c t T y p e   ) ; 	 	 	 	  
 	 	 	 }  
 	 	 	  
 	 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . S e t S t a t ( E S _ A c t i v e P o t i o n s ,   e f f e c t M a n a g e r . G e t P o t i o n B u f f s C o u n t ( ) ) ;  
 	 	 }  
 	 	  
 	 	 t h e T e l e m e t r y . L o g W i t h L a b e l ( T E _ E L I X I R _ U S E D ,   i n v . G e t I t e m N a m e ( i t e m ) ) ;  
 	 	  
 	 	 i f ( S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l P o t i o n A m m o ' ) )  
 	 	 {  
 	 	 	 F a c t s A d d ( " t u t _ u s e d _ p o t i o n " ) ;  
 	 	 }  
 	 	  
 	 	 S e t F a i l e d F u n d a m e n t a l s F i r s t A c h i e v e m e n t C o n d i t i o n ( t r u e ) ;  
 	 }  
 	  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   A d d R a n d o m P o t i o n E f f e c t F r o m A l c h 4 S k i l l (   c u r r e n t l y D r a n k P o t i o n   :   E E f f e c t T y p e   )  
 	 {  
 	 	 v a r   r a n d o m P o t i o n s   :   a r r a y < E E f f e c t T y p e > ;  
 	 	 v a r   c u r r e n t P o t i o n   :   C B a s e G a m e p l a y E f f e c t ;  
 	 	 v a r   e f f e c t s O l d ,   e f f e c t s N e w   :   a r r a y < C B a s e G a m e p l a y E f f e c t > ;  
 	 	 v a r   i ,   i n d   :   i n t ;  
 	 	 v a r   d u r a t i o n   :   f l o a t ;  
 	 	 v a r   p a r a m s   :   S C u s t o m E f f e c t P a r a m s ;  
 	 	 v a r   r e t   :   E E f f e c t I n t e r a c t ;  
 	 	  
 	 	  
 	 	 r a n d o m P o t i o n s . P u s h B a c k (   E E T _ B l a c k B l o o d   ) ;  
 	 	 r a n d o m P o t i o n s . P u s h B a c k (   E E T _ B l i z z a r d   ) ;  
 	 	 r a n d o m P o t i o n s . P u s h B a c k (   E E T _ F u l l M o o n   ) ;  
 	 	 r a n d o m P o t i o n s . P u s h B a c k (   E E T _ G o l d e n O r i o l e   ) ;  
 	 	  
 	 	 r a n d o m P o t i o n s . P u s h B a c k (   E E T _ M a r i b o r F o r e s t   ) ;  
 	 	 r a n d o m P o t i o n s . P u s h B a c k (   E E T _ P e t r i P h i l t r e   ) ;  
 	 	 r a n d o m P o t i o n s . P u s h B a c k (   E E T _ S w a l l o w   ) ;  
 	 	 r a n d o m P o t i o n s . P u s h B a c k (   E E T _ T a w n y O w l   ) ;  
 	 	 r a n d o m P o t i o n s . P u s h B a c k (   E E T _ T h u n d e r b o l t   ) ;  
 	 	  
 	 	  
 	 	 r a n d o m P o t i o n s . R e m o v e (   c u r r e n t l y D r a n k P o t i o n   ) ;  
 	 	  
 	 	  
 	 	 i n d   =   R a n d R a n g e (   r a n d o m P o t i o n s . S i z e ( )   ) ;  
  
 	 	  
 	 	 i f (   H a s B u f f (   r a n d o m P o t i o n s [   i n d   ]   )   )  
 	 	 {  
 	 	 	 c u r r e n t P o t i o n   =   G e t B u f f (   r a n d o m P o t i o n s [   i n d   ]   ) ;  
 	 	 	 c u r r e n t P o t i o n . S e t T i m e L e f t (   c u r r e n t P o t i o n . G e t I n i t i a l D u r a t i o n A f t e r R e s i s t s ( )   ) ;  
 	 	 }  
 	 	  
 	 	 e l s e  
 	 	 { 	 	 	  
 	 	 	 d u r a t i o n   =   B o n u s P o t i o n G e t D u r a t i o n F r o m X M L (   r a n d o m P o t i o n s [   i n d   ]   ) ;  
 	 	 	  
 	 	 	 i f ( d u r a t i o n   >   0 )  
 	 	 	 {  
 	 	 	 	 e f f e c t s O l d   =   G e t C u r r e n t E f f e c t s ( ) ;  
 	 	 	 	 	 	 	 	 	  
 	 	 	 	 p a r a m s . e f f e c t T y p e   =   r a n d o m P o t i o n s [   i n d   ] ;  
 	 	 	 	 p a r a m s . c r e a t o r   =   t h i s ;  
 	 	 	 	 p a r a m s . s o u r c e N a m e   =   S k i l l E n u m T o N a m e (   S _ A l c h e m y _ s 0 4   ) ;  
 	 	 	 	 p a r a m s . d u r a t i o n   =   d u r a t i o n ;  
 	 	 	 	 r e t   =   A d d E f f e c t C u s t o m (   p a r a m s   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f (   r e t   ! =   E I _ U n d e f i n e d   & &   r e t   ! =   E I _ D e n y   )  
 	 	 	 	 {  
 	 	 	 	 	 e f f e c t s N e w   =   G e t C u r r e n t E f f e c t s ( ) ;  
 	 	 	 	 	  
 	 	 	 	 	 i n d   =   - 1 ;  
 	 	 	 	 	 f o r (   i = e f f e c t s N e w . S i z e ( ) - 1 ;   i > = 0 ;   i - = 1 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f (   ! e f f e c t s O l d . C o n t a i n s (   e f f e c t s N e w [ i ]   )   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i n d   =   i ;  
 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 	 i f ( i n d   >   - 1 )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 s k i l l B o n u s P o t i o n E f f e c t   =   e f f e c t s N e w [ i n d ] ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 } 	 	  
 	 	 }  
 	 }  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   B o n u s P o t i o n G e t D u r a t i o n F r o m X M L ( t y p e   :   E E f f e c t T y p e )   :   f l o a t  
 	 {  
 	 	 v a r   d m   :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ;  
 	 	 v a r   m a i n ,   i n g r e d i e n t s   :   S C u s t o m N o d e ;  
 	 	 v a r   t m p N a m e ,   t y p e N a m e ,   i t e m N a m e   :   n a m e ;  
 	 	 v a r   a b s   :   a r r a y < n a m e > ;  
 	 	 v a r   m i n ,   m a x   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   t m p I n t   :   i n t ;  
 	 	 v a r   t e m p   	 	 	 	 	 	 	 	 :   a r r a y < f l o a t > ;  
 	 	 v a r   i ,   t e m p 2 ,   t e m p 3   :   i n t ;  
 	 	 	 	 	 	  
 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	 m a i n   =   d m . G e t C u s t o m D e f i n i t i o n ( ' a l c h e m y _ r e c i p e s ' ) ;  
 	 	 t y p e N a m e   =   E f f e c t T y p e T o N a m e ( t y p e ) ;  
 	 	  
 	 	  
 	 	 f o r ( i = 0 ;   i < m a i n . s u b N o d e s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 i f ( d m . G e t C u s t o m N o d e A t t r i b u t e V a l u e N a m e ( m a i n . s u b N o d e s [ i ] ,   ' t y p e _ n a m e ' ,   t m p N a m e ) )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 i f ( t m p N a m e   = =   t y p e N a m e )  
 	 	 	 	 {  
 	 	 	 	 	 i f ( d m . G e t C u s t o m N o d e A t t r i b u t e V a l u e I n t ( m a i n . s u b N o d e s [ i ] ,   ' l e v e l ' ,   t m p I n t ) )  
 	 	 	 	 	 {  
 	 	 	 	 	 	  
 	 	 	 	 	 	 i f ( t m p I n t   = =   1 )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 i f ( d m . G e t C u s t o m N o d e A t t r i b u t e V a l u e N a m e ( m a i n . s u b N o d e s [ i ] ,   ' c o o k e d I t e m _ n a m e ' ,   i t e m N a m e ) )  
 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	  
 	 	 	 	 	 	 	 	 i f ( I s N a m e V a l i d ( i t e m N a m e ) )  
 	 	 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 	 }  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f ( ! I s N a m e V a l i d ( i t e m N a m e ) )  
 	 	 	 r e t u r n   0 ;  
 	 	  
 	 	  
 	 	 d m . G e t I t e m A b i l i t i e s W i t h W e i g h t s ( i t e m N a m e ,   t r u e ,   a b s ,   t e m p ,   t e m p 2 ,   t e m p 3 ) ;  
 	 	 d m . G e t A b i l i t i e s A t t r i b u t e V a l u e ( a b s ,   ' d u r a t i o n ' ,   m i n ,   m a x ) ; 	 	 	 	 	 	  
 	 	 r e t u r n   C a l c u l a t e A t t r i b u t e V a l u e ( G e t A t t r i b u t e R a n d o m i z e d V a l u e ( m i n ,   m a x ) ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C l e a r S k i l l B o n u s P o t i o n E f f e c t ( )  
 	 {  
 	 	 s k i l l B o n u s P o t i o n E f f e c t   =   N U L L ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S k i l l B o n u s P o t i o n E f f e c t ( )   :   C B a s e G a m e p l a y E f f e c t  
 	 {  
 	 	 r e t u r n   s k i l l B o n u s P o t i o n E f f e c t ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   H a s R u n e w o r d A c t i v e ( a b i l i t y N a m e   :   n a m e )   :   b o o l  
 	 {  
 	 	 v a r   i t e m   :   S I t e m U n i q u e I d ;  
 	 	 v a r   h a s R u n e w o r d   :   b o o l ;  
 	 	  
 	 	 i f ( G e t I t e m E q u i p p e d O n S l o t ( E E S _ S t e e l S w o r d ,   i t e m ) )  
 	 	 {  
 	 	 	 h a s R u n e w o r d   =   i n v . I t e m H a s A b i l i t y ( i t e m ,   a b i l i t y N a m e ) ; 	 	 	 	  
 	 	 }  
 	 	  
 	 	 i f ( ! h a s R u n e w o r d )  
 	 	 {  
 	 	 	 i f ( G e t I t e m E q u i p p e d O n S l o t ( E E S _ S i l v e r S w o r d ,   i t e m ) )  
 	 	 	 {  
 	 	 	 	 h a s R u n e w o r d   =   i n v . I t e m H a s A b i l i t y ( i t e m ,   a b i l i t y N a m e ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   h a s R u n e w o r d ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t S h r i n e B u f f s ( )   :   a r r a y < C B a s e G a m e p l a y E f f e c t >  
 	 {  
 	 	 v a r   n u l l   :   a r r a y < C B a s e G a m e p l a y E f f e c t > ;  
 	 	  
 	 	 i f ( e f f e c t M a n a g e r   & &   e f f e c t M a n a g e r . I s R e a d y ( ) )  
 	 	 	 r e t u r n   e f f e c t M a n a g e r . G e t S h r i n e B u f f s ( ) ;  
 	 	 	  
 	 	 r e t u r n   n u l l ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   A d d R e p a i r O b j e c t B u f f ( a r m o r   :   b o o l ,   w e a p o n   :   b o o l )   :   b o o l  
 	 {  
 	 	 v a r   a d d e d   :   b o o l ;  
 	 	  
 	 	 a d d e d   =   f a l s e ;  
 	 	  
 	 	 i f ( w e a p o n   & &   ( I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ S i l v e r S w o r d )   | |   I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ S t e e l S w o r d ) )   )  
 	 	 {  
 	 	 	 A d d E f f e c t D e f a u l t ( E E T _ E n h a n c e d W e a p o n ,   t h i s ,   " r e p a i r _ o b j e c t " ,   f a l s e ) ;  
 	 	 	 a d d e d   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 i f ( a r m o r   & &   ( I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ A r m o r )   | |   I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ G l o v e s )   | |   I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ B o o t s )   | |   I s A n y I t e m E q u i p p e d O n S l o t ( E E S _ P a n t s ) )   )  
 	 	 {  
 	 	 	 A d d E f f e c t D e f a u l t ( E E T _ E n h a n c e d A r m o r ,   t h i s ,   " r e p a i r _ o b j e c t " ,   f a l s e ) ;  
 	 	 	 a d d e d   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   a d d e d ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   S t a r t C S A n i m ( b u f f   :   C B a s e G a m e p l a y E f f e c t )   :   b o o l  
 	 {  
 	 	  
 	 	 i f ( I s A n y Q u e n A c t i v e ( )   & &   ( W 3 C r i t i c a l D O T E f f e c t ) b u f f )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 r e t u r n   s u p e r . S t a r t C S A n i m ( b u f f ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t P o t i o n B u f f L e v e l ( e f f e c t T y p e   :   E E f f e c t T y p e )   :   i n t  
 	 {  
 	 	 i f ( e f f e c t M a n a g e r   & &   e f f e c t M a n a g e r . I s R e a d y ( ) )  
 	 	 	 r e t u r n   e f f e c t M a n a g e r . G e t P o t i o n B u f f L e v e l ( e f f e c t T y p e ) ;  
 	 	 	  
 	 	 r e t u r n   0 ;  
 	 } 	  
  
 	  
 	  
 	  
 	  
 	  
 	  
 	 e v e n t   O n L e v e l G a i n e d ( c u r r e n t L e v e l   :   i n t ,   s h o w   :   b o o l )  
 	 {  
 	 	  
 	 	 v a r   s w o r d s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 {  
 	 	 	 ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . O n L e v e l G a i n e d ( c u r r e n t L e v e l ) ;  
 	 	 }  
 	 	  
 	 	 i f   (   t h e G a m e . G e t D i f f i c u l t y M o d e ( )   ! =   E D M _ H a r d c o r e   )    
 	 	 {  
 	 	 	 H e a l ( G e t S t a t M a x ( B C S _ V i t a l i t y ) ) ;  
 	 	 }    
 	  
 	 	  
 	 	 i f ( c u r r e n t L e v e l   > =   3 5 )  
 	 	 {  
 	 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . A d d A c h i e v e m e n t ( E A _ I m m o r t a l ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . N o t i c e A c h i e v e m e n t P r o g r e s s ( E A _ I m m o r t a l ,   c u r r e n t L e v e l ) ;  
 	 	 }  
 	  
 	 	 i f   (   h u d   & &   c u r r e n t L e v e l   <   l e v e l M a n a g e r . G e t M a x L e v e l ( )   & &   F a c t s Q u e r y S u m (   " D e b u g N o L e v e l U p U p d a t e s "   )   = =   0   )  
 	 	 {  
 	 	 	 h u d . O n L e v e l U p U p d a t e ( c u r r e n t L e v e l ,   s h o w ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 s w o r d s   =   i n v . G e t I t e m s B y N a m e ( ' s q 3 0 4   N o v i g r a a d a n   s w o r d   4 ' ) ;  
 	 	 f o r ( i = 0 ; i < s w o r d s . S i z e ( ) ; i + = 1 )  
 	 	 {  
 	 	 	 i n v . A d d I t e m C r a f t e d A b i l i t y ( s w o r d s [ i ] ,   ' s q 3 0 4 _ s w o r d _ u p g r a d e   _ S t a t s ' ,   t r u e ) ; 	 	 	  
 	 	 }  
 	 	  
 	 	 s w o r d s . C l e a r ( ) ;  
 	 	 s w o r d s   =   i n v . G e t I t e m s B y N a m e ( ' q 4 0 2   S k e l l i g e   s w o r d   3 ' ) ;  
 	 	 f o r ( i = 0 ; i < s w o r d s . S i z e ( ) ; i + = 1 )  
 	 	 {  
 	 	 	 i n v . A d d I t e m C r a f t e d A b i l i t y ( s w o r d s [ i ] ,   ' q 4 0 2 _ s w o r d _ u p g r a d e   _ S t a t s ' ,   t r u e ) ; 	 	 	  
 	 	 }  
 	 	  
 	 	  
 	 	 t h e G a m e . R e q u e s t A u t o S a v e (   " l e v e l   g a i n e d " ,   f a l s e   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S i g n S t a t s ( s k i l l   :   E S k i l l ,   o u t   d a m a g e T y p e   :   n a m e ,   o u t   d a m a g e V a l   :   f l o a t ,   o u t   s p e l l P o w e r   :   S A b i l i t y A t t r i b u t e V a l u e )  
 	 {  
 	 	 v a r   i ,   s i z e   :   i n t ;  
 	 	 v a r   d m   :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ;  
 	 	 v a r   a t t r s   :   a r r a y < n a m e > ;  
 	  
 	 	 s p e l l P o w e r   =   G e t P o w e r S t a t V a l u e ( C P S _ S p e l l P o w e r ) ;  
 	 	  
 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	 d m . G e t A b i l i t y A t t r i b u t e s ( G e t S k i l l A b i l i t y N a m e ( s k i l l ) ,   a t t r s ) ;  
 	 	 s i z e   =   a t t r s . S i z e ( ) ;  
 	 	  
 	 	 f o r (   i   =   0 ;   i   <   s i z e ;   i   + =   1   )  
 	 	 {  
 	 	 	 i f (   I s D a m a g e T y p e N a m e V a l i d ( a t t r s [ i ] )   )  
 	 	 	 {  
 	 	 	 	 d a m a g e V a l   =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t S k i l l A t t r i b u t e V a l u e ( s k i l l ,   a t t r s [ i ] ,   f a l s e ,   t r u e ) ) ;  
 	 	 	 	 d a m a g e T y p e   =   a t t r s [ i ] ;  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	 	  
 	  
 	 p u b l i c   f u n c t i o n   S e t I g n o r e P a i n M a x V i t a l i t y ( v a l   :   f l o a t )  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 a b i l i t y M a n a g e r . S e t S t a t P o i n t M a x ( B C S _ V i t a l i t y ,   v a l ) ;  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ A c t i o n B l e n d (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i f   (   a n i m E v e n t T y p e   = =   A E T _ D u r a t i o n S t a r t   & &   ! d i s a b l e A c t i o n B l e n d   )  
 	 	 {  
 	 	 	 i f   (   t h i s . I s C a s t i n g S i g n ( )   )  
 	 	 	 	 P r o c e s s S i g n E v e n t (   ' c a s t _ e n d '   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 F i n d M o v e T a r g e t ( ) ;  
 	 	 	 S e t C a n P l a y H i t A n i m (   t r u e   ) ;  
 	 	 	 t h i s . S e t B I s C o m b a t A c t i o n A l l o w e d (   t r u e   ) ;  
 	 	 	  
 	 	 	 i f   (   t h i s . G e t F i n i s h e r V i c t i m ( )   & &   t h i s . G e t F i n i s h e r V i c t i m ( ) . H a s A b i l i t y (   ' F o r c e F i n i s h e r '   )   & &   ! i s I n F i n i s h e r   )  
 	 	 	 {  
 	 	 	 	 t h i s . G e t F i n i s h e r V i c t i m ( ) . S i g n a l G a m e p l a y E v e n t (   ' F i n i s h e r '   ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f   ( t h i s . B u f f e r C o m b a t A c t i o n   ! =   E B A T _ E M P T Y   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   ! I s C o m b a t M u s i c E n a b l e d ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 S e t C o m b a t A c t i o n H e a d i n g (   P r o c e s s C o m b a t A c t i o n H e a d i n g (   t h i s . B u f f e r C o m b a t A c t i o n   )   ) ;    
 	 	 	 	 	 	 F i n d T a r g e t ( ) ;  
 	 	 	 	 	 	 U p d a t e D i s p l a y T a r g e t (   t r u e   ) ;  
 	 	 	 	 	 }  
 	 	 	  
 	 	 	 	 	 i f   (   A l l o w A t t a c k (   G e t T a r g e t ( ) ,   t h i s . B u f f e r C o m b a t A c t i o n   )   )  
 	 	 	 	 	 	 t h i s . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 R e s u m e S t a m i n a R e g e n (   ' I n s i d e C o m b a t A c t i o n '   ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   (   d i s a b l e A c t i o n B l e n d   )  
 	 	 {  
 	 	 	 d i s a b l e A c t i o n B l e n d   =   f a l s e ;  
 	 	 }  
 	 }  
 	  
 	  
 	 e v e n t   O n A n i m E v e n t _ S i g n (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 i f (   a n i m E v e n t T y p e   = =   A E T _ T i c k   )  
 	 	 {  
 	 	 	 P r o c e s s S i g n E v e n t (   a n i m E v e n t N a m e   ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n A n i m E v e n t _ T h r o w a b l e (   a n i m E v e n t N a m e   :   n a m e ,   a n i m E v e n t T y p e   :   E A n i m a t i o n E v e n t T y p e ,   a n i m I n f o   :   S A n i m a t i o n E v e n t A n i m I n f o   )  
 	 {  
 	 	 v a r   t h r o w n E n t i t y 	 	 :   C T h r o w a b l e ; 	  
 	 	  
 	 	 t h r o w n E n t i t y   =   ( C T h r o w a b l e ) E n t i t y H a n d l e G e t (   t h r o w n E n t i t y H a n d l e   ) ;  
 	 	 	  
 	 	 i f   (   i n v . I s I t e m C r o s s b o w (   i n v . G e t I t e m F r o m S l o t ( ' l _ w e a p o n ' )   )   & &     r a n g e d W e a p o n . O n P r o c e s s T h r o w E v e n t (   a n i m E v e n t N a m e   )   )  
 	 	 { 	 	  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 e l s e   i f (   t h r o w n E n t i t y   & &   I s T h r o w i n g I t e m ( )   & &   t h r o w n E n t i t y . O n P r o c e s s T h r o w E v e n t (   a n i m E v e n t N a m e   )   )  
 	 	 {  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n T a s k S y n c A n i m (   n p c   :   C N e w N P C ,   a n i m N a m e L e f t   :   n a m e   )  
 	 {  
 	 	 v a r   t m p B o o l   :   b o o l ;  
 	 	 v a r   t m p N a m e   :   n a m e ;  
 	 	 v a r   d a m a g e ,   p o i n t s ,   r e s i s t a n c e   :   f l o a t ;  
 	 	 v a r   m i n ,   m a x   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   m c   :   E M o n s t e r C a t e g o r y ;  
 	 	  
 	 	 s u p e r . O n T a s k S y n c A n i m (   n p c ,   a n i m N a m e L e f t   ) ;  
 	 	  
 	 	 i f (   a n i m N a m e L e f t   = =   ' B r u x a B i t e '   & &   I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 4   )   )  
 	 	 {  
 	 	 	 t h e G a m e . G e t M o n s t e r P a r a m s F o r A c t o r (   n p c ,   m c ,   t m p N a m e ,   t m p B o o l ,   t m p B o o l ,   t m p B o o l   ) ;  
 	 	 	  
 	 	 	 i f (   m c   = =   M C _ V a m p i r e   )  
 	 	 	 {  
 	 	 	 	 G e t R e s i s t V a l u e (   C D S _ B l e e d i n g R e s ,   p o i n t s ,   r e s i s t a n c e   ) ;  
 	 	 	 	  
 	 	 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e (   ' B l e e d i n g E f f e c t ' ,   ' D i r e c t D a m a g e ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 d a m a g e   =   M a x F (   0 . f ,   m a x . v a l u e M u l t i p l i c a t i v e   *   G e t M a x H e a l t h ( )   -   p o i n t s   ) ;  
 	 	 	 	  
 	 	 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e (   ' B l e e d i n g E f f e c t ' ,   ' d u r a t i o n ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 d a m a g e   * =   m i n . v a l u e A d d i t i v e   *   (   1   -   M i n F (   1 . f ,   r e s i s t a n c e   )   ) ;  
 	 	 	 	  
 	 	 	 	 i f (   d a m a g e   >   0 . f   )  
 	 	 	 	 {  
 	 	 	 	 	 n p c . A d d A b i l i t y (   ' M u t a t i o n 4 B l o o d D e b u f f '   ) ;  
 	 	 	 	 	 P r o c e s s A c t i o n M u t a t i o n 4 R e t u r n e d D a m a g e (   d a m a g e ,   n p c ,   E A H A _ F o r c e N o   ) ; 	 	 	 	 	  
 	 	 	 	 	 n p c . A d d T i m e r (   ' R e m o v e M u t a t i o n 4 B l o o d D e b u f f ' ,   1 5 . f ,   ,   ,   ,   ,   t r u e   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   P r o c e s s A c t i o n M u t a t i o n 4 R e t u r n e d D a m a g e (   d a m a g e D e a l t   :   f l o a t ,   a t t a c k e r   :   C A c t o r ,   h i t A n i m a t i o n T y p e   :   E A c t i o n H i t A n i m ,   o p t i o n a l   a c t i o n   :   W 3 D a m a g e A c t i o n   )   :   b o o l  
 	 {  
 	 	 v a r   c u s t o m P a r a m s 	 	 	 	 :   S C u s t o m E f f e c t P a r a m s ;  
 	 	 v a r   c u r r T o x i c i t y 	 	 	 	 :   f l o a t ;  
 	 	 v a r   m i n ,   m a x ,   c u s t o m D a m a g e V a l u e 	 :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   d m 	 	 	 	 	 	 	 :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ;  
 	 	 v a r   a n i m A c t i o n 	 	 	 	 	 :   W 3 D a m a g e A c t i o n ;  
  
 	 	 i f (   d a m a g e D e a l t   < =   0   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f (   a c t i o n   )  
 	 	 {  
 	 	 	 a c t i o n . S e t M u t a t i o n 4 T r i g g e r e d ( ) ;  
 	 	 }  
 	 	 	  
 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	 c u r r T o x i c i t y   =   G e t S t a t (   B C S _ T o x i c i t y   ) ;  
 	 	  
 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' A c i d E f f e c t ' ,   ' D i r e c t D a m a g e ' ,   m i n ,   m a x   ) ;  
 	 	 c u s t o m D a m a g e V a l u e . v a l u e A d d i t i v e   =   d a m a g e D e a l t   *   m i n . v a l u e A d d i t i v e ;  
 	 	  
 	 	 i f (   c u r r T o x i c i t y   >   0   )  
 	 	 {  
 	 	 	 c u s t o m D a m a g e V a l u e . v a l u e A d d i t i v e   * =   c u r r T o x i c i t y ;  
 	 	 }  
 	 	  
 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' A c i d E f f e c t ' ,   ' d u r a t i o n ' ,   m i n ,   m a x   ) ;  
 	 	 c u s t o m D a m a g e V a l u e . v a l u e A d d i t i v e   / =   m i n . v a l u e A d d i t i v e ;    
 	 	  
 	 	 c u s t o m P a r a m s . e f f e c t T y p e   =   E E T _ A c i d ;  
 	 	 c u s t o m P a r a m s . e f f e c t V a l u e   =   c u s t o m D a m a g e V a l u e ;  
 	 	 c u s t o m P a r a m s . d u r a t i o n   =   m i n . v a l u e A d d i t i v e ;  
 	 	 c u s t o m P a r a m s . c r e a t o r   =   t h i s ;  
 	 	 c u s t o m P a r a m s . s o u r c e N a m e   =   ' M u t a t i o n 4 ' ;  
 	 	  
 	 	 a t t a c k e r . A d d E f f e c t C u s t o m (   c u s t o m P a r a m s   ) ;  
 	 	  
 	 	  
 	 	 a n i m A c t i o n   =   n e w   W 3 D a m a g e A c t i o n   i n   t h e G a m e ;  
 	 	 a n i m A c t i o n . I n i t i a l i z e (   t h i s ,   a t t a c k e r ,   N U L L ,   ' M u t a t i o n 4 ' ,   E H R T _ R e f l e c t ,   C P S _ U n d e f i n e d ,   t r u e ,   f a l s e ,   f a l s e ,   f a l s e   ) ;  
 	 	 a n i m A c t i o n . S e t C a n n o t R e t u r n D a m a g e (   t r u e   ) ;  
 	 	 a n i m A c t i o n . S e t C a n P l a y H i t P a r t i c l e (   f a l s e   ) ;  
 	 	 a n i m A c t i o n . S e t H i t A n i m a t i o n P l a y T y p e (   h i t A n i m a t i o n T y p e   ) ;  
 	 	 t h e G a m e . d a m a g e M g r . P r o c e s s A c t i o n (   a n i m A c t i o n   ) ;  
 	 	 d e l e t e   a n i m A c t i o n ;  
 	 	  
 	 	 t h e G a m e . M u t a t i o n H U D F e e d b a c k (   M F T _ P l a y O n c e   ) ;  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 e v e n t   O n P l a y e r A c t i o n E n d ( )  
 	 {  
 	 	 v a r   l _ i 	 	 	 	 :   i n t ;  
 	 	 v a r   l _ b e d 	 	 	 :   W 3 W i t c h e r B e d ;  
 	 	  
 	 	 l _ i   =   ( i n t ) G e t B e h a v i o r V a r i a b l e (   ' p l a y e r E x p l o r a t i o n A c t i o n '   ) ;  
 	 	  
 	 	 i f (   l _ i   = =   P E A _ G o T o S l e e p   )  
 	 	 {  
 	 	 	 l _ b e d   =   ( W 3 W i t c h e r B e d ) t h e G a m e . G e t E n t i t y B y T a g (   ' w i t c h e r B e d '   ) ;  
 	 	 	 B l o c k A l l A c t i o n s (   ' W i t c h e r B e d ' ,   f a l s e   ) ;  
 	 	 	 l _ b e d . A p p l y A p p e a r a n c e (   " c o l l i s i o n "   ) ;  
 	 	 	 l _ b e d . G o t o S t a t e (   ' W a k e U p '   ) ;  
 	 	 	 t h e G a m e . R e l e a s e N o S a v e L o c k (   l _ b e d . m _ b e d S a v e L o c k   ) ;  
 	 	 	  
 	 	 	  
 	 	 	 s u b s t a t e M a n a g e r . m _ M o v e m e n t C o r r e c t o r O . d i s a l l o w R o t W h e n G o i n g T o S l e e p   =   f a l s e ;  
 	 	 }  
 	 	  
 	 	 s u p e r . O n P l a y e r A c t i o n E n d ( ) ;  
 	 }  
 	  
 	 e v e n t   O n P l a y e r A c t i o n S t a r t F i n i s h e d ( )  
 	 {  
 	 	 v a r   l _ i n i t D a t a 	 	 	 :   W 3 S i n g l e M e n u I n i t D a t a ; 	 	  
 	 	 v a r   l _ i 	 	 	 	 	 :   i n t ;  
 	 	  
 	 	 l _ i   =   ( i n t ) G e t B e h a v i o r V a r i a b l e (   ' p l a y e r E x p l o r a t i o n A c t i o n '   ) ;  
 	 	  
 	 	 i f (   l _ i   = =   P E A _ G o T o S l e e p   )  
 	 	 {  
 	 	 	 l _ i n i t D a t a   =   n e w   W 3 S i n g l e M e n u I n i t D a t a   i n   t h i s ;  
 	 	 	 l _ i n i t D a t a . S e t B l o c k O t h e r P a n e l s (   t r u e   ) ;  
 	 	 	 l _ i n i t D a t a . i g n o r e S a v e S y s t e m   =   t r u e ;  
 	 	 	 l _ i n i t D a t a . i g n o r e M e d i t a t i o n C h e c k   =   t r u e ;  
 	 	 	 l _ i n i t D a t a . s e t D e f a u l t S t a t e (   ' '   ) ;  
 	 	 	 l _ i n i t D a t a . i s B o n u s M e d i t a t i o n A v a i l a b l e   =   t r u e ;  
 	 	 	 l _ i n i t D a t a . f i x e d M e n u N a m e   =   ' M e d i t a t i o n C l o c k M e n u ' ;  
 	 	 	  
 	 	 	 t h e G a m e . R e q u e s t M e n u W i t h B a c k g r o u n d (   ' M e d i t a t i o n C l o c k M e n u ' ,   ' C o m m o n M e n u ' ,   l _ i n i t D a t a   ) ;  
 	 	 }  
 	 	  
 	 	 s u p e r . O n P l a y e r A c t i o n S t a r t F i n i s h e d ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s I n C o m b a t A c t i o n _ S p e c i a l A t t a c k ( )   :   b o o l  
 	 {  
 	 	 i f   (   I s I n C o m b a t A c t i o n ( )   & &   (   G e t C o m b a t A c t i o n ( )   = =   E B A T _ S p e c i a l A t t a c k _ L i g h t   | |   G e t C o m b a t A c t i o n ( )   = =   E B A T _ S p e c i a l A t t a c k _ H e a v y   )   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e  
 	 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s I n C o m b a t A c t i o n _ S p e c i a l A t t a c k H e a v y ( )   :   b o o l  
 	 {  
 	 	 i f   (   I s I n C o m b a t A c t i o n ( )   & &   G e t C o m b a t A c t i o n ( )   = =   E B A T _ S p e c i a l A t t a c k _ H e a v y   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 e l s e  
 	 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   W h e n C o m b a t A c t i o n I s F i n i s h e d ( )  
 	 {  
 	 	 s u p e r . W h e n C o m b a t A c t i o n I s F i n i s h e d ( ) ;  
 	 	 R e m o v e T i m e r (   ' P r o c e s s A t t a c k T i m e r '   ) ;  
 	 	 R e m o v e T i m e r (   ' A t t a c k T i m e r E n d '   ) ;  
 	 	 C a s t S i g n A b o r t ( ) ;  
 	 	 s p e c i a l A t t a c k C a m e r a   =   f a l s e ;  
 	 	 t h i s . O n P e r f o r m S p e c i a l A t t a c k (   t r u e ,   f a l s e   ) ;  
 	 }  
 	  
 	 e v e n t   O n C o m b a t A c t i o n E n d ( )  
 	 {  
 	 	 t h i s . C l e a n C o m b a t A c t i o n B u f f e r ( ) ; 	 	  
 	 	 s u p e r . O n C o m b a t A c t i o n E n d ( ) ;  
 	 	  
 	 	 R e m o v e T e m p o r a r y S k i l l s ( ) ;  
 	 }  
 	  
 	 e v e n t   O n C o m b a t A c t i o n F r i e n d l y E n d ( )  
 	 {  
 	 	 i f   (   I s C a s t i n g S i g n ( )   )  
 	 	 {  
 	 	 	 S e t B e h a v i o r V a r i a b l e (   ' I s C a s t i n g S i g n ' ,   0   ) ;  
 	 	 	 S e t C u r r e n t l y C a s t S i g n (   S T _ N o n e ,   N U L L   ) ;  
 	 	 	 L o g C h a n n e l (   ' S T _ N o n e ' ,   " S T _ N o n e "   ) ; 	 	 	 	 	  
 	 	 }  
  
 	 	 s u p e r . O n C o m b a t A c t i o n F r i e n d l y E n d ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t P o w e r S t a t V a l u e (   s t a t   :   E C h a r a c t e r P o w e r S t a t s ,   o p t i o n a l   a b l N a m e   :   n a m e ,   o p t i o n a l   i g n o r e D e a t h   :   b o o l   )   :   S A b i l i t y A t t r i b u t e V a l u e  
 	 {  
 	 	 v a r   r e s u l t   :     S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	  
 	 	  
 	 	 r e s u l t   =   s u p e r . G e t P o w e r S t a t V a l u e (   s t a t ,   a b l N a m e ,   i g n o r e D e a t h   ) ;  
 	 	 A p p l y M u t a t i o n 1 0 S t a t B o o s t (   r e s u l t   ) ;  
 	 	  
 	 	 r e t u r n   r e s u l t ;  
 	 }  
 	  
 	  
 	  
 	 t i m e r   f u n c t i o n   O p e n R a d i a l M e n u (   t i m e :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	  
 	 	 i f (   G e t B I s C o m b a t A c t i o n A l l o w e d ( )   & &   ! I s U I T a k e I n p u t ( )   )  
 	 	 {  
 	 	 	 b S h o w R a d i a l M e n u   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 t h i s . R e m o v e T i m e r ( ' O p e n R a d i a l M e n u ' ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   O n A d d R a d i a l M e n u O p e n T i m e r (     )  
 	 {  
 	 	  
 	 	  
 	 	  
 	 	          
 	 	          
 	 	 	 t h i s . A d d T i m e r ( ' O p e n R a d i a l M e n u ' ,   _ H o l d B e f o r e O p e n R a d i a l M e n u T i m e   *   t h e G a m e . G e t T i m e S c a l e ( )   ) ;  
 	 	  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t S h o w R a d i a l M e n u O p e n F l a g (   b S e t   :   b o o l     )  
 	 {  
 	 	  
 	 	 b S h o w R a d i a l M e n u   =   b S e t ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   O n R e m o v e R a d i a l M e n u O p e n T i m e r ( )  
 	 {  
 	 	  
 	 	 t h i s . R e m o v e T i m e r ( ' O p e n R a d i a l M e n u ' ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R e s e t R a d i a l M e n u O p e n T i m e r ( )  
 	 {  
 	 	  
 	 	 t h i s . R e m o v e T i m e r ( ' O p e n R a d i a l M e n u ' ) ;  
 	 	 i f (   G e t B I s C o m b a t A c t i o n A l l o w e d ( )   )  
 	 	 {  
 	 	          
 	 	          
 	 	 	 A d d T i m e r ( ' O p e n R a d i a l M e n u ' ,   _ H o l d B e f o r e O p e n R a d i a l M e n u T i m e   *   t h e G a m e . G e t T i m e S c a l e ( )   ) ;  
 	 	 }  
 	 }  
  
 	  
 	  
 	 t i m e r   f u n c t i o n   R e s e n d C o m p a n i o n D i s p l a y N a m e ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	 v a r   c o m p a n i o n M o d u l e   :   C R 4 H u d M o d u l e C o m p a n i o n ;  
 	 	  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 i f (   h u d   )  
 	 	 {  
 	 	 	 c o m p a n i o n M o d u l e   =   ( C R 4 H u d M o d u l e C o m p a n i o n ) h u d . G e t H u d M o d u l e ( " C o m p a n i o n M o d u l e " ) ;  
 	 	 	 i f (   c o m p a n i o n M o d u l e   )  
 	 	 	 {  
 	 	 	 	 c o m p a n i o n M o d u l e . R e s e n d D i s p l a y N a m e ( ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 t i m e r   f u n c t i o n   R e s e n d C o m p a n i o n D i s p l a y N a m e S e c o n d ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	 v a r   c o m p a n i o n M o d u l e   :   C R 4 H u d M o d u l e C o m p a n i o n ;  
 	 	  
 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 i f (   h u d   )  
 	 	 {  
 	 	 	 c o m p a n i o n M o d u l e   =   ( C R 4 H u d M o d u l e C o m p a n i o n ) h u d . G e t H u d M o d u l e ( " C o m p a n i o n M o d u l e " ) ;  
 	 	 	 i f (   c o m p a n i o n M o d u l e   )  
 	 	 	 {  
 	 	 	 	 c o m p a n i o n M o d u l e . R e s e n d D i s p l a y N a m e S e c o n d ( ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R e m o v e C o m p a n i o n D i s p l a y N a m e T i m e r ( )  
 	 {  
 	 	 t h i s . R e m o v e T i m e r ( ' R e s e n d C o m p a n i o n D i s p l a y N a m e ' ) ;  
 	 }  
 	 	  
 	 p u b l i c   f u n c t i o n   R e m o v e C o m p a n i o n D i s p l a y N a m e T i m e r S e c o n d ( )  
 	 {  
 	 	 t h i s . R e m o v e T i m e r ( ' R e s e n d C o m p a n i o n D i s p l a y N a m e S e c o n d ' ) ;  
 	 }  
 	  
 	 	  
 	 p u b l i c   f u n c t i o n   G e t C o m p a n i o n N P C T a g ( )   :   n a m e  
 	 {  
 	 	 r e t u r n   c o m p a n i o n N P C T a g ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t C o m p a n i o n N P C T a g (   v a l u e   :   n a m e   )  
 	 {  
 	 	 c o m p a n i o n N P C T a g   =   v a l u e ;  
 	 } 	  
  
 	 p u b l i c   f u n c t i o n   G e t C o m p a n i o n N P C T a g 2 ( )   :   n a m e  
 	 {  
 	 	 r e t u r n   c o m p a n i o n N P C T a g 2 ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t C o m p a n i o n N P C T a g 2 (   v a l u e   :   n a m e   )  
 	 {  
 	 	 c o m p a n i o n N P C T a g 2   =   v a l u e ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   G e t C o m p a n i o n N P C I c o n P a t h ( )   :   s t r i n g  
 	 {  
 	 	 r e t u r n   c o m p a n i o n N P C I c o n P a t h ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t C o m p a n i o n N P C I c o n P a t h (   v a l u e   :   s t r i n g   )  
 	 {  
 	 	 c o m p a n i o n N P C I c o n P a t h   =   v a l u e ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   G e t C o m p a n i o n N P C I c o n P a t h 2 ( )   :   s t r i n g  
 	 {  
 	 	 r e t u r n   c o m p a n i o n N P C I c o n P a t h 2 ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   S e t C o m p a n i o n N P C I c o n P a t h 2 (   v a l u e   :   s t r i n g   )  
 	 {  
 	 	 c o m p a n i o n N P C I c o n P a t h 2   =   v a l u e ;  
 	 }  
 	  
 	  
  
 	 p u b l i c   f u n c t i o n   R e a c t T o B e i n g H i t ( d a m a g e A c t i o n   :   W 3 D a m a g e A c t i o n ,   o p t i o n a l   b u f f N o t A p p l i e d   :   b o o l )   :   b o o l  
 	 {  
 	 	 v a r   c h a n c e   :   f l o a t ;  
 	 	 v a r   p r o c Q u e n   :   W 3 S i g n E n t i t y ;  
 	 	  
 	 	 i f ( ! d a m a g e A c t i o n . I s D o T D a m a g e ( )   & &   d a m a g e A c t i o n . D e a l s A n y D a m a g e ( ) )  
 	 	 {  
 	 	 	 i f ( i n v . I s I t e m B o m b ( s e l e c t e d I t e m I d ) )  
 	 	 	 {  
 	 	 	 	 B o m b T h r o w A b o r t ( ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 T h r o w i n g A b o r t ( ) ;  
 	 	 	 } 	 	 	  
 	 	 } 	 	  
 	 	  
 	 	  
 	 	 i f ( d a m a g e A c t i o n . I s A c t i o n R a n g e d ( ) )  
 	 	 {  
 	 	 	 c h a n c e   =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t A t t r i b u t e V a l u e ( ' q u e n _ c h a n c e _ o n _ p r o j e c t i l e ' ) ) ;  
 	 	 	 i f ( c h a n c e   >   0 )  
 	 	 	 {  
 	 	 	 	 c h a n c e   =   C l a m p F ( c h a n c e ,   0 ,   1 ) ;  
 	 	 	 	  
 	 	 	 	 i f ( R a n d F ( )   <   c h a n c e )  
 	 	 	 	 {  
 	 	 	 	 	 p r o c Q u e n   =   ( W 3 S i g n E n t i t y ) t h e G a m e . C r e a t e E n t i t y ( s i g n s [ S T _ Q u e n ] . t e m p l a t e ,   G e t W o r l d P o s i t i o n ( ) ,   G e t W o r l d R o t a t i o n ( )   ) ;  
 	 	 	 	 	 p r o c Q u e n . I n i t ( s i g n O w n e r ,   s i g n s [ S T _ Q u e n ] . e n t i t y ,   t r u e   ) ;  
 	 	 	 	 	 p r o c Q u e n . O n S t a r t e d ( ) ;  
 	 	 	 	 	 p r o c Q u e n . O n T h r o w i n g ( ) ;  
 	 	 	 	 	 p r o c Q u e n . O n E n d e d ( ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   ! ( ( W 3 E f f e c t _ T o x i c i t y ) d a m a g e A c t i o n . c a u s e r )   )  
 	 	 	 M e d i t a t i o n F o r c e A b o r t ( t r u e ) ;  
 	 	  
 	 	  
 	 	 i f ( I s D o i n g S p e c i a l A t t a c k ( f a l s e ) )  
 	 	 	 d a m a g e A c t i o n . S e t H i t A n i m a t i o n P l a y T y p e ( E A H A _ F o r c e N o ) ;  
 	 	  
 	 	 r e t u r n   s u p e r . R e a c t T o B e i n g H i t ( d a m a g e A c t i o n ,   b u f f N o t A p p l i e d ) ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   S h o u l d P a u s e H e a l t h R e g e n O n H i t ( )   :   b o o l  
 	 {  
 	 	  
 	 	 i f (   (   H a s B u f f (   E E T _ S w a l l o w   )   & &   G e t P o t i o n B u f f L e v e l (   E E T _ S w a l l o w   )   > =   3   )   | |   H a s B u f f (   E E T _ R u n e w o r d 8   )   | |   H a s B u f f (   E E T _ M u t a t i o n 1 1 B u f f   )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	 	  
 	 p u b l i c   f u n c t i o n   S e t M a p p i n T o H i g h l i g h t (   m a p p i n N a m e   :   n a m e ,   m a p p i n S t a t e   :   b o o l   )  
 	 {  
 	 	 v a r   m a p p i n D e f   :   S H i g h l i g h t M a p p i n ;  
 	 	 m a p p i n D e f . M a p p i n N a m e   =   m a p p i n N a m e ;  
 	 	 m a p p i n D e f . M a p p i n S t a t e   =   m a p p i n S t a t e ;  
 	 	 M a p p i n T o H i g h l i g h t . P u s h B a c k ( m a p p i n D e f ) ;  
 	 } 	  
  
 	 p u b l i c   f u n c t i o n   C l e a r M a p p i n T o H i g h l i g h t ( )  
 	 {  
 	 	 M a p p i n T o H i g h l i g h t . C l e a r ( ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C a s t S i g n A b o r t ( )  
 	 {  
 	 	 i f (   c u r r e n t l y C a s t S i g n   ! =   S T _ N o n e   & &   s i g n s [ c u r r e n t l y C a s t S i g n ] . e n t i t y )  
 	 	 {  
 	 	 	 s i g n s [ c u r r e n t l y C a s t S i g n ] . e n t i t y . O n S i g n A b o r t e d ( ) ;  
 	 	 }  
 	 	  
 	 	  
 	 }  
 	  
 	 e v e n t   O n B l o c k i n g S c e n e S t a r t e d (   s c e n e :   C S t o r y S c e n e   )  
 	 {  
 	 	 v a r   m e d   :   W 3 P l a y e r W i t c h e r S t a t e M e d i t a t i o n W a i t i n g ;  
 	 	 	 	  
 	 	  
 	 	 m e d   =   ( W 3 P l a y e r W i t c h e r S t a t e M e d i t a t i o n W a i t i n g ) G e t C u r r e n t S t a t e ( ) ;  
 	 	 i f ( m e d )  
 	 	 {  
 	 	 	 m e d . S t o p R e q u e s t e d ( t r u e ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 s u p e r . O n B l o c k i n g S c e n e S t a r t e d (   s c e n e   ) ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t H o r s e M a n a g e r ( )   :   W 3 H o r s e M a n a g e r  
 	 {  
 	 	 r e t u r n   ( W 3 H o r s e M a n a g e r ) E n t i t y H a n d l e G e t (   h o r s e M a n a g e r H a n d l e   ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   H o r s e E q u i p I t e m ( h o r s e s I t e m I d   :   S I t e m U n i q u e I d )   :   b o o l  
 	 {  
 	 	 v a r   m a n   :   W 3 H o r s e M a n a g e r ;  
 	 	  
 	 	 m a n   =   G e t H o r s e M a n a g e r ( ) ;  
 	 	 i f ( m a n )  
 	 	 	 r e t u r n   m a n . E q u i p I t e m ( h o r s e s I t e m I d )   ! =   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   H o r s e U n e q u i p I t e m ( s l o t   :   E E q u i p m e n t S l o t s )   :   b o o l  
 	 {  
 	 	 v a r   m a n   :   W 3 H o r s e M a n a g e r ;  
 	 	  
 	 	 m a n   =   G e t H o r s e M a n a g e r ( ) ;  
 	 	 i f ( m a n )  
 	 	 	 r e t u r n   m a n . U n e q u i p I t e m ( s l o t )   ! =   G e t I n v a l i d U n i q u e I d ( ) ;  
 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   H o r s e R e m o v e I t e m B y N a m e ( i t e m N a m e   :   n a m e ,   q u a n t i t y   :   i n t )  
 	 {  
 	 	 v a r   m a n   :   W 3 H o r s e M a n a g e r ;  
 	 	  
 	 	 m a n   =   G e t H o r s e M a n a g e r ( ) ;  
 	 	 i f ( m a n )  
 	 	 	 m a n . H o r s e R e m o v e I t e m B y N a m e ( i t e m N a m e ,   q u a n t i t y ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   H o r s e R e m o v e I t e m B y C a t e g o r y ( i t e m C a t e g o r y   :   n a m e ,   q u a n t i t y   :   i n t )  
 	 {  
 	 	 v a r   m a n   :   W 3 H o r s e M a n a g e r ;  
 	 	  
 	 	 m a n   =   G e t H o r s e M a n a g e r ( ) ;  
 	 	 i f ( m a n )  
 	 	 	 m a n . H o r s e R e m o v e I t e m B y C a t e g o r y ( i t e m C a t e g o r y ,   q u a n t i t y ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   H o r s e R e m o v e I t e m B y T a g ( i t e m T a g   :   n a m e ,   q u a n t i t y   :   i n t )  
 	 {  
 	 	 v a r   m a n   :   W 3 H o r s e M a n a g e r ;  
 	 	  
 	 	 m a n   =   G e t H o r s e M a n a g e r ( ) ;  
 	 	 i f ( m a n )  
 	 	 	 m a n . H o r s e R e m o v e I t e m B y T a g ( i t e m T a g ,   q u a n t i t y ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t A s s o c i a t e d I n v e n t o r y ( )   :   C I n v e n t o r y C o m p o n e n t  
 	 {  
 	 	 v a r   m a n   :   W 3 H o r s e M a n a g e r ;  
 	 	  
 	 	 m a n   =   G e t H o r s e M a n a g e r ( ) ;  
 	 	 i f ( m a n )  
 	 	 	 r e t u r n   m a n . G e t I n v e n t o r y C o m p o n e n t ( ) ;  
 	 	 	  
 	 	 r e t u r n   N U L L ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   T u t o r i a l M u t a g e n s U n e q u i p P l a y e r S k i l l s ( )   :   a r r a y < S T u t o r i a l S a v e d S k i l l >  
 	 {  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	  
 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 r e t u r n   p a m . T u t o r i a l M u t a g e n s U n e q u i p P l a y e r S k i l l s ( ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   T u t o r i a l M u t a g e n s E q u i p O n e G o o d S k i l l ( )  
 	 {  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	  
 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 p a m . T u t o r i a l M u t a g e n s E q u i p O n e G o o d S k i l l ( ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   T u t o r i a l M u t a g e n s E q u i p O n e G o o d O n e B a d S k i l l ( )  
 	 {  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	  
 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 i f ( p a m )  
 	 	 	 p a m . T u t o r i a l M u t a g e n s E q u i p O n e G o o d O n e B a d S k i l l ( ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   T u t o r i a l M u t a g e n s E q u i p T h r e e G o o d S k i l l s ( )  
 	 {  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	  
 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 i f ( p a m )  
 	 	 	 p a m . T u t o r i a l M u t a g e n s E q u i p T h r e e G o o d S k i l l s ( ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   T u t o r i a l M u t a g e n s C l e a n u p T e m p S k i l l s ( s a v e d E q u i p p e d S k i l l s   :   a r r a y < S T u t o r i a l S a v e d S k i l l > )  
 	 {  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	  
 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 r e t u r n   p a m . T u t o r i a l M u t a g e n s C l e a n u p T e m p S k i l l s ( s a v e d E q u i p p e d S k i l l s ) ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   C a l c u l a t e d A r m o r S t a m i n a R e g e n B o n u s ( )   :   f l o a t  
 	 {  
 	 	 v a r   a r m o r E q ,   g l o v e s E q ,   p a n t s E q ,   b o o t s E q   :   b o o l ;  
 	 	 v a r   t e m p I t e m   :   S I t e m U n i q u e I d ;  
 	 	 v a r   s t a m i n a R e g e n V a l   :   f l o a t ;  
 	 	 v a r   a r m o r R e g e n V a l   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	  
 	 	 i f (   H a s A b i l i t y (   ' G l y p h w o r d   2   _ S t a t s ' ,   t r u e   )   )  
 	 	 {  
 	 	 	 a r m o r E q   =   i n v . G e t I t e m E q u i p p e d O n S l o t (   E E S _ A r m o r ,   t e m p I t e m   ) ;  
 	 	 	 g l o v e s E q   =   i n v . G e t I t e m E q u i p p e d O n S l o t (   E E S _ G l o v e s ,   t e m p I t e m   ) ;  
 	 	 	 p a n t s E q   =   i n v . G e t I t e m E q u i p p e d O n S l o t (   E E S _ P a n t s ,   t e m p I t e m   ) ;  
 	 	 	 b o o t s E q   =   i n v . G e t I t e m E q u i p p e d O n S l o t (   E E S _ B o o t s ,   t e m p I t e m   ) ;  
 	 	 	  
 	 	 	 i f   (   a r m o r E q   )  
 	 	 	 	 s t a m i n a R e g e n V a l   + =   0 . 1 ;  
 	 	 	 i f   (   g l o v e s E q   )  
 	 	 	 	 s t a m i n a R e g e n V a l   + =   0 . 0 2 ;  
 	 	 	 i f   (   p a n t s E q   )  
 	 	 	 	 s t a m i n a R e g e n V a l   + =   0 . 1 ;  
 	 	 	 i f   (   b o o t s E q   )  
 	 	 	 	 s t a m i n a R e g e n V a l   + =   0 . 0 3 ;  
 	 	 	  
 	 	 }  
 	 	 e l s e   i f (   H a s A b i l i t y (   ' G l y p h w o r d   3   _ S t a t s ' ,   t r u e   )   )  
 	 	 {  
 	 	 	 s t a m i n a R e g e n V a l   =   0 ;  
 	 	 }  
 	 	 e l s e   i f (   H a s A b i l i t y (   ' G l y p h w o r d   4   _ S t a t s ' ,   t r u e   )   )  
 	 	 {  
 	 	 	 a r m o r E q   =   i n v . G e t I t e m E q u i p p e d O n S l o t (   E E S _ A r m o r ,   t e m p I t e m   ) ;  
 	 	 	 g l o v e s E q   =   i n v . G e t I t e m E q u i p p e d O n S l o t (   E E S _ G l o v e s ,   t e m p I t e m   ) ;  
 	 	 	 p a n t s E q   =   i n v . G e t I t e m E q u i p p e d O n S l o t (   E E S _ P a n t s ,   t e m p I t e m   ) ;  
 	 	 	 b o o t s E q   =   i n v . G e t I t e m E q u i p p e d O n S l o t (   E E S _ B o o t s ,   t e m p I t e m   ) ;  
 	 	 	  
 	 	 	 i f   (   a r m o r E q   )  
 	 	 	 	 s t a m i n a R e g e n V a l   - =   0 . 1 ;  
 	 	 	 i f   (   g l o v e s E q   )  
 	 	 	 	 s t a m i n a R e g e n V a l   - =   0 . 0 2 ;  
 	 	 	 i f   (   p a n t s E q   )  
 	 	 	 	 s t a m i n a R e g e n V a l   - =   0 . 1 ;  
 	 	 	 i f   (   b o o t s E q   )  
 	 	 	 	 s t a m i n a R e g e n V a l   - =   0 . 0 3 ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 a r m o r R e g e n V a l   =   G e t A t t r i b u t e V a l u e ( ' s t a m i n a R e g e n _ a r m o r _ m o d ' ) ;  
 	 	 	 s t a m i n a R e g e n V a l   =   a r m o r R e g e n V a l . v a l u e M u l t i p l i c a t i v e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   s t a m i n a R e g e n V a l ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t O f f e n s e S t a t s L i s t (   o p t i o n a l   h a c k M o d e   :   i n t   )   :   S P l a y e r O f f e n s e S t a t s  
 	 {  
 	 	 v a r   p l a y e r O f f e n s e S t a t s : S P l a y e r O f f e n s e S t a t s ;  
 	 	 v a r   s t e e l D m g ,   s i l v e r D m g ,   e l e m e n t a l S t e e l ,   e l e m e n t a l S i l v e r   :   f l o a t ;  
 	 	 v a r   s t e e l C r i t C h a n c e ,   s t e e l C r i t D m g   :   f l o a t ;  
 	 	 v a r   s i l v e r C r i t C h a n c e ,   s i l v e r C r i t D m g   :   f l o a t ;  
 	 	 v a r   a t t a c k P o w e r 	 :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   f a s t C r i t C h a n c e ,   f a s t C r i t D m g   :   f l o a t ;  
 	 	 v a r   s t r o n g C r i t C h a n c e ,   s t r o n g C r i t D m g   :   f l o a t ;  
 	 	 v a r   f a s t A P ,   s t r o n g A P ,   m i n ,   m a x   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   i t e m ,   c r o s s b o w   :   S I t e m U n i q u e I d ;  
 	 	 v a r   v a l u e   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   m u t a g e n   :   C B a s e G a m e p l a y E f f e c t ;  
 	 	 v a r   t h u n d e r   :   W 3 P o t i o n _ T h u n d e r b o l t ;  
 	 	  
 	 	 i f ( ! a b i l i t y M a n a g e r   | |   ! a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   p l a y e r O f f e n s e S t a t s ;  
 	 	  
 	 	 i f   ( C a n U s e S k i l l ( S _ S w o r d _ s 2 1 ) )  
 	 	 	 f a s t A P   + =   G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 2 1 ,   P o w e r S t a t E n u m T o N a m e ( C P S _ A t t a c k P o w e r ) ,   f a l s e ,   t r u e )   *   G e t S k i l l L e v e l ( S _ S w o r d _ s 2 1 ) ;    
 	 	 i f   ( C a n U s e S k i l l ( S _ P e r k _ 0 5 ) )  
 	 	 {  
 	 	 	 f a s t A P   + =   G e t A t t r i b u t e V a l u e ( ' a t t a c k _ p o w e r _ f a s t _ s t y l e ' ) ;  
 	 	 	 f a s t C r i t D m g   + =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t A t t r i b u t e V a l u e ( ' c r i t i c a l _ h i t _ c h a n c e _ f a s t _ s t y l e ' ) ) ;  
 	 	 	 s t r o n g C r i t D m g   + =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t A t t r i b u t e V a l u e ( ' c r i t i c a l _ h i t _ c h a n c e _ f a s t _ s t y l e ' ) ) ;  
 	 	 }  
 	 	 i f   ( C a n U s e S k i l l ( S _ S w o r d _ s 0 4 ) )  
 	 	 	 s t r o n g A P   + =   G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 0 4 ,   P o w e r S t a t E n u m T o N a m e ( C P S _ A t t a c k P o w e r ) ,   f a l s e ,   t r u e )   *   G e t S k i l l L e v e l ( S _ S w o r d _ s 0 4 ) ;  
 	 	 i f   ( C a n U s e S k i l l ( S _ P e r k _ 0 7 ) )  
 	 	 	 s t r o n g A P   + = 	 G e t A t t r i b u t e V a l u e ( ' a t t a c k _ p o w e r _ h e a v y _ s t y l e ' ) ;  
 	 	 	  
 	 	 i f   ( C a n U s e S k i l l ( S _ S w o r d _ s 1 7 ) )    
 	 	 {  
 	 	 	 f a s t C r i t C h a n c e   + =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 1 7 ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ C H A N C E ,   f a l s e ,   t r u e ) )   *   G e t S k i l l L e v e l ( S _ S w o r d _ s 1 7 ) ;  
 	 	 	 f a s t C r i t D m g   + =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 1 7 ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ D A M A G E _ B O N U S ,   f a l s e ,   t r u e ) )   *   G e t S k i l l L e v e l ( S _ S w o r d _ s 1 7 ) ;  
 	 	 }  
 	 	  
 	 	 i f   ( C a n U s e S k i l l ( S _ S w o r d _ s 0 8 ) )    
 	 	 {  
 	 	 	 s t r o n g C r i t C h a n c e   + =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 0 8 ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ C H A N C E ,   f a l s e ,   t r u e ) )   *   G e t S k i l l L e v e l ( S _ S w o r d _ s 0 8 ) ;  
 	 	 	 s t r o n g C r i t D m g   + =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t S k i l l A t t r i b u t e V a l u e ( S _ S w o r d _ s 0 8 ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ D A M A G E _ B O N U S ,   f a l s e ,   t r u e ) )   *   G e t S k i l l L e v e l ( S _ S w o r d _ s 0 8 ) ;  
 	 	 }  
 	 	  
 	 	 i f   (   H a s B u f f ( E E T _ M u t a g e n 0 5 )   & &   ( G e t S t a t ( B C S _ V i t a l i t y )   = =   G e t S t a t M a x ( B C S _ V i t a l i t y ) )   )  
 	 	 {  
 	 	 	 a t t a c k P o w e r   + =   G e t A t t r i b u t e V a l u e ( ' d a m a g e I n c r e a s e ' ) ;  
 	 	 }  
 	 	  
 	 	 s t e e l C r i t C h a n c e   + =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t A t t r i b u t e V a l u e ( t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ C H A N C E ) ) ;  
 	 	 s i l v e r C r i t C h a n c e   + =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t A t t r i b u t e V a l u e ( t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ C H A N C E ) ) ;  
 	 	 s t e e l C r i t D m g   + =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t A t t r i b u t e V a l u e ( t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ D A M A G E _ B O N U S ) ) ;  
 	 	 s i l v e r C r i t D m g   + =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t A t t r i b u t e V a l u e ( t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ D A M A G E _ B O N U S ) ) ;  
 	 	 a t t a c k P o w e r   + =   G e t P o w e r S t a t V a l u e ( C P S _ A t t a c k P o w e r ) ;  
 	 	  
 	 	 i f   ( G e t I t e m E q u i p p e d O n S l o t ( E E S _ S t e e l S w o r d ,   i t e m ) )  
 	 	 {  
 	 	 	 s t e e l D m g   =   G e t T o t a l W e a p o n D a m a g e ( i t e m ,   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ S L A S H I N G ,   G e t I n v a l i d U n i q u e I d ( ) ) ;  
 	 	 	 s t e e l D m g   + =   G e t T o t a l W e a p o n D a m a g e ( i t e m ,   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ P I E R C I N G ,   G e t I n v a l i d U n i q u e I d ( ) ) ;  
 	 	 	 s t e e l D m g   + =   G e t T o t a l W e a p o n D a m a g e ( i t e m ,   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ B L U D G E O N I N G ,   G e t I n v a l i d U n i q u e I d ( ) ) ;  
 	 	 	 e l e m e n t a l S t e e l   =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ F I R E ) ) ;  
 	 	 	 e l e m e n t a l S t e e l   + =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ F R O S T ) ) ;    
 	 	 	 i f   (   G e t I n v e n t o r y ( ) . I s I t e m H e l d ( i t e m )   )  
 	 	 	 {  
 	 	 	 	 s t e e l C r i t C h a n c e   - =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ C H A N C E ) ) ;  
 	 	 	 	 s i l v e r C r i t C h a n c e   - =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ C H A N C E ) ) ;  
 	 	 	 	 s t e e l C r i t D m g   - =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ D A M A G E _ B O N U S ) ) ;  
 	 	 	 	 s i l v e r C r i t D m g   - =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ D A M A G E _ B O N U S ) ) ;  
 	 	 	 }  
 	 	 	 s t e e l C r i t C h a n c e   + =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ C H A N C E ) ) ;  
 	 	 	 s t e e l C r i t D m g   + =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ D A M A G E _ B O N U S ) ) ;  
 	 	 	  
 	 	 	 t h u n d e r   =   ( W 3 P o t i o n _ T h u n d e r b o l t ) G e t B u f f ( E E T _ T h u n d e r b o l t ) ;  
 	 	 	 i f ( t h u n d e r   & &   t h u n d e r . G e t B u f f L e v e l ( )   = =   3   & &   G e t C u r W e a t h e r ( )   = =   E W E _ S t o r m )  
 	 	 	 {  
 	 	 	 	 s t e e l C r i t C h a n c e   + =   1 . 0 f ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 s t e e l D m g   + =   0 ;  
 	 	 	 s t e e l C r i t C h a n c e   + =   0 ;  
 	 	 	 s t e e l C r i t D m g   + = 0 ;  
 	 	 }  
 	 	  
 	 	 i f   ( G e t I t e m E q u i p p e d O n S l o t ( E E S _ S i l v e r S w o r d ,   i t e m ) )  
 	 	 {  
 	 	 	 s i l v e r D m g   =   G e t T o t a l W e a p o n D a m a g e ( i t e m ,   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ S I L V E R ,   G e t I n v a l i d U n i q u e I d ( ) ) ;  
 	 	 	 e l e m e n t a l S i l v e r   =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ F I R E ) ) ;  
 	 	 	 e l e m e n t a l S i l v e r   + =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ F R O S T ) ) ;  
 	 	 	 i f   (   G e t I n v e n t o r y ( ) . I s I t e m H e l d ( i t e m )   )  
 	 	 	 {  
 	 	 	 	 s t e e l C r i t C h a n c e   - =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ C H A N C E ) ) ;  
 	 	 	 	 s i l v e r C r i t C h a n c e   - =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ C H A N C E ) ) ;  
 	 	 	 	 s t e e l C r i t D m g   - =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ D A M A G E _ B O N U S ) ) ;  
 	 	 	 	 s i l v e r C r i t D m g   - =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ D A M A G E _ B O N U S ) ) ;  
 	 	 	 }  
 	 	 	 s i l v e r C r i t C h a n c e   + =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ C H A N C E ) ) ;  
 	 	 	 s i l v e r C r i t D m g   + =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . C R I T I C A L _ H I T _ D A M A G E _ B O N U S ) ) ;  
 	 	 	  
 	 	 	 t h u n d e r   =   ( W 3 P o t i o n _ T h u n d e r b o l t ) G e t B u f f ( E E T _ T h u n d e r b o l t ) ;  
 	 	 	 i f ( t h u n d e r   & &   t h u n d e r . G e t B u f f L e v e l ( )   = =   3   & &   G e t C u r W e a t h e r ( )   = =   E W E _ S t o r m )  
 	 	 	 {  
 	 	 	 	 s i l v e r C r i t C h a n c e   + =   1 . 0 f ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 s i l v e r D m g   + =   0 ;  
 	 	 	 s i l v e r C r i t C h a n c e   + =   0 ;  
 	 	 	 s i l v e r C r i t D m g   + = 0 ;  
 	 	 }  
 	 	  
 	 	 i f   (   H a s A b i l i t y ( ' R u n e w o r d   4   _ S t a t s ' ,   t r u e )   )  
 	 	 {  
 	 	 	 s t e e l D m g   + =   s t e e l D m g   *   ( a b i l i t y M a n a g e r . G e t O v e r h e a l B o n u s ( )   /   G e t S t a t M a x ( B C S _ V i t a l i t y ) ) ;  
 	 	 	 s i l v e r D m g   + =   s i l v e r D m g   *   ( a b i l i t y M a n a g e r . G e t O v e r h e a l B o n u s ( )   /   G e t S t a t M a x ( B C S _ V i t a l i t y ) ) ;  
 	 	 }  
 	 	  
 	 	 f a s t A P   + =   a t t a c k P o w e r ;  
 	 	 s t r o n g A P   + =   a t t a c k P o w e r ;  
 	 	  
 	 	 p l a y e r O f f e n s e S t a t s . s t e e l F a s t C r i t C h a n c e   =   ( s t e e l C r i t C h a n c e   +   f a s t C r i t C h a n c e )   *   1 0 0 ;  
 	 	 p l a y e r O f f e n s e S t a t s . s t e e l F a s t C r i t D m g   =   s t e e l C r i t D m g   +   f a s t C r i t D m g ;  
 	 	 i f   (   s t e e l D m g   ! =   0   )  
 	 	 {  
 	 	 	 p l a y e r O f f e n s e S t a t s . s t e e l F a s t D m g   =   ( s t e e l D m g   +   f a s t A P . v a l u e B a s e )   *   f a s t A P . v a l u e M u l t i p l i c a t i v e   +   f a s t A P . v a l u e A d d i t i v e   +   e l e m e n t a l S t e e l ;  
 	 	 	 p l a y e r O f f e n s e S t a t s . s t e e l F a s t C r i t D m g   =   ( s t e e l D m g   +   f a s t A P . v a l u e B a s e )   *   ( f a s t A P . v a l u e M u l t i p l i c a t i v e   +   p l a y e r O f f e n s e S t a t s . s t e e l F a s t C r i t D m g )   +   f a s t A P . v a l u e A d d i t i v e   +   e l e m e n t a l S t e e l ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 p l a y e r O f f e n s e S t a t s . s t e e l F a s t D m g   =   0 ;  
 	 	 	 p l a y e r O f f e n s e S t a t s . s t e e l F a s t C r i t D m g   =   0 ;  
 	 	 }  
 	 	 p l a y e r O f f e n s e S t a t s . s t e e l F a s t D P S   =   ( p l a y e r O f f e n s e S t a t s . s t e e l F a s t D m g   *   ( 1 0 0   -   p l a y e r O f f e n s e S t a t s . s t e e l F a s t C r i t C h a n c e )   +   p l a y e r O f f e n s e S t a t s . s t e e l F a s t C r i t D m g   *   p l a y e r O f f e n s e S t a t s . s t e e l F a s t C r i t C h a n c e )   /   1 0 0 ;  
 	 	 p l a y e r O f f e n s e S t a t s . s t e e l F a s t D P S   =   p l a y e r O f f e n s e S t a t s . s t e e l F a s t D P S   /   0 . 6 ;  
 	 	  
 	 	  
 	 	 p l a y e r O f f e n s e S t a t s . s t e e l S t r o n g C r i t C h a n c e   =   ( s t e e l C r i t C h a n c e   +   s t r o n g C r i t C h a n c e )   *   1 0 0 ;  
 	 	 p l a y e r O f f e n s e S t a t s . s t e e l S t r o n g C r i t D m g   =   s t e e l C r i t D m g   +   s t r o n g C r i t D m g ;  
 	 	 i f   (   s t e e l D m g   ! =   0   )  
 	 	 {  
 	 	 	 p l a y e r O f f e n s e S t a t s . s t e e l S t r o n g D m g   =   ( s t e e l D m g   +   s t r o n g A P . v a l u e B a s e )   *   s t r o n g A P . v a l u e M u l t i p l i c a t i v e   +   s t r o n g A P . v a l u e A d d i t i v e   +   e l e m e n t a l S t e e l ;  
 	 	 	 p l a y e r O f f e n s e S t a t s . s t e e l S t r o n g D m g   * =   1 . 8 3 3 f ;  
 	 	 	 p l a y e r O f f e n s e S t a t s . s t e e l S t r o n g C r i t D m g   =   ( s t e e l D m g   +   s t r o n g A P . v a l u e B a s e )   *   ( s t r o n g A P . v a l u e M u l t i p l i c a t i v e   +   p l a y e r O f f e n s e S t a t s . s t e e l S t r o n g C r i t D m g )   +   s t r o n g A P . v a l u e A d d i t i v e   +   e l e m e n t a l S t e e l ;  
 	 	 	 p l a y e r O f f e n s e S t a t s . s t e e l S t r o n g C r i t D m g   * =   1 . 8 3 3 f ; 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 p l a y e r O f f e n s e S t a t s . s t e e l S t r o n g D m g   =   0 ;  
 	 	 	 p l a y e r O f f e n s e S t a t s . s t e e l S t r o n g C r i t D m g   =   0 ;  
 	 	 }  
 	 	 p l a y e r O f f e n s e S t a t s . s t e e l S t r o n g D P S   =   ( p l a y e r O f f e n s e S t a t s . s t e e l S t r o n g D m g   *   ( 1 0 0   -   p l a y e r O f f e n s e S t a t s . s t e e l S t r o n g C r i t C h a n c e )   +   p l a y e r O f f e n s e S t a t s . s t e e l S t r o n g C r i t D m g   *   p l a y e r O f f e n s e S t a t s . s t e e l S t r o n g C r i t C h a n c e )   /   1 0 0 ;  
 	 	 p l a y e r O f f e n s e S t a t s . s t e e l S t r o n g D P S   =   p l a y e r O f f e n s e S t a t s . s t e e l S t r o n g D P S   /   1 . 1 ;  
 	 	  
 	  
 	 	  
 	 	 p l a y e r O f f e n s e S t a t s . s i l v e r F a s t C r i t C h a n c e   =   ( s i l v e r C r i t C h a n c e   +   f a s t C r i t C h a n c e )   *   1 0 0 ;  
 	 	 p l a y e r O f f e n s e S t a t s . s i l v e r F a s t C r i t D m g   =   s i l v e r C r i t D m g   +   f a s t C r i t D m g ;  
 	 	 i f   (   s i l v e r D m g   ! =   0   )  
 	 	 {  
 	 	 	 p l a y e r O f f e n s e S t a t s . s i l v e r F a s t D m g   =   ( s i l v e r D m g   +   f a s t A P . v a l u e B a s e )   *   f a s t A P . v a l u e M u l t i p l i c a t i v e   +   f a s t A P . v a l u e A d d i t i v e   +   e l e m e n t a l S i l v e r ;  
 	 	 	 p l a y e r O f f e n s e S t a t s . s i l v e r F a s t C r i t D m g   =   ( s i l v e r D m g   +   f a s t A P . v a l u e B a s e )   *   ( f a s t A P . v a l u e M u l t i p l i c a t i v e   +   p l a y e r O f f e n s e S t a t s . s i l v e r F a s t C r i t D m g )   +   f a s t A P . v a l u e A d d i t i v e   +   e l e m e n t a l S i l v e r ; 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 p l a y e r O f f e n s e S t a t s . s i l v e r F a s t D m g   =   0 ;  
 	 	 	 p l a y e r O f f e n s e S t a t s . s i l v e r F a s t C r i t D m g   =   0 ; 	  
 	 	 }  
 	 	 p l a y e r O f f e n s e S t a t s . s i l v e r F a s t D P S   =   ( p l a y e r O f f e n s e S t a t s . s i l v e r F a s t D m g   *   ( 1 0 0   -   p l a y e r O f f e n s e S t a t s . s i l v e r F a s t C r i t C h a n c e )   +   p l a y e r O f f e n s e S t a t s . s i l v e r F a s t C r i t D m g   *   p l a y e r O f f e n s e S t a t s . s i l v e r F a s t C r i t C h a n c e )   /   1 0 0 ;  
 	 	 p l a y e r O f f e n s e S t a t s . s i l v e r F a s t D P S   =   p l a y e r O f f e n s e S t a t s . s i l v e r F a s t D P S   /   0 . 6 ;  
 	 	  
 	 	  
 	 	 p l a y e r O f f e n s e S t a t s . s i l v e r S t r o n g C r i t C h a n c e   =   ( s i l v e r C r i t C h a n c e   +   s t r o n g C r i t C h a n c e )   *   1 0 0 ;  
 	 	 p l a y e r O f f e n s e S t a t s . s i l v e r S t r o n g C r i t D m g   =   s i l v e r C r i t D m g   +   s t r o n g C r i t D m g ; 	 	  
 	 	 i f   (   s i l v e r D m g   ! =   0   )  
 	 	 {  
 	 	 	 p l a y e r O f f e n s e S t a t s . s i l v e r S t r o n g D m g   =   ( s i l v e r D m g   +   s t r o n g A P . v a l u e B a s e )   *   s t r o n g A P . v a l u e M u l t i p l i c a t i v e   +   s t r o n g A P . v a l u e A d d i t i v e   +   e l e m e n t a l S i l v e r ;  
 	 	 	 p l a y e r O f f e n s e S t a t s . s i l v e r S t r o n g D m g   * =   1 . 8 3 3 f ;  
 	 	 	 p l a y e r O f f e n s e S t a t s . s i l v e r S t r o n g C r i t D m g   =   ( s i l v e r D m g   +   s t r o n g A P . v a l u e B a s e )   *   ( s t r o n g A P . v a l u e M u l t i p l i c a t i v e   +   p l a y e r O f f e n s e S t a t s . s i l v e r S t r o n g C r i t D m g )   +   s t r o n g A P . v a l u e A d d i t i v e   +   e l e m e n t a l S i l v e r ;  
 	 	 	 p l a y e r O f f e n s e S t a t s . s i l v e r S t r o n g C r i t D m g   * =   1 . 8 3 3 f ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 p l a y e r O f f e n s e S t a t s . s i l v e r S t r o n g D m g   =   0 ;  
 	 	 	 p l a y e r O f f e n s e S t a t s . s i l v e r S t r o n g C r i t D m g   =   0 ;  
 	 	 }  
 	 	 p l a y e r O f f e n s e S t a t s . s i l v e r S t r o n g D P S   =   ( p l a y e r O f f e n s e S t a t s . s i l v e r S t r o n g D m g   *   ( 1 0 0   -   p l a y e r O f f e n s e S t a t s . s i l v e r S t r o n g C r i t C h a n c e )   +   p l a y e r O f f e n s e S t a t s . s i l v e r S t r o n g C r i t D m g   *   p l a y e r O f f e n s e S t a t s . s i l v e r S t r o n g C r i t C h a n c e )   /   1 0 0 ;  
 	 	 p l a y e r O f f e n s e S t a t s . s i l v e r S t r o n g D P S   =   p l a y e r O f f e n s e S t a t s . s i l v e r S t r o n g D P S   /   1 . 1 ;  
 	 	  
 	 	  
 	 	 p l a y e r O f f e n s e S t a t s . c r o s s b o w C r i t C h a n c e   =   G e t C r i t i c a l H i t C h a n c e (   f a l s e ,   f a l s e ,   N U L L ,   M C _ N o t S e t ,   t r u e   ) ;  
 	  
 	 	  
 	 	 p l a y e r O f f e n s e S t a t s . c r o s s b o w S t e e l D m g T y p e   =   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ P I E R C I N G ;  
 	 	 i f   ( G e t I t e m E q u i p p e d O n S l o t ( E E S _ B o l t ,   i t e m ) )  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	 s t e e l D m g   =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ F I R E ) ) ;  
 	 	 	 i f ( s t e e l D m g   >   0 )  
 	 	 	 {  
 	 	 	 	 p l a y e r O f f e n s e S t a t s . c r o s s b o w S t e e l D m g   =   s t e e l D m g ;  
 	 	 	 	  
 	 	 	 	 p l a y e r O f f e n s e S t a t s . c r o s s b o w S t e e l D m g T y p e   =   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ F I R E ;  
 	 	 	 	 p l a y e r O f f e n s e S t a t s . c r o s s b o w S i l v e r D m g   =   s t e e l D m g ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 p l a y e r O f f e n s e S t a t s . c r o s s b o w S i l v e r D m g   =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ S I L V E R ) ) ;  
 	 	 	 	  
 	 	 	 	 s t e e l D m g   =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ P I E R C I N G ) ) ;  
 	 	 	 	 i f ( s t e e l D m g   >   0 )  
 	 	 	 	 {  
 	 	 	 	 	 p l a y e r O f f e n s e S t a t s . c r o s s b o w S t e e l D m g   =   s t e e l D m g ;  
 	 	 	 	 	 p l a y e r O f f e n s e S t a t s . c r o s s b o w S t e e l D m g T y p e   =   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ P I E R C I N G ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 p l a y e r O f f e n s e S t a t s . c r o s s b o w S t e e l D m g   =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ B L U D G E O N I N G ) ) ;  
 	 	 	 	 	 p l a y e r O f f e n s e S t a t s . c r o s s b o w S t e e l D m g T y p e   =   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ B L U D G E O N I N G ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f   ( G e t I t e m E q u i p p e d O n S l o t ( E E S _ R a n g e d W e a p o n ,   i t e m ) )  
 	 	 {  
 	 	 	 a t t a c k P o w e r   + =   G e t I n v e n t o r y ( ) . G e t I t e m A t t r i b u t e V a l u e ( i t e m ,   P o w e r S t a t E n u m T o N a m e ( C P S _ A t t a c k P o w e r ) ) ;  
 	 	 	 i f ( C a n U s e S k i l l ( S _ P e r k _ 0 2 ) )  
 	 	 	 { 	 	 	 	  
 	 	 	 	 a t t a c k P o w e r   + =   G e t S k i l l A t t r i b u t e V a l u e ( S _ P e r k _ 0 2 ,   P o w e r S t a t E n u m T o N a m e ( C P S _ A t t a c k P o w e r ) ,   f a l s e ,   t r u e ) ;  
 	 	 	 }  
  
 	 	 	  
 	 	 	 i f (   h a c k M o d e   ! =   1   & &   (   I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 9   )   | |   h a c k M o d e   = =   2   )   )  
 	 	 	 {  
 	 	 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e (   ' M u t a t i o n 9 ' ,   ' d a m a g e ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 p l a y e r O f f e n s e S t a t s . c r o s s b o w S t e e l D m g   + =   m i n . v a l u e A d d i t i v e ;  
 	 	 	 	 p l a y e r O f f e n s e S t a t s . c r o s s b o w S i l v e r D m g   + =   m i n . v a l u e A d d i t i v e ;  
 	 	 	 } 	 	  
 	 	 	  
 	 	 	 p l a y e r O f f e n s e S t a t s . c r o s s b o w S t e e l D m g   =   ( p l a y e r O f f e n s e S t a t s . c r o s s b o w S t e e l D m g   +   a t t a c k P o w e r . v a l u e B a s e )   *   a t t a c k P o w e r . v a l u e M u l t i p l i c a t i v e   +   a t t a c k P o w e r . v a l u e A d d i t i v e ;  
 	 	 	 p l a y e r O f f e n s e S t a t s . c r o s s b o w S i l v e r D m g   =   ( p l a y e r O f f e n s e S t a t s . c r o s s b o w S i l v e r D m g   +   a t t a c k P o w e r . v a l u e B a s e )   *   a t t a c k P o w e r . v a l u e M u l t i p l i c a t i v e   +   a t t a c k P o w e r . v a l u e A d d i t i v e ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 p l a y e r O f f e n s e S t a t s . c r o s s b o w S t e e l D m g   =   0 ;  
 	 	 	 p l a y e r O f f e n s e S t a t s . c r o s s b o w S i l v e r D m g   =   0 ;  
 	 	 	 p l a y e r O f f e n s e S t a t s . c r o s s b o w S t e e l D m g T y p e   =   t h e G a m e . p a r a m s . D A M A G E _ N A M E _ P I E R C I N G ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   p l a y e r O f f e n s e S t a t s ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t T o t a l W e a p o n D a m a g e ( w e a p o n I d   :   S I t e m U n i q u e I d ,   d a m a g e T y p e N a m e   :   n a m e ,   c r o s s b o w I d   :   S I t e m U n i q u e I d )   :   f l o a t  
 	 {  
 	 	 v a r   d a m a g e ,   d u r R a t i o ,   d u r M o d ,   i t e m M o d   :   f l o a t ;  
 	 	 v a r   r e p a i r O b j e c t B o n u s ,   m i n ,   m a x   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	  
 	 	 d u r M o d   =   0 ;  
 	 	 d a m a g e   =   s u p e r . G e t T o t a l W e a p o n D a m a g e ( w e a p o n I d ,   d a m a g e T y p e N a m e ,   c r o s s b o w I d ) ;  
 	 	  
 	 	  
 	 	 i f (   I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 9   )   & &   i n v . I s I t e m B o l t (   w e a p o n I d   )   & &   I s D a m a g e T y p e A n y P h y s i c a l T y p e (   d a m a g e T y p e N a m e   )   )  
 	 	 {  
 	 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e ( ' M u t a t i o n 9 ' ,   ' d a m a g e ' ,   m i n ,   m a x ) ;  
 	 	 	 d a m a g e   + =   m i n . v a l u e A d d i t i v e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( I s P h y s i c a l R e s i s t S t a t ( G e t R e s i s t F o r D a m a g e ( d a m a g e T y p e N a m e ,   f a l s e ) ) )  
 	 	 {  
 	 	 	 r e p a i r O b j e c t B o n u s   =   i n v . G e t I t e m A t t r i b u t e V a l u e ( w e a p o n I d ,   t h e G a m e . p a r a m s . R E P A I R _ O B J E C T _ B O N U S ) ;  
 	 	 	 d u r R a t i o   =   - 1 ;  
 	 	 	  
 	 	 	 i f ( i n v . I s I d V a l i d ( c r o s s b o w I d )   & &   i n v . H a s I t e m D u r a b i l i t y ( c r o s s b o w I d ) )  
 	 	 	 {  
 	 	 	 	 d u r R a t i o   =   i n v . G e t I t e m D u r a b i l i t y R a t i o ( c r o s s b o w I d ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( i n v . I s I d V a l i d ( w e a p o n I d )   & &   i n v . H a s I t e m D u r a b i l i t y ( w e a p o n I d ) )  
 	 	 	 {  
 	 	 	 	 d u r R a t i o   =   i n v . G e t I t e m D u r a b i l i t y R a t i o ( w e a p o n I d ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 i f ( d u r R a t i o   > =   0 )  
 	 	 	 	 d u r M o d   =   t h e G a m e . p a r a m s . G e t D u r a b i l i t y M u l t i p l i e r ( d u r R a t i o ,   t r u e ) ;  
 	 	 	 e l s e  
 	 	 	 	 d u r M o d   =   1 ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   d a m a g e T y p e N a m e   = =   ' S i l v e r D a m a g e '   & &   i n v . I t e m H a s T a g (   w e a p o n I d ,   ' A e r o n d i g h t '   )   )  
 	 	 {  
 	 	 	 i t e m M o d   =   i n v . G e t I t e m M o d i f i e r F l o a t (   w e a p o n I d ,   ' P e r m D a m a g e B o o s t '   ) ;  
 	 	 	 i f (   i t e m M o d   >   0 . f   )  
 	 	 	 {  
 	 	 	 	 d a m a g e   + =   i t e m M o d ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   d a m a g e   *   ( d u r M o d   +   r e p a i r O b j e c t B o n u s . v a l u e M u l t i p l i c a t i v e ) ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t S k i l l P a t h T y p e ( s k i l l   :   E S k i l l )   :   E S k i l l P a t h  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l P a t h T y p e ( s k i l l ) ;  
 	 	 	  
 	 	 r e t u r n   E S P _ N o t S e t ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S k i l l L e v e l ( s   :   E S k i l l )   :   i n t  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l L e v e l ( s ) ;  
 	 	 	  
 	 	 r e t u r n   - 1 ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S k i l l M a x L e v e l ( s   :   E S k i l l )   :   i n t  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t S k i l l M a x L e v e l ( s ) ;  
 	 	 	  
 	 	 r e t u r n   - 1 ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t B o u g h t S k i l l L e v e l ( s   :   E S k i l l )   :   i n t  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . G e t B o u g h t S k i l l L e v e l ( s ) ;  
 	 	 	  
 	 	 r e t u r n   - 1 ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t A x i i L e v e l ( )   :   i n t  
 	 {  
 	 	 v a r   l e v e l   :   i n t ;  
 	 	  
 	 	 l e v e l   =   1 ;  
 	 	  
 	 	 i f ( C a n U s e S k i l l ( S _ M a g i c _ s 1 7 ) )   l e v e l   + =   G e t S k i l l L e v e l ( S _ M a g i c _ s 1 7 ) ;  
 	 	 	  
 	 	 r e t u r n   C l a m p ( l e v e l ,   1 ,   4 ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s I n F r e n z y ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   i s I n F r e n z y ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   H a s R e c e n t l y C o u n t e r e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   h a s R e c e n t l y C o u n t e r e d ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t R e c e n t l y C o u n t e r e d ( c o u n t e r   :   b o o l )  
 	 {  
 	 	 h a s R e c e n t l y C o u n t e r e d   =   c o u n t e r ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   C h e c k B l o c k e d S k i l l s ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 v a r   n e x t C a l l T i m e   :   f l o a t ;  
 	 	  
 	 	 n e x t C a l l T i m e   =   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . C h e c k B l o c k e d S k i l l s ( d t ) ;  
 	 	 i f ( n e x t C a l l T i m e   ! =   - 1 )  
 	 	 	 A d d T i m e r ( ' C h e c k B l o c k e d S k i l l s ' ,   n e x t C a l l T i m e ,   ,   ,   ,   t r u e ) ;  
 	 }  
 	 	  
 	  
 	 p u b l i c   f u n c t i o n   R e m o v e T e m p o r a r y S k i l l s ( )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	  
 	 	  
 	 	 i f   (   I s C a s t i n g S i g n ( )   )  
 	 	 {  
 	 	 	 A d d T i m e r (   ' D e l a y e d R e m o v e T e m p o r a r y S k i l l s ' ,   0 . 1 , , , ,   t r u e   ) ;  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 A d d T i m e r (   ' S u p e r c h a r g e d S i g n C l e a n u p ' ,   0 . 1 , , , ,   t r u e   ) ;  
 	 	  
 	  
 	 	 i f ( t e m p L e a r n e d S i g n S k i l l s . S i z e ( )   >   0 )  
 	 	 {  
 	 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 	 f o r ( i = 0 ;   i < t e m p L e a r n e d S i g n S k i l l s . S i z e ( ) ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 p a m . R e m o v e T e m p o r a r y S k i l l ( t e m p L e a r n e d S i g n S k i l l s [ i ] ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 t e m p L e a r n e d S i g n S k i l l s . C l e a r ( ) ; 	 	 	 	 	 	  
 	 	 }  
 	 	 R e m o v e A b i l i t y A l l ( S k i l l E n u m T o N a m e ( S _ S w o r d _ s 1 9 ) ) ;  
 	 }  
 	  
 	  
 	  
 	 p u b l i c   t i m e r   f u n c t i o n   S u p e r c h a r g e d S i g n C l e a n u p ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 s u p e r c h a r g e d S i g n   =   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   t i m e r   f u n c t i o n   D e l a y e d R e m o v e T e m p o r a r y S k i l l s ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	  
 	 	 i f   (   I s C a s t i n g S i g n ( )   )  
 	 	 {  
 	 	 	 A d d T i m e r (   ' D e l a y e d R e m o v e T e m p o r a r y S k i l l s ' ,   0 . 1 , , , ,   t r u e   ) ;  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 A d d T i m e r (   ' S u p e r c h a r g e d S i g n C l e a n u p ' ,   0 . 1 , , , ,   t r u e   ) ;  
 	 	  
 	 	 i f ( t e m p L e a r n e d S i g n S k i l l s . S i z e ( )   >   0 )  
 	 	 {  
 	 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 	 f o r ( i = 0 ;   i < t e m p L e a r n e d S i g n S k i l l s . S i z e ( ) ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 p a m . R e m o v e T e m p o r a r y S k i l l ( t e m p L e a r n e d S i g n S k i l l s [ i ] ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 t e m p L e a r n e d S i g n S k i l l s . C l e a r ( ) ;  
 	 	 }  
 	 	 R e m o v e A b i l i t y A l l ( S k i l l E n u m T o N a m e ( S _ S w o r d _ s 1 9 ) ) ;  
 	 }  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   R e m o v e T e m p o r a r y S k i l l ( s k i l l   :   S S i m p l e S k i l l )   :   b o o l  
 	 {  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	  
 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 i f ( p a m   & &   p a m . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   p a m . R e m o v e T e m p o r a r y S k i l l ( s k i l l ) ;  
 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	  
 	 p r i v a t e   v a r   s u p e r c h a r g e d S i g n   :   b o o l ;  
 	 p u b l i c   f u n c t i o n   I s S u p e r c h a r g e d S i g n ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   s u p e r c h a r g e d S i g n ;  
 	 }  
 	  
 	  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   A d d T e m p o r a r y S k i l l s ( )  
 	 {  
 	 	 i f ( C a n U s e S k i l l ( S _ S w o r d _ s 1 9 )   & &   G e t S t a t ( B C S _ F o c u s )   > =   3 )  
 	 	 {  
 	 	 	 R e m o v e T e m p o r a r y S k i l l s ( ) ;    
 	 	 	 t e m p L e a r n e d S i g n S k i l l s   =   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . A d d T e m p N o n A l c h e m y S k i l l s ( ) ; 	 	 	 	 	 	  
 	 	 	 D r a i n F o c u s ( G e t S t a t ( B C S _ F o c u s ) ) ;  
 	 	 	 i f   (   ! t h i s . H a s A b i l i t y (   S k i l l E n u m T o N a m e ( S _ S w o r d _ s 1 9 )   )   )    
 	 	 	 	 A d d A b i l i t y M u l t i p l e ( S k i l l E n u m T o N a m e ( S _ S w o r d _ s 1 9 ) ,   G e t S k i l l L e v e l ( S _ S w o r d _ s 1 9 ) ) ;  
 	 	 	  
 	 	 	 s u p e r c h a r g e d S i g n   =   t r u e ;  
 	 	 	  
 	 	 }  
 	 }  
  
 	  
 	  
 	 p u b l i c   f u n c t i o n   H a s A l t e r n a t e Q u e n ( )   :   b o o l  
 	 {  
 	 	 v a r   q u e n E n t i t y   :   W 3 Q u e n E n t i t y ;  
 	 	  
 	 	 q u e n E n t i t y   =   ( W 3 Q u e n E n t i t y ) G e t C u r r e n t S i g n E n t i t y ( ) ;  
 	 	 i f ( q u e n E n t i t y )  
 	 	 {  
 	 	 	 r e t u r n   q u e n E n t i t y . I s A l t e r n a t e C a s t ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   A d d P o i n t s ( t y p e   :   E S p e n d a b l e P o i n t T y p e ,   a m o u n t   :   i n t ,   s h o w   :   b o o l )  
 	 {  
 	 	 l e v e l M a n a g e r . A d d P o i n t s ( t y p e ,   a m o u n t ,   s h o w ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t L e v e l ( )   :   i n t 	 	 	 	 	 	 	 	 	 	 	 { r e t u r n   l e v e l M a n a g e r . G e t L e v e l ( ) ; }  
 	 p u b l i c   f u n c t i o n   G e t M a x L e v e l ( )   :   i n t 	 	 	 	 	 	 	 	 	 	 	 { r e t u r n   l e v e l M a n a g e r . G e t M a x L e v e l ( ) ; }  
 	 p u b l i c   f u n c t i o n   G e t T o t a l E x p F o r N e x t L e v e l ( )   :   i n t 	 	 	 	 	 	 	 	 { r e t u r n   l e v e l M a n a g e r . G e t T o t a l E x p F o r N e x t L e v e l ( ) ; } 	  
 	 p u b l i c   f u n c t i o n   G e t P o i n t s T o t a l ( t y p e   :   E S p e n d a b l e P o i n t T y p e )   :   i n t   	 	 	 { r e t u r n   l e v e l M a n a g e r . G e t P o i n t s T o t a l ( t y p e ) ; }  
 	 p u b l i c   f u n c t i o n   I s A u t o L e v e l i n g ( )   :   b o o l 	 	 	 	 	 	 	 	 	 	 { r e t u r n   a u t o L e v e l ; }  
 	 p u b l i c   f u n c t i o n   S e t A u t o L e v e l i n g (   b   :   b o o l   ) 	 	 	 	 	 	 	 	 	 { a u t o L e v e l   =   b ; }  
 	  
 	 p u b l i c   f u n c t i o n   G e t M i s s i n g E x p F o r N e x t L e v e l ( )   :   i n t  
 	 {  
 	 	 r e t u r n   M a x ( 0 ,   G e t T o t a l E x p F o r N e x t L e v e l ( )   -   G e t P o i n t s T o t a l ( E E x p e r i e n c e P o i n t ) ) ;  
 	 }  
 	  
 	  
 	  
 	  
 	 p r i v a t e   s a v e d   v a r   r u n e w o r d I n f u s i o n T y p e   :   E S i g n T y p e ;  
 	 d e f a u l t   r u n e w o r d I n f u s i o n T y p e   =   S T _ N o n e ;  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t R u n e w o r d I n f u s i o n T y p e ( )   :   E S i g n T y p e  
 	 {  
 	 	 r e t u r n   r u n e w o r d I n f u s i o n T y p e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   Q u e n I m p u l s e (   i s A l t e r n a t e   :   b o o l ,   s i g n E n t i t y   :   W 3 Q u e n E n t i t y ,   s o u r c e   :   s t r i n g ,   o p t i o n a l   f o r c e S k i l l L e v e l   :   i n t   )  
 	 {  
 	 	 v a r   l e v e l ,   i ,   j   :   i n t ;  
 	 	 v a r   a t t s ,   d a m a g e s   :   a r r a y < n a m e > ;  
 	 	 v a r   e n t s   :   a r r a y < C G a m e p l a y E n t i t y > ;  
 	 	 v a r   a c t i o n   :   W 3 D a m a g e A c t i o n ;  
 	 	 v a r   d m   :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ;  
 	 	 v a r   s k i l l A b i l i t y N a m e   :   n a m e ;  
 	 	 v a r   d m g   :   f l o a t ;  
 	 	 v a r   m i n ,   m a x   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   p o s   :   V e c t o r ;  
 	 	  
 	 	 i f (   f o r c e S k i l l L e v e l   >   0   )  
 	 	 {  
 	 	 	 l e v e l   =   f o r c e S k i l l L e v e l ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 l e v e l   =   G e t S k i l l L e v e l ( S _ M a g i c _ s 1 3 ) ;  
 	 	 }  
 	 	  
 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	 s k i l l A b i l i t y N a m e   =   G e t S k i l l A b i l i t y N a m e ( S _ M a g i c _ s 1 3 ) ;  
 	 	  
 	 	 i f ( l e v e l   > =   2 )  
 	 	 {  
 	 	 	  
 	 	 	 d m . G e t A b i l i t y A t t r i b u t e s ( s k i l l A b i l i t y N a m e ,   a t t s ) ;  
 	 	 	 f o r ( i = 0 ;   i < a t t s . S i z e ( ) ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 i f ( I s D a m a g e T y p e N a m e V a l i d ( a t t s [ i ] ) )  
 	 	 	 	 {  
 	 	 	 	 	 d a m a g e s . P u s h B a c k ( a t t s [ i ] ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 p o s   =   s i g n E n t i t y . G e t W o r l d P o s i t i o n ( ) ;  
 	 	 F i n d G a m e p l a y E n t i t i e s I n S p h e r e ( e n t s ,   p o s ,   3 ,   1 0 0 0 ,   ' ' ,   F L A G _ O n l y A l i v e A c t o r s   +   F L A G _ E x c l u d e T a r g e t   +   F L A G _ A t t i t u d e _ H o s t i l e   +   F L A G _ A t t i t u d e _ N e u t r a l   +   F L A G _ T e s t L i n e O f S i g h t ,   t h i s ) ;  
 	 	  
 	 	  
 	 	 f o r ( i = 0 ;   i < e n t s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 a c t i o n   =   n e w   W 3 D a m a g e A c t i o n   i n   t h e G a m e ;  
 	 	 	 a c t i o n . I n i t i a l i z e ( t h i s ,   e n t s [ i ] ,   s i g n E n t i t y ,   s o u r c e ,   E H R T _ H e a v y ,   C P S _ S p e l l P o w e r ,   f a l s e ,   f a l s e ,   t r u e ,   f a l s e ) ;  
 	 	 	 a c t i o n . S e t S i g n S k i l l ( S _ M a g i c _ s 1 3 ) ;  
 	 	 	 a c t i o n . S e t C a n n o t R e t u r n D a m a g e ( t r u e ) ;  
 	 	 	 a c t i o n . S e t P r o c e s s B u f f s I f N o D a m a g e ( t r u e ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f ( ! i s A l t e r n a t e   & &   l e v e l   > =   2 )  
 	 	 	 {  
 	 	 	 	 a c t i o n . S e t H i t E f f e c t ( ' h i t _ e l e c t r i c _ q u e n ' ) ;  
 	 	 	 	 a c t i o n . S e t H i t E f f e c t ( ' h i t _ e l e c t r i c _ q u e n ' ,   t r u e ) ;  
 	 	 	 	 a c t i o n . S e t H i t E f f e c t ( ' h i t _ e l e c t r i c _ q u e n ' ,   f a l s e ,   t r u e ) ;  
 	 	 	 	 a c t i o n . S e t H i t E f f e c t ( ' h i t _ e l e c t r i c _ q u e n ' ,   t r u e ,   t r u e ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f ( l e v e l   > =   1 )  
 	 	 	 {  
 	 	 	 	 a c t i o n . A d d E f f e c t I n f o ( E E T _ S t a g g e r ) ;  
 	 	 	 }  
 	 	 	 i f ( l e v e l   > =   2 )  
 	 	 	 {  
 	 	 	 	 f o r ( j = 0 ;   j < d a m a g e s . S i z e ( ) ;   j + = 1 )  
 	 	 	 	 {  
 	 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e ( s k i l l A b i l i t y N a m e ,   d a m a g e s [ j ] ,   m i n ,   m a x ) ;  
 	 	 	 	 	 d m g   =   C a l c u l a t e A t t r i b u t e V a l u e ( G e t A t t r i b u t e R a n d o m i z e d V a l u e ( m i n ,   m a x ) ) ;  
 	 	 	 	 	 i f (   I s S e t B o n u s A c t i v e (   E I S B _ B e a r _ 2   )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   G e t S e t B o n u s A b i l i t y (   E I S B _ B e a r _ 2   ) ,   ' q u e n _ d m g _ b o o s t ' ,   m i n ,   m a x   ) ;  
 	 	 	 	 	 	 d m g   * =   1   +   m i n . v a l u e M u l t i p l i c a t i v e ; 	 	 	 	 	 	  
 	 	 	 	 	 } 	 	 	 	 	  
 	 	 	 	 	 a c t i o n . A d d D a m a g e ( d a m a g e s [ j ] ,   d m g ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 i f ( l e v e l   = =   3 )  
 	 	 	 {  
 	 	 	 	 a c t i o n . A d d E f f e c t I n f o ( E E T _ K n o c k d o w n T y p e A p p l i c a t o r ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 t h e G a m e . d a m a g e M g r . P r o c e s s A c t i o n (   a c t i o n   ) ;  
 	 	 	 d e l e t e   a c t i o n ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( i s A l t e r n a t e )  
 	 	 {  
 	 	 	 s i g n E n t i t y . P l a y H i t E f f e c t ( ' q u e n _ i m p u l s e _ e x p l o d e ' ,   s i g n E n t i t y . G e t W o r l d R o t a t i o n ( ) ) ;  
 	 	 	 s i g n E n t i t y . E r a s e F i r s t T i m e S t a m p ( ) ;  
 	 	 	 	 	 	  
 	 	 	  
 	 	 	 i f ( l e v e l   > =   2 )  
 	 	 	 {  
 	 	 	 	 i f (   ! I s S e t B o n u s A c t i v e (   E I S B _ B e a r _ 2   )   )  
 	 	 	 	 {  
 	 	 	 	 	 s i g n E n t i t y . P l a y H i t E f f e c t ( ' q u e n _ e l e c t r i c _ e x p l o d e ' ,   s i g n E n t i t y . G e t W o r l d R o t a t i o n ( ) ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 s i g n E n t i t y . P l a y H i t E f f e c t ( ' q u e n _ e l e c t r i c _ e x p l o d e _ b e a r _ a b l 2 ' ,   s i g n E n t i t y . G e t W o r l d R o t a t i o n ( ) ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 s i g n E n t i t y . P l a y E f f e c t ( ' l a s t i n g _ s h i e l d _ i m p u l s e ' ) ;  
 	 	 } 	 	  
 	 }  
  
 	 p u b l i c   f u n c t i o n   O n S i g n C a s t P e r f o r m e d ( s i g n T y p e   :   E S i g n T y p e ,   i s A l t e r n a t e   :   b o o l )  
 	 {  
 	 	 v a r   i t e m s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   w e a p o n E n t   :   C E n t i t y ;  
 	 	 v a r   f x N a m e   :   n a m e ;  
 	 	 v a r   p o s   :   V e c t o r ;  
 	 	  
 	 	 s u p e r . O n S i g n C a s t P e r f o r m e d ( s i g n T y p e ,   i s A l t e r n a t e ) ;  
 	 	  
 	 	 i f ( H a s A b i l i t y ( ' R u n e w o r d   1   _ S t a t s ' ,   t r u e )   & &   G e t S t a t ( B C S _ F o c u s )   > =   1 . 0 f )  
 	 	 {  
 	 	 	 D r a i n F o c u s ( 1 . 0 f ) ;  
 	 	 	 r u n e w o r d I n f u s i o n T y p e   =   s i g n T y p e ;  
 	 	 	 i t e m s   =   i n v . G e t H e l d W e a p o n s ( ) ;  
 	 	 	 w e a p o n E n t   =   i n v . G e t I t e m E n t i t y U n s a f e ( i t e m s [ 0 ] ) ;  
 	 	 	  
 	 	 	  
 	 	 	 w e a p o n E n t . S t o p E f f e c t ( ' r u n e w o r d _ a a r d ' ) ;  
 	 	 	 w e a p o n E n t . S t o p E f f e c t ( ' r u n e w o r d _ a x i i ' ) ;  
 	 	 	 w e a p o n E n t . S t o p E f f e c t ( ' r u n e w o r d _ i g n i ' ) ;  
 	 	 	 w e a p o n E n t . S t o p E f f e c t ( ' r u n e w o r d _ q u e n ' ) ;  
 	 	 	 w e a p o n E n t . S t o p E f f e c t ( ' r u n e w o r d _ y r d e n ' ) ;  
 	 	 	 	 	  
 	 	 	  
 	 	 	 i f ( s i g n T y p e   = =   S T _ A a r d )  
 	 	 	 	 f x N a m e   =   ' r u n e w o r d _ a a r d ' ;  
 	 	 	 e l s e   i f ( s i g n T y p e   = =   S T _ A x i i )  
 	 	 	 	 f x N a m e   =   ' r u n e w o r d _ a x i i ' ;  
 	 	 	 e l s e   i f ( s i g n T y p e   = =   S T _ I g n i )  
 	 	 	 	 f x N a m e   =   ' r u n e w o r d _ i g n i ' ;  
 	 	 	 e l s e   i f ( s i g n T y p e   = =   S T _ Q u e n )  
 	 	 	 	 f x N a m e   =   ' r u n e w o r d _ q u e n ' ;  
 	 	 	 e l s e   i f ( s i g n T y p e   = =   S T _ Y r d e n )  
 	 	 	 	 f x N a m e   =   ' r u n e w o r d _ y r d e n ' ;  
 	 	 	 	  
 	 	 	 w e a p o n E n t . P l a y E f f e c t ( f x N a m e ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   I s M u t a t i o n A c t i v e (   E P M T _ M u t a t i o n 6   )   & &   s i g n T y p e   = =   S T _ A a r d   & &   ! i s A l t e r n a t e   )  
 	 	 {  
 	 	 	 p o s   =   G e t W o r l d P o s i t i o n ( )   +   G e t W o r l d F o r w a r d ( )   *   2 ;  
 	 	 	  
 	 	 	 t h e G a m e . G e t S u r f a c e P o s t F X ( ) . A d d S u r f a c e P o s t F X G r o u p (   p o s ,   0 . f ,   3 . f ,   2 . f ,   5 . f ,   0   ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   s a v e d   v a r   s a v e d Q u e n H e a l t h ,   s a v e d Q u e n D u r a t i o n   :   f l o a t ;  
 	  
 	 t i m e r   f u n c t i o n   H A C K _ Q u e n S a v e S t a t u s ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 v a r   q u e n E n t i t y   :   W 3 Q u e n E n t i t y ;  
 	 	  
 	 	 q u e n E n t i t y   =   ( W 3 Q u e n E n t i t y ) s i g n s [ S T _ Q u e n ] . e n t i t y ;  
 	 	 s a v e d Q u e n H e a l t h   =   q u e n E n t i t y . G e t S h i e l d H e a l t h ( ) ;  
 	 	 s a v e d Q u e n D u r a t i o n   =   q u e n E n t i t y . G e t S h i e l d R e m a i n i n g D u r a t i o n ( ) ;  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   D e l a y e d R e s t o r e Q u e n ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 R e s t o r e Q u e n ( s a v e d Q u e n H e a l t h ,   s a v e d Q u e n D u r a t i o n ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   O n B a s i c Q u e n F i n i s h i n g ( )  
 	 {  
 	 	 R e m o v e T i m e r ( ' H A C K _ Q u e n S a v e S t a t u s ' ) ;  
 	 	 s a v e d Q u e n H e a l t h   =   0 . f ;  
 	 	 s a v e d Q u e n D u r a t i o n   =   0 . f ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   I s A n y Q u e n A c t i v e ( )   :   b o o l  
 	 {  
 	 	 v a r   q u e n   :   W 3 Q u e n E n t i t y ;  
 	 	  
 	 	 q u e n   =   ( W 3 Q u e n E n t i t y ) G e t S i g n E n t i t y ( S T _ Q u e n ) ;  
 	 	 i f ( q u e n )  
 	 	 	 r e t u r n   q u e n . I s A n y Q u e n A c t i v e ( ) ;  
 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   I s Q u e n A c t i v e ( a l t e r n a t e M o d e   :   b o o l )   :   b o o l  
 	 {  
 	 	 i f ( I s A n y Q u e n A c t i v e ( )   & &   G e t S i g n E n t i t y ( S T _ Q u e n ) . I s A l t e r n a t e C a s t ( )   = =   a l t e r n a t e M o d e )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   F i n i s h Q u e n (   s k i p V i s u a l s   :   b o o l ,   o p t i o n a l   f o r c e N o B e a r S e t B o n u s   :   b o o l   )  
 	 {  
 	 	 v a r   q u e n   :   W 3 Q u e n E n t i t y ;  
 	 	  
 	 	 q u e n   =   ( W 3 Q u e n E n t i t y ) G e t S i g n E n t i t y ( S T _ Q u e n ) ;  
 	 	 i f ( q u e n )  
 	 	 	 q u e n . F o r c e F i n i s h Q u e n (   s k i p V i s u a l s ,   f o r c e N o B e a r S e t B o n u s   ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t T o t a l S i g n S p e l l P o w e r ( s i g n S k i l l   :   E S k i l l )   :   S A b i l i t y A t t r i b u t e V a l u e  
 	 {  
 	 	 v a r   s p   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   p e n a l t y   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   p e n a l t y R e d u c t i o n   :   f l o a t ;  
 	 	 v a r   p e n a l t y R e d u c t i o n L e v e l   :   i n t ;    
 	 	  
 	 	  
 	 	 s p   =   G e t S k i l l A t t r i b u t e V a l u e ( s i g n S k i l l ,   P o w e r S t a t E n u m T o N a m e ( C P S _ S p e l l P o w e r ) ,   t r u e ,   t r u e ) ;  
 	 	  
 	 	  
 	 	 i f   (   s i g n S k i l l   = =   S _ M a g i c _ s 0 1   )  
 	 	 {  
 	 	 	  
 	 	 	 p e n a l t y R e d u c t i o n L e v e l   =   G e t S k i l l L e v e l ( S _ M a g i c _ s 0 1 )   +   1 ;  
 	 	 	 i f ( p e n a l t y R e d u c t i o n L e v e l   >   0 )  
 	 	 	 {  
 	 	 	 	 p e n a l t y R e d u c t i o n   =   1   -   p e n a l t y R e d u c t i o n L e v e l   *   C a l c u l a t e A t t r i b u t e V a l u e ( G e t S k i l l A t t r i b u t e V a l u e ( S _ M a g i c _ s 0 1 ,   ' s p e l l _ p o w e r _ p e n a l t y _ r e d u c t i o n ' ,   t r u e ,   t r u e ) ) ;  
 	 	 	 	 p e n a l t y   =   G e t S k i l l A t t r i b u t e V a l u e ( S _ M a g i c _ s 0 1 ,   P o w e r S t a t E n u m T o N a m e ( C P S _ S p e l l P o w e r ) ,   f a l s e ,   f a l s e ) ;  
 	 	 	 	 s p   + =   p e n a l t y   *   p e n a l t y R e d u c t i o n ; 	  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( s i g n S k i l l   = =   S _ M a g i c _ 1   | |   s i g n S k i l l   = =   S _ M a g i c _ s 0 1 )  
 	 	 {  
 	 	 	 s p   + =   G e t A t t r i b u t e V a l u e ( ' s p e l l _ p o w e r _ a a r d ' ) ;  
 	 	 }  
 	 	 e l s e   i f ( s i g n S k i l l   = =   S _ M a g i c _ 2   | |   s i g n S k i l l   = =   S _ M a g i c _ s 0 2 )  
 	 	 {  
 	 	 	 s p   + =   G e t A t t r i b u t e V a l u e ( ' s p e l l _ p o w e r _ i g n i ' ) ;  
 	 	 }  
 	 	 e l s e   i f ( s i g n S k i l l   = =   S _ M a g i c _ 3   | |   s i g n S k i l l   = =   S _ M a g i c _ s 0 3 )  
 	 	 {  
 	 	 	 s p   + =   G e t A t t r i b u t e V a l u e ( ' s p e l l _ p o w e r _ y r d e n ' ) ;  
 	 	 }  
 	 	 e l s e   i f ( s i g n S k i l l   = =   S _ M a g i c _ 4   | |   s i g n S k i l l   = =   S _ M a g i c _ s 0 4 )  
 	 	 {  
 	 	 	 s p   + =   G e t A t t r i b u t e V a l u e ( ' s p e l l _ p o w e r _ q u e n ' ) ;  
 	 	 }  
 	 	 e l s e   i f ( s i g n S k i l l   = =   S _ M a g i c _ 5   | |   s i g n S k i l l   = =   S _ M a g i c _ s 0 5 )  
 	 	 {  
 	 	 	 s p   + =   G e t A t t r i b u t e V a l u e ( ' s p e l l _ p o w e r _ a x i i ' ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 A p p l y M u t a t i o n 1 0 S t a t B o o s t (   s p   ) ;  
 	  
 	 	 r e t u r n   s p ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t G w e n t C a r d I n d e x (   c a r d N a m e   :   n a m e   )   :   i n t  
 	 {  
 	 	 v a r   d m   :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ;  
 	 	  
 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	  
 	 	 i f ( d m . I t e m H a s T a g (   c a r d N a m e   ,   ' G w i n t C a r d L e a d e r '   ) )    
 	 	 {  
 	 	 	 r e t u r n   t h e G a m e . G e t G w i n t M a n a g e r ( ) . G w e n t L e a d e r s N a m e t o I n t (   c a r d N a m e   ) ;  
 	 	 }  
 	 	 e l s e   i f ( d m . I t e m H a s T a g (   c a r d N a m e   ,   ' G w i n t C a r d N r k d '   ) )  
 	 	 {  
 	 	 	 r e t u r n   t h e G a m e . G e t G w i n t M a n a g e r ( ) . G w e n t N r k d N a m e T o I n t (   c a r d N a m e   ) ;  
 	 	 }  
 	 	 e l s e   i f ( d m . I t e m H a s T a g (   c a r d N a m e   ,   ' G w i n t C a r d N l f g '   ) )  
 	 	 {  
 	 	 	 r e t u r n   t h e G a m e . G e t G w i n t M a n a g e r ( ) . G w e n t N l f g N a m e T o I n t (   c a r d N a m e   ) ;  
 	 	 }  
 	 	 e l s e   i f ( d m . I t e m H a s T a g (   c a r d N a m e   ,   ' G w i n t C a r d S c t l '   ) )  
 	 	 {  
 	 	 	 r e t u r n   t h e G a m e . G e t G w i n t M a n a g e r ( ) . G w e n t S c t l N a m e T o I n t (   c a r d N a m e   ) ;  
 	 	 }  
 	 	 e l s e   i f ( d m . I t e m H a s T a g (   c a r d N a m e   ,   ' G w i n t C a r d M s t r '   ) )  
 	 	 {  
 	 	 	 r e t u r n   t h e G a m e . G e t G w i n t M a n a g e r ( ) . G w e n t M s t r N a m e T o I n t (   c a r d N a m e   ) ;  
 	 	 }  
 	 	 e l s e   i f ( d m . I t e m H a s T a g (   c a r d N a m e   ,   ' G w i n t C a r d S k e '   ) )  
 	 	 {  
 	 	 	 r e t u r n   t h e G a m e . G e t G w i n t M a n a g e r ( ) . G w e n t S k e N a m e T o I n t (   c a r d N a m e   ) ;  
 	 	 } 	  
 	 	 e l s e   i f ( d m . I t e m H a s T a g (   c a r d N a m e   ,   ' G w i n t C a r d N e u t r a l '   ) )  
 	 	 {  
 	 	 	 r e t u r n   t h e G a m e . G e t G w i n t M a n a g e r ( ) . G w e n t N e u t r a l N a m e T o I n t (   c a r d N a m e   ) ;  
 	 	 }  
 	 	 e l s e   i f ( d m . I t e m H a s T a g (   c a r d N a m e   ,   ' G w i n t C a r d S p c l '   ) )  
 	 	 {  
 	 	 	 r e t u r n   t h e G a m e . G e t G w i n t M a n a g e r ( ) . G w e n t S p e c i a l N a m e T o I n t (   c a r d N a m e   ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   - 1 ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   A d d G w e n t C a r d ( c a r d N a m e   :   n a m e ,   a m o u n t   :   i n t )   :   b o o l  
 	 {  
 	 	 v a r   d m   :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ;  
 	 	 v a r   c a r d I n d e x ,   i   :   i n t ;  
 	 	 v a r   t u t   :   S T u t o r i a l M e s s a g e ;  
 	 	 v a r   g w i n t M a n a g e r   :   C R 4 G w i n t M a n a g e r ;  
 	 	  
 	 	  
 	 	  
 	 	 i f ( F a c t s Q u e r y S u m ( " q 0 0 1 _ n i g h t m a r e _ e n d e d " )   >   0   & &   S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l G w e n t D e c k B u i l d e r 2 ' ) )  
 	 	 {  
 	 	 	 t u t . t y p e   =   E T M T _ H i n t ;  
 	 	 	 t u t . t u t o r i a l S c r i p t T a g   =   ' T u t o r i a l G w e n t D e c k B u i l d e r 2 ' ;  
 	 	 	 t u t . j o u r n a l E n t r y N a m e   =   ' T u t o r i a l G w e n t D e c k B u i l d e r 2 ' ;  
 	 	 	 t u t . h i n t P o s i t i o n T y p e   =   E T H P T _ D e f a u l t G l o b a l ;  
 	 	 	 t u t . m a r k A s S e e n O n S h o w   =   t r u e ;  
 	 	 	 t u t . h i n t D u r a t i o n T y p e   =   E T H D T _ L o n g ;  
  
 	 	 	 t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . D i s p l a y T u t o r i a l ( t u t ) ;  
 	 	 }  
 	 	  
 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	  
 	 	 c a r d I n d e x   =   G e t G w e n t C a r d I n d e x ( c a r d N a m e ) ;  
 	 	  
 	 	 i f   ( c a r d I n d e x   ! =   - 1 )  
 	 	 {  
 	 	 	 F a c t s A d d ( " G w i n t _ C a r d _ L o o t e d " ) ;  
 	 	 	  
 	 	 	 f o r ( i   =   0 ;   i   <   a m o u n t ;   i   + =   1 )  
 	 	 	 {  
 	 	 	 	 t h e G a m e . G e t G w i n t M a n a g e r ( ) . A d d C a r d T o C o l l e c t i o n (   c a r d I n d e x   ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G w e n t T o u r n a m e n t '   )   )  
 	 	 {  
 	 	 	 i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 1 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " G w e n t T o u r n a m e n t " ,   1   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 2 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " G w e n t T o u r n a m e n t " ,   2   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 3 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " G w e n t T o u r n a m e n t " ,   3   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 4 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " G w e n t T o u r n a m e n t " ,   4   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 5 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " G w e n t T o u r n a m e n t " ,   5   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 6 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " G w e n t T o u r n a m e n t " ,   6   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 7 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " G w e n t T o u r n a m e n t " ,   7   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 C h e c k G w e n t T o u r n a m e n t D e c k ( ) ;  
 	 	 }  
 	 	  
 	 	 i f (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' E P 2 T o u r n a m e n t '   )   )  
 	 	 {  
 	 	 	 i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 1 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " E P 2 T o u r n a m e n t " ,   1   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 2 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " E P 2 T o u r n a m e n t " ,   2   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 3 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " E P 2 T o u r n a m e n t " ,   3   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 4 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " E P 2 T o u r n a m e n t " ,   4   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 5 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " E P 2 T o u r n a m e n t " ,   5   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 6 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " E P 2 T o u r n a m e n t " ,   6   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 7 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " E P 2 T o u r n a m e n t " ,   7   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 C h e c k E P 2 T o u r n a m e n t D e c k ( ) ;  
 	 	 }  
 	 	  
 	 	 g w i n t M a n a g e r   =   t h e G a m e . G e t G w i n t M a n a g e r ( ) ;  
 	 	 i f (   ! g w i n t M a n a g e r . I s D e c k U n l o c k e d (   G w i n t F a c t i o n _ S k e l l i g e   )   & &  
 	 	 	 g w i n t M a n a g e r . H a s C a r d s O f F a c t i o n I n C o l l e c t i o n (   G w i n t F a c t i o n _ S k e l l i g e ,   f a l s e   )   )  
 	 	 {  
 	 	 	 g w i n t M a n a g e r . U n l o c k D e c k (   G w i n t F a c t i o n _ S k e l l i g e   ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   R e m o v e G w e n t C a r d ( c a r d N a m e   :   n a m e ,   a m o u n t   :   i n t )   :   b o o l  
 	 {  
 	 	 v a r   d m   :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ;  
 	 	 v a r   c a r d I n d e x ,   i   :   i n t ;  
 	 	  
 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	  
 	 	 i f ( d m . I t e m H a s T a g (   c a r d N a m e   ,   ' G w i n t C a r d L e a d e r '   ) )    
 	 	 {  
 	 	 	 c a r d I n d e x   =   t h e G a m e . G e t G w i n t M a n a g e r ( ) . G w e n t L e a d e r s N a m e t o I n t (   c a r d N a m e   ) ;  
 	 	 	 f o r ( i = 0 ;   i < a m o u n t ;   i + = 1 )  
 	 	 	 	 t h e G a m e . G e t G w i n t M a n a g e r ( ) . R e m o v e C a r d F r o m C o l l e c t i o n (   c a r d I n d e x   ) ;  
 	 	 }  
 	 	 e l s e   i f ( d m . I t e m H a s T a g (   c a r d N a m e   ,   ' G w i n t C a r d N r k d '   ) )  
 	 	 {  
 	 	 	 c a r d I n d e x   =   t h e G a m e . G e t G w i n t M a n a g e r ( ) . G w e n t N r k d N a m e T o I n t (   c a r d N a m e   ) ;  
 	 	 	 f o r ( i = 0 ;   i < a m o u n t ;   i + = 1 )  
 	 	 	 	 t h e G a m e . G e t G w i n t M a n a g e r ( ) . R e m o v e C a r d F r o m C o l l e c t i o n (   c a r d I n d e x   ) ;  
 	 	 }  
 	 	 e l s e   i f ( d m . I t e m H a s T a g (   c a r d N a m e   ,   ' G w i n t C a r d N l f g '   ) )  
 	 	 {  
 	 	 	 c a r d I n d e x   =   t h e G a m e . G e t G w i n t M a n a g e r ( ) . G w e n t N l f g N a m e T o I n t (   c a r d N a m e   ) ;  
 	 	 	 f o r ( i = 0 ;   i < a m o u n t ;   i + = 1 )  
 	 	 	 	 t h e G a m e . G e t G w i n t M a n a g e r ( ) . R e m o v e C a r d F r o m C o l l e c t i o n (   c a r d I n d e x   ) ;  
 	 	 }  
 	 	 e l s e   i f ( d m . I t e m H a s T a g (   c a r d N a m e   ,   ' G w i n t C a r d S c t l '   ) )  
 	 	 {  
 	 	 	 c a r d I n d e x   =   t h e G a m e . G e t G w i n t M a n a g e r ( ) . G w e n t S c t l N a m e T o I n t (   c a r d N a m e   ) ;  
 	 	 	 f o r ( i = 0 ;   i < a m o u n t ;   i + = 1 )  
 	 	 	 	 t h e G a m e . G e t G w i n t M a n a g e r ( ) . R e m o v e C a r d F r o m C o l l e c t i o n (   c a r d I n d e x   ) ;  
 	 	 }  
 	 	 e l s e   i f ( d m . I t e m H a s T a g (   c a r d N a m e   ,   ' G w i n t C a r d M s t r '   ) )  
 	 	 {  
 	 	 	 c a r d I n d e x   =   t h e G a m e . G e t G w i n t M a n a g e r ( ) . G w e n t M s t r N a m e T o I n t (   c a r d N a m e   ) ;  
 	 	 	 f o r ( i = 0 ;   i < a m o u n t ;   i + = 1 )  
 	 	 	 	 t h e G a m e . G e t G w i n t M a n a g e r ( ) . R e m o v e C a r d F r o m C o l l e c t i o n (   c a r d I n d e x   ) ;  
 	 	 }  
 	 	 e l s e   i f ( d m . I t e m H a s T a g (   c a r d N a m e   ,   ' G w i n t C a r d N e u t r a l '   ) )  
 	 	 {  
 	 	 	 c a r d I n d e x   =   t h e G a m e . G e t G w i n t M a n a g e r ( ) . G w e n t N e u t r a l N a m e T o I n t (   c a r d N a m e   ) ;  
 	 	 	 f o r ( i = 0 ;   i < a m o u n t ;   i + = 1 )  
 	 	 	 	 t h e G a m e . G e t G w i n t M a n a g e r ( ) . R e m o v e C a r d F r o m C o l l e c t i o n (   c a r d I n d e x   ) ;  
 	 	 }  
 	 	 e l s e   i f ( d m . I t e m H a s T a g (   c a r d N a m e   ,   ' G w i n t C a r d S p c l '   ) )  
 	 	 {  
 	 	 	 c a r d I n d e x   =   t h e G a m e . G e t G w i n t M a n a g e r ( ) . G w e n t S p e c i a l N a m e T o I n t (   c a r d N a m e   ) ;  
 	 	 	 f o r ( i = 0 ;   i < a m o u n t ;   i + = 1 )  
 	 	 	 	 t h e G a m e . G e t G w i n t M a n a g e r ( ) . R e m o v e C a r d F r o m C o l l e c t i o n (   c a r d I n d e x   ) ;  
 	 	 }  
 	 	  
 	 	 i f (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G w e n t T o u r n a m e n t '   )   )  
 	 	 {  
 	 	 	 i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 1 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s S u b s t r a c t (   " G w e n t T o u r n a m e n t " ,   1   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 2 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s S u b s t r a c t (   " G w e n t T o u r n a m e n t " ,   2   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 3 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s S u b s t r a c t (   " G w e n t T o u r n a m e n t " ,   3   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 4 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s S u b s t r a c t (   " G w e n t T o u r n a m e n t " ,   4   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 5 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s S u b s t r a c t (   " G w e n t T o u r n a m e n t " ,   5   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 6 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s S u b s t r a c t (   " G w e n t T o u r n a m e n t " ,   6   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 7 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s S u b s t r a c t (   " G w e n t T o u r n a m e n t " ,   7   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 C h e c k G w e n t T o u r n a m e n t D e c k ( ) ;  
 	 	 }  
 	 	 	  
 	 	 	  
 	 	 i f (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' E P 2 T o u r n a m e n t '   )   )  
 	 	 {  
 	 	 	 i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 1 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s S u b s t r a c t (   " E P 2 T o u r n a m e n t " ,   1   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 2 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s S u b s t r a c t (   " E P 2 T o u r n a m e n t " ,   2   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 3 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s S u b s t r a c t (   " E P 2 T o u r n a m e n t " ,   3   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 4 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s S u b s t r a c t (   " E P 2 T o u r n a m e n t " ,   4   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 5 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s S u b s t r a c t (   " E P 2 T o u r n a m e n t " ,   5   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 6 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s S u b s t r a c t (   " E P 2 T o u r n a m e n t " ,   6   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e   i f   (   d m . I t e m H a s T a g (   c a r d N a m e ,   ' G T 7 '   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s S u b s t r a c t (   " E P 2 T o u r n a m e n t " ,   7   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 C h e c k E P 2 T o u r n a m e n t D e c k ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 f u n c t i o n   C h e c k G w e n t T o u r n a m e n t D e c k ( )  
 	 {  
 	 	 v a r   g w e n t P o w e r 	 	 	 :   i n t ;  
 	 	 v a r   n e e d e d G w e n t P o w e r 	 :   i n t ;  
 	 	 v a r   c h e c k B r e a k p o i n t 	 	 :   i n t ;  
 	 	  
 	 	 n e e d e d G w e n t P o w e r   =   7 0 ;  
 	 	  
 	 	 c h e c k B r e a k p o i n t   =   n e e d e d G w e n t P o w e r / 5 ;  
 	 	 g w e n t P o w e r   =   F a c t s Q u e r y S u m (   " G w e n t T o u r n a m e n t "   ) ;  
 	 	  
 	 	 i f   (   g w e n t P o w e r   > =   n e e d e d G w e n t P o w e r   )  
 	 	 {  
 	 	 	 F a c t s A d d (   " H a s G w e n t T o u r n a m e n t D e c k " ,   1   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f (   F a c t s D o e s E x i s t (   " H a s G w e n t T o u r n a m e n t D e c k "   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s R e m o v e (   " H a s G w e n t T o u r n a m e n t D e c k "   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   g w e n t P o w e r   > =   c h e c k B r e a k p o i n t   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " G w e n t T o u r n a m e n t O b j e c t i v e 1 " ,   1   ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f   (   F a c t s D o e s E x i s t (   " G w e n t T o u r n a m e n t O b j e c t i v e 1 "   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s R e m o v e (   " G w e n t T o u r n a m e n t O b j e c t i v e 1 "   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   g w e n t P o w e r   > =   c h e c k B r e a k p o i n t * 2   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " G w e n t T o u r n a m e n t O b j e c t i v e 2 " ,   1   ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f   (   F a c t s D o e s E x i s t (   " G w e n t T o u r n a m e n t O b j e c t i v e 2 "   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s R e m o v e (   " G w e n t T o u r n a m e n t O b j e c t i v e 2 "   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   g w e n t P o w e r   > =   c h e c k B r e a k p o i n t * 3   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " G w e n t T o u r n a m e n t O b j e c t i v e 3 " ,   1   ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f   (   F a c t s D o e s E x i s t (   " G w e n t T o u r n a m e n t O b j e c t i v e 3 "   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s R e m o v e (   " G w e n t T o u r n a m e n t O b j e c t i v e 3 "   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   g w e n t P o w e r   > =   c h e c k B r e a k p o i n t * 4   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " G w e n t T o u r n a m e n t O b j e c t i v e 4 " ,   1   ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f   (   F a c t s D o e s E x i s t (   " G w e n t T o u r n a m e n t O b j e c t i v e 4 "   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s R e m o v e (   " G w e n t T o u r n a m e n t O b j e c t i v e 4 "   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 f u n c t i o n   C h e c k E P 2 T o u r n a m e n t D e c k ( )  
 	 {  
 	 	 v a r   g w e n t P o w e r 	 	 	 :   i n t ;  
 	 	 v a r   n e e d e d G w e n t P o w e r 	 :   i n t ;  
 	 	 v a r   c h e c k B r e a k p o i n t 	 	 :   i n t ;  
 	 	  
 	 	 n e e d e d G w e n t P o w e r   =   2 4 ;  
 	 	  
 	 	 c h e c k B r e a k p o i n t   =   n e e d e d G w e n t P o w e r / 5 ;  
 	 	 g w e n t P o w e r   =   F a c t s Q u e r y S u m (   " E P 2 T o u r n a m e n t "   ) ;  
 	 	  
 	 	 i f   (   g w e n t P o w e r   > =   n e e d e d G w e n t P o w e r   )  
 	 	 {  
 	 	 	 i f (   F a c t s Q u e r y S u m (   " H a s E P 2 T o u r n a m e n t D e c k " )   = =   0   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " H a s E P 2 T o u r n a m e n t D e c k " ,   1   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f (   F a c t s D o e s E x i s t (   " H a s E P 2 T o u r n a m e n t D e c k "   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s R e m o v e (   " H a s E P 2 T o u r n a m e n t D e c k "   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   g w e n t P o w e r   > =   c h e c k B r e a k p o i n t   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " E P 2 T o u r n a m e n t O b j e c t i v e 1 " ,   1   ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f   (   F a c t s D o e s E x i s t (   " E P 2 T o u r n a m e n t O b j e c t i v e 1 "   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s R e m o v e (   " E P 2 T o u r n a m e n t O b j e c t i v e 1 "   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   g w e n t P o w e r   > =   c h e c k B r e a k p o i n t * 2   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " E P 2 T o u r n a m e n t O b j e c t i v e 2 " ,   1   ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f   (   F a c t s D o e s E x i s t (   " E P 2 T o u r n a m e n t O b j e c t i v e 2 "   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s R e m o v e (   " E P 2 T o u r n a m e n t O b j e c t i v e 2 "   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   g w e n t P o w e r   > =   c h e c k B r e a k p o i n t * 3   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " E P 2 T o u r n a m e n t O b j e c t i v e 3 " ,   1   ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f   (   F a c t s D o e s E x i s t (   " E P 2 T o u r n a m e n t O b j e c t i v e 3 "   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s R e m o v e (   " E P 2 T o u r n a m e n t O b j e c t i v e 3 "   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   g w e n t P o w e r   > =   c h e c k B r e a k p o i n t * 4   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " E P 2 T o u r n a m e n t O b j e c t i v e 4 " ,   1   ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f   (   F a c t s D o e s E x i s t (   " E P 2 T o u r n a m e n t O b j e c t i v e 4 "   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s R e m o v e (   " E P 2 T o u r n a m e n t O b j e c t i v e 4 "   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   S i m u l a t e B u f f T i m e P a s s i n g ( s i m u l a t e d T i m e   :   f l o a t )  
 	 {  
 	 	 s u p e r . S i m u l a t e B u f f T i m e P a s s i n g ( s i m u l a t e d T i m e ) ;  
 	 	  
 	 	 F i n i s h Q u e n ( t r u e ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   C a n M e d i t a t e ( )   :   b o o l  
 	 {  
 	 	 v a r   c u r r e n t S t a t e N a m e   :   n a m e ;  
 	 	  
 	 	 c u r r e n t S t a t e N a m e   =   G e t C u r r e n t S t a t e N a m e ( ) ;  
 	 	  
 	 	  
 	 	 i f ( c u r r e n t S t a t e N a m e   = =   ' E x p l o r a t i o n '   & &   ! C a n P e r f o r m P l a y e r A c t i o n ( ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	  
 	 	 i f ( G e t C u r r e n t S t a t e N a m e ( )   ! =   ' E x p l o r a t i o n '   & &   G e t C u r r e n t S t a t e N a m e ( )   ! =   ' M e d i t a t i o n '   & &   G e t C u r r e n t S t a t e N a m e ( )   ! =   ' M e d i t a t i o n W a i t i n g ' )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	  
 	 	 i f ( G e t U s e d V e h i c l e ( ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	  
 	 	 r e t u r n   C a n M e d i t a t e H e r e ( ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   C a n M e d i t a t e W a i t ( o p t i o n a l   s k i p M e d i t a t i o n S t a t e C h e c k   :   b o o l )   :   b o o l  
 	 {  
 	 	 v a r   c u r r S t a t e   :   n a m e ;  
 	 	  
 	 	 c u r r S t a t e   =   G e t C u r r e n t S t a t e N a m e ( ) ;  
 	 	  
 	 	  
 	 	  
 	 	 i f ( ! s k i p M e d i t a t i o n S t a t e C h e c k   & &   c u r r S t a t e   ! =   ' M e d i t a t i o n ' )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	  
 	 	 i f ( t h e G a m e . I s G a m e T i m e P a u s e d ( ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 i f ( ! I s A c t i o n A l l o w e d (   E I A B _ M e d i t a t i o n W a i t i n g   ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   C a n M e d i t a t e H e r e ( )   :   b o o l  
 	 {  
 	 	 v a r   p o s 	 :   V e c t o r ;  
 	 	  
 	 	 p o s   =   G e t W o r l d P o s i t i o n ( ) ;  
 	 	 i f ( p o s . Z   < =   t h e G a m e . G e t W o r l d ( ) . G e t W a t e r L e v e l ( p o s ,   t r u e )   & &   I s I n S h a l l o w W a t e r ( ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i f ( I s T h r e a t e n e d ( ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   M e d i t a t e ( )   :   b o o l  
 	 {  
 	 	 v a r   m e d S t a t e   	 	 	 :   W 3 P l a y e r W i t c h e r S t a t e M e d i t a t i o n ;  
 	 	 v a r   s t a t e N a m e   	 	 	 :   n a m e ;  
 	  
 	 	 s t a t e N a m e   =   G e t C u r r e n t S t a t e N a m e ( ) ;  
 	  
 	 	  
 	 	 i f   ( ! C a n M e d i t a t e ( )     | |   s t a t e N a m e   = =   ' M e d i t a t i o n W a i t i n g '   )  
 	 	 	 r e t u r n   f a l s e ;  
 	  
 	 	 G o t o S t a t e ( ' M e d i t a t i o n ' ) ;  
 	 	 m e d S t a t e   =   ( W 3 P l a y e r W i t c h e r S t a t e M e d i t a t i o n ) G e t S t a t e ( ' M e d i t a t i o n ' ) ; 	 	  
 	 	 m e d S t a t e . S e t M e d i t a t i o n P o i n t H e a d i n g ( G e t H e a d i n g ( ) ) ;  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   M e d i t a t i o n R e s t o r i n g ( s i m u l a t e d T i m e   :   f l o a t )  
 	 { 	 	 	  
 	 	  
 	 	 i f   (   t h e G a m e . G e t D i f f i c u l t y M o d e ( )   ! =   E D M _ H a r d   & &   t h e G a m e . G e t D i f f i c u l t y M o d e ( )   ! =   E D M _ H a r d c o r e   )    
 	 	 {  
 	 	 	 H e a l ( G e t S t a t M a x ( B C S _ V i t a l i t y ) ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 a b i l i t y M a n a g e r . D r a i n T o x i c i t y (   a b i l i t y M a n a g e r . G e t S t a t (   B C S _ T o x i c i t y   )   ) ;  
 	 	 a b i l i t y M a n a g e r . D r a i n F o c u s (   a b i l i t y M a n a g e r . G e t S t a t (   B C S _ F o c u s   )   ) ;  
 	 	  
 	 	  
 	 	 i n v . S i n g l e t o n I t e m s R e f i l l A m m o ( ) ;  
 	 	  
 	 	  
 	 	 S i m u l a t e B u f f T i m e P a s s i n g ( s i m u l a t e d T i m e ) ;  
 	 	  
 	 	  
 	 	 A p p l y W i t c h e r H o u s e B u f f s ( ) ;  
 	 }  
 	  
 	 v a r   c l o c k M e n u   :   C R 4 M e d i t a t i o n C l o c k M e n u ;  
 	  
 	 p u b l i c   f u n c t i o n   M e d i t a t i o n C l o c k S t a r t ( m   :   C R 4 M e d i t a t i o n C l o c k M e n u )  
 	 {  
 	 	 c l o c k M e n u   =   m ;  
 	 	 A d d T i m e r ( ' U p d a t e C l o c k T i m e ' , 0 . 1 , t r u e ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   M e d i t a t i o n C l o c k S t o p ( )  
 	 {  
 	 	 c l o c k M e n u   =   N U L L ;  
 	 	 R e m o v e T i m e r ( ' U p d a t e C l o c k T i m e ' ) ;  
 	 }  
 	  
 	 p u b l i c   t i m e r   f u n c t i o n   U p d a t e C l o c k T i m e ( d t   :   f l o a t ,   i d   :   i n t )  
 	 {  
 	 	 i f ( c l o c k M e n u )  
 	 	 	 c l o c k M e n u . U p d a t e C u r r e n t H o u r s ( ) ;  
 	 	 e l s e  
 	 	 	 R e m o v e T i m e r ( ' U p d a t e C l o c k T i m e ' ) ;  
 	 }  
 	  
 	 p r i v a t e   v a r   w a i t T i m e H o u r   :   i n t ;  
 	 p u b l i c   f u n c t i o n   S e t W a i t T a r g e t H o u r ( t   :   i n t )  
 	 {  
 	 	 w a i t T i m e H o u r   =   t ;  
 	 }  
 	 p u b l i c   f u n c t i o n   G e t W a i t T a r g e t H o u r ( )   :   i n t  
 	 {  
 	 	 r e t u r n   w a i t T i m e H o u r ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   M e d i t a t i o n F o r c e A b o r t ( f o r c e C l o s e U I   :   b o o l )  
 	 {  
 	 	 v a r   w a i t t   :   W 3 P l a y e r W i t c h e r S t a t e M e d i t a t i o n W a i t i n g ;  
 	 	 v a r   m e d d   :   W 3 P l a y e r W i t c h e r S t a t e M e d i t a t i o n ;  
 	 	 v a r   c u r r e n t S t a t e N a m e   :   n a m e ;  
 	 	  
 	 	 c u r r e n t S t a t e N a m e   =   G e t C u r r e n t S t a t e N a m e ( ) ;  
 	 	  
 	 	 i f ( c u r r e n t S t a t e N a m e   = =   ' M e d i t a t i o n W a i t i n g ' )  
 	 	 {  
 	 	 	 w a i t t   =   ( W 3 P l a y e r W i t c h e r S t a t e M e d i t a t i o n W a i t i n g ) G e t C u r r e n t S t a t e ( ) ;  
 	 	 	 i f ( w a i t t )  
 	 	 	 {  
 	 	 	 	 w a i t t . S t o p R e q u e s t e d ( f o r c e C l o s e U I ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f ( c u r r e n t S t a t e N a m e   = =   ' M e d i t a t i o n ' )  
 	 	 {  
 	 	 	 m e d d   =   ( W 3 P l a y e r W i t c h e r S t a t e M e d i t a t i o n ) G e t C u r r e n t S t a t e ( ) ;  
 	 	 	 i f ( m e d d )  
 	 	 	 {  
 	 	 	 	 m e d d . S t o p R e q u e s t e d ( f o r c e C l o s e U I ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	 i f (   f o r c e C l o s e U I   & &   t h e G a m e . G e t G u i M a n a g e r ( ) . I s A n y M e n u ( )   & &   ! t h e G a m e . G e t P h o t o m o d e E n a b l e d ( )   )  
 	 	 {  
 	 	 	 t h e G a m e . G e t G u i M a n a g e r ( ) . G e t R o o t M e n u ( ) . C l o s e M e n u ( ) ;  
 	 	 	 D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ M e d i t a t i o n W a i t i n g ,   f a l s e ,   f a l s e ,   t r u e ,   f a l s e ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R u n e w o r d 1 0 T r i g g e r r e d ( )  
 	 {  
 	 	 v a r   m i n ,   m a x   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   a m o u n t   :   f l o a t ;    
 	 	  
 	 	  
 	 	  
 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e (   ' R u n e w o r d   1 0   _ S t a t s ' ,   ' s t a m i n a _ r u n e w o r d _ g a i n ' ,   m i n ,   m a x   ) ;  
 	 	  
 	 	  
 	 	 a m o u n t   =   m i n . v a l u e M u l t i p l i c a t i v e   *   G e t S t a t M a x ( B C S _ S t a m i n a ) ;  
 	 	 i f   (   G e t S t a t ( B C S _ S t a m i n a )   +   a m o u n t   >   G e t S t a t M a x ( B C S _ S t a m i n a )   )  
 	 	 {  
 	 	 	 a m o u n t   =   G e t S t a t M a x ( B C S _ S t a m i n a )   -   G e t S t a t ( B C S _ S t a m i n a ) ;  
 	 	 }  
 	 	 G a i n S t a t ( B C S _ S t a m i n a ,   a m o u n t ) ;  
 	 	  
 	 	  
 	 	 P l a y E f f e c t ( ' r u n e w o r d _ 1 0 _ s t a m i n a ' ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R u n e w o r d 1 2 T r i g g e r r e d ( )  
 	 {  
 	 	 v a r   m i n ,   m a x   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   a m o u n t   :   f l o a t ;    
 	 	  
 	 	  
 	 	  
 	 	 t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) . G e t A b i l i t y A t t r i b u t e V a l u e (   ' R u n e w o r d   1 2   _ S t a t s ' ,   ' f o c u s _ r u n e w o r d _ g a i n ' ,   m i n ,   m a x   ) ;  
 	 	  
 	 	  
 	 	 a m o u n t   =   R a n d R a n g e F ( m a x . v a l u e A d d i t i v e ,   m i n . v a l u e A d d i t i v e ) ;  
 	 	 i f   (   G e t S t a t ( B C S _ F o c u s )   +   a m o u n t   >   G e t S t a t M a x ( B C S _ F o c u s )   )  
 	 	 {  
 	 	 	 a m o u n t   =   G e t S t a t M a x ( B C S _ F o c u s )   -   G e t S t a t ( B C S _ F o c u s ) ;  
 	 	 }  
 	 	 G a i n S t a t ( B C S _ F o c u s ,   a m o u n t ) ;  
 	 	  
 	 	  
 	 	 P l a y E f f e c t ( ' r u n e w o r d _ 2 0 _ a d r e n a l i n e ' ) ; 	  
 	 }  
 	  
 	 v a r   r u n e w o r d 1 0 T r i g g e r r e d O n F i n i s h e r ,   r u n e w o r d 1 2 T r i g g e r r e d O n F i n i s h e r   :   b o o l ;  
 	  
 	 e v e n t   O n F i n i s h e r S t a r t ( )  
 	 {  
 	 	 s u p e r . O n F i n i s h e r S t a r t ( ) ;  
 	 	  
 	 	 r u n e w o r d 1 0 T r i g g e r r e d O n F i n i s h e r   =   f a l s e ;  
 	 	 r u n e w o r d 1 2 T r i g g e r r e d O n F i n i s h e r   =   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   A p p l y W i t c h e r H o u s e B u f f s ( )  
 	 {  
 	 	 v a r   l _ b e d 	 	 	 :   W 3 W i t c h e r B e d ;  
 	 	  
 	 	 i f (   F a c t s Q u e r y S u m (   " P l a y e r I n s i d e I n n e r W i t c h e r H o u s e "   )   >   0   )  
 	 	 {  
 	 	 	 l _ b e d   =   ( W 3 W i t c h e r B e d ) t h e G a m e . G e t E n t i t y B y T a g (   ' w i t c h e r B e d '   ) ;  
 	 	 	  
 	 	 	 i f (   l _ b e d . G e t W a s U s e d ( )   )  
 	 	 	 {  
 	 	 	 	 i f (   l _ b e d . G e t B e d L e v e l ( )   ! =   0   )  
 	 	 	 	 {  
 	 	 	 	 	 A d d E f f e c t D e f a u l t (   E E T _ W e l l R e s t e d ,   t h i s ,   " B e d   B u f f "   ) ;  
 	 	 	 	 }  
  
 	 	 	 	 i f (   F a c t s Q u e r y S u m (   " S t a b l e s E x i s t s "   )   )  
 	 	 	 	 {  
 	 	 	 	 	 A d d E f f e c t D e f a u l t (   E E T _ H o r s e S t a b l e B u f f ,   t h i s ,   " S t a b l e s "   ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f (   l _ b e d . G e t W e r e I t e m s R e f i l l e d ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e G a m e . G e t G u i M a n a g e r ( ) . S h o w N o t i f i c a t i o n (   G e t L o c S t r i n g B y K e y E x t (   " m e s s a g e _ c o m m o n _ a l c h e m y _ t a b l e _ b u f f _ a p p l i e d "   ) , ,   t r u e   ) ;  
 	 	 	 	 	 l _ b e d . S e t W e r e I t e m s R e f i l l e d (   f a l s e   ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 A d d E f f e c t D e f a u l t (   E E T _ B o o k s h e l f B u f f ,   t h i s ,   " B o o k s h e l f "   ) ;  
 	 	 	 	  
 	 	 	 	 H e a l (   G e t S t a t M a x (   B C S _ V i t a l i t y   )   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   C h e a t R e s u r r e c t ( )  
 	 {  
 	 	 s u p e r . C h e a t R e s u r r e c t ( ) ;  
 	 	 t h e G a m e . R e l e a s e N o S a v e L o c k ( t h e G a m e . d e a t h S a v e L o c k I d ) ;  
 	 	 t h e I n p u t . R e s t o r e C o n t e x t (   ' E x p l o r a t i o n ' ,   t r u e   ) ; 	  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   D e b u g _ E q u i p T e s t i n g S k i l l s ( e q u i p   :   b o o l ,   f o r c e   :   b o o l )  
 	 {  
 	 	 v a r   s k i l l s   :   a r r a y < E S k i l l > ;  
 	 	 v a r   i ,   s l o t   :   i n t ;  
 	 	  
 	 	  
 	 	 ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . O n L e v e l G a i n e d ( 3 6 ) ;  
 	 	  
 	 	 s k i l l s . P u s h B a c k ( S _ M a g i c _ s 0 1 ) ;  
 	 	 s k i l l s . P u s h B a c k ( S _ M a g i c _ s 0 2 ) ;  
 	 	 s k i l l s . P u s h B a c k ( S _ M a g i c _ s 0 3 ) ;  
 	 	 s k i l l s . P u s h B a c k ( S _ M a g i c _ s 0 4 ) ;  
 	 	 s k i l l s . P u s h B a c k ( S _ M a g i c _ s 0 5 ) ;  
 	 	 s k i l l s . P u s h B a c k ( S _ S w o r d _ s 0 1 ) ;  
 	 	 s k i l l s . P u s h B a c k ( S _ S w o r d _ s 0 2 ) ;  
 	 	  
 	 	  
 	 	 i f ( e q u i p )  
 	 	 {  
 	 	 	 f o r ( i = 0 ;   i < s k i l l s . S i z e ( ) ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 i f ( ! f o r c e   & &   I s S k i l l E q u i p p e d ( s k i l l s [ i ] ) )  
 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f ( G e t S k i l l L e v e l ( s k i l l s [ i ] )   = =   0 )  
 	 	 	 	 	 A d d S k i l l ( s k i l l s [ i ] ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 i f ( f o r c e )  
 	 	 	 	 	 s l o t   =   i + 1 ; 	 	  
 	 	 	 	 e l s e  
 	 	 	 	 	 s l o t   =   G e t F r e e S k i l l S l o t ( ) ;  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 E q u i p S k i l l ( s k i l l s [ i ] ,   s l o t ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 f o r ( i = 0 ;   i < s k i l l s . S i z e ( ) ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 U n e q u i p S k i l l ( G e t S k i l l S l o t I D ( s k i l l s [ i ] ) ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   D e b u g _ C l e a r C h a r a c t e r D e v e l o p m e n t ( o p t i o n a l   k e e p I n v   :   b o o l )  
 	 {  
 	 	 v a r   t e m p l a t e   :   C E n t i t y T e m p l a t e ;  
 	 	 v a r   e n t i t y   :   C E n t i t y ;  
 	 	 v a r   i n v T e s t i n g   :   C I n v e n t o r y C o m p o n e n t ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   i t e m s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   a b s   :   a r r a y < n a m e > ;  
 	  
 	 	 d e l e t e   a b i l i t y M a n a g e r ;  
 	 	 d e l e t e   l e v e l M a n a g e r ;  
 	 	 d e l e t e   e f f e c t M a n a g e r ;  
 	 	  
 	 	  
 	 	 G e t C h a r a c t e r S t a t s ( ) . G e t A b i l i t i e s ( a b s ,   f a l s e ) ;  
 	 	 f o r ( i = 0 ;   i < a b s . S i z e ( ) ;   i + = 1 )  
 	 	 	 R e m o v e A b i l i t y ( a b s [ i ] ) ;  
 	 	 	  
 	 	  
 	 	 a b s . C l e a r ( ) ;  
 	 	 G e t C h a r a c t e r S t a t s P a r a m ( a b s ) ; 	 	  
 	 	 f o r ( i = 0 ;   i < a b s . S i z e ( ) ;   i + = 1 )  
 	 	 	 A d d A b i l i t y ( a b s [ i ] ) ;  
 	 	 	 	 	  
 	 	  
 	 	 l e v e l M a n a g e r   =   n e w   W 3 L e v e l M a n a g e r   i n   t h i s ; 	 	 	  
 	 	 l e v e l M a n a g e r . I n i t i a l i z e ( ) ;  
 	 	 l e v e l M a n a g e r . P o s t I n i t ( t h i s ,   f a l s e ,   t r u e ) ; 	 	  
 	 	 	 	 	 	  
 	 	  
 	 	 A d d A b i l i t y ( ' G e r a l t S k i l l s _ T e s t i n g ' ) ;  
 	 	 S e t A b i l i t y M a n a g e r ( ) ; 	 	  
 	 	 a b i l i t y M a n a g e r . I n i t ( t h i s ,   G e t C h a r a c t e r S t a t s ( ) ,   f a l s e ,   t h e G a m e . G e t D i f f i c u l t y M o d e ( ) ) ;  
 	 	  
 	 	 S e t E f f e c t M a n a g e r ( ) ;  
 	 	  
 	 	 a b i l i t y M a n a g e r . P o s t I n i t ( ) ; 	 	 	 	 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 i f ( ! k e e p I n v )  
 	 	 {  
 	 	 	 i n v . R e m o v e A l l I t e m s ( ) ;  
 	 	 } 	 	  
 	 	  
 	 	  
 	 	 t e m p l a t e   =   ( C E n t i t y T e m p l a t e ) L o a d R e s o u r c e ( " g e r a l t _ i n v e n t o r y _ r e l e a s e " ) ;  
 	 	 e n t i t y   =   t h e G a m e . C r e a t e E n t i t y ( t e m p l a t e ,   V e c t o r ( 0 , 0 , 0 ) ) ;  
 	 	 i n v T e s t i n g   =   ( C I n v e n t o r y C o m p o n e n t ) e n t i t y . G e t C o m p o n e n t B y C l a s s N a m e ( ' C I n v e n t o r y C o m p o n e n t ' ) ;  
 	 	 i n v T e s t i n g . G i v e A l l I t e m s T o ( i n v ,   t r u e ) ;  
 	 	 e n t i t y . D e s t r o y ( ) ;  
 	 	  
 	 	  
 	 	 i n v . G e t A l l I t e m s ( i t e m s ) ;  
 	 	 f o r ( i = 0 ;   i < i t e m s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 i f ( ! i n v . I t e m H a s T a g ( i t e m s [ i ] ,   ' N o D r o p ' ) ) 	 	 	  
 	 	 	 	 E q u i p I t e m ( i t e m s [ i ] ) ;  
 	 	 }  
 	 	 	  
 	 	  
 	 	 D e b u g _ G i v e T e s t i n g I t e m s ( 0 ) ;  
 	 }  
 	  
 	 f u n c t i o n   D e b u g _ B e a r S e t B o n u s Q u e n S k i l l s ( )  
 	 {  
 	 	 v a r   s k i l l s 	 :   a r r a y < E S k i l l > ;  
 	 	 v a r   i ,   s l o t 	 :   i n t ;  
 	 	  
 	 	 s k i l l s . P u s h B a c k ( S _ M a g i c _ s 0 4 ) ;  
 	 	 s k i l l s . P u s h B a c k ( S _ M a g i c _ s 1 4 ) ;  
 	 	  
 	 	 f o r ( i = 0 ;   i < s k i l l s . S i z e ( ) ;   i + = 1 )  
 	 	 { 	 	 	 	  
 	 	 	  
 	 	 	 i f ( G e t S k i l l L e v e l ( s k i l l s [ i ] )   = =   0 )  
 	 	 	 {  
 	 	 	 	 A d d S k i l l ( s k i l l s [ i ] ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 s l o t   =   G e t F r e e S k i l l S l o t ( ) ;  
 	 	 	  
 	 	 	  
 	 	 	 E q u i p S k i l l ( s k i l l s [ i ] ,   s l o t ) ;  
 	 	 }  
 	 }  
 	  
 	 f i n a l   f u n c t i o n   D e b u g _ H A X _ U n l o c k S k i l l S l o t ( s l o t I n d e x   :   i n t )   :   b o o l  
 	 {  
 	 	 i f ( a b i l i t y M a n a g e r   & &   a b i l i t y M a n a g e r . I s I n i t i a l i z e d ( ) )  
 	 	 	 r e t u r n   ( ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ) . D e b u g _ H A X _ U n l o c k S k i l l S l o t ( s l o t I n d e x ) ;  
 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t L e v e l u p A b i l i t y (   i d   :   i n t )   :   n a m e  
 	 {  
 	 	 s w i t c h ( i d )  
 	 	 {  
 	 	 	 c a s e   1 :   r e t u r n   ' L v l 1 ' ;  
 	 	 	 c a s e   2 :   r e t u r n   ' L v l 2 ' ;  
 	 	 	 c a s e   3 :   r e t u r n   ' L v l 3 ' ;  
 	 	 	 c a s e   4 :   r e t u r n   ' L v l 4 ' ;  
 	 	 	 c a s e   5 :   r e t u r n   ' L v l 5 ' ;  
 	 	 	 c a s e   6 :   r e t u r n   ' L v l 6 ' ;  
 	 	 	 c a s e   7 :   r e t u r n   ' L v l 7 ' ;  
 	 	 	 c a s e   8 :   r e t u r n   ' L v l 8 ' ;  
 	 	 	 c a s e   9 :   r e t u r n   ' L v l 9 ' ;  
 	 	 	 c a s e   1 0 :   r e t u r n   ' L v l 1 0 ' ;  
 	 	 	 c a s e   1 1 :   r e t u r n   ' L v l 1 1 ' ;  
 	 	 	 c a s e   1 2 :   r e t u r n   ' L v l 1 2 ' ;  
 	 	 	 c a s e   1 3 :   r e t u r n   ' L v l 1 3 ' ;  
 	 	 	 c a s e   1 4 :   r e t u r n   ' L v l 1 4 ' ;  
 	 	 	 c a s e   1 5 :   r e t u r n   ' L v l 1 5 ' ;  
 	 	 	 c a s e   1 6 :   r e t u r n   ' L v l 1 6 ' ;  
 	 	 	 c a s e   1 7 :   r e t u r n   ' L v l 1 7 ' ;  
 	 	 	 c a s e   1 8 :   r e t u r n   ' L v l 1 8 ' ;  
 	 	 	 c a s e   1 9 :   r e t u r n   ' L v l 1 9 ' ;  
 	 	 	 c a s e   2 0 :   r e t u r n   ' L v l 2 0 ' ;  
 	 	 	 c a s e   2 1 :   r e t u r n   ' L v l 2 1 ' ;  
 	 	 	 c a s e   2 2 :   r e t u r n   ' L v l 2 2 ' ;  
 	 	 	 c a s e   2 3 :   r e t u r n   ' L v l 2 3 ' ;  
 	 	 	 c a s e   2 4 :   r e t u r n   ' L v l 2 4 ' ;  
 	 	 	 c a s e   2 5 :   r e t u r n   ' L v l 2 5 ' ;  
 	 	 	 c a s e   2 6 :   r e t u r n   ' L v l 2 6 ' ;  
 	 	 	 c a s e   2 7 :   r e t u r n   ' L v l 2 7 ' ;  
 	 	 	 c a s e   2 8 :   r e t u r n   ' L v l 2 8 ' ;  
 	 	 	 c a s e   2 9 :   r e t u r n   ' L v l 2 9 ' ;  
 	 	 	 c a s e   3 0 :   r e t u r n   ' L v l 3 0 ' ;  
 	 	 	 c a s e   3 1 :   r e t u r n   ' L v l 3 1 ' ;  
 	 	 	 c a s e   3 2 :   r e t u r n   ' L v l 3 2 ' ;  
 	 	 	 c a s e   3 3 :   r e t u r n   ' L v l 3 3 ' ;  
 	 	 	 c a s e   3 4 :   r e t u r n   ' L v l 3 4 ' ;  
 	 	 	 c a s e   3 5 :   r e t u r n   ' L v l 3 5 ' ;  
 	 	 	 c a s e   3 6 :   r e t u r n   ' L v l 3 6 ' ;  
 	 	 	 c a s e   3 7 :   r e t u r n   ' L v l 3 7 ' ;  
 	 	 	 c a s e   3 8 :   r e t u r n   ' L v l 3 8 ' ;  
 	 	 	 c a s e   3 9 :   r e t u r n   ' L v l 3 9 ' ;  
 	 	 	 c a s e   4 0 :   r e t u r n   ' L v l 4 0 ' ;  
 	 	 	 c a s e   4 1 :   r e t u r n   ' L v l 4 1 ' ;  
 	 	 	 c a s e   4 2 :   r e t u r n   ' L v l 4 2 ' ;  
 	 	 	 c a s e   4 3 :   r e t u r n   ' L v l 4 3 ' ;  
 	 	 	 c a s e   4 4 :   r e t u r n   ' L v l 4 4 ' ;  
 	 	 	 c a s e   4 5 :   r e t u r n   ' L v l 4 5 ' ;  
 	 	 	 c a s e   4 6 :   r e t u r n   ' L v l 4 6 ' ;  
 	 	 	 c a s e   4 7 :   r e t u r n   ' L v l 4 7 ' ;  
 	 	 	 c a s e   4 8 :   r e t u r n   ' L v l 4 8 ' ;  
 	 	 	 c a s e   4 9 :   r e t u r n   ' L v l 4 9 ' ;  
 	 	 	 c a s e   5 0 :   r e t u r n   ' L v l 5 0 ' ;  
 	 	  
 	 	 	 d e f a u l t :   r e t u r n   ' ' ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   ' ' ;  
 	 } 	  
 	  
 	 p u b l i c   f u n c t i o n   C a n S p r i n t (   s p e e d   :   f l o a t   )   :   b o o l  
 	 {  
 	 	 i f (   ! s u p e r . C a n S p r i n t (   s p e e d   )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 } 	 	  
 	 	 i f (   r a n g e d W e a p o n   & &   r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '   )  
 	 	 {  
 	 	 	 i f   (   t h i s . G e t P l a y e r C o m b a t S t a n c e ( )   = =     P C S _ A l e r t N e a r   )  
 	 	 	 {  
 	 	 	 	 i f   (   I s S p r i n t A c t i o n P r e s s e d ( )   )  
 	 	 	 	 	 O n R a n g e d F o r c e H o l s t e r (   t r u e ,   f a l s e   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 i f (   G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S w i m m i n g '   & &   G e t S t a t ( B C S _ S t a m i n a )   < =   0   )  
 	 	 {  
 	 	 	 S e t S p r i n t A c t i o n P r e s s e d ( f a l s e , t r u e ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   M a n a g e S l e e p i n g ( )  
 	 {  
 	 	 t h e P l a y e r . R e m o v e B u f f I m m u n i t y _ A l l C r i t i c a l (   ' B e d '   ) ;  
 	 	 t h e P l a y e r . R e m o v e B u f f I m m u n i t y _ A l l N e g a t i v e (   ' B e d '   ) ;  
  
 	 	 t h e P l a y e r . P l a y e r S t o p A c t i o n (   P E A _ G o T o S l e e p   ) ;  
 	 }  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   R e s t o r e H o r s e M a n a g e r ( )   :   b o o l  
 	 {  
 	 	 v a r   h o r s e T e m p l a t e   	 :   C E n t i t y T e m p l a t e ;  
 	 	 v a r   h o r s e M a n a g e r   	 :   W 3 H o r s e M a n a g e r ; 	  
 	 	  
 	 	 i f   (   G e t H o r s e M a n a g e r ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 h o r s e T e m p l a t e   =   ( C E n t i t y T e m p l a t e ) L o a d R e s o u r c e ( " h o r s e _ m a n a g e r " ) ;  
 	 	 h o r s e M a n a g e r   =   ( W 3 H o r s e M a n a g e r ) t h e G a m e . C r e a t e E n t i t y ( h o r s e T e m p l a t e ,   G e t W o r l d P o s i t i o n ( ) , , , , , P M _ P e r s i s t ) ;  
 	 	 h o r s e M a n a g e r . C r e a t e A t t a c h m e n t ( t h i s ) ;  
 	 	 h o r s e M a n a g e r . O n C r e a t e d ( ) ;  
 	 	 E n t i t y H a n d l e S e t (   h o r s e M a n a g e r H a n d l e ,   h o r s e M a n a g e r   ) ; 	  
 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	 f i n a l   f u n c t i o n   P e r f o r m P a r r y C h e c k (   p a r r y I n f o   :   S P a r r y I n f o   )   :   b o o l  
 	 {  
 	 	 i f (   s u p e r . P e r f o r m P a r r y C h e c k (   p a r r y I n f o   )   )  
 	 	 {  
 	 	 	 G a i n A d r e n a l i n e F r o m P e r k 2 1 (   ' p a r r y '   ) ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 r e t u r n   f a l s e ;  
 	 } 	  
 	  
 	 p r o t e c t e d   f i n a l   f u n c t i o n   P e r f o r m C o u n t e r C h e c k (   p a r r y I n f o :   S P a r r y I n f o   )   :   b o o l  
 	 {  
 	 	 v a r   f i s t F i g h t C h e c k ,   i s I n F i s t F i g h t 	 	 :   b o o l ;  
 	 	  
 	 	 i f (   s u p e r . P e r f o r m C o u n t e r C h e c k (   p a r r y I n f o   )   )  
 	 	 {  
 	 	 	 G a i n A d r e n a l i n e F r o m P e r k 2 1 (   ' c o u n t e r '   ) ;  
 	 	 	  
 	 	 	 i s I n F i s t F i g h t   =   F i s t F i g h t C h e c k (   p a r r y I n f o . t a r g e t ,   p a r r y I n f o . a t t a c k e r ,   f i s t F i g h t C h e c k   ) ;  
 	 	 	  
 	 	 	 i f (   i s I n F i s t F i g h t   & &   f i s t F i g h t C h e c k   )  
 	 	 	 {  
 	 	 	 	 F a c t s A d d (   " s t a t i s t i c s _ f i s t _ f i g h t _ c o u n t e r "   ) ;  
 	 	 	 	 A d d T i m e r (   ' F i s t F i g h t C o u n t e r T i m e r ' ,   0 . 5 f ,   ,   ,   ,   t r u e   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G a i n A d r e n a l i n e F r o m P e r k 2 1 (   n   :   n a m e   )  
 	 {  
 	 	 v a r   p e r k S t a t s ,   p e r k T i m e   :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   t a r g e t s 	 :   a r r a y < C A c t o r > ;  
 	 	  
 	 	 t a r g e t s   =   G e t H o s t i l e E n e m i e s ( ) ;  
 	 	  
 	 	 i f (   ! C a n U s e S k i l l (   S _ P e r k _ 2 1   )   | |   t a r g e t s . S i z e ( )   = =   0   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 p e r k T i m e   =   G e t S k i l l A t t r i b u t e V a l u e (   S _ P e r k _ 2 1 ,   ' p e r k 2 1 T i m e ' ,   f a l s e ,   f a l s e   ) ;  
 	 	  
 	 	 i f (   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( )   > =   t i m e F o r P e r k 2 1   +   p e r k T i m e . v a l u e A d d i t i v e   )  
 	 	 {  
 	 	 	 p e r k S t a t s   =   G e t S k i l l A t t r i b u t e V a l u e (   S _ P e r k _ 2 1 ,   n   ,   f a l s e ,   f a l s e   ) ;  
 	 	 	 G a i n S t a t (   B C S _ F o c u s ,   p e r k S t a t s . v a l u e A d d i t i v e   ) ;  
 	 	 	 t i m e F o r P e r k 2 1   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	 	  
 	 	 	 A d d E f f e c t D e f a u l t (   E E T _ P e r k 2 1 I n t e r n a l C o o l d o w n ,   t h i s ,   " P e r k 2 1 " ,   f a l s e   ) ;  
 	 	 } 	  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   F i s t F i g h t C o u n t e r T i m e r (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 F a c t s R e m o v e (   " s t a t i s t i c s _ f i s t _ f i g h t _ c o u n t e r "   ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   I s S i g n B l o c k e d ( s i g n T y p e   :   E S i g n T y p e )   :   b o o l  
 	 {  
 	 	 s w i t c h (   s i g n T y p e   )  
 	 	 {  
 	 	 	 c a s e   S T _ A a r d   :  
 	 	 	 	 r e t u r n   I s R a d i a l S l o t B l o c k e d   (   ' A a r d ' ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   S T _ A x i i   :  
 	 	 	 	 r e t u r n   I s R a d i a l S l o t B l o c k e d   (   ' A x i i ' ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   S T _ I g n i   :  
 	 	 	 	 r e t u r n   I s R a d i a l S l o t B l o c k e d   (   ' I g n i ' ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   S T _ Q u e n   :  
 	 	 	 	 r e t u r n   I s R a d i a l S l o t B l o c k e d   (   ' Q u e n ' ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 c a s e   S T _ Y r d e n   :  
 	 	 	 	 r e t u r n   I s R a d i a l S l o t B l o c k e d   (   ' Y r d e n ' ) ;  
 	 	 	 	 b r e a k ;  
 	 	 	 d e f a u l t :  
 	 	 	 	 b r e a k ;  
 	 	 }  
 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   A d d A n I t e m W i t h A u t o g e n L e v e l A n d Q u a l i t y ( i t e m N a m e   :   n a m e ,   d e s i r e d L e v e l   :   i n t ,   m i n Q u a l i t y   :   i n t ,   o p t i o n a l   e q u i p I t e m   :   b o o l )  
 	 {  
 	 	 v a r   i t e m L e v e l ,   q u a l i t y   :   i n t ;  
 	 	 v a r   i d s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   a t t e m p t C o u n t e r   :   i n t ;  
 	 	  
 	 	 i t e m L e v e l   =   0 ;  
 	 	 q u a l i t y   =   0 ;  
 	 	 a t t e m p t C o u n t e r   =   0 ;  
 	 	 w h i l e ( i t e m L e v e l   ! =   d e s i r e d L e v e l   | |   q u a l i t y   <   m i n Q u a l i t y )  
 	 	 {  
 	 	 	 a t t e m p t C o u n t e r   + =   1 ;  
 	 	 	 i d s . C l e a r ( ) ;  
 	 	 	 i d s   =   i n v . A d d A n I t e m ( i t e m N a m e ,   1 ,   t r u e ) ;  
 	 	 	 i t e m L e v e l   =   i n v . G e t I t e m L e v e l ( i d s [ 0 ] ) ;  
 	 	 	 q u a l i t y   =   R o u n d M a t h ( C a l c u l a t e A t t r i b u t e V a l u e ( i n v . G e t I t e m A t t r i b u t e V a l u e ( i d s [ 0 ] ,   ' q u a l i t y ' ) ) ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f ( a t t e m p t C o u n t e r   > =   1 0 0 0 )  
 	 	 	 	 b r e a k ;  
 	 	 	  
 	 	 	 i f ( i t e m L e v e l   ! =   d e s i r e d L e v e l   | |   q u a l i t y   <   m i n Q u a l i t y )  
 	 	 	 	 i n v . R e m o v e I t e m ( i d s [ 0 ] ) ;  
 	 	 }  
 	 	  
 	 	 i f ( e q u i p I t e m )  
 	 	 	 E q u i p I t e m ( i d s [ 0 ] ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   A d d A n I t e m W i t h A u t o g e n L e v e l ( i t e m N a m e   :   n a m e ,   d e s i r e d L e v e l   :   i n t )  
 	 {  
 	 	 v a r   i t e m L e v e l   :   i n t ;  
 	 	 v a r   i d s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   a t t e m p t C o u n t e r   :   i n t ;  
  
 	 	 i t e m L e v e l   =   0 ;  
 	 	 w h i l e ( i t e m L e v e l   ! =   d e s i r e d L e v e l )  
 	 	 {  
 	 	 	 a t t e m p t C o u n t e r   + =   1 ;  
 	 	 	 i d s . C l e a r ( ) ;  
 	 	 	 i d s   =   i n v . A d d A n I t e m ( i t e m N a m e ,   1 ,   t r u e ) ;  
 	 	 	 i t e m L e v e l   =   i n v . G e t I t e m L e v e l ( i d s [ 0 ] ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f ( a t t e m p t C o u n t e r   > =   1 0 0 0 )  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 i f ( i t e m L e v e l   ! =   d e s i r e d L e v e l )  
 	 	 	 	 i n v . R e m o v e I t e m ( i d s [ 0 ] ) ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   A d d A n I t e m W i t h M i n Q u a l i t y ( i t e m N a m e   :   n a m e ,   m i n Q u a l i t y   :   i n t ,   o p t i o n a l   e q u i p   :   b o o l )  
 	 {  
 	 	 v a r   q u a l i t y   :   i n t ;  
 	 	 v a r   i d s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   a t t e m p t C o u n t e r   :   i n t ;  
  
 	 	 q u a l i t y   =   0 ;  
 	 	 w h i l e ( q u a l i t y   <   m i n Q u a l i t y )  
 	 	 {  
 	 	 	 a t t e m p t C o u n t e r   + =   1 ;  
 	 	 	 i d s . C l e a r ( ) ;  
 	 	 	 i d s   =   i n v . A d d A n I t e m ( i t e m N a m e ,   1 ,   t r u e ) ;  
 	 	 	 q u a l i t y   =   R o u n d M a t h ( C a l c u l a t e A t t r i b u t e V a l u e ( i n v . G e t I t e m A t t r i b u t e V a l u e ( i d s [ 0 ] ,   ' q u a l i t y ' ) ) ) ;  
 	 	 	  
 	 	 	  
 	 	 	 i f ( a t t e m p t C o u n t e r   > =   1 0 0 0 )  
 	 	 	 	 b r e a k ;  
 	 	 	 	  
 	 	 	 i f ( q u a l i t y   <   m i n Q u a l i t y )  
 	 	 	 	 i n v . R e m o v e I t e m ( i d s [ 0 ] ) ;  
 	 	 }  
 	 	  
 	 	 i f ( e q u i p )  
 	 	 	 E q u i p I t e m ( i d s [ 0 ] ) ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   I s S e t B o n u s A c t i v e (   b o n u s   :   E I t e m S e t B o n u s   )   :   b o o l  
 	 {  
 	 	 s w i t c h ( b o n u s )  
 	 	 {  
 	 	 	 c a s e   E I S B _ L y n x _ 1 : 	 	 	 r e t u r n   a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ L y n x   ]   > =   t h e G a m e . p a r a m s . I T E M S _ R E Q U I R E D _ F O R _ M I N O R _ S E T _ B O N U S ;  
 	 	 	 c a s e   E I S B _ L y n x _ 2 : 	 	 	 r e t u r n   a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ L y n x   ]   > =   t h e G a m e . p a r a m s . I T E M S _ R E Q U I R E D _ F O R _ M A J O R _ S E T _ B O N U S ;  
 	 	 	 c a s e   E I S B _ G r y p h o n _ 1 : 	 	 r e t u r n   a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ G r y p h o n   ]   > =   t h e G a m e . p a r a m s . I T E M S _ R E Q U I R E D _ F O R _ M I N O R _ S E T _ B O N U S ;  
 	 	 	 c a s e   E I S B _ G r y p h o n _ 2 : 	 	 r e t u r n   a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ G r y p h o n   ]   > =   t h e G a m e . p a r a m s . I T E M S _ R E Q U I R E D _ F O R _ M A J O R _ S E T _ B O N U S ;  
 	 	 	 c a s e   E I S B _ B e a r _ 1 : 	 	 	 r e t u r n   a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ B e a r   ]   > =   t h e G a m e . p a r a m s . I T E M S _ R E Q U I R E D _ F O R _ M I N O R _ S E T _ B O N U S ;  
 	 	 	 c a s e   E I S B _ B e a r _ 2 : 	 	 	 r e t u r n   a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ B e a r   ]   > =   t h e G a m e . p a r a m s . I T E M S _ R E Q U I R E D _ F O R _ M A J O R _ S E T _ B O N U S ;  
 	 	 	 c a s e   E I S B _ W o l f _ 1 : 	 	 	 r e t u r n   a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ W o l f   ]   > =   t h e G a m e . p a r a m s . I T E M S _ R E Q U I R E D _ F O R _ M I N O R _ S E T _ B O N U S ;  
 	 	 	 c a s e   E I S B _ W o l f _ 2 : 	 	 	 r e t u r n   a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ W o l f   ]   > =   t h e G a m e . p a r a m s . I T E M S _ R E Q U I R E D _ F O R _ M A J O R _ S E T _ B O N U S ;  
 	 	 	 c a s e   E I S B _ R e d W o l f _ 1 : 	 	 r e t u r n   a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ R e d W o l f   ]   > =   t h e G a m e . p a r a m s . I T E M S _ R E Q U I R E D _ F O R _ M I N O R _ S E T _ B O N U S ;  
 	 	 	 c a s e   E I S B _ R e d W o l f _ 2 : 	 	 r e t u r n   a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ R e d W o l f   ]   > =   t h e G a m e . p a r a m s . I T E M S _ R E Q U I R E D _ F O R _ M A J O R _ S E T _ B O N U S ;  
 	 	 	 c a s e   E I S B _ V a m p i r e : 	 	 	 r e t u r n   a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ V a m p i r e   ]   > =   t h e G a m e . p a r a m s . I T E M S _ R E Q U I R E D _ F O R _ M I N O R _ S E T _ B O N U S ;  
 	 	 	 c a s e   E I S B _ N e t f l i x _ 1 : 	 	 r e t u r n   a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ N e t f l i x   ]   > =   t h e G a m e . p a r a m s . I T E M S _ R E Q U I R E D _ F O R _ M I N O R _ S E T _ B O N U S ;  
 	 	 	 c a s e   E I S B _ N e t f l i x _ 2 : 	 	 r e t u r n   a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ N e t f l i x   ]   > =   t h e G a m e . p a r a m s . I T E M S _ R E Q U I R E D _ F O R _ M A J O R _ S E T _ B O N U S ;  
 	 	 	 d e f a u l t : 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S e t P a r t s E q u i p p e d (   s e t T y p e   :   E I t e m S e t T y p e   )   :   i n t  
 	 {  
 	 	 r e t u r n   a m o u n t O f S e t P i e c e s E q u i p p e d [   s e t T y p e   ] ;  
 	 }  
 	  
 	 p r o t e c t e d   f u n c t i o n   U p d a t e I t e m S e t B o n u s e s (   i t e m   :   S I t e m U n i q u e I d ,   i n c r e m e n t   :   b o o l   )  
 	 {  
 	 	 v a r   s e t T y p e   :   E I t e m S e t T y p e ;  
 	 	 v a r   t u t o r i a l S t a t e S e t s   :   W 3 T u t o r i a l M a n a g e r U I H a n d l e r S t a t e S e t I t e m s U n l o c k e d ;  
 	 	 v a r   i d   :   S I t e m U n i q u e I d ;  
 	 	 	 	 	  
 	 	 i f (   ! i n v . I s I d V a l i d (   i t e m   )   | |   ! i n v . I t e m H a s T a g ( i t e m ,   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ B O N U S   )   )      
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 s e t T y p e   =   C h e c k S e t T y p e (   i t e m   ) ;  
 	 	  
 	 	 i f (   i n c r e m e n t   )  
 	 	 {  
 	 	 	 a m o u n t O f S e t P i e c e s E q u i p p e d [   s e t T y p e   ]   + =   1 ;  
 	 	 	  
 	 	 	 i f (   a m o u n t O f S e t P i e c e s E q u i p p e d [   s e t T y p e   ]   > =   t h e G a m e . p a r a m s . I T E M S _ R E Q U I R E D _ F O R _ M I N O R _ S E T _ B O N U S   & &   S h o u l d P r o c e s s T u t o r i a l (   ' T u t o r i a l S e t B o n u s e s U n l o c k e d '   )   & &   t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . u i H a n d l e r   & &   t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . u i H a n d l e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' S e t I t e m s U n l o c k e d '   )  
 	 	 	 {  
 	 	 	 	 t u t o r i a l S t a t e S e t s   =   (   W 3 T u t o r i a l M a n a g e r U I H a n d l e r S t a t e S e t I t e m s U n l o c k e d   ) t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . u i H a n d l e r . G e t C u r r e n t S t a t e ( ) ;  
 	 	 	 	 t u t o r i a l S t a t e S e t s . O n S e t B o n u s C o m p l e t e d ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f (   a m o u n t O f S e t P i e c e s E q u i p p e d [   s e t T y p e   ]   >   0   )  
 	 	 {  
 	 	 	 a m o u n t O f S e t P i e c e s E q u i p p e d [   s e t T y p e   ]   - =   1 ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   s e t T y p e   ! =   E I S T _ V a m p i r e   )  
 	 	 {  
 	 	 	 i f ( a m o u n t O f S e t P i e c e s E q u i p p e d [   s e t T y p e   ]   = =   t h e G a m e . p a r a m s . I T E M S _ R E Q U I R E D _ F O R _ M A J O R _ S E T _ B O N U S )  
 	 	 	 {  
 	 	 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . A d d A c h i e v e m e n t (   E A _ R e a d y T o R o l l   ) ;  
 	 	 	 }  
 	 	 	 e l s e    
 	 	 	 {  
 	 	 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . N o t i c e A c h i e v e m e n t P r o g r e s s (   E A _ R e a d y T o R o l l ,   a m o u n t O f S e t P i e c e s E q u i p p e d [   s e t T y p e   ] ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 M a n a g e A c t i v e S e t B o n u s e s (   s e t T y p e   ) ;  
 	 	  
 	 	  
 	 	 M a n a g e S e t B o n u s e s S o u n d b a n k s (   s e t T y p e   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   M a n a g e A c t i v e S e t B o n u s e s (   s e t T y p e   :   E I t e m S e t T y p e   )  
 	 {  
 	 	 v a r   l _ i 	 	 	 	 :   i n t ;  
 	 	  
 	 	  
 	 	 i f (   s e t T y p e   = =   E I S T _ L y n x   )  
 	 	 {  
 	 	 	  
 	 	 	 i f (   H a s B u f f (   E E T _ L y n x S e t B o n u s   )   & &   ! I s S e t B o n u s A c t i v e (   E I S B _ L y n x _ 1   )   )  
 	 	 	 {  
 	 	 	 	 R e m o v e B u f f (   E E T _ L y n x S e t B o n u s   ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 e l s e   i f (   s e t T y p e   = =   E I S T _ G r y p h o n   )  
 	 	 {  
 	 	 	  
 	 	 	 i f (   ! I s S e t B o n u s A c t i v e (   E I S B _ G r y p h o n _ 1   )   )  
 	 	 	 {  
 	 	 	 	 R e m o v e B u f f (   E E T _ G r y p h o n S e t B o n u s   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f (   I s S e t B o n u s A c t i v e (   E I S B _ G r y p h o n _ 2   )   & &   ! H a s B u f f (   E E T _ G r y p h o n S e t B o n u s Y r d e n   )   )  
 	 	 	 {  
 	 	 	 	 f o r (   l _ i   =   0   ;   l _ i   <   y r d e n E n t i t i e s . S i z e ( )   ;   l _ i   + =   1   )  
 	 	 	 	 {  
 	 	 	 	 	 i f (   y r d e n E n t i t i e s [   l _ i   ] . G e t I s P l a y e r I n s i d e ( )   & &   ! y r d e n E n t i t i e s [   l _ i   ] . I s A l t e r n a t e C a s t ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 A d d E f f e c t D e f a u l t (   E E T _ G r y p h o n S e t B o n u s Y r d e n ,   t h i s ,   " G r y p h o n S e t B o n u s Y r d e n "   ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 R e m o v e B u f f (   E E T _ G r y p h o n S e t B o n u s Y r d e n   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C h e c k S e t T y p e B y N a m e (   i t e m N a m e   :   n a m e   )   :   E I t e m S e t T y p e  
 	 {  
 	 	 v a r   d m   :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ;  
 	 	  
 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	  
 	 	 i f (   d m . I t e m H a s T a g (   i t e m N a m e ,   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ L Y N X   )   )  
 	 	 {  
 	 	 	 r e t u r n   E I S T _ L y n x ;  
 	 	 }  
 	 	 e l s e  
 	 	 i f (   d m . I t e m H a s T a g (   i t e m N a m e ,   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ G R Y P H O N   )   )  
 	 	 {  
 	 	 	 r e t u r n   E I S T _ G r y p h o n ;  
 	 	 }  
 	 	 e l s e  
 	 	 i f (   d m . I t e m H a s T a g (   i t e m N a m e ,   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ B E A R   )   )  
 	 	 {  
 	 	 	 r e t u r n   E I S T _ B e a r ;  
 	 	 }  
 	 	 e l s e  
 	 	 i f (   d m . I t e m H a s T a g (   i t e m N a m e ,   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ W O L F   )   )  
 	 	 {  
 	 	 	 r e t u r n   E I S T _ W o l f ;  
 	 	 }  
 	 	 e l s e  
 	 	 i f (   d m . I t e m H a s T a g (   i t e m N a m e ,   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ R E D _ W O L F   )   )  
 	 	 {  
 	 	 	 r e t u r n   E I S T _ R e d W o l f ;  
 	 	 }  
 	 	 e l s e  
 	 	 i f (   d m . I t e m H a s T a g (   i t e m N a m e ,   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ V A M P I R E   )   )  
 	 	 {  
 	 	 	 r e t u r n   E I S T _ V a m p i r e ;  
 	 	 }  
 	 	 e l s e  
 	 	 i f (   d m . I t e m H a s T a g (   i t e m N a m e ,   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ V I P E R   )   )  
 	 	 {  
 	 	 	 r e t u r n   E I S T _ V i p e r ;  
 	 	 }  
 	 	 e l s e  
 	 	 i f (   d m . I t e m H a s T a g (   i t e m N a m e ,   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ N E T F L I X   )   )  
 	 	 {  
 	 	 	 r e t u r n   E I S T _ N e t f l i x ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n   E I S T _ U n d e f i n e d ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   C h e c k S e t T y p e (   i t e m   :   S I t e m U n i q u e I d   )   :   E I t e m S e t T y p e  
 	 {  
 	 	 v a r   s t o p L o o p   	 :   b o o l ;  
 	 	 v a r   t a g s   	 	 :   a r r a y < n a m e > ;  
 	 	 v a r   i   	 	 	 :   i n t ;  
 	 	 v a r   s e t T y p e   	 :   E I t e m S e t T y p e ;  
 	 	  
 	 	 s t o p L o o p   =   f a l s e ;  
 	 	  
 	 	 i n v . G e t I t e m T a g s (   i t e m ,   t a g s   ) ;  
 	 	  
 	 	  
 	 	 f o r (   i = 0 ;   i < t a g s . S i z e ( ) ;   i + = 1   )  
 	 	 {  
 	 	 	 s w i t c h (   t a g s [ i ]   )  
 	 	 	 {  
 	 	 	 	 c a s e   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ L Y N X :  
 	 	 	 	 c a s e   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ G R Y P H O N :  
 	 	 	 	 c a s e   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ B E A R :  
 	 	 	 	 c a s e   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ W O L F :  
 	 	 	 	 c a s e   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ R E D _ W O L F :  
 	 	 	 	 c a s e   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ V A M P I R E :  
 	 	 	 	 c a s e   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ V I P E R :  
 	 	 	 	 c a s e   t h e G a m e . p a r a m s . I T E M _ S E T _ T A G _ N E T F L I X :  
 	 	 	 	 	 s e t T y p e   =   S e t I t e m N a m e T o T y p e (   t a g s [ i ]   ) ;  
 	 	 	 	 	 s t o p L o o p   =   t r u e ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 } 	 	  
 	 	 	 i f   (   s t o p L o o p   )  
 	 	 	 {  
 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   s e t T y p e ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S e t B o n u s S t a t u s B y N a m e (   i t e m N a m e   :   n a m e ,   o u t   d e s c 1 ,   d e s c 2   :   s t r i n g ,   o u t   i s A c t i v e 1 ,   i s A c t i v e 2   :   b o o l   )   :   E I t e m S e t T y p e  
 	 {  
 	 	 v a r   s e t T y p e   :   E I t e m S e t T y p e ;  
 	 	  
 	 	 i f (   t h e G a m e . G e t D L C M a n a g e r ( ) . I s E P 2 E n a b l e d ( )   )  
 	 	 {  
 	 	 	 s e t T y p e   =   C h e c k S e t T y p e B y N a m e (   i t e m N a m e   ) ;  
 	 	 	 S e t B o n u s S t a t u s B y T y p e (   s e t T y p e ,   d e s c 1 ,   d e s c 2 ,   i s A c t i v e 1 ,   i s A c t i v e 2   ) ;  
 	 	 	  
 	 	 	 r e t u r n   s e t T y p e ; 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n   E I S T _ U n d e f i n e d ;  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S e t B o n u s S t a t u s (   i t e m   :   S I t e m U n i q u e I d ,   o u t   d e s c 1 ,   d e s c 2   :   s t r i n g ,   o u t   i s A c t i v e 1 ,   i s A c t i v e 2   :   b o o l   )   :   E I t e m S e t T y p e  
 	 {  
 	 	 v a r   s e t T y p e   :   E I t e m S e t T y p e ;  
 	 	  
 	 	 i f (   t h e G a m e . G e t D L C M a n a g e r ( ) . I s E P 2 E n a b l e d ( )   )  
 	 	 {  
 	 	 	 s e t T y p e   =   C h e c k S e t T y p e (   i t e m   ) ;  
 	 	 	 S e t B o n u s S t a t u s B y T y p e (   s e t T y p e ,   d e s c 1 ,   d e s c 2 ,   i s A c t i v e 1 ,   i s A c t i v e 2   ) ;  
 	 	 	  
 	 	 	 r e t u r n   s e t T y p e ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n   E I S T _ U n d e f i n e d ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   S e t B o n u s S t a t u s B y T y p e ( s e t T y p e   :   E I t e m S e t T y p e ,   o u t   d e s c 1 ,   d e s c 2   :   s t r i n g ,   o u t   i s A c t i v e 1 ,   i s A c t i v e 2   :   b o o l ) : v o i d  
 	 {  
 	 	 v a r   s e t B o n u s   :   E I t e m S e t B o n u s ;  
 	 	  
 	 	 i f (   a m o u n t O f S e t P i e c e s E q u i p p e d [   s e t T y p e   ]   > =   t h e G a m e . p a r a m s . I T E M S _ R E Q U I R E D _ F O R _ M I N O R _ S E T _ B O N U S   )  
 	 	 {  
 	 	 	 i s A c t i v e 1   =   t r u e ; 	 	 	  
 	 	 }  
 	 	  
 	 	 i f (   a m o u n t O f S e t P i e c e s E q u i p p e d [   s e t T y p e   ]   > =   t h e G a m e . p a r a m s . I T E M S _ R E Q U I R E D _ F O R _ M A J O R _ S E T _ B O N U S   )  
 	 	 {  
 	 	 	 i s A c t i v e 2   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 s e t B o n u s   =   I t e m S e t T y p e T o I t e m S e t B o n u s (   s e t T y p e ,   1   ) ;  
 	 	 d e s c 1   =   G e t S e t B o n u s T o o l t i p D e s c r i p t i o n (   s e t B o n u s   ) ;  
 	 	  
 	 	 s e t B o n u s   =   I t e m S e t T y p e T o I t e m S e t B o n u s (   s e t T y p e ,   2   ) ;  
 	 	 d e s c 2   =   G e t S e t B o n u s T o o l t i p D e s c r i p t i o n (   s e t B o n u s   ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I t e m S e t T y p e T o I t e m S e t B o n u s (   s e t T y p e   :   E I t e m S e t T y p e ,   n r   :   i n t   )   :   E I t e m S e t B o n u s  
 	 {  
 	 	 v a r   s e t B o n u s   :   E I t e m S e t B o n u s ;  
 	  
 	 	 i f (   n r   = =   1   )  
 	 	 {  
 	 	 	 s w i t c h (   s e t T y p e   )  
 	 	 	 {  
 	 	 	 	 c a s e   E I S T _ L y n x :   	 	 	 s e t B o n u s   =   E I S B _ L y n x _ 1 ; 	 	 b r e a k ;  
 	 	 	 	 c a s e   E I S T _ G r y p h o n :   	 	 	 s e t B o n u s   =   E I S B _ G r y p h o n _ 1 ; 	 b r e a k ;  
 	 	 	 	 c a s e   E I S T _ B e a r :   	 	 	 s e t B o n u s   =   E I S B _ B e a r _ 1 ; 	 	 b r e a k ;  
 	 	 	 	 c a s e   E I S T _ W o l f :   	 	 	 s e t B o n u s   =   E I S B _ W o l f _ 1 ; 	 	 b r e a k ;  
 	 	 	 	 c a s e   E I S T _ R e d W o l f :   	 	 	 s e t B o n u s   =   E I S B _ R e d W o l f _ 1 ; 	 b r e a k ;  
 	 	 	 	 c a s e   E I S T _ V a m p i r e : 	 	 	 s e t B o n u s   =   E I S B _ V a m p i r e ; 	 b r e a k ;  
 	 	 	 	 c a s e   E I S T _ N e t f l i x : 	 	 	 s e t B o n u s   =   E I S B _ N e t f l i x _ 1 ; 	 b r e a k ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 s w i t c h (   s e t T y p e   )  
 	 	 	 {  
 	 	 	 	 c a s e   E I S T _ L y n x :   	 	 	 s e t B o n u s   =   E I S B _ L y n x _ 2 ; 	 	 b r e a k ;  
 	 	 	 	 c a s e   E I S T _ G r y p h o n :   	 	 	 s e t B o n u s   =   E I S B _ G r y p h o n _ 2 ; 	 b r e a k ;  
 	 	 	 	 c a s e   E I S T _ B e a r :   	 	 	 s e t B o n u s   =   E I S B _ B e a r _ 2 ; 	 	 b r e a k ;  
 	 	 	 	 c a s e   E I S T _ W o l f :   	 	 	 s e t B o n u s   =   E I S B _ W o l f _ 2 ; 	 	 b r e a k ;  
 	 	 	 	 c a s e   E I S T _ R e d W o l f :   	 	 	 s e t B o n u s   =   E I S B _ R e d W o l f _ 2 ; 	 b r e a k ;  
 	 	 	 	 c a s e   E I S T _ V a m p i r e : 	 	 	 s e t B o n u s   =   E I S B _ U n d e f i n e d ; 	 b r e a k ;  
 	 	 	 	 c a s e   E I S T _ N e t f l i x : 	 	 	 s e t B o n u s   =   E I S B _ N e t f l i x _ 2 ; 	 b r e a k ;  
 	 	 	 }  
 	 	 }    
 	  
 	 	 r e t u r n   s e t B o n u s ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t S e t B o n u s T o o l t i p D e s c r i p t i o n (   b o n u s   :   E I t e m S e t B o n u s   )   :   s t r i n g  
 	 {  
 	 	 v a r   f i n a l S t r i n g   :   s t r i n g ;  
 	 	 v a r   a r r S t r i n g 	 :   a r r a y < s t r i n g > ;  
 	 	 v a r   d m 	 	 	 :   C D e f i n i t i o n s M a n a g e r A c c e s s o r ;  
 	 	 v a r   m i n ,   m a x   	 :   S A b i l i t y A t t r i b u t e V a l u e ;  
 	 	 v a r   t e m p S t r i n g 	 :   s t r i n g ;  
 	 	  
 	 	 s w i t c h (   b o n u s   )  
 	 	 {  
 	 	 	 c a s e   E I S B _ L y n x _ 1 : 	 	 	 t e m p S t r i n g   =   " s k i l l _ d e s c _ l y n x _ s e t _ a b i l i t y 1 " ;   b r e a k ;  
 	 	 	 c a s e   E I S B _ L y n x _ 2 : 	 	 	 t e m p S t r i n g   =   " s k i l l _ d e s c _ l y n x _ s e t _ a b i l i t y 2 " ;   b r e a k ;  
 	 	 	 c a s e   E I S B _ G r y p h o n _ 1 : 	 	 t e m p S t r i n g   =   " s k i l l _ d e s c _ g r y p h o n _ s e t _ a b i l i t y 1 " ;   b r e a k ;  
 	 	 	 c a s e   E I S B _ G r y p h o n _ 2 : 	 	 t e m p S t r i n g   =   " s k i l l _ d e s c _ g r y p h o n _ s e t _ a b i l i t y 2 " ;   b r e a k ;  
 	 	 	 c a s e   E I S B _ B e a r _ 1 : 	 	 	 t e m p S t r i n g   =   " s k i l l _ d e s c _ b e a r _ s e t _ a b i l i t y 1 " ;   b r e a k ;  
 	 	 	 c a s e   E I S B _ B e a r _ 2 : 	 	 	 t e m p S t r i n g   =   " s k i l l _ d e s c _ b e a r _ s e t _ a b i l i t y 2 " ;   b r e a k ;  
 	 	 	 c a s e   E I S B _ W o l f _ 1 : 	 	 	 t e m p S t r i n g   =   " s k i l l _ d e s c _ w o l f _ s e t _ a b i l i t y 2 " ;   b r e a k ;  
 	 	 	 c a s e   E I S B _ W o l f _ 2 : 	 	 	 t e m p S t r i n g   =   " s k i l l _ d e s c _ w o l f _ s e t _ a b i l i t y 1 " ;   b r e a k ;  
 	 	 	 c a s e   E I S B _ R e d W o l f _ 1 : 	 	 t e m p S t r i n g   =   " s k i l l _ d e s c _ r e d _ w o l f _ s e t _ a b i l i t y 1 " ;   b r e a k ;  
 	 	 	 c a s e   E I S B _ R e d W o l f _ 2 : 	 	 t e m p S t r i n g   =   " s k i l l _ d e s c _ r e d _ w o l f _ s e t _ a b i l i t y 2 " ;   b r e a k ;  
 	 	 	 c a s e   E I S B _ V a m p i r e : 	 	 	 t e m p S t r i n g   =   " s k i l l _ d e s c _ v a m p i r e _ s e t _ a b i l i t y 1 " ;   b r e a k ;  
 	 	 	 c a s e   E I S B _ N e t f l i x _ 1 : 	 	 t e m p S t r i n g   =   " s k i l l _ d e s c _ n e t f l i x _ s e t _ a b i l i t y 1 " ;   b r e a k ;  
 	 	 	 c a s e   E I S B _ N e t f l i x _ 2 : 	 	 t e m p S t r i n g   =   " s k i l l _ d e s c _ n e t f l i x _ s e t _ a b i l i t y 2 " ;   b r e a k ;  
 	 	 	 d e f a u l t : 	 	 	 	 	 t e m p S t r i n g   =   " " ;   b r e a k ;  
 	 	 }  
 	 	  
 	 	 d m   =   t h e G a m e . G e t D e f i n i t i o n s M a n a g e r ( ) ;  
 	 	  
 	 	 s w i t c h (   b o n u s   )  
 	 	 {  
 	 	 c a s e   E I S B _ L y n x _ 1 :  
 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' L y n x S e t B o n u s E f f e c t ' ,   ' d u r a t i o n ' ,   m i n ,   m a x   ) ;  
 	 	 	 a r r S t r i n g . P u s h B a c k (   F l o a t T o S t r i n g (   m i n . v a l u e A d d i t i v e   )   ) ;  
 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' L y n x S e t B o n u s E f f e c t ' ,   ' l y n x _ d m g _ b o o s t ' ,   m i n ,   m a x   ) ;  
 	 	 	 a r r S t r i n g . P u s h B a c k (   F l o a t T o S t r i n g (   m i n . v a l u e A d d i t i v e   *   1 0 0   )   ) ;    
 	 	 	 a r r S t r i n g . P u s h B a c k (   F l o a t T o S t r i n g (   m i n . v a l u e A d d i t i v e   *   1 0 0   *   a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ L y n x   ]   )   ) ;  
 	 	 	 f i n a l S t r i n g   =   G e t L o c S t r i n g B y K e y E x t W i t h P a r a m s (   t e m p S t r i n g , , , a r r S t r i n g   ) ;  
 	 	 	 b r e a k ;  
 	 	 c a s e   E I S B _ L y n x _ 2 :  
 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   G e t S e t B o n u s A b i l i t y (   E I S B _ L y n x _ 2   ) ,   ' l y n x _ 2 _ d m g _ b o o s t ' ,   m i n ,   m a x   ) ;  
 	 	 	 a r r S t r i n g . P u s h B a c k (   F l o a t T o S t r i n g (   m i n . v a l u e A d d i t i v e   *   1 0 0   )   ) ;  
 	 	 	  
 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   G e t S e t B o n u s A b i l i t y (   E I S B _ L y n x _ 2   ) ,   ' l y n x _ 2 _ a d r e n a l i n e _ c o s t ' ,   m i n ,   m a x   ) ;  
 	 	 	 a r r S t r i n g . P u s h B a c k (   F l o a t T o S t r i n g (   m i n . v a l u e A d d i t i v e   )   ) ;  
 	 	 	  
 	 	 	 f i n a l S t r i n g   =   G e t L o c S t r i n g B y K e y E x t W i t h P a r a m s (   t e m p S t r i n g , , , a r r S t r i n g   ) ;  
 	 	 	 b r e a k ;  
 	 	 c a s e   E I S B _ G r y p h o n _ 1 :  
 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' G r y p h o n S e t B o n u s E f f e c t ' ,   ' d u r a t i o n ' ,   m i n ,   m a x   ) ;  
 	 	 	 a r r S t r i n g . P u s h B a c k (   F l o a t T o S t r i n g (   m i n . v a l u e A d d i t i v e   )   ) ;  
 	 	 	 f i n a l S t r i n g   =   G e t L o c S t r i n g B y K e y E x t W i t h P a r a m s (   t e m p S t r i n g , , , a r r S t r i n g   ) ;    
 	 	 	 b r e a k ; 	 	  
 	 	 c a s e   E I S B _ G r y p h o n _ 2 :  
 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' G r y p h o n S e t B o n u s Y r d e n E f f e c t ' ,   ' t r i g g e r _ s c a l e ' ,   m i n ,   m a x   ) ;  
 	 	 	 a r r S t r i n g . P u s h B a c k (   F l o a t T o S t r i n g (   (   m i n . v a l u e A d d i t i v e   -   1   ) *   1 0 0 )   ) ;  
 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' G r y p h o n S e t B o n u s Y r d e n E f f e c t ' ,   ' s t a m i n a R e g e n ' ,   m i n ,   m a x   ) ;  
 	 	 	 a r r S t r i n g . P u s h B a c k (   F l o a t T o S t r i n g (   m i n . v a l u e M u l t i p l i c a t i v e   *   1 0 0 )   ) ;  
 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' G r y p h o n S e t B o n u s Y r d e n E f f e c t ' ,   ' s p e l l _ p o w e r ' ,   m i n ,   m a x   ) ;  
 	 	 	 a r r S t r i n g . P u s h B a c k (   F l o a t T o S t r i n g (   m i n . v a l u e M u l t i p l i c a t i v e   *   1 0 0 )   ) ;  
 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' G r y p h o n S e t B o n u s Y r d e n E f f e c t ' ,   ' g r y p h o n _ s e t _ b n s _ d m g _ r e d u c t i o n ' ,   m i n ,   m a x   ) ;  
 	 	 	 a r r S t r i n g . P u s h B a c k (   F l o a t T o S t r i n g (   m i n . v a l u e A d d i t i v e   *   1 0 0 )   ) ;  
 	 	 	 f i n a l S t r i n g   =   G e t L o c S t r i n g B y K e y E x t W i t h P a r a m s (   t e m p S t r i n g , , , a r r S t r i n g   ) ;  
 	 	 	 b r e a k ;  
 	 	 c a s e   E I S B _ B e a r _ 1 :  
 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' s e t B o n u s A b i l i t y B e a r _ 1 ' ,   ' q u e n _ r e a p p l y _ c h a n c e ' ,   m i n ,   m a x   ) ;  
 	 	 	 a r r S t r i n g . P u s h B a c k (   F l o a t T o S t r i n g (   m i n . v a l u e M u l t i p l i c a t i v e   *   1 0 0   )   ) ;  
 	 	 	  
 	 	 	 a r r S t r i n g . P u s h B a c k (   F l o a t T o S t r i n g (   m i n . v a l u e M u l t i p l i c a t i v e   *   1 0 0   *   a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ B e a r   ]   )   ) ;  
 	 	 	 f i n a l S t r i n g   =   G e t L o c S t r i n g B y K e y E x t W i t h P a r a m s (   t e m p S t r i n g , , , a r r S t r i n g   ) ;  
 	 	 	 b r e a k ;  
 	 	 c a s e   E I S B _ B e a r _ 2 :  
 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' s e t B o n u s A b i l i t y B e a r _ 2 ' ,   ' q u e n _ d m g _ b o o s t ' ,   m i n ,   m a x   ) ;  
 	 	 	 a r r S t r i n g . P u s h B a c k (   F l o a t T o S t r i n g (   m i n . v a l u e M u l t i p l i c a t i v e   *   1 0 0   )   ) ;  
 	 	 	 f i n a l S t r i n g   =   G e t L o c S t r i n g B y K e y E x t W i t h P a r a m s (   t e m p S t r i n g , , , a r r S t r i n g   ) ;  
 	 	 	 b r e a k ;  
 	 	 c a s e   E I S B _ R e d W o l f _ 2 :  
 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' s e t B o n u s A b i l i t y R e d W o l f _ 2 ' ,   ' a m o u n t ' ,   m i n ,   m a x   ) ;  
 	 	 	 a r r S t r i n g . P u s h B a c k (   F l o a t T o S t r i n g (   m i n . v a l u e A d d i t i v e   )   ) ;  
 	 	 	 f i n a l S t r i n g   =   G e t L o c S t r i n g B y K e y E x t W i t h P a r a m s (   t e m p S t r i n g , , , a r r S t r i n g   ) ;  
 	 	 	 b r e a k ;  
 	 	 c a s e   E I S B _ V a m p i r e :  
 	 	 	 d m . G e t A b i l i t y A t t r i b u t e V a l u e (   ' s e t B o n u s A b i l i t y V a m p i r e ' ,   ' l i f e _ p e r c e n t ' ,   m i n ,   m a x   ) ;  
 	 	 	 a r r S t r i n g . P u s h B a c k (   F l o a t T o S t r i n g (   m i n . v a l u e A d d i t i v e   )   ) ;  
 	 	 	 a r r S t r i n g . P u s h B a c k (   F l o a t T o S t r i n g (   m i n . v a l u e A d d i t i v e   *   a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ V a m p i r e   ]   )   ) ;  
 	 	 	 f i n a l S t r i n g   =   G e t L o c S t r i n g B y K e y E x t W i t h P a r a m s (   t e m p S t r i n g , , , a r r S t r i n g   ) ;  
 	 	 	 b r e a k ;  
 	 	  
 	 	 c a s e   E I S B _ W o l f _ 1 :  
 	 	 	 a r r S t r i n g . P u s h B a c k (   F l o a t T o S t r i n g (   1   *   a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ W o l f   ]   )   ) ;  
 	 	 	 f i n a l S t r i n g   =   G e t L o c S t r i n g B y K e y E x t W i t h P a r a m s (   t e m p S t r i n g , , , a r r S t r i n g   ) ;  
 	 	 	 b r e a k ;  
 	 	  
 	 	 d e f a u l t :  
 	 	 	 f i n a l S t r i n g   =   G e t L o c S t r i n g B y K e y E x t W i t h P a r a m s (   t e m p S t r i n g   ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   f i n a l S t r i n g ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   M a n a g e S e t B o n u s e s S o u n d b a n k s (   s e t T y p e   :   E I t e m S e t T y p e   )  
 	 {  
 	 	 i f (   a m o u n t O f S e t P i e c e s E q u i p p e d [   s e t T y p e   ]   > =   t h e G a m e . p a r a m s . I T E M S _ R E Q U I R E D _ F O R _ M I N O R _ S E T _ B O N U S   )  
 	 	 {  
 	 	 	 s w i t c h (   s e t T y p e   )  
 	 	 	 {  
 	 	 	 	 c a s e   E I S T _ L y n x :  
 	 	 	 	 	 L o a d S e t B o n u s S o u n d B a n k (   " e p 2 _ s e t b o n u s _ l y n x . b n k "   ) ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 c a s e   E I S T _ G r y p h o n :  
 	 	 	 	 	 L o a d S e t B o n u s S o u n d B a n k (   " e p 2 _ s e t b o n u s _ g r y p h o n . b n k "   ) ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 c a s e   E I S T _ B e a r :  
 	 	 	 	 	 L o a d S e t B o n u s S o u n d B a n k (   " e p 2 _ s e t b o n u s _ b e a r . b n k "   ) ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 s w i t c h (   s e t T y p e   )  
 	 	 	 {  
 	 	 	 	 c a s e   E I S T _ L y n x :  
 	 	 	 	 	 U n l o a d S e t B o n u s S o u n d B a n k (   " e p 2 _ s e t b o n u s _ l y n x . b n k "   ) ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 c a s e   E I S T _ G r y p h o n :  
 	 	 	 	 	 U n l o a d S e t B o n u s S o u n d B a n k (   " e p 2 _ s e t b o n u s _ g r y p h o n . b n k "   ) ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 c a s e   E I S T _ B e a r :  
 	 	 	 	 	 U n l o a d S e t B o n u s S o u n d B a n k (   " e p 2 _ s e t b o n u s _ b e a r . b n k "   ) ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   V a m p i r i c S e t A b i l i t y R e g e n e r a t i o n ( )  
 	 {  
 	 	 v a r   h e a l t h M a x 	 	 :   f l o a t ;  
 	 	 v a r   h e a l t h T o R e g 	 	 :   f l o a t ;  
 	 	  
 	 	 h e a l t h M a x   =   G e t S t a t M a x (   B C S _ V i t a l i t y   ) ;  
 	 	  
 	 	 h e a l t h T o R e g   =   (   a m o u n t O f S e t P i e c e s E q u i p p e d [   E I S T _ V a m p i r e   ]   *   h e a l t h M a x   )   /   1 0 0 ;  
 	 	  
 	 	 P l a y E f f e c t ( ' d r a i n _ e n e r g y _ c a r e t a k e r _ s h o v e l ' ) ;  
 	 	 G a i n S t a t (   B C S _ V i t a l i t y ,   h e a l t h T o R e g   ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   L o a d S e t B o n u s S o u n d B a n k (   b a n k N a m e   :   s t r i n g   )  
 	 {  
 	 	 i f (   ! t h e S o u n d . S o u n d I s B a n k L o a d e d (   b a n k N a m e   )   )  
 	 	 {  
 	 	 	 t h e S o u n d . S o u n d L o a d B a n k (   b a n k N a m e ,   t r u e   ) ;  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   U n l o a d S e t B o n u s S o u n d B a n k (   b a n k N a m e   :   s t r i n g   )  
 	 {  
 	 	 i f (   t h e S o u n d . S o u n d I s B a n k L o a d e d (   b a n k N a m e   )   )  
 	 	 {  
 	 	 	 t h e S o u n d . S o u n d U n l o a d B a n k (   b a n k N a m e   ) ;  
 	 	 }  
 	 }  
 	  
 	 t i m e r   f u n c t i o n   B e a r S e t B o n u s Q u e n R e a p p l y (   d t   :   f l o a t ,   i d   :   i n t   )  
 	 {  
 	 	 v a r   n e w Q u e n 	 	 :   W 3 Q u e n E n t i t y ;  
 	 	  
 	 	 n e w Q u e n   =   ( W 3 Q u e n E n t i t y ) t h e G a m e . C r e a t e E n t i t y (   G e t S i g n T e m p l a t e (   S T _ Q u e n   ) ,   G e t W o r l d P o s i t i o n ( ) ,   G e t W o r l d R o t a t i o n ( )   ) ;  
 	 	 n e w Q u e n . I n i t (   s i g n O w n e r ,   G e t S i g n E n t i t y (   S T _ Q u e n   ) ,   t r u e   ) ;  
 	 	 n e w Q u e n . f r e e F r o m B e a r S e t B o n u s   =   t r u e ;  
 	 	 n e w Q u e n . O n S t a r t e d ( ) ;  
 	 	 n e w Q u e n . O n T h r o w i n g ( ) ;  
 	 	 n e w Q u e n . O n E n d e d ( ) ;  
 	 	  
 	 	 m _ q u e n R e a p p l i e d C o u n t   + =   1 ;  
 	 	  
 	 	 R e m o v e T i m e r (   ' B e a r S e t B o n u s Q u e n R e a p p l y ' ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   S t a n d a l o n e E p 1 _ 1 ( )  
 	 {  
 	 	 v a r   i ,   i n c ,   q u a n t i t y L o w ,   r a n d L o w ,   q u a n t i t y M e d i u m ,   r a n d M e d i u m ,   q u a n t i t y H i g h ,   r a n d H i g h ,   s t a r t i n g M o n e y   :   i n t ;  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	 v a r   i d s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   S T A R T I N G _ L E V E L   :   i n t ;  
 	 	  
 	 	 F a c t s A d d ( " S t a n d A l o n e E P 1 " ,   1 ) ;  
 	 	  
 	 	  
 	 	 i n v . R e m o v e A l l I t e m s ( ) ;  
 	 	  
 	 	  
 	 	 i n v . A d d A n I t e m ( ' I l l u s i o n   M e d a l l i o n ' ,   1 ,   t r u e ,   t r u e ,   f a l s e ) ;  
 	 	 i n v . A d d A n I t e m ( ' q 1 0 3 _ s a f e _ c o n d u c t ' ,   1 ,   t r u e ,   t r u e ,   f a l s e ) ;  
 	 	  
 	 	  
 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . C l e a r A l l A c h i e v e m e n t s F o r E P 1 ( ) ;  
 	 	  
 	 	  
 	 	 S T A R T I N G _ L E V E L   =   3 2 ;  
 	 	 i n c   =   S T A R T I N G _ L E V E L   -   G e t L e v e l ( ) ;  
 	 	 f o r ( i = 0 ;   i < i n c ;   i + = 1 )  
 	 	 {  
 	 	 	 l e v e l M a n a g e r . A d d P o i n t s ( E E x p e r i e n c e P o i n t ,   l e v e l M a n a g e r . G e t T o t a l E x p F o r N e x t L e v e l ( )   -   l e v e l M a n a g e r . G e t P o i n t s T o t a l ( E E x p e r i e n c e P o i n t ) ,   f a l s e ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 l e v e l M a n a g e r . R e s e t C h a r a c t e r D e v ( ) ;  
 	 	 p a m   =   ( W 3 P l a y e r A b i l i t y M a n a g e r ) a b i l i t y M a n a g e r ;  
 	 	 i f ( p a m )  
 	 	 {  
 	 	 	 p a m . R e s e t C h a r a c t e r D e v ( ) ;  
 	 	 }  
 	 	 l e v e l M a n a g e r . S e t F r e e S k i l l P o i n t s ( l e v e l M a n a g e r . G e t L e v e l ( )   -   1   +   1 1 ) ; 	  
 	 	  
 	 	  
 	 	 i n v . A d d A n I t e m ( ' M u t a g e n   r e d ' ,   4 ) ;  
 	 	 i n v . A d d A n I t e m ( ' M u t a g e n   g r e e n ' ,   4 ) ;  
 	 	 i n v . A d d A n I t e m ( ' M u t a g e n   b l u e ' ,   4 ) ;  
 	 	 i n v . A d d A n I t e m ( ' L e s s e r   m u t a g e n   r e d ' ,   2 ) ;  
 	 	 i n v . A d d A n I t e m ( ' L e s s e r   m u t a g e n   g r e e n ' ,   2 ) ;  
 	 	 i n v . A d d A n I t e m ( ' L e s s e r   m u t a g e n   b l u e ' ,   2 ) ;  
 	 	 i n v . A d d A n I t e m ( ' G r e a t e r   m u t a g e n   g r e e n ' ,   1 ) ;  
 	 	 i n v . A d d A n I t e m ( ' G r e a t e r   m u t a g e n   b l u e ' ,   2 ) ;  
 	 	  
 	 	  
 	 	 s t a r t i n g M o n e y   =   4 0 0 0 0 ;  
 	 	 i f ( G e t M o n e y ( )   >   s t a r t i n g M o n e y )  
 	 	 {  
 	 	 	 R e m o v e M o n e y ( G e t M o n e y ( )   -   s t a r t i n g M o n e y ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 A d d M o n e y (   4 0 0 0 0   -   G e t M o n e y ( )   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m ( ' E P 1   S t a n d a l o n e   S t a r t i n g   A r m o r ' ) ;  
 	 	 E q u i p I t e m ( i d s [ 0 ] ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m ( ' E P 1   S t a n d a l o n e   S t a r t i n g   B o o t s ' ) ;  
 	 	 E q u i p I t e m ( i d s [ 0 ] ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m ( ' E P 1   S t a n d a l o n e   S t a r t i n g   G l o v e s ' ) ;  
 	 	 E q u i p I t e m ( i d s [ 0 ] ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m ( ' E P 1   S t a n d a l o n e   S t a r t i n g   P a n t s ' ) ;  
 	 	 E q u i p I t e m ( i d s [ 0 ] ) ;  
 	 	  
 	 	  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m ( ' E P 1   S t a n d a l o n e   S t a r t i n g   S t e e l   S w o r d ' ) ;  
 	 	 E q u i p I t e m ( i d s [ 0 ] ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m ( ' E P 1   S t a n d a l o n e   S t a r t i n g   S i l v e r   S w o r d ' ) ;  
 	 	 E q u i p I t e m ( i d s [ 0 ] ) ;  
 	 	  
 	 	  
 	 	 i n v . A d d A n I t e m ( ' T o r c h ' ,   1 ,   t r u e ,   t r u e ,   f a l s e ) ;  
 	 	  
 	 	  
 	 	 q u a n t i t y L o w   =   1 ;  
 	 	 r a n d L o w   =   3 ;  
 	 	 q u a n t i t y M e d i u m   =   4 ;  
 	 	 r a n d M e d i u m   =   4 ;  
 	 	 q u a n t i t y H i g h   =   8 ;  
 	 	 r a n d H i g h   =   6 ;  
 	 	  
 	 	 i n v . A d d A n I t e m ( ' A l g h o u l   b o n e   m a r r o w ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' A m e t h y s t   d u s t ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' A r a c h a s   e y e s ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' A r a c h a s   v e n o m ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' B a s i l i s k   h i d e ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' B a s i l i s k   v e n o m ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' B e a r   p e l t ' , q u a n t i t y H i g h + R a n d R a n g e ( r a n d H i g h ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' B e r s e r k e r   p e l t ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' C o a l ' , q u a n t i t y H i g h + R a n d R a n g e ( r a n d H i g h ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' C o t t o n ' , q u a n t i t y H i g h + R a n d R a n g e ( r a n d H i g h ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' D a r k   i r o n   i n g o t ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' D a r k   i r o n   o r e ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' D e e r   h i d e ' , q u a n t i t y H i g h + R a n d R a n g e ( r a n d H i g h ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' D i a m o n d   d u s t ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' D r a c o n i d e   l e a t h e r ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' D r o w n e d   d e a d   t o n g u e ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' D r o w n e r   b r a i n ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' D w i m e r y t e   i n g o t ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' D w i m e r y t e   o r e ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' E m e r a l d   d u s t ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' E n d r i a g   c h i t i n   p l a t e s ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' E n d r i a g   e m b r y o ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' G h o u l   b l o o d ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' G o a t   h i d e ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' H a g   t e e t h ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' H a r d e n e d   l e a t h e r ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' H a r d e n e d   t i m b e r ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' H a r p y   f e a t h e r s ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' H o r s e   h i d e ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' I r o n   o r e ' , q u a n t i t y H i g h + R a n d R a n g e ( r a n d H i g h ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' L e a t h e r   s t r a p s ' , q u a n t i t y H i g h + R a n d R a n g e ( r a n d H i g h ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' L e a t h e r ' , q u a n t i t y H i g h + R a n d R a n g e ( r a n d H i g h ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' L i n e n ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' M e t e o r i t e   i n g o t ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' M e t e o r i t e   o r e ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' N e c r o p h a g e   s k i n ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' N e k k e r   b l o o d ' , q u a n t i t y H i g h + R a n d R a n g e ( r a n d H i g h ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' N e k k e r   h e a r t ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' O i l ' , q u a n t i t y H i g h + R a n d R a n g e ( r a n d H i g h ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' P h o s p h o r e s c e n t   c r y s t a l ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' P i g   h i d e ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' P u r e   s i l v e r ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' R a b b i t   p e l t ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' R o t f i e n d   b l o o d ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' S a p p h i r e   d u s t ' , q u a n t i t y L o w + R a n d R a n g e ( r a n d L o w ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' S i l k ' , q u a n t i t y H i g h + R a n d R a n g e ( r a n d H i g h ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' S i l v e r   i n g o t ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' S i l v e r   o r e ' , q u a n t i t y H i g h + R a n d R a n g e ( r a n d H i g h ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' S p e c t e r   d u s t ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' S t e e l   i n g o t ' , q u a n t i t y H i g h + R a n d R a n g e ( r a n d H i g h ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' S t e e l   p l a t e ' , q u a n t i t y H i g h + R a n d R a n g e ( r a n d H i g h ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' S t r i n g ' , q u a n t i t y H i g h + R a n d R a n g e ( r a n d H i g h ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' T h r e a d ' , q u a n t i t y H i g h + R a n d R a n g e ( r a n d H i g h ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' T i m b e r ' , q u a n t i t y H i g h + R a n d R a n g e ( r a n d H i g h ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' T w i n e ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' V e n o m   e x t r a c t ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' W a t e r   e s s e n c e ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' W o l f   l i v e r ' , q u a n t i t y H i g h + R a n d R a n g e ( r a n d H i g h ) ) ;  
 	 	 i n v . A d d A n I t e m ( ' W o l f   p e l t ' , q u a n t i t y M e d i u m + R a n d R a n g e ( r a n d M e d i u m ) ) ;  
 	 	  
 	 	 i n v . A d d A n I t e m ( ' A l c o h e s t ' ,   5 ) ;  
 	 	 i n v . A d d A n I t e m ( ' D w a r v e n   s p i r i t ' ,   5 ) ;  
 	  
 	 	  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m ( ' C r o s s b o w   5 ' ) ;  
 	 	 E q u i p I t e m ( i d s [ 0 ] ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m ( ' B l u n t   B o l t ' ,   1 0 0 ) ;  
 	 	 E q u i p I t e m ( i d s [ 0 ] ) ;  
 	 	 i n v . A d d A n I t e m ( ' B r o a d h e a d   B o l t ' ,   1 0 0 ) ;  
 	 	 i n v . A d d A n I t e m ( ' S p l i t   B o l t ' ,   1 0 0 ) ;  
 	 	  
 	 	  
 	 	 R e m o v e A l l A l c h e m y R e c i p e s ( ) ;  
 	 	 R e m o v e A l l C r a f t i n g S c h e m a t i c s ( ) ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   C a t   1 ' ) ;  
 	 	  
 	 	  
 	 	  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   M a r i b o r   F o r e s t   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   P e t r i s   P h i l t r e   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   S w a l l o w   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   T a w n y   O w l   1 ' ) ;  
 	 	  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   W h i t e   G u l l   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   W h i t e   H o n e y   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   W h i t e   R a f f a r d s   D e c o c t i o n   1 ' ) ;  
 	 	  
 	 	  
 	 	  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   B e a s t   O i l   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   C u r s e d   O i l   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   H a n g e d   M a n   V e n o m   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   H y b r i d   O i l   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   I n s e c t o i d   O i l   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   M a g i c a l s   O i l   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   N e c r o p h a g e   O i l   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   S p e c t e r   O i l   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   V a m p i r e   O i l   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   D r a c o n i d e   O i l   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   O g r e   O i l   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   R e l i c   O i l   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   B e a s t   O i l   2 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   C u r s e d   O i l   2 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   H a n g e d   M a n   V e n o m   2 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   H y b r i d   O i l   2 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   I n s e c t o i d   O i l   2 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   M a g i c a l s   O i l   2 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   N e c r o p h a g e   O i l   2 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   S p e c t e r   O i l   2 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   V a m p i r e   O i l   2 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   D r a c o n i d e   O i l   2 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   O g r e   O i l   2 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   R e l i c   O i l   2 ' ) ;  
 	 	  
 	 	  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   D a n c i n g   S t a r   1 ' ) ;  
 	 	  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   D w i m e r i t u m   B o m b   1 ' ) ;  
 	 	  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   G r a p e s h o t   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   S a m u m   1 ' ) ;  
 	 	  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   W h i t e   F r o s t   1 ' ) ;  
 	 	  
 	 	  
 	 	  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   D w a r v e n   s p i r i t   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   A l c o h e s t   1 ' ) ;  
 	 	 A d d A l c h e m y R e c i p e ( ' R e c i p e   f o r   W h i t e   G u l l   1 ' ) ;  
 	 	  
 	 	  
 	 	 A d d S t a r t i n g S c h e m a t i c s ( ) ;  
 	 	  
 	 	  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m ( ' S w a l l o w   2 ' ) ;  
 	 	 E q u i p I t e m ( i d s [ 0 ] ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m ( ' T h u n d e r b o l t   2 ' ) ;  
 	 	 E q u i p I t e m ( i d s [ 0 ] ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m ( ' T a w n y   O w l   2 ' ) ;  
 	 	 E q u i p I t e m ( i d s [ 0 ] ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	  
 	 	 i d s   =   i n v . A d d A n I t e m ( ' G r a p e s h o t   2 ' ) ;  
 	 	 E q u i p I t e m ( i d s [ 0 ] ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m ( ' S a m u m   2 ' ) ;  
 	 	 E q u i p I t e m ( i d s [ 0 ] ) ;  
 	 	  
 	 	 i n v . A d d A n I t e m ( ' D w i m e r i t u m   B o m b   1 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' D r a g o n s   D r e a m   1 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' S i l v e r   D u s t   B o m b   1 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' W h i t e   F r o s t   2 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' D e v i l s   P u f f b a l l   2 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' D a n c i n g   S t a r   2 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' B e a s t   O i l   1 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' C u r s e d   O i l   1 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' H a n g e d   M a n   V e n o m   2 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' H y b r i d   O i l   1 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' I n s e c t o i d   O i l   1 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' M a g i c a l s   O i l   1 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' N e c r o p h a g e   O i l   2 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' S p e c t e r   O i l   1 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' V a m p i r e   O i l   1 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' D r a c o n i d e   O i l   1 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' R e l i c   O i l   1 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' B l a c k   B l o o d   1 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' B l i z z a r d   1 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' C a t   2 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' F u l l   M o o n   1 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' M a r i b o r   F o r e s t   1 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' P e t r i s   P h i l t r e   1 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' W h i t e   G u l l   1 ' ,   3 ) ;  
 	 	 i n v . A d d A n I t e m ( ' W h i t e   H o n e y   2 ' ) ;  
 	 	 i n v . A d d A n I t e m ( ' W h i t e   R a f f a r d s   D e c o c t i o n   1 ' ) ;  
 	 	  
 	 	  
 	 	 i n v . A d d A n I t e m ( ' M u t a g e n   1 7 ' ) ; 	  
 	 	 i n v . A d d A n I t e m ( ' M u t a g e n   1 9 ' ) ; 	  
 	 	 i n v . A d d A n I t e m ( ' M u t a g e n   2 7 ' ) ; 	  
 	 	 i n v . A d d A n I t e m ( ' M u t a g e n   2 6 ' ) ; 	  
 	 	  
 	 	  
 	 	 i n v . A d d A n I t e m ( ' w e a p o n _ r e p a i r _ k i t _ 1 ' ,   5 ) ;  
 	 	 i n v . A d d A n I t e m ( ' w e a p o n _ r e p a i r _ k i t _ 2 ' ,   3 ) ;  
 	 	 i n v . A d d A n I t e m ( ' a r m o r _ r e p a i r _ k i t _ 1 ' ,   5 ) ;  
 	 	 i n v . A d d A n I t e m ( ' a r m o r _ r e p a i r _ k i t _ 2 ' ,   3 ) ;  
 	 	  
 	 	  
 	 	 q u a n t i t y M e d i u m   =   2 ;  
 	 	 q u a n t i t y L o w   =   1 ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   s t r i b o g   l e s s e r ' ,   q u a n t i t y M e d i u m ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   s t r i b o g ' ,   q u a n t i t y L o w ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   d a z h b o g   l e s s e r ' ,   q u a n t i t y M e d i u m ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   d a z h b o g ' ,   q u a n t i t y L o w ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   d e v a n a   l e s s e r ' ,   q u a n t i t y M e d i u m ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   d e v a n a ' ,   q u a n t i t y L o w ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   z o r i a   l e s s e r ' ,   q u a n t i t y M e d i u m ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   z o r i a ' ,   q u a n t i t y L o w ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   m o r a n a   l e s s e r ' ,   q u a n t i t y M e d i u m ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   m o r a n a ' ,   q u a n t i t y L o w ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   t r i g l a v   l e s s e r ' ,   q u a n t i t y M e d i u m ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   t r i g l a v ' ,   q u a n t i t y L o w ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   s v a r o g   l e s s e r ' ,   q u a n t i t y M e d i u m ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   s v a r o g ' ,   q u a n t i t y L o w ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   v e l e s   l e s s e r ' ,   q u a n t i t y M e d i u m ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   v e l e s ' ,   q u a n t i t y L o w ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   p e r u n   l e s s e r ' ,   q u a n t i t y M e d i u m ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   p e r u n ' ,   q u a n t i t y L o w ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   e l e m e n t a l   l e s s e r ' ,   q u a n t i t y M e d i u m ) ;  
 	 	 i n v . A d d A n I t e m ( ' R u n e   e l e m e n t a l ' ,   q u a n t i t y L o w ) ;  
 	 	  
 	 	 i n v . A d d A n I t e m ( ' G l y p h   a a r d   l e s s e r ' ,   q u a n t i t y M e d i u m ) ;  
 	 	 i n v . A d d A n I t e m ( ' G l y p h   a a r d ' ,   q u a n t i t y L o w ) ;  
 	 	 i n v . A d d A n I t e m ( ' G l y p h   a x i i   l e s s e r ' ,   q u a n t i t y M e d i u m ) ;  
 	 	 i n v . A d d A n I t e m ( ' G l y p h   a x i i ' ,   q u a n t i t y L o w ) ;  
 	 	 i n v . A d d A n I t e m ( ' G l y p h   i g n i   l e s s e r ' ,   q u a n t i t y M e d i u m ) ;  
 	 	 i n v . A d d A n I t e m ( ' G l y p h   i g n i ' ,   q u a n t i t y L o w ) ;  
 	 	 i n v . A d d A n I t e m ( ' G l y p h   q u e n   l e s s e r ' ,   q u a n t i t y M e d i u m ) ;  
 	 	 i n v . A d d A n I t e m ( ' G l y p h   q u e n ' ,   q u a n t i t y L o w ) ;  
 	 	 i n v . A d d A n I t e m ( ' G l y p h   y r d e n   l e s s e r ' ,   q u a n t i t y M e d i u m ) ;  
 	 	 i n v . A d d A n I t e m ( ' G l y p h   y r d e n ' ,   q u a n t i t y L o w ) ;  
 	 	  
 	 	  
 	 	 S t a n d a l o n e E p 1 _ 2 ( ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   S t a n d a l o n e E p 1 _ 2 ( )  
 	 {  
 	 	 v a r   h o r s e I d   :   S I t e m U n i q u e I d ;  
 	 	 v a r   i d s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   e n t s   :   a r r a y <   C J o u r n a l B a s e   > ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   m a n a g e r   :   C W i t c h e r J o u r n a l M a n a g e r ;  
 	 	  
 	 	  
 	 	 i n v . A d d A n I t e m (   ' C o w s   m i l k ' ,   2 0   ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m (   ' D u m p l i n g ' ,   4 4   ) ;  
 	 	 E q u i p I t e m ( i d s [ 0 ] ) ;  
 	 	  
 	 	  
 	 	 i n v . A d d A n I t e m ( ' C l e a r i n g   P o t i o n ' ,   2 ,   t r u e ,   f a l s e ,   f a l s e ) ;  
 	 	  
 	 	  
 	 	 G e t H o r s e M a n a g e r ( ) . R e m o v e A l l I t e m s ( ) ;  
 	 	  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m ( ' H o r s e   B a g   2 ' ) ;  
 	 	 h o r s e I d   =   G e t H o r s e M a n a g e r ( ) . M o v e I t e m T o H o r s e ( i d s [ 0 ] ) ;  
 	 	 G e t H o r s e M a n a g e r ( ) . E q u i p I t e m ( h o r s e I d ) ;  
 	 	  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m ( ' H o r s e   B l i n d e r   2 ' ) ;  
 	 	 h o r s e I d   =   G e t H o r s e M a n a g e r ( ) . M o v e I t e m T o H o r s e ( i d s [ 0 ] ) ;  
 	 	 G e t H o r s e M a n a g e r ( ) . E q u i p I t e m ( h o r s e I d ) ;  
 	 	  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m ( ' H o r s e   S a d d l e   2 ' ) ;  
 	 	 h o r s e I d   =   G e t H o r s e M a n a g e r ( ) . M o v e I t e m T o H o r s e ( i d s [ 0 ] ) ;  
 	 	 G e t H o r s e M a n a g e r ( ) . E q u i p I t e m ( h o r s e I d ) ;  
 	 	  
 	 	 m a n a g e r   =   t h e G a m e . G e t J o u r n a l M a n a g e r ( ) ;  
  
 	 	  
 	 	 m a n a g e r . G e t A c t i v a t e d O f T y p e (   ' C J o u r n a l C r e a t u r e ' ,   e n t s   ) ;  
 	 	 f o r ( i = 0 ;   i < e n t s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 m a n a g e r . A c t i v a t e E n t r y ( e n t s [ i ] ,   J S _ I n a c t i v e ,   f a l s e ,   t r u e ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 e n t s . C l e a r ( ) ;  
 	 	 m a n a g e r . G e t A c t i v a t e d O f T y p e (   ' C J o u r n a l C h a r a c t e r ' ,   e n t s   ) ;  
 	 	 f o r ( i = 0 ;   i < e n t s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 m a n a g e r . A c t i v a t e E n t r y ( e n t s [ i ] ,   J S _ I n a c t i v e ,   f a l s e ,   t r u e ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 e n t s . C l e a r ( ) ;  
 	 	 m a n a g e r . G e t A c t i v a t e d O f T y p e (   ' C J o u r n a l Q u e s t ' ,   e n t s   ) ;  
 	 	 f o r ( i = 0 ;   i < e n t s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	  
 	 	 	 i f (   S t r S t a r t s W i t h ( e n t s [ i ] . b a s e N a m e ,   " q 6 0 " ) )  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 	  
 	 	 	 m a n a g e r . A c t i v a t e E n t r y ( e n t s [ i ] ,   J S _ I n a c t i v e ,   f a l s e ,   t r u e ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l A a r d ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l A d r e n a l i n e ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l A x i i ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l A x i i D i a l o g ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l C a m e r a ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l C a m e r a _ p a d ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l C i r i B l i n k ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l C i r i C h a r g e ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l C i r i S t a m i n a ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l C o u n t e r ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l D i a l o g C l o s e ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l F a l l i n g R o l l ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l F o c u s ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l F o c u s C l u e s ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l F o c u s C l u e s ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l H o r s e R o a d ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l H o r s e S p e e d 0 ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l H o r s e S p e e d 0 _ p a d ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l H o r s e S p e e d 1 ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l H o r s e S p e e d 2 ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l H o r s e S u m m o n ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l H o r s e S u m m o n _ p a d ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l I g n i ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l A l t e r n a t e S i n g s ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l B o a t D a m a g e ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l B o a t M o u n t ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l B u f f s ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l C h a r D e v L e v e l i n g ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l C h a r D e v S k i l l s ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l C r a f t i n g ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l C r o s s b o w ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l D i a l o g G w i n t ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l D i a l o g S h o p ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l D i v e ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l D o d g e ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l D o d g e _ p a d ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l D r a w W e a p o n ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l D r a w W e a p o n _ p a d ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l D u r a b i l i t y ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l E x p l o r a t i o n s ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l E x p l o r a t i o n s _ p a d ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l F a s t T r a v e l ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l F o c u s R e d O b j e c t s ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l G a s C l o u d s ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l H e a v y A t t a c k s ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l H o r s e ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l H o r s e S t a m i n a ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l J u m p ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l L i g h t A t t a c k s ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l L i g h t A t t a c k s _ p a d ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l M e d i t a t i o n ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l M e d i t a t i o n _ p a d ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l M o n s t e r T h r e a t L e v e l s ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l M o v e m e n t ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l M o v e m e n t _ p a d ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l M u t a g e n I n g r e d i e n t ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l M u t a g e n P o t i o n ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l O i l s ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l P e t a r d s ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l P o t i o n s ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l P o t i o n s _ p a d ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l Q u e s t A r e a ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l R a d i a l ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l R i f t s ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l R u n ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l S h o p D e s c r i p t i o n ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l S i g n C a s t ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l S i g n C a s t _ p a d ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l S p e c i a l A t t a c k s ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J o u r n a l S t a m i n a E x p l o r a t i o n ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l J u m p H a n g ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l L a d d e r ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l L a d d e r M o v e ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l L a d d e r M o v e _ p a d ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l O b j e c t i v e S w i t c h i n g ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l O x y g e n ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l P a r r y ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l P O I U n c o v e r e d ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l Q u e n ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l R o l l ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l R o l l _ p a d ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l S p e e d P a i r i n g ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l S p r i n t ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l S t a m i n a S i g n s ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l S t e a l i n g ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l S w i m m i n g S p e e d ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l T i m e d C h o i c e D i a l o g ' ,   J S _ A c t i v e ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g ( ' T u t o r i a l Y r d e n ' ,   J S _ A c t i v e ) ;  
 	 	  
 	 	  
 	 	 F a c t s A d d ( ' k i l l _ b a s e _ t u t o r i a l s ' ) ;  
 	 	  
 	 	  
 	 	 t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . R e m o v e A l l Q u e u e d T u t o r i a l s ( ) ;  
 	 	  
 	 	  
 	 	 F a c t s A d d ( ' s t a n d a l o n e _ e p 1 ' ) ;  
 	 	 F a c t s R e m o v e ( " S t a n d A l o n e E P 1 " ) ;  
 	 	  
 	 	 t h e G a m e . G e t J o u r n a l M a n a g e r ( ) . F o r c e U n t r a c k i n g Q u e s t F o r E P 1 S a v e g a m e ( ) ;  
 	 }  
 	  
 	 f i n a l   f u n c t i o n   D e b u g _ F o c u s B o y F o c u s G a i n ( )  
 	 {  
 	 	 v a r   f o c u s G a i n   :   f l o a t ;  
 	 	  
 	 	 f o c u s G a i n   =   F a c t s Q u e r y S u m (   " d e b u g _ f a c t _ f o c u s _ b o y "   )   ;  
 	 	 G a i n S t a t (   B C S _ F o c u s ,   f o c u s G a i n   ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   S t a n d a l o n e E p 2 _ 1 ( )  
 	 {  
 	 	 v a r   i ,   i n c ,   q u a n t i t y L o w ,   r a n d L o w ,   q u a n t i t y M e d i u m ,   r a n d M e d i u m ,   q u a n t i t y H i g h ,   r a n d H i g h ,   s t a r t i n g M o n e y   :   i n t ;  
 	 	 v a r   p a m   :   W 3 P l a y e r A b i l i t y M a n a g e r ;  
 	 	 v a r   i d s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   S T A R T I N G _ L E V E L   :   i n t ;  
 	 	  
 	 	 F a c t s A d d (   " S t a n d A l o n e E P 2 " ,   1   ) ;  
 	 	  
 	 	  
 	 	 i n v . R e m o v e A l l I t e m s ( ) ;  
 	 	  
 	 	  
 	 	 i n v . A d d A n I t e m (   ' I l l u s i o n   M e d a l l i o n ' ,   1 ,   t r u e ,   t r u e ,   f a l s e   ) ;  
 	 	 i n v . A d d A n I t e m (   ' q 1 0 3 _ s a f e _ c o n d u c t ' ,   1 ,   t r u e ,   t r u e ,   f a l s e   ) ;  
 	 	  
 	 	  
 	 	 t h e G a m e . G e t G a m e r P r o f i l e ( ) . C l e a r A l l A c h i e v e m e n t s F o r E P 2 ( ) ;  
 	 	  
 	 	  
 	 	 l e v e l M a n a g e r . H a c k _ E P 2 S t a n d a l o n e L e v e l S h r i n k (   3 5   ) ;  
 	 	  
 	 	  
 	 	 l e v e l M a n a g e r . R e s e t C h a r a c t e r D e v ( ) ;  
 	 	 p a m   =   (   W 3 P l a y e r A b i l i t y M a n a g e r   ) a b i l i t y M a n a g e r ;  
 	 	 i f (   p a m   )  
 	 	 {  
 	 	 	 p a m . R e s e t C h a r a c t e r D e v ( ) ;  
 	 	 }  
 	 	 l e v e l M a n a g e r . S e t F r e e S k i l l P o i n t s (   l e v e l M a n a g e r . G e t L e v e l ( )   -   1   +   1 1   ) ; 	  
 	 	  
 	 	  
 	 	 i n v . A d d A n I t e m (   ' M u t a g e n   r e d ' ,   4   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M u t a g e n   g r e e n ' ,   4   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M u t a g e n   b l u e ' ,   4   ) ;  
 	 	 i n v . A d d A n I t e m (   ' L e s s e r   m u t a g e n   r e d ' ,   2   ) ;  
 	 	 i n v . A d d A n I t e m (   ' L e s s e r   m u t a g e n   g r e e n ' ,   2   ) ;  
 	 	 i n v . A d d A n I t e m (   ' L e s s e r   m u t a g e n   b l u e ' ,   2   ) ;  
 	 	 i n v . A d d A n I t e m (   ' G r e a t e r   m u t a g e n   r e d ' ,   2   ) ;  
 	 	 i n v . A d d A n I t e m (   ' G r e a t e r   m u t a g e n   g r e e n ' ,   2   ) ;  
 	 	 i n v . A d d A n I t e m (   ' G r e a t e r   m u t a g e n   b l u e ' ,   2   ) ;  
 	 	  
 	 	  
 	 	 s t a r t i n g M o n e y   =   2 0 0 0 0 ;  
 	 	 i f (   G e t M o n e y ( )   >   s t a r t i n g M o n e y   )  
 	 	 {  
 	 	 	 R e m o v e M o n e y (   G e t M o n e y ( )   -   s t a r t i n g M o n e y   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 A d d M o n e y (   2 0 0 0 0   -   G e t M o n e y ( )   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m (   ' E P 2   S t a n d a l o n e   S t a r t i n g   A r m o r '   ) ;  
 	 	 E q u i p I t e m (   i d s [ 0 ]   ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m (   ' E P 2   S t a n d a l o n e   S t a r t i n g   B o o t s '   ) ;  
 	 	 E q u i p I t e m (   i d s [ 0 ]   ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m (   ' E P 2   S t a n d a l o n e   S t a r t i n g   G l o v e s '   ) ;  
 	 	 E q u i p I t e m (   i d s [ 0 ]   ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m (   ' E P 2   S t a n d a l o n e   S t a r t i n g   P a n t s '   ) ;  
 	 	 E q u i p I t e m (   i d s [ 0 ]   ) ;  
 	 	  
 	 	  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m (   ' E P 2   S t a n d a l o n e   S t a r t i n g   S t e e l   S w o r d '   ) ;  
 	 	 E q u i p I t e m (   i d s [ 0 ]   ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m (   ' E P 2   S t a n d a l o n e   S t a r t i n g   S i l v e r   S w o r d '   ) ;  
 	 	 E q u i p I t e m (   i d s [ 0 ]   ) ;  
 	 	  
 	 	  
 	 	 i n v . A d d A n I t e m (   ' T o r c h ' ,   1 ,   t r u e ,   t r u e ,   f a l s e   ) ;  
 	 	  
 	 	  
 	 	 q u a n t i t y L o w   =   1 ;  
 	 	 r a n d L o w   =   3 ;  
 	 	 q u a n t i t y M e d i u m   =   4 ;  
 	 	 r a n d M e d i u m   =   4 ;  
 	 	 q u a n t i t y H i g h   =   8 ;  
 	 	 r a n d H i g h   =   6 ;  
 	 	  
 	 	 i n v . A d d A n I t e m (   ' A l g h o u l   b o n e   m a r r o w ' , q u a n t i t y M e d i u m + R a n d R a n g e (   r a n d M e d i u m   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' A m e t h y s t   d u s t ' , q u a n t i t y L o w + R a n d R a n g e (   r a n d L o w   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' A r a c h a s   e y e s ' , q u a n t i t y L o w + R a n d R a n g e (   r a n d L o w   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' A r a c h a s   v e n o m ' , q u a n t i t y L o w + R a n d R a n g e (   r a n d L o w   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' B a s i l i s k   h i d e ' , q u a n t i t y L o w + R a n d R a n g e (   r a n d L o w   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' B a s i l i s k   v e n o m ' , q u a n t i t y L o w + R a n d R a n g e (   r a n d L o w   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' B e a r   p e l t ' , q u a n t i t y H i g h + R a n d R a n g e (   r a n d H i g h   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' B e r s e r k e r   p e l t ' , q u a n t i t y L o w + R a n d R a n g e (   r a n d L o w   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' C o a l ' , q u a n t i t y H i g h + R a n d R a n g e (   r a n d H i g h   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' C o t t o n ' , q u a n t i t y H i g h + R a n d R a n g e (   r a n d H i g h   )   ) ;  
  
  
 	 	 i n v . A d d A n I t e m (   ' D e e r   h i d e ' , q u a n t i t y H i g h + R a n d R a n g e (   r a n d H i g h   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' D i a m o n d   d u s t ' , q u a n t i t y L o w + R a n d R a n g e (   r a n d L o w   )   ) ;  
  
 	 	 i n v . A d d A n I t e m (   ' D r o w n e d   d e a d   t o n g u e ' , q u a n t i t y L o w + R a n d R a n g e (   r a n d L o w   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' D r o w n e r   b r a i n ' , q u a n t i t y M e d i u m + R a n d R a n g e (   r a n d M e d i u m   )   ) ;  
  
  
  
 	 	 i n v . A d d A n I t e m (   ' E n d r i a g   c h i t i n   p l a t e s ' , q u a n t i t y M e d i u m + R a n d R a n g e (   r a n d M e d i u m   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' E n d r i a g   e m b r y o ' , q u a n t i t y L o w + R a n d R a n g e (   r a n d L o w   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' G h o u l   b l o o d ' , q u a n t i t y M e d i u m + R a n d R a n g e (   r a n d M e d i u m   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' G o a t   h i d e ' , q u a n t i t y M e d i u m + R a n d R a n g e (   r a n d M e d i u m   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' H a g   t e e t h ' , q u a n t i t y M e d i u m + R a n d R a n g e (   r a n d M e d i u m   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' H a r d e n e d   l e a t h e r ' , q u a n t i t y M e d i u m + R a n d R a n g e (   r a n d M e d i u m   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' H a r d e n e d   t i m b e r ' , q u a n t i t y M e d i u m + R a n d R a n g e (   r a n d M e d i u m   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' H a r p y   f e a t h e r s ' , q u a n t i t y M e d i u m + R a n d R a n g e (   r a n d M e d i u m   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' H o r s e   h i d e ' , q u a n t i t y L o w + R a n d R a n g e (   r a n d L o w   )   ) ;  
  
  
  
  
  
  
 	 	 i n v . A d d A n I t e m (   ' N e c r o p h a g e   s k i n ' , q u a n t i t y L o w + R a n d R a n g e (   r a n d L o w   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' N e k k e r   b l o o d ' , q u a n t i t y H i g h + R a n d R a n g e (   r a n d H i g h   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' N e k k e r   h e a r t ' , q u a n t i t y M e d i u m + R a n d R a n g e (   r a n d M e d i u m   )   ) ;  
  
 	 	 i n v . A d d A n I t e m (   ' P h o s p h o r e s c e n t   c r y s t a l ' , q u a n t i t y L o w + R a n d R a n g e (   r a n d L o w   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' P i g   h i d e ' , q u a n t i t y M e d i u m + R a n d R a n g e (   r a n d M e d i u m   )   ) ;  
  
 	 	 i n v . A d d A n I t e m (   ' R a b b i t   p e l t ' , q u a n t i t y M e d i u m + R a n d R a n g e (   r a n d M e d i u m   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R o t f i e n d   b l o o d ' , q u a n t i t y M e d i u m + R a n d R a n g e (   r a n d M e d i u m   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' S a p p h i r e   d u s t ' , q u a n t i t y L o w + R a n d R a n g e (   r a n d L o w   )   ) ;  
  
  
  
 	 	 i n v . A d d A n I t e m (   ' S p e c t e r   d u s t ' , q u a n t i t y M e d i u m + R a n d R a n g e (   r a n d M e d i u m   )   ) ;  
  
  
  
  
  
  
  
 	 	 i n v . A d d A n I t e m (   ' W a t e r   e s s e n c e ' , q u a n t i t y M e d i u m + R a n d R a n g e (   r a n d M e d i u m   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' W o l f   l i v e r ' , q u a n t i t y H i g h + R a n d R a n g e (   r a n d H i g h   )   ) ;  
 	 	 i n v . A d d A n I t e m (   ' W o l f   p e l t ' , q u a n t i t y M e d i u m + R a n d R a n g e (   r a n d M e d i u m   )   ) ;  
 	 	  
 	 	 i n v . A d d A n I t e m (   ' A l c o h e s t ' ,   5   ) ;  
 	 	 i n v . A d d A n I t e m (   ' D w a r v e n   s p i r i t ' ,   5   ) ;  
 	  
 	 	  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m (   ' C r o s s b o w   5 '   ) ;  
 	 	 E q u i p I t e m (   i d s [ 0 ]   ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m (   ' B l u n t   B o l t ' ,   1 0 0   ) ;  
 	 	 E q u i p I t e m (   i d s [ 0 ]   ) ;  
 	 	 i n v . A d d A n I t e m (   ' B r o a d h e a d   B o l t ' ,   1 0 0   ) ;  
 	 	 i n v . A d d A n I t e m (   ' S p l i t   B o l t ' ,   1 0 0   ) ;  
 	 	  
 	 	  
 	 	 R e m o v e A l l A l c h e m y R e c i p e s ( ) ;  
 	 	 R e m o v e A l l C r a f t i n g S c h e m a t i c s ( ) ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   P e t r i s   P h i l t r e   2 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   S w a l l o w   1 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   T a w n y   O w l   1 '   ) ;  
 	 	  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   W h i t e   G u l l   1 '   ) ;  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   B e a s t   O i l   1 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   C u r s e d   O i l   1 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   H a n g e d   M a n   V e n o m   1 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   H y b r i d   O i l   1 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   I n s e c t o i d   O i l   2 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   M a g i c a l s   O i l   1 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   N e c r o p h a g e   O i l   1 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   S p e c t e r   O i l   1 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   V a m p i r e   O i l   2 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   D r a c o n i d e   O i l   2 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   O g r e   O i l   1 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   R e l i c   O i l   1 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   B e a s t   O i l   2 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   C u r s e d   O i l   2 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   H a n g e d   M a n   V e n o m   2 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   H y b r i d   O i l   2 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   I n s e c t o i d   O i l   2 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   M a g i c a l s   O i l   2 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   N e c r o p h a g e   O i l   2 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   S p e c t e r   O i l   2 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   V a m p i r e   O i l   2 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   D r a c o n i d e   O i l   2 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   O g r e   O i l   2 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   R e l i c   O i l   2 '   ) ;  
 	 	  
 	 	  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   D a n c i n g   S t a r   1 '   ) ;  
 	 	  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   D w i m e r i t u m   B o m b   1 '   ) ;  
 	 	  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   G r a p e s h o t   1 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   S a m u m   1 '   ) ;  
 	 	  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   W h i t e   F r o s t   1 '   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   D w a r v e n   s p i r i t   1 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   A l c o h e s t   1 '   ) ;  
 	 	 A d d A l c h e m y R e c i p e (   ' R e c i p e   f o r   W h i t e   G u l l   1 '   ) ;  
 	 	  
 	 	  
 	 	 A d d S t a r t i n g S c h e m a t i c s ( ) ;  
 	 	  
 	 	  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m (   ' S w a l l o w   2 '   ) ;  
 	 	 E q u i p I t e m (   i d s [ 0 ]   ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m (   ' T h u n d e r b o l t   2 '   ) ;  
 	 	 E q u i p I t e m (   i d s [ 0 ]   ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m (   ' T a w n y   O w l   2 '   ) ;  
 	 	 E q u i p I t e m (   i d s [ 0 ]   ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	  
 	 	 i d s   =   i n v . A d d A n I t e m (   ' G r a p e s h o t   2 '   ) ;  
 	 	 E q u i p I t e m (   i d s [ 0 ]   ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m (   ' S a m u m   2 '   ) ;  
 	 	 E q u i p I t e m (   i d s [ 0 ]   ) ;  
 	 	  
 	 	 i n v . A d d A n I t e m (   ' D w i m e r i t u m   B o m b   1 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' D r a g o n s   D r e a m   1 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' S i l v e r   D u s t   B o m b   1 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' W h i t e   F r o s t   2 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' D e v i l s   P u f f b a l l   2 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' D a n c i n g   S t a r   2 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' B e a s t   O i l   1 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' C u r s e d   O i l   1 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' H a n g e d   M a n   V e n o m   2 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' H y b r i d   O i l   2 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' I n s e c t o i d   O i l   2 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M a g i c a l s   O i l   1 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' N e c r o p h a g e   O i l   2 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' O g r e   O i l   1 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' S p e c t e r   O i l   1 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' V a m p i r e   O i l   2 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' D r a c o n i d e   O i l   2 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R e l i c   O i l   1 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' B l a c k   B l o o d   1 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' B l i z z a r d   1 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' C a t   2 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' F u l l   M o o n   1 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' G o l d e n   O r i o l e   1 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' K i l l e r   W h a l e   1 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M a r i b o r   F o r e s t   1 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' P e t r i s   P h i l t r e   2 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' W h i t e   G u l l   1 ' ,   3   ) ;  
 	 	 i n v . A d d A n I t e m (   ' W h i t e   H o n e y   2 '   ) ;  
 	 	 i n v . A d d A n I t e m (   ' W h i t e   R a f f a r d s   D e c o c t i o n   1 '   ) ;  
 	 	  
 	 	  
 	 	 i n v . A d d A n I t e m (   ' M u t a g e n   1 7 '   ) ; 	  
 	 	 i n v . A d d A n I t e m (   ' M u t a g e n   1 9 '   ) ; 	  
 	 	 i n v . A d d A n I t e m (   ' M u t a g e n   2 7 '   ) ; 	  
 	 	 i n v . A d d A n I t e m (   ' M u t a g e n   2 6 '   ) ; 	  
 	 	  
 	 	  
 	 	 i n v . A d d A n I t e m (   ' w e a p o n _ r e p a i r _ k i t _ 1 ' ,   5   ) ;  
 	 	 i n v . A d d A n I t e m (   ' w e a p o n _ r e p a i r _ k i t _ 2 ' ,   3   ) ;  
 	 	 i n v . A d d A n I t e m (   ' a r m o r _ r e p a i r _ k i t _ 1 ' ,   5   ) ;  
 	 	 i n v . A d d A n I t e m (   ' a r m o r _ r e p a i r _ k i t _ 2 ' ,   3   ) ;  
 	 	  
 	 	  
 	 	 q u a n t i t y M e d i u m   =   2 ;  
 	 	 q u a n t i t y L o w   =   1 ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   s t r i b o g   l e s s e r ' ,   q u a n t i t y M e d i u m   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   s t r i b o g ' ,   q u a n t i t y L o w   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   d a z h b o g   l e s s e r ' ,   q u a n t i t y M e d i u m   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   d a z h b o g ' ,   q u a n t i t y L o w   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   d e v a n a   l e s s e r ' ,   q u a n t i t y M e d i u m   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   d e v a n a ' ,   q u a n t i t y L o w   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   z o r i a   l e s s e r ' ,   q u a n t i t y M e d i u m   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   z o r i a ' ,   q u a n t i t y L o w   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   m o r a n a   l e s s e r ' ,   q u a n t i t y M e d i u m   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   m o r a n a ' ,   q u a n t i t y L o w   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   t r i g l a v   l e s s e r ' ,   q u a n t i t y M e d i u m   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   t r i g l a v ' ,   q u a n t i t y L o w   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   s v a r o g   l e s s e r ' ,   q u a n t i t y M e d i u m   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   s v a r o g ' ,   q u a n t i t y L o w   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   v e l e s   l e s s e r ' ,   q u a n t i t y M e d i u m   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   v e l e s ' ,   q u a n t i t y L o w   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   p e r u n   l e s s e r ' ,   q u a n t i t y M e d i u m   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   p e r u n ' ,   q u a n t i t y L o w   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   e l e m e n t a l   l e s s e r ' ,   q u a n t i t y M e d i u m   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u n e   e l e m e n t a l ' ,   q u a n t i t y L o w   ) ;  
 	 	  
 	 	 i n v . A d d A n I t e m (   ' G l y p h   a a r d   l e s s e r ' ,   q u a n t i t y M e d i u m   ) ;  
 	 	 i n v . A d d A n I t e m (   ' G l y p h   a a r d ' ,   q u a n t i t y L o w   ) ;  
 	 	 i n v . A d d A n I t e m (   ' G l y p h   a x i i   l e s s e r ' ,   q u a n t i t y M e d i u m   ) ;  
 	 	 i n v . A d d A n I t e m (   ' G l y p h   a x i i ' ,   q u a n t i t y L o w   ) ;  
 	 	 i n v . A d d A n I t e m (   ' G l y p h   i g n i   l e s s e r ' ,   q u a n t i t y M e d i u m   ) ;  
 	 	 i n v . A d d A n I t e m (   ' G l y p h   i g n i ' ,   q u a n t i t y L o w   ) ;  
 	 	 i n v . A d d A n I t e m (   ' G l y p h   q u e n   l e s s e r ' ,   q u a n t i t y M e d i u m   ) ;  
 	 	 i n v . A d d A n I t e m (   ' G l y p h   q u e n ' ,   q u a n t i t y L o w   ) ;  
 	 	 i n v . A d d A n I t e m (   ' G l y p h   y r d e n   l e s s e r ' ,   q u a n t i t y M e d i u m   ) ;  
 	 	 i n v . A d d A n I t e m (   ' G l y p h   y r d e n ' ,   q u a n t i t y L o w   ) ;  
 	 	  
 	 	  
 	 	 S t a n d a l o n e E p 2 _ 2 ( ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   S t a n d a l o n e E p 2 _ 2 ( )  
 	 {  
 	 	 v a r   h o r s e I d   :   S I t e m U n i q u e I d ;  
 	 	 v a r   i d s   :   a r r a y < S I t e m U n i q u e I d > ;  
 	 	 v a r   e n t s   :   a r r a y <   C J o u r n a l B a s e   > ;  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   m a n a g e r   :   C W i t c h e r J o u r n a l M a n a g e r ;  
 	 	  
 	 	  
 	 	 i n v . A d d A n I t e m (   ' C o w s   m i l k ' ,   2 0   ) ;  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m (   ' D u m p l i n g ' ,   4 4   ) ;  
 	 	 E q u i p I t e m (   i d s [ 0 ]   ) ;  
 	 	  
 	 	  
 	 	 i n v . A d d A n I t e m (   ' C l e a r i n g   P o t i o n ' ,   2 ,   t r u e ,   f a l s e ,   f a l s e   ) ;  
 	 	  
 	 	  
 	 	 G e t H o r s e M a n a g e r ( ) . R e m o v e A l l I t e m s ( ) ;  
 	 	  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m (   ' H o r s e   B a g   2 '   ) ;  
 	 	 h o r s e I d   =   G e t H o r s e M a n a g e r (   ) . M o v e I t e m T o H o r s e (   i d s [ 0 ]   ) ;  
 	 	 G e t H o r s e M a n a g e r ( ) . E q u i p I t e m (   h o r s e I d   ) ;  
 	 	  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m (   ' H o r s e   B l i n d e r   2 '   ) ;  
 	 	 h o r s e I d   =   G e t H o r s e M a n a g e r ( ) . M o v e I t e m T o H o r s e (   i d s [ 0 ]   ) ;  
 	 	 G e t H o r s e M a n a g e r ( ) . E q u i p I t e m (   h o r s e I d   ) ;  
 	 	  
 	 	 i d s . C l e a r ( ) ;  
 	 	 i d s   =   i n v . A d d A n I t e m (   ' H o r s e   S a d d l e   2 '   ) ;  
 	 	 h o r s e I d   =   G e t H o r s e M a n a g e r ( ) . M o v e I t e m T o H o r s e (   i d s [ 0 ]   ) ;  
 	 	 G e t H o r s e M a n a g e r ( ) . E q u i p I t e m (   h o r s e I d   ) ;  
 	 	  
 	 	 m a n a g e r   =   t h e G a m e . G e t J o u r n a l M a n a g e r ( ) ;  
  
 	 	  
 	 	 m a n a g e r . G e t A c t i v a t e d O f T y p e (   ' C J o u r n a l C r e a t u r e ' ,   e n t s   ) ;  
 	 	 f o r ( i = 0 ;   i < e n t s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 m a n a g e r . A c t i v a t e E n t r y (   e n t s [ i ] ,   J S _ I n a c t i v e ,   f a l s e ,   t r u e   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 e n t s . C l e a r ( ) ;  
 	 	 m a n a g e r . G e t A c t i v a t e d O f T y p e (   ' C J o u r n a l C h a r a c t e r ' ,   e n t s   ) ;  
 	 	 f o r ( i = 0 ;   i < e n t s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 m a n a g e r . A c t i v a t e E n t r y (   e n t s [ i ] ,   J S _ I n a c t i v e ,   f a l s e ,   t r u e   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 e n t s . C l e a r ( ) ;  
 	 	 m a n a g e r . G e t A c t i v a t e d O f T y p e (   ' C J o u r n a l Q u e s t ' ,   e n t s   ) ;  
 	 	 f o r ( i = 0 ;   i < e n t s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	  
 	 	 	 i f (   S t r S t a r t s W i t h (   e n t s [ i ] . b a s e N a m e ,   " q 6 0 "   )   )  
 	 	 	 	 c o n t i n u e ;  
 	 	 	 	  
 	 	 	 m a n a g e r . A c t i v a t e E n t r y (   e n t s [ i ] ,   J S _ I n a c t i v e ,   f a l s e ,   t r u e   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l A a r d ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l A d r e n a l i n e ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l A x i i ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l A x i i D i a l o g ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l C a m e r a ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l C a m e r a _ p a d ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l C i r i B l i n k ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l C i r i C h a r g e ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l C i r i S t a m i n a ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l C o u n t e r ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l D i a l o g C l o s e ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l F a l l i n g R o l l ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l F o c u s ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l F o c u s C l u e s ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l F o c u s C l u e s ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l H o r s e R o a d ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l H o r s e S p e e d 0 ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l H o r s e S p e e d 0 _ p a d ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l H o r s e S p e e d 1 ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l H o r s e S p e e d 2 ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l H o r s e S u m m o n ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l H o r s e S u m m o n _ p a d ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l I g n i ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l A l t e r n a t e S i n g s ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l B o a t D a m a g e ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l B o a t M o u n t ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l B u f f s ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l C h a r D e v L e v e l i n g ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l C h a r D e v S k i l l s ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l C r a f t i n g ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l C r o s s b o w ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l D i a l o g G w i n t ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l D i a l o g S h o p ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l D i v e ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l D o d g e ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l D o d g e _ p a d ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l D r a w W e a p o n ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l D r a w W e a p o n _ p a d ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l D u r a b i l i t y ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l E x p l o r a t i o n s ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l E x p l o r a t i o n s _ p a d ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l F a s t T r a v e l ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l F o c u s R e d O b j e c t s ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l G a s C l o u d s ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l H e a v y A t t a c k s ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l H o r s e ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l H o r s e S t a m i n a ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l J u m p ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l L i g h t A t t a c k s ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l L i g h t A t t a c k s _ p a d ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l M e d i t a t i o n ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l M e d i t a t i o n _ p a d ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l M o n s t e r T h r e a t L e v e l s ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l M o v e m e n t ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l M o v e m e n t _ p a d ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l M u t a g e n I n g r e d i e n t ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l M u t a g e n P o t i o n ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l O i l s ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l P e t a r d s ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l P o t i o n s ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l P o t i o n s _ p a d ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l Q u e s t A r e a ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l R a d i a l ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l R i f t s ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l R u n ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l S h o p D e s c r i p t i o n ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l S i g n C a s t ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l S i g n C a s t _ p a d ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l S p e c i a l A t t a c k s ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J o u r n a l S t a m i n a E x p l o r a t i o n ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l J u m p H a n g ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l L a d d e r ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l L a d d e r M o v e ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l L a d d e r M o v e _ p a d ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l O b j e c t i v e S w i t c h i n g ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l O x y g e n ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l P a r r y ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l P O I U n c o v e r e d ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l Q u e n ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l R o l l ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l R o l l _ p a d ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l S p e e d P a i r i n g ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l S p r i n t ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l S t a m i n a S i g n s ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l S t e a l i n g ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l S w i m m i n g S p e e d ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l T i m e d C h o i c e D i a l o g ' ,   J S _ A c t i v e   ) ;  
 	 	 m a n a g e r . A c t i v a t e E n t r y B y S c r i p t T a g (   ' T u t o r i a l Y r d e n ' ,   J S _ A c t i v e   ) ;  
 	 	  
 	 	 i n v . A d d A n I t e m (   ' G e r a l t   S h i r t ' ,   1   ) ;  
 	 	 i n v . A d d A n I t e m (   ' T h r e a d ' ,   1 3   ) ;  
 	 	 i n v . A d d A n I t e m (   ' S t r i n g ' ,   9   ) ;  
 	 	 i n v . A d d A n I t e m (   ' L i n e n ' ,   4   ) ;  
 	 	 i n v . A d d A n I t e m (   ' S i l k ' ,   6   ) ;  
 	 	 i n v . A d d A n I t e m (   ' N i g r e d o ' ,   3   ) ;  
 	 	 i n v . A d d A n I t e m (   ' A l b e d o ' ,   1   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u b e d o ' ,   1   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R e b i s ' ,   1   ) ;  
 	 	 i n v . A d d A n I t e m (   ' D o g   t a l l o w ' ,   4   ) ;  
 	 	 i n v . A d d A n I t e m (   ' L u n a r   s h a r d s ' ,   3   ) ;  
 	 	 i n v . A d d A n I t e m (   ' Q u i c k s i l v e r   s o l u t i o n ' ,   5   ) ;  
 	 	 i n v . A d d A n I t e m (   ' A e t h e r ' ,   1   ) ;  
 	 	 i n v . A d d A n I t e m (   ' O p t i m a   m a t e r ' ,   3   ) ;  
 	 	 i n v . A d d A n I t e m (   ' F i f t h   e s s e n c e ' ,   2   ) ;  
 	 	 i n v . A d d A n I t e m (   ' H a r d e n e d   t i m b e r ' ,   6   ) ;  
 	 	 i n v . A d d A n I t e m (   ' F u r   s q u a r e ' ,   1   ) ;  
 	 	 i n v . A d d A n I t e m (   ' L e a t h e r   s t r a p s ' ,   1 1   ) ;    
 	 	 i n v . A d d A n I t e m (   ' L e a t h e r   s q u a r e s ' ,   6   ) ;    
 	 	 i n v . A d d A n I t e m (   ' L e a t h e r ' ,   3   ) ;    
 	 	 i n v . A d d A n I t e m (   ' H a r d e n e d   l e a t h e r ' ,   1 4   ) ;    
 	 	 i n v . A d d A n I t e m (   ' C h i t i n   s c a l e ' ,   8   ) ;    
 	 	 i n v . A d d A n I t e m (   ' D r a c o n i d e   l e a t h e r ' ,   5   ) ;    
 	 	 i n v . A d d A n I t e m (   ' I n f u s e d   d r a c o n i d e   l e a t h e r ' ,   0   ) ;  
 	 	 i n v . A d d A n I t e m (   ' S t e e l   i n g o t ' ,   5   ) ;  
 	 	 i n v . A d d A n I t e m (   ' D a r k   i r o n   o r e ' ,   2   ) ;  
 	 	 i n v . A d d A n I t e m (   ' D a r k   i r o n   i n g o t ' ,   3   ) ;  
 	 	 i n v . A d d A n I t e m (   ' D a r k   i r o n   p l a t e ' ,   1   ) ;  
 	 	 i n v . A d d A n I t e m (   ' D a r k   s t e e l   i n g o t ' ,   1 0   ) ;  
 	 	 i n v . A d d A n I t e m (   ' D a r k   s t e e l   p l a t e ' ,   6   ) ;  
 	 	 i n v . A d d A n I t e m (   ' S i l v e r   o r e ' ,   2   ) ;  
 	 	 i n v . A d d A n I t e m (   ' S i l v e r   i n g o t ' ,   6   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M e t e o r i t e   o r e ' ,   3   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M e t e o r i t e   i n g o t ' ,   3   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M e t e o r i t e   p l a t e ' ,   2   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M e t e o r i t e   s i l v e r   i n g o t ' ,   6   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M e t e o r i t e   s i l v e r   p l a t e ' ,   5   ) ;  
 	 	 i n v . A d d A n I t e m (   ' O r i c h a l c u m   i n g o t ' ,   0   ) ;  
 	 	 i n v . A d d A n I t e m (   ' O r i c h a l c u m   p l a t e ' ,   1   ) ;  
 	 	 i n v . A d d A n I t e m (   ' D w i m e r y t e   i n g o t ' ,   6   ) ;  
 	 	 i n v . A d d A n I t e m (   ' D w i m e r y t e   p l a t e ' ,   5   ) ;  
 	 	 i n v . A d d A n I t e m (   ' D w i m e r y t e   e n r i c h e d   i n g o t ' ,   0   ) ;  
 	 	 i n v . A d d A n I t e m (   ' D w i m e r y t e   e n r i c h e d   p l a t e ' ,   0   ) ;  
 	 	 i n v . A d d A n I t e m (   ' E m e r a l d   d u s t ' ,   0   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u b y   d u s t ' ,   4   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u b y ' ,   2   ) ;  
 	 	 i n v . A d d A n I t e m (   ' R u b y   f l a w l e s s ' ,   1   ) ;  
 	 	 i n v . A d d A n I t e m (   ' S a p p h i r e   d u s t ' ,   0   ) ;  
 	 	 i n v . A d d A n I t e m (   ' S a p p h i r e ' ,   0   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   b r a i n ' ,   8   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   b l o o d ' ,   1 4   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   b o n e ' ,   9   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   c l a w ' ,   1 4   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   d u s t ' ,   9   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   e a r ' ,   5   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   e g g ' ,   1   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   e y e ' ,   1 0   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   e s s e n c e ' ,   7   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   f e a t h e r ' ,   8   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   h a i r ' ,   1 2   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   h e a r t ' ,   7   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   h i d e ' ,   4   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   l i v e r ' ,   5   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   p l a t e ' ,   1   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   s a l i v a ' ,   6   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   s t o m a c h ' ,   3   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   t o n g u e ' ,   5   ) ;  
 	 	 i n v . A d d A n I t e m (   ' M o n s t r o u s   t o o t h ' ,   9   ) ;  
 	 	 i n v . A d d A n I t e m (   ' V e n o m   e x t r a c t ' ,   0   ) ;  
 	 	 i n v . A d d A n I t e m (   ' S i r e n   v o c a l   c o r d s ' ,   1   ) ;  
 	 	  
 	 	  
 	 	 S e l e c t Q u i c k s l o t I t e m (   E E S _ R a n g e d W e a p o n   ) ;  
 	 	  
 	 	  
 	 	 F a c t s A d d (   ' k i l l _ b a s e _ t u t o r i a l s '   ) ;  
 	 	  
 	 	  
 	 	 t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . R e m o v e A l l Q u e u e d T u t o r i a l s ( ) ;  
 	 	  
 	 	  
 	 	 F a c t s A d d (   ' s t a n d a l o n e _ e p 2 '   ) ;  
 	 	 F a c t s R e m o v e (   " S t a n d A l o n e E P 2 "   ) ;  
 	 	  
 	 	 t h e G a m e . G e t J o u r n a l M a n a g e r ( ) . F o r c e U n t r a c k i n g Q u e s t F o r E P 1 S a v e g a m e ( ) ;  
 	 }  
 }  
  
 e x e c   f u n c t i o n   f u q f e p 1 ( )  
 {  
 	 t h e G a m e . G e t J o u r n a l M a n a g e r ( ) . F o r c e U n t r a c k i n g Q u e s t F o r E P 1 S a v e g a m e ( ) ;  
 }  
  
  
  
  
  
 f u n c t i o n   G e t W i t c h e r P l a y e r ( )   :   W 3 P l a y e r W i t c h e r  
 {  
 	 r e t u r n   ( W 3 P l a y e r W i t c h e r ) t h e P l a y e r ;  
 }  
 