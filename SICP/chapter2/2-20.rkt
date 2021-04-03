#lang racket

(define (same-parity x . y)
  (filter (lambda (number)
         (same-parity? x number))
       (cons x y)))

(define (same-parity? x y)
  (if (= (remainder x 2) (remainder y 2)) true false))

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)
