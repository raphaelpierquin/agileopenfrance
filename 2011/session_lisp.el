; Test Plan
; niveau meta: 2 difficultés -> comprendre la spec
;                            -> comprendre lisp
; coder la somme d'une liste


(defun somme (liste)
  (calcul liste '+ 0))


(defun produit (liste)
  (calcul liste '* 1)
  )

(defun calcul (liste operation neutre)
  (if liste (funcall operation (car liste) (calcul (cdr liste) operation neutre)) neutre)
  )

; tests

(mapcar 'eval (list (eq 0 (somme nil))
                            (eq 43 (somme (list 43)))
                            (eq 43 (somme (list 42 1)))
                            (eq 1 (produit nil))
                            (eq 2 (produit (list 2)))
                            (eq 6 (produit (list 2 3))))
