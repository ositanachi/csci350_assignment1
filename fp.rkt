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
          (list? L) (+ (sum-up-numbers-simple L (car L)) (sum-up-numbers-simple (cdr L))
              (+ (car L) (sum-up-numbers-simple (cdr L))))
          ;(sum-up-numbers-simple L(((is-num(L)))))
          (else 0)))


sum-up-numbers-simple '((a 100 b (200) c 300 d))