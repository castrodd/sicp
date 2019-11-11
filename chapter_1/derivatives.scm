(define (derivative g)
    (lambda (x)
        (/ (- (g (+ x dx)) (g x))
        dx)))

(define dx 0.00001)

((derivative (lambda (x) (+ (- (/ (* x x x) 3) (/ (* x x) 2)) x)) 3))