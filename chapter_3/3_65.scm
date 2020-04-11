(define (log2-summands n)
    (cons-stream (/ 1.0 n)
        (stream-map - (log2-summands (+ n 1)))))

(define log2-stream
    (scale-stream (partial-sums (log2-summands 1))))