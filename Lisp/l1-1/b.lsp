(defun member-of-list (e lst)
	(cond
		((null lst) nil)
		((and (atom (car lst)) (= e (car lst))) e)
		((listp (car lst)) (member-of-sublist e (car lst)))
		(T (member-of-list e (cdr lst)))
	)
)

(defun member-of-sublist (e sublst)
	(cond
		((and (atom (car sublst)) (= e (car sublst))) e)
		((listp (car sublst)) (member-of-sublist e (car sublst)))
		(T (member-of-sublist e (cdr sublst)))
	)
)

(write (member-of-list 4 '(1 2 3 (6 (4 5)) 5)))