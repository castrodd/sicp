(define (pascals-triangle row column)
  (cond ((> column row) 0)
        ((or (= column 1) (= column row)) 1)
        ((or (= column 2) (= (- row column) 1)) (- row 1))
        (else (+ (pascals-triangle (- row 1) (- column 1)) 
                 (pascals-triangle (- row 1) column)))))

(pascals-triangle 11 6)