(defun elim-elem (lst)
	(cond
		((null lst) '())
		((and (atom (car lst)) (is-member (list-without-elem lst (car lst)) (car lst))) (elim-elem (cdr lst)))
		((listp(car lst)) (cons (elim-elem (car lst)) (elim-elem (car lst))))
		(t (cons (car lst) (elim-elem (cdr lst))))
	)
)

(defun list-without-elem (lst elem)
	(cond
		((null lst) '())
		((and (atom (car lst)) (equal elem (car lst))) (cdr lst))
		((listp(car lst)) (cons (list-without-elem (car lst) elem) (list-without-elem (cdr lst) elem)))
		(t (cons (car lst) (list-without-elem(cdr lst) elem)))
	)
)

(defun is-member (lst elem)
	(cond 
		((null lst) 0)
		((and (atom(lst)) (= (car lst) elem)) 1)
		(t (is-member(cdr lst) elem))
	)
)

(aux-list '(1 (2 c f 1( d 2 c 4) e)))

(list-without-elem '(1 (2 c f 1( d 2 c 4) e)) 2)

(elim-elem '(1 (2 3 4 1( 5 2 3 4) 6)))