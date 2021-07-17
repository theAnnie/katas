#lang racket

(define (equal? x y)
  (cond ((eq? x '()) true)
        ((eq? (car x) (car y)) (equal? (cdr x) (cdr y)))
        (else false)))


(equal? '(this is a list) '(this is a list))
(equal? '(this is a list) '(this (is a) list))

