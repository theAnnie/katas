(define (pascal-triangle r c)
  (if (or (= c 1) (= c r))
      1
      (+ (pascal-triangle (- r 1) (- c 1))
         (pascal-triangle (- r 1) c))))
