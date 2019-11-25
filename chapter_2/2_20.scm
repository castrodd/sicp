(define (same-parity x . y)
        (define (map i result)
            (if (null? i)
                result
                (if (eq? (mod (car i) 2) (mod x 2))
                    (map (cdr i) (list result (car i)))
                    (map (cdr i) result))))
        (map y x))

; (same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7 8 9)