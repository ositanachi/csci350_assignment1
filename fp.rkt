;Reverse a list
;1
;Mindset: Make use of car, cdr, and append
;Car to take the first cell, cdr for the rest, and append to combine

> (define (reverse-general L)
    (if (null? L) '();If list is null...
        (append (reverse-general (cdr L)) ;Retrieves everything after first cell
                (list (car L))))) ;Retrieves first cell

;Implementation of number list
> (define (is-num L)
    (cond ((null? L) '())
          ((number? (car L)) (cons (append (car L))
                             (is-num(cdr L))))
          (else (is-num (cdr L)))))

;2
;While numlist is not null and if the atom is a num add
> (define (sum-up-numbers-simple L)
    (cond ((null? L) 0) ;Checks if list is empty, if so 0
          ((not (list? L)) 0) ;Checks if it is in fact a list
          ((not (number? (car L))) (sum (cdr L))) ;If it's not a number continue with the rest
          (else (+ (sum-up-numbers-simple (car L)) (sum-up-numbers-simple L (cdr L)))
              (+ (car L) (sum-up-numbers-simple (cdr L))))))

;(sum-up-numbers-simple '(300 400 500))

;Modification of 2
;3
(define (sum-up-numbers-general L)
  (cond ((null? L)0) ;Check if list is not empty
        ((number? (car L))(+(car L)(sum-up-numbers-general(cdr L)))) ;If it's a num... 
                          ((list? (car L)) ;If it is a list, take first element/cell
                           ;Recursion
                           (+ (sum-up-numbers-general L))(sum-up-numbers-general(cdr L)))
                          (else(+(sum-up-numbers-general(cdr L)))))) ;Sum it otherwise


;4
;Was planning on using the is-num function above and creating a function to extract the
;smallest number of both lists since 'min' does not work