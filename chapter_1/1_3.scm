(define (square x) (* x x))

(define (exercise a b c)
    (cond ((and (< a b) (< a c)) (+ (square b) (square c)))
          ((and (< b a) (< b c)) (+ (square a) (square c)))
          (else (+ (square a) (square b)))
    )
)

(exercise 1 2 3)