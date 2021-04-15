#lang sicp

(define (sum a b)
  (+ (* a a)
     (* b b)))

(define (greater a b)
  (if (> a b)
      a
      b))

(define (smaller a b)
  (if (< a b)
      a
      b))

(define (sum-greater a b c)
  (sum (greater a b)
       (greater (smaller a b)
                c)))

(sum-greater 2 1 0)
(sum-greater 0 1 2)
