/ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / * *   	 �   2 0 1 5   C D   P R O J E K T   S . A .   A l l   r i g h t s   r e s e r v e d .  
 / * *   	 T H E   W I T C H E R �   i s   a   t r a d e m a r k   o f   C D   P R O J E K T   S .   A .  
 / * *   	 T h e   W i t c h e r   g a m e   i s   b a s e d   o n   t h e   p r o s e   o f   A n d r z e j   S a p k o w s k i .  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
  
  
 c l a s s   C P l a y e r I n p u t    
 {  
  
 	 p r o t e c t e d   v a r   a l t S i g n C a s t i n g   :   b o o l ;   / / m o d W 3 R e d u x R G C  
  
  
 	 p r i v a t e   s a v e d   	 v a r   a c t i o n L o c k s   	 :   a r r a y < a r r a y < S I n p u t A c t i o n L o c k > > ; 	 	  
 	  
 	 p r i v a t e 	 v a r 	 t o t a l C a m e r a P r e s e t C h a n g e   :   f l o a t ; 	 	 d e f a u l t   t o t a l C a m e r a P r e s e t C h a n g e   =   0 . 0 f ;  
 	 p r i v a t e   v a r   p o t A c t i o n   	 	 	 	 :   S I n p u t A c t i o n ;  
 	 p r i v a t e   v a r   p o t P r e s s   	 	 	 	 :   b o o l ;  
 	 p r i v a t e   v a r 	 d e b u g B l o c k S o u r c e N a m e 	 :   n a m e ; 	 	 	 d e f a u l t 	 d e b u g B l o c k S o u r c e N a m e 	 =   ' P L A Y E R ' ;  
 	 p r i v a t e   v a r   h o l d F a s t M e n u I n v o k e d           :   b o o l ; 	 	 	 d e f a u l t   h o l d F a s t M e n u I n v o k e d   =   f a l s e ; 	 	 	  
 	 p r i v a t e   v a r   p o t i o n U p p e r H e l d ,   p o t i o n L o w e r H e l d   :   b o o l ; 	 	  
 	 p r i v a t e   v a r   p o t i o n M o d e H o l d   :   b o o l ; 	 	 	 	 	 	 	  
 	  
 	 	 d e f a u l t   p o t i o n M o d e H o l d   =   t r u e ;  
 	 	  
 	 p u b l i c   f u n c t i o n   I n i t i a l i z e ( i s F r o m L o a d   :   b o o l ,   o p t i o n a l   p r e v i o u s I n p u t   :   C P l a y e r I n p u t )  
 	 { 	 	  
 	 	 v a r   m i s s i n g L o c k s C o u n t ,   i   :   i n t ;  
 	 	 v a r   d u m m y   :   a r r a y < S I n p u t A c t i o n L o c k > ;  
 	 	  
 	 	  
 	 	 v a r   i n G a m e C o n f i g W r a p p e r   :   C I n G a m e C o n f i g W r a p p e r ;  
 	 	  
 	 	 i n G a m e C o n f i g W r a p p e r   =   t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) ; 	  
 	 	 i f ( i n G a m e C o n f i g W r a p p e r . G e t V a r V a l u e ( ' G a m e p l a y ' ,   ' E n a b l e A l t e r n a t e S i g n C a s t i n g ' )   = =   " 1 " )  
 	 	 	 a l t S i g n C a s t i n g   =   t r u e ;  
 	 	 e l s e  
 	 	 	 a l t S i g n C a s t i n g   =   f a l s e ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n A l t Q u e n ' ,   ' A l t Q u e n C a s t i n g '   ) ;  
 	 	  
 	 	  
 	 	 i f ( p r e v i o u s I n p u t )  
 	 	 {  
 	 	 	 a c t i o n L o c k s   =   p r e v i o u s I n p u t . a c t i o n L o c k s ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f ( ! i s F r o m L o a d )  
 	 	 	 {  
 	 	 	 	 a c t i o n L o c k s . G r o w ( E n u m G e t M a x ( ' E I n p u t A c t i o n B l o c k ' ) + 1 ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 m i s s i n g L o c k s C o u n t   =   E n u m G e t M a x ( ' E I n p u t A c t i o n B l o c k ' )   +   1   -   a c t i o n L o c k s . S i z e ( ) ;  
 	 	 	 	 f o r   (   i   =   0 ;   i   <   m i s s i n g L o c k s C o u n t ;   i   + =   1   )  
 	 	 	 	 {  
 	 	 	 	 	 a c t i o n L o c k s . P u s h B a c k (   d u m m y   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m S p r i n t ' ,   ' S p r i n t '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m S p r i n t T o g g l e ' ,   ' S p r i n t T o g g l e '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m W a l k T o g g l e ' ,   ' W a l k T o g g l e '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m G u a r d ' ,   ' G u a r d '   ) ;  
 	 	  
 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m S p a w n H o r s e ' ,   ' S p a w n H o r s e '   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m D r i n k P o t i o n 1 ' ,   ' D r i n k P o t i o n 1 '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m D r i n k P o t i o n 2 ' ,   ' D r i n k P o t i o n 2 '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m D r i n k P o t i o n 3 ' ,   ' D r i n k P o t i o n 3 '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m D r i n k P o t i o n 4 ' ,   ' D r i n k P o t i o n 4 '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m D r i n k p o t i o n U p p e r H e l d ' ,   ' D r i n k P o t i o n U p p e r H o l d '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m D r i n k p o t i o n L o w e r H e l d ' ,   ' D r i n k P o t i o n L o w e r H o l d '   ) ;  
 	 	  
 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m S t e e l S w o r d ' ,   ' S t e e l S w o r d '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m S i l v e r S w o r d ' ,   ' S i l v e r S w o r d '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m S h e a t h e A n y ' ,   ' S w o r d S h e a t h e '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m S h e a t h e S i l v e r ' ,   ' S w o r d S h e a t h e S i l v e r '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m S h e a t h e S t e e l ' ,   ' S w o r d S h e a t h e S t e e l '   ) ;  
 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n T o g g l e S i g n s ' ,   ' T o g g l e S i g n s '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n S e l e c t S i g n ' ,   ' S e l e c t A a r d '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n S e l e c t S i g n ' ,   ' S e l e c t Y r d e n '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n S e l e c t S i g n ' ,   ' S e l e c t I g n i '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n S e l e c t S i g n ' ,   ' S e l e c t Q u e n '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n S e l e c t S i g n ' ,   ' S e l e c t A x i i '   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m D e c k E d i t o r ' ,   ' P a n e l G w i n t D e c k E d i t o r '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m M e n u H u b ' ,   ' H u b M e n u '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m P a n e l I n v ' ,   ' P a n e l I n v '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m H o l d F a s t M e n u ' ,   ' H o l d F a s t M e n u '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m P a n e l C h a r ' ,   ' P a n e l C h a r '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m P a n e l M e d ' ,   ' P a n e l M e d '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m P a n e l M a p ' ,   ' P a n e l M a p '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m P a n e l M a p P C ' ,   ' P a n e l M a p P C '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m P a n e l J o u r ' ,   ' P a n e l J o u r '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m P a n e l A l c h ' ,   ' P a n e l A l c h '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m P a n e l G l o s s a r y ' ,   ' P a n e l G l o s s a r y '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m P a n e l B e s t i a r y ' ,   ' P a n e l B e s t i a r y '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m P a n e l M e d i t a t i o n ' ,   ' P a n e l M e d i t a t i o n '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m P a n e l C r a f t i n g ' ,   ' P a n e l C r a f t i n g '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n S h o w C o n t r o l s H e l p ' ,   ' C o n t r o l s H e l p '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m P a n e l U I R e s i z e ' ,   ' P a n e l U I R e s i z e '   ) ;  
 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C a s t S i g n ' ,   ' C a s t S i g n '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n E x p F o c u s ' ,   ' F o c u s '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n E x p M e d a l l i o n ' ,   ' M e d a l l i o n '   ) ;  
 	 	  
 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n B o a t D i s m o u n t ' ,   ' B o a t D i s m o u n t '   ) ;  
 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n D i v i n g ' ,   ' D i v e D o w n '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n D i v i n g ' ,   ' D i v e U p '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n D i v i n g D o d g e ' ,   ' D i v e D o d g e '   ) ;  
 	 	  
 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t S p e c i a l A t t a c k W i t h A l t e r n a t e L i g h t ' ,   ' S p e c i a l A t t a c k W i t h A l t e r n a t e L i g h t '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t S p e c i a l A t t a c k W i t h A l t e r n a t e H e a v y ' ,   ' S p e c i a l A t t a c k W i t h A l t e r n a t e H e a v y '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t A t t a c k W i t h A l t e r n a t e L i g h t ' ,   ' A t t a c k W i t h A l t e r n a t e L i g h t '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t A t t a c k W i t h A l t e r n a t e H e a v y ' ,   ' A t t a c k W i t h A l t e r n a t e H e a v y '   ) ;  
 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t A t t a c k L i g h t ' ,   ' A t t a c k L i g h t '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t A t t a c k H e a v y ' ,   ' A t t a c k H e a v y '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t S p e c i a l A t t a c k L i g h t ' ,   ' S p e c i a l A t t a c k L i g h t '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t S p e c i a l A t t a c k H e a v y ' ,   ' S p e c i a l A t t a c k H e a v y '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t D o d g e ' ,   ' D o d g e '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t R o l l ' ,   ' C b t R o l l '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n M o v e m e n t D o u b l e T a p ' ,   ' M o v e m e n t D o u b l e T a p W '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n M o v e m e n t D o u b l e T a p ' ,   ' M o v e m e n t D o u b l e T a p S '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n M o v e m e n t D o u b l e T a p ' ,   ' M o v e m e n t D o u b l e T a p A '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n M o v e m e n t D o u b l e T a p ' ,   ' M o v e m e n t D o u b l e T a p D '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t L o c k A n d G u a r d ' ,   ' L o c k A n d G u a r d '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t C a m e r a L o c k O r S p a w n H o r s e ' ,   ' C a m e r a L o c k O r S p a w n H o r s e '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t C a m e r a L o c k ' ,   ' C a m e r a L o c k '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t C o m b o D i g i t L e f t ' ,   ' C o m b o D i g i t L e f t '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t C o m b o D i g i t R i g h t ' ,   ' C o m b o D i g i t R i g h t '   ) ;  
 	 	  
 	 	  
 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t C i r i S p e c i a l A t t a c k ' ,   ' C i r i S p e c i a l A t t a c k '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t C i r i A t t a c k H e a v y ' ,   ' C i r i A t t a c k H e a v y '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t C i r i S p e c i a l A t t a c k H e a v y ' ,   ' C i r i S p e c i a l A t t a c k H e a v y '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t C i r i D o d g e ' ,   ' C i r i D o d g e '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t C i r i D a s h ' ,   ' C i r i D a s h '   ) ;  
 	 	  
 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t T h r o w I t e m ' ,   ' T h r o w I t e m '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t T h r o w I t e m H o l d ' ,   ' T h r o w I t e m H o l d '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C b t T h r o w C a s t A b o r t ' ,   ' T h r o w C a s t A b o r t '   ) ;  
 	 	  
 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C i r i D r a w W e a p o n ' ,   ' C i r i D r a w W e a p o n '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C i r i D r a w W e a p o n ' ,   ' C i r i D r a w W e a p o n A l t e r n a t i v e '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C i r i H o l s t e r W e a p o n ' ,   ' C i r i H o l s t e r W e a p o n '   ) ;  
 	 	  
 	 	  
 	 	 i f (   ! t h e G a m e . I s F i n a l B u i l d ( )   )  
 	 	 {  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n D b g S p e e d U p ' ,   ' D e b u g _ S p e e d U p '   ) ;  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n D b g H i t ' ,   ' D e b u g _ H i t '   ) ;  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n D b g K i l l T a r g e t ' ,   ' D e b u g _ K i l l T a r g e t '   ) ;  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n D b g K i l l A l l ' ,   ' D e b u g _ K i l l A l l E n e m i e s '   ) ;  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n D b g K i l l A l l T a r g e t i n g P l a y e r ' ,   ' D e b u g _ K i l l A l l T a r g e t i n g P l a y e r '   ) ;  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C o m m P a n e l F a k e H u d ' ,   ' P a n e l F a k e H u d '   ) ;  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n D b g T e l e p o r t T o P i n ' ,   ' D e b u g _ T e l e p o r t T o P i n '   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C h a n g e C a m e r a P r e s e t ' ,   ' C a m e r a P r e s e t '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C h a n g e C a m e r a P r e s e t B y M o u s e W h e e l ' ,   ' C a m e r a P r e s e t B y M o u s e W h e e l '   ) ;  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n M e d i t a t i o n A b o r t ' ,   ' M e d i t a t i o n A b o r t ' ) ;  
 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n F a s t M e n u ' ,   ' F a s t M e n u '   ) ; 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n I n g a m e M e n u ' ,   ' I n g a m e M e n u '   ) ; 	 	  
 	 	  
 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n T o g g l e H u d ' ,   ' T o g g l e H u d '   ) ;  
 	 }  
 	    
 	  
 	 f u n c t i o n   D e s t r o y ( )  
 	 {  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   F i n d A c t i o n L o c k I n d e x ( a c t i o n   :   E I n p u t A c t i o n B l o c k ,   s o u r c e N a m e   :   n a m e )   :   i n t  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	  
 	 	 f o r ( i = 0 ;   i < a c t i o n L o c k s [ a c t i o n ] . S i z e ( ) ;   i + = 1 )  
 	 	 	 i f ( a c t i o n L o c k s [ a c t i o n ] [ i ] . s o u r c e N a m e   = =   s o u r c e N a m e )  
 	 	 	 	 r e t u r n   i ;  
 	 	 	 	  
 	 	 r e t u r n   - 1 ;  
 	 }  
  
 	  
 	 p u b l i c   f u n c t i o n   B l o c k A c t i o n ( a c t i o n   :   E I n p u t A c t i o n B l o c k ,   s o u r c e N a m e   :   n a m e ,   l o c k   :   b o o l ,   o p t i o n a l   k e e p O n S p a w n   :   b o o l ,   o p t i o n a l   o n S p a w n e d N u l l P o i n t e r H a c k F i x   :   C P l a y e r ,   o p t i o n a l   i s F r o m Q u e s t   :   b o o l ,   o p t i o n a l   i s F r o m P l a c e   :   b o o l )  
 	 { 	 	  
 	 	 v a r   i n d e x   :   i n t ; 	 	  
 	 	 v a r   i s L o c k e d ,   w a s L o c k e d   :   b o o l ;  
 	 	 v a r   a c t i o n L o c k   :   S I n p u t A c t i o n L o c k ;  
 	 	  
 	 	 i f   ( a c t i o n   = =   E I A B _ H i g h l i g h t O b j e c t i v e )  
 	 	 {  
 	 	 	 i n d e x   =   F i n d A c t i o n L o c k I n d e x ( a c t i o n ,   s o u r c e N a m e ) ;  
 	 	 }  
 	 	  
 	 	 i n d e x   =   F i n d A c t i o n L o c k I n d e x ( a c t i o n ,   s o u r c e N a m e ) ;  
 	 	  
 	 	 w a s L o c k e d   =   ( a c t i o n L o c k s [ a c t i o n ] . S i z e ( )   >   0 ) ;  
 	 	  
 	 	 i f ( l o c k )  
 	 	 {  
 	 	 	 i f ( i n d e x   ! =   - 1 )  
 	 	 	 	 r e t u r n ;  
 	 	 	 	  
 	 	 	 a c t i o n L o c k . s o u r c e N a m e   =   s o u r c e N a m e ;  
 	 	 	  
 	 	 	 i f (   a c t i o n   = =   E I A B _ C a m e r a L o c k   )  
 	 	 	 {  
 	 	 	 	 a c t i o n L o c k . r e m o v e d O n S p a w n   =   t r u e ;  
 	 	 	 }  
 	 	 	 e l s e    
 	 	 	 {  
 	 	 	 	 a c t i o n L o c k . r e m o v e d O n S p a w n   =   ! k e e p O n S p a w n ;  
 	 	 	 }  
 	 	 	 a c t i o n L o c k . i s F r o m Q u e s t   =   i s F r o m Q u e s t ;  
 	 	 	 a c t i o n L o c k . i s F r o m P l a c e   =   i s F r o m P l a c e ;  
 	 	 	  
 	 	 	 a c t i o n L o c k s [ a c t i o n ] . P u s h B a c k ( a c t i o n L o c k ) ; 	 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f ( i n d e x   = =   - 1 )  
 	 	 	 	 r e t u r n ;  
 	 	 	 	  
 	 	 	 a c t i o n L o c k s [ a c t i o n ] . E r a s e ( i n d e x ) ;  
 	 	 }  
 	 	  
 	 	 i s L o c k e d   =   ( a c t i o n L o c k s [ a c t i o n ] . S i z e ( )   >   0 ) ;  
 	 	 i f ( i s L o c k e d   ! =   w a s L o c k e d )  
 	 	 	 O n A c t i o n L o c k C h a n g e d ( a c t i o n ,   i s L o c k e d ,   s o u r c e N a m e ,   o n S p a w n e d N u l l P o i n t e r H a c k F i x ) ;  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   T u t o r i a l F o r c e U n b l o c k R a d i a l ( )   :   a r r a y < S I n p u t A c t i o n L o c k >  
 	 {  
 	 	 v a r   r e t   :   a r r a y < S I n p u t A c t i o n L o c k > ;  
 	 	  
 	 	 r e t   =   a c t i o n L o c k s [ E I A B _ R a d i a l M e n u ] ;  
 	 	  
 	 	 a c t i o n L o c k s [ E I A B _ R a d i a l M e n u ] . C l e a r ( ) ;  
 	 	  
 	 	 t h e P l a y e r . S e t B I s I n p u t A l l o w e d ( t r u e ,   ' ' ) ;  
 	 	  
 	 	 B l o c k A c t i o n (   E I A B _ S i g n s ,   ' T o x i c G a s T u t o r i a l ' ,   t r u e ,   t r u e ,   N U L L ,   f a l s e ) ;  
 	 	  
 	 	 r e t u r n   r e t ;  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   T u t o r i a l F o r c e R e s t o r e R a d i a l L o c k s ( r a d i a l L o c k s   :   a r r a y < S I n p u t A c t i o n L o c k > )  
 	 {  
 	 	 a c t i o n L o c k s [ E I A B _ R a d i a l M e n u ]   =   r a d i a l L o c k s ;  
 	 	 t h e P l a y e r . U n b l o c k A c t i o n ( E I A B _ S i g n s ,   ' T o x i c G a s T u t o r i a l '   ) ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   O n A c t i o n L o c k C h a n g e d ( a c t i o n   :   E I n p u t A c t i o n B l o c k ,   l o c k e d   :   b o o l ,   o p t i o n a l   s o u r c e N a m e   :   n a m e ,   o p t i o n a l   o n S p a w n e d N u l l P o i n t e r H a c k F i x   :   C P l a y e r )  
 	 { 	 	  
 	 	 v a r   p l a y e r   :   C P l a y e r ;  
 	 	 v a r   l o c k T y p e   :   E P l a y e r I n t e r a c t i o n L o c k ;  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	 v a r   g u i M a n a g e r   :   C R 4 G u i M a n a g e r ;  
 	 	 v a r   r o o t M e n u   :   C R 4 M e n u B a s e ;  
 	 	  
 	 	  
 	 	 i f (   s o u r c e N a m e   = =   d e b u g B l o c k S o u r c e N a m e   )  
 	 	 {  
 	 	 	  
 	 	 	 s o u r c e N a m e 	 =   s o u r c e N a m e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( a c t i o n   = =   E I A B _ F a s t T r a v e l )  
 	 	 {  
 	 	 	 t h e G a m e . G e t C o m m o n M a p M a n a g e r ( ) . E n a b l e F a s t T r a v e l l i n g ( ! l o c k e d ) ;  
 	 	 }  
 	 	 e l s e   i f ( a c t i o n   = =   E I A B _ I n t e r a c t i o n s )  
 	 	 { 	 	  
 	 	 	  
 	 	 	 i f ( s o u r c e N a m e   = =   ' I n s i d e C o m b a t A c t i o n ' )  
 	 	 	 	 l o c k T y p e   =   P I L _ C o m b a t A c t i o n ;  
 	 	 	 e l s e  
 	 	 	 	 l o c k T y p e   =   P I L _ D e f a u l t ;  
 	 	 	  
 	 	 	 i f ( ! t h e P l a y e r )  
 	 	 	 	 p l a y e r   =   o n S p a w n e d N u l l P o i n t e r H a c k F i x ;  
 	 	 	 e l s e  
 	 	 	 	 p l a y e r   =   t h e P l a y e r ;  
 	 	 	  
 	 	 	 i f ( p l a y e r )  
 	 	 	 {  
 	 	 	 	 i f ( l o c k e d )  
 	 	 	 	 	 p l a y e r . L o c k B u t t o n I n t e r a c t i o n s ( l o c k T y p e ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 p l a y e r . U n l o c k B u t t o n I n t e r a c t i o n s ( l o c k T y p e ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;    
 	 	 	 i f   (   h u d   )    
 	 	 	 {    
 	 	 	 	 h u d . F o r c e I n t e r a c t i o n U p d a t e ( ) ;    
 	 	 	 }  
 	 	 } 	 	  
 	 	 e l s e   i f ( a c t i o n   = =   E I A B _ M o v e m e n t   & &   l o c k e d   & &   t h e P l a y e r ) 	  
 	 	 {      
 	 	 	  
 	 	 	 i f ( t h e P l a y e r . I s U s i n g V e h i c l e ( )   & &   t h e P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' H o r s e R i d i n g ' )  
 	 	 	 {  
 	 	 	 	 ( ( C A c t o r ) t h e P l a y e r . G e t U s e d V e h i c l e ( ) ) . G e t M o v i n g A g e n t C o m p o n e n t ( ) . R e s e t M o v e R e q u e s t s ( ) ;  
 	 	 	 	 t h e P l a y e r . G e t U s e d V e h i c l e ( ) . S e t B e h a v i o r V a r i a b l e (   ' 2 i d l e ' ,   1 ) ;  
 	 	 	 	  
 	 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' s p e e d ' ,   0 ) ;  
 	 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' 2 i d l e ' ,   1 ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( ! t h e P l a y e r . I s I n A i r ( ) )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . R a i s e F o r c e E v e n t (   ' I d l e '   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( a c t i o n   = =   E I A B _ D i s m o u n t V e h i c l e )  
 	 	 {  
 	 	 	 g u i M a n a g e r   =   t h e G a m e . G e t G u i M a n a g e r ( ) ;  
 	 	 	  
 	 	 	 i f   ( g u i M a n a g e r )  
 	 	 	 {  
 	 	 	 	 g u i M a n a g e r . U p d a t e D i s m o u n t A v a i l a b l e ( l o c k e d ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( a c t i o n   = =   E I A B _ O p e n P r e p a r a t i o n   | |   a c t i o n   = =   E I A B _ O p e n M a p   | |   a c t i o n   = =   E I A B _ O p e n I n v e n t o r y   | |  
 	 	 	 	   a c t i o n   = =   E I A B _ O p e n J o u r n a l 	 | |   a c t i o n   = =   E I A B _ O p e n C h a r a c t e r P a n e l   | |   a c t i o n   = =   E I A B _ O p e n G l o s s a r y   | |  
 	 	 	 	   a c t i o n   = =   E I A B _ O p e n A l c h e m y   | |   a c t i o n   = =   E I A B _ M e d i t a t i o n W a i t i n g   | |   a c t i o n   = =   E I A B _ O p e n M e d i t a t i o n )  
 	 	 {  
 	 	 	 g u i M a n a g e r   =   t h e G a m e . G e t G u i M a n a g e r ( ) ;  
 	 	 	  
 	 	 	 i f   ( g u i M a n a g e r   & &   g u i M a n a g e r . I s A n y M e n u ( ) )  
 	 	 	 {  
 	 	 	 	 r o o t M e n u   =   ( C R 4 M e n u B a s e ) g u i M a n a g e r . G e t R o o t M e n u ( ) ;  
 	 	 	 	  
 	 	 	 	 i f   ( r o o t M e n u )  
 	 	 	 	 {  
 	 	 	 	 	 r o o t M e n u . A c t i o n B l o c k S t a t e C h a n g e ( a c t i o n ,   l o c k e d ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   B l o c k A l l A c t i o n s ( s o u r c e N a m e   :   n a m e ,   l o c k   :   b o o l ,   o p t i o n a l   e x c e p t i o n s   :   a r r a y < E I n p u t A c t i o n B l o c k > ,   o p t i o n a l   s a v e L o c k   :   b o o l ,   o p t i o n a l   o n S p a w n e d N u l l P o i n t e r H a c k F i x   :   C P l a y e r ,   o p t i o n a l   i s F r o m Q u e s t   :   b o o l ,   o p t i o n a l   i s F r o m P l a c e   :   b o o l )  
 	 {  
 	 	 v a r   i ,   s i z e   :   i n t ;  
 	 	  
 	 	 s i z e   =   E n u m G e t M a x ( ' E I n p u t A c t i o n B l o c k ' ) + 1 ;  
 	 	 f o r ( i = 0 ;   i < s i z e ;   i + = 1 )  
 	 	 {  
 	 	 	 i f   (   e x c e p t i o n s . C o n t a i n s ( i )   | |   i   = =   E I A B _ C a m e r a L o c k   )  
 	 	 	 	 c o n t i n u e ;  
 	 	 	  
 	 	 	 B l o c k A c t i o n ( i ,   s o u r c e N a m e ,   l o c k ,   s a v e L o c k ,   o n S p a w n e d N u l l P o i n t e r H a c k F i x ,   i s F r o m Q u e s t ,   i s F r o m P l a c e ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   B l o c k A l l Q u e s t A c t i o n s ( s o u r c e N a m e   :   n a m e ,   l o c k   :   b o o l )  
 	 {  
 	 	 v a r   a c t i o n ,   j ,   s i z e   :   i n t ;  
 	 	 v a r   i s L o c k e d ,   w a s L o c k e d   :   b o o l ;  
 	 	 v a r   e x c e p t i o n s   :   a r r a y <   E I n p u t A c t i o n B l o c k   > ;  
 	 	  
 	 	 i f ( l o c k )  
 	 	 {  
 	 	 	  
 	 	 	 e x c e p t i o n s . P u s h B a c k (   E I A B _ F a s t T r a v e l G l o b a l   ) ;  
 	 	 	 B l o c k A l l A c t i o n s ( s o u r c e N a m e ,   l o c k ,   e x c e p t i o n s ,   t r u e ,   ,   t r u e ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	  
 	 	 	 s i z e   =   E n u m G e t M a x ( ' E I n p u t A c t i o n B l o c k ' ) + 1 ;  
 	 	 	 f o r ( a c t i o n = 0 ;   a c t i o n < s i z e ;   a c t i o n + = 1 )  
 	 	 	 {  
 	 	 	 	 w a s L o c k e d   =   ( a c t i o n L o c k s [ a c t i o n ] . S i z e ( )   >   0 ) ;  
 	 	 	 	  
 	 	 	 	 f o r ( j = 0 ;   j < a c t i o n L o c k s [ a c t i o n ] . S i z e ( ) ; )  
 	 	 	 	 {  
 	 	 	 	 	 i f ( a c t i o n L o c k s [ a c t i o n ] [ j ] . i s F r o m Q u e s t )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t i o n L o c k s [ a c t i o n ] . E r a s e F a s t ( j ) ; 	 	  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 j   + =   1 ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i s L o c k e d   =   ( a c t i o n L o c k s [ a c t i o n ] . S i z e ( )   >   0 ) ;  
 	 	 	 	 i f ( w a s L o c k e d   ! =   i s L o c k e d )  
 	 	 	 	 	 O n A c t i o n L o c k C h a n g e d ( a c t i o n ,   i s L o c k e d ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   B l o c k A l l U I Q u e s t A c t i o n s ( s o u r c e N a m e   :   n a m e ,   l o c k   :   b o o l )  
 	 {  
 	 	 v a r   i ,   j ,   a c t i o n ,   s i z e   :   i n t ;  
 	 	 v a r   u i A c t i o n s   :   a r r a y < i n t > ;  
 	 	 v a r   w a s L o c k e d ,   i s L o c k e d   :   b o o l ;  
 	 	  
 	 	 i f (   l o c k   )  
 	 	 {  
 	 	 	 B l o c k A c t i o n ( E I A B _ O p e n I n v e n t o r y ,   s o u r c e N a m e ,   t r u e ,   t r u e ,   N U L L ,   f a l s e ) ;  
 	 	 	 B l o c k A c t i o n ( E I A B _ M e d i t a t i o n W a i t i n g ,   s o u r c e N a m e ,   t r u e ,   t r u e ,   N U L L ,   f a l s e ) ;  
 	 	 	 B l o c k A c t i o n ( E I A B _ O p e n M e d i t a t i o n ,   s o u r c e N a m e ,   t r u e ,   t r u e ,   N U L L ,   f a l s e ) ;  
 	 	 	 B l o c k A c t i o n ( E I A B _ F a s t T r a v e l ,   s o u r c e N a m e ,   t r u e ,   t r u e ,   N U L L ,   f a l s e ) ;  
 	 	 	 B l o c k A c t i o n ( E I A B _ O p e n M a p ,   s o u r c e N a m e ,   t r u e ,   t r u e ,   N U L L ,   f a l s e ) ;  
 	 	 	 B l o c k A c t i o n ( E I A B _ O p e n C h a r a c t e r P a n e l ,   s o u r c e N a m e ,   t r u e ,   t r u e ,   N U L L ,   f a l s e ) ;  
 	 	 	 B l o c k A c t i o n ( E I A B _ O p e n J o u r n a l ,   s o u r c e N a m e ,   t r u e ,   t r u e ,   N U L L ,   f a l s e ) ;  
 	 	 	 B l o c k A c t i o n ( E I A B _ O p e n A l c h e m y ,   s o u r c e N a m e ,   t r u e ,   t r u e ,   N U L L ,   f a l s e ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	  
 	 	 	 u i A c t i o n s . R e s i z e ( 8 ) ;  
 	 	 	 u i A c t i o n s [ 0 ]   =   E I A B _ O p e n I n v e n t o r y ;  
 	 	 	 u i A c t i o n s [ 1 ]   =   E I A B _ M e d i t a t i o n W a i t i n g ;  
 	 	 	 u i A c t i o n s [ 2 ]   =   E I A B _ O p e n M e d i t a t i o n ;  
 	 	 	 u i A c t i o n s [ 3 ]   =   E I A B _ F a s t T r a v e l ;  
 	 	 	 u i A c t i o n s [ 4 ]   =   E I A B _ O p e n M a p ;  
 	 	 	 u i A c t i o n s [ 5 ]   =   E I A B _ O p e n C h a r a c t e r P a n e l ;  
 	 	 	 u i A c t i o n s [ 6 ]   =   E I A B _ O p e n J o u r n a l ;  
 	 	 	 u i A c t i o n s [ 7 ]   =   E I A B _ O p e n A l c h e m y ;  
 	 	 	  
 	 	 	 s i z e   =   u i A c t i o n s . S i z e ( ) ;  
 	 	 	 f o r ( i = 0 ;   i < s i z e ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 a c t i o n   =   u i A c t i o n s [ i ] ;  
 	 	 	 	  
 	 	 	 	 w a s L o c k e d   =   ( a c t i o n L o c k s [ a c t i o n ] . S i z e ( )   >   0 ) ;  
 	 	 	 	  
 	 	 	 	 f o r ( j = 0 ;   j < a c t i o n L o c k s [ a c t i o n ] . S i z e ( ) ; )  
 	 	 	 	 {  
 	 	 	 	 	 i f ( a c t i o n L o c k s [ a c t i o n ] [ j ] . i s F r o m Q u e s t )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 a c t i o n L o c k s [ a c t i o n ] . E r a s e F a s t ( j ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 j   + =   1 ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i s L o c k e d   =   ( a c t i o n L o c k s [ a c t i o n ] . S i z e ( )   >   0 ) ;  
 	 	 	 	 i f ( w a s L o c k e d   ! =   i s L o c k e d )  
 	 	 	 	 	 O n A c t i o n L o c k C h a n g e d ( a c t i o n ,   i s L o c k e d ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   F o r c e U n l o c k A l l I n p u t A c t i o n s ( a l s o Q u e s t L o c k s   :   b o o l )  
 	 {  
 	 	 v a r   i ,   j   :   i n t ;  
 	  
 	 	 f o r ( i = 0 ;   i < = E n u m G e t M a x ( ' E I n p u t A c t i o n B l o c k ' ) ;   i + = 1 )  
 	 	 {  
 	 	 	 i f ( a l s o Q u e s t L o c k s )  
 	 	 	 {  
 	 	 	 	 a c t i o n L o c k s [ i ] . C l e a r ( ) ;  
 	 	 	 	 O n A c t i o n L o c k C h a n g e d ( i ,   f a l s e ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 f o r ( j = a c t i o n L o c k s [ i ] . S i z e ( ) - 1 ;   j > = 0 ;   j - = 1 )  
 	 	 	 	 {  
 	 	 	 	 	 i f ( a c t i o n L o c k s [ i ] [ j ] . r e m o v e d O n S p a w n )  
 	 	 	 	 	 	 a c t i o n L o c k s [ i ] . E r a s e ( j ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f ( a c t i o n L o c k s [ i ] . S i z e ( )   = =   0 )  
 	 	 	 	 	 O n A c t i o n L o c k C h a n g e d ( i ,   f a l s e ) ;  
 	 	 	 } 	 	 	  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   R e m o v e L o c k s O n S p a w n ( )  
 	 {  
 	 	 v a r   i ,   j   :   i n t ;  
 	  
 	 	 f o r ( i = 0 ;   i < a c t i o n L o c k s . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 f o r ( j = a c t i o n L o c k s [ i ] . S i z e ( ) - 1 ;   j > = 0 ;   j - = 1 )  
 	 	 	 {  
 	 	 	 	 i f ( a c t i o n L o c k s [ i ] [ j ] . r e m o v e d O n S p a w n   | |   i   = =   E I A B _ C a m e r a L o c k )  
 	 	 	 	 {  
 	 	 	 	 	 a c t i o n L o c k s [ i ] . E r a s e ( j ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t A c t i o n L o c k s ( a c t i o n   :   E I n p u t A c t i o n B l o c k )   :   a r r a y <   S I n p u t A c t i o n L o c k   >  
 	 {  
 	 	 r e t u r n   a c t i o n L o c k s [ a c t i o n ] ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   G e t A l l A c t i o n L o c k s ( )   :   a r r a y <   a r r a y <   S I n p u t A c t i o n L o c k   >   >  
 	 {  
 	 	 r e t u r n   a c t i o n L o c k s ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s A c t i o n A l l o w e d ( a c t i o n   :   E I n p u t A c t i o n B l o c k )   :   b o o l  
 	 {  
 	 	 v a r   a c t i o n A l l o w e d   :   b o o l ;  
 	 	 a c t i o n A l l o w e d   =   ( a c t i o n L o c k s [ a c t i o n ] . S i z e ( )   = =   0 ) ;  
 	 	 r e t u r n   a c t i o n A l l o w e d ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   I s A c t i o n B l o c k e d B y (   a c t i o n   :   E I n p u t A c t i o n B l o c k ,   s o u r c e N a m e   :   n a m e   )   :   b o o l  
 	 {  
 	 	 r e t u r n   F i n d A c t i o n L o c k I n d e x (   a c t i o n ,   s o u r c e N a m e   )   ! =   - 1 ;  
 	 }  
 	 	  
 	 p u b l i c   f i n a l   f u n c t i o n   G e t A c t i o n B l o c k e d H u d L o c k T y p e ( a c t i o n   :   E I n p u t A c t i o n B l o c k )   :   n a m e  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 i f ( a c t i o n   = =   E I A B _ U n d e f i n e d )  
 	 	 	 r e t u r n   ' ' ;  
 	 	 	  
 	 	 f o r ( i = 0 ;   i < a c t i o n L o c k s [ a c t i o n ] . S i z e ( ) ;   i + = 1 )  
 	 	 {  
 	 	 	 i f ( a c t i o n L o c k s [ a c t i o n ] [ i ] . i s F r o m P l a c e )  
 	 	 	 	 r e t u r n   ' p l a c e ' ;  
 	 	 }  
 	 	  
 	 	 i f ( a c t i o n L o c k s [ a c t i o n ] . S i z e ( )   >   0 )  
 	 	 	 r e t u r n   ' t i m e ' ;  
 	 	 	  
 	 	 r e t u r n   ' ' ;  
 	 }  
  
 	  
 	  
 	  
 	  
 	  
 	  
 	 e v e n t   O n A l t Q u e n (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 { 	  
 	 	 i f ( a l t S i g n C a s t i n g   & &   ! t h e I n p u t . L a s t U s e d P C I n p u t ( )   & &   I s P r e s s e d (   a c t i o n   )   & &   t h e I n p u t . I s A c t i o n P r e s s e d ( ' C a s t S i g n ' )   & &   ! G e t W i t c h e r P l a y e r ( ) . I s C u r r e n t S i g n C h a n n e l e d ( ) )  
 	 	 {  
 	 	 	 A l t C a s t S i g n ( S T _ Q u e n ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 e v e n t   O n C o m m S p r i n t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s P r e s s e d (   a c t i o n   )   )  
 	 	 {  
 	 	 	  
 	 	 	 i f ( a l t S i g n C a s t i n g   & &   ! t h e I n p u t . L a s t U s e d P C I n p u t ( )   & &   t h e I n p u t . I s A c t i o n P r e s s e d ( ' C a s t S i g n ' )   & &   ! G e t W i t c h e r P l a y e r ( ) . I s C u r r e n t S i g n C h a n n e l e d ( ) )  
 	 	 	 {  
 	 	 	 	 A l t C a s t S i g n ( S T _ A a r d ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 t h e P l a y e r . S e t S p r i n t A c t i o n P r e s s e d ( t r u e ) ;  
 	 	 	 	  
 	 	 	 i f   (   t h e P l a y e r . r a n g e d W e a p o n   )  
 	 	 	 	 t h e P l a y e r . r a n g e d W e a p o n . O n S p r i n t H o l s t e r ( ) ;  
 	 	 }  
 	 	  
 	 	  
 	 }  
 	  
 	 e v e n t   O n C o m m S p r i n t T o g g l e (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	  
 	 	 	 i f (   t h e I n p u t . L a s t U s e d P C I n p u t ( )   | |   t h e P l a y e r . G e t L e f t S t i c k S p r i n t ( )   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h e P l a y e r . G e t I s S p r i n t T o g g l e d ( )   )  
 	 	 	 	 	 t h e P l a y e r . S e t S p r i n t T o g g l e (   f a l s e   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . S e t S p r i n t T o g g l e (   t r u e   ) ;  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   t h e P l a y e r . r a n g e d W e a p o n   )  
 	 	 	 	 	 	 t h e P l a y e r . r a n g e d W e a p o n . O n S p r i n t H o l s t e r ( ) ;  
 	 	 	 	 	  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 } 	  
 	  
  
 	  
 	 p r i v a t e   v a r   h o l d T i m e r   :   f l o a t ;  
 	  
 	  
 	 e v e n t   O n C o m m W a l k T o g g l e (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 { 	  
 	 	  
 	 	 v a r   h o r s e   :   C N e w N P C ;  
 	 	 v a r   h o r s e W a l k S t a t e   :   i n t ;  
 	 	  
 	 	 h o r s e   =   t h e P l a y e r . G e t H o r s e C u r r e n t l y M o u n t e d ( ) ;  
 	 	 i f ( h o r s e )  
 	 	 {  
 	 	 	 h o r s e W a l k S t a t e   =   h o r s e . G e t H o r s e C o m p o n e n t ( ) . G e t H o r s e W a l k S t a t e ( ) ;  
 	 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 	 {  
 	 	 	 	 h o l d T i m e r   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 	 {  
 	 	 	 	 i f ( t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( )   -   h o l d T i m e r   >   0 . 2 )  
 	 	 	 	 {  
 	 	 	 	 	 h o r s e . G e t H o r s e C o m p o n e n t ( ) . S e t H o r s e W a l k S t a t e ( 0 ) ;    
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 { 	  
 	 	 	 	 	 i f ( h o r s e W a l k S t a t e   = =   0 )  
 	 	 	 	 	 	 h o r s e . G e t H o r s e C o m p o n e n t ( ) . S e t H o r s e W a l k S t a t e ( 1 ) ; 	  
 	 	 	 	 	 e l s e   i f ( h o r s e W a l k S t a t e   = =   1 )  
 	 	 	 	 	 	 h o r s e . G e t H o r s e C o m p o n e n t ( ) . S e t H o r s e W a l k S t a t e ( 2 ) ; 	  
 	 	 	 	 	 e l s e    
 	 	 	 	 	 	 h o r s e . G e t H o r s e C o m p o n e n t ( ) . S e t H o r s e W a l k S t a t e ( 0 ) ; 	  
 	 	 	 	 }  
 	 	 	 } 	 	 	  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   & &   ! t h e P l a y e r . G e t I s S p r i n t i n g ( )   & &   ! t h e P l a y e r . m o d i f y P l a y e r S p e e d   )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . G e t I s W a l k T o g g l e d ( )   )  
 	 	 	 	 t h e P l a y e r . S e t W a l k T o g g l e (   f a l s e   ) ;  
 	 	 	 e l s e  
 	 	 	 	 t h e P l a y e r . S e t W a l k T o g g l e (   t r u e   ) ;  
 	 	 }  
 	 } 	  
 	  
 	 	  
 	 e v e n t   O n C o m m G u a r d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f ( t h e P l a y e r . I s C i r i ( )   & &   ! G e t C i r i P l a y e r ( ) . H a s S w o r d ( ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 i f   (   ! t h e P l a y e r . I s I n s i d e I n t e r a c t i o n ( )   )  
 	 	 { 	 	  
 	 	 	 i f   (     I s A c t i o n A l l o w e d ( E I A B _ P a r r y )   )  
 	 	 	 {  
 	 	 	 	 i f (   I s R e l e a s e d ( a c t i o n )   & &   t h e P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' C o m b a t F i s t s '   )  
 	 	 	 	 	 t h e P l a y e r . O n G u a r d e d R e l e a s e d ( ) ; 	  
 	 	 	 	  
 	 	 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . A d d C o u n t e r T i m e S t a m p ( t h e G a m e . G e t E n g i n e T i m e ( ) ) ; 	  
 	 	 	 	 	 t h e P l a y e r . S e t G u a r d e d ( t r u e ) ;  
 	 	 	 	 	 t h e P l a y e r . O n P e r f o r m G u a r d ( ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . S e t G u a r d e d ( f a l s e ) ;  
 	 	 	 	 } 	  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ P a r r y ) ; 	 	 	 	  
 	 	 	 }  
 	 	 }  
 	 } 	  
 	  
 	  
 	  
 	  
 	  
 	 p r i v a t e   v a r   p r e s s T i m e s t a m p   :   f l o a t ;  
 	 p r i v a t e   c o n s t   v a r   D O U B L E _ T A P _ W I N D O W 	 :   f l o a t ;  
 	 d e f a u l t   D O U B L E _ T A P _ W I N D O W   =   0 . 4 ;  
 	  
 	 e v e n t   O n C o m m S p a w n H o r s e (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   i s S p a w n H o r s e S e c o n d T a p   :   b o o l ;  
 	 	 i s S p a w n H o r s e S e c o n d T a p   =   f a l s e ;  
 	 	  
 	 	 i f (   I s P r e s s e d (   a c t i o n   )   )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i s S p a w n H o r s e S e c o n d T a p   =   p r e s s T i m e s t a m p   +   D O U B L E _ T A P _ W I N D O W   > =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
  
 	 	 i f (   I s A c t i o n A l l o w e d (   E I A B _ C a l l H o r s e   )    
 	 	 	 & &   ! t h e P l a y e r . I s I n I n t e r i o r ( )   & &   ! t h e P l a y e r . I s I n A i r ( )  
 	 	 	 & &   ( i s S p a w n H o r s e S e c o n d T a p   | |   t h e I n p u t . L a s t U s e d P C I n p u t ( ) )   )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . I s H o l d i n g I t e m I n L H a n d   ( )   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . O n U s e S e l e c t e d I t e m ( t r u e ) ;  
 	 	 	 	 t h e P l a y e r . S e t P l a y e r A c t i o n T o R e s t o r e   (   P A T R _ C a l l H o r s e   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t h e G a m e . O n S p a w n P l a y e r H o r s e ( ) ;  
 	 	 	 } 	 	 	  
 	 	 }  
 	 	 e l s e   i f (   i s S p a w n H o r s e S e c o n d T a p   | |   t h e I n p u t . L a s t U s e d P C I n p u t ( )   )  
 	 	 {  
 	 	 	 i f (   t h e P l a y e r . I s I n I n t e r i o r ( )   )  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e (   E I A B _ U n d e f i n e d ,   f a l s e ,   t r u e   ) ;  
 	 	 	 e l s e  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e (   E I A B _ C a l l H o r s e   ) ;  
 	 	 }  
 	 	 	  
 	 	 p r e s s T i m e s t a m p   =   t h e G a m e . G e t E n g i n e T i m e A s S e c o n d s ( ) ;  
 	 	 	  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	  
 	 e v e n t   O n C o m m M e n u H u b (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f ( I s R e l e a s e d ( a c t i o n ) )  
 	 	 {  
 	 	 	 P u s h M e n u H u b ( ) ;  
 	 	 }  
 	 }  
 	  
 	 f i n a l   f u n c t i o n   P u s h M e n u H u b ( )  
 	 {  
 	 	 i f   (   t h e G a m e . I s B l a c k s c r e e n O r F a d i n g ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	 t h e G a m e . R e q u e s t M e n u ( ' C o m m o n M e n u ' ) ;  
 	 }  
 	  
 	  
 	  
 	 e v e n t   O n C o m m P a n e l C h a r (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f ( I s R e l e a s e d ( a c t i o n ) )  
 	 	 {  
 	 	 	 P u s h C h a r a c t e r S c r e e n ( ) ;  
 	 	 }  
 	 }    
 	 f i n a l   f u n c t i o n   P u s h C h a r a c t e r S c r e e n ( )  
 	 {  
 	 	 i f   (   t h e G a m e . I s B l a c k s c r e e n O r F a d i n g ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 i f (   I s A c t i o n A l l o w e d ( E I A B _ O p e n C h a r a c t e r P a n e l )   )  
 	 	 {  
 	 	 	 t h e G a m e . R e q u e s t M e n u W i t h B a c k g r o u n d (   ' C h a r a c t e r M e n u ' ,   ' C o m m o n M e n u '   ) ; 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ O p e n C h a r a c t e r P a n e l ) ;  
 	 	 }  
 	 }  
  
 	  
 	 e v e n t   O n C o m m P a n e l I n v (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 { 	 	  
 	 	 i f   ( I s R e l e a s e d ( a c t i o n ) )  
 	 	 {  
 	 	 	 P u s h I n v e n t o r y S c r e e n ( ) ;  
 	 	 }  
 	 }  
 	  
 	 f i n a l   f u n c t i o n   P u s h I n v e n t o r y S c r e e n ( )  
 	 {  
 	 	 i f   (   t h e G a m e . I s B l a c k s c r e e n O r F a d i n g ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	 i f (   I s A c t i o n A l l o w e d ( E I A B _ O p e n I n v e n t o r y )   ) 	 	  
 	 	 {  
 	 	 	 t h e G a m e . R e q u e s t M e n u W i t h B a c k g r o u n d (   ' I n v e n t o r y M e n u ' ,   ' C o m m o n M e n u '   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ O p e n I n v e n t o r y ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 e v e n t   O n C o m m D e c k E d i t o r (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 i f   (   t h e G a m e . I s B l a c k s c r e e n O r F a d i n g ( )   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	 i f   ( t h e G a m e . G e t G w i n t M a n a g e r ( ) . G e t H a s D o n e T u t o r i a l ( )   | |   t h e G a m e . G e t G w i n t M a n a g e r ( ) . H a s L o o t e d C a r d ( ) )  
 	 	 	 {  
 	 	 	 	 i f (   I s A c t i o n A l l o w e d ( E I A B _ O p e n G w i n t )   ) 	 	  
 	 	 	 	 {  
 	 	 	 	 	 t h e G a m e . R e q u e s t M e n u (   ' D e c k B u i l d e r '   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ O p e n G w i n t ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	 e v e n t   O n C o m m P a n e l M e d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 i f (   I s A c t i o n A l l o w e d ( E I A B _ M e d i t a t i o n W a i t i n g )   )  
 	 	 	 {  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . M e d i t a t e ( ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ M e d i t a t i o n W a i t i n g ) ;  
 	 	 	 }  
 	 	 }  
 	 } 	  
 	  
 	 e v e n t   O n C o m m P a n e l M a p P C (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 P u s h M a p S c r e e n ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C o m m P a n e l M a p (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 P u s h M a p S c r e e n ( ) ;  
 	 	 }  
 	 } 	  
 	 f i n a l   f u n c t i o n   P u s h M a p S c r e e n ( )  
 	 {  
 	 	 i f   (   t h e G a m e . I s B l a c k s c r e e n O r F a d i n g ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	 i f (   I s A c t i o n A l l o w e d ( E I A B _ O p e n M a p )   )  
 	 	 {  
 	 	 	 t h e G a m e . R e q u e s t M e n u W i t h B a c k g r o u n d (   ' M a p M e n u ' ,   ' C o m m o n M e n u '   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ O p e n M a p ) ;  
 	 	 }  
 	 }  
  
 	  
 	 e v e n t   O n C o m m P a n e l J o u r (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 P u s h J o u r n a l S c r e e n ( ) ;  
 	 	 }  
 	 }  
 	 f i n a l   f u n c t i o n   P u s h J o u r n a l S c r e e n ( )  
 	 {  
 	 	 i f   (   t h e G a m e . I s B l a c k s c r e e n O r F a d i n g ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	 i f (   I s A c t i o n A l l o w e d ( E I A B _ O p e n J o u r n a l )   )  
 	 	 {  
 	 	 	  
 	 	 	 t h e G a m e . R e q u e s t M e n u W i t h B a c k g r o u n d (   ' J o u r n a l Q u e s t M e n u ' ,   ' C o m m o n M e n u '   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ O p e n J o u r n a l ) ;  
 	 	 } 	  
 	 }  
 	  
 	 e v e n t   O n C o m m P a n e l M e d i t a t i o n (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 P u s h M e d i t a t i o n S c r e e n ( ) ;  
 	 	 }  
 	 }  
 	  
 	 f i n a l   f u n c t i o n   P u s h M e d i t a t i o n S c r e e n ( )  
 	 {  
 	 	 i f   (   t h e G a m e . I s B l a c k s c r e e n O r F a d i n g ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	 i f (   I s A c t i o n A l l o w e d ( E I A B _ O p e n M e d i t a t i o n )   )  
 	 	 {  
 	 	 	 t h e G a m e . R e q u e s t M e n u W i t h B a c k g r o u n d (   ' M e d i t a t i o n C l o c k M e n u ' ,   ' C o m m o n M e n u '   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ O p e n M e d i t a t i o n ) ;  
 	 	 } 	  
 	 }  
 	  
 	 e v e n t   O n C o m m P a n e l C r a f t i n g (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 P u s h C r a f t i n g S c r e e n ( ) ;  
 	 	 }  
 	 }  
 	  
 	 f i n a l   f u n c t i o n   P u s h C r a f t i n g S c r e e n ( )  
 	 {  
 	 	 i f   (   t h e G a m e . I s B l a c k s c r e e n O r F a d i n g ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 t h e G a m e . R e q u e s t M e n u W i t h B a c k g r o u n d (   ' C r a f t i n g M e n u ' ,   ' C o m m o n M e n u '   ) ;  
 	 }  
 	  
 	  
 	 e v e n t   O n C o m m P a n e l B e s t i a r y (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 P u s h B e s t i a r y S c r e e n ( ) ;  
 	 	 }  
 	 }  
 	  
 	 f i n a l   f u n c t i o n   P u s h B e s t i a r y S c r e e n ( )  
 	 {  
 	 	 i f   (   t h e G a m e . I s B l a c k s c r e e n O r F a d i n g ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	 i f (   I s A c t i o n A l l o w e d ( E I A B _ O p e n G l o s s a r y )   )  
 	 	 {  
 	 	 	 t h e G a m e . R e q u e s t M e n u W i t h B a c k g r o u n d (   ' G l o s s a r y B e s t i a r y M e n u ' ,   ' C o m m o n M e n u '   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ O p e n G l o s s a r y ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C o m m P a n e l A l c h (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 P u s h A l c h e m y S c r e e n ( ) ;  
 	 	 }  
 	 }  
 	 f i n a l   f u n c t i o n   P u s h A l c h e m y S c r e e n ( )  
 	 {  
 	 	 i f   (   t h e G a m e . I s B l a c k s c r e e n O r F a d i n g ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	 i f (   I s A c t i o n A l l o w e d ( E I A B _ O p e n A l c h e m y )   )  
 	 	 {  
 	 	 	 t h e G a m e . R e q u e s t M e n u W i t h B a c k g r o u n d (   ' A l c h e m y M e n u ' ,   ' C o m m o n M e n u '   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ O p e n A l c h e m y ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C o m m P a n e l G l o s s a r y (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 P u s h G l o s s a r y S c r e e n ( ) ;  
 	 	 }  
 	 }  
 	 f i n a l   f u n c t i o n   P u s h G l o s s a r y S c r e e n ( )  
 	 {  
 	 	 i f   (   t h e G a m e . I s B l a c k s c r e e n O r F a d i n g ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	 i f (   I s A c t i o n A l l o w e d ( E I A B _ O p e n G l o s s a r y )   )  
 	 	 {  
 	 	 	 t h e G a m e . R e q u e s t M e n u W i t h B a c k g r o u n d (   ' G l o s s a r y E n c y c l o p e d i a M e n u ' ,   ' C o m m o n M e n u '   ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ O p e n G l o s s a r y ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n S h o w C o n t r o l s H e l p (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 i f   (   t h e G a m e . I s B l a c k s c r e e n O r F a d i n g ( )   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C o m m P a n e l U I R e s i z e (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 i f   (   t h e G a m e . I s B l a c k s c r e e n O r F a d i n g ( )   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	 t h e G a m e . R e q u e s t M e n u (   ' R e s c a l e M e n u '   ) ;  
 	 	 }  
 	 } 	  
  
 	 e v e n t   O n C o m m P a n e l F a k e H u d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 i f   (   t h e G a m e . I s B l a c k s c r e e n O r F a d i n g ( )   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	 p r i v a t e   v a r   p r o c e s s e d S w o r d H o l d   :   b o o l ;  
 	  
 	 e v e n t   O n C o m m S t e e l S w o r d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   d u r i n g C a s t S i g n   :   b o o l ;  
 	 	  
 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 	 p r o c e s s e d S w o r d H o l d   =   f a l s e ;  
 	 	  
 	 	 i f   (   t h e I n p u t . L a s t U s e d G a m e p a d ( )   & &   t h e I n p u t . I s A c t i o n P r e s s e d ( ' A l t e r n a t e ' )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f   (   I s R e l e a s e d ( a c t i o n )   | |   (   I s P r e s s e d ( a c t i o n )   & &   ( t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ N o n e   | |   t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ F i s t s )   )   )  
 	 	 {  
 	 	 	 i f (   ! p r o c e s s e d S w o r d H o l d   )  
 	 	 	 {  
 	 	 	 	 i f   (   I s A c t i o n A l l o w e d ( E I A B _ D r a w W e a p o n )   & &   t h e P l a y e r . G e t B I s I n p u t A l l o w e d ( )   & &   t h e P l a y e r . G e t W e a p o n H o l s t e r ( ) . I s M e l e e W e a p o n R e a d y ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ D r a w _ S t e e l ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 	 i f   (   t h e P l a y e r . G e t B I s C o m b a t A c t i o n A l l o w e d ( )   )  
 	 	 	 	 	 	 t h e P l a y e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	 	 	 }  
 	 	 	 	 p r o c e s s e d S w o r d H o l d   =   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C o m m S i l v e r S w o r d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   d u r i n g C a s t S i g n   :   b o o l ;  
 	 	  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 	 p r o c e s s e d S w o r d H o l d   =   f a l s e ;  
 	 	  
 	 	 i f   (   t h e I n p u t . L a s t U s e d G a m e p a d ( )   & &   t h e I n p u t . I s A c t i o n P r e s s e d ( ' A l t e r n a t e ' )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f   (   I s R e l e a s e d ( a c t i o n )   | |   (   I s P r e s s e d ( a c t i o n )   & &   ( t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ N o n e   | |   t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ F i s t s )   )   )  
 	 	 {  
 	 	 	 i f (   ! p r o c e s s e d S w o r d H o l d   )  
 	 	 	 {  
 	 	 	 	 i f   (   I s A c t i o n A l l o w e d ( E I A B _ D r a w W e a p o n )   & &   t h e P l a y e r . G e t B I s I n p u t A l l o w e d ( )   & &   t h e P l a y e r . G e t W e a p o n H o l s t e r ( ) . I s M e l e e W e a p o n R e a d y ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ D r a w _ S i l v e r ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 	 i f   (   t h e P l a y e r . G e t B I s C o m b a t A c t i o n A l l o w e d ( )   | |   d u r i n g C a s t S i g n   )  
 	 	 	 	 	 	 t h e P l a y e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	 	 	 }  
 	 	 	 	 p r o c e s s e d S w o r d H o l d   =   t r u e ;  
 	 	 	 }  
 	 	 	  
 	 	 }  
 	 } 	  
 	  
 	 e v e n t   O n C o m m S h e a t h e A n y (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   d u r i n g C a s t S i g n   :   b o o l ;  
 	 	  
 	 	 i f (   I s P r e s s e d (   a c t i o n   )   )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . G e t B I s I n p u t A l l o w e d ( )   & &   t h e P l a y e r . G e t W e a p o n H o l s t e r ( ) . I s M e l e e W e a p o n R e a d y ( )   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ S h e a t h e _ S w o r d ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 i f   (   t h e P l a y e r . G e t B I s C o m b a t A c t i o n A l l o w e d ( )   | |   d u r i n g C a s t S i g n   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 p r o c e s s e d S w o r d H o l d   =   t r u e ;  
 	 	 } 	 	  
 	 }  
 	  
 	 e v e n t   O n C o m m S h e a t h e S t e e l (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s P r e s s e d (   a c t i o n   )   & &   t h e P l a y e r . I s W e a p o n H e l d (   ' s t e e l s w o r d '   )   & &   ! p r o c e s s e d S w o r d H o l d )  
 	 	 {  
 	 	 	 O n C o m m S h e a t h e A n y ( a c t i o n ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C o m m S h e a t h e S i l v e r (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s P r e s s e d (   a c t i o n   )   & &   t h e P l a y e r . I s W e a p o n H e l d (   ' s i l v e r s w o r d '   )   & &   ! p r o c e s s e d S w o r d H o l d )  
 	 	 {  
 	 	 	 O n C o m m S h e a t h e A n y ( a c t i o n ) ;  
 	 	 }  
 	 }  
 	 	  
 	 e v e n t   O n C o m m D r i n k P o t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 {  
 	 	 	 i f ( ! p o t P r e s s )  
 	 	 	 {  
 	 	 	 	 p o t P r e s s   =   t r u e ;  
 	 	 	 	 p o t A c t i o n   =   a c t i o n ;  
 	 	 	 	 t h e P l a y e r . A d d T i m e r ( ' P o t D r i n k T i m e r ' ,   0 . 3 ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 P o t D r i n k T i m e r ( t r u e ) ;  
 	 	 	 	 t h e P l a y e r . R e m o v e T i m e r ( ' P o t D r i n k T i m e r ' ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   P o t D r i n k T i m e r ( i s D o u b l e T a p p e d   :   b o o l )  
 	 {  
 	 	 t h e P l a y e r . R e m o v e T i m e r ( ' P o t D r i n k T i m e r ' ) ;  
 	 	 p o t P r e s s   =   f a l s e ;  
 	 	  
 	 	 i f ( i s D o u b l e T a p p e d )  
 	 	 	 O n C o m m D r i n k P o t i o n 2 ( p o t A c t i o n ) ;  
 	 	 e l s e  
 	 	 	 O n C o m m D r i n k P o t i o n 1 ( p o t A c t i o n ) ;  
 	 }  
 	  
 	  
 	  
 	  
 	 e v e n t   O n C b t C o m b o D i g i t L e f t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f   (   t h e I n p u t . I s A c t i o n P r e s s e d ( ' A l t e r n a t e ' )   )  
 	 	 {  
 	 	 	 O n T o g g l e P r e v i o u s S i g n ( a c t i o n ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C b t C o m b o D i g i t R i g h t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f   (   t h e I n p u t . I s A c t i o n P r e s s e d ( ' A l t e r n a t e ' )   )  
 	 	 {  
 	 	 	 O n T o g g l e N e x t S i g n ( a c t i o n ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 e v e n t   O n S e l e c t S i g n ( a c t i o n   :   S I n p u t A c t i o n )  
 	 {  
 	 	 i f (   I s P r e s s e d (   a c t i o n   )   )  
 	 	 {  
 	 	 	  
 	 	 	 i f ( a l t S i g n C a s t i n g )  
 	 	 	 {  
 	 	 	 	 s w i t c h (   a c t i o n . a N a m e   )  
 	 	 	 	 { 	 	 	 	  
 	 	 	 	 	 c a s e   ' S e l e c t A a r d '   :  
 	 	 	 	 	 	 A l t C a s t S i g n ( S T _ A a r d ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 c a s e   ' S e l e c t Y r d e n '   :  
 	 	 	 	 	 	 A l t C a s t S i g n ( S T _ Y r d e n ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 c a s e   ' S e l e c t I g n i '   :  
 	 	 	 	 	 	 A l t C a s t S i g n ( S T _ I g n i ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 c a s e   ' S e l e c t Q u e n '   :  
 	 	 	 	 	 	 A l t C a s t S i g n ( S T _ Q u e n ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 c a s e   ' S e l e c t A x i i '   :  
 	 	 	 	 	 	 A l t C a s t S i g n ( S T _ A x i i ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 d e f a u l t   :  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 s w i t c h (   a c t i o n . a N a m e   )  
 	 	 	 	 {  
 	 	 	 	 	 c a s e   ' S e l e c t A a r d '   :  
 	 	 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e t E q u i p p e d S i g n ( S T _ A a r d ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 c a s e   ' S e l e c t Y r d e n '   :  
 	 	 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e t E q u i p p e d S i g n ( S T _ Y r d e n ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 c a s e   ' S e l e c t I g n i '   :  
 	 	 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e t E q u i p p e d S i g n ( S T _ I g n i ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 c a s e   ' S e l e c t Q u e n '   :  
 	 	 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e t E q u i p p e d S i g n ( S T _ Q u e n ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 c a s e   ' S e l e c t A x i i '   :  
 	 	 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e t E q u i p p e d S i g n ( S T _ A x i i ) ;  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 	 d e f a u l t   :  
 	 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 e l s e   i f   ( I s R e l e a s e d (   a c t i o n   )   & &   a l t S i g n C a s t i n g   & &   G e t W i t c h e r P l a y e r ( ) . I s C u r r e n t S i g n C h a n n e l e d ( ) )  
 	 	 {  
 	 	 	 t h e P l a y e r . A b o r t S i g n ( ) ;  
 	 	 }  
 	 	  
 	 }  
 	  
 	 e v e n t   O n T o g g l e S i g n s (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   t o l e r a n c e   :   f l o a t ;  
 	 	 t o l e r a n c e   =   2 . 5 f ;  
 	 	  
 	 	 i f (   a c t i o n . v a l u e   <   - t o l e r a n c e   )  
 	 	 {  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . T o g g l e P r e v i o u s S i g n ( ) ;  
 	 	 }  
 	 	 e l s e   i f (   a c t i o n . v a l u e   >   t o l e r a n c e   )  
 	 	 {  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . T o g g l e N e x t S i g n ( ) ;  
 	 	 }  
 	 }  
 	 e v e n t   O n T o g g l e N e x t S i g n (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s P r e s s e d (   a c t i o n   )   )  
 	 	 {  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . T o g g l e N e x t S i g n ( ) ;  
 	 	 }  
 	 }  
 	 e v e n t   O n T o g g l e P r e v i o u s S i g n (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s P r e s s e d (   a c t i o n   )   )  
 	 	 {  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . T o g g l e P r e v i o u s S i g n ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n T o g g l e I t e m (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   ! I s A c t i o n A l l o w e d (   E I A B _ Q u i c k S l o t s   )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ Q u i c k S l o t s ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f (   I s R e l e a s e d (   a c t i o n   )   )  
 	 	 { 	  
 	 	 	 i f (   t h e I n p u t . G e t L a s t A c t i v a t i o n T i m e (   a c t i o n . a N a m e   )   <   0 . 3   )  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . T o g g l e N e x t I t e m ( ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 e v e n t   O n C o m m D r i n k p o t i o n U p p e r H e l d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f ( ! p o t i o n M o d e H o l d )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	  
 	 	 i f ( t h e P l a y e r . I s C i r i ( ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 i f ( I s R e l e a s e d ( a c t i o n ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 p o t i o n U p p e r H e l d   =   t r u e ;  
 	 	 G e t W i t c h e r P l a y e r ( ) . F l i p S e l e c t e d P o t i o n ( t r u e ) ;  
 	 }  
 	  
 	 e v e n t   O n C o m m D r i n k p o t i o n L o w e r H e l d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f ( ! p o t i o n M o d e H o l d )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	  
 	 	 i f ( t h e P l a y e r . I s C i r i ( ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 i f ( I s R e l e a s e d ( a c t i o n ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 p o t i o n L o w e r H e l d   =   t r u e ;  
 	 	 G e t W i t c h e r P l a y e r ( ) . F l i p S e l e c t e d P o t i o n ( f a l s e ) ;  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   S e t P o t i o n S e l e c t i o n M o d e ( b   :   b o o l )  
 	 {  
 	 	 p o t i o n M o d e H o l d   =   b ;  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   D r i n k P o t i o n ( a c t i o n   :   S I n p u t A c t i o n ,   u p p e r S l o t   :   b o o l )   :   b o o l  
 	 {  
 	 	 v a r   w i t c h e r   :   W 3 P l a y e r W i t c h e r ;  
 	 	  
 	 	 i f   (   p o t i o n M o d e H o l d   & &   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 i f ( ! p o t i o n U p p e r H e l d   & &   ! p o t i o n L o w e r H e l d )  
 	 	 	 {  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . O n P o t i o n D r i n k I n p u t ( u p p e r S l o t ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f ( u p p e r S l o t )  
 	 	 	 	 p o t i o n U p p e r H e l d   =   f a l s e ;  
 	 	 	 e l s e  
 	 	 	 	 p o t i o n L o w e r H e l d   =   f a l s e ;  
 	 	 } 	 	  
 	 	 e l s e   i f ( ! p o t i o n M o d e H o l d   & &   I s P r e s s e d ( a c t i o n ) )  
 	 	 {  
 	 	 	 w i t c h e r   =   G e t W i t c h e r P l a y e r ( ) ;  
 	 	 	 i f ( ! w i t c h e r . I s P o t i o n D o u b l e T a p R u n n i n g ( ) )  
 	 	 	 {  
 	 	 	 	 w i t c h e r . S e t P o t i o n D o u b l e T a p R u n n i n g ( t r u e ,   u p p e r S l o t ) ;  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 w i t c h e r . S e t P o t i o n D o u b l e T a p R u n n i n g ( f a l s e ) ;  
 	 	 	 	 w i t c h e r . F l i p S e l e c t e d P o t i o n ( u p p e r S l o t ) ; 	 	 	 	  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 } 	  
 	  
 	  
 	 e v e n t   O n C o m m D r i n k P o t i o n 1 (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	  
 	 	 i f ( t h e P l a y e r . I s C i r i ( ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i f (   ! I s A c t i o n A l l o w e d (   E I A B _ Q u i c k S l o t s   )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ Q u i c k S l o t s ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f   (   t h e I n p u t . L a s t U s e d G a m e p a d ( )   )  
 	 	 {  
 	 	 	 r e t u r n   D r i n k P o t i o n ( a c t i o n ,   t r u e ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 i f   (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . O n P o t i o n D r i n k K e y b o a r d s I n p u t ( E E S _ P o t i o n 1 ) ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 e v e n t   O n C o m m D r i n k P o t i o n 2 (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   w i t c h e r   :   W 3 P l a y e r W i t c h e r ;  
 	 	  
 	 	  
 	 	 i f ( t h e P l a y e r . I s C i r i ( ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i f (   ! I s A c t i o n A l l o w e d (   E I A B _ Q u i c k S l o t s   )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ Q u i c k S l o t s ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f   (   t h e I n p u t . L a s t U s e d G a m e p a d ( )   )  
 	 	 {  
 	 	 	 r e t u r n   D r i n k P o t i o n ( a c t i o n ,   f a l s e ) ;  
 	 	 }  
 	 	 e l s e  
 	 	 i f   (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . O n P o t i o n D r i n k K e y b o a r d s I n p u t ( E E S _ P o t i o n 2 ) ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 e v e n t   O n C o m m D r i n k P o t i o n 3 (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	  
 	 	 i f ( t h e P l a y e r . I s C i r i ( ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i f (   ! I s A c t i o n A l l o w e d (   E I A B _ Q u i c k S l o t s   )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ Q u i c k S l o t s ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f   (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . O n P o t i o n D r i n k K e y b o a r d s I n p u t ( E E S _ P o t i o n 3 ) ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	  
 	 e v e n t   O n C o m m D r i n k P o t i o n 4 (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   w i t c h e r   :   W 3 P l a y e r W i t c h e r ;  
 	 	  
 	 	  
 	 	 i f ( t h e P l a y e r . I s C i r i ( ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i f (   ! I s A c t i o n A l l o w e d (   E I A B _ Q u i c k S l o t s   )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ Q u i c k S l o t s ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f   (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . O n P o t i o n D r i n k K e y b o a r d s I n p u t ( E E S _ P o t i o n 4 ) ;  
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
 	 e v e n t   O n D i v i n g (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f   (   I s P r e s s e d ( a c t i o n )   & &   I s A c t i o n A l l o w e d ( E I A B _ D i v e )   )  
 	 	 {  
 	 	 	 i f   (   a c t i o n . a N a m e   = =   ' D i v e D o w n '   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h e P l a y e r . O n A l l o w e d D i v e D o w n ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   ! t h e P l a y e r . O n C h e c k D i v i n g ( )   )  
 	 	 	 	 	 	 t h e P l a y e r . O n D i v e ( ) ;  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   t h e P l a y e r . b L A x i s R e l e a s e d   )  
 	 	 	 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' d i v e P i t c h ' , - 1 . 0 ) ;  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' d i v e P i t c h ' ,   - 0 . 9 ) ;  
 	 	 	 	 	 t h e P l a y e r . O n D i v e I n p u t ( - 1 . f ) ;  
 	 	 	 	 	  
 	 	 	 	 	 i f   (   t h e P l a y e r . r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e P l a y e r . O n R a n g e d F o r c e H o l s t e r (   t r u e ,   f a l s e   ) ;  
 	 	 	 	 	 	 t h e P l a y e r . O n F u l l y B l e n d e d I d l e ( ) ;  
 	 	 	 	 	 }  
 	 	 	 	 } 	 	 	  
 	 	 	 }  
 	 	 	 e l s e   i f   (   a c t i o n . a N a m e   = =   ' D i v e U p '   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h e P l a y e r . b L A x i s R e l e a s e d   )  
 	 	 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' d i v e P i t c h ' , 1 . 0 ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' d i v e P i t c h ' ,   0 . 9 ) ;  
 	 	 	 	 	  
 	 	 	 	 i f   (   t h e P l a y e r . r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . O n R a n g e d F o r c e H o l s t e r (   t r u e ,   f a l s e   ) ;  
 	 	 	 	 	 t h e P l a y e r . O n F u l l y B l e n d e d I d l e ( ) ;  
 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 t h e P l a y e r . O n D i v e I n p u t ( 1 . f ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' d i v e P i t c h ' , 0 . 0 ) ;  
 	 	 	 t h e P l a y e r . O n D i v e I n p u t ( 0 . f ) ;  
 	 	 }  
 	 	 e l s e   i f   (   I s P r e s s e d ( a c t i o n )   & &   ! I s A c t i o n A l l o w e d ( E I A B _ D i v e )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ D i v e ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n D i v i n g D o d g e (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   i s D o d g e A l l o w e d   :   b o o l ;  
 	 	  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 i s D o d g e A l l o w e d   =   I s A c t i o n A l l o w e d ( E I A B _ D o d g e ) ;  
 	 	 	 i f (   i s D o d g e A l l o w e d   & &   I s A c t i o n A l l o w e d ( E I A B _ D i v e )   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h e P l a y e r . O n C h e c k D i v i n g ( )   & &   t h e P l a y e r . G e t B I s I n p u t A l l o w e d ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ D o d g e ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 	 i f   (   t h e P l a y e r . G e t B I s C o m b a t A c t i o n A l l o w e d ( )   )  
 	 	 	 	 	 	 t h e P l a y e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f ( ! i s D o d g e A l l o w e d )  
 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ D o d g e ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ D i v e ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 e v e n t   O n E x p F i s t F i g h t L i g h t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   f i s t s A l l o w e d   :   b o o l ;  
 	 	  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 f i s t s A l l o w e d   =   I s A c t i o n A l l o w e d ( E I A B _ F i s t s ) ;  
 	 	 	 i f (   f i s t s A l l o w e d   & &   I s A c t i o n A l l o w e d ( E I A B _ L i g h t A t t a c k s )   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 t h e P l a y e r . S e t u p C o m b a t A c t i o n (   E B A T _ L i g h t A t t a c k ,   B S _ P r e s s e d   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f ( ! f i s t s A l l o w e d )  
 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ F i s t s ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ L i g h t A t t a c k s ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n E x p F i s t F i g h t H e a v y (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   f i s t s A l l o w e d   :   b o o l ;  
 	 	  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 f i s t s A l l o w e d   =   I s A c t i o n A l l o w e d ( E I A B _ F i s t s ) ;  
 	 	 	 i f (   f i s t s A l l o w e d   & &   I s A c t i o n A l l o w e d ( E I A B _ H e a v y A t t a c k s )   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 t h e P l a y e r . S e t u p C o m b a t A c t i o n (   E B A T _ H e a v y A t t a c k ,   B S _ P r e s s e d   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f ( ! f i s t s A l l o w e d )  
 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ F i s t s ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ H e a v y A t t a c k s ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	 	  
 	  
 	  
 	 e v e n t   O n E x p F o c u s (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	  
 	 	 i f ( ! t h e P l a y e r . I s C i r i ( ) )  
 	 	 {  
 	 	 	 i f ( a l t S i g n C a s t i n g   & &   ! t h e I n p u t . L a s t U s e d P C I n p u t ( )   & &   t h e I n p u t . I s A c t i o n P r e s s e d ( ' C a s t S i g n ' ) )  
 	 	 	 {  
 	 	 	 	 i f ( I s P r e s s e d (   a c t i o n   ) )  
 	 	 	 	 {  
 	 	 	 	 	 t h e G a m e . G e t F o c u s M o d e C o n t r o l l e r ( ) . D e a c t i v a t e ( ) ;    
 	 	 	 	 	 A l t C a s t S i g n ( S T _ I g n i ) ;  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }    
 	 	 	 	 e l s e   i f   ( I s R e l e a s e d (   a c t i o n   )   & &   G e t W i t c h e r P l a y e r ( ) . I s C u r r e n t S i g n C h a n n e l e d ( ) )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . A b o r t S i g n ( ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 i f ( t h e P l a y e r . I s C i r i ( )   & &   I s A c t i o n A l l o w e d ( E I A B _ E x p l o r a t i o n F o c u s ) )  
 	 	 {  
 	 	 	 i f (   I s P r e s s e d (   a c t i o n   )   )  
 	 	 	 {  
 	 	 	 	 i f (   t h e P l a y e r . G o T o C o m b a t I f N e e d e d ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 O n C o m m G u a r d (   a c t i o n   ) ;  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 	 	 t h e G a m e . G e t F o c u s M o d e C o n t r o l l e r ( ) . A c t i v a t e ( ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f (   I s R e l e a s e d (   a c t i o n   )   )  
 	 	 	 {  
 	 	 	 	 t h e G a m e . G e t F o c u s M o d e C o n t r o l l e r ( ) . D e a c t i v a t e ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f ( I s A c t i o n A l l o w e d ( E I A B _ E x p l o r a t i o n F o c u s )   & &   ! G e t W i t c h e r P l a y e r ( ) . I s C u r r e n t S i g n C h a n n e l e d ( ) )    
 	 	 {  
 	 	 	 i f (   I s P r e s s e d (   a c t i o n   )   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 i f (   t h e P l a y e r . G o T o C o m b a t I f N e e d e d ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 O n C o m m G u a r d (   a c t i o n   ) ;  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 	 	 t h e G a m e . G e t F o c u s M o d e C o n t r o l l e r ( ) . A c t i v a t e ( ) ;  
 	 	 	 	  
 	 	 	 }  
 	 	 	 e l s e   i f (   I s R e l e a s e d (   a c t i o n   )   )  
 	 	 	 {  
 	 	 	 	 t h e G a m e . G e t F o c u s M o d e C o n t r o l l e r ( ) . D e a c t i v a t e ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ E x p l o r a t i o n F o c u s ) ;  
 	 	 	 t h e G a m e . G e t F o c u s M o d e C o n t r o l l e r ( ) . D e a c t i v a t e ( ) ; 	  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p r i v a t e   f u n c t i o n   S h o u l d S w i t c h A t t a c k T y p e ( ) : b o o l  
 	 {  
 	 	 v a r   o u t K e y s   :   a r r a y < E I n p u t K e y > ; 	  
 	 	  
 	 	 i f   (   t h e I n p u t . L a s t U s e d P C I n p u t ( )   )  
 	 	 { 	 	  
 	 	 	 t h e I n p u t . G e t P C K e y s F o r A c t i o n ( ' P C A l t e r n a t e ' , o u t K e y s ) ;  
 	 	 	 i f   (   o u t K e y s . S i z e ( )   >   0   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h e I n p u t . I s A c t i o n P r e s s e d ( ' P C A l t e r n a t e ' )   )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 e v e n t   O n C b t A t t a c k W i t h A l t e r n a t e L i g h t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 C b t A t t a c k P C (   a c t i o n ,   f a l s e ) ;  
 	 }  
 	  
 	 e v e n t   O n C b t A t t a c k W i t h A l t e r n a t e H e a v y (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 C b t A t t a c k P C (   a c t i o n ,   t r u e ) ;  
 	 }  
 	  
 	 f u n c t i o n   C b t A t t a c k P C (   a c t i o n   :   S I n p u t A c t i o n ,   i s H e a v y   :   b o o l   )  
 	 {  
 	 	 v a r   s w i t c h A t t a c k T y p e   :   b o o l ;  
 	 	  
 	 	 s w i t c h A t t a c k T y p e   =   S h o u l d S w i t c h A t t a c k T y p e ( ) ;  
 	 	  
 	 	 i f   (   ! t h e I n p u t . L a s t U s e d P C I n p u t ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 i f   (   t h e P l a y e r . I s C i r i ( )   )  
 	 	 {  
 	 	 	 i f   (   s w i t c h A t t a c k T y p e   ! =   i s H e a v y )    
 	 	 	 {  
 	 	 	 	 O n C b t C i r i A t t a c k H e a v y ( a c t i o n ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 O n C b t A t t a c k L i g h t ( a c t i o n ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   (   s w i t c h A t t a c k T y p e   ! =   i s H e a v y )    
 	 	 	 {  
 	 	 	 	 O n C b t A t t a c k H e a v y ( a c t i o n ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 O n C b t A t t a c k L i g h t ( a c t i o n ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C b t A t t a c k L i g h t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   a l l o w e d ,   c h e c k e d F i s t s   	 	 	 :   b o o l ;  
 	 	  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	  
 	 	 	 i f ( a l t S i g n C a s t i n g   & &   ! t h e I n p u t . L a s t U s e d P C I n p u t ( )   & &   t h e I n p u t . I s A c t i o n P r e s s e d ( ' C a s t S i g n ' ) )  
 	 	 	 {  
 	 	 	 	 A l t C a s t S i g n ( S T _ A x i i ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	  
 	 	 	 i f (   I s A c t i o n A l l o w e d ( E I A B _ L i g h t A t t a c k s )     )  
 	 	 	 {  
 	 	 	 	 i f   ( t h e P l a y e r . G e t B I s I n p u t A l l o w e d ( ) )  
 	 	 	 	 {  
 	 	 	 	 	 a l l o w e d   =   f a l s e ; 	 	 	 	 	  
 	 	 	 	 	  
 	 	 	 	 	 i f (   t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ F i s t s   | |   t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ N o n e   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 c h e c k e d F i s t s   =   t r u e ;  
 	 	 	 	 	 	 i f ( I s A c t i o n A l l o w e d ( E I A B _ F i s t s ) )  
 	 	 	 	 	 	 	 a l l o w e d   =   t r u e ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f ( I s A c t i o n A l l o w e d ( E I A B _ S w o r d A t t a c k ) )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 c h e c k e d F i s t s   =   f a l s e ;  
 	 	 	 	 	 	 a l l o w e d   =   t r u e ;  
 	 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 	 i f ( a l l o w e d )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e P l a y e r . S e t u p C o m b a t A c t i o n (   E B A T _ L i g h t A t t a c k ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f ( c h e c k e d F i s t s )  
 	 	 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ F i s t s ) ;  
 	 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ S w o r d A t t a c k ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e     i f   (   ! I s A c t i o n B l o c k e d B y ( E I A B _ L i g h t A t t a c k s , ' i n t e r a c t i o n ' )   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ L i g h t A t t a c k s ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C b t A t t a c k H e a v y (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   a l l o w e d ,   c h e c k e d S w o r d   :   b o o l ;  
 	 	 v a r   o u t K e y s   :   a r r a y < E I n p u t K e y > ;  
 	 	  
 	 	 i f   (   t h e P l a y e r . G e t B I s I n p u t A l l o w e d ( )   )  
 	 	 {  
 	 	 	  
 	 	 	 i f ( a l t S i g n C a s t i n g   & &   ! t h e I n p u t . L a s t U s e d P C I n p u t ( )   & &   t h e I n p u t . I s A c t i o n P r e s s e d ( ' C a s t S i g n ' ) )  
 	 	 	 {  
 	 	 	 	 i f ( I s P r e s s e d (   a c t i o n   ) )  
 	 	 	 	 {  
 	 	 	 	 	 A l t C a s t S i g n ( S T _ Y r d e n ) ;  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   ( I s R e l e a s e d (   a c t i o n   ) )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	  
 	 	  
 	 	 	 i f (   I s A c t i o n A l l o w e d ( E I A B _ H e a v y A t t a c k s )   )  
 	 	 	 {  
 	 	 	 	 a l l o w e d   =   f a l s e ;  
 	 	 	 	  
 	 	 	 	 i f (   t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ F i s t s   | |   t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ N o n e   )  
 	 	 	 	 {  
 	 	 	 	 	 c h e c k e d S w o r d   =   f a l s e ;  
 	 	 	 	 	 i f ( I s A c t i o n A l l o w e d ( E I A B _ F i s t s ) )  
 	 	 	 	 	 	 a l l o w e d   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f ( I s A c t i o n A l l o w e d ( E I A B _ S w o r d A t t a c k ) )  
 	 	 	 	 {  
 	 	 	 	 	 c h e c k e d S w o r d   =   t r u e ;  
 	 	 	 	 	 a l l o w e d   =   t r u e ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f ( a l l o w e d )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   (   t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ F i s t s   | |   t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ N o n e   )   & &   I s P r e s s e d ( a c t i o n )     )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e P l a y e r . S e t u p C o m b a t A c t i o n (   E B A T _ H e a v y A t t a c k ,   B S _ R e l e a s e d   ) ; 	 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 i f (   I s R e l e a s e d ( a c t i o n )   & &   t h e I n p u t . G e t L a s t A c t i v a t i o n T i m e (   a c t i o n . a N a m e   )   <   0 . 2   )  
 	 	 	 	 	 	 {  
 	 	 	 	 	 	 	 t h e P l a y e r . S e t u p C o m b a t A c t i o n (   E B A T _ H e a v y A t t a c k ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 	 	 }  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f ( c h e c k e d S w o r d )  
 	 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ S w o r d A t t a c k ) ;  
 	 	 	 	 	 e l s e 	 	 	 	 	  
 	 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ F i s t s ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   i f   (   ! I s A c t i o n B l o c k e d B y ( E I A B _ H e a v y A t t a c k s , ' i n t e r a c t i o n ' )   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ H e a v y A t t a c k s ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 p r i v a t e   f u n c t i o n   C h e c k F i n i s h e r I n p u t ( )   :   b o o l  
 	 {  
 	 	 v a r   e n e m y I n C o n e   	 	 :   C A c t o r ;  
 	 	 v a r   n p c   	 	 	 	 :   C N e w N P C ;  
 	 	 v a r   i n t e r a c t i o n T a r g e t   	 :   C I n t e r a c t i o n C o m p o n e n t ;  
 	 	  
 	 	 v a r   i s D e a d l y S w o r d H e l d 	 :   b o o l ; 	  
 	  
 	 	 i n t e r a c t i o n T a r g e t   =   t h e G a m e . G e t I n t e r a c t i o n s M a n a g e r ( ) . G e t A c t i v e I n t e r a c t i o n ( ) ;  
 	 	 i f   (   i n t e r a c t i o n T a r g e t   & &   i n t e r a c t i o n T a r g e t . G e t N a m e ( )   = =   " F i n i s h "   )  
 	 	 {  
 	 	 	 n p c   =   ( C N e w N P C ) (   i n t e r a c t i o n T a r g e t . G e t E n t i t y ( )   ) ;  
 	 	 	  
 	 	 	 i s D e a d l y S w o r d H e l d   =   t h e P l a y e r . I s D e a d l y S w o r d H e l d ( ) ;  
 	 	 	 i f (   (   t h e I n p u t . G e t A c t i o n V a l u e (   ' A t t a c k H e a v y '   )   = =   1 . f   | |   t h e I n p u t . G e t A c t i o n V a l u e (   ' A t t a c k L i g h t '   )   = =   1 . f     )  
 	 	 	 	 & &   i s D e a d l y S w o r d H e l d   )  
 	 	 	 {  
 	 	 	 	 t h e G a m e . R e m o v e T i m e S c a l e (   t h e G a m e . G e t T i m e s c a l e S o u r c e ( E T S _ F i n i s h e r I n p u t )   ) ;  
 	 	 	 	 n p c . S i g n a l G a m e p l a y E v e n t ( ' F i n i s h e r ' ) ;  
 	 	 	 	  
 	 	 	 }  
 	 	 	 e l s e   i f   (   ! i s D e a d l y S w o r d H e l d   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h e P l a y e r . I s W e a p o n H e l d (   ' f i s t '   ) )  
 	 	 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c o m b a t T a u n t T y p e ' ,   1 . f   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' c o m b a t T a u n t T y p e ' ,   0 . f   ) ;  
 	 	 	 	 	  
 	 	 	 	 t h e P l a y e r . R a i s e E v e n t (   ' C o m b a t T a u n t '   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 r e t u r n   t r u e ;  
 	 	 	  
 	 	 }  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   I s P l a y e r A b l e T o P e r f o r m S p e c i a l A t t a c k ( )   :   b o o l  
 	 {  
 	 	 i f (   (   t h e P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' E x p l o r a t i o n '   )   & &   ! (   t h e P l a y e r . I s W e a p o n H e l d (   ' s i l v e r s w o r d '   )   | |   t h e P l a y e r . I s W e a p o n H e l d (   ' s t e e l s w o r d '   )   )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 r e t u r n   t r u e ;  
 	 }  
 	  
 	 e v e n t   O n C b t S p e c i a l A t t a c k W i t h A l t e r n a t e L i g h t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 C b S p e c i a l A t t a c k P C (   a c t i o n ,   f a l s e ) ;  
 	 }  
 	  
 	 e v e n t   O n C b t S p e c i a l A t t a c k W i t h A l t e r n a t e H e a v y (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 C b S p e c i a l A t t a c k P C (   a c t i o n ,   t r u e ) ;  
 	 }  
 	  
 	 f u n c t i o n   C b S p e c i a l A t t a c k P C (   a c t i o n   :   S I n p u t A c t i o n ,   i s H e a v y   :   b o o l   )    
 	 {  
 	 	 v a r   s w i t c h A t t a c k T y p e   :   b o o l ;  
 	 	  
 	 	 s w i t c h A t t a c k T y p e   =   S h o u l d S w i t c h A t t a c k T y p e ( ) ;  
 	 	  
 	 	 i f   (   ! t h e I n p u t . L a s t U s e d P C I n p u t ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	  
 	 	 i f   (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . I s C i r i ( )   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 O n C b t C i r i S p e c i a l A t t a c k H e a v y ( a c t i o n ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   ( s w i t c h A t t a c k T y p e   ! =   i s H e a v y )    
 	 	 	 	 {  
 	 	 	 	 	 O n C b t S p e c i a l A t t a c k H e a v y ( a c t i o n ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 O n C b t S p e c i a l A t t a c k L i g h t ( a c t i o n ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   (   I s R e l e a s e d (   a c t i o n   )   )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . I s C i r i ( )   )  
 	 	 	 {  
 	 	 	 	 O n C b t C i r i S p e c i a l A t t a c k H e a v y ( a c t i o n ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 O n C b t S p e c i a l A t t a c k H e a v y ( a c t i o n ) ;  
 	 	 	 	 O n C b t S p e c i a l A t t a c k L i g h t ( a c t i o n ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C b t S p e c i a l A t t a c k L i g h t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	  
 	 	 i f ( ! t h e I n p u t . L a s t U s e d P C I n p u t ( )   & &   I s P r e s s e d (   a c t i o n   )   & &   t h e I n p u t . G e t A c t i o n V a l u e (   ' C a s t S i g n '   )   >   0 )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	  
 	 	 i f   (   I s R e l e a s e d (   a c t i o n   )     )  
 	 	 {  
 	 	 	 t h e P l a y e r . C a n c e l H o l d A t t a c k s ( ) ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 i f   (   ! I s P l a y e r A b l e T o P e r f o r m S p e c i a l A t t a c k ( )   )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i f (   ! I s A c t i o n A l l o w e d ( E I A B _ L i g h t A t t a c k s )   )    
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ L i g h t A t t a c k s ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 i f ( ! I s A c t i o n A l l o w e d ( E I A B _ S p e c i a l A t t a c k L i g h t )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ S p e c i a l A t t a c k L i g h t ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   & &   t h e P l a y e r . C a n U s e S k i l l ( S _ S w o r d _ s 0 1 )   ) 	  
 	 	 { 	 	 	  
 	 	 	 t h e P l a y e r . P r e p a r e T o A t t a c k ( ) ;  
 	 	 	 t h e P l a y e r . S e t P l a y e d S p e c i a l A t t a c k M i s s i n g R e s o u r c e S o u n d ( f a l s e ) ;  
 	 	 	 t h e P l a y e r . A d d T i m e r (   ' I s S p e c i a l L i g h t A t t a c k I n p u t H e l d ' ,   0 . 0 0 0 0 1 ,   t r u e   ) ;  
 	 	 }  
 	 } 	  
  
 	 e v e n t   O n C b t S p e c i a l A t t a c k H e a v y (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	  
 	 	 i f ( ! t h e I n p u t . L a s t U s e d P C I n p u t ( )   & &   I s P r e s s e d (   a c t i o n   )   & &   t h e I n p u t . G e t A c t i o n V a l u e (   ' C a s t S i g n '   )   >   0 )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	  
 	 	 i f   (   I s R e l e a s e d (   a c t i o n   )     )  
 	 	 {  
 	 	 	 t h e P l a y e r . C a n c e l H o l d A t t a c k s ( ) ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 i f   (   ! I s P l a y e r A b l e T o P e r f o r m S p e c i a l A t t a c k ( )   | |   G e t W i t c h e r P l a y e r ( ) . I s I n C o m b a t A c t i o n _ S p e c i a l A t t a c k H e a v y ( )   )    
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i f (   ! I s A c t i o n A l l o w e d ( E I A B _ H e a v y A t t a c k s ) )  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ H e a v y A t t a c k s ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 } 	 	  
 	 	 i f ( ! I s A c t i o n A l l o w e d ( E I A B _ S p e c i a l A t t a c k H e a v y ) )  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ S p e c i a l A t t a c k H e a v y ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   & &   t h e P l a y e r . C a n U s e S k i l l ( S _ S w o r d _ s 0 2 )   ) 	  
 	 	 { 	  
 	 	 	 t h e P l a y e r . P r e p a r e T o A t t a c k ( ) ;  
 	 	 	 t h e P l a y e r . S e t P l a y e d S p e c i a l A t t a c k M i s s i n g R e s o u r c e S o u n d ( f a l s e ) ;  
 	 	 	 t h e P l a y e r . A d d T i m e r (   ' I s S p e c i a l H e a v y A t t a c k I n p u t H e l d ' ,   0 . 0 0 0 0 1 ,   t r u e   ) ;  
 	 	 }  
 	 	 e l s e   i f   (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 i f   (   t h e I n p u t . I s A c t i o n P r e s s e d ( ' A t t a c k H e a v y ' )   )  
 	 	 	 	 t h e I n p u t . F o r c e D e a c t i v a t e A c t i o n ( ' A t t a c k H e a v y ' ) ;  
 	 	 	 e l s e   i f   (   t h e I n p u t . I s A c t i o n P r e s s e d ( ' A t t a c k W i t h A l t e r n a t e H e a v y ' )   )  
 	 	 	 	 t h e I n p u t . F o r c e D e a c t i v a t e A c t i o n ( ' A t t a c k W i t h A l t e r n a t e H e a v y ' ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	 e v e n t   O n C b t C i r i S p e c i a l A t t a c k (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   ! G e t C i r i P l a y e r ( ) . H a s S w o r d ( )   )    
 	 	 	 r e t u r n   f a l s e ;  
 	  
 	 	 i f (   t h e P l a y e r . G e t B I s I n p u t A l l o w e d ( )   & &   t h e P l a y e r . G e t B I s C o m b a t A c t i o n A l l o w e d ( )   & &   I s P r e s s e d ( a c t i o n )   ) 	  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . H a s A b i l i t y ( ' C i r i B l i n k ' )   & &   ( ( W 3 R e p l a c e r C i r i ) t h e P l a y e r ) . H a s S t a m i n a F o r S p e c i a l A c t i o n ( t r u e )   )  
 	 	 	 	 t h e P l a y e r . P r e p a r e T o A t t a c k ( ) ;  
 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ C i r i _ S p e c i a l A t t a c k ,   B S _ P r e s s e d   ) ;  
 	 	 	 t h e P l a y e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ; 	  
 	 	 }  
 	 	 e l s e   i f   (   I s R e l e a s e d (   a c t i o n   )   & &   t h e P l a y e r . G e t C o m b a t A c t i o n ( )   = =   E B A T _ C i r i _ S p e c i a l A t t a c k   & &   t h e P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' i s P e r f o r m i n g S p e c i a l A t t a c k '   )   ! =   0   )  
 	 	 {  
 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ C i r i _ S p e c i a l A t t a c k ,   B S _ R e l e a s e d   ) ;  
 	 	 	 t h e P l a y e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ; 	 	  
 	 	 }  
 	 }  
 	  
 	  
 	 e v e n t   O n C b t C i r i A t t a c k H e a v y (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   s p e c i a l A t t a c k A c t i o n   :   S I n p u t A c t i o n ;  
 	 	  
 	 	 i f (   ! G e t C i r i P l a y e r ( ) . H a s S w o r d ( )   )    
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 s p e c i a l A t t a c k A c t i o n   =   t h e I n p u t . G e t A c t i o n ( ' C i r i S p e c i a l A t t a c k H e a v y ' ) ;  
 	 	  
 	 	 i f (   t h e P l a y e r . G e t B I s I n p u t A l l o w e d ( )   & &   I s R e l e a s e d ( a c t i o n )   & &   t h e P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' i s P e r f o r m i n g S p e c i a l A t t a c k '   )   = =   0     ) 	  
 	 	 { 	  
 	 	 	 i f (   I s A c t i o n A l l o w e d ( E I A B _ H e a v y A t t a c k s )   & &   I s A c t i o n A l l o w e d ( E I A B _ S w o r d A t t a c k )   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ S t e e l   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . P r e p a r e T o A t t a c k ( ) ;  
 	 	 	 	 	 t h e P l a y e r . S e t u p C o m b a t A c t i o n (   E B A T _ H e a v y A t t a c k ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 	 i f   (   t h e P l a y e r . G e t B I s C o m b a t A c t i o n A l l o w e d ( )   )  
 	 	 	 	 	 	 t h e P l a y e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   i f   (   ! I s A c t i o n B l o c k e d B y ( E I A B _ H e a v y A t t a c k s , ' i n t e r a c t i o n ' )   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ L i g h t A t t a c k s ) ; 	 	 	 	  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	 e v e n t   O n C b t C i r i S p e c i a l A t t a c k H e a v y (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 { 	  
 	 	 i f (   ! G e t C i r i P l a y e r ( ) . H a s S w o r d ( )   )    
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i f (   t h e P l a y e r . G e t B I s I n p u t A l l o w e d ( )   & &   t h e P l a y e r . G e t B I s C o m b a t A c t i o n A l l o w e d ( )   & &   I s P r e s s e d ( a c t i o n )   ) 	  
 	 	 {  
 	 	 	 t h e I n p u t . F o r c e D e a c t i v a t e A c t i o n ( ' A t t a c k W i t h A l t e r n a t e H e a v y ' ) ;  
 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ C i r i _ S p e c i a l A t t a c k _ H e a v y ,   B S _ P r e s s e d   ) ;  
 	 	 	 t h e P l a y e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	 }  
 	 	 e l s e   i f   (   I s R e l e a s e d (   a c t i o n   )   & &   t h e P l a y e r . G e t C o m b a t A c t i o n ( )   = =   E B A T _ C i r i _ S p e c i a l A t t a c k _ H e a v y   & &   t h e P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' i s P e r f o r m i n g S p e c i a l A t t a c k '   )   ! =   0     )  
 	 	 {  
 	 	 	 t h e I n p u t . F o r c e D e a c t i v a t e A c t i o n ( ' C i r i A t t a c k H e a v y ' ) ;  
 	 	 	 t h e I n p u t . F o r c e D e a c t i v a t e A c t i o n ( ' A t t a c k W i t h A l t e r n a t e H e a v y ' ) ;  
 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ C i r i _ S p e c i a l A t t a c k _ H e a v y ,   B S _ R e l e a s e d   ) ;  
 	 	 	 t h e P l a y e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ; 	 	  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C b t C i r i D o d g e (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 { 	  
 	 	 i f (   I s A c t i o n A l l o w e d ( E I A B _ D o d g e )   & &   I s P r e s s e d ( a c t i o n )   & &   t h e P l a y e r . I s A l i v e ( )   ) 	  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . I s I n C o m b a t A c t i o n ( )   & &   t h e P l a y e r . G e t C o m b a t A c t i o n ( )   = =   E B A T _ C i r i _ S p e c i a l A t t a c k   & &   t h e P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' i s C o m p l e t i n g S p e c i a l A t t a c k '   )   < =   0   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ C i r i _ D o d g e ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 t h e P l a y e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ; 	 	 	  
 	 	 	 }  
 	 	 	 e l s e   i f   (   t h e P l a y e r . G e t B I s I n p u t A l l o w e d ( )   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ C i r i _ D o d g e ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 i f   (   t h e P l a y e r . G e t B I s C o m b a t A c t i o n A l l o w e d ( )   )  
 	 	 	 	 	 t h e P l a y e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   t h e P l a y e r . I s I n C o m b a t A c t i o n ( )   & &   t h e P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ A t t a c k   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   t h e P l a y e r . C a n P l a y H i t A n i m ( )   & &   t h e P l a y e r . I s T h r e a t e n e d ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e P l a y e r . C r i t i c a l E f f e c t A n i m a t i o n I n t e r r u p t e d ( " C i r i D o d g e " ) ;  
 	 	 	 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ C i r i _ D o d g e ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 	 	 t h e P l a y e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ; 	 	 	 	 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ C i r i _ D o d g e ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   (   ! I s A c t i o n A l l o w e d ( E I A B _ D o d g e )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ D o d g e ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C b t C i r i D a s h (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f   (   t h e I n p u t . L a s t U s e d G a m e p a d ( )   & &   I s P r e s s e d (   a c t i o n   )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . S t a r t D o d g e T i m e r ( ) ;  
 	 	 }  
 	 	 e l s e   i f (   I s A c t i o n A l l o w e d ( E I A B _ D o d g e )   & &   t h e P l a y e r . I s A l i v e ( )   ) 	  
 	 	 {  
 	 	 	 i f   (   t h e I n p u t . L a s t U s e d G a m e p a d ( )   )  
 	 	 	 {  
 	 	 	 	 i f   (   ! ( t h e P l a y e r . I s D o d g e T i m e r R u n n i n g ( )   & &   ! t h e P l a y e r . I s I n s i d e I n t e r a c t i o n ( )   & &   I s R e l e a s e d ( a c t i o n ) )   )  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   t h e P l a y e r . I s I n C o m b a t A c t i o n ( )   & &   t h e P l a y e r . G e t C o m b a t A c t i o n ( )   = =   E B A T _ C i r i _ S p e c i a l A t t a c k   & &   t h e P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' i s C o m p l e t i n g S p e c i a l A t t a c k '   )   < =   0   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ R o l l ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 t h e P l a y e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ; 	 	 	  
 	 	 	 }  
 	 	 	 e l s e   i f   (   t h e P l a y e r . G e t B I s I n p u t A l l o w e d ( )   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ R o l l ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 i f   (   t h e P l a y e r . G e t B I s C o m b a t A c t i o n A l l o w e d ( )   )  
 	 	 	 	 	 t h e P l a y e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   t h e P l a y e r . I s I n C o m b a t A c t i o n ( )   & &   t h e P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' c o m b a t A c t i o n T y p e '   )   = =   ( i n t ) C A T _ A t t a c k   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   t h e P l a y e r . C a n P l a y H i t A n i m ( )   & &   t h e P l a y e r . I s T h r e a t e n e d ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e P l a y e r . C r i t i c a l E f f e c t A n i m a t i o n I n t e r r u p t e d ( " C i r i D o d g e " ) ;  
 	 	 	 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ R o l l ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 	 	 t h e P l a y e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ; 	 	 	 	 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ R o l l ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   (   ! I s A c t i o n A l l o w e d ( E I A B _ D o d g e )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ D o d g e ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C b t D o d g e (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 { 	 	  
 	 	 i f   (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	  
 	 	 	 i f ( a l t S i g n C a s t i n g   & &   ! t h e I n p u t . L a s t U s e d P C I n p u t ( )   & &   t h e I n p u t . I s A c t i o n P r e s s e d ( ' C a s t S i g n ' ) )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	  
 	 	 	 } 	 	 	  
 	 	 	 e l s e  
 	 	 	  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . E v a d e P r e s s e d ( E B A T _ D o d g e ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C b t R o l l (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 { 	 	  
 	 	 i f   (   t h e I n p u t . L a s t U s e d P C I n p u t ( )   )  
 	 	 {  
 	 	 	 i f   (   I s P r e s s e d (   a c t i o n   )   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . E v a d e P r e s s e d ( E B A T _ R o l l ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 i f   (   I s P r e s s e d (   a c t i o n   )   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 i f ( a l t S i g n C a s t i n g   & &   t h e I n p u t . I s A c t i o n P r e s s e d ( ' C a s t S i g n ' ) )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   f a l s e ; 	 	 	 	 	  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . S t a r t D o d g e T i m e r ( ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e   i f   (   I s R e l e a s e d (   a c t i o n   )   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h e P l a y e r . I s D o d g e T i m e r R u n n i n g ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . S t o p D o d g e T i m e r ( ) ;  
 	 	 	 	 	 i f   (   ! t h e P l a y e r . I s I n s i d e I n t e r a c t i o n ( )   )  
 	 	 	 	 	 	 t h e P l a y e r . E v a d e P r e s s e d ( E B A T _ R o l l ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	 p u b l i c   f u n c t i o n   G e t I s A l t S i g n C a s t i n g ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   a l t S i g n C a s t i n g ;  
 	 }  
  
 	 p u b l i c   f u n c t i o n   G e t I s A l t S i g n C a s t i n g P r e s s e d ( )   :   b o o l  
 	 {  
 	 	 r e t u r n   a l t S i g n C a s t i n g     & &     t h e I n p u t . I s A c t i o n P r e s s e d ( ' C a s t S i g n ' ) ;  
 	 }  
 	  
 	 p u b l i c   f u n c t i o n   S e t I s A l t S i g n C a s t i n g ( e n a b l e   :   b o o l )  
 	 {  
 	 	 a l t S i g n C a s t i n g   =   e n a b l e ;  
 	 }  
 	  
 	 p r i v a t e   f u n c t i o n   A l t C a s t S i g n ( s i g n T y p e   :   E S i g n T y p e )  
 	 {  
 	 	 v a r   s i g n S k i l l   :   E S k i l l ; 	  
 	 	  
 	 	 i f (   ! t h e P l a y e r . G e t B I s I n p u t A l l o w e d ( )   )  
 	 	 { 	  
 	 	 	 r e t u r n ;  
 	 	 }  
 	  
 	 	 i f (   ! I s A c t i o n A l l o w e d ( E I A B _ S i g n s )   | |   G e t W i t c h e r P l a y e r ( ) . I s S i g n B l o c k e d ( s i g n T y p e )   )  
 	 	 { 	 	 	 	  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ S i g n s ) ;  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	 i f   (   t h e P l a y e r . I s H o l d i n g I t e m I n L H a n d ( )   & &   t h e P l a y e r . I s U s a b l e I t e m L B l o c k e d ( )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ U n d e f i n e d ,   f a l s e ,   f a l s e ,   t r u e ) ;  
 	 	 	 r e t u r n ;  
 	 	 }  
  
 	 	 s i g n S k i l l   =   S i g n E n u m T o S k i l l E n u m ( s i g n T y p e ) ;  
 	 	 i f (   s i g n S k i l l   ! =   S _ S U n d e f i n e d   )  
 	 	 {  
 	 	 	 i f ( ! t h e P l a y e r . C a n U s e S k i l l ( s i g n S k i l l ) )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ S i g n s ,   f a l s e ,   f a l s e ,   t r u e ) ;  
 	 	 	 	 r e t u r n ;  
 	 	 	 }  
 	 	  
 	 	 	 i f (   t h e P l a y e r . H a s S t a m i n a T o U s e S k i l l (   s i g n S k i l l ,   f a l s e   )   )  
 	 	 	 {  
 	 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e t E q u i p p e d S i g n ( s i g n T y p e ) ; 	 	 	 	  
 	 	 	 	 t h e P l a y e r . S e t u p C o m b a t A c t i o n (   E B A T _ C a s t S i g n ,   B S _ P r e s s e d   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . S o u n d E v e n t ( " g u i _ n o _ s t a m i n a " ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	 v a r   l a s t M o v e m e n t D o u b l e T a p N a m e   :   n a m e ;  
 	  
 	 e v e n t   O n M o v e m e n t D o u b l e T a p (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f   (   I s P r e s s e d (   a c t i o n   )   )  
 	 	 {  
 	 	 	 i f   (   ! t h e P l a y e r . I s D o d g e T i m e r R u n n i n g ( )   | |   a c t i o n . a N a m e   ! =   l a s t M o v e m e n t D o u b l e T a p N a m e   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . S t a r t D o d g e T i m e r ( ) ;  
 	 	 	 	 l a s t M o v e m e n t D o u b l e T a p N a m e   =   a c t i o n . a N a m e ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . S t o p D o d g e T i m e r ( ) ;  
 	 	 	 	  
 	 	 	 	 t h e P l a y e r . E v a d e P r e s s e d ( E B A T _ D o d g e ) ;  
 	 	 	 }  
 	 	 	  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C a s t S i g n (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   s i g n S k i l l   :   E S k i l l ;  
  
 	 	 i f (   a l t S i g n C a s t i n g   )  
 	 	 	 t h e P l a y e r . A p p l y C a s t S e t t i n g s ( ) ;    
 	 	  
 	 	  
 	 	 i f ( a l t S i g n C a s t i n g   & &   ! t h e I n p u t . L a s t U s e d P C I n p u t ( ) )  
 	 	 {  
 	 	 	 i f ( I s P r e s s e d (   a c t i o n   )   & &   ( t h e I n p u t . G e t A c t i o n V a l u e (   ' L o c k A n d G u a r d '   )   >   0 ) )    
 	 	 	 {  
 	 	 	 	 A l t C a s t S i g n ( S T _ I g n i ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( I s P r e s s e d (   a c t i o n   ) )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . B l o c k A c t i o n ( E I A B _ I n t e r a c t i o n s ,   ' N G E _ C a s t S i g n _ B l o c k ' ) ;  
 	 	 	 	 t h e P l a y e r . B l o c k A c t i o n ( E I A B _ I n t e r a c t i o n A c t i o n ,   ' N G E _ C a s t S i g n _ B l o c k ' ) ;  
 	 	 	 	 t h e P l a y e r . B l o c k A c t i o n ( E I A B _ I n t e r a c t i o n C o n t a i n e r s ,   ' N G E _ C a s t S i g n _ B l o c k ' ) ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( I s R e l e a s e d (   a c t i o n   ) )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n ( E I A B _ I n t e r a c t i o n s ,   ' N G E _ C a s t S i g n _ B l o c k ' ) ;  
 	 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n ( E I A B _ I n t e r a c t i o n A c t i o n ,   ' N G E _ C a s t S i g n _ B l o c k ' ) ;  
 	 	 	 	 t h e P l a y e r . U n b l o c k A c t i o n ( E I A B _ I n t e r a c t i o n C o n t a i n e r s ,   ' N G E _ C a s t S i g n _ B l o c k ' ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f (   ! t h e P l a y e r . G e t B I s I n p u t A l l o w e d ( )   )  
 	 	 { 	  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 i f (   ! I s A c t i o n A l l o w e d ( E I A B _ S i g n s )   )  
 	 	 	 { 	 	 	 	  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ S i g n s ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
   i f   (   t h e P l a y e r . I s H o l d i n g I t e m I n L H a n d ( )   & &   t h e P l a y e r . I s U s a b l e I t e m L B l o c k e d ( )   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ U n d e f i n e d ,   f a l s e ,   f a l s e ,   t r u e ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	  
 	 	 	 s i g n S k i l l   =   S i g n E n u m T o S k i l l E n u m (   t h e P l a y e r . G e t E q u i p p e d S i g n ( )   ) ;  
 	 	 	 i f (   s i g n S k i l l   ! =   S _ S U n d e f i n e d   )  
 	 	 	 {  
 	 	 	 	 i f ( ! t h e P l a y e r . C a n U s e S k i l l ( s i g n S k i l l ) )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ S i g n s ,   f a l s e ,   f a l s e ,   t r u e ) ;  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 	  
 	 	 	 	 i f (   t h e P l a y e r . H a s S t a m i n a T o U s e S k i l l (   s i g n S k i l l ,   f a l s e   )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f (   G e t I n v a l i d U n i q u e I d ( )   ! =   t h e P l a y e r . i n v . G e t I t e m F r o m S l o t (   ' l _ w e a p o n '   )   & &   ! t h e P l a y e r . I s U s a b l e I t e m L B l o c k e d ( ) )  
 	 	 	 	 	 {  
  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 	 t h e P l a y e r . S e t u p C o m b a t A c t i o n (   E B A T _ C a s t S i g n ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . S o u n d E v e n t ( " g u i _ n o _ s t a m i n a " ) ;  
 	 	 	 	 }  
 	 	 	 } 	 	 	  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	 e v e n t   O n T h r o w B o m b ( a c t i o n   :   S I n p u t A c t i o n )  
 	 {  
 	 	 v a r   s e l e c t e d I t e m I d   :   S I t e m U n i q u e I d ;  
 	  
 	 	 s e l e c t e d I t e m I d   =   t h e P l a y e r . G e t S e l e c t e d I t e m I d ( ) ;  
 	 	 i f ( ! t h e P l a y e r . i n v . I s I t e m B o m b ( s e l e c t e d I t e m I d ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i f (   t h e P l a y e r . i n v . S i n g l e t o n I t e m G e t A m m o ( s e l e c t e d I t e m I d )   = =   0   )  
 	 	 {  
 	 	 	  
 	 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 	 { 	 	 	  
 	 	 	 	 t h e P l a y e r . S o u n d E v e n t (   " g u i _ i n g a m e _ l o w _ s t a m i n a _ w a r n i n g "   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f   (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . I s T h r o w H o l d ( )   )  
 	 	 	 {  
 	 	 	 	 i f   (   t h e P l a y e r . p l a y e r A i m i n g . G e t A i m e d T a r g e t ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   t h e P l a y e r . A l l o w A t t a c k (   t h e P l a y e r . p l a y e r A i m i n g . G e t A i m e d T a r g e t ( ) ,   E B A T _ I t e m U s e   )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ I t e m U s e ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 	 	 t h e P l a y e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 	 t h e P l a y e r . B o m b T h r o w A b o r t ( ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ I t e m U s e ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 	 t h e P l a y e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ; 	 	 	 	  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 t h e P l a y e r . S e t T h r o w H o l d (   f a l s e   ) ;  
 	  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f ( ! I s A c t i o n A l l o w e d ( E I A B _ T h r o w B o m b ) )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ T h r o w B o m b ) ;  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f   (   t h e P l a y e r . I s H o l d i n g I t e m I n L H a n d ( )   & &   ! t h e P l a y e r . I s U s a b l e I t e m L B l o c k e d ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . S e t P l a y e r A c t i o n T o R e s t o r e   (   P A T R _ T h r o w B o m b   ) ;  
 	 	 	 	 	 t h e P l a y e r . O n U s e S e l e c t e d I t e m (   t r u e   ) ;  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 }  
 	 	 	 	 i f ( t h e P l a y e r . C a n S e t u p C o m b a t A c t i o n _ T h r o w ( )   & &   t h e I n p u t . G e t L a s t A c t i v a t i o n T i m e (   a c t i o n . a N a m e   )   <   0 . 3 f   ) 	  
 	 	 	 	 {  
 	 	 	 	 	  
 	 	 	 	 	 t h e P l a y e r . S e t u p C o m b a t A c t i o n (   E B A T _ I t e m U s e ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 } 	 	  
 	 	 	  
 	 	 	 	 t h e P l a y e r . S e t u p C o m b a t A c t i o n (   E B A T _ I t e m U s e ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 e v e n t   O n T h r o w B o m b H o l d ( a c t i o n   :   S I n p u t A c t i o n )  
 	 {  
 	 	 v a r   l o c k s   :   a r r a y < S I n p u t A c t i o n L o c k > ;  
 	 	 v a r   i n d   :   i n t ;  
  
 	 	 v a r   s e l e c t e d I t e m I d   :   S I t e m U n i q u e I d ;  
 	  
 	 	 s e l e c t e d I t e m I d   =   t h e P l a y e r . G e t S e l e c t e d I t e m I d ( ) ;  
 	 	 i f ( ! t h e P l a y e r . i n v . I s I t e m B o m b ( s e l e c t e d I t e m I d ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i f (   t h e P l a y e r . i n v . S i n g l e t o n I t e m G e t A m m o ( s e l e c t e d I t e m I d )   = =   0   )  
 	 	 {  
 	 	 	  
 	 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 	 { 	 	 	  
 	 	 	 	 t h e P l a y e r . S o u n d E v e n t (   " g u i _ i n g a m e _ l o w _ s t a m i n a _ w a r n i n g "   ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	 	  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 i f ( ! I s A c t i o n A l l o w e d ( E I A B _ T h r o w B o m b ) )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ T h r o w B o m b ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	 e l s e   i f ( G e t W i t c h e r P l a y e r ( ) . G e t B o m b D e l a y ( G e t W i t c h e r P l a y e r ( ) . G e t I t e m S l o t ( s e l e c t e d I t e m I d ) )   >   0   )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	 i f   (   t h e P l a y e r . I s H o l d i n g I t e m I n L H a n d ( )   & &   ! t h e P l a y e r . I s U s a b l e I t e m L B l o c k e d ( )   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . S e t P l a y e r A c t i o n T o R e s t o r e   (   P A T R _ T h r o w B o m b   ) ;  
 	 	 	 	 t h e P l a y e r . O n U s e S e l e c t e d I t e m (   t r u e   ) ;  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 	 i f ( t h e P l a y e r . C a n S e t u p C o m b a t A c t i o n _ T h r o w ( )   & &   t h e I n p u t . G e t L a s t A c t i v a t i o n T i m e (   a c t i o n . a N a m e   )   <   0 . 3 f   ) 	  
 	 	 	 {  
 	 	 	 	 i f (   t h e P l a y e r . G e t B I s C o m b a t A c t i o n A l l o w e d ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . P u s h C o m b a t A c t i o n O n B u f f e r (   E B A T _ I t e m U s e ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 	 t h e P l a y e r . P r o c e s s C o m b a t A c t i o n B u f f e r ( ) ;  
 	 	 	 	 }  
 	 	 	 } 	 	  
 	 	  
 	 	 	  
 	 	 	  
 	 	 	 l o c k s   =   G e t A c t i o n L o c k s ( E I A B _ T h r o w B o m b ) ;  
 	 	 	 i n d   =   F i n d A c t i o n L o c k I n d e x ( E I A B _ T h r o w B o m b ,   ' B o m b T h r o w ' ) ;  
 	 	 	 i f ( i n d   > =   0 )  
 	 	 	 	 l o c k s . E r a s e ( i n d ) ;  
 	 	 	  
 	 	 	 i f ( l o c k s . S i z e ( )   ! =   0 )  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 	 t h e P l a y e r . S e t T h r o w H o l d (   t r u e   ) ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 e v e n t   O n T h r o w B o m b A b o r t ( a c t i o n   :   S I n p u t A c t i o n )  
 	 { 	 	  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 { 	 	  
 	 	 	 t h e P l a y e r . B o m b T h r o w A b o r t ( ) ;  
 	 	 	 t h e P l a y e r . S e t T h r o w H o l d ( f a l s e ) ;   / / m o d W 3 R e d u x R G C  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 e v e n t   O n C b t T h r o w I t e m (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 { 	 	 	  
 	 	 v a r   i s U s a b l e I t e m ,   i s C r o s s b o w ,   i s B o m b ,   r e t   :   b o o l ;  
 	 	 v a r   i t e m I d   :   S I t e m U n i q u e I d ; 	 	  
 	 	  
 	 	  
 	 	 i f ( t h e P l a y e r . I s I n A i r ( )   | |   t h e P l a y e r . G e t W e a p o n H o l s t e r ( ) . I s O n T h e M i d d l e O f H o l s t e r i n g ( ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 i f (   t h e P l a y e r . I s S w i m m i n g ( )   & &   ! t h e P l a y e r . O n C h e c k D i v i n g ( )   & &   t h e P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' A i m T h r o w '   )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	  
 	 	 i t e m I d   =   t h e P l a y e r . G e t S e l e c t e d I t e m I d ( ) ;  
 	 	  
 	 	 i f ( ! t h e P l a y e r . i n v . I s I d V a l i d ( i t e m I d ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i s C r o s s b o w   =   t h e P l a y e r . i n v . I s I t e m C r o s s b o w ( i t e m I d ) ;  
 	 	 i f ( ! i s C r o s s b o w )  
 	 	 {  
 	 	 	 i s B o m b   =   t h e P l a y e r . i n v . I s I t e m B o m b ( i t e m I d ) ;  
 	 	 	 i f ( ! i s B o m b )  
 	 	 	 {  
 	 	 	 	 i s U s a b l e I t e m   =   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 i f (   i s C r o s s b o w   )  
 	 	 {  
 	 	 	 i f   (   I s A c t i o n A l l o w e d ( E I A B _ C r o s s b o w )   )  
 	 	 	 {  
 	 	 	 	 i f (   I s P r e s s e d ( a c t i o n ) )  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   t h e P l a y e r . I s H o l d i n g I t e m I n L H a n d ( )   & &   ! t h e P l a y e r . I s U s a b l e I t e m L B l o c k e d ( )   )  
 	 	 	 	 	 {  
  
 	 	 	 	 	 	  
 	 	 	 	 	 	 t h e P l a y e r . S e t P l a y e r A c t i o n T o R e s t o r e   (   P A T R _ C r o s s b o w   ) ;  
 	 	 	 	 	 	 t h e P l a y e r . O n U s e S e l e c t e d I t e m (   t r u e   ) ;  
 	 	 	 	 	 	 r e t   =   t r u e ; 	 	 	 	 	 	  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e   i f   (   t h e P l a y e r . G e t B I s I n p u t A l l o w e d ( )   & &   ! t h e P l a y e r . I s C u r r e n t l y U s i n g I t e m L ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e P l a y e r . S e t I s A i m i n g C r o s s b o w (   t r u e   ) ;  
 	 	 	 	 	 	 t h e P l a y e r . S e t u p C o m b a t A c t i o n (   E B A T _ I t e m U s e ,   B S _ P r e s s e d   ) ;  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 	 r e t   =   t r u e ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
  
 	 	 	 	 	 i f   (   t h e P l a y e r . G e t I s A i m i n g C r o s s b o w ( )   & &   ! t h e P l a y e r . I s C u r r e n t l y U s i n g I t e m L ( )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e P l a y e r . S e t u p C o m b a t A c t i o n (   E B A T _ I t e m U s e ,   B S _ R e l e a s e d   ) ;  
 	 	 	 	 	 	  
 	 	 	 	 	 	  
 	 	 	 	 	 	 t h e P l a y e r . S e t I s A i m i n g C r o s s b o w (   f a l s e   ) ;  
 	 	 	 	 	 	 r e t   =   t r u e ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i f   (   ! t h e P l a y e r . I s I n S h a l l o w W a t e r ( )   )  
 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ C r o s s b o w ) ; 	 	 	 	  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   I s P r e s s e d ( a c t i o n )   )  
 	 	 	 	 t h e P l a y e r . A d d T i m e r (   ' I s I t e m U s e I n p u t H e l d ' ,   0 . 0 0 0 0 1 ,   t r u e   ) ;  
 	 	 	 e l s e  
 	 	 	 	 t h e P l a y e r . R e m o v e T i m e r ( ' I s I t e m U s e I n p u t H e l d ' ) ;  
 	 	 	 	  
 	 	 	 r e t u r n   r e t ;  
 	 	 }  
 	 	 e l s e   i f ( i s B o m b )  
 	 	 {  
 	 	 	 r e t u r n   O n T h r o w B o m b ( a c t i o n ) ;  
 	 	 }  
 	 	 e l s e   i f ( i s U s a b l e I t e m   & &   ! t h e P l a y e r . I s S w i m m i n g ( )   )  
 	 	 {  
 	 	 	 i f (   I s A c t i o n A l l o w e d ( E I A B _ U s a b l e I t e m )   )  
 	 	 	 {  
 	 	 	 	 i f ( I s P r e s s e d ( a c t i o n )   & &   t h e P l a y e r . H a s S t a m i n a T o U s e A c t i o n ( E S A T _ U s a b l e I t e m ) )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . S e t P l a y e r A c t i o n T o R e s t o r e   (   P A T R _ D e f a u l t   ) ;  
 	 	 	 	 	 t h e P l a y e r . O n U s e S e l e c t e d I t e m ( ) ;  
 	 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 	 }  
  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ U s a b l e I t e m ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 e v e n t   O n C b t T h r o w I t e m H o l d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   i s B o m b ,   i s C r o s s b o w ,   i s U s a b l e I t e m   :   b o o l ;  
 	 	 v a r   i t e m I d   :   S I t e m U n i q u e I d ;  
 	 	  
 	 	  
 	 	 i f ( t h e P l a y e r . I s I n A i r ( )   | |   t h e P l a y e r . G e t W e a p o n H o l s t e r ( ) . I s O n T h e M i d d l e O f H o l s t e r i n g ( )   )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 	  
 	 	 i f (   t h e P l a y e r . I s S w i m m i n g ( )   & &   ! t h e P l a y e r . O n C h e c k D i v i n g ( )   & &   t h e P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' A i m T h r o w '   )  
 	 	 	 r e t u r n   f a l s e ; 	 	 	  
 	 	 	 	  
 	 	 i t e m I d   =   t h e P l a y e r . G e t S e l e c t e d I t e m I d ( ) ;  
 	 	  
 	 	 i f ( ! t h e P l a y e r . i n v . I s I d V a l i d ( i t e m I d ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 i s C r o s s b o w   =   t h e P l a y e r . i n v . I s I t e m C r o s s b o w ( i t e m I d ) ;  
 	 	 i f ( ! i s C r o s s b o w )  
 	 	 {  
 	 	 	 i s B o m b   =   t h e P l a y e r . i n v . I s I t e m B o m b ( i t e m I d ) ;  
 	 	 	 i f ( i s B o m b )  
 	 	 	 {  
 	 	 	 	 r e t u r n   O n T h r o w B o m b H o l d ( a c t i o n ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 i s U s a b l e I t e m   =   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 {  
 	 	 	 i f (   i s C r o s s b o w   & &   ! I s A c t i o n A l l o w e d ( E I A B _ C r o s s b o w )   )  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ C r o s s b o w ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f (   i s U s a b l e I t e m )  
 	 	 	 {  
 	 	 	 	 i f ( ! I s A c t i o n A l l o w e d ( E I A B _ U s a b l e I t e m ) )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ U s a b l e I t e m ) ;  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f ( t h e P l a y e r . I s S w i m m i n g ( ) )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ U n d e f i n e d ,   f a l s e ,   f a l s e ,   t r u e ) ;  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . S e t T h r o w H o l d (   t r u e   ) ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	 e l s e   i f (   I s R e l e a s e d ( a c t i o n )   & &   t h e P l a y e r . I s T h r o w H o l d ( ) )  
 	 	 {  
 	 	 	  
 	 	 	  
 	 	 	 t h e P l a y e r . S e t u p C o m b a t A c t i o n (   E B A T _ I t e m U s e ,   B S _ R e l e a s e d   ) ;  
 	 	 	 t h e P l a y e r . S e t T h r o w H o l d (   f a l s e   ) ;  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 e v e n t   O n C b t T h r o w C a s t A b o r t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   p l a y e r   :   W 3 P l a y e r W i t c h e r ;  
 	 	 v a r   t h r o w S t a g e   :   E T h r o w S t a g e ;  
 	 	  
 	 	 i f ( t h e P l a y e r . i n v . I s I t e m B o m b ( t h e P l a y e r . G e t S e l e c t e d I t e m I d ( ) ) )  
 	 	 {  
 	 	 	 r e t u r n   O n T h r o w B o m b A b o r t ( a c t i o n ) ; 	 	 	 	 	 	 	  
 	 	 }  
 	 	  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 p l a y e r   =   G e t W i t c h e r P l a y e r ( ) ;  
 	 	 	 i f ( p l a y e r )  
 	 	 	 {  
 	 	 	 	 i f (   p l a y e r . I s C a s t i n g S i g n ( )   )  
 	 	 	 	 {  
 	 	 	 	 	 p l a y e r . C a s t S i g n A b o r t ( ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 i f   (   t h e P l a y e r . i n v . I s I t e m C r o s s b o w (   t h e P l a y e r . i n v . G e t I t e m F r o m S l o t (   ' l _ w e a p o n '   )   )   )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h e P l a y e r . O n R a n g e d F o r c e H o l s t e r ( ) ;  
 	 	 	 	 	 }  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t h r o w S t a g e   =   ( i n t ) t h e P l a y e r . G e t B e h a v i o r V a r i a b l e (   ' t h r o w S t a g e ' ,   ( i n t ) T S _ S t o p ) ;  
 	 	 	 	 	 	  
 	 	 	 	 	 	 i f ( t h r o w S t a g e   = =   T S _ S t a r t   | |   t h r o w S t a g e   = =   T S _ L o o p )  
 	 	 	 	 	 	 	 p l a y e r . T h r o w i n g A b o r t ( ) ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C b t S e l e c t L o c k T a r g e t (   i n p u t V e c t o r   :   V e c t o r   )  
 	 {  
 	 	 v a r   n e w L o c k T a r g e t   	 :   C A c t o r ;  
 	 	 v a r   i n p u t H e a d i n g 	 :   f l o a t ;  
 	 	 v a r   t a r g e t 	 	 	 :   C A c t o r ;  
 	 	  
 	 	 i n p u t V e c t o r . Y   =   i n p u t V e c t o r . Y     *   - 1 . f ;  
 	 	 i n p u t H e a d i n g   = 	 V e c H e a d i n g (   i n p u t V e c t o r   ) ;  
 	 	  
 	 	 n e w L o c k T a r g e t   =   t h e P l a y e r . G e t S c r e e n S p a c e L o c k T a r g e t (   t h e P l a y e r . G e t D i s p l a y T a r g e t ( ) ,   1 8 0 . f ,   1 . f ,   i n p u t H e a d i n g   ) ;  
  
 	 	 i f   (   n e w L o c k T a r g e t   )  
 	 	 	 t h e P l a y e r . P r o c e s s L o c k T a r g e t (   n e w L o c k T a r g e t   ) ;  
 	 	  
 	 	 t a r g e t   =   t h e P l a y e r . G e t T a r g e t ( ) ;  
 	 	 i f   (   t a r g e t   )  
 	 	 {  
 	 	 	 t h e P l a y e r . S e t S l i d e T a r g e t (   t a r g e t   ) ;  
 	 	 	  
 	 	 }  
 	 }  
  
 	 e v e n t   O n C b t L o c k A n d G u a r d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f ( t h e P l a y e r . I s C i r i ( )   & &   ! G e t C i r i P l a y e r ( ) . H a s S w o r d ( ) )  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	  
 	 	 i f (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	  
 	 	 	 i f ( a l t S i g n C a s t i n g   & &   ! t h e I n p u t . L a s t U s e d P C I n p u t ( )   & &   t h e I n p u t . I s A c t i o n P r e s s e d ( ' C a s t S i g n ' )   & &   G e t W i t c h e r P l a y e r ( ) . I s C u r r e n t S i g n C h a n n e l e d ( ) )  
 	 	 	 { 	 	 	 	  
 	 	 	 	 t h e P l a y e r . A b o r t S i g n ( ) ;  
 	 	 	 }  
 	 	 	  
 	 	  
 	 	 	 t h e P l a y e r . S e t G u a r d e d ( f a l s e ) ;  
 	 	 	 t h e P l a y e r . O n G u a r d e d R e l e a s e d ( ) ; 	  
 	 	 }  
 	 	  
 	 	 i f (   ( t h e P l a y e r . I s W e a p o n H e l d ( ' f i s t s ' )   | |   t h e P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' C o m b a t F i s t s ' )   & &   ! I s A c t i o n A l l o w e d ( E I A B _ F i s t s ) )  
 	 	 {  
 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ F i s t s ) ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	  
 	 	 	 i f ( a l t S i g n C a s t i n g   & &   ! t h e I n p u t . L a s t U s e d P C I n p u t ( )   & &   t h e I n p u t . I s A c t i o n P r e s s e d ( ' C a s t S i g n ' ) )  
 	 	 	 {  
 	 	 	 	 A l t C a s t S i g n ( S T _ I g n i ) ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	  
 	 	  
 	 	  
 	 	 	 / /   m o d B e t t e r T o r c h e s N e x t G e n  
 	 	 	 / * i f (   ! I s A c t i o n A l l o w e d ( E I A B _ P a r r y )   )  
 	 	 	 {  
 	 	 	 	 i f   (   I s A c t i o n B l o c k e d B y ( E I A B _ P a r r y , ' U s a b l e I t e m ' )   )  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ P a r r y ) ;  
 	 	 	 	 }  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 } * /  
  
 	 	 	 i f   (   t h e P l a y e r . G e t C u r r e n t S t a t e N a m e ( )   = =   ' E x p l o r a t i o n '   )  
 	 	 	 	 t h e P l a y e r . G o T o C o m b a t I f N e e d e d ( ) ;  
 	 	 	 	  
 	 	 	 i f   (   t h e P l a y e r . b L A x i s R e l e a s e d   )  
 	 	 	 	 t h e P l a y e r . R e s e t R a w P l a y e r H e a d i n g ( ) ;  
 	 	 	  
 	 	 	 i f   (   t h e P l a y e r . r a n g e d W e a p o n   & &   t h e P l a y e r . r a n g e d W e a p o n . G e t C u r r e n t S t a t e N a m e ( )   ! =   ' S t a t e _ W e a p o n W a i t '   )  
 	 	 	 	 t h e P l a y e r . O n R a n g e d F o r c e H o l s t e r (   t r u e ,   t r u e   ) ;  
 	 	 	  
 	 	 	 t h e P l a y e r . A d d C o u n t e r T i m e S t a m p ( t h e G a m e . G e t E n g i n e T i m e ( ) ) ; 	  
 	 	 	 t h e P l a y e r . S e t G u a r d e d ( t r u e ) ; 	 	 	 	  
 	 	 	 t h e P l a y e r . O n P e r f o r m G u a r d ( ) ;  
 	 	 } 	  
 	 } 	 	  
 	  
 	 e v e n t   O n C b t C a m e r a L o c k O r S p a w n H o r s e (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f   (   O n C b t C a m e r a L o c k ( a c t i o n )   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 	  
 	 	 i f   (   O n C o m m S p a w n H o r s e ( a c t i o n )   )  
 	 	 	 r e t u r n   t r u e ;  
 	 	 	  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 e v e n t   O n C b t C a m e r a L o c k (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 { 	  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . I s T h r e a t e n e d ( )   | |   t h e P l a y e r . I s A c t o r L o c k e d T o T a r g e t ( )   )  
 	 	 	 {  
 	 	 	 	 i f (   ! I s A c t i o n A l l o w e d ( E I A B _ C a m e r a L o c k ) )  
 	 	 	 	 {  
 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   (   ! t h e P l a y e r . I s H a r d L o c k E n a b l e d ( )   & &   t h e P l a y e r . G e t D i s p l a y T a r g e t ( )   & &   ( C A c t o r ) (   t h e P l a y e r . G e t D i s p l a y T a r g e t ( )   )   & &   I s A c t i o n A l l o w e d ( E I A B _ H a r d L o c k ) )  
 	 	 	 	 { 	  
 	 	 	 	 	 i f   (   t h e P l a y e r . b L A x i s R e l e a s e d   )  
 	 	 	 	 	 	 t h e P l a y e r . R e s e t R a w P l a y e r H e a d i n g ( ) ;  
 	 	 	 	 	  
 	 	 	 	 	 t h e P l a y e r . H a r d L o c k T o T a r g e t (   t r u e   ) ;  
 	 	 	 	 }  
 	 	 	 	 e l s e  
 	 	 	 	 {  
 	 	 	 	 	 t h e P l a y e r . H a r d L o c k T o T a r g e t (   f a l s e   ) ;  
 	 	 	 	 } 	  
 	 	 	 	 r e t u r n   t r u e ;  
 	 	 	 }  
 	 	 }  
 	 	 r e t u r n   f a l s e ;  
 	 }  
 	  
 	 e v e n t   O n C h a n g e C a m e r a P r e s e t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   I s P r e s s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 ( ( C C u s t o m C a m e r a ) t h e C a m e r a . G e t T o p m o s t C a m e r a O b j e c t ( ) ) . N e x t P r e s e t ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C h a n g e C a m e r a P r e s e t B y M o u s e W h e e l (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   t o l e r a n c e   :   f l o a t ;  
 	 	 t o l e r a n c e   =   1 0 . 0 f ;  
 	 	  
 	 	 i f (   (   a c t i o n . v a l u e   *   t o t a l C a m e r a P r e s e t C h a n g e   )   <   0 . 0 f   )  
 	 	 {  
 	 	 	 t o t a l C a m e r a P r e s e t C h a n g e   =   0 . 0 f ;  
 	 	 }  
 	 	  
 	 	 t o t a l C a m e r a P r e s e t C h a n g e   + =   a c t i o n . v a l u e ;  
 	 	 i f (   t o t a l C a m e r a P r e s e t C h a n g e   <   - t o l e r a n c e   )  
 	 	 {  
 	 	 	 ( ( C C u s t o m C a m e r a ) t h e C a m e r a . G e t T o p m o s t C a m e r a O b j e c t ( ) ) . P r e v P r e s e t ( ) ;  
 	 	 	 t o t a l C a m e r a P r e s e t C h a n g e   =   0 . 0 f ;  
 	 	 }  
 	 	 e l s e   i f (   t o t a l C a m e r a P r e s e t C h a n g e   >   t o l e r a n c e   )  
 	 	 {  
 	 	 	 ( ( C C u s t o m C a m e r a ) t h e C a m e r a . G e t T o p m o s t C a m e r a O b j e c t ( ) ) . N e x t P r e s e t ( ) ;  
 	 	 	 t o t a l C a m e r a P r e s e t C h a n g e   =   0 . 0 f ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n M e d i t a t i o n A b o r t ( a c t i o n   :   S I n p u t A c t i o n )  
 	 {  
 	 	 v a r   m e d   :   W 3 P l a y e r W i t c h e r S t a t e M e d i t a t i o n ;  
 	 	  
 	 	 i f   ( ! t h e G a m e . G e t G u i M a n a g e r ( ) . I s A n y M e n u ( ) )  
 	 	 {  
 	 	 	 m e d   =   ( W 3 P l a y e r W i t c h e r S t a t e M e d i t a t i o n ) G e t W i t c h e r P l a y e r ( ) . G e t C u r r e n t S t a t e ( ) ;  
 	 	 	 i f ( m e d )  
 	 	 	 {  
 	 	 	 	  
 	 	 	 	  
 	 	 	 	 m e d . S t o p R e q u e s t e d ( f a l s e ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   C l e a r L o c k s F o r N G P ( )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 f o r ( i = a c t i o n L o c k s . S i z e ( ) - 1 ;   i > = 0 ;   i - = 1 )  
 	 	 { 	 	 	  
 	 	 	 O n A c t i o n L o c k C h a n g e d ( i ,   f a l s e ) ;  
 	 	 	 a c t i o n L o c k s [ i ] . C l e a r ( ) ;  
 	 	 } 	 	  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 p u b l i c   f u n c t i o n   D b g _ U n l o c k A l l A c t i o n s ( )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 i f (   t h e G a m e . I s F i n a l B u i l d ( )   )  
 	 	 {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 	 	  
 	 	 f o r ( i = a c t i o n L o c k s . S i z e ( ) - 1 ;   i > = 0 ;   i - = 1 )  
 	 	 { 	 	 	  
 	 	 	 O n A c t i o n L o c k C h a n g e d ( i ,   f a l s e ) ;  
 	 	 }  
 	 	 a c t i o n L o c k s . C l e a r ( ) ;  
 	 }  
 	  
 	 e v e n t   O n D b g S p e e d U p (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   t h e G a m e . I s F i n a l B u i l d ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 {  
 	 	 	 t h e G a m e . S e t T i m e S c a l e ( 4 ,   t h e G a m e . G e t T i m e s c a l e S o u r c e ( E T S _ D e b u g I n p u t ) ,   t h e G a m e . G e t T i m e s c a l e P r i o r i t y ( E T S _ D e b u g I n p u t ) ) ;  
 	 	 }  
 	 	 e l s e   i f ( I s R e l e a s e d ( a c t i o n ) )  
 	 	 {  
 	 	 	 t h e G a m e . R e m o v e T i m e S c a l e (   t h e G a m e . G e t T i m e s c a l e S o u r c e ( E T S _ D e b u g I n p u t )   ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n D b g H i t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   t h e G a m e . I s F i n a l B u i l d ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f ( I s R e l e a s e d ( a c t i o n ) )  
 	 	 {  
 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' H i t R e a c t i o n D i r e c t i o n ' , ( i n t ) E H R D _ B a c k ) ;  
 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' i s A t t a c k R e f l e c t e d ' ,   0   ) ;  
 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' H i t R e a c t i o n T y p e ' ,   ( i n t ) E H R T _ H e a v y ) ;  
 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' H i t R e a c t i o n W e a p o n ' ,   0 ) ;  
 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' H i t S w i n g D i r e c t i o n ' , ( i n t ) A S D _ L e f t R i g h t ) ;  
 	 	 	 t h e P l a y e r . S e t B e h a v i o r V a r i a b l e (   ' H i t S w i n g T y p e ' , ( i n t ) A S T _ H o r i z o n t a l ) ;  
 	 	 	  
 	 	 	 t h e P l a y e r . R a i s e F o r c e E v e n t (   ' H i t '   ) ;  
 	 	 	 t h e P l a y e r . O n R a n g e d F o r c e H o l s t e r (   t r u e   ) ;  
 	 	 	 G e t W i t c h e r P l a y e r ( ) . S e t C u s t o m R o t a t i o n (   ' H i t ' ,   t h e P l a y e r . G e t H e a d i n g ( ) + 1 8 0 ,   1 0 8 0 . f ,   0 . 1 f ,   f a l s e   ) ;  
 	 	 	 t h e P l a y e r . C r i t i c a l E f f e c t A n i m a t i o n I n t e r r u p t e d ( " O n D b g H i t " ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n D b g K i l l T a r g e t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   t a r g e t   :   C A c t o r ;  
 	 	  
 	 	 i f (   t h e G a m e . I s F i n a l B u i l d ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 t a r g e t   =   t h e P l a y e r . G e t T a r g e t ( ) ;  
 	 	  
 	 	 i f (   t a r g e t   & &   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 t a r g e t . K i l l (   ' D e b u g '   ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n D b g K i l l A l l (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   t h e G a m e . I s F i n a l B u i l d ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f ( I s R e l e a s e d ( a c t i o n ) )  
 	 	 	 t h e P l a y e r . D e b u g K i l l A l l ( ) ;  
 	 }  
 	  
 	  
 	 e v e n t   O n D b g K i l l A l l T a r g e t i n g P l a y e r (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	 v a r   a l l   :   a r r a y < C A c t o r > ;  
 	  
 	 	 i f (   t h e G a m e . I s F i n a l B u i l d ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 {  
 	 	 	 a l l   =   G e t A c t o r s I n R a n g e ( t h e P l a y e r ,   1 0 0 0 0 ,   1 0 0 0 0 ,   ' ' ,   t r u e ) ;  
 	 	 	 f o r ( i = 0 ;   i < a l l . S i z e ( ) ;   i + = 1 )  
 	 	 	 {  
 	 	 	 	 i f ( a l l [ i ]   ! =   t h e P l a y e r   & &   a l l [ i ] . G e t T a r g e t ( )   = =   t h e P l a y e r )  
 	 	 	 	 	 a l l [ i ] . K i l l (   ' D e b u g '   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n D b g T e l e p o r t T o P i n (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f (   t h e G a m e . I s F i n a l B u i l d ( )   )  
 	 	 {  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 }  
 	 	  
 	 	 i f ( I s R e l e a s e d ( a c t i o n ) )  
 	 	 	 t h e P l a y e r . D e b u g T e l e p o r t T o P i n ( ) ;  
 	 }  
 	  
 	  
 	  
 	 e v e n t   O n B o a t D i s m o u n t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   b o a t C o m p   :   C B o a t C o m p o n e n t ;  
 	 	 v a r   s t o p A c t i o n   :   S I n p u t A c t i o n ;  
  
 	 	 s t o p A c t i o n   =   t h e I n p u t . G e t A c t i o n ( ' G I _ D e c e l e r a t e ' ) ;  
 	 	  
 	 	 i f (   I s R e l e a s e d ( a c t i o n )   & &   (   t h e I n p u t . L a s t U s e d P C I n p u t ( )   | |   (   s t o p A c t i o n . v a l u e   <   0 . 7   & &   s t o p A c t i o n . l a s t F r a m e V a l u e   <   0 . 7   )   )   )  
 	 	 {  
 	 	 	 i f (   t h e P l a y e r . I s A c t i o n A l l o w e d (   E I A B _ D i s m o u n t V e h i c l e   )   )  
 	 	 	 { 	  
 	 	 	 	 b o a t C o m p   =   ( C B o a t C o m p o n e n t ) t h e P l a y e r . G e t U s e d V e h i c l e ( ) . G e t C o m p o n e n t B y C l a s s N a m e (   ' C B o a t C o m p o n e n t '   ) ;  
 	 	 	 	 b o a t C o m p . I s s u e C o m m a n d T o D i s m o u n t (   D T _ n o r m a l   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ D i s m o u n t V e h i c l e ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	  
 	 e v e n t   O n C i r i D r a w W e a p o n (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   d u r i n g C a s t S i g n   :   b o o l ;  
 	  
 	 	  
 	 	 i f   (   I s R e l e a s e d ( a c t i o n )   | |   (   I s P r e s s e d ( a c t i o n )   & &   ( t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ N o n e   | |   t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ F i s t s )   )   )  
 	 	 {  
 	 	 	 i f   (   t h e P l a y e r . G e t B I s I n p u t A l l o w e d ( )   & &   t h e P l a y e r . G e t B I s C o m b a t A c t i o n A l l o w e d ( )     )  
 	 	 	 {  
 	 	 	 	 i f   ( t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ S t e e l   & &   ! t h e P l a y e r . I s T h r e a t e n e d ( )   )  
 	 	 	 	 	 t h e P l a y e r . O n E q u i p M e l e e W e a p o n (   P W _ N o n e ,   f a l s e   ) ;  
 	 	 	 	 e l s e  
 	 	 	 	 	 t h e P l a y e r . O n E q u i p M e l e e W e a p o n (   P W _ S t e e l ,   f a l s e   ) ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f ( I s R e l e a s e d ( a c t i o n )   | |   (   I s P r e s s e d ( a c t i o n )   & &   ( t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ S t e e l   | |   t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( )   = =   P W _ S i l v e r )   )   )  
 	 	 {  
 	 	 	 C i r i S h e a t h e W e a p o n ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C i r i H o l s t e r W e a p o n (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   c u r r W e a p o n T y p e   :   E P l a y e r W e a p o n ;  
 	 	  
 	 	 i f ( I s P r e s s e d (   a c t i o n   ) )  
 	 	 {  
 	 	 	 c u r r W e a p o n T y p e   =   t h e P l a y e r . G e t C u r r e n t M e l e e W e a p o n T y p e ( ) ;  
 	 	 	  
 	 	 	 i f ( c u r r W e a p o n T y p e   = =   P W _ S t e e l   | |   c u r r W e a p o n T y p e   = =   P W _ S i l v e r )  
 	 	 	 {  
 	 	 	 	 C i r i S h e a t h e W e a p o n ( ) ; 	 	 	 	  
 	 	 	 } 	 	 	  
 	 	 }  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   C i r i S h e a t h e W e a p o n ( )  
 	 {  
 	 	 i f   (   t h e P l a y e r . G e t B I s I n p u t A l l o w e d ( )   & &   t h e P l a y e r . G e t B I s C o m b a t A c t i o n A l l o w e d ( )   & &   ! t h e P l a y e r . I s T h r e a t e n e d ( )   )  
 	 	 {  
 	 	 	 t h e P l a y e r . O n E q u i p M e l e e W e a p o n (   P W _ N o n e ,   f a l s e   ) ;  
 	 	 }  
 	 }  
 	  
 	  
 	  
 	  
 	 e v e n t   O n C o m m H o l d F a s t M e n u (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 i f ( I s P r e s s e d ( a c t i o n ) )  
 	 	 {  
 	 	 	 h o l d F a s t M e n u I n v o k e d   =   t r u e ; 	 	  
 	 	 	 P u s h I n v e n t o r y S c r e e n ( ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n F a s t M e n u (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 { 	 	  
 	 	 i f (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 i f ( h o l d F a s t M e n u I n v o k e d )  
 	 	 	 {  
 	 	 	 	 h o l d F a s t M e n u I n v o k e d   =   f a l s e ;  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   (   t h e G a m e . I s B l a c k s c r e e n O r F a d i n g ( )   )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f   ( t h e G a m e . G e t G u i M a n a g e r ( ) . I s A n y M e n u ( ) )  
 	 	 	 {  
 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 }  
 	 	 	  
 	 	 	 i f (   I s A c t i o n A l l o w e d (   E I A B _ O p e n F a s t M e n u   )   )  
 	 	 	 {  
 	 	 	 	 t h e G a m e . S e t M e n u T o O p e n (   ' '   ) ;  
 	 	 	 	 t h e G a m e . R e q u e s t M e n u ( ' C o m m o n M e n u '   ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t h e P l a y e r . D i s p l a y A c t i o n D i s a l l o w e d H u d M e s s a g e ( E I A B _ O p e n F a s t M e n u ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 e v e n t   O n I n g a m e M e n u (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   o p e n e d P a n e l   :   n a m e ;  
 	 	 o p e n e d P a n e l   =   t h e G a m e . G e t M e n u T o O p e n ( ) ;    
 	 	  
 	 	 i f (   I s R e l e a s e d ( a c t i o n )    
 	 	 	 & &   o p e n e d P a n e l   ! =   ' G l o s s a r y T u t o r i a l s M e n u '    
 	 	 	 & &   ! t h e G a m e . G e t G u i M a n a g e r ( ) . I s A n y M e n u ( )    
 	 	 	 & &   ! t h e G a m e . I s B l a c k s c r e e n O r F a d i n g ( )   )    
 	 	 {  
 	 	 	 t h e G a m e . S e t M e n u T o O p e n (   ' '   ) ;  
 	 	 	 t h e G a m e . R e q u e s t M e n u ( ' C o m m o n I n g a m e M e n u '   ) ;  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n T o g g l e H u d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   h u d   :   C R 4 S c r i p t e d H u d ;  
 	 	 i f   (   I s R e l e a s e d ( a c t i o n )   )  
 	 	 {  
 	 	 	 h u d   =   ( C R 4 S c r i p t e d H u d ) t h e G a m e . G e t H u d ( ) ;  
 	 	 	 i f   (   h u d   )  
 	 	 	 {  
 	 	 	 	 h u d . T o g g l e H u d B y U s e r ( ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 	  
 	 p u b l i c   f i n a l   f u n c t i o n   D e b u g _ C l e a r A l l A c t i o n L o c k s ( o p t i o n a l   a c t i o n   :   E I n p u t A c t i o n B l o c k ,   o p t i o n a l   a l l   :   b o o l )  
 	 {  
 	 	 v a r   i   :   i n t ;  
 	 	  
 	 	 i f ( a l l )  
 	 	 {  
 	 	 	 D b g _ U n l o c k A l l A c t i o n s ( ) ; 	 	 	  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 O n A c t i o n L o c k C h a n g e d ( a c t i o n ,   f a l s e ) ;  
 	 	 	 a c t i o n L o c k s [ a c t i o n ] . C l e a r ( ) ;  
 	 	 }  
 	 }  
 }  
 