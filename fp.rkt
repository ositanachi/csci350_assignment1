;Reverse a list
;Mindset: Make use of car, cdr, and append
;Car to take the first cell, cdr for the rest, and append to combine

> (define (reverse-general L)
    (if (null? L)
        (append (reverse-general (cdr L))
                (cons ((car L)
                )
        )
        )
        )
    )


> (reverse-general '(5 a b 3))