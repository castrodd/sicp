(define (split first-split second-split)
    ((lambda (painter n) 
        (if (= n 0)
        painter
        (let ((smaller ((split first-split second-split) painter (- n 1))))
            (first-split painter (second-split smaller smaller)))))))