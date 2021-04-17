#lang racket

(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

;; a
(define (left-branch  x) (car x))
(define (right-branch x) (car (cdr x)))

(define (branch-length branch   ) (car branch))
(define (branch-structure branch) (car (cdr branch)))

;; b
(define (total-weight mobile) 
   (cond ((null? mobile) 0) 
         ((not (pair? mobile)) mobile) 
         (else (+ (total-weight (branch-structure (left-branch mobile))) 
                  (total-weight (branch-structure (right-branch mobile)))))))

;; c
(define (torque branch)
  (* (branch-length branch)
     (let ((structure (branch-structure branch)))
       (if (mobile? structure)
           (total-weight structure)
           structure))))

(define (branch-balanced? left right)
  (= (torque left)
     (torque right)))
