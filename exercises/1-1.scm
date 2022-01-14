; Exercise 1.1: Below is a sequence of expressions. What is the result printed by the interpreter in response to each expression? Assume that the sequence is to be evaluated in the order in which it is presented.

10
; 10

(+ 5 3 4)
;12

(- 9 1)
;8

(/ 6 2)
;3

(+ (* 2 4) (- 4 6))
;6

(define a 3)
; Nothing is printed by the interpreter here, but the variable "a" now represents the value "3"

(define b (+ a 1))
; Again, nothing is printed. The variable "b" now represents the value of the expression (+ a 1). 
; Using the substitution model, this expression evaluates to (+ 3 1) --> 4.
; So, "b" now represents the primitive expression "4."

(+ a b (* a b))
; The expression evaluates to 19, which is what is printed by the interpreter.

(= a b)
; This would evaluate to False and print "#f", as a and b are not equal.

(if (and (> b a) (< b (* a b)))
    b
    a)
; (> b a) --> (> 4 3) --> true
; (<  b  (* a b)) --> (< 4 (* 3 4)) --> (< 4 12) --> true
; The predicate of this if expression is true, so the result would be b, which is equal to 4. The primitive "4" will be printed.

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
; First predicate: a doesn't equal 4; it equals 3. This predicate returns false.
; Second predicate: b does equal 4, and this stops the interpreter from evaluating the rest of the conditional expression.
; The expression associated with the second predicate is: 
; 	(+ 6 7 a) --> (+ 6 7 3) --> 16
; Thus, "16" is printed by the interpreter.

(+ 2 (if (> b a) b a))
; First, the if expression needs to be evaluated. Because b is greater than a, the result of the if expression is b. And because b represents 4...
; 	(+ 2 4) --> 6
; Thus, "6" will be printed by the interpreter.

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
; This multiplication problem has a couple of steps. First, we evaluate the conditional expression:
; 	- (> a b) is false because 3 < 4.
; 	- (< a b) is true because 3 < 4
; The conditional expression evaluates to b, which equals 4.
; After evaluating the second subexpression, (+ a 1) --> 4, we have a simple multiplication expression:
; 	- (* 4 4) --> 16
; Thus, "16" will be printed.
