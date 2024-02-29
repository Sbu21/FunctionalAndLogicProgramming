(defun set-difference-custom (set1 set2)
  (remove-if #'(lambda (x) (member x set2)) set1))
  

 (write(set-difference-custom '(1 2 3 4 5) '(3 4 5 6 7)))
 (write(set-difference-custom '(1 2 3 4 5) '(1 2 3 4 5)))
 
 ;set-difference-custom(set1 set2)={null, set1=set2=null
 ;                                 {set1, set2=null
 ;                                 {car(set1) U set-difference-custom(set1 - car(set1) set2), car(set1) E set2
 ;                                 {set-difference-custom(set1 - car(set1) set2), car(set1) !E set2