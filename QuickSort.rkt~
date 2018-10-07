#lang scheme
;; Edgar Daniel Rojas Vazquez
;; A01366307

;; Quick sort in Scheme

;; This function uses recursive calls to create the quicksort algorithm
(define (quicksort lista) "Quick sort program scheme"
   (cond ((null? lista) '())
         (#t (cons (quicksort (lessthan (cdr lista) (car lista))) (cons (car lista) (quicksort (greaterthan (cdr lista) (car lista)))))
         )
   )
)

(define (lessthan listl n)
   (cond ((null? listl) '())
         ((< (car listl) n) 
           (cons (car listl) (lessthan (cdr listl) n))
         )
         (else (lessthan (cdr listl) n))
         )
   )
(define (greaterthan listm n)
   (cond ((null? listm) '())
         ((> (car listm) n) 
           (cons (car listm) (greaterthan (cdr listm) n))
         )
         ((eq? (car listm) n) 
           (cons (car listm) (greaterthan (cdr listm) n))
         )
         (else (greaterthan (cdr listm) n))
         )
 )

(quicksort (list 6 5 4 3 2 1))