;; Load the core functions
(load "src/core.lisp")

;; Simple test cases for tree operations
(defun run-tests ()
  ;; Test: Create tree and insert a node
  (let ((tree (make-node 'root (list (make-node 'child1) (make-node 'child2)))))
    (insert-node tree 'child1 (make-node 'new-child))
    ;; Updated check: Look for `new-child` inside `child1`'s children
    (assert (find 'new-child
                  (mapcar (lambda (child) (getf child :value))
                          (getf (find 'child1
                                      (getf tree :children)
                                      :key (lambda (child) (getf child :value)))
                                :children))))
    (print "Insert test passed"))

  ;; Test: Delete a node
  (let ((tree (make-node 'root (list (make-node 'child1) (make-node 'child2)))))
    (delete-node tree 'child1)
    (assert (null (find 'child1 (mapcar (lambda (child) (getf child :value)) (getf tree :children)))))
    (print "Delete test passed"))

  ;; Test: Update a node's value
  (let ((tree (make-node 'root (list (make-node 'child1) (make-node 'child2)))))
    (update-node tree 'child1 'updated-child)
    (assert (find 'updated-child (mapcar (lambda (child) (getf child :value)) (getf tree :children))))
    (print "Update test passed")))

(run-tests)
