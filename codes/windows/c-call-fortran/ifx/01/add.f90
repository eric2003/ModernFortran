REAL*8 FUNCTION ADD (A, B, C, D)  bind(C)
    REAL*8 :: B(4), D(4)
    INTEGER*4 :: A, C
    ADD = B(A) + D(C)
    RETURN
END FUNCTION ADD