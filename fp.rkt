;Reverse a list
;1
;Mindset: Make use of car, cdr, and append
;Car to take the first cell, cdr for the rest, and append to combine

> (define (reverse-general L)
    (if (null? L) '();If list is null...
        (append (reverse-general (cdr L)) ;Retrieves everything after first cell
                (list (car L))))) ;Retrieves first cell

> (reverse-general '(1 (2 3) (4 (a (b (c d))))))

;2
;While numlist is not null and if the atom is a num add
;> (define (sum-up-numbers-simple L)
;    (if (null? L) 0) ;Checks if list is empty, if so 0
;        (if (number? (car L)) ;Checking if element is a num
;            (+ (car L) ;Add element
;               (sum-up-numbers-simple (cdr L))))) ;Perform procedure again until list is empty

> (define (is-num L)
    (cond ((null? L) '())
          ((number? (car L)) (cons (append (car L))
                             (is-num(cdr L))))
          (else (is-num (cdr L)))))

    
;> (sum-up-numbers-simple '(4 5 6 7))
> (is-num '(a 7 5 w 5 6 5))