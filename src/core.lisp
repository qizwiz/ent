;; Basic structure for a tree node
(defun make-node (value &optional children)
  (list :value value :children (or children nil)))

;; Insert a new node under a parent node
(defun insert-node (tree parent-value new-node)
  (if (eq (getf tree :value) parent-value)
      ;; Found the parent, add new-node to its children
      (push new-node (getf tree :children))
      ;; Otherwise, recurse into the children and update them
      (setf (getf tree :children)
            (mapcar (lambda (child)
                      (insert-node child parent-value new-node))
                    (getf tree :children))))
  tree)

;; Delete a node by value
(defun delete-node (tree value)
  (setf (getf tree :children)
        (remove-if (lambda (child) (eq (getf child :value) value))
                   (getf tree :children)))
  (dolist (child (getf tree :children))
    (delete-node child value))
  tree)

;; Update a node's value
(defun update-node (tree old-value new-value)
  (if (eq (getf tree :value) old-value)
      (setf (getf tree :value) new-value))
  (dolist (child (getf tree :children))
    (update-node child old-value new-value))
  tree)
