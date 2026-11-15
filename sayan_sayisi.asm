org 100h
MOV CX,200   
MOV SI,0
MOV DI,0 
MOV WORD PTR [TPLM],0
BOLEN_SAYISI:                           
    INC DI
    MOV AX,CX
    MOV DX,0
    MOV BX,DI
    DIV BX
    CMP DX,0
    JNE BOLEN_SAYISI
    INC SI
    CMP CX,DI
    JNE BOLEN_SAYISI
    MOV AX,CX
    MOV BP,0
    BASAMAK_TOPLAMI:
        MOV BX,10
        MOV DX,0
        DIV BX
        ADD BP,DX
        CMP AX,0
        JNE BASAMAK_TOPLAMI
        CARPIM:         
;1 DEN 200 E KADAR OLAN "SAYAN SAYILARININ" TOPLAMINI BULAN ASSEMBLY PROGRAMI YAZINIZ(1,80,108)
;SAYAN SAYISI:SAYI, BOLEN SAYISI ILE RAKAMLARI TOPLAMININ CARPIMINA ESITSE BU SAYIYA "SAYAN SAYISI" DENIR
            MOV AX,SI
            MUL BP
            CMP AX,CX
            JNE DEVAM
            TOPLAM:
                ADD WORD PTR [TPLM],CX 
            DEVAM:
                DEC CX
                CMP CX,0
                JE BITIR
                MOV SI,0
                MOV DI,0
                JMP BOLEN_SAYISI   
                BITIR:                  
ret                                     
TPLM DW 0




