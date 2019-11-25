(define (reverse nums)
    (if (null? (cdr nums))
        nums
        (cons (reverse (cdr nums)) (car nums))))

(reverse (list 1 4 9 16 25))