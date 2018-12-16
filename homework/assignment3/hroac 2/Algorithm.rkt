;Hannah Roach
;CSC 388: Programming Languages
;Assignment 3

#lang racket

(define has-target? (lambda (List x1 x2 x3 y1 y2 y3) 
  (cond
    [(null? List)
     (and
       (=  x1 y1)
       (=  x2 y2)
       (=  x3 x1)
       (=  x3 x2)
      )]
    [else
     (or
      (has-target? (cdr List) x1 (+ (car List) x2) x3 (+ (car List) x2) y2 y3)
      (has-target? (cdr List) (+ (car List) x1) x2 x3 y1 (+ (car List) x1) y3)
      (has-target? (cdr List) x1 x2 (car List)  y1 y2 (car List))
      )
     ]
 )))

;(has-target? '(2 1 3 9 4 8) 0 0 0 0 0 0)
;(has-target? '(1 1 2 2) 0 0 0 0 0 0)
;(has-target? '(1 1 2) 0 0 0 0 0 0) 
;(has-target? '(5 6 7) 0 0 0 0 0 0)
;(has-target? '(17 35 1 26 24 12 25 40 33 31) 0 0 0 0 0 0)
;(has-target? '(6 21 28 84 66 1000 53 73 38 29 81 66 69 54 8 94) 0 0 0 0 0 0)