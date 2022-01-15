; Exercise 1.4: Observe that our model of evaluation allows
; for combinations whose operators are compound expressions.
; Use this observation to describe the behavior of the
; following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; The first thing the interpreter evaluates in this expression is the if expression:
;  (if (> b 0) + -)
; This conditional checks to see if b is a positive or negative number.
; If b is positive, the expression returns the addition operator, "+".
; If b is negative, it returns the subtraction operator, "-".
; Then, the interpreter can evaluate the next subexpression using the 
; operator determined by the if expression. Depending on whether b is positive or
; negative, the interpreter will either add it to a or subtract it from a, respectively.
; Thus, the absolute value of b is added to a.
