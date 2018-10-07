#lang scheme
;; Edgar Daniel Rojas Vazquez
;; A01366307

;; Bubble sort in Scheme

;; This function returns the list with the biggest value to the top
(define (bubblesort lista) "Bubble sort program scheme"
   (cond ((null? (cdr lista)) lista) ;; Check if next item in list is null, if it is 
         ((> (car lista) (cadr lista)) ;; Check to see if current element is greater than next element
           (cons (cadr lista) (bubblesort (cons (car lista) (cdr (cdr lista))))) ;; If it is create a new list with elements swapped and apply algorithm to new list
         )
         (else (cons (car lista) (bubblesort (cdr lista))) ;; If current element is less than or equal to next element, leave element where it is and continue through list
         )
   )
)

;; This function iterates through the list it's size number of times to ensure all elements are sorted
(define (actualsort listb size)
  (cond ((eq? size 1) (bubblesort listb)) ;; If size is equal to 1 it is the last iteration and it should stop
        (else (actualsort (bubblesort listb) (- size 1))) ;; If size isn't 1, reduce size by one and pass bubblesort of list as new list argument
        )
)

;;(list 1 2 3 4 5)
;;(bubblesort (list 4 3 2 1))
;; Added this function just so user doesn't have to input list size
(define (actualsort2 listf)
  (actualsort listf (length listf)) ;;Pass list and list size to actual sort
  )
(actualsort2 (list 4 3 2 1))