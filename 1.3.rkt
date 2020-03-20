#lang racket
(define (square_sum a b) (+ (* a a) (* b b)))
(define (three a b c) (cond
               ((and (> (square_sum a b) (square_sum a c))
                    (> (square_sum a b) (square_sum b c ))
                    )
                (square_sum a b))
               ((> (square_sum a c) (square_sum b c))
                (square_sum a c))
               (else (square_sum b c))

               
))
(three -3 4 5)
