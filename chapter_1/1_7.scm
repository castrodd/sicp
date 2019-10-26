(define (square x)
    (* x x))

(define (average x y)
    (/ (+ x y) 2.0))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (alt-good-enough? future-guess guess x)
    (> (/ guess (abs (- guess future-guess))) 1000))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (alt-sqrt-iter guess x)
    (if (alt-good-enough? (improve guess x) guess x)
        (improve guess x)
        (alt-sqrt-iter (improve guess x) x)))

(define (sqrt x) 
    (sqrt-iter 1.0 x))

(define (alt-sqrt x)
    (alt-sqrt-iter 1.0 x))

(sqrt 0.001)
(alt-sqrt 0.001)