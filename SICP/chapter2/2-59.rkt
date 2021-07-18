#lang racket
(define (element-of-set? x set)
  (cond ((null? set) false)
        ((equal? x (car set)) true)
        (else (element-of-set? x (cdr set)))))

(define (adjoin-set x set)
  (if (element-of-set? x set)
      set
      (cons x set)))

(define (union-set set1 set2) 
   (if (null? set1) 
     set2 
     (union-set (cdr set1) (adjoin-set (car set1) set2))))

(display (union-set (list 1 2 3) (list 1 2 3)))
(display (union-set (list 1 2 3) (list 4 5 6)))
(display (union-set (list 1 2 3) (list 4 3)))