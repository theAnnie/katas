(define (f x y z)
 (cond ((and (> x z) (> y z)) (+ (square x) (square y)))
       ((and (> x y) (> z y)) (+ (square x) (square z)))
       (else (+ (square y) (square z)))))

(define (square x)
  (* x x))
