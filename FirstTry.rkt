#lang scheme
;; Edgar Daniel Rojas Vazquez
;; A01366307

;; Bubble sort in Scheme

;; This function returns the list with the biggest value to the top
(define (bubblesort lista) "Bubble sort program scheme"
   (cond ((null? (cdr lista)) lista)
         ((> (car lista) (cadr lista)) 
           (cons (cadr lista) (bubblesort (cons (car lista) (cdr (cdr lista)))))
         )
         (else (cons (car lista) (bubblesort (cdr lista)))
         )
   )
)

(define (actualsort listb size)
  (cond ((eq? size 1) (bubblesort listb))
        (else (actualsort (bubblesort listb) (- size 1)))
        )
)

;;(list 1 2 3 4 5)
;;(bubblesort (list 4 3 2 1))
(actualsort (list 4 3 2 1) (length (list 4 3 2 1)))