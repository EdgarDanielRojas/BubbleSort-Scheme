#lang scheme
;; Edgar Daniel Rojas Vazquez
;; A01366307

;; Bubble sort in Scheme

(define (bubblesort lista) "Bubble sort program scheme"
   (cond ((null? lista) '())
         ((> (car lista) (cadr lista)) 
           (bubblesort (cons (cadr lista) (cons (car lista) (cdr lista))))
         )
         (else (cons( (car lista) (bubblesort (cdr lista))))
         )
   )
)

(list 1 2 3 4 5)
(bubblesort (list 4 3 2 1))
