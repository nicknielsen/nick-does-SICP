(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x) guess (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x)
  (* x x))

(define (abs x)
(if (< x 0)
(- x)
x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; The new-if procedure is evaluated in applicative order, meaning all subexpressions (arguments) 
; are evaluated before the body of the procedure is. So the interpreter evaluates all of the 
; subexpressions in new-if before it evaluates the body of new-if. Because one of the arguments 
; of new-if is a recursive call to sqrt-iter, the interpreter keeps calling the sqrt-iter procedure 
; infinitely, creating a loop and causing a stack overflow.
