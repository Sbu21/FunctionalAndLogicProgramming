(defun return-n-th (lst n)
	(cond
		((null lst) nil)
		((= n 1) (car lst))
		((= n 0) nil)
		(T (return-n-th (cdr lst) (- n 1)))
  )
)

;(write(return-n-th '(1 2 3 4 5) 1))