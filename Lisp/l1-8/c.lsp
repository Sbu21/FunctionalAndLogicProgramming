(defun odd-length-first-elements (lst)
  (cond
    ((null lst) '())
    ((and (atom (car lst)) (oddp (length lst)))
     (cons (car lst) (odd-length-first-elements (cdr lst))))
    ((and (listp (car lst)) (oddp (length (car lst))))
     (cons (car (car lst)) (odd-length-first-elements (cdr lst))))
    (t (odd-length-first-elements (cdr lst)))))
               
(write(odd-length-first-elements '(1 2 (3 (4 5) (6 7)) 8 (9 10 11))))
(write(odd-length-first-elements '(1 (3 4 (5 6 7)) 8 (9 10))))

;odd-length-first-elements(list)={null, list=null
;                                {car(list) U odd-length-first-elements(list), length(list) is odd
;                                {odd-length-first-elements(list), length(list) is even