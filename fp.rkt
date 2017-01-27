;Reverse a list
;1
;Mindset: Make use of car, cdr, and append
;Car to take the first cell, cdr for the rest, and append to combine

> (define (reverse-general L)
    map(if (null? L) '();If list is null...
        (append (reverse-general (cdr L)) ;Retrieves everything after first cell
                (list (car L))))) ;Retrieves first cell

> (reverse-general '(1 (2 3) (4 (a (b (c d))))))

;2
;While numlist is not null and if the atom is a num add
> (define (sum-up-numbers-simple L)
    (if (null? L) 0)
        (if (num? (car x))
            (+ (car L)
               (sum-up-numbers-simple (cdr L)))))
> (sum-up-numbers-simple '(4 5 6 7))