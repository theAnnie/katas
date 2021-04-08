#lang racket

(define (my-for-each fun functor)
  (map fun functor) true)