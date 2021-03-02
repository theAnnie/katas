(define (make-rat n d)
  (define (op x)
    (if (< x 0)
        -
        +))
  (let ((g (gcd n d)))
    (cons ((op (* n d)) (abs (/ n g)))
          (abs (/ d g)))))
