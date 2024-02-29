(defun reverse-nb (nr)
	(cond
		((atom nr) nr)
		(t (append (reverse-nb(cdr nr)) (list(car nr)))) 
	)
)

(write (reverse-nb '(1 3 5 9 0 0)))