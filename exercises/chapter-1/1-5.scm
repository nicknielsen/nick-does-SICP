; Exercise 1.5: Ben Bitdiddle has invented a test to determine
; whether the interpreter he is faced with is using applicative-order
; evaluation or normal-order evaluation. He defines the following two procedures:
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

; Then, he evaluates this expression:
(test 0 (p))

; What behavior will Ben observe with an interpreter that
; uses applicative-order evaluation? What behavior will he
; observe with an interpreter that uses normal-order evaluation?
; Explain your answer. (Assume that the evaluation
; rule for the special form if is the same whether the interpreter
; is using normal or applicative order: The predicate
; expression is evaluated first, and the result determines
; whether to evaluate the consequent or the alternative expression.)

; ANSWER:
; Under applicative-order evaluation, the interpreter will enter an 
; infinite loop. Because applicative-order evaluation starts with evaluating the arguments, 
; the interpreter will keep trying to evaluate the argument (p), which just evaluates 
; to itself over and over and over and over and over...

; Under normal-order evaluation, the interpreter would start by evaluating the
; body of the procedure, which means starting with the if expression.
; In the case of (test 0 (p)), the if expression is true, so the interpreter 
; evaluates the consequent expression and prints 0 to the console.
