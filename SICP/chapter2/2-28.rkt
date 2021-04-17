#lang racket

(define (fringe x)
  (cond ((null? x) (display ""))
        ((not (pair? x)) (display x))
        (else (fringe (car x))
              (fringe (cdr x)))))

(define x (list (list 1 2) (list 3 4)))