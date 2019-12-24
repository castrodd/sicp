(define (make-mobile left right)
    (list left right))

(define (make-branch length structure)
    (list length structure))

(define (left-branch mobile)
    (car mobile))

(define (right-branch mobile)
    (car (cdr mobile)))

(define (branch-length branch)
    (car branch))

(define (branch-structure branch)
    (car (cdr branch)))

(define (total-weight mobile)
    (define (iter current)
        (if (pair? current)
            (total-weight current)
            current))
    (let ((left (branch-structure (left-branch  mobile)))
          (right (branch-structure (right-branch mobile))))
    (+ (iter left) (iter right))))

(define (torque branch)
    (* (branch-length branch) (total-weight (branch-structure branch))))

(define (balanced? mobile)
        (let ((left (left-branch mobile))
             (right (right-branch mobile)))
        (if (pair? mobile)
            (and (= (torque left) (torque right))
                (balanced? (branch-structure left)) 
                (balanced? (branch-structure right)))
            (#t))))

(define a (make-mobile (make-branch 2 3) (make-branch 2 3))) 
(define x (make-mobile (make-branch 10 a) (make-branch 12 5)))

(balanced? x)