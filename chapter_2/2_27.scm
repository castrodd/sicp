(define nil ())

(define (deep-reverse items)
  (define (iter remaining result)
    (cond ((null? remaining) result)
          ((pair? (car remaining))
            (iter (cdr remaining) (cons (deep-reverse (car remaining)) result)))
          (else (iter (cdr remaining) (cons (car remaining) result)))))
  (iter items nil))

(define x (list (list 1 2) (list 3 4)))
(deep-reverse x)    