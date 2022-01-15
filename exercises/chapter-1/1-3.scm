; Exercise 1.3: Define a procedure that takes three numbers
; as arguments and returns the sum of the squares of the two
; larger numbers.

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (sum-gtr-squares a b c) 
  (cond ((and (> a b) (> c b)) (sum-of-squares a c))
        ((and (> b a) (> c a)) (sum-of-squares b c))
        (else (sum-of-squares a b))
  )
)
