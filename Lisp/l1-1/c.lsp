(defun return-sublists (lst)
	(cond
		((null lst) nil)
		((atom lst) nil)
		((atom (car lst)) (return-sublists (cdr lst)))
		((listp(car lst)) (cond (return-sublists (car lst)) (return-sublists (cdr lst))))
		((listp lst) (cond lst (return-sublists (cdr lst))))
	)
)