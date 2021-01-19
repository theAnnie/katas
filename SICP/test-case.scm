(define (assert given result)
  (if (= given result)
      (log-ok)
      (error "FAILED! given " given "is not equal to " result)))

(define (log-ok) (display "OK") true)
