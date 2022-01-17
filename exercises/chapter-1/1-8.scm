(define (new-good-enough? guess x)
  (< (abs (/ (- guess 
                (improve guess x))
             guess)) 0.0000000001))

(define (curt-iter guess x)
  (if (new-good-enough? guess x) guess (curt-iter (improve guess x) x)))

(define (improve guess x)
(/ (+ (/ x (square guess)) (* 2 guess)) 3))


(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (abs x)
(if (< x 0)
(- x)
x))

(define (curt x)
  (curt-iter 1.0 x))

;(curt 27)
; => 3.0000000000000977

;(curt 8)
; => 2.000000000012062

;(curt 125)
; => 5.000000000287929
