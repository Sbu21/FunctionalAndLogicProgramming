(defun reverse-list (list1 list2)
  (if (null list1)
      list2
    (reverse-list (rest list1)
                  (cons (reverse-thing (first list1))
                        list2))))

(defun reverse-thing (list1)
  (if (listp list1)
      (reverse-list list1 '())
    list1))

(write( reverse-list '(1 2 (3 4 (5 6)) 7 (8 (9 10))) '()))
(write( reverse-list '(1 2 (3 4 5 6) (7 8) (9 10)) '()))

;reverse-onto(list1 list2)={null, list1=null
;                          {reverse(list1) U reverse-list - car(list1), list1 = list
;                          {atom U reverse-list - car(list1), list1 = atom