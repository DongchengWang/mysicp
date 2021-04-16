#lang sicp

; Causes infinit loop under normal-order evaluation.
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))
