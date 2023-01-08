e n u m   E D e f a u l t Q u i c k U s e  
 {  
 	 E D Q U _ I n v e n t o r y   =   0 ,  
 	 E D Q U _ P o t i o n s   =   1  
 }  
  
 e n u m   E S p r i n t S t a m i n a U s a g e  
 {  
 	 E S S U _ N e v e r   =   0 ,  
 	 E S S U _ C o m b a t   =   1 ,  
 	 E S S U _ A l w a y s   =   2 ,  
 }  
  
 f u n c t i o n   R G C C o n f i g I s I m m e r s i v e M o t i o n E n a b l e d ( )   :   b o o l  
 {  
 	 r e t u r n   ( b o o l )   t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) . G e t V a r V a l u e ( ' w 3 R e d u x R G C ' ,   ' v i r t u a l _ w 3 R e d u x R G C I m m e r s i v e M o t i o n ' ) ;  
 }  
  
 f u n c t i o n   R G C C o n f i g A l w a y s D i s p l a y I n v e n t o r y ( )   :   b o o l  
 {  
 	 r e t u r n   ( b o o l )   t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) . G e t V a r V a l u e ( ' w 3 R e d u x R G C ' ,   ' v i r t u a l _ w 3 R e d u x R G C I n v A l w a y s D i s p l a y ' ) ;  
 }  
  
 f u n c t i o n   R G C C o n f i g G e t S p r i n t S t a m i n a U s a g e ( )   :   E S p r i n t S t a m i n a U s a g e  
 {  
 	 v a r   c f g V a l   :   i n t ;  
 	 c f g V a l   =   S t r i n g T o I n t ( t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) . G e t V a r V a l u e ( ' w 3 R e d u x R G C ' ,   ' v i r t u a l _ w 3 R e d u x R G C S p r i n t S t a m i n a U s a g e ' ) ) ;  
 	 s w i t c h (   c f g V a l   )  
 	 {  
 	 	 c a s e   0 :  
 	 	 	 r e t u r n   E S S U _ N e v e r ;  
 	 	 c a s e   1 :  
 	 	 	 r e t u r n   E S S U _ C o m b a t ;  
 	 	 c a s e   2 :  
 	 	 	 r e t u r n   E S S U _ A l w a y s ;  
 	 }  
 	 r e t u r n   E S S U _ N e v e r ;  
 }  
  
 f u n c t i o n   R G C C o n f i g G e t D e f a u l t Q u i c k U s e ( )   :   E D e f a u l t Q u i c k U s e  
 {  
 	 v a r   c f g V a l   :   i n t ;  
 	 c f g V a l   =   S t r i n g T o I n t ( t h e G a m e . G e t I n G a m e C o n f i g W r a p p e r ( ) . G e t V a r V a l u e ( ' w 3 R e d u x R G C ' ,   ' v i r t u a l _ w 3 R e d u x R G C D e f a u l t I n v e n t o r y ' ) ) ;  
 	 s w i t c h (   c f g V a l   )  
 	 {  
 	 	 c a s e   0 :  
 	 	 	 r e t u r n   E D Q U _ I n v e n t o r y ;  
 	 	 c a s e   1 :  
 	 	 	 r e t u r n   E D Q U _ P o t i o n s ;  
 	 }  
 	 r e t u r n   E D Q U _ I n v e n t o r y ;  
 }  
  
 f u n c t i o n   R G C _ I s Q u i c k I t e m s I n v e n t o r y ( )   :   b o o l  
 {  
 	 i f ( ( G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( )   & &   R G C C o n f i g G e t D e f a u l t Q u i c k U s e ( )   = =   E D Q U _ P o t i o n s )   | |  
 	 	 ( ! G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( )   & &   R G C C o n f i g G e t D e f a u l t Q u i c k U s e ( )   = =   E D Q U _ I n v e n t o r y ) )  
 	 {  
 	 	 r e t u r n   t r u e ;  
 	 }  
  
 	 r e t u r n   f a l s e ;  
 }  
  
 f u n c t i o n   R G C _ I s Q u i c k I t e m s P o t i o n s ( )   :   b o o l  
 {  
 	 i f ( ( G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( )   & &   R G C C o n f i g G e t D e f a u l t Q u i c k U s e ( )   = =   E D Q U _ I n v e n t o r y )   | |  
 	 	 ( ! G e t W i t c h e r P l a y e r ( ) . R G C _ I s I n R e a l t i m e E q u i p C a s t M o d e ( )   & &   R G C C o n f i g G e t D e f a u l t Q u i c k U s e ( )   = =   E D Q U _ P o t i o n s ) )  
 	 {  
 	 	 r e t u r n   t r u e ;  
 	 }  
  
 	 r e t u r n   f a l s e ;  
 } 