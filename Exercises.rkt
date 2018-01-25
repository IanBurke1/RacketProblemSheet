#lang racket

; Q.1
;(i) (3×(5+(10÷5)))
(+ 5(* 3(/ 10 5)))

;(ii) (2+3+4+5)
(+ 2 3 4 5)

;(iii) (1+(5+(2+(10÷3))))
(+ 2 5 1(/ 10 3))

;(iv) (1+(5+(2+(10÷3.0))))
(+ 2 5 1(/ 10 3.0))

;(v) (3+5)×(10÷2)
(*(+ 3 5)(/ 10 2))

;(vi) (3+5)×(10÷2)+(1+(5+(2+(10÷3))))
(+(*(+ 3 5)(/ 10 2))(+ 2 5 1(/ 10 3)))

; Q.2 Define a procedure discount that takes two arguments: an item’s initial price and a percentage discount
(define (discount x dis)(- x(* x(/ dis 100))))
(discount 10 5)
(discount  29.50 50)

; Q.3 Define a function grcomdiv that takes two integers and returns their greatest common divisor.
