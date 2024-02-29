(defun preorder-traversal (tree)
  (cond
    ((null tree) ())
    ((atom tree) (list tree))
    (t (cons (car tree)
             (append (preorder-traversal (cadr tree))
                     (preorder-traversal (caddr tree)))))))
										 
(write (preorder-traversal '(A (B) (C (D) (E)))))
(write (preorder-traversal '(A (B (C (D) (E))))))

;preorder-traversal(tree) = {null, tree = null
;							{tree, tree = atom
;							{car(tree) U (preorder-traversal(cadr tree) + preorder-traversal(caddr tree))