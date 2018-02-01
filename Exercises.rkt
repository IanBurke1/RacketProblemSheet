#lang racket

; Q.1
;(i) (3×(5+(10÷5)))
(display "Question 1: \n")
(display "i) ")
(+ 5(* 3(/ 10 5)))

;(ii) (2+3+4+5)
(display "ii) ")
(+ 2 3 4 5)

;(iii) (1+(5+(2+(10÷3))))
(display "iii) ")
(+ 2 5 1(/ 10 3))

;(iv) (1+(5+(2+(10÷3.0))))
(display "iv) ")
(+ 2 5 1(/ 10 3.0))

;(v) (3+5)×(10÷2)
(display "v) ")
(*(+ 3 5)(/ 10 2))

;(vi) (3+5)×(10÷2)+(1+(5+(2+(10÷3))))
(display "vi) ")
(+(*(+ 3 5)(/ 10 2))(+ 2 5 1(/ 10 3)))

; Q.2 Define a procedure discount that takes two arguments: an item’s initial price and a percentage discount
(display "Question 2: \n")
(define (discount x dis)(- x(* x(/ dis 100))))
(discount 10 5)
(discount  29.50 50)

; Q.3 Define a function grcomdiv that takes two integers and returns their greatest common divisor.
(display "Question 3: \n")
(define (grcomdiv a b)
  (if (= b 0)
      a
      (grcomdiv b (modulo a b))))
(grcomdiv 10 15)
(grcomdiv 64 30)

; Q.4 Write a function called appearances that returns the number of times its first argument appears as a member of its second argument
(display "Question 4: \n")
(define (appearances x y)
  (if (null? y)
      0
      (if (= x(car y))
          (+ 1(appearances x(cdr y)))
          (appearances x(cdr y)))))
(define l(list 1 2 2 2 5))
(appearances 2 l)
; expected answer = 3

; Q.5 Write a procedure inter that takes two lists as arguments. It should return a list containing every element that appears in both lists, exactly once.
(display "Question 5: \n")
(define (inter a b)
  (if (null? a)
      '()
      (if (member(car a) b)
          (cons (car a)(inter (cdr a) b))
          (inter (cdr a) b))))
(define list1 (list 1 2 3 4 5 6 7))
(define list2 (list 2 4 6 8 10 12 14))
(inter list1 list2)

; Q.6 Write a procedure noatoms that takes a list and returns the number of atoms it contains.
(display "Question 6: \n")
(define (noatoms x)
  (if (null? x)
      0
      (+ 1(noatoms(cdr x)))))
(define alist (list 1 3 5 7 11 13))
(noatoms alist)

; Q.7 Here is a Racket procedure that never finishes its job when n is not 0:
(display "Question 7: \n")
(define (forever n)
  (if (= n 0)
      1
      (+ 1 (forever n))))
; Explain why it doesn’t give any result?

; Q.8 Write a function called range that takes an integer n and returns a list containing the atoms 1, 2, 3, . . . , n
(display "Question 8: \n")
 (define (range n)
  (if (= n 0)
      '()
      (cons n(range (- n 1)))))
(range 10)
; Q.9 Write a function called reversel that takes a list and returns it reversed.
(display "Question 9: \n")
(define (reversel n)
  (if (null? n)
      '()
      (reverse n)))
(define li (list 1 2 3 4 5 6))
(reversel li)

; Q.10 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. Write a procedure to find the sum of all the multiples of 3 or 5 below 1000
(display "Question 10: \n")
(define (multiples-of? x y)
  (if (= x 0)
      0
      (+ (filter (multiple-of? x y) (range 0 1000)))))

(multiples-of 3 5)
      
      
      