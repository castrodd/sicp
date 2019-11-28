(define nil ())

(define (fringe items)
        (cond ((null? items) nil)
        ((pair? (car items))
          (append (fringe (car items)) (fringe (cdr items))))
        (else (cons (car items) (fringe (cdr items))))))

(fringe (list (list 1 2) (list 3 4))    