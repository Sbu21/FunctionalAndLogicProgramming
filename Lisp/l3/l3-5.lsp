(defun compute-sums (lst)
  (let ((even-sum 0)
        (odd-sum 0))
    (labels ((process (elem)
               (cond
                 ((listp elem) (mapcar #'process elem))
                 ((evenp elem) (incf even-sum elem))
                 ((oddp elem) (decf odd-sum elem)))))
      (process lst)
      (list even-sum odd-sum))))

(write (compute-sums '(1 2 (3 (4 5) (6 7)) 8 (9 10))))
(write (compute-sums '(1 2 (3 (4 5) (6 7)) 8 (9 10) (11 12))))

;compute-sums(lst) ={(0, 0), lst = null
;					{even-sum + elem, elem = even	
;					{odd-sum - elem, elem = odd
;					{compute-sums(car lst), (car lst) = list