;Reverse a list
;1
;Mindset: Make use of car, cdr, and append
;Car to take the first cell, cdr for the rest, and append to combine

> (define (reverse-general L)
    (if (null? L) '();If list is null...
        (append (reverse-general (cdr L)) ;Retrieves everything after first cell
                (list (car L))))) ;Retrieves first cell

> (reverse-general '(1 (2 3) (4 (a (b (c d))))))

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
          ((not ((list? L)) 0)) ;Checks if it is in fact a list
          ((not (number? (car L))) (sum (cdr L)))
          (else (+ ((sum-up-numbers-simple (car L)) ( (sum-up-numbers-simple L (car L)) (sum-up-numbers-simple (cdr L))
              (+ (car L) (sum-up-numbers-simple (cdr L)))))))))
          ;(sum-up-numbers-simple L(((is-num(L)))))


sum-up-numbers-simple '(300 400 500)