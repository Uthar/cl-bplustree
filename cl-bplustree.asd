;;; General purpose in-memory B+ tree.
;;; Copyright (c) 2012, Francisco Soto All rights reserved (see COPYING file for details).

;;; cl-bplustree.asd

(defsystem #:cl-bplustree
  :author "Francisco Soto <ebobby@ebobby.org>"
  :license "BSD"
  :description "In-memory B+ tree"
  :components ((:file "packages")
               (:file "bplustree" :depends-on ("packages")))
  :in-order-to ((test-op
                 (test-op #:cl-bplustree/test))))

(defsystem #:cl-bplustree/test
  :depends-on (#:cl-bplustree)
  :components
  ((:file "test"))
  :perform (test-op (op c)
              (symbol-call :org.ebobby.bplustree :bplustree-test)))
