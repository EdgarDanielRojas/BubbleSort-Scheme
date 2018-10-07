#lang scheme
;; Edgar Daniel Rojas Vazquez
;; A01366307

;; Quick sort in Scheme

;; This function uses recursive calls to create the quicksort algorithm
(define (quicksort lista) "Quick sort program scheme"
   (cond ((null? lista) '()) ;; If list is empty, no more elements so return empty list
         (#t (append (quicksort (lessthan (cdr lista) (car lista))) (cons (car lista) (quicksort (greaterthan (cdr lista) (car lista)))))
         ) ;; Always execute quicksort until list is empty
           ;; We get the current element as a pivot and apply quick sort to the elements lessthan the pivot and greaterthan the pivot and
           ;; append so that it is (quicksort lessthan) +  current + (quicksort morethan)
   )
)

;; Function that iterates through a given list to find elements smaller than n
(define (lessthan listl n)
   (cond ((null? listl) '()) ;; If list is null no more elements can be analyzed
         ((< (car listl) n) ;; If current element is less than n create list with element and the rest of the list that is less than n
           (cons (car listl) (lessthan (cdr listl) n))
         )
         (else (lessthan (cdr listl) n)) ;; If current element is greater or equal just return the elements that are lessthan n
         )                               ;; without including current element
   )

;; Function that iterates through a given list to find elements greater than n
(define (greaterthan listm n)
   (cond ((null? listm) '()) ;; If list is null no more elements can be analyzed
         ((> (car listm) n) ;; If current element is greater than n return list with element and all elements greater tan n
           (cons (car listm) (greaterthan (cdr listm) n))
         )
         ((eq? (car listm) n) 
           (cons (car listm) (greaterthan (cdr listm) n)) ;; If they are equal do exactly the same thing
         )
         (else (greaterthan (cdr listm) n)) ;; If element is not greater return the rest of the elements that are
         )
 )

(quicksort (list 6 5 4 3 2 1))