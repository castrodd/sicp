(define (last-pair i)
    (let ((current (cdr i)))
        (if (null? current)
          i
          (last-pair current))))

(last-pair (list 23 72 149 34))