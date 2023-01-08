/ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / * *   	 �   2 0 1 5   C D   P R O J E K T   S . A .   A l l   r i g h t s   r e s e r v e d .  
 / * *   	 T H E   W I T C H E R �   i s   a   t r a d e m a r k   o f   C D   P R O J E K T   S .   A .  
 / * *   	 T h e   W i t c h e r   g a m e   i s   b a s e d   o n   t h e   p r o s e   o f   A n d r z e j   S a p k o w s k i .  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
  
 / / m o d W 3 R e d u x R G C + +  
 / / c l a s s   W 3 P l a y e r T u t o r i a l I n p u t   e x t e n d s   C P l a y e r I n p u t  
 c l a s s   W 3 P l a y e r T u t o r i a l I n p u t   e x t e n d s   W 3 R e d u x R G C I n p u t  
 / / m o d W 3 R e d u x R G C - -  
 {  
 	 p u b l i c   f u n c t i o n   I n i t i a l i z e ( i s F r o m L o a d   :   b o o l ,   o p t i o n a l   p r e v i o u s I n p u t   :   C P l a y e r I n p u t )  
 	 {  
 	 	 v a r   e x c e p t i o n s   :   a r r a y < E I n p u t A c t i o n B l o c k > ;  
 	  
 	 	 s u p e r . I n i t i a l i z e ( i s F r o m L o a d , p r e v i o u s I n p u t ) ;  
 	 	  
 	 	  
 	 	 i f ( ! t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . H a s S e e n T u t o r i a l ( ' T u t o r i a l M o v e m e n t ' ) )  
 	 	 {  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n M o v e m e n t ' ,   ' G I _ A x i s L e f t Y '   ) ;  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n M o v e m e n t ' ,   ' G I _ A x i s L e f t X '   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( ! t h e G a m e . G e t T u t o r i a l S y s t e m ( ) . H a s S e e n T u t o r i a l ( ' T u t o r i a l C a m e r a ' ) )  
 	 	 {  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C a m e r a M o v e m e n t ' ,   ' G I _ A x i s R i g h t X '   ) ;  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C a m e r a M o v e m e n t ' ,   ' G I _ A x i s R i g h t Y '   ) ;  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C a m e r a M o v e m e n t ' ,   ' G I _ M o u s e D a m p X '   ) ;  
 	 	 	 t h e I n p u t . R e g i s t e r L i s t e n e r (   t h i s ,   ' O n C a m e r a M o v e m e n t ' ,   ' G I _ M o u s e D a m p Y '   ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 i f ( ! i s F r o m L o a d )  
 	 	 {  
 	 	 	 e x c e p t i o n s . P u s h B a c k ( E I A B _ R u n A n d S p r i n t ) ;  
 	 	 	 e x c e p t i o n s . P u s h B a c k ( E I A B _ M o v e m e n t ) ;  
 	 	 	 e x c e p t i o n s . P u s h B a c k ( E I A B _ I n t e r a c t i o n s ) ;  
 	 	 	 e x c e p t i o n s . P u s h B a c k ( E I A B _ D i s m o u n t V e h i c l e ) ;  
 	 	 	 e x c e p t i o n s . P u s h B a c k ( E I A B _ I n t e r a c t i o n A c t i o n ) ; 	 	 	  
 	 	 	  
 	 	 }  
 	 }  
 	  
 	 e v e n t   O n C b t T h r o w I t e m (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   r e t   :   b o o l ;  
 	 	  
 	 	 r e t   =   s u p e r . O n C b t T h r o w I t e m ( a c t i o n ) ;  
 	 	  
 	 	 i f ( r e t )  
 	 	 {  
 	 	 	 i f ( t h e P l a y e r . i n v . I s I t e m C r o s s b o w ( t h e P l a y e r . G e t S e l e c t e d I t e m I d ( ) ) )  
 	 	 	 	 F a c t s A d d ( " t u t _ c r o s s b o w _ s h o t " ,   1 ,   1 ) ;  
 	 	 	 e l s e   i f ( t h e P l a y e r . i n v . I s I t e m B o m b ( t h e P l a y e r . G e t S e l e c t e d I t e m I d ( ) ) )  
 	 	 	 	 F a c t s A d d ( " t u t _ b o m b _ s h o t " ,   1 ,   1 ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   r e t ;  
 	 }  
 	  
 	 e v e n t   O n C b t T h r o w I t e m H o l d (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 v a r   r e t   :   b o o l ;  
 	 	  
 	 	 r e t   =   s u p e r . O n C b t T h r o w I t e m H o l d ( a c t i o n ) ;  
 	 	  
 	 	 i f ( r e t )  
 	 	 {  
 	 	 	 i f ( t h e P l a y e r . i n v . I s I t e m C r o s s b o w ( t h e P l a y e r . G e t S e l e c t e d I t e m I d ( ) ) )  
 	 	 	 	 F a c t s A d d ( " t u t _ c r o s s b o w _ s h o t " ,   1 ,   1 ) ;  
 	 	 	 e l s e   i f ( t h e P l a y e r . i n v . I s I t e m B o m b ( t h e P l a y e r . G e t S e l e c t e d I t e m I d ( ) ) )  
 	 	 	 	 F a c t s A d d ( " t u t _ b o m b _ s h o t " ,   1 ,   1 ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   r e t ;  
 	 }  
 	  
 	 e v e n t   O n M o v e m e n t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 F a c t s A d d ( " t u t o r i a l _ p l a y e r _ m o v e d " ) ;  
 	 	 	  
 	 	 t h e I n p u t . U n r e g i s t e r L i s t e n e r (   t h i s ,   ' G I _ A x i s L e f t Y '   ) ;  
 	 	 t h e I n p u t . U n r e g i s t e r L i s t e n e r (   t h i s ,   ' G I _ A x i s L e f t X '   ) ;  
 	 }  
 	  
 	 e v e n t   O n C a m e r a M o v e m e n t (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 F a c t s A d d ( " t u t o r i a l _ c a m e r a _ m o v e d " ) ;  
 	 	  
 	 	 t h e I n p u t . U n r e g i s t e r L i s t e n e r ( t h i s ,   ' G I _ A x i s R i g h t X ' ) ;  
 	 	 t h e I n p u t . U n r e g i s t e r L i s t e n e r ( t h i s ,   ' G I _ A x i s R i g h t Y ' ) ;  
 	 	 t h e I n p u t . U n r e g i s t e r L i s t e n e r ( t h i s ,   ' G I _ M o u s e D a m p X ' ) ;  
 	 	 t h e I n p u t . U n r e g i s t e r L i s t e n e r ( t h i s ,   ' G I _ M o u s e D a m p Y ' ) ;  
 	 }  
 	  
 	 e v e n t   O n C a s t S i g n (   a c t i o n   :   S I n p u t A c t i o n   )  
 	 {  
 	 	 s u p e r . O n C a s t S i g n ( a c t i o n ) ;  
 	 	  
 	 	 S i g n S t a m i n a T e s t ( ) ;  
 	 }  
 	  
 	 p r i v a t e   f i n a l   f u n c t i o n   S i g n S t a m i n a T e s t ( )  
 	 {  
 	 	 v a r   s i g n S k i l l   :   E S k i l l ;  
 	 	 i f ( S h o u l d P r o c e s s T u t o r i a l ( ' T u t o r i a l S t a m i n a S i g n s ' ) )  
 	 	 {  
 	 	 	 s i g n S k i l l   =   S i g n E n u m T o S k i l l E n u m (   t h e P l a y e r . G e t E q u i p p e d S i g n ( )   ) ;  
 	 	 	 i f (   s i g n S k i l l   ! =   S _ S U n d e f i n e d   & &   ! t h e P l a y e r . H a s S t a m i n a T o U s e S k i l l (   s i g n S k i l l ,   f a l s e   )   )  
 	 	 	 {  
 	 	 	 	 F a c t s S e t (   " t u t _ s t a m i n a _ s i g n " ,   1   ) ;  
 	 	 	 }  
 	 	 }  
 	 }  
 } 