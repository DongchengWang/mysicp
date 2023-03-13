#lang sicp

(define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess)) 0.00000000001))

(define (cube-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (cube-iter (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x guess guess)
        (* 2 guess))
     3))

(define (cube x)
  (cube-iter 1.0 x))

(cube 27)
