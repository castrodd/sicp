(define (horner-eval x coefficient-sequence)
    (accumulate (lambda (current higher-terms) (+ current (* x higher-terms)))
    0
    coefficient-sequence))