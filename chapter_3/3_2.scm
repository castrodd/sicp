(define (make-monitored input)
    (define counter 0)
    (define (mf x)
        (cond ((eq? x 'how-many-calls?) counter)
              ((eq? x 'reset-count) (set! counter 0))
              (else (set! counter (+ counter 1))
                    (input x))))
    mf)

(define s (make-monitored sqrt))

(s 100)
(s 'how-many-calls?)